"""FO full-workflow test — MOONData2627, single transaction, ROLLBACK at end.

Flow (VB6 HMS.exe reference behaviour, master prompt #14):
  Guest Master -> Check-In (GuestFolio+RoomOcc+FolioLog) -> Room Occupied
  -> Room Charge (+GST) -> Payment -> Settle (FOMBillDetails)
  -> Check Out (RoomOcc.ChkOutDate) -> Reverse Check Out -> Re-Check Out
  -> Housekeeping probe -> SNAPSHOT DIFF -> ROLLBACK -> residue check.

Safety (master prompt #3/#27):
  - ONE pyodbc connection, autocommit OFF, every core call commit=False.
  - NOTHING commits — mid/after snapshots read our own uncommitted rows.
  - cn.rollback() at end; fresh connection re-checks zero residue.
  - Only PYT*-prefixed test names (core PYT-guards rely on this).
"""
import datetime
import json
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from HMS_py.core import db, guestprof, checkin, checkout, folio, roomstatus

TS = datetime.datetime.now().strftime("%H%M%S")
GNAME = f"PYT WF-TEST {TS}"
USER = "PYT"
VP = "2026"
TODAY = datetime.date.today()
DEP = TODAY + datetime.timedelta(days=2)

STEPS = []          # (step, ok, detail)
TABLES = ("GuestProf", "GuestFolio", "RoomOcc", "PayCharge",
          "FOMBillDetails", "FolioLog")


def snap(cn, room: str = "", folio_no: int = 0) -> dict:
    """Row-counts for our test rows + room status (uncommitted-visible)."""
    sub = "(SELECT DocId FROM GuestFolio WHERE Name = ?)"
    q = {
        "GuestProf":   "SELECT COUNT(*) FROM GuestProf WHERE Name = ?",
        "GuestFolio":  "SELECT COUNT(*) FROM GuestFolio WHERE Name = ?",
        "RoomOcc": ("SELECT COUNT(*) FROM RoomOcc WHERE DocId IN " + sub,
                    (GNAME,)),
        "PayCharge": ("SELECT COUNT(*) FROM PayCharge WHERE FolioNoDocid IN "
                      + sub, (GNAME,)),
        "FOMBillDetails": ("SELECT COUNT(*) FROM FOMBillDetails WHERE "
                           "Guestname = ?", (GNAME,)),
        "FolioLog": ("SELECT COUNT(*) FROM FolioLog WHERE FolionoDocid IN "
                     + sub, (GNAME,)),
    }
    out = {}
    for t, spec in q.items():
        if isinstance(spec, tuple):
            out[t] = db.query(spec[0], spec[1], cn=cn)[0][0]
        else:
            out[t] = db.query(spec, (GNAME,), cn=cn)[0][0]
    out["_fombill_folio"] = db.query(
        "SELECT COUNT(*) FROM FOMBillDetails WHERE FolioNo = ?",
        (folio_no,), cn=cn)[0][0] if folio_no else 0
    if room:
        r = db.query("SELECT RTRIM(RoomStat) FROM RoomMast WHERE Code = ?",
                     (room,), cn=cn)
    out["_roomstat"] = (r[0][0] or "").strip() if (room and r) else "?"
    return out


def step(title, fn):
    try:
        detail = fn()
        STEPS.append((title, True, detail or ""))
        print(f"  PASS  {title:38s} {detail or ''}")
        return True
    except Exception as e:
        STEPS.append((title, False, f"{type(e).__name__}: {e}"))
        print(f"  FAIL  {title:38s} {type(e).__name__}: {e}")
        return False


def main() -> int:
    print("=" * 78)
    print(f"FO WORKFLOW TEST  db={db.load_config()['database']}  "
          f"user={USER}  guest='{GNAME}'  (single txn, ROLLBACK at end)")
    print("=" * 78)
    cn = db.connect()                      # autocommit OFF (pyodbc default)
    result = {"guest": GNAME, "steps": [], "ok": False}
    folio_no, room = 0, ""
    before = snap(cn)

    # 1. Guest master -------------------------------------------------
    def _guest():
        code = guestprof.next_code(cn=cn)
        guestprof.insert({"code": code, "name": GNAME, "city": "KANPUR",
                          "type": "G"}, cn=cn, commit=False)
        return f"GuestProf {code}"
    step("1 Guest master insert", _guest)

    # 2. Check-in (GuestFolio + RoomOcc + FolioLog 'A') ----------------
    def _checkin():
        nonlocal folio_no, room
        folio_no = checkin.create_checkin(
            guestprof=guestprof.next_code(cn=cn), name=GNAME,
            arr_date=TODAY, dep_date=DEP, city="KANPUR", roomno="",
            user=USER, cn=cn, commit=False)
        rr = db.query(
            "SELECT RTRIM(RoomNo) FROM RoomOcc WHERE Site_Code=? AND "
            "Vprefix=? AND FolioNo=?", (db.get_site_code(), VP, folio_no),
            cn=cn)
        room = (rr[0][0] or "").strip() if rr else ""
        return f"folio#{folio_no} room={room or '(none)'}"
    step("2 Check-in create", _checkin)

    # 3. Room occupancy (RoomOcc row, ChkOutDate NULL) -----------------
    def _occ():
        rows = db.query(
            "SELECT RoomNo, ChkOutDate FROM RoomOcc WHERE Site_Code=? AND "
            "Vprefix=? AND FolioNo=?", (db.get_site_code(), VP, folio_no),
            cn=cn)
        assert rows, "RoomOcc row nahi mili"
        assert rows[0][1] is None, "ChkOutDate already set?!"
        return f"RoomOcc open, room={rows[0][0]}"
    step("3 RoomOcc open row", _occ)

    # 4. Room charge (+GST: 3 PayCharge rows) --------------------------
    def _charge():
        n = folio.post_room_charge(folio_no, 1000.0, roomno=room,
                                   user=USER, cn=cn, commit=False)
        ch = folio.folio_charges(folio_no, cn=cn, vprefix=VP)
        vts = sorted({c["paytype"] for c in ch})
        return f"{n} row(s); types={vts}"
    step("4 Room charge 1000 + GST", _charge)

    # 5. Payment = exact outstanding ------------------------------------
    def _pay():
        b = float(folio.folio_balance(folio_no, cn=cn, vprefix=VP))
        assert b > 0, f"balance {b} — charge fail?"
        folio.receive_payment(folio_no, b, paycode="KKCASH",
                              comments="WF TEST PAY", user=USER,
                              cn=cn, commit=False)
        b2 = float(folio.folio_balance(folio_no, cn=cn, vprefix=VP))
        assert abs(b2) < 0.005, f"balance {b2} after pay"
        return f"paid {b:.2f} -> balance 0"
    step("5 Payment (balance->0)", _pay)

    # 6. Settle (FOMBillDetails 'SETTLE') -------------------------------
    def _settle():
        bill = folio.settle_folio(folio_no, user=USER, cn=cn, commit=False)
        assert bill, "billno 0"
        return f"bill_no={bill}"
    step("6 Settle folio", _settle)

    # 7. Check out (RoomOcc.ChkOutDate) ---------------------------------
    def _checkout():
        res = checkout.do_checkout(folio_no, user=USER, cn=cn,
                                   commit=False, vprefix=VP)
        rows = db.query(
            "SELECT ChkOutDate FROM RoomOcc WHERE Site_Code=? AND Vprefix=? "
            "AND FolioNo=?", (db.get_site_code(), VP, folio_no), cn=cn)
        assert rows and rows[0][0] is not None, "ChkOutDate not set"
        bal = res.get("balance", "?") if isinstance(res, dict) else "?"
        return f"ChkOutDate set; balance={bal}"
    step("7 Check out", _checkout)

    # 8. Reverse check out ----------------------------------------------
    def _rev():
        checkout.reverse_checkout(folio_no, user=USER, cn=cn, commit=False,
                                  vprefix=VP)
        rows = db.query(
            "SELECT ChkOutDate FROM RoomOcc WHERE Site_Code=? AND Vprefix=? "
            "AND FolioNo=?", (db.get_site_code(), VP, folio_no), cn=cn)
        assert rows and rows[0][0] is None, "ChkOutDate not cleared"
        n = db.query(
            "SELECT COUNT(*) FROM FOMBillDetails WHERE FolioNo=? AND "
            "Status='CANCEL'", (folio_no,), cn=cn)[0][0]
        return f"reopened; settle-rows cancelled={n}"
    step("8 Reverse check out", _rev)

    # 9. Re-check out ----------------------------------------------------
    step("9 Re-check out", lambda: (
        checkout.do_checkout(folio_no, user=USER, cn=cn, commit=False,
                             vprefix=VP) or "ok"))

    # 10. Housekeeping probe (RoomStat after checkout) -------------------
    def _hk():
        s = snap(cn, room=room, folio_no=folio_no)
        return f"RoomStat('{room}')='{s['_roomstat']}'"
    step("10 Housekeeping probe", _hk)

    mid = snap(cn, room=room, folio_no=folio_no)

    # 11. Snapshot diff (inside txn) --------------------------------------
    def _diff():
        parts = []
        for t in TABLES:
            d = mid[t] - before[t]
            assert d > 0, f"{t} delta 0 (expected >0)"
            parts.append(f"{t}+{d}")
        return " ".join(parts)
    step("11 In-txn snapshot diff", _diff)

    # 12. ROLLBACK --------------------------------------------------------
    def _rb():
        cn.rollback()
        return "cn.rollback() done"
    ok_rb = step("12 ROLLBACK", _rb)

    # 13. Residue check (FRESH connection) --------------------------------
    def _residue():
        cn2 = db.connect()
        try:
            after = snap(cn2)
            bad = {t: (after[t] - before[t]) for t in TABLES if after[t] != before[t]}
            assert not bad, f"RESIDUE: {bad}"
            return "DB clean — zero residue (all tables back to before)"
        finally:
            cn2.close()
    ok_res = step("13 Post-rollback residue check", _residue)

    ok_all = all(s[1] for s in STEPS) and ok_rb and ok_res
    print("-" * 78)
    print(f"RESULT: {'PASS [OK]' if ok_all else 'FAIL [XX]'}  "
          f"({sum(1 for s in STEPS if s[1])}/{len(STEPS)} steps)  "
          f"DB untouched (rollback verified)")
    print("=" * 78)
    result["steps"] = [{"step": s[0], "ok": s[1], "detail": s[2]} for s in STEPS]
    result["ok"] = ok_all
    out = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                       "fo_workflow_result.json")
    with open(out, "w", encoding="utf-8") as fh:
        json.dump(result, fh, indent=2, default=str)
    print(f"JSON: {out}")
    cn.close()
    return 0 if ok_all else 1


if __name__ == "__main__":
    sys.exit(main())
