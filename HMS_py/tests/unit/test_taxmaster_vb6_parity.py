"""VB6 FrmTaxMast parity tests (Main Setup -> General Setup -> Tax Master).

File-by-file pass 2026-10-01. DB ko monkeypatch karke pure SQL-contract
verify karte hain (live DB par write nahi):

  BUG-MS-002: site filter (LogSite_Code=? OR 'HO') - VB6 har SELECT me
  BUG-MS-003: duplicate Name / ShortName check - VB6 Proc_15_34/15_35
  BUG-MS-004: TaxStru dependency check before delete - MainLib Proc_6_108
  BUG-MS-005: auto code-gen (site prefix + max+1) - VB6 loc_136F270
  BUG-MS-006: UPDATE me Type='Cr' + Site_Code - VB6 loc_136F5CB
  BUG-MS-007: Print (TaxMast.RPT) - text-preview fallback + print contract
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
        self.next_code = 1008
        self.dup = {"Name": 0, "ShortName": 0}
        self.taxstru_count = 0
        self.sysyn = "N"

    def query(self, sql, params=(), cn=None):
        self.queries.append((" ".join(sql.split()), tuple(params)))
        s = " ".join(sql.split())
        if "SUBSTRING(Code,3,4)" in s:
            return [(self.next_code,)]
        if "COUNT(*) FROM TaxStru" in s:
            return [(self.taxstru_count,)]
        if s.startswith("SELECT SysYN FROM RevMast"):
            return [(self.sysyn,)]
        if "COUNT(*) FROM RevMast" in s:
            if "AND Name = ?" in s:
                return [(self.dup["Name"],)]
            if "AND ShortName = ?" in s:
                return [(self.dup["ShortName"],)]
            return [(0,)]
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
    rec = {"code": "", "name": "Test Tax", "short": "TT", "accode": "KK000005",
           "payableac": "", "unregisteredac": "", "sundry": "", "roundoff": "No",
           "nature": "", "active": "Y", "taxstru": ""}
    rec.update(kw)
    return rec


# ---------------------------------------------------------------- next_code
def test_next_code_matches_vb6_sql(fake):
    from HMS_py.core import taxmaster
    fake.next_code = 1008
    code = taxmaster.next_code()
    assert code == f"{taxmaster.SITE_CODE[:2]}1008"
    sql, params = fake.queries[-1]
    # VB6 loc_136F270: Max(CAST(SUBSTRING(Code,3,4) AS INT)),0)+1
    #                  WHERE SITE_CODE='<site>' AND SYSYN<>'Y'
    assert "SUBSTRING(Code,3,4)" in sql
    assert "SITE_CODE = ?" in sql
    assert "SYSYN <> 'Y'" in sql
    assert params == (taxmaster.SITE_CODE,)


# --------------------------------------------------------------- site filter
def test_list_all_has_vb6_site_filter(fake):
    from HMS_py.core import taxmaster
    taxmaster.list_all()
    sql, params = fake.queries[-1]
    assert "LogSite_Code = ?" in sql and "'HO'" in sql
    assert "FieldType = ?" in sql
    assert params == ("T", taxmaster.SITE_CODE)


def test_get_and_exists_are_site_scoped(fake):
    from HMS_py.core import taxmaster
    taxmaster.get("KK0001")
    sql, params = fake.queries[-1]
    assert "LogSite_Code = ?" in sql
    assert params[0] == "KK0001" and taxmaster.SITE_CODE in params
    taxmaster.exists("KK0001")
    sql, params = fake.queries[-1]
    assert "LogSite_Code = ?" in sql


# ------------------------------------------------------------------ insert
def test_insert_autogenerates_code_when_empty(fake):
    from HMS_py.core import taxmaster
    fake.next_code = 1008
    taxmaster.insert(_rec(code="", name="Auto Tax"))
    sql, params = fake.executes[-1]
    assert params[0] == f"{taxmaster.SITE_CODE[:2]}1008"
    assert "INSERT INTO RevMast" in sql
    # VB6 insert constants: FieldType='T', Type='Cr', SysYN='N'
    assert "'T', 'Cr', 'N'" in sql


def test_insert_duplicate_name_blocked(fake):
    from HMS_py.core import taxmaster
    fake.dup["Name"] = 1
    with pytest.raises(ValueError, match="Duplicate Name"):
        taxmaster.insert(_rec(name="CGST (SALES)"))
    assert not fake.executes


def test_insert_duplicate_short_blocked(fake):
    from HMS_py.core import taxmaster
    fake.dup["ShortName"] = 2
    with pytest.raises(ValueError, match="Duplicate Short Name"):
        taxmaster.insert(_rec(short="CGSS"))
    assert not fake.executes


def test_duplicate_check_has_no_fieldtype_filter_like_vb6(fake):
    """LEGACY BEHAVIOR: VB6 Proc_15_34 RevMast ke SAARE rows count karta hai
    (koi FieldType='T' filter nahi) - literal SQL parity."""
    from HMS_py.core import taxmaster
    taxmaster.insert(_rec(name="Unique", short="UQ"))
    dup_sql = next(s for s, _ in fake.queries
                   if "COUNT(*) FROM RevMast" in s)
    assert "FieldType" not in dup_sql


# ------------------------------------------------------------------ update
def test_update_duplicate_excludes_current_code(fake):
    from HMS_py.core import taxmaster
    fake.dup["Name"] = 1
    with pytest.raises(ValueError, match="Duplicate Name"):
        taxmaster.update("KK0001", _rec(name="Some Other Tax"))
    dup_sql, dup_params = next((s, p) for s, p in fake.queries
                               if "COUNT(*) FROM RevMast" in s)
    assert "AND Code <> ?" in dup_sql and "KK0001" in dup_params


def test_update_sets_type_cr_and_site_code(fake):
    from HMS_py.core import taxmaster
    taxmaster.update("KK0001", _rec(name="Renamed"))
    sql, params = fake.executes[-1]
    assert "Type = 'Cr'" in sql
    assert "Site_Code = ?" in sql
    # trailing params: Site_Code, USER, code, FieldType
    assert params[-4] == taxmaster.SITE_CODE
    assert params[-3] == taxmaster.USER
    assert params[-2] == "KK0001" and params[-1] == "T"


# ------------------------------------------------------------------ delete
def test_delete_blocked_when_taxstru_references_exist(fake):
    from HMS_py.core import taxmaster
    fake.taxstru_count = 3
    with pytest.raises(ValueError, match="Related Record Exist in TaxStru"):
        taxmaster.delete("KK0001")
    assert not fake.executes


def test_delete_blocked_for_system_entry(fake):
    from HMS_py.core import taxmaster
    fake.taxstru_count = 0
    fake.sysyn = "Y"
    with pytest.raises(ValueError, match="SYSTEM ENTRY CAN'T BE DELETED"):
        taxmaster.delete("KKCGSP")
    assert not fake.executes


def test_delete_happy_path(fake):
    from HMS_py.core import taxmaster
    fake.taxstru_count = 0
    fake.sysyn = "N"
    assert taxmaster.delete("KK0007") == 1
    sql, params = fake.executes[-1]
    assert sql.startswith("DELETE FROM RevMast") and params == ("KK0007", "T")


# ------------------------------------------------------------------- print
def test_print_rows_matches_vb6_print_sql(fake):
    from HMS_py.core import taxmaster
    taxmaster.print_rows()
    sql, params = fake.queries[-1]
    # VB6 loc_1085B77: RevMast R + SubGroup(ACCode/PayableAc/UnregisteredAc)
    #                  + SundryMast join, FieldType='T', site filter
    assert "LEFT JOIN SubGroup S ON S.SubCode = R.ACCode" in sql
    assert "LEFT JOIN SubGroup SP ON SP.SubCode = R.PayableAc" in sql
    assert "LEFT JOIN SubGroup SU ON SU.SubCode = R.UnregisteredAc" in sql
    assert "LEFT JOIN SundryMast SM ON SM.Code = R.Sundry" in sql
    assert "R.FieldType = ?" in sql and "R.LogSite_Code = ?" in sql
    assert params == ("T", taxmaster.SITE_CODE)


# --------------------------------------------------------------- UI config
def test_taxmaster_config_vb6_parity():
    from HMS_py.ui.finance_masters_ui import taxmaster_config
    cfg = taxmaster_config()
    assert cfg.generated_pk is True          # VB6 me code Txt box hi nahi
    assert callable(cfg.print_fn)            # VB6 TopCtrl Print button
    code_field = next(f for f in cfg.fields if f.name == "code")
    assert code_field.required is False      # auto-gen -> required nahi
    name_field = next(f for f in cfg.fields if f.name == "name")
    assert name_field.required is True       # VB6 save: 'Tax Name' required


# ---------------------------------------------- VB6 Form_Load recordset joins
def test_list_all_select_joins_match_vb6_form_load(fake):
    """VB6 loc_10A8006: R.* + LedgerCode/LedgerName + PayableAcCode/Name +
    UnregisteredAcCode/Name + SundryCode/Name, 4 LEFT JOINs."""
    from HMS_py.core import taxmaster
    taxmaster.list_all()
    sql, _ = fake.queries[-1]
    assert "LEFT JOIN SundryMast" in sql
    assert "LEFT JOIN SubGroup SG ON SG.SubCode = R.ACCode" in sql
    assert "LEFT JOIN SubGroup SP ON SP.SubCode = R.PayableAc" in sql
    assert "LEFT JOIN SubGroup SU ON SU.SubCode = R.UnregisteredAc" in sql
    for alias in ("AS LedgerName", "AS PayableAcName", "AS UnregisteredAcName",
                  "AS SundryName"):
        assert alias in sql


def test_list_all_select_carries_vb6_audit_columns(fake):
    """VB6 Proc_15_33: 'Select U_Name,U_AE,U_EntDt From revmast ...' -
    LblUser/LblLDt captions isi se bante hain."""
    from HMS_py.core import taxmaster
    taxmaster.list_all()
    sql, _ = fake.queries[-1]
    for col in ("AS U_Name", "AS U_AE", "R.U_EntDt"):
        assert col in sql


def test_map_exposes_ledger_names_and_audit_for_ui(fake):
    from HMS_py.core import taxmaster
    row = ("KK0001", "CGST", "CG", "KK001001", "", "", "S1", "No", "",
           "Y", "", "N", "GST NAME", "LEDGER NAME", "", "", "SA", "A",
           "14/03/2019")
    rec = taxmaster._map(row)
    assert rec["ledgername"] == "LEDGER NAME"
    assert rec["sundryname"] == "GST NAME"
    assert rec["u_name"] == "SA" and rec["u_ae"] == "A"
    assert rec["u_entdt"] == "14/03/2019"
    assert rec["payableacname"] == "" and rec["unregisteredacname"] == ""


# ------------------------------------------------ VB6 lookup rows (DataGrids)
def test_ledger_list_matches_vb6_dglgedgerac_row_source(fake):
    """VB6 loc_10A98B9: Select S.SubCode as Code, S.Name FROM SubGroup S
    WHERE S.ActiveYN=1 And (site or 'HO') ORDER BY S.Name"""
    from HMS_py.core import taxmaster
    taxmaster.ledger_list()
    sql, params = fake.queries[-1]
    assert "S.SubCode AS Code" in sql and "FROM SubGroup S" in sql
    assert "S.ActiveYN = 1" in sql
    assert "S.LogSite_Code = ?" in sql and "'HO'" in sql
    assert "ORDER BY S.Name" in sql
    assert params == (taxmaster.SITE_CODE,)


def test_sundry_list_matches_vb6_dgsundry_row_source(fake):
    """VB6 loc_10A9934: SELECT Code,Name FROM SundryMast (site) ORDER BY Name"""
    from HMS_py.core import taxmaster
    taxmaster.sundry_list()
    sql, params = fake.queries[-1]
    assert "FROM SundryMast" in sql and "LogSite_Code = ?" in sql
    assert "ORDER BY Name" in sql
    assert params == (taxmaster.SITE_CODE,)


def test_tax_list_matches_vb6_dghelp_row_source(fake):
    """VB6 loc_10A7EB7: SELECT Code,Name FROM REVMAST WHERE FIELDTYPE='T'
    AND (LOGSITE_CODE=<site> or 'HO') ORDER BY Name"""
    from HMS_py.core import taxmaster
    taxmaster.tax_list()
    sql, params = fake.queries[-1]
    assert "FROM RevMast" in sql and "FieldType = ?" in sql
    assert "LogSite_Code = ?" in sql and "'HO'" in sql
    assert params == ("T", taxmaster.SITE_CODE)


# ----------------------------------- VB6 Txt_Validate duplicate check (15_34/35)
def test_dup_field_error_returns_vb6_messages(fake):
    from HMS_py.core import taxmaster
    fake.dup["Name"] = 1
    assert taxmaster.dup_field_error("Name", "CGST (PURCHASE)") == \
        "Duplicate Name"
    fake.dup["Name"] = 0
    assert taxmaster.dup_field_error("Name", "Something New") is None
    # blank value - VB6 validate me hi exit ho jaata tha
    assert taxmaster.dup_field_error("Name", "   ") is None
    fake.dup["ShortName"] = 2
    assert taxmaster.dup_field_error("ShortName", "CGSS") == \
        "Duplicate Short Name"
    with pytest.raises(ValueError, match="unsupported duplicate column"):
        taxmaster.dup_field_error("ShortNameX", "Y")


# ------------------------------------------------------- VB6 config contract
def test_taxmaster_config_field_order_and_maxlen_match_vb6_txt_array():
    """VB6 Txt array order (layout Top se): 0 Tax Name (MaxLength=25),
    2 Short Name, 3 Round Off (Visible=0), 4 Sundry Name, 1 Ledger A/C,
    5 Payable A/C, 6 Unregistered A/C."""
    from HMS_py.ui.finance_masters_ui import taxmaster_config
    cfg = taxmaster_config()
    order = [f.name for f in cfg.fields]
    assert order[:9] == ["code", "name", "short", "sundry", "accode",
                         "payableac", "unregisteredac", "nature", "active"]
    by_name = {f.name: f for f in cfg.fields}
    assert by_name["name"].max_len == 25      # VB6 Txt(0).MaxLength = 25
    assert by_name["short"].required is True
    assert by_name["accode"].required is True
    # VB6 Txt(3) + LblLedgerAc 1/3 -> Visible=0, value phir bhi save
    assert by_name["roundoff"].hidden is True
    assert by_name["roundoff"].default == "No"


def test_taxmaster_config_lookup_fields_match_vb6_tag_pattern():
    """VB6: textbox par NAAM (ledgername/sundryname...), .Tag me CODE."""
    from HMS_py.ui.finance_masters_ui import taxmaster_config
    cfg = taxmaster_config()
    by_name = {f.name: f for f in cfg.fields}
    expected = {"sundry": "sundryname", "accode": "ledgername",
                "payableac": "payableacname",
                "unregisteredac": "unregisteredacname"}
    for field_name, display_key in expected.items():
        assert by_name[field_name].lookup is not None, field_name
        assert by_name[field_name].display_key == display_key, field_name
    assert by_name["name"].lookup is None


def test_taxmaster_config_purchase_notes_match_vb6_lblledgerac():
    """VB6 LblLedgerAc Index 7/8: laal '(Purchase)' - Payable/Unregistered ke
    bagal me, Ledger A/C ke bagal NAHI."""
    from HMS_py.ui.finance_masters_ui import taxmaster_config
    cfg = taxmaster_config()
    by_name = {f.name: f for f in cfg.fields}
    assert by_name["payableac"].note == "(Purchase)"
    assert by_name["unregisteredac"].note == "(Purchase)"
    assert by_name["accode"].note == ""
    assert by_name["sundry"].note == ""


def test_taxmaster_config_vb6_confirmations_and_audit_strip():
    """VB6 MsgBox contracts + audit labels (LblSysYN/LblUser/LblLDt)."""
    from HMS_py.ui.finance_masters_ui import taxmaster_config
    cfg = taxmaster_config()
    assert cfg.confirm_save is True       # "Save Record ?" / "Save Data"
    assert cfg.confirm_cancel is True     # "Cancel ?" / "Terminate Process"
    assert cfg.confirm_delete is True     # "Delete Record ?" / "Confirmation"
    assert cfg.loop_add is True           # Add-save -> wapas Add mode
    assert cfg.vb6_status is True         # System/User Defined strip
    assert callable(cfg.field_validator)  # Txt_Validate duplicate check
    # Grid ka Ledger column code nahi, joined Naam dikhaye
    ledger_col = next(h for h, k in cfg.columns if k == "ledgername")
    assert ledger_col == "Ledger"
    assert ("System", "sysyn") in cfg.columns


# ------------------------------------------------------ UI smoke (offscreen)
def test_taxmaster_form_renders_lookup_notes_hidden_and_audit():
    from PyQt6.QtWidgets import QApplication, QLabel
    from HMS_py.ui.finance_masters_ui import taxmaster_config
    from HMS_py.ui.base_master import BaseMasterForm

    app = QApplication.instance() or QApplication(sys.argv)

    class _Api:
        @staticmethod
        def list_all(cn=None):
            return [{
                "code": "KKCGSP", "name": "CGST (PURCHASE)", "short": "CGSP",
                "accode": "KK001001", "ledgername": "CGST LEDGER",
                "payableac": "", "payableacname": "", "unregisteredac": "",
                "unregisteredacname": "", "sundry": "S1",
                "sundryname": "GST", "nature": "", "active": "Y",
                "roundoff": "No", "sysyn": "Y", "u_name": "Analysis",
                "u_ae": "A", "u_entdt": "14/03/2019",
            }]

        @staticmethod
        def get(code, cn=None):
            return _Api.list_all()[0]

        @staticmethod
        def exists(code, cn=None):
            return False

    cfg = taxmaster_config()
    cfg.api = _Api
    form = BaseMasterForm(cfg)
    app.processEvents()

    # hidden Round Off editor to hai (save ke liye) par layout me nahi
    assert "roundoff" in form.edits
    assert "roundoff" not in [f.name for f in form._visible_fields]
    # lookup editors LookupEdit andar hain
    assert set(form._lookups) == {"sundry", "accode", "payableac",
                                  "unregisteredac"}
    # '(Purchase)' red notes do hi honi chahiye
    notes = [w.text() for w in form.findChildren(QLabel)
             if w.text() == "(Purchase)"]
    assert len(notes) == 2
    # VB6 audit strip browse par record se bhara
    assert form.lblSysYN.text() == "System Defined"
    assert form.lblUser.text() == "Created By : Analysis"
    assert form.lblLDt.text() == "Created By : 14/03/2019"
    # browse par ledger NAAM dikhta hai, record dict me CODE jaata hai
    assert form.edits["accode"].text() == "CGST LEDGER"
    assert form.record_from_ui()["accode"] == "KK001001"
    assert form.record_from_ui()["roundoff"] == "No"
    # VB6 Event_A: Add mode me audit khali + 'User Defined'
    form._on_new()
    app.processEvents()
    assert form.lblSysYN.text() == "User Defined"
    assert form.lblUser.text() == "" and form.lblLDt.text() == ""
    # VB6 Event_D: Edit mode me audit caption khali, SysYN record jaisa
    form._on_edit()
    app.processEvents()
    assert form.state == "Edit"
    assert form.lblSysYN.text() == "System Defined"
    assert form.lblUser.text() == "" and form.lblLDt.text() == ""
    app.processEvents()


def test_lookup_edit_resolves_name_to_code_like_vb6_tag():
    from PyQt6.QtWidgets import QApplication
    from HMS_py.ui.base_master import LookupEdit

    app = QApplication.instance() or QApplication(sys.argv)
    rows = [{"code": "KK0001", "name": "CGST (PURCHASE)"},
            {"code": "KK0002", "name": "SGST (SALES)"}]
    lu = LookupEdit(lambda: rows)
    # VB6: grid se aaya record Naam dikhata hai
    lu.set_value("KK0001", "CGST (PURCHASE)")
    assert lu.ed.text() == "CGST (PURCHASE)"
    assert lu.resolve() == "KK0001"
    # user ne Naam type kiya -> tab-out par Code (VB6 Txt_Validate)
    lu.ed.setText("sgst (sales)")
    assert lu.resolve() == "KK0002"
    assert lu.ed.text() == "SGST (SALES)"
    # code type kiya -> wahi code
    lu.ed.setText("KK0001")
    assert lu.resolve() == "KK0001"
    # row-source me nahi -> legacy: jo likha wahi
    lu.ed.setText("UNKNOWN")
    assert lu.resolve() == "UNKNOWN"
    # khali
    lu.ed.setText("")
    assert lu.resolve() == ""
    app.processEvents()


def test_print_button_visibility_and_dispatch():
    from PyQt6.QtWidgets import QApplication
    from HMS_py.ui.base_master import BaseMasterForm, Field, MasterConfig

    app = QApplication.instance() or QApplication(sys.argv)

    class _Api:
        @staticmethod
        def list_all(cn=None):
            return []

        @staticmethod
        def get(code, cn=None):
            return None

        @staticmethod
        def exists(code, cn=None):
            return False

    plain = BaseMasterForm(MasterConfig(
        title="No Print", columns=[("Code", "code")],
        fields=[Field("code", "Code")], api=_Api))
    assert plain.btnPrint.isHidden() is True  # print_fn nahi -> hidden

    calls = []
    with_print = BaseMasterForm(MasterConfig(
        title="With Print", columns=[("Code", "code")],
        fields=[Field("code", "Code")], api=_Api,
        print_fn=lambda form: calls.append(form)))
    assert with_print.btnPrint.isHidden() is False
    with_print._on_print()
    assert calls == [with_print]
    app.processEvents()
