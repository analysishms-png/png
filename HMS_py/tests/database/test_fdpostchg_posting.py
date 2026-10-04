"""Phase 11 loop iteration 4 — fdPostChrg batch posting parity (spec 002).

VB6 fdPostChrg (Cmd(1) 'Post Charges') ke observable DB-state contract par
assert karta hai — Proc_96_4 ka decompile-garbled code nahi, balki live
VB6-era PayCharge rows jo us code ne chhode the:

- FR-002/SC-002 exactly-once: ek date pe do baar run = per-folio teen rows
  (KKRMCH+KKCGSS+KKSGSS), second run posted=0, koi duplicate row nahi.
- FR-008/SC-005 row shape (live VB6-era rows, 400+ sample):
    AmtDr = RoomOcc.RoomRate | TaxPer 0/2.5/2.5 | OnAmt = base teeno pe
    | Comments 'Room Charge (Room No : X)' / 'CGST (SALES)(Room No : X)' /
    'SGST (SALES)(Room No : X)' | GuestProf/RoomCat/RoomType='RO'/
    FolioNoDocid/PlanCode stamped | U_Name/U_AE/FolioLog 'P'.
- BUG-AUD-10: tax = 2.5% per leg (TaxPer=2.5 live evidence) — purana
  Python 5% per leg = 2x over-charge tha.
- FR-007 rollback: induced INSERT failure own-connection pe → rollback →
  zero new rows (fresh connection se verify); fixture-cn pe exception
  propagate hoti hai (swallow nahi).
- Guard: billed_folios_for_date positive (Bill_No row insert) + negative
  (fresh check-in nahi).
- Comp='Y' room skip (VB6 eligibility).

Sab kuch rollback-safe (db_transaction) ya explicit cleanup (own-conn
variant) — production data intact.
"""
import datetime

import pytest

from HMS_py.core import checkin, db, guestprof
from HMS_py.core import nightaudit as na

pytestmark = pytest.mark.database

GST = 0.025  # BUG-AUD-10: live TaxPer=2.5 -> 2.5% per leg


@pytest.fixture
def fd_guest():
    code = guestprof.next_code()
    guestprof.insert({"code": code, "name": "PYT FDPOSTCHRG",
                      "add1": "T", "type": "India"})
    yield code
    try:
        guestprof.delete(code)
    except Exception:
        pass


def _create(cn, guest_code, name, arr, dep, **kw):
    kw.setdefault("user", "PYADMIN")
    return checkin.create_checkin(guest_code, name, arr, dep,
                                  cn=cn, commit=False, **kw)


def _rc_rows(cn, folio, vdate):
    """My folio ki RC rows VB6-shape columns ke saath."""
    return db.query(
        "SELECT RTRIM(PayCode), AmtDr, TaxPer, OnAmt, RTRIM(Comments), "
        "RTRIM(GuestProf), RTRIM(RoomCat), RTRIM(RoomType), "
        "RTRIM(FolioNoDocid), RTRIM(RoomNo), RTRIM(U_Name), RTRIM(U_AE) "
        "FROM PayCharge WHERE Site_Code = ? AND FolioNo = ? "
        "AND Vtype = 'RC' AND Vdate = ? ORDER BY SNo",
        (db.get_site_code(), folio, vdate), cn=cn)


# ---------------------------------------------------------------- FR-002
def test_posting_exactly_once_across_runs(db_transaction, fd_guest):
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    f1 = _create(cn, fd_guest, "PYT FDPOST ONE", today, dep, roomrate=2500.0)
    f2 = _create(cn, fd_guest, "PYT FDPOST TWO", today, dep, roomrate=1800.0)

    seen = []
    res1 = na.post_room_charges_for_date(
        today, cn=cn, commit=False,
        progress=lambda d, t, r: seen.append((d, t, r)))
    assert res1["eligible"] >= 2, "in-house rooms kam se kam 2 hone chahiye"
    assert len(_rc_rows(cn, f1, today)) == 3, "f1 pe 3 rows (RMCH+CGST+SGST)"
    assert len(_rc_rows(cn, f2, today)) == 3, "f2 pe 3 rows"

    # progress cb: (done, total, roomno), done 0..n-1 monotonic, VB6 label
    assert seen, "progress callback nahi chala"
    assert all(s[1] == res1["eligible"] for s in seen), "total stable nahi"
    dones = [s[0] for s in seen]
    assert dones == sorted(dones) and dones[0] == 0
    assert all(s[2] for s in seen), "roomno blank"

    # second run: nothing new (SC-002)
    res2 = na.post_room_charges_for_date(today, cn=cn, commit=False)
    assert res2["posted"] == 0, f"second run me kuch post ho gaya: {res2}"
    assert len(_rc_rows(cn, f1, today)) == 3, "duplicate rows bane (f1)"
    assert len(_rc_rows(cn, f2, today)) == 3, "duplicate rows bane (f2)"
    cn.rollback()


# ---------------------------------------------------------------- SC-005
def test_row_shape_tax_and_comments(db_transaction, fd_guest):
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    f = _create(cn, fd_guest, "PYT FDPOST SHAPE", today, dep,
                roomrate=2500.0, plancode="PLN", planamt=100.0)
    rec = checkin.get(f, cn=cn)
    docid = rec["docid"]
    na.post_room_charges_for_date(today, cn=cn, commit=False)

    rows = _rc_rows(cn, f, today)
    assert len(rows) == 3, f"3 rows expected, got {len(rows)}"
    (pc0, amt0, tp0, on0, c0, gp0, rc0, rt0, fd0, rn0, un0, ae0) = rows[0]
    (pc1, amt1, tp1, on1, c1, *_rest1) = rows[1]
    (pc2, amt2, tp2, on2, c2, *_rest2) = rows[2]
    roomno = rn0

    # KKRMCH row
    assert pc0 == "KKRMCH"
    assert float(amt0) == 2500.0, "AmtDr = RoomRate (live evidence)"
    assert float(tp0) == 0.0, "RMCH TaxPer = 0"
    assert float(on0) == 2500.0, "OnAmt = base (VB6 teeno rows pe)"
    assert c0 == f"Room Charge (Room No : {roomno})"
    # tax rows — BUG-AUD-10: 2.5% per leg (5% nahi)
    assert pc1 == "KKCGSS" and pc2 == "KKSGSS"
    assert float(amt1) == round(2500.0 * GST, 2) == 62.5
    assert float(amt2) == 62.5
    assert float(tp1) == 2.5 and float(tp2) == 2.5, "TaxPer=2.5 (live)"
    assert float(on1) == 2500.0 and float(on2) == 2500.0
    assert c1 == f"CGST (SALES)(Room No : {roomno})"
    assert c2 == f"SGST (SALES)(Room No : {roomno})"

    # VB6 row-shape stamps (purana Python ye sab blank chhodta tha)
    for r in rows:
        assert r[5] == fd_guest, f"GuestProf stamp missing: {r[5]!r}"
        assert r[6], "RoomCat stamp missing"
        assert r[7] == "RO", f"RoomType='RO' expected, got {r[7]!r}"
        assert r[8] == docid, "FolioNoDocid link missing"
        assert r[10] == "PYADMIN" and r[11] == "A"
    plan = db.query("SELECT RTRIM(PlanCode) FROM PayCharge "
                    "WHERE FolioNo = ? AND Vtype = 'RC' AND Vdate = ?",
                    (f, today), cn=cn)
    assert all(str(p[0] or "").strip() == "PLN" for p in plan), \
        "PlanCode stamp missing"

    log = db.query("SELECT RTRIM(Flag) FROM FolioLog "
                   "WHERE FolionoDocid = ?", (docid,), cn=cn)
    assert any(str(r[0]).strip() == "P" for r in log), "FolioLog 'P' nahi"
    cn.rollback()


# ---------------------------------------------------------------- FR-007
def test_engine_rollback_own_connection(fd_guest, monkeypatch):
    """Own-connection run pe induced INSERT failure → rollback → fresh
    connection se ZERO new RC rows (partial writes commit nahi hote)."""
    from HMS_py.core import nightaudit, db as core_db
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    f = checkin.create_checkin(fd_guest, "PYT FDPOST ROLL", today, dep,
                               roomrate=2000.0, user="PYADMIN")
    try:
        def _count():
            cn2 = core_db.connect()
            try:
                r = core_db.query(
                    "SELECT COUNT(*) FROM PayCharge WHERE Site_Code = ? "
                    "AND Vtype = 'RC' AND Vdate = ?",
                    (core_db.get_site_code(), today), cn=cn2)
                return int(r[0][0])
            finally:
                cn2.close()
        base = _count()

        real = core_db.execute
        state = {"n": 0}

        def boom(sql, params=(), cn=None, commit=True):
            if "INSERT INTO PayCharge" in sql:
                state["n"] += 1
                if state["n"] >= 2:
                    raise RuntimeError("induced failure (fdPostChrg test)")
            return real(sql, params, cn=cn, commit=commit)

        monkeypatch.setattr(core_db, "execute", boom)
        with pytest.raises(RuntimeError, match="induced failure"):
            nightaudit.post_room_charges_for_date(today)  # own cn, commit
        monkeypatch.setattr(core_db, "execute", real)

        after = _count()
        assert after == base, (
            f"rollback fail: {after} rows vs base {base}")
    finally:
        try:
            checkin.delete_checkin(f, user="PYADMIN")
        except Exception:
            pass


def test_engine_exception_propagates_fixture_cn(db_transaction, fd_guest,
                                                monkeypatch):
    """Fixture-cn run pe exception swallow nahi hoti (caller handle kare —
    run_night_audit ka own-conv rollback isi par rely karta hai)."""
    from HMS_py.core import db as core_db
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    _create(cn, fd_guest, "PYT FDPOST PROP", today, dep, roomrate=2000.0)

    real = core_db.execute
    state = {"n": 0}

    def boom(sql, params=(), cn=None, commit=True):
        if "INSERT INTO PayCharge" in sql:
            state["n"] += 1
            if state["n"] >= 2:
                raise RuntimeError("induced failure (propagate test)")
        return real(sql, params, cn=cn, commit=commit)

    monkeypatch.setattr(core_db, "execute", boom)
    with pytest.raises(RuntimeError, match="induced failure"):
        na.post_room_charges_for_date(today, cn=cn, commit=False)
    monkeypatch.setattr(core_db, "execute", real)
    cn.rollback()


# ---------------------------------------------------------------- guard
def test_billed_folios_guard(db_transaction, fd_guest):
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    f = _create(cn, fd_guest, "PYT FDPOST GUARD", today, dep, roomrate=1500.0)
    docid = checkin.get(f, cn=cn)["docid"]

    # negative: fresh check-in = no billed rows
    billed = na.billed_folios_for_date(today, cn=cn)
    assert f not in {r["folio"] for r in billed}, "false positive guard"

    # positive: Bill_No row insert karo (VB6 settle ka shape)
    db.execute(
        "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, "
        "VPrefix, Vdate, FolioNo, FolioNoDocid, Bill_No) "
        "VALUES (?, 1, 'RC', 999998, ?, ?, ?, ?, ?, 'PYTB0001')",
        ("DKKGD   2026       1", db.get_site_code(), "2026", today,
         f, docid),
        cn=cn, commit=False)
    billed = na.billed_folios_for_date(today, cn=cn)
    hit = [r for r in billed if r["folio"] == f]
    assert hit, "billed folio guard me nahi aaya"
    assert hit[0]["roomno"], "guard row me roomno chahiye"
    cn.rollback()


# ---------------------------------------------------------------- Comp
def test_comp_room_skipped(db_transaction, fd_guest):
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    f = _create(cn, fd_guest, "PYT FDPOST COMP", today, dep, roomrate=2000.0)
    db.execute("UPDATE GuestFolio SET Comp = 'Y' "
               "WHERE Site_Code = ? AND FolioNo = ?",
               (db.get_site_code(), f), cn=cn, commit=False)
    na.post_room_charges_for_date(today, cn=cn, commit=False)
    assert _rc_rows(cn, f, today) == [], "Comp='Y' room pe post ho gaya"
    cn.rollback()
