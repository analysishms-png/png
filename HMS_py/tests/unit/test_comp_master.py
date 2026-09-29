"""Unit tests: Comp Master core (mocked-db, no live DB).

Invariants: 3-section get_comp, VB6 delete-then-reinsert save,
discount 0-100 validation, SubGroup existence guard,
PlanMast Code/Name cols (live probe 2026-09).
run: python -m pytest tests/unit/test_comp_master.py -q"""
from types import SimpleNamespace

import pytest

from HMS_py.core import comp_master, db


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


def test_save_requires_code_and_subgroup(monkeypatch):
    _apply(monkeypatch, query=lambda sql, params=None, cn=None:
           [SimpleNamespace(N=0)])
    with pytest.raises(ValueError, match="Company code zaroori"):
        comp_master.save_comp("  ", [], [], [])
    with pytest.raises(ValueError, match="SubGroup me nahi mila"):
        comp_master.save_comp("KKX", [], [], [])


def test_discount_range_validation(monkeypatch):
    _apply(monkeypatch, query=lambda sql, params=None, cn=None:
           [SimpleNamespace(N=1)])
    with pytest.raises(ValueError, match="0-100"):
        comp_master.save_comp(
            "KKX", [{"roomcat": "A", "discount": 150}], [], [])


def test_save_deletes_then_reinserts_all_sections(monkeypatch):
    execs = []
    _apply(monkeypatch, query=lambda sql, params=None, cn=None:
           [SimpleNamespace(N=1)])
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append((sql, params)) or 1)
    res = comp_master.save_comp(
        "KK000025",
        discounts=[{"roomcat": "DLX", "adult": 1, "discount": 25,
                    "disctype": "P"}],
        plans=[{"roomcat": "DLX", "plancode": "KK002", "planamt": 500}],
        inclusives=["Breakfast"], user="T")
    assert res == {"discounts": 1, "plans": 1, "inclusives": 1}
    dels = [e for e in execs if e[0].startswith("DELETE")]
    assert [d[0].split("FROM ")[1].split(" ")[0] for d in dels] == \
        ["RoomDiscount", "Comp_PlanDet", "Comp_Inclusive"]
    ins_rd = next(e for e in execs
                  if e[0].startswith("INSERT INTO RoomDiscount"))
    # RoomDiscount me U_Name column NAHI hai (live schema)
    assert "U_Name" not in ins_rd[0]
    ins_cp = next(e for e in execs
                  if e[0].startswith("INSERT INTO Comp_PlanDet"))
    assert ins_cp[0].count("U_Name") == 1      # Comp_PlanDet me hai
    ins_ci = next(e for e in execs
                  if e[0].startswith("INSERT INTO Comp_Inclusive"))
    assert "Inclusive" in ins_ci[0]


def test_save_skips_blank_roomcat_rows(monkeypatch):
    execs = []
    _apply(monkeypatch, query=lambda sql, params=None, cn=None:
           [SimpleNamespace(N=1)])
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append((sql, params)) or 1)
    res = comp_master.save_comp(
        "KKX",
        discounts=[{"roomcat": "  ", "discount": 10},
                   {"roomcat": "DLX", "discount": 10}],
        plans=[], inclusives=[])
    assert res["discounts"] == 1


def test_delete_pack_hits_all_three_tables(monkeypatch):
    execs = []
    _apply(monkeypatch)
    monkeypatch.setattr(db, "execute",
                        lambda sql, params=None, cn=None, commit=False:
                        execs.append((sql, params)) or 1)
    comp_master.delete_comp("KK000025")
    tables = [e[0].split("FROM ")[1].split(" ")[0] for e in execs
              if e[0].startswith("DELETE")]
    assert tables == ["RoomDiscount", "Comp_PlanDet", "Comp_Inclusive"]


def test_list_plans_uses_code_name_columns(monkeypatch):
    """Live PlanMast cols Code/Name hain (PlanCode/PlanName nahi)."""
    _apply(monkeypatch, query=lambda sql, params=None, cn=None:
           [SimpleNamespace(Code="KK002", Name="A.P.")])
    plans = comp_master.list_plans()
    assert plans == [{"code": "KK002", "name": "A.P."}]
    assert "PlanCode" not in str(plans)
