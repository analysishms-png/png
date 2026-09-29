"""Unit tests: Party Master core (mocked-db, no live DB).

Invariants: namehelp uniqueness, supplier-scoped UPDATE/DELETE,
balance-guard delete, SubCode auto-gen format.
run: python -m pytest tests/unit -q"""
from types import SimpleNamespace

import pytest

from HMS_py.core import db, party_master


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


def test_validation(monkeypatch):
    _apply(monkeypatch)
    with pytest.raises(ValueError):
        party_master.save_party("", "", "G1")
    with pytest.raises(ValueError):
        party_master.save_party("", "Name", "")


def test_insert_generates_subcode_and_supplier_nature(monkeypatch):
    execs = []

    def fake_query(sql, params=None, cn=None):
        if "MAX(CAST(SUBSTRING(SubCode" in sql:
            return [SimpleNamespace(N=3254)]
        if "NameHelp" in sql:
            return [SimpleNamespace(N=0)]
        return [SimpleNamespace(N=0)]          # SubCode-absent check

    _apply(monkeypatch, query=fake_query)
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append((sql, params)) or 1)
    code = party_master.save_party("", "New Supplier", "HO0016", user="T")
    assert code == party_master.SITE_CODE[:2] + "003254"
    assert len(execs) == 1
    assert "INSERT INTO SubGroup" in execs[0][0]
    assert "'Supplier'" in execs[0][0]
    assert "T" in str(execs[0][1])


def test_namehelp_duplicate_blocked(monkeypatch):
    def fake_query(sql, params=None, cn=None):
        if "MAX(CAST(SUBSTRING(SubCode" in sql:
            return [SimpleNamespace(N=3254)]
        if "NameHelp" in sql:
            return [SimpleNamespace(N=2)]      # duplicate exists
        return [SimpleNamespace(N=0)]

    _apply(monkeypatch, query=fake_query)
    with pytest.raises(ValueError, match="NameHelp"):
        party_master.save_party("", "X", "G", namehelp="DUP")


def test_update_scoped_to_supplier(monkeypatch):
    execs = []

    def fake_query(sql, params=None, cn=None):
        if "NameHelp" in sql:
            return [SimpleNamespace(N=0)]
        return []

    _apply(monkeypatch, query=fake_query)
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append(sql) or 1)
    party_master.save_party("KK001550", "Amit Ballone", "HO0016", user="T")
    assert len(execs) == 1
    assert "UPDATE SubGroup" in execs[0]
    assert "Nature = 'Supplier'" in execs[0]


def test_delete_blocked_when_balance(monkeypatch):
    def fake_query(sql, params=None, cn=None):
        if "SUM(CURR_BAL)" in sql:
            return [SimpleNamespace(Bal=1500.0)]
        return [SimpleNamespace(N=1)]

    _apply(monkeypatch, query=fake_query)
    with pytest.raises(ValueError, match="Balance"):
        party_master.delete_party("KK001550")


def test_delete_happy_path_cleans_currbal(monkeypatch):
    execs = []

    def fake_query(sql, params=None, cn=None):
        if "SUM(CURR_BAL)" in sql:
            return [SimpleNamespace(Bal=0.0)]
        return [SimpleNamespace(N=1)]

    _apply(monkeypatch, query=fake_query)
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append(sql) or 1)
    party_master.delete_party("KK001550")
    assert any("DELETE FROM SUBGROUPCURRBAL" in s for s in execs)
    assert any("DELETE FROM SubGroup" in s and "Nature = 'Supplier'" in s
               for s in execs)
