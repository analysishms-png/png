"""Unit tests: Consumption Master core (mocked-db, no live DB).

VB6 FrmConsumMast port ke invariants: recipe validation, DELETE+INSERT
re-save flow, cost math (Cost = LPurRate*RawQty/FinQty), ItemMast
PurchRate backfill. run: python -m pytest tests/unit -q"""
from types import SimpleNamespace

import pytest

from HMS_py.core import consumption_master as cm
from HMS_py.core import db


class FakeCn:
    def __init__(self, rowcount=0):
        self.rowcount = rowcount
        self.committed = False
        self.rolled_back = False
        self.closed = False
        self.executed = []

    def commit(self):
        self.committed = True

    def rollback(self):
        self.rolled_back = True

    def close(self):
        self.closed = True

    def cursor(self):
        return self

    def execute(self, sql, params=None):
        self.executed.append(sql)
        return None


def _apply(monkeypatch, query=None, connect=None):
    monkeypatch.setattr(db, "connect",
                        lambda: (connect() if connect else FakeCn()))
    if query is not None:
        monkeypatch.setattr(db, "query", query)


def test_save_recipe_validation(monkeypatch):
    _apply(monkeypatch)  # DB touch na ho
    with pytest.raises(ValueError):
        cm.save_recipe("", "KKM001", 1, "2026-01-01",
                       [{"raw_item": "R1", "raw_qty": 1}])
    with pytest.raises(ValueError):
        cm.save_recipe("F1", "", 1, "2026-01-01",
                       [{"raw_item": "R1", "raw_qty": 1}])
    with pytest.raises(ValueError):
        cm.save_recipe("F1", "KKM001", 0, "2026-01-01",
                       [{"raw_item": "R1", "raw_qty": 1}])
    with pytest.raises(ValueError):
        cm.save_recipe("F1", "KKM001", 1, "2026-01-01", [])


def test_save_recipe_rejects_unknown_raw(monkeypatch):
    def fake_query(sql, params=None, cn=None):
        # list_raw_items: koi rows nahi -> har raw unknown
        return []
    _apply(monkeypatch, query=fake_query)
    with pytest.raises(ValueError, match="Store/Gravy"):
        cm.save_recipe("F1", "KKM001", 1, "2026-01-01",
                       [{"raw_item": "NOPE", "raw_qty": 2}])


def test_save_recipe_flow_and_cost_math(monkeypatch):
    execs = []

    def fake_query(sql, params=None, cn=None):
        # list_raw_items call: raw item R1 ka LPurRate = 100
        return [SimpleNamespace(Code="R1", Name="Flour", Unit="KG",
                                LPurRate=100.0, IssueUnit="KG")]

    def fake_execute(sql, params=None, cn=None, commit=False):
        execs.append((sql, params))
        return 1

    _apply(monkeypatch, query=fake_query, connect=lambda: FakeCn())
    monkeypatch.setattr(db, "execute", fake_execute)
    res = cm.save_recipe("F1", "KKM001", fin_qty=4, app_date="2026-01-01",
                         raw_rows=[{"raw_item": "R1", "raw_qty": 2,
                                    "waste": 0.5}], user="T")
    assert res["rows_saved"] == 1
    # Cost = 100 * 2 / 4 = 50; Total = 50 + 0.5 = 50.5
    assert res["cost_per_unit"] == pytest.approx(50.5, abs=0.01)
    inserts = [e for e in execs if "INSERT INTO BOM" in e[0]]
    assert len(inserts) == 1
    assert "DELETE FROM BOM" in execs[0][0]        # pehle purani recipe
    backfill = [e for e in execs if "UPDATE ItemMast" in e[0]]
    assert len(backfill) == 1
    assert backfill[0][1][0] == pytest.approx(50.5, abs=0.01)  # PurchRate


def test_save_recipe_multi_rows_sno_order(monkeypatch):
    execs = []

    def fake_query(sql, params=None, cn=None):
        return [SimpleNamespace(Code="R1", Name="A", Unit="KG",
                                LPurRate=10.0, IssueUnit="KG"),
                SimpleNamespace(Code="R2", Name="B", Unit="L",
                                LPurRate=20.0, IssueUnit="L")]

    _apply(monkeypatch, query=fake_query, connect=lambda: FakeCn())
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append((sql, params)) or 1)
    cm.save_recipe("F1", "KKM001", 2, "2026-01-01",
                   [{"raw_item": "R2", "raw_qty": 1},
                    {"raw_item": "R1", "raw_qty": 3}])
    inserts = [e for e in execs if "INSERT INTO BOM" in e[0]]
    assert len(inserts) == 2
    snos = [e[1][5] for e in inserts]              # RawSno param position
    assert snos == [1, 2]


def test_delete_recipe_uses_cursor_and_commits(monkeypatch):
    cn = FakeCn(rowcount=7)

    def connect():
        return cn

    _apply(monkeypatch, connect=connect)
    n = cm.delete_recipe("F1", "KKM001", "2026-01-01")
    assert n == 7
    assert cn.committed and cn.closed
    assert any("DELETE FROM BOM" in s for s in cn.executed)
