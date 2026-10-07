"""Spec 002 parity tests T1-T4 (plan section 6) — PY-001..004 + G12.

Each test asserts new-branch behavior the pre-fix engine cannot produce
(branch-assertion revert check: reverted code fails every assert marked
FAIL-ON-REVERT). Seeded PYT* data only; all runs commit=False on the
db_transaction fixture (full rollback, zero production writes).

- T1  engine billed guard (G1) + While-Printing-Bill early exit (G12)
- T2  duplicate exclusion keyed on FOLIONODOCID, never FolioNo (G2)
- T3  RODISC netted vs separate-CR vs missing-DISC abort (G3)
- T4  TaxStru-driven derivation: custom rate/nature + seeded SCH->0 (G4)
"""

import datetime

import pytest

from HMS_py.core import checkin, db
from HMS_py.core import nightaudit as na

pytestmark = pytest.mark.database


@pytest.fixture
def fd_guest():
    from HMS_py.core import guestprof

    code = guestprof.next_code()
    guestprof.insert({"code": code, "name": "PYT PARITY", "add1": "T", "type": "India"})
    yield code
    try:
        guestprof.delete(code)
    except Exception:
        pass


def _create(cn, guest_code, name, arr, dep, **kw):
    kw.setdefault("user", "PYADMIN")
    return checkin.create_checkin(guest_code, name, arr, dep, cn=cn, commit=False, **kw)


def _rc_count(cn, vdate):
    r = db.query(
        "SELECT COUNT(*) FROM PayCharge WHERE Site_Code = ? AND Vtype = 'RC' AND Vdate = ?",
        (db.get_site_code(), vdate),
        cn=cn,
    )
    return int(r[0][0])


def _folio_rc(cn, folio, vdate):
    """(paycode, dr, cr, taxper, onamt, bill, taxcond, taxstru, roomtype)."""
    return db.query(
        "SELECT RTRIM(PayCode), AmtDr, AmtCr, TaxPer, OnAmt, BillAmount, "
        "TaxCondAmt, RTRIM(TaxStru), RTRIM(RoomType) FROM PayCharge "
        "WHERE Site_Code = ? AND FolioNo = ? AND Vtype = 'RC' AND Vdate = ? "
        "ORDER BY SNo",
        (db.get_site_code(), folio, vdate),
        cn=cn,
    )


def _set_enviro(cn, col, val):
    db.execute(
        f"UPDATE Enviro SET [{col}] = ? WHERE LogSite_Code = ?",
        (val, db.get_site_code()),
        cn=cn,
        commit=False,
    )


@pytest.fixture(autouse=True)
def _isolate_billed_guard(monkeypatch):
    """Live folios 458/459 carry mid-stay bills (Bill_No 330, still
    in-house), so the G1 engine guard would block every posting test on
    this DB. T1a covers the real guard (it re-patches non-empty, which
    overrides this); all other tests isolate their own gap."""
    monkeypatch.setattr(na, "billed_folios_for_date", lambda *a, **k: [])


# ------------------------------------------------------------------ T1 (G1)
def test_T1_engine_billed_guard_blocks_with_zero_inserts(
    db_transaction, fd_guest, monkeypatch
):
    """FAIL-ON-REVERT: old engine never consulted billed_folios_for_date."""
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    f = _create(cn, fd_guest, "PYT PARITY T1", today, dep, roomrate=2000.0)
    base = _rc_count(cn, today)
    monkeypatch.setattr(
        na, "billed_folios_for_date", lambda *a, **k: [{"folio": f, "roomno": "T1"}]
    )
    with pytest.raises(na.PostingBlockedError, match="unsettled guest bill"):
        na.post_room_charges_for_date(today, cn=cn, commit=False)
    assert _rc_count(cn, today) == base, "blocked run inserted rows"
    assert _folio_rc(cn, f, today) == []
    cn.rollback()


def test_T1b_while_printing_bill_early_exit(db_transaction, fd_guest):
    """FAIL-ON-REVERT: old engine ignored RoomChrgPostingType (G12)."""
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    _create(cn, fd_guest, "PYT PARITY T1B", today, dep, roomrate=2000.0)
    _set_enviro(cn, "RoomChrgPostingType", "While Printing Bill")
    base = _rc_count(cn, today)
    res = na.post_room_charges_for_date(today, cn=cn, commit=False)
    assert res["posted"] == 0 and res["notice"], "G12 must exit with notice"
    assert _rc_count(cn, today) == base, "G12 exit inserted rows"
    cn.rollback()


# ------------------------------------------------------------------ T2 (G2)
def test_T2_exclusion_keyed_on_folionodocid(db_transaction, fd_guest):
    """FAIL-ON-REVERT: old engine keyed on FolioNo, so the decoy row below
    (same DocId, master-folio number — the live 455/456 shape) never
    matched and the room double-posted."""
    cn = db_transaction
    site = db.get_site_code()
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    f = _create(cn, fd_guest, "PYT PARITY T2", today, dep, roomrate=2000.0)
    docid = checkin.get(f, cn=cn)["docid"]
    master_folio = f + 700000
    db.execute(
        "UPDATE GuestFolio SET MFolioNo = ?, MFolioNoDocid = ? WHERE DocId = ?",
        (master_folio, "DKKCHK   2026 700000", docid),
        cn=cn,
        commit=False,
    )
    decoy = "D" + site + "RC".ljust(6) + "2026".ljust(4) + str(999991).rjust(8)
    db.execute(
        "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, VPrefix, "
        "Vdate, FolioNo, FolioNoDocid, AmtDr, LogSite_Code) "
        "VALUES (?, 1, 'RC', 999991, ?, '2026', ?, ?, ?, 0, ?)",
        (decoy, site, today, master_folio, docid, site),
        cn=cn,
        commit=False,
    )
    na.post_room_charges_for_date(today, cn=cn, commit=False)
    got = db.query(
        "SELECT FolioNo FROM PayCharge WHERE Site_Code = ? AND Vtype = 'RC' "
        "AND Vdate = ? AND FolioNoDocid = ?",
        (site, today, docid),
        cn=cn,
    )
    assert len(got) == 1, f"duplicate posting for {docid!r}: {got}"
    assert all(int(g[0] or 0) != f for g in got), "re-posted under own folio"
    cn.rollback()


# ------------------------------------------------------------------ T3 (G3)
def test_T3a_discount_netted_when_not_separate(db_transaction, fd_guest):
    """FAIL-ON-REVERT: old engine had no RODISC — DR stayed 2000."""
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    _set_enviro(cn, "PostRoomDiscSeparately", "No")
    f = _create(
        cn, fd_guest, "PYT PARITY T3A", today, dep, roomrate=2000.0, rodisc=10.0
    )
    na.post_room_charges_for_date(today, cn=cn, commit=False)
    rows = _folio_rc(cn, f, today)
    base = [r for r in rows if r[0] == "KKRMCH"]
    assert len(base) == 1
    assert float(base[0][1]) == 1800.0, f"netted DR wrong: {base[0][1]}"
    assert float(base[0][5] or 0) == 1800.0, "BillAmount must equal netted DR"
    assert all(float(r[2] or 0) == 0 for r in rows), "no CR rows when netted"
    cn.rollback()


def test_T3b_discount_separate_cr_row(db_transaction, fd_guest):
    """FAIL-ON-REVERT: old engine never wrote the {Site}DISC CR row."""
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    _set_enviro(cn, "PostRoomDiscSeparately", "Yes")
    f = _create(
        cn, fd_guest, "PYT PARITY T3B", today, dep, roomrate=2000.0, rodisc=10.0
    )
    na.post_room_charges_for_date(today, cn=cn, commit=False)
    rows = _folio_rc(cn, f, today)
    base = [r for r in rows if r[0] == "KKRMCH"]
    disc = [r for r in rows if r[0] == "KKDISC"]
    assert len(base) == 1 and float(base[0][1]) == 2000.0, "base stays gross"
    assert len(disc) == 1, f"separate CR row missing: {[r[0] for r in rows]}"
    assert float(disc[0][1]) == 0 and float(disc[0][2]) == 200.0
    assert float(disc[0][5] or 0) == 0, "disc BillAmount must be 0"
    assert (disc[0][8] or "").strip() == "RO"
    cn.rollback()


def test_T3c_missing_disc_account_aborts_with_zero_inserts(
    db_transaction, fd_guest, monkeypatch
):
    """FAIL-ON-REVERT: old engine never raised (no DISC gate at all)."""
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    _set_enviro(cn, "PostRoomDiscSeparately", "Yes")
    f = _create(
        cn, fd_guest, "PYT PARITY T3C", today, dep, roomrate=2000.0, rodisc=10.0
    )
    base = _rc_count(cn, today)
    monkeypatch.setattr(na, "_disc_account", lambda site, cn=None: None)
    with pytest.raises(na.PostingBlockedError, match="Room Disc"):
        na.post_room_charges_for_date(today, cn=cn, commit=False)
    assert _rc_count(cn, today) == base, "aborted run inserted rows"
    assert _folio_rc(cn, f, today) == []
    cn.rollback()


# ------------------------------------------------------------------ T4 (G4)
def test_T4a_custom_rate_not_flat_25(db_transaction, fd_guest, monkeypatch):
    """FAIL-ON-REVERT: old engine hardcoded 2.5% CGST/SGST (50.0 here)."""
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    f = _create(cn, fd_guest, "PYT PARITY T4A", today, dep, roomrate=2000.0)
    monkeypatch.setattr(
        na,
        "_room_tax_rows",
        lambda rts, pc, cn=None: [
            {
                "taxstru": "PYTT",
                "revname": "ROOM CHARGE",
                "taxname": "PYT TAX",
                "roomtaxac": "PYTAC",
                "taxcode": "PYTTAX",
                "rate": 7.5,
                "limit": 0.0,
                "limit1": 0.0,
                "nature": "On Base Amt",
                "condapp": "",
                "compop": "<=",  # VB6: Limit<=Amount -> 0<=2000 fires
            }
        ],
    )
    na.post_room_charges_for_date(today, cn=cn, commit=False)
    rows = _folio_rc(cn, f, today)
    tax = [r for r in rows if r[0] == "PYTTAX"]
    assert len(tax) == 1, f"derived tax row missing: {[r[0] for r in rows]}"
    assert float(tax[0][1]) == 150.0, f"7.5% of 2000 != {tax[0][1]}"
    assert float(tax[0][3]) == 7.5
    assert float(tax[0][5]) == 2000.0, "BillAmount must be the calc amount"
    assert float(tax[0][6]) == 2000.0, "TaxCondAmt must be the tested amount"
    cn.rollback()


def test_T4b_on_prev_tax_amt_nature(db_transaction, fd_guest, monkeypatch):
    """FAIL-ON-REVERT: old engine had no Nature dispatch (50/50 flat)."""
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    f = _create(cn, fd_guest, "PYT PARITY T4B", today, dep, roomrate=2000.0)

    def _rows(rts, pc, cn=None):
        mk = lambda code, rate, nature: {
            "taxstru": "PYTT",
            "revname": "ROOM CHARGE",
            "taxname": code,
            "roomtaxac": "PYTAC",
            "taxcode": code,
            "rate": rate,
            "limit": 0.0,
            "limit1": 0.0,
            "nature": nature,
            "condapp": "",
            "compop": "<=",  # VB6: Limit<=Amount -> fires for 2000/200
        }

        return [
            mk("PYTONE", 10.0, "On Base Amt"),
            mk("PYTTWO", 50.0, "On Prev. Tax Amt"),
        ]

    monkeypatch.setattr(na, "_room_tax_rows", _rows)
    na.post_room_charges_for_date(today, cn=cn, commit=False)
    rows = _folio_rc(cn, f, today)
    one = [r for r in rows if r[0] == "PYTONE"]
    two = [r for r in rows if r[0] == "PYTTWO"]
    assert len(one) == 1 and float(one[0][1]) == 200.0
    assert len(two) == 1 and float(two[0][1]) == 100.0, (
        f"50% of prev-tax 200 must be 100, got {two}"
    )
    cn.rollback()


def test_T4c_seeded_sch_surcharge_forces_zero_rate(db_transaction, fd_guest):
    """FAIL-ON-REVERT: live RevMast never holds 'SCH', so this seeds a real
    SCH tax + TaxStru through the engine SQL; old code posted CGST/SGST."""
    cn = db_transaction
    today = datetime.date.today()
    dep = today + datetime.timedelta(days=2)
    f = _create(cn, fd_guest, "PYT PARITY T4C", today, dep, roomrate=2000.0)
    docid = checkin.get(f, cn=cn)["docid"]
    db.execute(
        "INSERT INTO RevMast (Code, Name, ACCode, FieldType, Sundry) "
        "VALUES ('PYTSCH', 'PYT SCH TAX', 'PYTSCH', 'T', 'SCH')",
        cn=cn,
        commit=False,
    )
    db.execute(
        "INSERT INTO TaxStru (Code, Sno, TaxCode, Rate, Limit, Limit1, "
        "Nature, CondApp, CompOperator) "
        "VALUES ('PYTTRS', 1, 'PYTSCH', 5.0, 0, 0, 'On Base Amt', '', '<=')",
        cn=cn,
        commit=False,
    )
    db.execute(
        "UPDATE RoomOcc SET RoomTaxStru = 'PYTTRS' WHERE DocId = ?",
        (docid,),
        cn=cn,
        commit=False,
    )
    na.post_room_charges_for_date(today, cn=cn, commit=False)
    rows = _folio_rc(cn, f, today)
    assert [r[0] for r in rows] == ["KKRMCH"], f"SCH row must drop: {rows}"
    cn.rollback()
