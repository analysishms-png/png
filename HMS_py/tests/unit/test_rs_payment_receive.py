"""Unit tests: VB6 RsPaymentReceice port (Payment Receive Entry POS).

Evidence base: HMS_py/core/rs_payment_receive.py docstring (form loc_
coordinates + Report_Queries/Modules/RsPaymentReceice extracted SQL).

Ye tests *write nahi karte* — save/delete ka poora SQL path ek fake db
se record karke VB6 transaction order + column mapping assert karta hai.
Ek read-only test live Voucher_Prefix/Depart probe karta hai.

run: python -m pytest tests/unit/test_rs_payment_receive.py -q
"""
from __future__ import annotations

import datetime

import pytest

from HMS_py.core import rs_payment_receive as rs

pytestmark = pytest.mark.unit


# ─────────────────────────────────────────────────────────── fake db
class _FakeCn:
    def __init__(self):
        self.committed = 0
        self.rolled = 0

    def commit(self):
        self.committed += 1

    def rollback(self):
        self.rolled += 1

    def close(self):
        pass


class _FakeDb:
    """db.query/execute/next_vno/connect ka recorder (koi write nahi)."""

    def __init__(self, prefix_rows=None, existing=None, next_vno=5):
        self.queries: list[tuple] = []
        self.execs: list[tuple] = []
        self._prefix = prefix_rows
        self._existing = existing
        self._next = next_vno
        self.cn = _FakeCn()

    def connect(self, *a, **k):
        return self.cn

    def query(self, sql, params=(), cn=None):
        self.queries.append((sql, tuple(params)))
        s = sql.lower()
        if "voucher_prefix" in s and "number_method" in s:
            return self._prefix if self._prefix is not None else [
                ("Automatic", rs.VTYPE, datetime.date(2026, 4, 1), "2026", 0)]
        if s.strip().startswith("select vno, vprefix"):
            return self._existing or []
        return []

    def execute(self, sql, params=(), cn=None, commit=True):
        self.execs.append((sql, tuple(params)))
        return 1

    def next_vno(self, table, vtype, vprefix, site=None, cn=None,
                 commit=False, **k):
        return self._next


@pytest.fixture
def fake(monkeypatch):
    f = _FakeDb()
    monkeypatch.setattr(rs, "db", f)
    return f


def _line(**kw):
    base = {"paycode": "KKCASH", "paytype": "Cash", "amount": 100.0,
            "billamount": 100.0, "tipamt": 0, "comments": "CASH RECD.",
            "txnno": "", "chqno": "", "chqdate": "", "cardno": "",
            "cardholder": "", "expdate": "", "batchno": None,
            "empcode": "", "compcode": "KK003057", "guestprof": "",
            "roomno": "", "roomcat": "", "roomtype": "", "foliono": None,
            "agac": "KK003057"}
    base.update(kw)
    return base


# ─────────────────────────────────────────────────────────── VB6 validations
def test_vb6_save_validations_messages(fake):
    with pytest.raises(ValueError) as e:
        rs.save(lines=[], bills=[], amount=10, outlet="KKRS", cn=fake.cn)
    assert str(e.value) == "Please Fill Payment Details Before Saving.."

    with pytest.raises(ValueError) as e:
        rs.save(lines=[_line(amount=100)], bills=[], amount=90,
                outlet="KKRS", cn=fake.cn)
    assert str(e.value) == "Amount Mismatched save Detail in Grid first"

    # Voucher_Prefix row hi nahi -> VB6 "Voucher Not defined for Entry"
    fake._prefix = []
    with pytest.raises(ValueError) as e:
        rs.save(lines=[_line()], bills=[], amount=100, outlet="KKRS",
                cn=fake.cn)
    assert str(e.value) == "Voucher Not defined for Entry"


def test_member_paycode_refused_not_silently_passed(fake):
    """VB6 Proc_339_67 member-balance guard decompiled hai; evidenced
    RevMast dropdown me ye paycode aata hi nahi — port chup-chaap save
    nahi karta (no fake completion)."""
    with pytest.raises(ValueError) as e:
        rs.save(lines=[_line(paycode=rs.SITE_CODE + "MEM")], bills=[],
                amount=100, outlet="KKRS", cn=fake.cn)
    assert "balance check port nahi kiya" in str(e.value)


# ─────────────────────────────────────────────────────────── transaction
def test_save_transaction_order_matches_vb6(fake):
    """VB6 TopCtrl event 16: delete LEDGERADJ -> delete PayCharge ->
    INSERT PayCharge (per line) -> INSERT LEDGERADJ (per ticked bill) ->
    Update Voucher_Prefix (stmt 27)."""
    docid = rs.save(lines=[_line(), _line(amount=50, paycode="KK0002",
                                          paytype="Cheque")],
                    bills=[{"docid": "DKKBMM   2026    1405", "sno": 1,
                            "amount": 150.0, "subcode": "KK003057"}],
                    amount=150, outlet="KKRS", party="KK003057",
                    docid=None, user="SA", cn=fake.cn, commit=False)
    kinds = [s.split(None, 1)[0].upper() for s, _ in fake.execs]
    assert kinds[:2] == ["DELETE", "DELETE"], kinds
    assert "LEDGERADJ" in fake.execs[0][0].upper()
    assert "PAYCHARGE" in fake.execs[1][0].upper()
    assert kinds[2:4] == ["INSERT", "INSERT"]      # 2 payment lines
    assert "PAYCHARGE" in fake.execs[2][0].upper()
    assert kinds[4] == "INSERT"                    # 1 bill allocation
    assert "LEDGERADJ" in fake.execs[4][0].upper()
    assert kinds[5] == "UPDATE"                    # Voucher_Prefix
    assert "VOUCHER_PREFIX" in fake.execs[5][0].upper()

    # DocId: live pattern "D"+site+VType.ljust(6)+prefix.ljust(4)+vno.rjust(8)
    assert docid == "D" + rs.SITE_CODE + rs.VTYPE.ljust(6) + "2026".ljust(4) \
        + "5".rjust(8)
    assert len(docid) == 21
    assert rs.make_docid(5, vprefix="2026") == docid

    # PayCharge INSERT params: DocId, SNo, VType, VNo, Site, Prefix...
    p = fake.execs[2][1]
    assert p[0] == docid and p[1] in (1, 2)
    assert p[2] == rs.VTYPE and p[3] == 5
    assert p[4] == rs.SITE_CODE and p[5] == "2026"
    assert p[-6] == "KKRS"                          # RestCode = outlet
    assert p[-3] == rs.SITE_CODE                    # LogSite_Code
    assert p[-2] == "SA"                            # AU_Name

    # LEDGERADJ params: DOCID1, DOCID2, V_SNO2, CR, SUBCODE, U_Name, site
    a = fake.execs[4][1]
    assert a[0] == docid and a[1] == "DKKBMM   2026    1405"
    assert a[2] == 1 and a[3] == 150.0
    assert a[4] == "KK003057" and a[5] == "SA"
    assert a[6] == rs.SITE_CODE and a[7] == rs.SITE_CODE
    assert fake.cn.committed == 0                   # commit=False honoured


def test_save_edit_reuses_existing_docid(fake):
    fake._existing = [(2473, "2026")]
    docid = rs.save(lines=[_line()], bills=[], amount=100, outlet="KKRS",
                    docid="DKKRPV   2026    2473", user="SA",
                    cn=fake.cn, commit=False)
    assert docid == "DKKRPV   2026    2473"
    assert fake.execs[2][1][3] == 2473              # VNo reused (VB6 edit)


def test_delete_voucher_statements(fake):
    n = rs.delete_voucher("DKKRPV   2026       1", cn=fake.cn)
    sqls = [s.upper() for s, _ in fake.execs]
    assert len(fake.execs) == 2
    assert "PAYCHARGE" in sqls[0] and "LEDGERADJ" in sqls[1]
    assert n == 2


# ─────────────────────────────────────────────────────────── evidence SQL
def _has(sql: str, *needles: str) -> bool:
    """Case-insensitive substring check (SQL ka case port me same hai,
    par drift-guard chahiye - VB6 predicate hona chahiye)."""
    low = sql.lower()
    return all(n.lower() in low for n in needles)


def test_lookup_sql_keeps_vb6_predicates(fake):
    """VB6 ke extracted queries ke exact predicates — drift guard."""
    rs.pay_types(site="KK", cn=fake.cn)
    assert _has(fake.queries[-1][0], "Fieldtype IN ('P')", "ORDER BY NAME")

    rs.billing_parties(site="KK", cn=fake.cn)
    assert _has(fake.queries[-1][0],
                "RestType IN ('Outlet','Room Service')",
                "SubCode IN (SELECT CompCode FROM PayCharge")

    rs.corporate_parties(site="KK", cn=fake.cn)
    assert _has(fake.queries[-1][0],
                "CompanyType IN ('Corporate','Travel Agency')")

    rs.member_parties(site="KK", cn=fake.cn)
    assert _has(fake.queries[-1][0], "SELECT Code FROM MemCatMast")

    rs.employees(site="KK", cn=fake.cn)
    assert _has(fake.queries[-1][0],
                "LogSite_Code = ? OR LogSite_Code = 'HO'")

    rs.outlets(cn=fake.cn)
    assert _has(fake.queries[-1][0], "OutletYN = 'Y'")


def test_open_bills_excludes_adjusted_ledgeradj(fake):
    """Proc_339_84 / query 29-31: bill tab tak open hai jab tak
    LEDGERADJ me DocId2+SNo na aa jaye."""
    rs.open_bills("KK003057", "KKRS", site="KK", cn=fake.cn)
    sql, params = fake.queries[-1]
    assert _has(sql, "NOT IN (SELECT Docid2 + CAST(V_SNo2 AS VARCHAR) "
                     "FROM LedgerAdj",
                "ISNULL(P.PayType,'') IN ('Company')")
    assert params[0] == "KK003057"


def test_browse_and_find_use_evidenced_filters(fake):
    rs.browse("KKRS", date_from="2026-04-01", site="KK", cn=fake.cn)
    sql, params = fake.queries[-1]
    assert _has(sql, "FROM PayCharge WHERE VType = ? AND RestCode = ?",
                "AND vdate >= ?")
    assert params[:3] == (rs.VTYPE, "KKRS", "KK")

    rs.search_list("KKRS", wide=False, site="KK", cn=fake.cn)
    sql, params = fake.queries[-1]
    assert _has(sql, "LEFT JOIN Subgroup S ON S.SubCode = P.AgAc",
                "AND P.vdate = ?")


def test_voucher_lines_query_matches_extracted_stmt28(fake):
    rs.voucher_lines("DKKRPV   2026       1", cn=fake.cn)
    sql = fake.queries[-1][0]
    assert _has(sql, "AND AmtCr > 0",                   # query 28 tail
                "LEFT JOIN RevMast AS P ON ST.PayCode = P.Code",
                "LEFT JOIN SubGroup Ag ON Ag.SubCode = ST.AgAc")


# ─────────────────────────────────────────────────────────── live read-only
def test_live_prefix_and_outlet_probe():
    """Live DB read-only: Voucher_Prefix RPV row + Depart outlets taiyar
    (VB6 stmt 26/27 ke liye zaroori)."""
    assert rs.resolve_prefix() == "2026"
    outs = [c for c, _ in rs.outlets()]
    assert outs and rs.default_outlet() in outs
    assert rs.VTYPE == "RPV"
