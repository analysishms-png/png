"""Card transaction core ops (VB6 SmartCardRecharge / Refund /
LostReIssue + MemAutoSettleCardBalance) - live proof, rollback-safe."""
import datetime

import pytest

from HMS_py.core import db
from HMS_py.core import smartcard_ops as sc

CODE = "PYTSC001"
CODE2 = "PYTSC002"


def _mk(cn, code=CODE, cardtype="Cash Card", serial="PYSER001", **kw):
    rec = {"code": code, "name": "PYT Test Card", "cardtype": cardtype,
           "cardno": f"CARD-{code}", "serialno": serial, "blockedyn": "N"}
    rec.update(kw)
    return sc.insert_reg(rec, cn=cn, commit=False)


def test_recharge_writes_rcard_ledger_and_bumps_balance(db_transaction):
    cn = db_transaction
    _mk(cn)

    res = sc.recharge_card(CODE, 500, 100, cn=cn, commit=False)

    assert res["new_curr"] == 500.0
    assert res["new_secur"] == 100.0
    assert res["ledger_rows"] == 2
    assert res["registration_rows"] == 1
    assert len(res["docid"]) == 21, "DocId 21 char (D+site+type+prefix+vno)"
    assert res["vno"] >= 1

    reg = sc.get_reg(CODE, cn=cn)
    assert float(reg["currbal"]) == 500.0
    assert float(reg["securbal"]) == 100.0

    led = {r["type"]: r for r in sc.list_ledger(CODE, cn=cn)}
    assert set(led) == {"RCARDC", "RCARDS"}
    for ltype, amt in (("RCARDC", 500.0), ("RCARDS", 100.0)):
        assert led[ltype]["vtype"] == "RCARD"
        assert led[ltype]["vno"] == res["vno"]
        assert float(led[ltype]["amtcr"]) == amt
        assert float(led[ltype]["amtdr"]) == 0.0

    # VB6 rollup parity: CurrBal = Sum(AmtCr) - Sum(AmtDr)
    roll = db.query(
        "SELECT ISNULL(SUM(AmtCr),0) - ISNULL(SUM(AmtDr),0) "
        "FROM SmartCardLedger WHERE Code = ? AND Type = 'RCARDC'",
        (CODE,), cn=cn)[0][0]
    assert float(roll) == 500.0
    cn.rollback()


def test_recharge_validations_match_vb6_messages(db_transaction):
    cn = db_transaction
    _mk(cn)

    with pytest.raises(ValueError, match="Scan Card First"):
        sc.recharge_card("", 100, cn=cn, commit=False)
    with pytest.raises(ValueError, match="Both of Amount Should Not be Zero"):
        sc.recharge_card(CODE, 0, 0, cn=cn, commit=False)
    with pytest.raises(ValueError, match="negative"):
        sc.recharge_card(CODE, -10, cn=cn, commit=False)
    with pytest.raises(ValueError, match="nahi mila"):
        sc.recharge_card("NOPE99", 100, cn=cn, commit=False)

    assert float(sc.get_reg(CODE, cn=cn)["currbal"]) == 0.0
    cn.rollback()


def test_refund_validation_and_balance(db_transaction):
    cn = db_transaction
    _mk(cn)
    sc.recharge_card(CODE, 500, 100, cn=cn, commit=False)

    with pytest.raises(ValueError, match="Both of Amount Should Not be Zero"):
        sc.refund_card(CODE, 0, 0, cn=cn, commit=False)
    with pytest.raises(ValueError,
                       match="Not be Greater than Current Balance"):
        sc.refund_card(CODE, 600, cn=cn, commit=False)
    with pytest.raises(ValueError,
                       match="Not be Greater than Current Balance"):
        sc.refund_card(CODE, 0, 150, cn=cn, commit=False)

    res = sc.refund_card(CODE, 200, 40, cn=cn, commit=False)
    assert res["new_curr"] == 300.0
    assert res["new_secur"] == 60.0

    led = sc.list_ledger(CODE, cn=cn)
    spent = sum(float(r["amtdr"]) for r in led if r["type"] == "RCARDC")
    assert spent == 200.0

    reg = sc.get_reg(CODE, cn=cn)
    assert float(reg["currbal"]) == 300.0
    cn.rollback()


def test_reissue_updates_registration_family_and_master(db_transaction):
    cn = db_transaction
    _mk(cn)
    today = datetime.date(2026, 9, 29)
    valid = datetime.date(2027, 9, 29)

    res = sc.reissue_card(CODE, "PYSER002", today, valid, "lost card",
                          cn=cn, commit=False)

    assert res["old_serial"] == "PYSER001"
    assert res["new_serial"] == "PYSER002"
    assert res["registration_rows"] == 1
    assert res["trans_id"] >= 1

    reg = sc.get_reg(CODE, cn=cn)
    assert reg["serialno"] == "PYSER002"

    ri = [r for r in sc.list_reissue(cn=cn) if r["cardregid"] == CODE]
    assert len(ri) == 1
    assert ri[0]["hw_id"] == "PYSER002"
    assert ri[0]["oldhw_id"] == "PYSER001"
    assert ri[0]["remark"] == "lost card"

    fam = db.query("SELECT HW_Id FROM MemberFamily WHERE CardRegId = ?",
                   (CODE,), cn=cn)
    for r in fam:
        assert str(r[0]) == "PYSER002"
    cn.rollback()


def test_reissue_validations(db_transaction):
    cn = db_transaction
    _mk(cn)
    _mk(cn, code=CODE2, serial="PYSER002")
    today = datetime.date(2026, 9, 29)

    with pytest.raises(ValueError, match="Scan Card First"):
        sc.reissue_card("", "NEW", today, today, cn=cn, commit=False)
    with pytest.raises(ValueError, match="Scan New Card First"):
        sc.reissue_card(CODE, "  ", today, today, cn=cn, commit=False)
    with pytest.raises(ValueError, match="greater than Issue Date"):
        sc.reissue_card(CODE, "PYSER009",
                        datetime.date(2027, 1, 1),
                        datetime.date(2026, 1, 1), cn=cn, commit=False)
    with pytest.raises(ValueError, match="Already Registered"):
        sc.reissue_card(CODE, "PYSER002", today, today, cn=cn, commit=False)

    assert sc.get_reg(CODE, cn=cn)["serialno"] == "PYSER001"
    assert sc.list_reissue(cn=cn) == []
    cn.rollback()


def test_waive_off_all_zeroes_cash_cards(db_transaction):
    cn = db_transaction
    _mk(cn, code=CODE, cardtype="Cash Card")
    _mk(cn, code=CODE2, cardtype="Member", serial="PYSER009")
    sc.recharge_card(CODE, 250, cn=cn, commit=False)
    sc.recharge_card(CODE2, 300, 50, cn=cn, commit=False)

    res = sc.waive_off_all(cn=cn, commit=False)

    # sirf Cash Card ka CurrBal zero hota hai (VB6 CmdWaiveoff query)
    assert res["cards"] == 1
    assert res["ledger_rows"] == 1
    assert float(sc.get_reg(CODE, cn=cn)["currbal"]) == 0.0
    assert float(sc.get_reg(CODE2, cn=cn)["currbal"]) == 300.0

    waive = [r for r in sc.list_ledger(CODE, cn=cn) if r["type"] == "WCARDC"]
    assert len(waive) == 1
    assert float(waive[0]["amtdr"]) == 250.0
    assert "Waive off Card Balance" in waive[0]["narration"]
    cn.rollback()


def test_auto_settle_card_posts_rcard_rows_not_generic_refund(db_transaction):
    """Regression: pehle type='Refund' + AmtCr likha jaata tha, jo VB6
    rollup (AmtCr - AmtDr over RCARDC/RCARDS) ke against balance *badha*
    deta tha. Ab VB6 Proc_275_17 label='Refund' ki tarah RCARD/RCARDC/
    RCARDS + AmtDr."""
    cn = db_transaction
    _mk(cn)
    sc.recharge_card(CODE, 400, 80, cn=cn, commit=False)

    res = sc.auto_settle_card(CODE, secur_settle="C", cn=cn, commit=False)

    assert res["ledger_rows"] == 2
    assert res["refund"] == 480.0
    assert float(sc.get_reg(CODE, cn=cn)["currbal"]) == 0.0
    assert float(sc.get_reg(CODE, cn=cn)["securbal"]) == 0.0

    led = [r for r in sc.list_ledger(CODE, cn=cn)
           if r["type"] in ("RCARDC", "RCARDS") and float(r["amtdr"] or 0) > 0]
    assert {r["type"] for r in led} == {"RCARDC", "RCARDS"}
    for r in led:
        assert r["vtype"] == "RCARD"
        assert float(r["amtcr"] or 0) == 0.0
        assert float(r["amtdr"]) > 0
    cn.rollback()


def test_auto_settle_card_secur_reverse_keeps_security_balance(db_transaction):
    cn = db_transaction
    _mk(cn)
    sc.recharge_card(CODE, 400, 80, cn=cn, commit=False)

    res = sc.auto_settle_card(CODE, secur_settle="R", cn=cn, commit=False)

    assert res["ledger_rows"] == 1
    assert res["refund"] == 400.0
    reg = sc.get_reg(CODE, cn=cn)
    assert float(reg["currbal"]) == 0.0
    assert float(reg["securbal"]) == 80.0, "DGRestType 'R' -> SecurBal rehta hai"
    cn.rollback()


def test_card_docid_bumps_voucher_prefix_serial(db_transaction):
    cn = db_transaction
    _mk(cn)
    before = db.query(
        "SELECT ISNULL(Start_Srl_No, 0) FROM Voucher_Prefix "
        "WHERE V_Type = 'RCARD' AND Site_Code = ?",
        (sc.SITE_CODE,), cn=cn)[0][0]

    res = sc.recharge_card(CODE, 100, cn=cn, commit=False)

    after = db.query(
        "SELECT ISNULL(Start_Srl_No, 0) FROM Voucher_Prefix "
        "WHERE V_Type = 'RCARD' AND Site_Code = ?",
        (sc.SITE_CODE,), cn=cn)[0][0]
    assert after == max(int(before), res["vno"] - 1) + 1
    assert res["vno"] > int(before) or int(before) == 0
    cn.rollback()


# === Card Statement (VB6 Proc_275_18 MINI / Proc_275_22 FULL) ===
def test_card_statement_mini_and_full_match_vb6_sql(db_transaction):
    """MINI = Type IN (RCARDC/RCARDS/CARDEXP) + site + ek din; FULL = poora
    ledger (koi type filter nahi). Column sets VB6 SELECT ke barabar."""
    cn = db_transaction
    _mk(cn)
    sc.recharge_card(CODE, 500, 100, cn=cn, commit=False)
    # waive-off type (WCARDC) - MINI ke type-filter me nahi aana chahiye
    sc.insert_ledger({"code": CODE, "vtype": "RCARD", "vno": 1, "vprefix": "2026",
                      "type": "WCARDC", "narration": "waive", "amtcr": 0.0,
                      "amtdr": 50.0, "docid": "D" + "0" * 20, "vsno": 1},
                     cn=cn, commit=False)

    today = datetime.date.today()
    mini = sc.card_statement(CODE, mini=True, vdate=today, cn=cn)
    full = sc.card_statement(CODE, mini=False, cn=cn)

    ledger_types = [t[0] for t in db.query(
        "SELECT Type FROM SmartCardLedger WHERE Code = ?", (CODE,), cn=cn)]
    assert set(ledger_types) == {"RCARDC", "RCARDS", "WCARDC"}
    assert len(mini) == 2, "MINI me sirf RCARDC + RCARDS (type-filter)"
    assert len(full) == 3, "WCARDC bhi full statement me aana chahiye"
    # VB6 FULL style 106 = 'dd mon yyyy' (slash nahi)
    assert str(today.year) in full[0]["vdate"] and "/" not in full[0]["vdate"]
    assert {r["vtype"] for r in mini} == {"RCARD"}
    # VB6 CONVERT(...,103) -> varchar 'dd/mm/yyyy' (string, datetime nahi)
    assert {r["vdate"] for r in mini} == {today.strftime("%d/%m/%Y")}

    # column-set parity
    for r in mini:
        assert {"relationship", "member", "prebalance", "u_entdt"} <= set(r)
    for r in full:
        assert set(r) == {"cardtype", "name", "cardno", "vdate", "vtype",
                          "vno", "narration", "amtcr", "amtdr"}
    # VB6 ORDER BY SCL.U_EntDt
    assert [r["u_entdt"] for r in mini] == sorted(r["u_entdt"] for r in mini)
    cn.rollback()


def test_card_statement_vdate_filter_and_validations(db_transaction):
    cn = db_transaction
    _mk(cn)
    sc.recharge_card(CODE, 300, cn=cn, commit=False)

    yesterday = datetime.date.today() - datetime.timedelta(days=1)
    assert sc.card_statement(CODE, mini=True, vdate=yesterday, cn=cn) == []
    assert len(sc.card_statement(CODE, mini=True,
                                 vdate=datetime.date.today(), cn=cn)) == 1

    with pytest.raises(ValueError, match="Scan Card First"):
        sc.card_statement("", cn=cn)
    with pytest.raises(ValueError, match="Not Registered"):
        sc.card_statement("NOPE99", cn=cn)
    cn.rollback()
