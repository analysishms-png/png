"""AUDIT-20261005 P2-K (Batch C) — Charge Master = VB6 `FrmChargeMast`.

Wrong-target guard: VB6 MDIForm1.frm:7256 (`var_CA = 7`) opens FrmChargeMast
(RevMast FieldType='C'); :7264 (`var_CA = 8`) opens frmFixedChargeMast.
Python ka "Charge Master" leaf pehle FixedCharge khol raha tha.

SQL contract (FODER/FrmChargeMast.frm):
  load   loc_10D4110 : FlagType='FOM' AND FieldType='C' + (site OR 'HO')
  insert loc_14B2E61 : 24-col INSERT, SysYN='N', AppMode='Percent',
                       FlagType='FOM', FlagAMR='Detail', DeskCode=site+'FOM'
  update loc_14B3242 : 18-col UPDATE ... FieldType='C'
  delete loc_1228B8F : Delete From RevMast Where Code
"""
import os

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

pytestmark = pytest.mark.unit


class FakeDB:
    def __init__(self):
        self.queries = []
        self.executes = []
        self.absent_calls = []

    def query(self, sql, params=(), cn=None):
        self.queries.append((" ".join(sql.split()), tuple(params)))
        return []

    def execute(self, sql, params=(), cn=None, commit=True):
        self.executes.append((" ".join(sql.split()), tuple(params)))
        return 1

    def require_absent(self, table, pk_col, pk_val, label="Code", cn=None):
        self.absent_calls.append((table, pk_col, pk_val, label))


@pytest.fixture
def fake(monkeypatch):
    from HMS_py.core import db as dbmod
    f = FakeDB()
    monkeypatch.setattr(dbmod, "query", f.query)
    monkeypatch.setattr(dbmod, "execute", f.execute)
    monkeypatch.setattr(dbmod, "require_absent", f.require_absent)
    return f


def _rec(**kw):
    rec = {"code": "KK0001", "name": "Laundry", "short": "LDR",
           "accode": "KK000005", "taxstru": "GST", "salerate": "50",
           "cost": "10", "type": "Cr", "acposting": "Detailed",
           "nature": "Service", "active": "Y", "taxinc": "Yes",
           "hsncode": "9987"}
    rec.update(kw)
    return rec


# ------------------------------------------------------------------ SQL contract
def test_insert_matches_vb6_24_column_set(fake):
    from HMS_py.core import chargemaster
    chargemaster.insert(_rec())
    sql, params = fake.executes[-1]
    for col in ("Code", "Name", "ShortName", "ACCode", "TaxStru", "SaleRate",
                "Cost", "Site_Code", "SysYN", "Type", "AppMode", "FlagType",
                "FlagAMR", "DeskCode", "U_Name", "U_EntDt", "U_AE",
                "FieldType", "LogSite_Code", "ACPosting", "Nature", "Active",
                "TaxInc", "HSNCode"):
        assert col in sql, col
    # VB6 literals
    assert "'N', ?, 'Percent', 'FOM', 'Detail'" in sql
    assert "'A', 'C'" in sql
    assert params[6] == 10.0            # Cost
    assert params[7] == chargemaster.SITE_CODE
    assert params[8] == "Cr"            # Type
    assert params[9] == chargemaster.DESK_CODE[:6]


def test_insert_autogenerates_code(fake):
    from HMS_py.core import chargemaster
    chargemaster.insert(_rec(code=""))
    sql, params = fake.executes[-1]
    assert params[0].startswith(chargemaster.SITE_CODE[:2])
    gen = next(s for s, _ in fake.queries if "SUBSTRING(Code,3,4)" in s)
    # VB6 loc_14B2B46: IsNull(Max(...),1)+1 (default 1, TaxMast ka 0 NAHI)
    assert "ISNULL(MAX(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1" in gen
    assert "IsNumeric" in gen


def test_update_matches_vb6_18_column_set(fake):
    from HMS_py.core import chargemaster
    chargemaster.update("KK0001", _rec(name="Laundry 2"))
    sql, params = fake.executes[-1]
    for col in ("Active = ?", "TaxInc = ?", "Name = ?", "ShortName = ?",
                "ACCode = ?", "ACPosting = ?", "Nature = ?", "TaxStru = ?",
                "SaleRate = ?", "Cost = ?", "Type = ?", "AppMode = ?",
                "HSNCode = ?", "SITE_CODE = ?", "U_name = ?",
                "U_EntDt = getdate()", "U_AE = 'E'", "FieldType = 'C'"):
        assert col in sql, col
    assert "WHERE Code = ?" in sql
    assert params[-1] == "KK0001"


def test_list_all_has_vb6_fom_filter(fake):
    from HMS_py.core import chargemaster
    chargemaster.list_all()
    sql, params = fake.queries[-1]
    assert "ISNULL(FlagType, '') = 'FOM'" in sql
    assert "ISNULL(FieldType, '') = 'C'" in sql
    assert "LogSite_Code = ?" in sql and "'HO'" in sql
    assert params == (chargemaster.SITE_CODE,)


def test_delete_removes_revmast(fake):
    from HMS_py.core import chargemaster
    chargemaster.delete("KK0001")
    sql, params = fake.executes[-1]
    assert sql == "DELETE FROM RevMast WHERE Code = ?"
    assert params == ("KK0001",)


# ------------------------------------------------------------------- routing
def test_charge_master_leaf_opens_chargemaster(monkeypatch):
    """VB6 MDIForm1.frm:7256 var_CA=7 -> FrmChargeMast (charge master)."""
    from HMS_py.ui import p2_masters, shell
    calls = []
    monkeypatch.setattr(p2_masters, "open_chargemaster",
                        lambda parent=None: calls.append(parent) or "charge")
    monkeypatch.setattr(p2_masters, "open_fixcharge",
                        lambda parent=None: calls.append("WRONG") or "fixed")
    parent = object()
    assert shell._form_registry()["Charge Master"](parent) == "charge"
    assert calls == [parent]


def test_fixed_charge_leaf_still_opens_fixcharge(monkeypatch):
    """VB6 MDIForm1.frm:7264 var_CA=8 -> frmFixedChargeMast (separate)."""
    from HMS_py.ui import p2_masters, shell
    calls = []
    monkeypatch.setattr(p2_masters, "open_fixcharge",
                        lambda parent=None: calls.append(parent) or "fixed")
    parent = object()
    assert shell._form_registry()["Fixed Charge"](parent) == "fixed"
    assert calls == [parent]


def test_chargemaster_config_exposes_vb6_fields():
    from HMS_py.ui.p2_masters import chargemaster_config
    names = {f.name for f in chargemaster_config().fields}
    for expected in ("code", "name", "short", "accode", "taxstru", "salerate",
                     "cost", "type", "acposting", "nature", "active",
                     "taxinc", "hsncode"):
        assert expected in names, expected
