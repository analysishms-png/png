"""Unit tests: DepartPay core (mocked-db, no live DB).

Invariants: VB6 delete-then-reinsert save, BANQ auto-row (loc_105CC94),
RevMast existence guard, FOM restcode '<site>Fom', LogSite scoping.
run: python -m pytest tests/unit/test_depart_pay.py -q"""
from types import SimpleNamespace

import pytest

from HMS_py.core import depart_pay as dp
from HMS_py.core import db


class FakeCn:
    def __init__(self):
        self.committed = False
        self.rolled_back = False
        self.closed = False

    def commit(self): self.committed = True
    def rollback(self): self.rolled_back = True
    def close(self): self.closed = True


def _apply(monkeypatch, query=None):
    monkeypatch.setattr(db, "connect", lambda: FakeCn())
    if query is not None:
        monkeypatch.setattr(db, "query", query)


def test_fom_allowed_paycodes_uses_site_fom_restcode(monkeypatch):
    """VB6 FdReSetlement loc_14633E7: restcode='<site>Fom'."""
    captured = {}

    def fake_query(sql, params=None, cn=None):
        captured["sql"] = sql
        captured["params"] = params
        return [SimpleNamespace(Code="KKCASH", Name="Cash", Flag="",
                                Paytype="Cash", SaleRate=0, Cost=0)]

    _apply(monkeypatch, fake_query)
    rows = dp.fom_allowed_paycodes()
    assert rows[0]["paycode"] == "KKCASH"
    assert dp.SITE_CODE + "Fom" in captured["params"]
    assert "DepartPay" in captured["sql"]
    assert "LEFT OUTER JOIN RevMast" in captured["sql"]
    assert "LogSite_Code" in captured["sql"]


def test_set_for_paycode_requires_revmast_entry(monkeypatch):
    _apply(monkeypatch, query=lambda sql, params=None, cn=None:
           [SimpleNamespace(N=0)])
    with pytest.raises(ValueError, match="RevMast me nahi mila"):
        dp.set_for_paycode("KKNOPE", ["KKRS"])


def test_set_for_paycode_delete_then_reinsert_banq_auto(monkeypatch):
    """VB6 loc_105CB06 (delete) + loc_105CC94 (BANQ auto-insert)."""
    execs = []

    def fake_query(sql, params=None, cn=None):
        if "COUNT(*) AS N FROM RevMast" in sql:
            return [SimpleNamespace(N=1)]
        if "SELECT RestCode FROM DepartPay" in sql:
            return [SimpleNamespace(RestCode="KKRS")]
        return []

    _apply(monkeypatch, fake_query)
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append((sql, params)) or 1)
    n = dp.set_for_paycode("KK0002", ["KKRS", "KKE001", "banq"], user="T")
    dels = [e for e in execs if e[0].startswith("DELETE FROM DepartPay")]
    # 1 LogSite-scoped + 1 BANQ-scoped delete (VB6 do alag deletes)
    assert len(dels) == 2
    assert any("LogSite_Code" in e[0] for e in dels)
    assert any("RestCode = ?" in e[0] and not e[0].count("LogSite_Code")
               for e in dels)
    ins = [e for e in execs if e[0].startswith("INSERT INTO DepartPay")]
    restcodes = [e[1][0] for e in ins]
    # selected + BANQ auto (upper-case dedupe: 'banq' selected hi tha)
    assert sorted(restcodes) == ["BANQ", "KKE001", "KKRS"]
    # har insert me audit cols
    assert all("U_AE" in e[0] and "LogSite_Code" in e[0] for e in ins)
    assert n == 3


def test_set_allowed_toggles_single_row(monkeypatch):
    execs = []

    def fake_query(sql, params=None, cn=None):
        if "COUNT(*) AS N FROM RevMast" in sql:
            return [SimpleNamespace(N=1)]
        return []

    _apply(monkeypatch, fake_query)
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append((sql, params)) or 1)
    dp.set_allowed("KKRS", "KK0002", False, user="T")
    assert len(execs) == 1 and execs[0][0].startswith("DELETE FROM DepartPay")
    dp.set_allowed("KKRS", "KK0002", True, user="T")
    assert execs[1][0].startswith("DELETE FROM DepartPay")
    assert execs[2][0].startswith("INSERT INTO DepartPay")
    assert execs[2][1][0] == "KKRS" and execs[2][1][1] == "KK0002"


def test_delete_for_paycode_scoped(monkeypatch):
    execs = []
    _apply(monkeypatch)
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append((sql, params)) or 1)
    dp.delete_for_paycode("KK0002")
    assert any(e[0].startswith("DELETE FROM DepartPay") and
               "LogSite_Code" in e[0] for e in execs)


def test_validation_empty_codes(monkeypatch):
    _apply(monkeypatch, query=lambda sql, params=None, cn=None:
           [SimpleNamespace(N=1)])
    with pytest.raises(ValueError, match="PayCode zaroori"):
        dp.set_for_paycode("  ", ["KKRS"])
    with pytest.raises(ValueError, match="RestCode aur PayCode"):
        dp.set_allowed("", "KK0002", True)
    with pytest.raises(ValueError, match="PayCode zaroori"):
        dp.delete_for_paycode("")
