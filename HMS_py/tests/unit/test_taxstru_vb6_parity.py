"""VB6 FrmTaxStruMast parity tests (Main Setup -> General Setup -> Tax Structure).

File-by-file pass 2026-10-01. DB monkeypatch karke SQL-contract verify:

  BUG-MS-009 : site filter (header/search/dup-name queries) - VB6 Form_Load
  BUG-MS-010 : next_code VB6 SQL (ISNUMERIC + SITE_CODE, NUMERIC cast)
  BUG-MS-011 : duplicate structure Name check - VB6 Proc_19_51
  BUG-MS-012 : delete dependency checks (RevMast/ItemCatMast/TelCallType)
               - VB6 TopCtrl delete chain loc_11E6AAB
  BUG-MS-013 : update_structure reinsert rows with U_AE='E' - VB6 loc_145C8F0
  BUG-MS-014 : Print path (TaxStructureMast.RPT) - text-preview fallback
  UI         : grid-level duplicate tax line (legacy 'Duplicate Sundry Name
               Not Allowed') - VB6 Proc_19_59
"""
import os
import sys

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

# Qt widgets banane se PEHLE QApplication chahiye (warna Qt qFatal:
# "Must construct a QApplication before a QWidget" - poora session mar jataa)
from PyQt6.QtWidgets import QApplication
_app = QApplication.instance() or QApplication(sys.argv)

pytestmark = pytest.mark.unit


class FakeConn:
    def __init__(self):
        self.commits = 0
        self.closed = False

    def commit(self):
        self.commits += 1

    def close(self):
        self.closed = True


class FakeDB:
    def __init__(self):
        self.queries = []
        self.executes = []
        self.next_code_n = 26
        self.name_dup = 0
        self.old_name = "OLD NAME"
        self.deps = {"RevMast": 0, "ItemCatMast": 0, "TelCallType": 0}
        self.print_rows_data = []
        self.conn = FakeConn()

    def query(self, sql, params=(), cn=None):
        s = " ".join(sql.split())
        self.queries.append((s, tuple(params)))
        if "SUBSTRING(Code,3,4)" in s:
            return [(self.next_code_n,)]
        if "COUNT(*) FROM [RevMast] WHERE TaxStru" in s:
            return [(self.deps["RevMast"],)]
        if "COUNT(*) FROM [ItemCatMast] WHERE TaxStru" in s:
            return [(self.deps["ItemCatMast"],)]
        if "COUNT(*) FROM [TelCallType] WHERE TaxStru" in s:
            return [(self.deps["TelCallType"],)]
        if "COUNT(*) FROM TaxStru WHERE" in s:
            return [(self.name_dup,)]
        if s.startswith("SELECT Name FROM TaxStru WHERE Code"):
            return [(self.old_name,)]
        if "LEFT JOIN RevMast ON RevMast.Code = TaxStru.TaxCode" in s:
            return list(self.print_rows_data)
        if "DISTINCT Code, Name FROM TaxStru" in s:
            return []
        return []

    def execute(self, sql, params=(), cn=None, commit=True):
        self.executes.append((" ".join(sql.split()), tuple(params)))
        return 1

    def connect(self):
        return self.conn


@pytest.fixture
def fake(monkeypatch):
    from HMS_py.core import db as dbmod
    f = FakeDB()
    monkeypatch.setattr(dbmod, "query", f.query)
    monkeypatch.setattr(dbmod, "execute", f.execute)
    monkeypatch.setattr(dbmod, "connect", f.connect)
    return f


def _lines(n=2):
    return [{"taxcode": f"KK000{i}", "nature": "On Base Amt", "rate": 5.0,
             "limit": 0.0, "limit1": 0.0, "condapp": "", "compop": "",
             "taxbeforedisc": "No"} for i in range(1, n + 1)]


# ---------------------------------------------------------------- next_code
def test_next_code_matches_vb6_sql(fake):
    from HMS_py.core import taxstru
    fake.next_code_n = 26
    code = taxstru.next_code()
    assert code == f"{taxstru.SITE_CODE[:2]}0026"
    sql, params = fake.queries[-1]
    # VB6 loc_145C39D: IsNull(Max(CAST(SUBSTRING(Code,3,4) AS NUMERIC)),1)+1
    #                  WHERE ISNumeric(...) = 1 AND SITE_CODE = '<site>'
    assert "SUBSTRING(Code,3,4)" in sql
    assert "ISNUMERIC" in sql.upper()
    assert "SITE_CODE = ?" in sql
    assert "NUMERIC" in sql.upper()
    assert params == (taxstru.SITE_CODE,)


# --------------------------------------------------------------- site filter
def test_list_all_site_filter(fake):
    from HMS_py.core import taxstru
    taxstru.list_all()
    sql, params = fake.queries[-1]
    assert "LogSite_Code = ?" in sql and "'HO'" in sql
    assert params == (taxstru.SITE_CODE,)


def test_structures_summary_site_filter(fake):
    from HMS_py.core import taxstru
    taxstru.get_structures_summary()
    sql, params = fake.queries[-1]
    assert "LogSite_Code = ?" in sql
    assert params == (taxstru.SITE_CODE,)


# ------------------------------------------------------- duplicate name check
def test_insert_structure_duplicate_name_blocked(fake):
    from HMS_py.core import taxstru
    fake.name_dup = 1
    with pytest.raises(ValueError, match="Duplicate Name"):
        taxstru.insert_structure("KK9001", "GST 18%", _lines())
    assert not fake.executes


def test_insert_structure_happy_path_uses_uae_a(fake):
    from HMS_py.core import taxstru
    fake.name_dup = 0
    n = taxstru.insert_structure("KK9001", "PYT Test", _lines(3))
    assert n == 3
    inserts = [s for s, _ in fake.executes if s.startswith("INSERT INTO TaxStru")]
    assert len(inserts) == 3
    assert all("'A'" in s for s in inserts)   # VB6 Add state -> U_AE='A'
    assert fake.conn.commits == 1


def test_update_structure_dup_excludes_old_name(fake):
    from HMS_py.core import taxstru
    fake.old_name = "GST 5%"
    fake.name_dup = 1
    with pytest.raises(ValueError, match="Duplicate Name"):
        taxstru.update_structure("KK0002", "TAX 18%", _lines())
    assert not fake.executes
    dup_sql, dup_params = next((s, p) for s, p in fake.queries
                               if "COUNT(*) FROM TaxStru WHERE" in s)
    assert "AND Name <> ?" in dup_sql
    assert dup_params == (taxstru.SITE_CODE, "TAX 18%", "GST 5%")


def test_update_structure_keeps_own_name_ok(fake):
    from HMS_py.core import taxstru
    fake.old_name = "GST 5%"
    fake.name_dup = 0   # exclude_name='GST 5%' chalne ke baad count 0
    n = taxstru.update_structure("KK0002", "GST 5%", _lines(2))
    assert n == 2
    first = fake.executes[0][0]
    assert first.startswith("DELETE FROM TaxStru WHERE Code = ?")  # replace
    inserts = [s for s, _ in fake.executes if s.startswith("INSERT INTO TaxStru")]
    assert len(inserts) == 2
    # VB6 edit-save rows U_AE='E' (loc_145C8F0 IIf(Add,'A','E'))
    assert all("'E'" in s for s in inserts)
    assert fake.conn.commits == 1


# ------------------------------------------------------------ delete checks
@pytest.mark.parametrize("table,display", [
    ("RevMast", "RevMast"),
    ("ItemCatMast", "ItemCatMast"),
    ("TelCallType", "Tax Structure"),
])
def test_delete_structure_dependency_blocks(fake, table, display):
    from HMS_py.core import taxstru
    fake.deps[table] = 3
    with pytest.raises(ValueError,
                       match=f"Related Record Exist in {display}, "
                             f"Entry Can't Be Deleted"):
        taxstru.delete_structure("KK0002")
    assert not any(s.startswith("DELETE FROM TaxStru")
                   for s, _ in fake.executes)
    fake.deps[table] = 0


def test_delete_structure_happy_path(fake):
    from HMS_py.core import taxstru
    assert taxstru.delete_structure("KK0002") == 1
    sql, params = fake.executes[-1]
    assert sql == "DELETE FROM TaxStru WHERE Code = ?" and params == ("KK0002",)


# ------------------------------------------------------------------- print
def test_print_rows_matches_vb6_print_sql(fake):
    from HMS_py.core import taxstru
    taxstru.print_rows()
    sql, params = fake.queries[-1]
    # VB6 loc_1087EE7: TaxStru LEFT JOIN RevMast (join), filter on
    # RevMast side (LogSite + FieldType='T'), Order by Sno, NO code filter
    assert "LEFT JOIN RevMast ON RevMast.Code = TaxStru.TaxCode" in sql
    assert "RevMast.LogSite_Code = ?" in sql
    assert "RevMast.FieldType = 'T'" in sql
    assert "ORDER BY Sno" in sql
    assert params == (taxstru.SITE_CODE,)


# ---------------------------------------------------------------- UI pieces
def test_grid_duplicate_tax_line_legacy_message():
    from HMS_py.ui.taxstru_ui import TaxStruForm
    lines = _lines(2)
    lines[1]["taxcode"] = lines[0]["taxcode"]
    assert (TaxStruForm._check_duplicate_taxcodes(lines)
            == "Duplicate Sundry Name Not Allowed")   # VB6 exact text
    assert TaxStruForm._check_duplicate_taxcodes(_lines(2)) is None
    # case-insensitive (VB6 Ucase() comparison)
    mixed = [{"taxcode": "gst18"}, {"taxcode": "GST18"}]
    assert TaxStruForm._check_duplicate_taxcodes(mixed) \
        == "Duplicate Sundry Name Not Allowed"


def test_form_has_print_button_and_saves_with_dup_guard(fake, monkeypatch):
    from PyQt6.QtWidgets import QMessageBox
    from HMS_py.ui import taxstru_ui

    form = taxstru_ui.TaxStruForm()
    try:
        assert form.btn_print is not None
        # duplicate line save rok do (warning QMessageBox monkeypatch)
        warned = []
        monkeypatch.setattr(QMessageBox, "warning",
                            lambda *a, **k: warned.append(a[2:]))
        form.state = "Add"
        form.ed_code.setText("KK9001")
        form.ed_name.setText("PYT Dup Grid")
        form._get_grid_lines = lambda: [
            {"sno": 1, "taxcode": "KK0001", "nature": "On Base Amt",
             "rate": 5.0, "limit": 0.0, "limit1": 0.0, "condapp": "",
             "compop": "", "taxbeforedisc": "No"},
            {"sno": 2, "taxcode": "kk0001", "nature": "On Base Amt",
             "rate": 5.0, "limit": 0.0, "limit1": 0.0, "condapp": "",
             "compop": "", "taxbeforedisc": "No"},
        ]
        form._on_save()
        assert warned and warned[0][-1] == "Duplicate Sundry Name Not Allowed"
        assert not fake.executes
    finally:
        form.close()
