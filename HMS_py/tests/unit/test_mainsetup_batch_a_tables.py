"""AUDIT-20261005 P2-C/D/E/F (Batch A) — 5 VB6 tables jo Python kabhi
write nahi karta tha. SQL-contract tests (DB monkeypatched; live write nahi).

VB6 evidence (FODER/):
  Item                    FrmItemMast.frm :654 (delete) :903 (insert) :921 (update)
  ItemMast (barcode/label) FrmItemMast.frm :930 (update)
  User2                   UserMast.frm  :1109/:1112 (save block :1438E7A-:1438F43)
  CreditCardhistory       FrmPayTypeMast.frm :830 (delete) :868 (insert)
  SchemeOutletDiscount    OutLetMast.frm :5460 (delete) :5485 (insert)
  OutletBarCodePartDetail OutLetMast.frm :5494 (delete) :5515 (insert)
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
        self.commits = 0
        self.rollbacks = 0

    def query(self, sql, params=(), cn=None):
        self.queries.append((" ".join(sql.split()), tuple(params)))
        return []

    def execute(self, sql, params=(), cn=None, commit=True):
        self.executes.append((" ".join(sql.split()), tuple(params)))
        return 1

    def require_absent(self, table, pk_col, pk_val, label="Code", cn=None):
        self.absent_calls.append((table, pk_col, pk_val, label))

    def connect(self):
        outer = self

        class _CN:
            def commit(self):
                outer.commits += 1

            def rollback(self):
                outer.rollbacks += 1

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


def _sqls(fake):
    return [s for s, _ in fake.executes]


# ================================================================ Item table
def test_item_insert_writes_item_and_itemmast(fake):
    """VB6 FrmItemMast :903 INSERT Item(...) — Item table ab likhi jaati hai."""
    from HMS_py.core import item
    item.insert({"code": "PYT0001", "name": "Paneer", "barcode": "BC1",
                 "commodity": "CMD1"})
    sqls = _sqls(fake)
    ins_item = next(s for s in sqls if s.startswith("INSERT INTO Item ("))
    for col in ("Code", "Name", "BarCode", "CommodityCode", "Site_Code",
                "U_Name", "U_EntDt", "U_AE", "LOGSITE_CODE"):
        assert col in ins_item, col
    assert any(s.startswith("INSERT INTO ItemMast") for s in sqls)
    # dono ek hi transaction
    assert fake.commits == 1


def test_item_update_writes_both_tables_vb6_set(fake):
    """VB6 FrmItemMast :921 UPDATE Item + :930 UPDATE ItemMast."""
    from HMS_py.core import item
    item.update("PYT0001", {"code": "PYT0001", "name": "Paneer 2",
                            "barcode": "BC2", "commodity": "CMD2"})
    sqls = _sqls(fake)
    upd_item = next(s for s in sqls
                    if s.startswith("UPDATE Item SET Name = ?"))
    assert "BarCode = ?" in upd_item and "CommodityCode = ?" in upd_item
    assert "SITE_CODE = ?" in upd_item and "U_AE = 'E'" in upd_item
    upd_mast = next(s for s in sqls if s.startswith("UPDATE ItemMast SET"))
    assert "BarCode = ?" in upd_mast and "CommodityCode = ?" in upd_mast
    assert "LabelName = ?" in upd_mast and "MRP = ?" in upd_mast
    assert "RateIncTax = ?" in upd_mast


def test_item_delete_removes_item_and_itemmast(fake):
    """VB6 FrmItemMast :654 DELETE From Item WHERE Code."""
    from HMS_py.core import item
    item.delete("PYT0001")
    sqls = _sqls(fake)
    assert "DELETE FROM Item WHERE Code = ?" in sqls
    assert "DELETE FROM ItemMast WHERE Code = ?" in sqls
    assert fake.commits == 1


def test_item_insert_guards_both_tables(fake):
    """VB6 duplicate guard ItemMast + Item dono pe (MainLib Proc_6_108)."""
    from HMS_py.core import item
    item.insert({"code": "PYT0001", "name": "X"})
    tables = [t for t, *_ in fake.absent_calls]
    assert "ItemMast" in tables and "Item" in tables


def test_item_label_column_limits(fake):
    from HMS_py.core import item
    with pytest.raises(ValueError, match="LabelName max 50 chars"):
        item.insert({"code": "PYT1", "name": "X", "labelname": "A" * 51})
    with pytest.raises(ValueError, match="LabelRemark3 max 50 chars"):
        item.insert({"code": "PYT1", "name": "X", "labelremark3": "A" * 51})


# ============================================================== User2 table
def test_usermaster_insert_syncs_user2(fake):
    """VB6 UserMast save: DELETE User2(user,comp) + INSERT (user,comp,'*')."""
    from HMS_py.core import usermaster
    usermaster.insert({"username": "PYTEST", "label": "Test",
                       "short": "TST"}, plain_password="abc")
    sqls = _sqls(fake)
    assert any(s.startswith("INSERT INTO UserMast") for s in sqls)
    dele = next(s for s in sqls if s.startswith("DELETE FROM User2"))
    assert "User_Name = ?" in dele and "Comp_Code = ?" in dele
    ins = next(s for s in sqls if s.startswith("INSERT INTO User2"))
    assert "User_Name" in ins and "Comp_Code" in ins and "Param_Str" in ins
    _, params = next((s, p) for s, p in fake.executes
                     if s.startswith("INSERT INTO User2"))
    assert params == ("PYTEST", usermaster.COMP_CODE, "*")
    assert fake.commits == 1


def test_usermaster_update_syncs_user2(fake):
    from HMS_py.core import usermaster
    usermaster.update("PYTEST", {"username": "PYTEST", "label": "T",
                                 "short": "TST"})
    sqls = _sqls(fake)
    assert any(s.startswith("UPDATE UserMast") for s in sqls)
    assert any(s.startswith("INSERT INTO User2") for s in sqls)


# ==================================================== CreditCardhistory
def test_paymenttype_insert_writes_card_history(fake):
    """VB6 FrmPayTypeMast :830 delete + :868 INSERT CreditCardhistory."""
    from HMS_py.core import paymenttype
    paymenttype.insert({
        "code": "PYCRD1", "name": "Credit Card", "short": "CCD",
        "accode": "KK000005", "paytype": "Credit Card",
        "card_history": [{"appdate": "2026-10-06", "taxstru": "GST",
                          "commac": "KK000007", "commper": "2.5",
                          "limit": "5000", "compoperator": ">=",
                          "limit1": "10000"}]})
    sqls = _sqls(fake)
    dele = next(s for s in sqls if s.startswith("DELETE FROM CreditCardhistory"))
    assert "RevCode = ?" in dele
    ins = next(s for s in sqls if s.startswith("INSERT INTO CreditCardhistory"))
    for col in ("AppDate", "RevCode", "TaxStru", "CommAc", "CommPer",
                "Limit", "CompOperator", "Limit1", "U_EntDt", "U_AE",
                "U_Name", "Site_Code", "LogSite_Code"):
        assert col in ins, col
    _, params = next((s, p) for s, p in fake.executes
                     if s.startswith("INSERT INTO CreditCardhistory"))
    assert params[0] == "2026-10-06"
    assert params[1] == "PYCRD1"          # RevCode
    assert params[2] == "GST"             # TaxStru
    assert params[4] == 2.5               # CommPer
    assert params[5] == 5000.0            # Limit
    assert params[7] == 10000.0           # Limit1
    assert params[8] == "A"               # U_AE (insert)


def test_paymenttype_update_card_history_uses_e(fake):
    from HMS_py.core import paymenttype
    fake.query = lambda sql, params=(), cn=None: (
        fake.queries.append((" ".join(sql.split()), tuple(params)))
        or ([(None,)] if "SELECT Name FROM RevMast" in sql else []))
    paymenttype.update("PYCRD1", {
        "name": "Credit Card", "short": "CCD", "accode": "KK000005",
        "paytype": "Credit Card",
        "card_history": [{"commac": "KK000007", "commper": "1"}]})
    _, params = next((s, p) for s, p in fake.executes
                     if s.startswith("INSERT INTO CreditCardhistory"))
    assert params[8] == "E"


def test_paymenttype_delete_cascades_card_history(fake):
    from HMS_py.core import paymenttype
    # SysYN='N', no PayCharge
    fake.query = lambda sql, params=(), cn=None: (
        fake.queries.append((" ".join(sql.split()), tuple(params)))
        or ([(None,)] if "SELECT SysYN" in sql else []))
    paymenttype.delete("PYCRD1")
    assert "DELETE FROM CreditCardhistory WHERE RevCode = ?" in _sqls(fake)


def test_paymenttype_no_card_history_key_is_noop(fake):
    """card_history absent -> CreditCardhistory bilkul touch nahi.

    (VB6 unconditional delete karta hai, par hamari UI me card grid nahi hai;
    isliye opt-in semantics — warna har plain save purani commission rows
    uda deta.)"""
    from HMS_py.core import paymenttype
    paymenttype.insert({"code": "PYCSH1", "name": "Cash", "short": "CSH",
                        "accode": "KK000005", "paytype": "Cash"})
    sqls = _sqls(fake)
    assert not any("CreditCardhistory" in s for s in sqls)
    assert any(s.startswith("INSERT INTO RevMast") for s in sqls)


# ================================================ Outlet child tables
def test_depart_insert_writes_outlet_children(fake):
    """VB6 OutLetMast :5485 SchemeOutletDiscount + :5515 OutletBarCodePartDetail."""
    from HMS_py.core import depart
    depart.insert({
        "code": "PYO001", "name": "Main Outlet", "outletyn": "Y",
        "scheme_discounts": [{"schemecode": "SCH001", "discper": "10",
                              "active": "Y", "days": "3",
                              "fromtime": "10:00", "totime": "22:00"}],
        "barcode_parts": [{"barcodepart": "PART1", "startfrom": "1",
                           "length": "4"}]})
    sqls = _sqls(fake)
    del_s = next(s for s in sqls
                 if s.startswith("DELETE FROM SchemeOutletDiscount"))
    assert "RestCode = ?" in del_s
    ins_s = next(s for s in sqls
                 if s.startswith("INSERT INTO SchemeOutletDiscount"))
    for col in ("RestCode", "Appdate", "EndDate", "FromTime", "ToTime",
                "SchemeCode", "DiscPer", "Active", "Days", "Site_Code",
                "U_Name", "U_EntDt", "U_AE", "LogSite_Code"):
        assert col in ins_s, col
    ins_b = next(s for s in sqls
                 if s.startswith("INSERT INTO OutletBarCodePartDetail"))
    for col in ("RestCode", "BarCodePart", "BarCodeStartFrom",
                "BarCodeLength", "Site_Code", "U_Name", "U_EntDt", "U_AE",
                "LogSite_Code"):
        assert col in ins_b, col
    _, p = next((s, p) for s, p in fake.executes
                if s.startswith("INSERT INTO OutletBarCodePartDetail"))
    assert p[0] == "PYO001" and p[1] == "PART1" and p[2] == 1 and p[3] == 4


def test_depart_update_children_and_noop_when_absent(fake):
    from HMS_py.core import depart
    # absent keys -> koi child SQL nahi (read-modify-write safe)
    depart.update("PYO001", {"code": "PYO001", "name": "Main Outlet"})
    sqls = _sqls(fake)
    assert not any("SchemeOutletDiscount" in s for s in sqls)
    assert not any("OutletBarCodePartDetail" in s for s in sqls)
    assert fake.commits == 1
    # present keys -> reset + reinsert (U_AE='E')
    fake.executes.clear()
    depart.update("PYO001", {"code": "PYO001", "name": "Main Outlet",
                             "scheme_discounts": [{"schemecode": "SCH002"}]})
    sqls = _sqls(fake)
    assert any(s.startswith("DELETE FROM SchemeOutletDiscount") for s in sqls)
    _, p = next((s, p) for s, p in fake.executes
                if s.startswith("INSERT INTO SchemeOutletDiscount"))
    assert p[11] == "E"


def test_depart_delete_cascades_outlet_children(fake):
    from HMS_py.core import depart
    depart.delete("PYO001")
    sqls = _sqls(fake)
    assert "DELETE FROM SchemeOutletDiscount WHERE RestCode = ?" in sqls
    assert "DELETE FROM OutletBarCodePartDetail WHERE RestCode = ?" in sqls


def test_depart_barcode_part_empty_is_skipped(fake):
    from HMS_py.core import depart
    depart.update("PYO001", {"code": "PYO001", "name": "O",
                             "barcode_parts": [{"barcodepart": "   "}]})
    assert not any(s.startswith("INSERT INTO OutletBarCodePartDetail")
                   for s in _sqls(fake))
