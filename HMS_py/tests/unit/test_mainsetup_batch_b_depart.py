"""AUDIT-20261005 P2-G — Depart (Outlet/Department) full column-set.

VB6 OutLetMast.frm loc_1CD8B79 INSERT me 60 columns hain; port pehle sirf
17 likhta tha -> OutletTitle, Header1-4, token-printing, barcode-partition
aur POS switches silently DROP ho jaate the.
"""
import os

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

pytestmark = pytest.mark.unit

# VB6 columns jo pehle kabhi write nahi hote the (45-col gap ka core).
PREVIOUSLY_MISSING = (
    "Header1", "Header2", "Header3", "Header4", "Slogan1", "Slogan2",
    "LstNo", "CompanyTitle", "OutletTitle", "LinkToRoom", "PartyName",
    "SplitBill", "RateInclTax", "DiscApp", "Roff", "MemberInfo", "DisPrint",
    "LabelPrinting", "TokenPrint", "TokenPrintAfter", "PrintTokenNo",
    "Order_Booking", "CustInfo", "CstNo", "CKOTPrintYN",
    "BarCodePartitionAppOn", "CKOTPrintPath", "CurTokenNo", "CurTokenNoKOT",
    "NoOfKOt", "NoOfBill", "OrderBookCom1", "OrderBookCom2",
    "SaleBillTokenHeader1", "PrintOnSave", "AutoSettlement", "WScaleApp",
    "BarCodeApp", "AutoResetToken", "FreeItemApp", "CoverMandatory",
    "MobileNoMandatory", "DirectBilling", "BookOfBills", "GrpDiscApp",
)


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


def test_insert_writes_all_vb6_columns(fake):
    from HMS_py.core import depart
    depart.insert({"code": "PYO001", "name": "Outlet", "outletyn": "Y"})
    sql = next(s for s in (x[0] for x in fake.executes)
               if s.startswith("INSERT INTO Depart"))
    for col in PREVIOUSLY_MISSING:
        assert col in sql, col
    assert "Site_Code" in sql and "LogSite_Code" in sql
    assert "getdate()" in sql


def test_update_sets_all_vb6_columns(fake):
    from HMS_py.core import depart
    depart.update("PYO001", {"code": "PYO001", "name": "Outlet"})
    sql = next(s for s in (x[0] for x in fake.executes)
               if s.startswith("UPDATE Depart SET"))
    for col in PREVIOUSLY_MISSING:
        assert f"{col} = ?" in sql, col
    assert "U_AE = 'E'" in sql and "WHERE Code = ?" in sql


def test_yn_flags_and_ints_are_coerced(fake):
    """VB6 Left$(...,1) Y/N flags + numeric cols."""
    from HMS_py.core import depart
    depart.insert({"code": "PYO001", "name": "Outlet", "kotyn": "y",
                   "outletyn": "y", "linktoroom": " n ",
                   "curtokenno": "5", "bookofbills": "7", "backcolor": "255"})
    sql, params = next((s, p) for s, p in fake.executes
                       if s.startswith("INSERT INTO Depart"))
    idx = {c: i for i, (c, _, _) in enumerate(depart.DEPART_WRITE_COLS)}
    assert params[idx["KotYn"]] == "Y"
    assert params[idx["OutletYN"]] == "Y"
    assert params[idx["LinkToRoom"]] == "N"   # strip + upper + Left 1
    assert params[idx["CurTokenNo"]] == 5
    assert params[idx["BookOfBills"]] == 7
    assert params[idx["BackColor"]] == 255
    # Left$(...,1) truncation inhe 1-char rakhta hai
    assert depart._cv("linktoroom", "yes please") == "Y"
    assert depart._cv("discapp", "") == ""
    assert depart._cv("noofkot", "bad") == 0


def test_ui_config_matches_writer_spec_exactly():
    """UI se save par silent-drop na ho: config fields == writer spec keys."""
    from HMS_py.core import depart
    from HMS_py.ui.p2_masters import depart_config
    keys = {f.name for f in depart_config().fields}
    spec = {k for _, k, _ in depart.DEPART_WRITE_COLS}
    assert spec - keys == set(), f"UI me missing: {sorted(spec - keys)}"
    assert keys - spec == set(), f"UI me extra: {sorted(keys - spec)}"


def test_map_exposes_new_keys(fake):
    from HMS_py.core import depart
    row = {"Code": "PYO001", "Name": "Outlet", "KotYn": "Y"}
    out = depart._map(row)
    for key in ("code", "name", "outletyn", "header1", "tokenprint",
                "autosettlement", "bookofbills", "grpdiscapp", "printtype",
                "u_name", "u_ae"):
        assert key in out, key
    assert out["outletyn"] == "N"            # default preserved
