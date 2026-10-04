"""Unit tests: Plan Defination core (mocked-db, no live DB).

Invariants: VB6 code-gen (site[:2] + 3-digit pad, loc_154BB69),
standard-mode dispatcher check, FixedCharge picker shape, percent-app
validation ('Room Rate Percent is invalid').
run: python -m pytest tests/unit/test_plan_definition.py -q"""
from types import SimpleNamespace

from HMS_py.core import db, plan_definition as pd


def test_next_plan_code_format(monkeypatch):
    monkeypatch.setattr(db, "query",
                        lambda sql, params=None, cn=None:
                        [SimpleNamespace(N=12)])
    code = pd.next_plan_code()
    assert code == pd.SITE_CODE[:2] + "013"       # MAX+1 zero-padded
    assert len(code) == 5


def test_next_plan_code_first_ever(monkeypatch):
    monkeypatch.setattr(db, "query",
                        lambda sql, params=None, cn=None:
                        [SimpleNamespace(N=0)])
    code = pd.next_plan_code()
    assert code == pd.SITE_CODE[:2] + "001"


def test_mode_is_standard(monkeypatch):
    monkeypatch.setattr(db, "query",
                        lambda sql, params=None, cn=None:
                        [SimpleNamespace(T="Standard")])
    assert pd.mode_is_standard() is True
    monkeypatch.setattr(db, "query",
                        lambda sql, params=None, cn=None:
                        [SimpleNamespace(T="Advanced")])
    assert pd.mode_is_standard() is False


# --- MS-038: VB6 'Plan Master' dispatcher (MDIForm1.frm:7281-7300) ---------
#   Select PlanMastType from Enviro where logsite_code='<site>'
#   If PlanMastType = "Advanced" Then New FrmPackageMast (MyType="Plan")
#   Else                               New FrmPlanPackMast
def test_plan_master_mode_uses_vb6_where_clause(monkeypatch):
    """MS-039: VB6 filters on logsite_code ONLY - no 'HO' union."""
    seen = {}

    def fake_query(sql, params=None, cn=None):
        seen["sql"] = sql
        seen["params"] = params
        return [SimpleNamespace(T="Advanced")]

    monkeypatch.setattr(db, "query", fake_query)
    assert pd.plan_master_mode() == "Advanced"
    assert "'HO'" not in seen["sql"], "VB6 does not union the HO Enviro row"
    assert "LogSite_Code = ?" in seen["sql"]
    assert seen["params"] == (pd.SITE_CODE,)


def test_plan_master_mode_null_and_blank(monkeypatch):
    monkeypatch.setattr(db, "query",
                        lambda sql, params=None, cn=None:
                        [SimpleNamespace(T=None)])
    assert pd.plan_master_mode() == ""
    assert pd.mode_is_standard() is True      # NULL != "Advanced" -> FrmPlanPackMast
    monkeypatch.setattr(db, "query",
                        lambda sql, params=None, cn=None: [])
    assert pd.plan_master_mode() == ""
    assert pd.mode_is_standard() is True


def test_plan_master_mode_is_case_insensitive(monkeypatch):
    """VB6 compares with `If var_D4.Value = "Advanced"`; the live column is
    free text, so match case-insensitively rather than silently falling into
    the standard branch on 'advanced'."""
    for value in ("Advanced", "advanced", "ADVANCED", " Advanced "):
        monkeypatch.setattr(db, "query",
                            lambda sql, params=None, cn=None, v=value:
                            [SimpleNamespace(T=v)])
        assert pd.mode_is_standard() is False, value


def test_plan_master_dispatch_routes_by_enviro(monkeypatch):
    """MS-038: the 'Plan Master' leaf must branch, not hardcode one form."""
    from HMS_py.ui import shell

    seen = []

    class FakeP2:
        def open_planmaster(self, parent=None):
            seen.append("adv")
            return "ADV"

    class FakeFm:
        def open_plan_definition(self, parent=None, user="SA"):
            seen.append("std")
            return "STD"

    p2, fm = FakeP2(), FakeFm()

    for value, expect in (("Advanced", "ADV"), ("advanced", "ADV"),
                          ("Standard", "STD"), ("", "STD"),
                          ("Standard Plan", "STD")):
        seen.clear()
        monkeypatch.setattr(pd, "plan_master_mode", lambda cn=None, v=value: v)
        assert shell._open_plan_master(None, p2, fm) == expect, value

    # Enviro unreadable -> fail over to the Advanced form (prior behaviour,
    # and what the live KK site uses) instead of raising.
    def boom(cn=None):
        raise RuntimeError("Enviro read failed")

    monkeypatch.setattr(pd, "plan_master_mode", boom)
    assert shell._open_plan_master(None, p2, fm) == "ADV"


def test_plan_switches_are_enviro_editable():
    """MS-038: VB6 frmEnviro writes all three in its UPDATE SET chain
    (loc_1CB268B PlanMastType, loc_1CB2801 PlanSelectionBasedOn/PlanCalc).
    They must not be filtered out of the Parameter save."""
    from HMS_py.core import enviro, general_setup as gs
    for key in ("PlanMastType", "PlanCalc", "PlanSelectionBasedOn"):
        assert key in enviro.EDITABLE, key
        assert key in gs.ENVIRO_EDITABLE_FIELDS, key
        assert enviro._validate(key, "Advanced") == "Advanced"
    # ...and they are not finance AC columns, so they leave the finance set.
    for key in ("PlanMastType", "PlanCalc", "PlanTariffNarration", "AttendType"):
        assert key not in gs.ENVIRO_FINANCE_FIELDS, key
    # GL guard must stay intact.
    for key in ("Cash_Ac", "DiscountAc", "RoundOffAc"):
        assert key not in enviro.EDITABLE, key
        assert key in enviro.READ_ONLY, key


def test_list_fixed_charges_scopes_logsite(monkeypatch):
    captured = {}

    def fake_query(sql, params=None, cn=None):
        captured["sql"] = sql
        captured["params"] = params
        return [SimpleNamespace(Code="KK002", Name="MEAL CHARGE",
                                Sname="MEAL", Revcode="KK0900",
                                TaxInc="Yes", TaxStru="",
                                PrintOption="", PostingMethod="",
                                ChargeType="", FlatRate=100.0,
                                Adult=2, Child=1, ExtraAdult=0,
                                ExtraChild=0)]

    monkeypatch.setattr(db, "query", fake_query)
    rows = pd.list_fixed_charges()
    assert rows[0]["code"] == "KK002"
    assert rows[0]["flatrate"] == 100.0
    assert pd.SITE_CODE in captured["params"]
    assert "LogSite_Code" in captured["sql"]


def test_get_plan_display_joins_fixedcharge(monkeypatch):
    def fake_query(sql, params=None, cn=None):
        assert "LEFT JOIN FixedCharge" in sql
        assert "RevName" in sql
        return [SimpleNamespace(ChrgCode="KK002", RevCode="KK0900",
                                RevName="MEAL CHARGE", TaxInc="Yes",
                                TaxStru="", PrintOption="",
                                PostingMethod="", ChargeType="",
                                FlatRate=100.0, Adult=2, Child=1,
                                ExtraAdult=0, ExtraChild=0,
                                NoOfDays=1, PlanPer=0)]

    monkeypatch.setattr(db, "query", fake_query)
    rows = pd.get_plan_display("KK001")
    assert rows[0]["revname"] == "MEAL CHARGE"


def test_percent_app_validation():
    # VB6 loc_154BAA7: percent checked + roomper blank -> invalid
    try:
        pd.validate_percent_app(True, 0)
        assert False, "ValueError expected"
    except ValueError as e:
        assert "Room Rate Percent is invalid" in str(e)
    pd.validate_percent_app(True, 10)     # ok
    pd.validate_percent_app(False, 0)     # percent off -> ok
