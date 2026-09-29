"""CurrBal rebuild (VB6 FaCurrBalUpdate.frm) - live proof, rollback-safe."""
import pytest
from HMS_py.core import db
from HMS_py.core.fa_ledger_ops import rebuild_currbal, _acgroup_chain
from HMS_py.core.fa_ledger_ops import SITE_CODE


def _ledger_nets(cn) -> dict:
    rows = db.query(
        "SELECT S.SubCode, S.GroupCode, SUM(L.AmtDr) AS AmtDr, "
        "SUM(L.AmtCr) AS AmtCr FROM SubGroup S "
        "INNER JOIN LEDGER L ON L.SubCode = S.SubCode "
        "GROUP BY S.SubCode, S.GroupCode", cn=cn)
    return {(r.SubCode or "").strip():
            float(r.AmtDr or 0) - float(r.AmtCr or 0) for r in rows}


def _expected_groups(cn) -> dict:
    """Ledger nets se hi group subtree-sum recompute (test ka independent oracle)."""
    nets = _ledger_nets(cn)
    grp_of = {(r.SubCode or "").strip(): (r.GroupCode or "").strip()
              for r in db.query(
                  "SELECT SubCode, GroupCode FROM SubGroup", cn=cn)}
    expect: dict = {}
    for sc, net in nets.items():
        for gc in _acgroup_chain(grp_of.get(sc) or "", cn=cn):
            expect[gc] = expect.get(gc, 0.0) + net
    return expect


def test_full_rebuild_matches_ledger(db_transaction):
    cn = db_transaction
    res = rebuild_currbal(cn=cn, commit=False)
    assert res["subcode"] == "(all)"
    assert res["subgroups"] > 0 and res["groups"] > 0

    sample = db.query(
        "SELECT TOP 10 C.SubCode, C.Curr_Bal, "
        "(SELECT ISNULL(SUM(L.AmtDr),0) - ISNULL(SUM(L.AmtCr),0) "
        " FROM LEDGER L WHERE L.SubCode = C.SubCode) AS Calc "
        "FROM SUBGROUPCURRBAL C JOIN LEDGER L2 ON L2.SubCode = C.SubCode "
        "GROUP BY C.SubCode, C.Curr_Bal", cn=cn)
    assert sample, "ledger se koi SUBGROUPCURRBAL row nahi bani"
    for r in sample:
        assert abs(float(r.Curr_Bal or 0) - float(r.Calc or 0)) < 0.005, \
            f"{r.SubCode}: stored={r.Curr_Bal} ledger={r.Calc}"
    cn.rollback()


def test_group_balances_roll_up_from_subgroups(db_transaction):
    cn = db_transaction
    rebuild_currbal(cn=cn, commit=False)

    # ACGROUPCURRBAL me jo bhi balance non-zero hai wo asli AcGroup.GroupCode
    # par hona chahiye (MainGrCode path-code kabhi land nahi hona chahiye -
    # 8152 truncation guard). Rebuild sab kuch pehle zero karta hai.
    bad = db.query(
        "SELECT COUNT(*) FROM ACGROUPCURRBAL C "
        "WHERE C.Curr_Bal <> 0 AND (LEN(C.GroupCode) > 6 OR NOT EXISTS "
        " (SELECT 1 FROM AcGroup G WHERE G.GroupCode = C.GroupCode))", cn=cn)
    assert int(bad[0][0]) == 0, "invalid groupcode ka non-zero balance baki hai"

    expect = _expected_groups(cn)
    assert expect, "ledger se koi group net nahi bana"

    actual = {(r.GroupCode or ""): float(r.Curr_Bal or 0) for r in db.query(
        "SELECT GroupCode, Curr_Bal FROM ACGROUPCURRBAL "
        "WHERE LogSite_Code = ?", (SITE_CODE,), cn=cn)}
    assert set(expect) <= set(actual), \
        f"missing groups: {sorted(set(expect) - set(actual))[:10]}"
    for gc, net in expect.items():
        assert abs(actual[gc] - net) < 0.005, \
            f"group {gc}: stored={actual[gc]} expected={net}"
    cn.rollback()


def test_single_subcode_rebuild_is_scoped(db_transaction):
    cn = db_transaction
    row = db.query(
        "SELECT TOP 1 S.SubCode FROM SubGroup S "
        "JOIN LEDGER L ON L.SubCode = S.SubCode", cn=cn)
    sc = (row[0][0] or "").strip()
    res = rebuild_currbal(sc, cn=cn, commit=False)
    assert res["subcode"] == sc
    assert res["subgroups"] == 1
    assert res["groups"] >= 1

    got = db.query(
        "SELECT Curr_Bal FROM SUBGROUPCURRBAL "
        "WHERE SubCode = ? AND LogSite_Code = ?", (sc, SITE_CODE), cn=cn)
    calc = db.query(
        "SELECT ISNULL(SUM(AmtDr),0) - ISNULL(SUM(AmtCr),0) "
        "FROM LEDGER WHERE SubCode = ?", (sc,), cn=cn)
    assert got, "single rebuild ne SUBGROUPCURRBAL row nahi likhi"
    assert abs(float(got[0][0] or 0) - float(calc[0][0] or 0)) < 0.005

    # sirf us subcode tak pahunchne wale groups update hue
    grp = next(((r.GroupCode or "").strip() for r in db.query(
        "SELECT GroupCode FROM SubGroup WHERE SubCode = ?", (sc,), cn=cn)
        if r.GroupCode), "")
    reach = _acgroup_chain(grp, cn=cn)
    assert reach
    assert res["groups"] == len(reach)
    cn.rollback()


def test_unknown_subcode_raises(db_transaction):
    cn = db_transaction
    with pytest.raises(ValueError):
        rebuild_currbal("PYT_NO_SUCH_SUB", cn=cn, commit=False)
    cn.rollback()


def test_group_chain_never_emits_path_codes():
    """MainGrCode path-code (9-char) ko chain me kabhi include nahi karna."""
    chain = _acgroup_chain("HO0001")
    assert chain, "HO0001 ki chain khali nahi honi chahiye"
    assert all(0 < len(c) <= 6 for c in chain)


def test_voucher_on_pathcode_group_does_not_truncate(db_transaction):
    """FaVoucher ka group upsert path-code par 8152 nahi deta (WRONG-TARGET
    aur FaCurrBalUpdate dono ka common 8152 root-cause)."""
    from datetime import date
    from HMS_py.core import fa_voucher as fv

    cn = db_transaction
    rows = db.query(
        "SELECT TOP 1 S.SubCode FROM SubGroup S JOIN AcGroup G "
        "ON G.GroupCode = S.GroupCode "
        "WHERE LEN(ISNULL(G.MainGrCode, '')) > 6", cn=cn)
    assert rows, "path-code group wala subgroup nahi mila"
    sc = (rows[0][0] or "").strip()
    other = (db.query(
        "SELECT TOP 1 SubCode FROM SubGroup WHERE SubCode <> ?", (sc,),
        cn=cn)[0][0] or "").strip()

    res = fv.post_voucher(
        [{"subcode": sc, "amt_dr": 100},
         {"subcode": other, "amt_cr": 100}],
        date.today(), narration="PYT pathcode guard", cn=cn, commit=False)
    assert res["dr"] == 100.0 and res["cr"] == 100.0

    bad = db.query(
        "SELECT COUNT(*) FROM ACGROUPCURRBAL WHERE LEN(GroupCode) > 6",
        cn=cn)
    assert int(bad[0][0]) == 0, "path-code ACGROUPCURRBAL me likha gaya"
    cn.rollback()
