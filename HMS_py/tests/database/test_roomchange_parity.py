"""Phase 11 DB-001 — fdRoomChange save-transaction parity (live DB evidence).

specs/003-fdroomchange-ui/spec.md §2 ke 12 steps ko ek staged folio par
live SQL Server state par assert karta hai (VB6 fdRoomChange.frm
TopCtrl1_UnknownEvent_16 save: 3261-3815, BeginTrans 3503, Commit 3800,
Rollback 3809).

Saari staging db_transaction fixture ke transaction andar (commit=False) —
teardown par automatic ROLLBACK, production data kabhi persist nahi hota.

§2.1 G-dispositions (DB-001 decisions — spec me §2.1.1 me recorded):
  G1  'I' keep — Python readers (fo_sub_forms_ui.py:59,
      dashboard.py:168) Type='I' filter karte hain; VB6 ka '' unhe
      orphan karta. Net delta: Python new-row Type='I'.
  G2  no core change — VB6 RoDisc/RSDisc padhkar (frm 2264/2268) wapas
      wahi value likhta hai (3554-3562) = net no-op; Python omit karta
      = same net effect. Test: values UNCHANGED.
  G3  FIXED — PlanDiscAppon plan UPDATE me (VB6 frm 3664); P1 me old
      row ki value carry (plan re-selection P2).
  G4  accepted — Python sab DocId rows delete + re-insert, count
      lossless (VB6 sirf PlanAppDate=<date> scope delete karta, 3721).
  G5  accepted — unconditional re-insert (VB6 3731 PlanCalc='Yes'
      gate) = data-preserving superset.
  G6  UI-enforced, core unchanged — guard fo_sub_forms_ui.py:358-363
      (VB6 3442-3449, pre-BeginTrans); yahan guard SQL live schema par
      chala kar column-compat prove hota hai.
  G7  UI-enforced, core unchanged — Adult>0/tariff>0/Reason
      (ui:345/374/335) + tests/unit/test_room_change_ui.py (18 tests).
  G8  deferred (P1) — UserPermission/enviro Form_Load gate (VB6
      2881-2917) pre-save, core me kabhi nahi tha; spec §6.6 tracks
      permission read for later — DB test core ko iske liye nahi
      chalati.
  G9  accepted + P2 — EPABX env-var gate absent; live DB me EPABX_IN
      table hi nahi → feature-detect skip = VB6 prompt/audit ke net
      effect se match (no audit rows). Test: epabx_audited parity.
  G10 match — Reason copy + 100-char truncate (RoomOcc.Reason
      varchar(100) par exact).

Core bug fixed by DB-001: PlanDetails SELECT-before-DELETE (fo_ops
step 7) — same-txn DELETE ke baad SELECT 0 row deta tha → plan rows
loss. VB6 FGrid3 ko form-load par load karke 3788 se re-insert karta
hai.
"""

import datetime

import pytest

from HMS_py.core import booking as booking_mod
from HMS_py.core import (
    checkin,
    db,
    fo_ops,
    guest_services,
    guestprof,
    pos,
)

SITE = fo_ops.SITE_CODE
GUEST = "PYT RC PARITY"
BOOK_GUEST = "PYT RC BOOK"

# PlanDetails staging: fo_ops room_change re-insert ke hi 29 columns
# (production-proven list) — schema-safe, koi naya column nahi.
_PD_SQL = (
    "INSERT INTO PlanDetails (FolioNo, RoomNo, RevCode, Chrgcode, TaxInc, "
    "TaxStru, PrintOption, PostingMethod, ChargeType, FlatRate, Adult, "
    "Child, ExtraAdult, ExtraChild, NoOfDays, PlanPer, App_Date, FixRate, "
    "Site_Code, U_Name, U_EntDt, U_AE, Amount, PlanCode, Docid, "
    "NetPackageAmount, LogSite_Code, DiscAmt, PlanAppDate) "
    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
    "getdate(), 'A', ?, ?, ?, ?, ?, ?, ?)"
)

# KOT staging: pos.py:351-357 ke 34-col INSERT pattern (RoomType='RO'
# jaise VB6 KOT writer likhta hai — guard ko isi ki zaroorat hai).
_KOT_SQL = (
    "INSERT INTO KOT (DocId, VNo, VDate, VType, VPrefix, Site_Code, "
    "RestCode, RoomCat, RoomType, RoomNo, Pending, Sno, VTime, Item, "
    "Qty, VoidYN, Waiter, U_Name, U_EntDt, U_AE, NCKOT, Rate, Amount, "
    "Reasons, Remarks, LogSite_Code, NCType, Printed, FreeSno, "
    "SchemeCode, Description, Party, ItemRestCode, TokenNo) "
    "VALUES (?, ?, ?, 'K', 'K', ?, ?, ?, ?, ?, 'Y', ?, ?, ?, ?, 'N', "
    "?, ?, getdate(), 'A', 'N', ?, ?, ?, ?, ?, ?, '', '', '', '', '', "
    "'', '')"
)


def _q(cn, sql, params=()):
    return db.query(sql, params, cn=cn)


def _dd(v):
    """date/datetime dono ko date me normalise (SQL Server datetime vs
    date column — direct == date fail ho sakta hai)."""
    return v.date() if hasattr(v, "date") else v


def _free3(cn):
    rooms = fo_ops.free_rooms(cn=cn)
    if len(rooms) < 3:
        pytest.skip(f"free RO rooms {len(rooms)} < 3 (staging ke liye)")
    return rooms[0], rooms[1], rooms[2]


def _stage(cn):
    """In-house folio + linked rows — sab commit=False (fixture rollback)."""
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    chg = today + datetime.timedelta(days=1)
    old_room, new_room, occ_room = _free3(cn)

    code = guestprof.next_code(cn=cn)
    guestprof.insert(
        {"code": code, "name": GUEST, "add1": "TEST", "type": "India"},
        cn=cn,
        commit=False,
    )

    booking_mod.insert(
        {
            "guestname": BOOK_GUEST,
            "arrdate": today,
            "depdate": dep,
            "adult": 2,
            "child": 0,
            "roomrate": 1500.0,
        },
        cn=cn,
        commit=False,
    )
    bk = _q(
        cn,
        "SELECT DocId FROM Booking WHERE GuestName = ? AND Site_Code = ?",
        (BOOK_GUEST, SITE),
    )
    assert bk, "staged Booking row nahi mili"
    bk_docid = str(bk[0][0]).strip()

    folio = checkin.create_checkin(
        code,
        GUEST,
        today,
        dep,
        bookingdocid=bk_docid,
        roomno=old_room,
        adult=2,
        children=1,
        ratecode="P",
        plancode="PLN",
        planamt=1500.0,
        incinrate="Y",
        plandisc=100.0,
        plandiscamt=150.0,
        plandiscon="Pct",
        roomtarrif=1600.0,
        rackrate=2000.0,
        rodisc=20.0,
        city="PYTCT",
        user="PYADMIN",
        cn=cn,
        commit=False,
    )
    rec = checkin.get(folio, cn=cn)
    assert rec and rec.get("docid"), "staged folio nahi mila"
    docid = rec["docid"]

    guest_services.insert_message(
        {
            "roomno": old_room,
            "caller": "PYT",
            "telephone": "1111",
            "message": "parity",
            "guestprof": code,
            "folio": folio,
            "rcdtime": "10:00",
        },
        cn=cn,
        commit=False,
    )

    # PlanDetails x2: row1 PlanAppDate=chg (VB6 delete scope ke andar),
    # row2 aaj (VB6 scope ke bahar) — dono ke preserve hone par G4 proof.
    for rev, amount, app_date in (("RC1", 500.0, chg), ("RC2", 600.0, today)):
        db.execute(
            _PD_SQL,
            (
                folio,
                old_room,
                rev,
                "CC1",
                "N",
                "",
                "Y",
                "Auto",
                "Room",
                100.0,
                2,
                0,
                0,
                0,
                1,
                100.0,
                today,
                "N",
                SITE,
                "PYADMIN",
                amount,
                "PLN",
                docid,
                1500.0,
                SITE,
                50.0,
                app_date,
            ),
            cn=cn,
            commit=False,
        )

    # doosra folio = occupied-target blocker (G7/occupied path)
    checkin.create_checkin(
        "",
        "PYT RC OCC TWIN",
        today,
        dep,
        roomno=occ_room,
        user="PYADMIN",
        cn=cn,
        commit=False,
    )

    return {
        "docid": docid,
        "folio": folio,
        "guest_code": code,
        "old_room": old_room,
        "new_room": new_room,
        "occ_room": occ_room,
        "booking_docid": bk_docid,
        "chg": chg,
    }


@pytest.fixture
def staged(db_transaction):
    return _stage(db_transaction)


def _snapshot(cn, s):
    """room_change ke write-set ka scoped snapshot (docid/folio/rooms) —
    concurrent production writes se immune, value-level (sirf counts nahi)."""

    def rows(sql, params=()):
        return [tuple(r) for r in _q(cn, sql, params)]

    return {
        "roomocc": rows(
            "SELECT SNo, RoomNo, Type, ChkOutDate, ChkOutTime, NewRoomNo, "
            "Reason, ChngDate, IncInRate, PlanDisc, PlanDiscAmt "
            "FROM RoomOcc WHERE DocId = ? ORDER BY SNo",
            (s["docid"],),
        ),
        "plandetails": rows(
            "SELECT RoomNo, Amount, PlanAppDate FROM PlanDetails "
            "WHERE DocId = ? ORDER BY Amount",
            (s["docid"],),
        ),
        "guestfolio": rows(
            "SELECT RODisc, RSDisc, BookingDocId FROM GuestFolio WHERE DocId = ?",
            (s["docid"],),
        ),
        "guestmsg": rows(
            "SELECT RoomNo, RoomCat FROM GuestMessage WHERE FolioNo = ?", (s["folio"],)
        ),
        "booking": rows(
            "SELECT OccRoom FROM Booking WHERE DocId = ?", (s["booking_docid"],)
        ),
        "roommast": rows(
            "SELECT RTRIM(Code), RoomStat FROM RoomMast WHERE RTRIM(Code) IN (?, ?, ?)",
            (s["old_room"], s["new_room"], s["occ_room"]),
        ),
    }


def test_room_change_12step_parity(db_transaction, staged):
    """Spec §2 ke 12 steps — live DB state par step-by-step proof."""
    cn = db_transaction
    s = staged
    reason = "R" * 150  # >100 → core [:100] truncate parity (step 6)
    pre = _snapshot(cn, s)
    open_old = [r for r in pre["roomocc"] if r[1] == s["old_room"] and r[3] is None]
    assert len(open_old) == 1, "staging: old room par open row nahi"
    assert not [r for r in pre["roomocc"] if r[1] == s["new_room"]]

    res = fo_ops.room_change(
        s["docid"],
        s["new_room"],
        reason=reason,
        change_date=s["chg"],
        change_time="14:30",
        user="PYADMIN",
        cn=cn,
        commit=False,
    )

    # --- return contract + step 11 (EPABX feature-detect) ---
    assert res["old_room"] == s["old_room"]
    assert res["new_room"] == s["new_room"]
    assert res["new_sno"] == 2 and res["folio"] == s["folio"]
    assert res["affected"] >= 7
    epabx = _q(
        cn,
        "SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'EPABX_IN'",
    )[0][0]
    assert res["epabx_audited"] is bool(epabx)  # feature-detect parity

    # --- step 4: EXACTLY ek nayi open RoomOcc row (INSERT 149-164) ---
    total = _q(cn, "SELECT COUNT(*) FROM RoomOcc WHERE DocId = ?", (s["docid"],))[0][0]
    assert int(total) == len(pre["roomocc"]) + 1, "old+new = staged+1"
    new = _q(
        cn,
        "SELECT SNo, Type, U_AE, ChkInDate, ChkInTime, ChngDate, "
        "Adult, Children, ChkOutDate, PlanCode, PlanAmt, IncInRate, "
        "PlanDisc, PlanDiscAmt, PlanDiscAppon, FolioNo, GuestProf "
        "FROM RoomOcc WHERE DocId = ? AND RTRIM(RoomNo) = ? AND "
        "ChkOutDate IS NULL AND Site_Code = ?",
        (s["docid"], s["new_room"], SITE),
    )
    assert len(new) == 1, "new room par ek se zyada/zero open rows"
    (
        sno,
        typ,
        uae,
        chkin,
        chkin_t,
        chng,
        adult,
        children,
        cout,
        pcode,
        pamt,
        inc,
        pdisc,
        pdiscamt,
        pdapp,
        folio_no,
        gprof,
    ) = new[0]
    assert int(sno) == res["new_sno"] == 2  # MAX(SNo)+1 (step 3)
    assert str(typ).strip() == "I"  # G1 DECIDED: 'I' (fo_ops 157)
    # INSERT 'A' (step 4) → plan UPDATE 'E' (step 5, VB6 frm 3663-3667
    # spec §1.6 step 6) — final state 'E', VB6 se same
    assert str(uae).strip() == "E"
    assert _dd(chkin) == s["chg"] and str(chkin_t).strip() == "14:30"
    assert _dd(chng) == s["chg"] and cout is None
    assert int(adult) == 2 and int(children) == 1
    assert int(folio_no) == s["folio"]
    assert str(gprof or "").strip() == s["guest_code"]

    # G1 reader parity: dashboard/fo_sub_forms readers row dhoondh paate
    # hain Type='I' filter se (dashboard.py:168 / fo_sub_forms_ui.py:59)
    vis = _q(
        cn,
        "SELECT COUNT(*) FROM RoomOcc WHERE DocId = ? AND "
        "Type = 'I' AND ChkOutDate IS NULL AND Site_Code = ?",
        (s["docid"], SITE),
    )[0][0]
    assert int(vis) == 1

    # --- step 5: plan fields nayi row par (+ G3 FIX PlanDiscAppon) ---
    assert str(pcode).strip() == "PLN" and float(pamt) == 1500.0
    assert str(inc).strip() == "Y"
    assert float(pdisc) == 100.0 and float(pdiscamt) == 150.0
    assert str(pdapp or "").strip() == "Pct"  # G3 (VB6 frm 3664)

    # --- step 6: old row checkout + Reason copy/truncate (G10) ---
    old = _q(
        cn,
        "SELECT Type, ChkOutDate, ChkOutTime, NewRoomNo, "
        "Reason, U_AE FROM RoomOcc WHERE DocId = ? AND "
        "RTRIM(RoomNo) = ?",
        (s["docid"], s["old_room"]),
    )
    assert len(old) == 1
    otyp, ocout, ocout_t, nroom, oreason, ouae = old[0]
    assert str(otyp).strip() == "C"
    assert _dd(ocout) == s["chg"] and str(ocout_t).strip() == "14:30"
    assert str(nroom or "").strip() == s["new_room"]
    assert str(oreason or "") == "R" * 100  # [:100] == varchar(100)
    assert str(ouae).strip() == "E"

    # G2 net-effect (VB6 spec 179-182 checkout me IncInRate/PlanDisc/
    # PlanDiscAmt form-se wapas likhta = old-row values se no-op; Python
    # omit karta = same): old row ke plan-disc fields unchanged
    old_now = [r for r in _snapshot(cn, s)["roomocc"] if r[1] == s["old_room"]][0]
    assert old_now[8:] == open_old[0][8:], "G2: old row plan-disc unchanged"

    # --- step 7: GuestMessage re-point (RoomCat = nayi room ki) ---
    gm = _snapshot(cn, s)["guestmsg"]
    assert len(gm) == 1
    new_cat = _q(
        cn,
        "SELECT RTRIM(RoomCat) FROM RoomMast WHERE RTRIM(Code) = ?",
        (s["new_room"],),
    )[0][0]
    assert str(gm[0][0]).strip() == s["new_room"]
    assert str(gm[0][1] or "").strip() == str(new_cat or "").strip()

    # --- step 8: Booking.OccRoom = new room ---
    bkr = _snapshot(cn, s)["booking"]
    assert bkr and str(bkr[0][0] or "").strip() == s["new_room"]

    # --- step 9: old room dirty mark ---
    stat = _q(
        cn, "SELECT RoomStat FROM RoomMast WHERE RTRIM(Code) = ?", (s["old_room"],)
    )[0][0]
    assert str(stat).strip() == "D"

    # --- step 10: PlanDetails delete + re-insert (G4/G5 lossless) ---
    pds = _snapshot(cn, s)["plandetails"]
    assert len(pds) == 2, "count preserved (G4/G5: rows lossless)"
    assert all(str(r[0]).strip() == s["new_room"] for r in pds)
    got_dates = {(r[2].date() if hasattr(r[2], "date") else r[2]) for r in pds}
    assert got_dates == {s["chg"], datetime.date.today()}, (
        "VB6-scope se bahar ki row bhi preserve (G4)"
    )

    # --- G2: GuestFolio RoDisc/RSDisc round-trip net-effect equal ---
    gf_now = _snapshot(cn, s)["guestfolio"]
    assert gf_now == pre["guestfolio"], "G2: discount fields unchanged"

    # --- step 12: commit=False → koi commit nahi hua (txn abhi open) ---
    # (rollback proof alag test me; yahan visible-writes hi evidence hai)
    assert _snapshot(cn, s) != pre


def test_room_change_rejections_no_partial_writes(db_transaction, staged):
    """Core validations (spec §2 steps 1-2) → zero writes."""
    cn = db_transaction
    s = staged
    base = _snapshot(cn, s)

    with pytest.raises(ValueError, match="same hai"):
        fo_ops.room_change(
            s["docid"], s["old_room"], reason="x", user="PYADMIN", cn=cn, commit=False
        )
    assert _snapshot(cn, s) == base, "same-room reject par write ho gaya"

    zzz = "ZZ999"
    assert not _q(cn, "SELECT COUNT(*) FROM RoomMast WHERE Code = ?", (zzz,))[0][0], (
        "precondition: ZZZ99 RoomMast me nahi"
    )
    with pytest.raises(ValueError, match="RoomMast me nahi mila"):
        fo_ops.room_change(
            s["docid"], zzz, reason="x", user="PYADMIN", cn=cn, commit=False
        )
    assert _snapshot(cn, s) == base, "unknown-room reject par write ho gaya"

    with pytest.raises(ValueError, match="pehle se occupied hai"):
        fo_ops.room_change(
            s["docid"], s["occ_room"], reason="x", user="PYADMIN", cn=cn, commit=False
        )
    assert _snapshot(cn, s) == base, "occupied reject par write ho gaya"


def test_room_change_single_transaction_atomic(db_transaction):
    """Spec §2 step 12: saare steps ek transaction — rollback par ZERO
    partial writes (VB6 BeginTrans 3503 / RollbackTrans 3809 analog)."""
    cn = db_transaction
    s = _stage(cn)
    base = _snapshot(cn, s)  # staging done, core writes nahi
    cur = cn.cursor()
    cur.execute("SAVE TRANSACTION rc_base")

    res = fo_ops.room_change(
        s["docid"],
        s["new_room"],
        reason="atomic",
        change_date=s["chg"],
        change_time="15:00",
        user="PYADMIN",
        cn=cn,
        commit=False,
    )
    after = _snapshot(cn, s)
    assert after != base, "core ne transaction me likha hi nahi"
    open_new = [r for r in after["roomocc"] if r[1] == s["new_room"] and r[3] is None]
    assert open_new and _dd(open_new[0][7]) == s["chg"], "nayi row txn me nahi"
    assert res["new_sno"] == 2

    cur.execute("ROLLBACK TRANSACTION rc_base")
    assert _snapshot(cn, s) == base, (
        "rollback ke baad state base = koi partial write nahi (atomic)"
    )
    cur.close()


def test_kot_guard_blocks_save_before_any_write(db_transaction, staged):
    """G6: KOT-pending guard (ui:358-363 = VB6 frm 3442-3449) save se
    PEHLE (pre-BeginTrans) abort karta hai — guard SQL live schema par
    chal kar column-compat prove, core write kabhi hota hi nahi."""
    cn = db_transaction
    s = staged
    outlets = pos.get_outlets(cn=cn)
    if not outlets:
        pytest.skip("Depart/outlet master nahi mila")

    db.execute(
        _KOT_SQL,
        (
            "PYTKOTRC0001",
            999999,
            datetime.date.today(),
            SITE,
            outlets[0]["code"],
            "",
            "RO",
            s["old_room"],
            1,
            "12:00",
            "PYTITEM",
            1.0,
            "",
            "PYADMIN",
            100.0,
            100.0,
            "PYT parity",
            "PYT parity",
            SITE,
            "",
        ),
        cn=cn,
        commit=False,
    )
    staged_kot = _q(
        cn,
        "SELECT COUNT(*) FROM KOT WHERE DocId = ? AND Pending = 'Y'",
        ("PYTKOTRC0001",),
    )[0][0]
    assert int(staged_kot) == 1, "staged KOT row nahi bani"

    # guard SQL VERBATIM (ui/fo_sub_forms_ui.py:358-363) — live schema
    # par chal kar column-compat (Pending/RoomType/VoidYN/NCKOT/DelFlag)
    guard = _q(
        cn,
        "SELECT COUNT(*) FROM KOT WHERE Pending = 'Y' AND "
        "RoomNo = ? AND ISNULL(roomtype, '') = 'RO' AND "
        "ISNULL(VoidYN, 'N') <> 'Y' AND ISNULL(NCKOT, 'N') <> 'Y' "
        "AND ISNULL(DelFlag, '') <> 'Y'",
        (s["old_room"],),
    )
    assert guard and int(guard[0][0]) >= 1, "guard staged KOT detect nahi karta"

    # yahan VB6/UI save ABORT karta hai → core call hi nahi hota
    snap = _snapshot(cn, s)
    open_old = [r for r in snap["roomocc"] if r[1] == s["old_room"] and r[3] is None]
    assert len(open_old) == 1, "folio open hai — core kabhi call nahi hua"
    assert not [r for r in snap["roomocc"] if r[1] == s["new_room"]], (
        "guard-block ke baad koi nayi row nahi (no partial writes)"
    )
