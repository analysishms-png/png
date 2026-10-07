"""AUDIT-20261005 P2-M — Plan Master (`PlanMast` / `Plan1`) parity.

VB6 FrmPlanPackMast.frm:
  insert loc_154BD05 : PlanMast 13-col INSERT (...ActiveYN,PercentApp,
                       RoomPer,LogSite_Code)
  update loc_154BF77 : SET Name,Total,PercentApp,Site_Code,U_Name,RoomPer,
                       U_EntDt,U_AE
  Plan1  loc_154C121 delete + loc_154C4F4 21-col reinsert, U_AE =
                       IIf(mode = "Add", "A", "E")   <- mode-based, not index
"""
import os

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

pytestmark = pytest.mark.unit


class FakeDB:
    def __init__(self):
        self.queries = []
        self.executes = []
        self.commits = 0

    def query(self, sql, params=(), cn=None):
        self.queries.append((" ".join(sql.split()), tuple(params)))
        return []

    def execute(self, sql, params=(), cn=None, commit=True):
        self.executes.append((" ".join(sql.split()), tuple(params)))
        return 1

    def require_absent(self, *a, **k):
        return None

    def connect(self):
        outer = self

        class _CN:
            def commit(self):
                outer.commits += 1

            def rollback(self):
                pass

            def close(self):
                pass

        return _CN()


@pytest.fixture
def fake(monkeypatch):
    from HMS_py.core import db as dbmod
    f = FakeDB()
    monkeypatch.setattr(dbmod, "query", f.query)
    monkeypatch.setattr(dbmod, "execute", f.execute)
    monkeypatch.setattr(dbmod, "require_absent", f.require_absent)
    monkeypatch.setattr(dbmod, "connect", f.connect)
    return f


def _plan_row(chrg="CHG001"):
    return {"ChrgCode": chrg, "RevCode": "R0001", "FlatRate": 10,
            "Adult": 2, "Child": 0, "NoOfDays": 1, "TaxStru": "GST",
            "TaxInc": "Yes"}


# ------------------------------------------------------------ legacy plans.py
def test_plans_insert_writes_percentapp_and_roomper(fake):
    from HMS_py.core import plans
    plans.insert("PLN01", "Test Plan", 1000, "CP",
                 percent_app="Yes", room_per="50")
    sql, params = fake.executes[-1]
    assert "PercentApp" in sql and "RoomPer" in sql
    assert params[5] == "Yes" and params[6] == 50.0
    assert params[3] == "Plan"          # Plan_Package pinned (UI contract)


def test_plans_update_writes_percentapp_sitecode_roomper(fake):
    from HMS_py.core import plans
    plans.update("PLN01", "Test Plan", 1000, "CP",
                 percent_app="Yes", room_per="25")
    sql, params = fake.executes[-1]
    assert "PercentApp = ?" in sql and "RoomPer = ?" in sql
    assert "Site_Code = ?" in sql
    assert params[4] == "Yes" and params[5] == 25.0
    assert plans.SITE_CODE in params


# ---------------------------------------------------- packagemaster Plan1 U_AE
def test_plan1_rows_all_A_on_insert(fake):
    """VB6 loc_154C4F4: Add-branch me HAR row U_AE='A'."""
    from HMS_py.core import packagemaster
    packagemaster.save_with_children(
        {"code": "PLN01", "name": "P", "total": 0},
        plan_rows=[_plan_row("C1"), _plan_row("C2"), _plan_row("C3")],
        mode="insert", kind="Plan")
    uaes = [p[-5] for s, p in fake.executes if "INSERT INTO Plan1" in s]
    assert uaes == ["A", "A", "A"]


def test_plan1_rows_all_E_on_update(fake):
    """VB6 loc_154C4F4: Edit-branch me HAR row U_AE='E' (index 0 bhi)."""
    from HMS_py.core import packagemaster
    packagemaster.save_with_children(
        {"code": "PLN01", "name": "P", "total": 0},
        plan_rows=[_plan_row("C1"), _plan_row("C2")],
        mode="update", kind="Plan")
    uaes = [p[-5] for s, p in fake.executes if "INSERT INTO Plan1" in s]
    assert uaes == ["E", "E"]


def test_plan1_insert_keeps_vb6_column_set(fake):
    """plan1 adult / taxstru / u_name VB6 columns persist hote hain."""
    from HMS_py.core import packagemaster
    packagemaster.save_with_children(
        {"code": "PLN01", "name": "P", "total": 0},
        plan_rows=[_plan_row()], mode="insert", kind="Plan")
    sql, _ = next((s, p) for s, p in fake.executes
                  if "INSERT INTO Plan1" in s)
    for col in ("Adult", "Child", "TaxStru", "U_Name", "Site_Code",
                "LogSite_Code", "PlanPer", "App_Date"):
        assert col in sql, col
