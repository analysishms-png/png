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
