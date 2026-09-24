"""GROUP FO workflow test — 3 folios, checkin.group_checkout end-to-end.

MOONData2627, ONE uncommitted transaction, ROLLBACK at end (same safety
model as fo_workflow_test.py — master prompt #3/#13/#27).

Flow:
  3x (Guest + Check-In on distinct rooms) -> charge each folio
  -> group_checkout([3 folios]) -> verify all RoomOcc.ChkOutDate set
  -> reverse all -> group re-checkout -> ROLLBACK -> residue check.

Covers: checkin.group_checkout multi-folio path, per-folio charge/balance
on distinct rooms, master-prompt rule 'Room cannot be allocated if
occupied' (rooms must differ), settle-per-folio inside group path.
"""
import datetime
import json
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from HMS_py.core import db, guestprof, checkin, checkout, folio

TS = datetime.datetime.now().strftime("%H%M%S")
GNAME = f"PYT GRP-TEST {TS}"
USER = "PYT"
VP = "2026"
SITE = db.get_site_code()
TODAY = datetime.date.today()
DEP = TODAY + datetime.timedelta(days=2)
NFOLIOS = 3

STEPS = []
TABLES = ("GuestProf", "GuestFolio", "RoomOcc", "PayCharge",
          "FOMBillDetails", "FolioLog")


def snap(cn) -> dict:
    # names are f"{GNAME} G{i}" — prefix-LIKE match (GNAME has no wildcards)
    pat = GNAME + "%"
    sub = "(SELECT DocId FROM GuestFolio WHERE Name LIKE ?)"
    q = {
        "GuestProf":  "SELECT COUNT(*) FROM GuestProf WHERE Name LIKE ?",
        "GuestFolio": "SELECT COUNT(*) FROM GuestFolio WHERE Name LIKE ?",
        "RoomOcc": ("SELECT COUNT(*) FROM RoomOcc WHERE DocId IN " + sub,
                    (pat,)),
        "PayCharge": ("SELECT COUNT(*) FROM PayCharge WHERE FolioNoDocid IN "
                      + sub, (pat,)),
        "FOMBillDetails": ("SELECT COUNT(*) FROM FOMBillDetails WHERE "
                           "Guestname LIKE ?", (pat,)),
        "FolioLog": ("SELECT COUNT(*) FROM FolioLog WHERE FolionoDocid IN "
                     + sub, (pat,)),
    }
    out = {}
    for t, spec in q.items():
        if isinstance(spec, tuple):
            out[t] = db.query(spec[0], spec[1], cn=cn)[0][0]
        else:
            out[t] = db.query(spec, (pat,), cn=cn)[0][0]
    return out


def step(title, fn):
    try:
        detail = fn()
        STEPS.append((title, True, detail or ""))
        print(f"  PASS  {title:44s} {detail or ''}")
        return True
    except Exception as e:
        STEPS.append((title, False, f"{type(e).__name__}: {e}"))
        print(f"  FAIL  {title:44s} {type(e).__name__}: {e}")
        return False


def main() -> int:
    print("=" * 82)
    print(f"GROUP FO WORKFLOW  db={db.load_config()['database']}  "
          f"folios={NFOLIOS}  guest='{GNAME}'  (single txn, ROLLBACK)")
    print("=" * 82)
    cn = db.connect()
    folios, rooms = [], []
    before = snap(cn)

    # 1-3. Three guests + check-ins on distinct rooms -------------------
    for i in range(1, NFOLIOS + 1):
        def _guest(i=i):
            code = guestprof.next_code(cn=cn)
            guestprof.insert({"code": code, "name": f"{GNAME} G{i}",
                              "city": "KANPUR", "type": "G"},
                             cn=cn, commit=False)
            return f"G{i}: {code}"
        step(f"1.{i} Guest master G{i}", _guest)

        def _checkin(i=i):
            fno = checkin.create_checkin(
                guestprof=guestprof.next_code(cn=cn),
                name=f"{GNAME} G{i}", arr_date=TODAY, dep_date=DEP,
                city="KANPUR", roomno="", user=USER, cn=cn, commit=False)
            rr = db.query(
                "SELECT RTRIM(RoomNo) FROM RoomOcc WHERE Site_Code=? AND "
                "Vprefix=? AND FolioNo=?", (SITE, VP, fno), cn=cn)
            room = (rr[0][0] or "").strip() if rr else ""
            folios.append(fno)
            rooms.append(room)
            return f"folio#{fno} room={room or '(none)'}"
        step(f"2.{i} Check-in G{i}", _checkin)

    # 4. Distinct-room rule ---------------------------------------------
    def _distinct():
        assert len(set(rooms)) == NFOLIOS, \
            f"rooms duplicate: {rooms} ('Room cannot be allocated if occupied')"
        return f"rooms={rooms} (all distinct)"
    step("3. Distinct-room allocation rule", _distinct)

    # 5. Charge each folio -----------------------------------------------
    def _charges():
        for f in folios:
            folio.post_room_charge(f, 500.0, user=USER, cn=cn, commit=False)
        bals = [float(folio.folio_balance(f, cn=cn, vprefix=VP))
                for f in folios]
        assert all(abs(b - 550.0) < 0.01 for b in bals), \
            f"balances {bals} != 550 (500+GST)"
        return f"balances={[round(b, 2) for b in bals]}"
    step("4. Charge 500+GST each", _charges)

    # 6. GROUP check-out (checkin.group_checkout) ------------------------
    def _grp():
        res = checkin.group_checkout(list(folios), user=USER, cn=cn,
                                     commit=False, vprefix=VP)
        settled = res.get("settled", 0) if isinstance(res, dict) else res
        errs = res.get("errors", []) if isinstance(res, dict) else []
        assert not errs, f"group errors: {errs[:3]}"
        return f"settled={settled}/{NFOLIOS}"
    step("5. GROUP checkout (checkin.group_checkout)", _grp)

    # 7. All RoomOcc closed + settle rows made ---------------------------
    def _verify():
        marks = ",".join("?" for _ in folios)
        rows = db.query(
            f"SELECT FolioNo, ChkOutDate FROM RoomOcc WHERE Site_Code=? AND "
            f"Vprefix=? AND FolioNo IN ({marks})", (SITE, VP, *folios), cn=cn)
        assert all(r[1] is not None for r in rows), \
            f"some ChkOutDate NULL: {rows}"
        nset = db.query(
            f"SELECT COUNT(*) FROM FOMBillDetails WHERE Guestname LIKE ? "
            f"AND Status='SETTLE'", (GNAME + "%",), cn=cn)[0][0]
        assert nset >= NFOLIOS, f"settle rows {nset} < {NFOLIOS}"
        return f"all ChkOutDate set; settle rows={nset}"
    step("6. Group verify (ChkOut+SETTLE rows)", _verify)

    # 8. Reverse all individually (group-reverse helper nahi hai) ---------
    def _rev():
        for f in folios:
            checkout.reverse_checkout(f, user=USER, cn=cn, commit=False,
                                      vprefix=VP)
        marks = ",".join("?" for _ in folios)
        nopen = db.query(
            f"SELECT COUNT(*) FROM RoomOcc WHERE Site_Code=? AND Vprefix=? "
            f"AND FolioNo IN ({marks}) AND ChkOutDate IS NULL",
            (SITE, VP, *folios), cn=cn)[0][0]
        assert nopen == NFOLIOS, f"reopened {nopen}/{NFOLIOS}"
        return f"reopened {nopen}/{NFOLIOS}"
    step("7. Reverse all check-outs", _rev)

    # 9. Group re-checkout ------------------------------------------------
    def _regrp():
        res = checkin.group_checkout(list(folios), user=USER, cn=cn,
                                     commit=False, vprefix=VP)
        settled = res.get("settled", 0) if isinstance(res, dict) else res
        errs = res.get("errors", []) if isinstance(res, dict) else []
        assert not errs, f"group errors: {errs[:3]}"
        return f"settled={settled}/{NFOLIOS} (2nd pass)"
    step("8. GROUP re-checkout", _regrp)

    mid = snap(cn)

    # 10. Snapshot diff ----------------------------------------------------
    def _diff():
        parts = []
        for t in TABLES:
            d = mid[t] - before[t]
            assert d > 0, f"{t} delta 0"
            parts.append(f"{t}+{d}")
        return " ".join(parts)
    step("9. In-txn snapshot diff", _diff)

    # 11. ROLLBACK ----------------------------------------------------------
    def _rb():
        cn.rollback()
        return "cn.rollback() done"
    ok_rb = step("10. ROLLBACK", _rb)

    # 12. Residue ------------------------------------------------------------
    def _residue():
        cn2 = db.connect()
        try:
            after = snap(cn2)
            bad = {t: (after[t] - before[t]) for t in TABLES
                   if after[t] != before[t]}
            assert not bad, f"RESIDUE: {bad}"
            return "DB clean — zero residue"
        finally:
            cn2.close()
    ok_res = step("11. Post-rollback residue check", _residue)

    ok_all = all(s[1] for s in STEPS) and ok_rb and ok_res
    print("-" * 82)
    print(f"RESULT: {'PASS [OK]' if ok_all else 'FAIL [XX]'}  "
          f"({sum(1 for s in STEPS if s[1])}/{len(STEPS)} steps)  "
          f"folios={folios} rooms={rooms}")
    result = {"guest": GNAME, "folios": folios, "rooms": rooms,
              "steps": [{"step": s[0], "ok": s[1], "detail": s[2]}
                        for s in STEPS], "ok": ok_all}
    out = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                       "fo_group_workflow_result.json")
    with open(out, "w", encoding="utf-8") as fh:
        json.dump(result, fh, indent=2, default=str)
    print(f"JSON: {out}")
    cn.close()
    return 0 if ok_all else 1


if __name__ == "__main__":
    sys.exit(main())
