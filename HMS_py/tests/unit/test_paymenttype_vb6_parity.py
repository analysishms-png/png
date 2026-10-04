"""VB6 FrmPayTypeMast parity tests (Main Setup -> General Setup -> Payment Type).

File-by-file pass 2026-10-01 (FILE 3). DB ko monkeypatch karke pure SQL-contract
verify karte hain (live DB par write nahi):

  site filter      : (LogSite_Code=? OR 'HO') - VB6 Form_Load/Search/Print
  code-gen         : ISNULL(...,1)+1 (TaxMast ka 0 NAHI) - loc_15468EB
  dup Name         : site-scoped; add msg "Duplicate  Name" (2 spaces!),
                     edit msg "Duplicate Name" + And Name <> old - Proc_17_55
  dup ShortName    : NO site filter - Proc_17_54 (legacy asymmetry)
  required         : "Name is a required field." / "Ledger A/C is a required
                     field." (Company/Staff/Member exempt) - loc_154682A
  INSERT/UPDATE    : VB6 column-set (Active nahi, SysYN='N', TYPE='Dr')
  delete chain     : SysYN -> PayCharge dep -> RevMast+DepartPay txn
  print            : PayTypeMast.RPT query contract + text-preview fallback
"""
import os
import sys

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

pytestmark = pytest.mark.unit


class FakeDB:
    """Routes db.query SQL calls to canned answers, records executes."""

    def __init__(self):
        self.queries = []
        self.executes = []
        self.absent_calls = []
        self.next_code = 1009
        self.dup_name = 0
        self.dup_short = 0
        self.old_name = "Old Pay"
        self.sysyn = "N"
        self.paycharge_count = 0

    def query(self, sql, params=(), cn=None):
        self.queries.append((" ".join(sql.split()), tuple(params)))
        s = " ".join(sql.split())
        if "SUBSTRING(Code,3,4)" in s:
            return [(self.next_code,)]
        if s.startswith("SELECT SysYN FROM RevMast"):
            return [(self.sysyn,)]
        if "COUNT(*) FROM PayCharge" in s:
            return [(self.paycharge_count,)]
        if s.startswith("SELECT Name FROM RevMast"):
            return [(self.old_name,)]
        if "COUNT(*) FROM RevMast" in s:
            if "AND Name = ?" in s:
                return [(self.dup_name,)]
            if "ShortName = ?" in s:
                return [(self.dup_short,)]
            return [(0,)]
        return []

    def execute(self, sql, params=(), cn=None, commit=True):
        self.executes.append((" ".join(sql.split()), tuple(params)))
        return 1

    def require_absent(self, table, pk_col, pk_val, label="Code", cn=None):
        self.absent_calls.append((table, pk_col, pk_val, label))

    def connect(self):
        class _CN:
            def commit(self): pass
            def rollback(self): pass
            def close(self): pass
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


def _rec(**kw):
    rec = {"code": "", "name": "Room Charge", "short": "RCH",
           "accode": "KK000005", "paytype": "Room",
           "bankcommper": "0", "bankcommac": "", "accposting": "Detailed"}
    rec.update(kw)
    return rec


# ---------------------------------------------------------------- next_code
def test_next_code_uses_vb6_default_1_not_taxmast_0(fake):
    """LEGACY BEHAVIOR: FrmPayTypeMast loc_15468EB IsNull(...,1)+1 - TaxMast
    ke 0 se alag; empty table par pehla code site-prefix + 0002."""
    from HMS_py.core import paymenttype
    fake.next_code = 1009
    code = paymenttype.next_code()
    assert code == f"{paymenttype.SITE_CODE[:2]}1009"
    sql, params = fake.queries[-1]
    assert "SUBSTRING(Code,3,4)" in sql
    assert ",1)+1" in sql and ",0)+1" not in sql
    assert "SITE_CODE = ?" in sql and "SysYN <> 'Y'" in sql
    assert params == (paymenttype.SITE_CODE,)


# --------------------------------------------------------------- site filter
def test_list_all_has_vb6_site_filter(fake):
    from HMS_py.core import paymenttype
    paymenttype.list_all()
    sql, params = fake.queries[-1]
    assert "LogSite_Code = ?" in sql and "'HO'" in sql
    assert "PAYTYPE IS NOT NULL" in sql and "PAYTYPE != ''" in sql
    assert params == (paymenttype.SITE_CODE,)


def test_get_and_exists_are_site_scoped(fake):
    from HMS_py.core import paymenttype
    paymenttype.get("KKCASH")
    sql, params = fake.queries[-1]
    assert "LogSite_Code = ?" in sql and "PAYTYPE != ''" in sql
    assert params[0] == "KKCASH" and paymenttype.SITE_CODE in params
    paymenttype.exists("KKCASH")
    sql, params = fake.queries[-1]
    assert "LogSite_Code = ?" in sql


# ------------------------------------------------------------------ insert
def test_insert_autogenerates_code_when_empty(fake):
    from HMS_py.core import paymenttype
    fake.next_code = 1009
    paymenttype.insert(_rec(code="", name="Auto Pay"))
    sql, params = fake.executes[-1]
    assert params[0] == f"{paymenttype.SITE_CODE[:2]}1009"
    assert "INSERT INTO RevMast" in sql
    # VB6 insert constants (loc_1546BC5): SysYN='N', FieldType='P', TYPE='Dr'
    # + Active column VB6 set NAHI karta (legacy - DB default '').
    assert "'N', 'P'" in sql and "'A', 'Dr'" in sql
    assert "Active" not in sql


def test_insert_matches_vb6_column_set(fake):
    """VB6 columns: Code,Name,ShortName,ACCode,PayType,Site_Code,SysYN,
    FieldType,U_Name,U_EntDt,U_AE,TYPE,BankCommPer,BankCommAc,ACPosting,
    LogSite_Code."""
    from HMS_py.core import paymenttype
    paymenttype.insert(_rec(code="KYP0001"))
    sql, params = fake.executes[-1]
    for col in ("ShortName", "ACCode", "PAYTYPE", "Site_Code", "SysYN",
                "FieldType", "U_Name", "U_EntDt", "U_AE", "Type",
                "BankCommPer", "BankCommAc", "ACPosting", "LogSite_Code"):
        assert col in sql, col
    assert params[-1] == paymenttype.SITE_CODE  # LogSite_Code
    assert params[-5] == paymenttype.USER       # U_Name


def test_insert_duplicate_name_blocked_with_vb6_two_space_message(fake):
    """VB6 add-par message me 2 spaces hain (loc_10B6455 'Duplicate  Name')."""
    from HMS_py.core import paymenttype
    fake.dup_name = 1
    with pytest.raises(ValueError, match=r"Duplicate  Name"):
        paymenttype.insert(_rec(name="CASH"))
    assert not fake.executes


def test_insert_duplicate_short_blocked(fake):
    from HMS_py.core import paymenttype
    fake.dup_name = 0
    fake.dup_short = 2
    with pytest.raises(ValueError, match="Duplicate Short Name"):
        paymenttype.insert(_rec(short="CSH"))
    assert not fake.executes


def test_name_dup_check_is_site_scoped_but_short_is_not(fake):
    """LEGACY ASYMMETRY: Proc_17_55 (Name) me site filter hai, Proc_17_54
    (ShortName) me NAHI - literal SQL parity preserve karo."""
    from HMS_py.core import paymenttype
    paymenttype.insert(_rec(name="Unique Pay", short="UQP"))
    name_sql = next(s for s, _ in fake.queries
                    if "COUNT(*) FROM RevMast" in s and "Name = ?" in s)
    short_sql = next(s for s, _ in fake.queries
                     if "ShortName = ?" in s)
    assert "LogSite_Code = ?" in name_sql
    assert "LogSite_Code" not in short_sql
    # koi bhi check me PayType/FieldType filter nahi (revmast-wide)
    assert "PAYTYPE" not in name_sql and "FieldType" not in name_sql


# ------------------------------------------------------- required / rules
def test_name_required_vb6_message(fake):
    from HMS_py.core import paymenttype
    with pytest.raises(ValueError, match="Name is a required field"):
        paymenttype.insert(_rec(name="   "))
    assert not fake.executes


def test_ledger_required_for_normal_paytype(fake):
    from HMS_py.core import paymenttype
    with pytest.raises(ValueError, match="Ledger A/C is a required field"):
        paymenttype.insert(_rec(paytype="Cash", accode=""))
    assert not fake.executes


def test_ledger_exempt_for_company_staff_member(fake):
    """VB6 loc_154682A: Company/Staff/Member ko Ledger A/C ki zaroorat nahi."""
    from HMS_py.core import paymenttype
    paymenttype.insert(_rec(code="KYPMEM1", paytype="Member", accode=""))
    sql, params = fake.executes[-1]
    assert params[0] == "KYPMEM1"


def test_exempt_paytype_clears_ledger_like_vb6(fake):
    from HMS_py.core import paymenttype
    paymenttype.insert(_rec(code="KYPSTF1", paytype="Staff",
                            accode="KK000005"))
    sql, params = fake.executes[-1]
    # ACCode param (index 3) -> empty string (VB6 Else-branch clears textbox)
    assert params[3] == ""


def test_bank_commission_only_for_credit_card(fake):
    """VB6 IIf((PayType='Credit Card'), value, 0/'') - non-card paytypes ka
    commission save hi nahi hota (loc_1546C46)."""
    from HMS_py.core import paymenttype
    paymenttype.insert(_rec(code="KYPCRD1", paytype="Credit Card",
                            bankcommper="2.5", bankcommac="KK000007"))
    _, params = fake.executes[-1]
    assert params[-4] == 2.5 and params[-3] == "KK000007"

    fake.executes.clear()
    paymenttype.insert(_rec(code="KYPCSH1", paytype="Cash",
                            bankcommper="2.5", bankcommac="KK000007"))
    _, params = fake.executes[-1]
    assert params[-4] == 0 and params[-3] == ""


# ------------------------------------------------------------------ update
def test_update_duplicate_name_excludes_old_name_not_code(fake):
    """VB6 Proc_17_55 edit: And Name <> '<global_100>' (old NAME), Code
    se NAHI (taxmaster se alag)."""
    from HMS_py.core import paymenttype
    fake.dup_name = 1
    with pytest.raises(ValueError, match="Duplicate Name"):
        paymenttype.update("KKCASH", _rec(name="Some Other Pay"))
    dup_sql, dup_params = next((s, p) for s, p in fake.queries
                               if "COUNT(*) FROM RevMast" in s
                               and "Name = ?" in s)
    assert "AND Name <> ?" in dup_sql
    assert "Old Pay" in dup_params and "KKCASH" not in dup_params


def test_update_duplicate_short_excludes_code(fake):
    from HMS_py.core import paymenttype
    fake.dup_name = 0
    fake.dup_short = 1
    with pytest.raises(ValueError, match="Duplicate Short Name"):
        paymenttype.update("KKCASH", _rec(short="XYZ"))
    dup_sql, dup_params = next((s, p) for s, p in fake.queries
                               if "ShortName = ?" in s)
    assert "AND Code <> ?" in dup_sql and "KKCASH" in dup_params


def test_update_sets_vb6_audit_columns(fake):
    """VB6 UPDATE (loc_1546ED5): Site_Code + TYPE='Dr' + FieldType='P' +
    U_AE='E'; Active/SysYN touch nahi hote."""
    from HMS_py.core import paymenttype
    paymenttype.update("KKCASH", _rec(name="Renamed Pay"))
    sql, params = fake.executes[-1]
    assert "Type = 'Dr'" in sql and "FieldType = 'P'" in sql
    assert "Site_Code = ?" in sql and "U_AE = 'E'" in sql
    assert "Active" not in sql and "SysYN" not in sql
    assert params[-1] == "KKCASH"
    assert params[-2] == paymenttype.SITE_CODE or \
        paymenttype.SITE_CODE in params
    assert paymenttype.USER in params


# ------------------------------------------------------------------ delete
def test_delete_blocked_for_system_entry(fake):
    from HMS_py.core import paymenttype
    fake.sysyn = "Y"
    with pytest.raises(ValueError, match="SYSTEM ENTRY CAN'T BE DELETED"):
        paymenttype.delete("KKCGSP")
    assert not fake.executes


def test_delete_blocked_when_paycharge_references_exist(fake):
    """VB6 MainLib Proc_6_108, display 'Payment Entry' (loc_1291A0E)."""
    from HMS_py.core import paymenttype
    fake.sysyn = "N"
    fake.paycharge_count = 4
    with pytest.raises(
            ValueError, match="Related Record Exist in Payment Entry"):
        paymenttype.delete("KKCASH")
    assert not fake.executes


def test_delete_happy_path_removes_revmast_and_departpay(fake):
    """VB6 txn (loc_1291B17 + loc_1291C6A): RevMast (WHERE Code only) +
       DepartPay WHERE PayCode (no site filter)."""
    from HMS_py.core import paymenttype
    fake.sysyn = "N"
    fake.paycharge_count = 0
    assert paymenttype.delete("KKCASH") == 1
    sqls = [s for s, _ in fake.executes]
    assert any(s.startswith("DELETE FROM RevMast WHERE Code = ?")
               for s in sqls)
    assert any(s.startswith("DELETE FROM DepartPay WHERE PayCode = ?")
               for s in sqls)
    # VB6 delete me koi site/PayType filter nahi
    rev = next(s for s in sqls if s.startswith("DELETE FROM RevMast"))
    assert "LogSite" not in rev and "PAYTYPE" not in rev


# ------------------------------------------------------------------ print
def test_print_rows_matches_vb6_print_sql(fake):
    """VB6 loc_108C8BB: PayTypeMast.RPT query - SubGroup join + site filter
    + PayType filter. Title='Pay Type Master'."""
    from HMS_py.core import paymenttype
    paymenttype.print_rows()
    sql, params = fake.queries[-1]
    assert "LEFT JOIN SubGroup S ON S.SubCode = R.ACCode" in sql
    assert "R.LogSite_Code = ?" in sql and "'HO'" in sql
    assert "R.PAYTYPE != ''" in sql
    assert "ORDER BY R.Name" in sql  # Form_Load recordset se align
    assert params == (paymenttype.SITE_CODE,)


# ------------------------------------------------------------------ UI config
def test_ui_config_vb6_field_set():
    """UI fields VB6 Txt array se: no Category/IsDefault (VB6 me hai hi
    nahi), generated_pk + print_fn wired."""
    from HMS_py.ui.finance_masters_ui import paymenttype_config
    cfg = paymenttype_config()
    names = [f.name for f in cfg.fields]
    assert "category" not in names and "isdefault" not in names
    for expected in ("code", "name", "short", "accode", "paytype",
                     "bankcommper", "bankcommac", "accposting"):
        assert expected in names, expected
    assert cfg.generated_pk is True
    assert cfg.print_fn is not None
    col_keys = [k for _, k in cfg.columns]
    assert "category" not in col_keys and "isdefault" not in col_keys
