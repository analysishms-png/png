"""AUDIT-20261005 P2-O / MS-013 re-estimate (Batch D) — Enviro columns.

VB6 `frmEnviro` ka Cmd_Click UPDATE-chain (loc_1CB2322 .. loc_1CB2E64) 143
live Enviro columns update karta hai. Port ke EDITABLE white-list me kuch
cols missing the -> save par silently DROP ho jaate the.

Policy (documented decision, still honoured): GL/A-C columns READ-ONLY.
"""
import os
import pathlib

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

pytestmark = pytest.mark.unit


# VB6 frmEnviro update-chain se jo operational cols pehle kahin nahi the.
NEW_OPERATIONAL = (
    "AutoSplitYN", "RoomChrgPostingType", "BillAmendMode", "PrintRcpt",
    "RptCashierSettlementAllUser", "ExpMfdDateInMR", "RRIncTaxDefault",
    "RRSerChrgDefault", "ServiceTaxOnServiceChargeYN",
    "ItemRateInPurchaseBillBasedOn",
    "Rate1", "Rate2", "Rate3", "Rate4", "Rate5",
)
# Ye VB6 update karta hai par GL-integrity ke liye guarded rehte hain.
GUARDED_AC = ("AdvanceRRoomRent", "AmendRevenue")


class FakeDB:
    def __init__(self):
        self.executes = []
        self.queries = []
        self.commits = 0

    def query(self, sql, params=(), cn=None):
        self.queries.append((" ".join(sql.split()), tuple(params)))
        return []

    def execute(self, sql, params=(), cn=None, commit=True):
        self.executes.append((" ".join(sql.split()), tuple(params)))
        return 1

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
    monkeypatch.setattr(dbmod, "connect", f.connect)
    return f


def test_editable_and_readonly_do_not_overlap():
    """Module invariant: koi col EDITABLE + READ_ONLY dono nahi."""
    from HMS_py.core import enviro
    assert not (set(enviro.EDITABLE) & set(enviro.READ_ONLY))


def test_new_operational_columns_are_editable():
    from HMS_py.core import enviro
    missing = [c for c in NEW_OPERATIONAL if c not in enviro.EDITABLE]
    assert missing == []


def test_gl_ac_columns_stay_read_only():
    """GL integrity: A/C-code cols EDITABLE nahi hone chahiye."""
    from HMS_py.core import enviro
    for col in GUARDED_AC:
        assert col in enviro.READ_ONLY, col
        assert col not in enviro.EDITABLE, col


def test_update_settings_writes_new_columns(fake):
    from HMS_py.core import enviro
    enviro.update_settings({"Rate1": "High Rate", "RRIncTaxDefault": "No",
                            "AutoSplitYN": "Y", "PrintRcpt": "Yes"})
    sql, params = fake.executes[-1]
    for col in ("Rate1", "RRIncTaxDefault", "AutoSplitYN", "PrintRcpt"):
        assert f"[{col}] = ?" in sql, col
    assert "UPDATE Enviro SET" in sql
    assert params[-1] == enviro.SITE_CODE


def test_new_yn_columns_validate(fake):
    from HMS_py.core import enviro
    with pytest.raises(ValueError, match="Yes.*No"):
        enviro.update_settings({"RRSerChrgDefault": "maybe"})
    with pytest.raises(ValueError, match="Y.*N"):
        enviro.update_settings({"AutoSplitYN": "Yes"})
    # normalise
    enviro.update_settings({"AutoSplitYN": "y"})
    assert fake.executes[-1][1][0] == "Y"


def test_guarded_column_is_rejected_by_writer(fake):
    from HMS_py.core import enviro
    with pytest.raises(ValueError, match="editable nahi hai"):
        enviro.update_settings({"AdvanceRRoomRent": "KK000002"})


def test_ui_flag_map_exposes_new_columns():
    """UI se save par silent-drop na ho: flag_map me keys honi chahiye.

    (Source-level guard — ParameterTab ka flag_map ek method-local dict hai,
    isliye file text check karte hain.)
    """
    from HMS_py.ui import general_setup_tabs_ui as tabs
    src = pathlib.Path(tabs.__file__)
    text = src.read_text(encoding="utf-8", errors="replace")
    for col in NEW_OPERATIONAL:
        assert f'"{col}"' in text, f"{col} UI flag_map/type-map me nahi hai"
