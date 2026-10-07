"""Unit tests: Amend Stay parity gaps (GAP-01 context + GAP-03 departure
boundary). No live DB - sab db.query mocks hain.
run: python -m pytest tests/unit -q"""

import datetime

import pytest

from HMS_py.core import db, folio

_MSG_EQ = "Departure Date Must Be Greater than Check in Date"
_MSG_LT = "Departure Date Can't be Less than Check in Date"


def _gf_row(vdate):
    """GuestFolio row: DocId, Name, DepDate, Vdate, NoDays."""
    return ("DKKCHK   2026     9001", "PYT-TEST", vdate, vdate, 1)


def test_amend_rejects_new_dep_equal_to_checkin(monkeypatch):
    """GAP-03: new_dep == Vdate must raise VB6 equality message."""
    today = datetime.date.today()
    monkeypatch.setattr(db, "query", lambda *a, **k: [_gf_row(today)])
    with pytest.raises(ValueError, match="^" + _MSG_EQ + "$"):
        folio.amend_departure(9001, today)


def test_amend_rejects_new_dep_before_checkin(monkeypatch):
    """new_dep < Vdate keeps the VB6 '< Check in Date' message."""
    today = datetime.date.today()
    vdate = today + datetime.timedelta(days=1)
    monkeypatch.setattr(db, "query", lambda *a, **k: [_gf_row(vdate)])
    with pytest.raises(ValueError, match="^" + _MSG_LT + "$"):
        folio.amend_departure(9001, today)


def test_amend_context_maps_rows(monkeypatch):
    """GAP-01: index-based mapping of VB6 load-SQL columns."""
    ci = datetime.datetime(2026, 10, 4, 13, 0, 0)
    monkeypatch.setattr(
        db,
        "query",
        lambda *a, **k: [("101 ", ci, datetime.time(12, 0), "ACME ", "IN-HOUSE ")],
    )
    ctx = folio.amend_context(9001)
    assert ctx["roomno"] == "101"
    assert ctx["chkindate"] == datetime.date(2026, 10, 4)
    assert str(ctx["chkintime"]).startswith("12:00")
    assert ctx["company"] == "ACME"
    assert ctx["status"] == "IN-HOUSE"


def test_amend_context_empty_folio(monkeypatch):
    monkeypatch.setattr(db, "query", lambda *a, **k: [])
    ctx = folio.amend_context(999999)
    assert ctx["roomno"] == ""
    assert ctx["chkindate"] is None
