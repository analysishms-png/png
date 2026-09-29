"""Unit tests: Gravy Item core (mocked-db, no live DB).

 VB6 RsGravyItemEntry port ka invariant pin karta hai:
 code-gen format, GravyItem='Yes' INSERT, UnitMast auto-create,
 STOCK/BOM delete guards. run: python -m pytest tests/unit -q"""
from types import SimpleNamespace

import pytest

from HMS_py.core import db, gravy_item


class FakeCn:
    def __init__(self):
        self.committed = False
        self.rolled_back = False
        self.closed = False

    def commit(self):
        self.committed = True

    def rollback(self):
        self.rolled_back = True

    def close(self):
        self.closed = True


def _apply(monkeypatch, query=None, execute=None):
    monkeypatch.setattr(db, "connect", lambda: FakeCn())
    if query is not None:
        monkeypatch.setattr(db, "query", query)
    if execute is not None:
        monkeypatch.setattr(db, "execute", execute)


def test_next_gravy_code_format(monkeypatch):
    # SQL khud MAX+1 return karta hai: live MAX=3200 (KK003200) -> N=3201
    _apply(monkeypatch, query=lambda sql, params=None, cn=None:
           [SimpleNamespace(N=3201)])
    code = gravy_item.next_gravy_code()
    assert code.startswith(gravy_item.SITE_CODE[:2])
    assert code[2:] == "003201"


def test_insert_validation_errors(monkeypatch):
    _apply(monkeypatch)  # koi query/execute nahi hona chahiye
    with pytest.raises(ValueError):
        gravy_item.insert_gravy_item("", "KKM001", "PCS", "G", "C", "K", 10)
    with pytest.raises(ValueError):
        gravy_item.insert_gravy_item("Test", "KKM001", "", "G", "C", "K", 10)
    with pytest.raises(ValueError):
        gravy_item.insert_gravy_item("Test", "KKM001", "PCS", "", "C", "K", 10)
    with pytest.raises(ValueError):
        gravy_item.insert_gravy_item("Test", "KKM001", "PCS", "G", "", "K", 10)
    with pytest.raises(ValueError):
        gravy_item.insert_gravy_item("Test", "KKM001", "PCS", "G", "C", "", 10)


def test_insert_happy_path(monkeypatch):
    calls = []

    def fake_query(sql, params=None, cn=None):
        calls.append(("Q", sql))
        if "UnitMast" in sql:
            return [SimpleNamespace(N=0)]      # unit abhi nahi -> insert
        return [SimpleNamespace(N=6)]          # SQL ka MAX+1 -> 6th code

    def fake_execute(sql, params=None, cn=None, commit=False):
        calls.append(("E", sql, params))
        return 1

    _apply(monkeypatch, query=fake_query, execute=fake_execute)
    code = gravy_item.insert_gravy_item("Brown Gravy", "KKM001", "KG",
                                        "GRAVY", "GRAVCAT", "KKMK", 90.5,
                                        user="TESTER")
    assert code == gravy_item.SITE_CODE[:2] + "000006"
    inserts = [c for c in calls if c[0] == "E" and "INSERT INTO" in c[1]]
    assert any("UnitMast" in c[1] for c in inserts)
    item = next(c for c in inserts if "ItemMast" in c[1])
    assert "GravyItem" in item[1] and "Finish" in item[1]
    assert "TESTER" in str(item[2])


def test_update_touches_only_gravy_rows(monkeypatch):
    execs = []

    def fake_query(sql, params=None, cn=None):
        if "UnitMast" in sql:
            return [SimpleNamespace(N=1)]      # unit already exists
        return []

    _apply(monkeypatch, query=fake_query,
           execute=lambda sql, params=None, cn=None, commit=False:
           execs.append(sql) or 1)
    gravy_item.update_gravy_item("KK003201", "New Name", "KKM001", "KG",
                                 "G", "C", "KKMK", 12, user="T")
    assert len(execs) == 1
    assert "UPDATE ItemMast" in execs[0]
    assert "GravyItem = 'Yes'" in execs[0] and "INSERT" not in execs[0]


def test_delete_guards_block_when_referenced(monkeypatch):
    def fake_query(sql, params=None, cn=None):
        if "Stock WHERE Item" in sql:
            return [SimpleNamespace(N=3)]      # Stock reference exists
        if "BOM WHERE FinItem" in sql:
            return [SimpleNamespace(N=0)]
        return [SimpleNamespace(N=1)]          # item exists

    _apply(monkeypatch, query=fake_query,
           execute=lambda *a, **k: (_ for _ in ()).throw(
               AssertionError("delete should not run")))
    with pytest.raises(ValueError, match="Stock"):
        gravy_item.delete_gravy_item("KK003201")


def test_delete_cascades_three_tables(monkeypatch):
    execs = []

    def fake_query(sql, params=None, cn=None):
        if "Stock WHERE Item" in sql or "BOM WHERE FinItem" in sql:
            return [SimpleNamespace(N=0)]
        return [SimpleNamespace(N=1)]

    _apply(monkeypatch, query=fake_query,
           execute=lambda sql, params=None, cn=None, commit=False:
           execs.append(sql) or 1)
    gravy_item.delete_gravy_item("KK003201")
    assert sum(1 for s in execs if "DELETE FROM ItemMast" in s) == 1
    assert sum(1 for s in execs if "DELETE FROM ItemRate" in s) == 1
    assert sum(1 for s in execs if "DELETE FROM Stock" in s) == 1
