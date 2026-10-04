"""Smart Card operations - SmartCardRegistration, SmartCardLedger, SmartCardReIssueDetail, SmartCardMaster."""
from __future__ import annotations
import datetime
from datetime import date

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()

# === SmartCardRegistration ===
def _map_reg(r) -> dict:
    try:
        return {"code": r.Code or "", "cardtype": r.CardType or "", "cardno": r.CardNo or "",
                "name": (r.Name or "").strip(), "addr": r.Addr or "", "phone": r.Phone or "",
                "cashamt": r.CashAmt or 0.0, "securityamt": r.SecurityAmt or 0.0,
                "issdate": r.IssDate, "validupto": r.ValidUpto, "blockedyn": r.BlockedYN or "",
                "serialno": r.SerialNo or "", "currbal": r.CurrBal or 0.0, "securbal": r.SecurBal or 0.0,
                "membercode": r.MemberCode or "", "rewardbal": r.RewardBal or 0.0,
                "site_code": r.Site_Code or "", "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}
    except AttributeError:
        return {"code": str(r[0] or ""), "name": str(r[3] or "")}


def list_all_reg(cn=None, limit=500):
    rows = db.query(f"SELECT TOP {int(limit)} * FROM SmartCardRegistration WHERE Site_Code = ? ORDER BY Code", (SITE_CODE,), cn=cn)
    return [_map_reg(r) for r in rows]


def list_reg(cn=None, limit=500):
    return list_all_reg(cn, limit)


def get_reg(code, cn=None):
    rows = db.query("SELECT * FROM SmartCardRegistration WHERE Code = ?", (code,), cn=cn)
    return _map_reg(rows[0]) if rows else None


def search_reg(term, cn=None, limit=100):
    rows = db.query(f"SELECT TOP {int(limit)} * FROM SmartCardRegistration WHERE Site_Code = ? AND (Code LIKE ? OR Name LIKE ? OR CardNo LIKE ?)",
                    (SITE_CODE, f"%{term}%", f"%{term}%", f"%{term}%"), cn=cn)
    return [_map_reg(r) for r in rows]


def insert_reg(rec, cn=None, commit=True, site=SITE_CODE, user=USER):
    # BUG-026: VALUES ka ek `?` 'A' ke baad tha -> U_EntDt (datetime) ko
    # 'A'/site mil raha tha aur INSERT har baar 22007 deta tha.
    db.execute(
        "INSERT INTO SmartCardRegistration (Code,CardType,CardNo,Name,Addr,Phone,CashAmt,SecurityAmt,BlockedYN,SerialNo,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code,CurrBal,MemberCode,RewardBal)"
        " VALUES (?,?,?,?,?,?,?,?,?,?,?,getdate(),'A',?,?,0,?,?)",
        (rec.get("code",""), rec.get("cardtype",""), rec.get("cardno",""),
         rec.get("name",""), rec.get("addr",""), rec.get("phone",""),
         rec.get("cashamt",0.0), rec.get("securityamt",0.0),
         rec.get("blockedyn","N"), rec.get("serialno",""),
         user, site, site, rec.get("membercode",""), rec.get("rewardbal",0.0)),
        cn=cn, commit=commit)
    return get_reg(rec.get("code",""), cn=cn)


def update_reg(code, rec, cn=None, commit=True, site=SITE_CODE, user=USER):
    sets, params = [], []
    for fld in ("Name","Addr","Phone","CashAmt","SecurityAmt","BlockedYN","CurrBal","SecurBal","MemberCode","RewardBal","CardNo","CardType"):
        if fld.lower() in rec:
            sets.append(f"{fld} = ?")
            params.append(rec[fld.lower()])
    if not sets:
        raise ValueError("Koi field update nahi diya")
    sets.extend(["U_Name = ?", "U_EntDt = getdate()", "U_AE = 'E'"])
    params.extend([user, code])
    db.execute("UPDATE SmartCardRegistration SET " + ", ".join(sets) + " WHERE Code = ?", params, cn=cn, commit=commit)
    return get_reg(code, cn=cn)


def delete_reg(code, cn=None, commit=True):
    return db.execute("DELETE FROM SmartCardRegistration WHERE Code = ?", (code,), cn=cn, commit=commit)


# === SmartCardLedger ===
def _map_ledger(r) -> dict:
    try:
        return {"code": r.Code or "", "vtype": r.VType or "", "vno": r.VNo or 0,
                "vdate": r.VDate, "type": r.Type or "", "narration": r.Narration or "",
                "amtcr": r.AmtCr or 0.0, "amtdr": r.AmtDr or 0.0,
                "prebalance": r.PreBalance or 0.0, "site_code": r.Site_Code or "",
                "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}
    except AttributeError:
        return {"code": str(r[0] or ""), "vtype": str(r[1] or "")}


def list_ledger(code, cn=None, limit=500):
    rows = db.query(f"SELECT TOP {int(limit)} * FROM SmartCardLedger WHERE Code = ? ORDER BY VDate DESC", (code,), cn=cn)
    return [_map_ledger(r) for r in rows]


# === Card Statement (VB6 ModuleSmartCard.Proc_275_18 / Proc_275_22) ===
# VB6 routing (ModuleAdd.bas:2493 / 2497):
#   "Card Statement (MINI)" -> Proc_275_18_150145C(MemVar_1F923B4)
#   "Card Statement (FULL)" -> Proc_275_22_10E4F40()
# Dono card *scan* se shuru hote hain (Proc_275_12 verification level 1/2);
# Python me scan ki jagah pick_card() (Code/SerialNo).
#
# MINI (frm source line 15006B4-1500732):
#   SELECT SCR.CardType, SCR.CardNo, MF.Relationship, SG.Name AS Member,
#          SCR.Name, CONVERT(varchar(11), SCL.VDate,103) AS VDate, SCL.VType,
#          SCL.VNo, SCL.Narration, SCL.AmtCr, SCL.AmtDr, SCL.U_EntDt,
#          SCL.PreBalance
#     FROM SmartCardLedger SCL
#     INNER JOIN SmartCardRegistration SCR ON SCL.Code = SCR.Code
#     LEFT  JOIN MemberFamily MF ON SCL.Code = MF.CardRegId
#     LEFT  JOIN SubGroup     SG ON MF.Subcode = SG.Subcode
#    WHERE SCL.Code = <card> AND SCL.Type IN ('RCARDC','RCARDS','CARDEXP')
#      AND SCL.VDate = <ek din> AND SCL.LogSite_Code = <site>
#    ORDER BY SCL.U_EntDt
# FULL (line 10E4CD1-10E4CED):
#   SELECT SCR.CardType, SCR.Name, SCR.CardNo,
#          CONVERT(varchar(11), SCL.VDate,106) AS VDate, SCL.VType, SCL.VNo,
#          SCL.Narration, SCL.AmtCr, SCL.AmtDr
#     FROM SmartCardLedger SCL
#     INNER JOIN SmartCardRegistration SCR ON SCL.Code = SCR.Code
#    WHERE SCL.Code = <card>  ORDER BY SCL.U_EntDt
#
# Note: VB6 `SCL.Vdate='dd/mm/yyyy'` equality hai, par SmartCardLedger.VDate
# getdate() se aata hai (time part) -> match hi nahi hota. Is port me din-bhar
# ka range (`>= din AND < din+1`) use hota hai (BUG-002 style safe-fix).
def card_statement(code: str, mini: bool = False, vdate=None, cn=None,
                   limit: int = 5000, site: str = SITE_CODE) -> list[dict]:
    """VB6 card statement ka data-fetch layer. Rows ordered by U_EntDt."""
    sc_ = (code or "").strip()
    if not sc_:
        raise ValueError("Scan Card First")
    if not db.query("SELECT 1 FROM SmartCardRegistration WHERE Code = ?",
                    (sc_,), cn=cn):
        raise ValueError("This Smart Card is Not Registered!")
    top = int(limit)
    sql = ("SELECT TOP ({L}) SCR.CardType, SCR.CardNo, SCR.Name, "
           "CONVERT(varchar(11), SCL.VDate, {sty}) AS VDate, SCL.VType, "
           "SCL.VNo, SCL.Narration, SCL.AmtCr, SCL.AmtDr")
    # {L}/{sty} .format() se bharte hain -> param markers me count nahi
    params: list = []
    if mini:
        sql += (", MF.Relationship, SG.Name AS Member, SCL.U_EntDt, "
                "SCL.PreBalance")
    sql += (" FROM SmartCardLedger SCL "
            "INNER JOIN SmartCardRegistration SCR ON SCL.Code = SCR.Code")
    if mini:
        sql += (" LEFT JOIN MemberFamily MF ON SCL.Code = MF.CardRegId"
                " LEFT JOIN SubGroup SG ON MF.Subcode = SG.Subcode")
    sql += " WHERE SCL.Code = ?"
    params.append(sc_)
    if mini:
        sql += " AND SCL.Type IN ('RCARDC','RCARDS','CARDEXP')"
        if vdate is not None:
            d = vdate if isinstance(vdate, (datetime.date, datetime.datetime)) \
                else datetime.datetime.strptime(str(vdate)[:10], "%Y-%m-%d").date()
            sql += " AND SCL.VDate >= ? AND SCL.VDate < ?"
            params += [datetime.datetime(d.year, d.month, d.day),
                       datetime.datetime(d.year, d.month, d.day) +
                       datetime.timedelta(days=1)]
        sql += " AND SCL.LogSite_Code = ?"
        params.append(site)
    sql += " ORDER BY SCL.U_EntDt"
    rows = db.query(sql.format(L=top, sty=103 if mini else 106),
                    tuple(params), cn=cn)
    out = []
    for r in rows:
        if mini:
            out.append({
                "cardtype": (r.CardType or "").strip(),
                "cardno": (r.CardNo or "").strip(),
                "relationship": (r.Relationship or "").strip(),
                "member": (r.Member or "").strip(),
                "name": (r.Name or "").strip(),
                "vdate": r.VDate, "vtype": (r.VType or "").strip(),
                "vno": r.VNo or 0, "narration": (r.Narration or "").strip(),
                "amtcr": float(r.AmtCr or 0), "amtdr": float(r.AmtDr or 0),
                "u_entdt": r.U_EntDt, "prebalance": float(r.PreBalance or 0),
            })
        else:
            out.append({
                "cardtype": (r.CardType or "").strip(),
                "name": (r.Name or "").strip(),
                "cardno": (r.CardNo or "").strip(),
                "vdate": r.VDate, "vtype": (r.VType or "").strip(),
                "vno": r.VNo or 0, "narration": (r.Narration or "").strip(),
                "amtcr": float(r.AmtCr or 0), "amtdr": float(r.AmtDr or 0),
            })
    return out


def insert_ledger(rec, cn=None, commit=True, site=SITE_CODE, user=USER):
    db.execute(
        "INSERT INTO SmartCardLedger (Code,VType,VNo,VDate,VPrefix,Type,Narration,AmtCr,AmtDr,DocId,VSNO,HW_Id,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,PreBalance)"
        " VALUES (?,?,?,getdate(),?,?,?,?,?,?,?,?,?,?,getdate(),'A',?,?)",
        (rec.get("code",""), rec.get("vtype",""), rec.get("vno",0),
         rec.get("vprefix",""), rec.get("type",""), rec.get("narration",""),
         rec.get("amtcr",0.0), rec.get("amtdr",0.0), rec.get("docid",""),
         rec.get("vsno",0), rec.get("hw_id",""),
         site, user, site, rec.get("prebalance",0.0)),
        cn=cn, commit=commit)
    return rec


# === Auto Settle Card Balance (VB6 MemAutoSettleCardBalance.frm) ===
def auto_settle_pending(cn=None, limit=500):
    """Fill-grid query (VB6 Proc_341_19): active member cards jinke paas
    outstanding balance hai (CurrBal<>0 ya SecurBal<>0).

    Returns list[dict]: code, cardno, name, serialno, curr_bal, secur_bal,
    member_name, mem_category.
    """
    rows = db.query(
        "SELECT SC.Code, SC.CardNo, SC.Name, SC.SerialNo, SC.CurrBal, "
        "SC.SecurBal, S.Name AS MemberName, M.Name AS MemCategory "
        "FROM SmartCardRegistration SC "
        "LEFT JOIN SubGroup S ON SC.MemberCode = S.SubCode "
        "INNER JOIN MemCatMast M ON S.CompanyType = M.Code "
        "WHERE (SC.LogSite_Code = ? OR SC.LogSite_Code = 'HO') "
        "AND S.ActiveYN = 0 AND (SC.CurrBal <> 0 OR SC.SecurBal <> 0) "
        "ORDER BY SC.Code",
        (SITE_CODE,), cn=cn)
    out = []
    for r in rows:
        try:
            out.append({
                "code": r.Code or "", "cardno": r.CardNo or "",
                "name": r.Name or "", "serialno": r.SerialNo or "",
                "curr_bal": float(r.CurrBal or 0),
                "secur_bal": float(r.SecurBal or 0),
                "member_name": r.MemberName or "",
                "mem_category": r.MemCategory or "",
            })
        except AttributeError:
            continue
    return out


def auto_settle_card(code: str, secur_settle: str = "C",
                     cn=None, commit=True, site=SITE_CODE, user=USER):
    """Ek card settle (VB6 CmdSave + Proc_341_20): ledger refund entry
    ('Agnst. Auto Refund' narration) + registration zero-out.

    secur_settle: 'C' = cash refund (SecurBal bhi khali), 'R' = reverse to
    SecurBal (VB6 DGRestType 'C'/'R' radio) - security balance rehne diya
    jaata hai.

    VB6 parity: ye bhi `Proc_275_17(..., "Refund", ...)` se guzarta hai ->
    VType='RCARD', Type='RCARDC'/'RCARDS', AmtDr (rollup = AmtCr - AmtDr
    se balance ghat'ta hai). Returns dict.
    """
    code = str(code or "").strip()
    if not code:
        raise ValueError("Card Code zaroori hai")
    head = db.query(
        "SELECT CurrBal, SecurBal, CardNo, SerialNo "
        "FROM SmartCardRegistration WHERE Code = ?", (code,), cn=cn)
    if not head:
        raise ValueError(f"Card '{code}' SmartCardRegistration me nahi mila")
    curr = float(head[0].CurrBal or 0)
    sec = float(head[0].SecurBal or 0)
    hw = str(head[0].SerialNo or "")[:20]

    def _go(c, commit_):
        if curr == 0 and sec == 0:
            return {"code": code, "refund": 0.0, "ledger_rows": 0,
                    "registration_rows": 0}
        settle_sec = (secur_settle != "R")
        docid, vno, prefix = _card_docid("RCARD", date.today(), cn=c, site=site)
        ledger_rows, vsno = 0, 0
        for amt, ltype in ((curr, "RCARDC"),
                           (sec if settle_sec else 0.0, "RCARDS")):
            if not amt:
                continue
            vsno += 1
            insert_ledger({
                "code": code, "vtype": "RCARD", "vno": vno, "vprefix": prefix,
                "type": ltype, "narration": "Agnst. Auto Refund"
                + (" (Security)" if ltype == "RCARDS" else ""),
                "amtcr": 0.0, "amtdr": abs(amt), "docid": docid, "vsno": vsno,
                "hw_id": hw, "prebalance": amt,
            }, cn=c, commit=False, site=site, user=user)
            ledger_rows += 1
        reg_sets = ["CurrBal = 0"]
        reg_params = []
        if settle_sec:
            reg_sets.append("SecurBal = 0")
        reg_sets.extend(["LastTransAmt = ?", "LastTransDate = getdate()"])
        reg_params.append(abs(curr))
        reg_rows = db.execute(
            "UPDATE SmartCardRegistration SET " + ", ".join(reg_sets)
            + " WHERE Code = ?",
            (*reg_params, code), cn=c, commit=False)
        if commit_:
            c.commit()
        return {"code": code, "docid": docid, "vno": vno,
                "refund": abs(curr) + (abs(sec) if settle_sec else 0.0),
                "ledger_rows": ledger_rows, "registration_rows": reg_rows}

    return _with_cn(_go, cn, commit)


# === Card transactions (VB6 SmartCardRecharge / SmartCardRefund /
#     SmartCardLostReIssue -> ModuleSmartCard.Proc_275_17) ==================
#
# VB6 ka poora money-movement ek hi jagah se guzarta hai:
#   Proc_275_17(code, hw, label, vdate, cash, secur, narration)
#     label = "Recharge" | "Refund" | "Waive-off" | "Reward"
#     -> var_A4 (VType) hamesha "RCARD"
#     -> Type: Recharge/Refund = 'RCARDC' (cash) / 'RCARDS' (security)
#              Waive-off       = 'WCARDC' / 'WCARDS'
#     -> DocId Voucher_Prefix (V_Type='RCARD') se allocate hota hai
#     -> SmartCardLedger me ek row per non-zero amount
# Balance rollup (SmartCardRecharge.frm:890):
#   CurrBal  = Sum(AmtCr) - Sum(AmtDr)  over Type IN ('RCARDC','CARDEXP')
#   SecurBal = Sum(AmtCr) - Sum(AmtDr)  over Type = 'RCARDS'
# yani Recharge -> AmtCr, Refund/Waive -> AmtDr.


def _with_cn(fn, cn, commit):
    """auto_settle_card waala pattern: bahar se cn aaya to wahi, warna
    apna connection (rollback on error, close hamesha)."""
    if cn is not None:
        return fn(cn, commit)
    own = db.connect()
    try:
        return fn(own, commit)
    except Exception:
        own.rollback()
        raise
    finally:
        own.close()


def _card_docid(vtype: str, vdate, cn=None, site=SITE_CODE) -> tuple[str, int, str]:
    """VB6 Proc_275_15_1118398: Voucher_Prefix se prefix + serial -> 21-char
    DocId (D + site(2) + type(5) + prefix(5) + vno(8)) aur Start_Srl_No
    bump. SmartCardLedger ke apne V_No se cross-check karta hai."""
    from HMS_py.core import fa_voucher as fv
    rows = db.query(
        "SELECT TOP 1 Prefix FROM Voucher_Prefix WHERE V_Type = ? "
        "AND ? BETWEEN Date_From AND Date_To AND Site_Code = ? "
        "ORDER BY Date_From DESC", (vtype, vdate, site), cn=cn)
    if not rows:
        raise ValueError(
            f"Voucher_Prefix me V_Type '{vtype}' nahi mila - "
            "parameter settings check karo")
    prefix = str(rows[0][0] or "")
    mx = db.query(
        "SELECT ISNULL(MAX(VNo), 0) FROM SmartCardLedger "
        "WHERE VType = ? AND VPrefix = ? AND Site_Code = ?",
        (vtype, prefix, site), cn=cn)
    mx = int((mx[0][0] if mx else 0) or 0)
    st = db.query(
        "SELECT ISNULL(Start_Srl_No, 0) FROM Voucher_Prefix "
        "WHERE V_Type = ? AND Prefix = ? AND Site_Code = ? "
        "AND LogSite_Code = ? ORDER BY Date_From DESC",
        (vtype, prefix, site, site), cn=cn)
    st = int((st[0][0] if st else 0) or 0)
    vno = max(mx, st) + 1
    if vno > st:
        db.execute(
            "UPDATE Voucher_Prefix SET Start_Srl_No = ? WHERE V_Type = ? "
            "AND Prefix = ? AND Site_Code = ? AND LogSite_Code = ?",
            (vno, vtype, prefix, site, site), cn=cn, commit=False)
    return fv._make_docid(vtype, prefix, vno), vno, prefix


def _load_card(code, cn, site=SITE_CODE):
    rows = db.query(
        "SELECT Code, CardNo, Name, SerialNo, CardType, CurrBal, SecurBal, "
        "IssDate, ValidUpto, BlockedYN, MemberCode "
        "FROM SmartCardRegistration WHERE Code = ? AND LogSite_Code = ?",
        (code, site), cn=cn)
    if not rows:
        raise ValueError(f"Card '{code}' SmartCardRegistration me nahi mila")
    r = rows[0]
    return {
        "code": str(r.Code or ""), "cardno": str(r.CardNo or ""),
        "name": str(r.Name or ""), "serialno": str(r.SerialNo or ""),
        "cardtype": str(r.CardType or ""),
        "curr": float(r.CurrBal or 0), "secur": float(r.SecurBal or 0),
        "issdate": r.IssDate, "validupto": r.ValidUpto,
        "blocked": str(r.BlockedYN or "").upper(), "member": str(r.MemberCode or ""),
    }


def recharge_card(code, cash_amt=0.0, secur_amt=0.0, narration="",
                  cn=None, commit=True, site=SITE_CODE, user=USER):
    """VB6 SmartCardRecharge.frm TopCtrl1 UnknownEvent_16 (CmdSave).

    Validations (VB6 ki same messages):
      - card scan zaroori (yahan: card code)
      - dono amount zero -> "Both of Amount Should Not be Zero."
    Effects: SmartCardLedger rows (VType='RCARD', Type='RCARDC'/'RCARDS',
    AmtCr) + SmartCardRegistration CurrBal/SecurBal/LastTrans* delta.
    """
    code = str(code or "").strip()
    cash = round(float(cash_amt or 0), 2)
    sec = round(float(secur_amt or 0), 2)
    if not code:
        raise ValueError("Please Scan Card First.")
    if cash == 0 and sec == 0:
        raise ValueError("Both of Amount Should Not be Zero.")
    if cash < 0 or sec < 0:
        raise ValueError("Amount negative nahi ho sakta.")

    def _go(c, commit_):
        card = _load_card(code, c, site)
        docid, vno, prefix = _card_docid("RCARD", date.today(), cn=c, site=site)
        narr = str(narration or "").strip() or f"Agnst. Recharge {card['cardno']}"
        vsno = 0
        for amt, ltype, bal in ((cash, "RCARDC", card["curr"]),
                                (sec, "RCARDS", card["secur"])):
            if amt <= 0:
                continue
            vsno += 1
            insert_ledger({
                "code": code, "vtype": "RCARD", "vno": vno, "vprefix": prefix,
                "type": ltype, "narration": narr, "amtcr": amt, "amtdr": 0.0,
                "docid": docid, "vsno": vsno, "hw_id": card["serialno"][:20],
                "prebalance": bal,
            }, cn=c, commit=False, site=site, user=user)
        reg_rows = db.execute(
            "UPDATE SmartCardRegistration SET CurrBal = ISNULL(CurrBal,0) + ?, "
            "SecurBal = ISNULL(SecurBal,0) + ?, LastTransAmt = ?, "
            "LastTransDate = getdate() WHERE Code = ? AND LogSite_Code = ?",
            (cash, sec, cash + sec, code, site), cn=c, commit=False)
        if commit_:
            c.commit()
        return {"code": code, "docid": docid, "vno": vno, "prefix": prefix,
                "cash": cash, "security": sec, "ledger_rows": vsno,
                "new_curr": card["curr"] + cash,
                "new_secur": card["secur"] + sec,
                "registration_rows": reg_rows}

    return _with_cn(_go, cn, commit)


def refund_card(code, cash_amt=0.0, secur_amt=0.0, narration="",
                cn=None, commit=True, site=SITE_CODE, user=USER):
    """VB6 SmartCardRefund.frm CmdSave -> Proc_275_17 label='Refund'.

    Validation: cash <= CurrBal, security <= SecurBal ("Refund Amount Should
    Not be Greater than Current Balance."). Ledger rows Type='RCARDC'/
    'RCARDS' AmtDr se balance ghat'ta hai.
    """
    code = str(code or "").strip()
    cash = round(float(cash_amt or 0), 2)
    sec = round(float(secur_amt or 0), 2)
    if not code:
        raise ValueError("Please Scan Card First.")
    if cash == 0 and sec == 0:
        raise ValueError("Both of Amount Should Not be Zero.")
    if cash < 0 or sec < 0:
        raise ValueError("Amount negative nahi ho sakta.")

    def _go(c, commit_):
        card = _load_card(code, c, site)
        if cash > card["curr"] + 1e-9 or sec > card["secur"] + 1e-9:
            raise ValueError(
                "Refund Amount Should Not be Greater than Current Balance.")
        docid, vno, prefix = _card_docid("RCARD", date.today(), cn=c, site=site)
        narr = str(narration or "").strip() or f"Agnst. Refund {card['cardno']}"
        vsno = 0
        for amt, ltype, bal in ((cash, "RCARDC", card["curr"]),
                                (sec, "RCARDS", card["secur"])):
            if amt <= 0:
                continue
            vsno += 1
            insert_ledger({
                "code": code, "vtype": "RCARD", "vno": vno, "vprefix": prefix,
                "type": ltype, "narration": narr, "amtcr": 0.0, "amtdr": amt,
                "docid": docid, "vsno": vsno, "hw_id": card["serialno"][:20],
                "prebalance": bal,
            }, cn=c, commit=False, site=site, user=user)
        reg_rows = db.execute(
            "UPDATE SmartCardRegistration SET CurrBal = ISNULL(CurrBal,0) - ?, "
            "SecurBal = ISNULL(SecurBal,0) - ?, LastTransAmt = ?, "
            "LastTransDate = getdate() WHERE Code = ? AND LogSite_Code = ?",
            (cash, sec, -(cash + sec), code, site), cn=c, commit=False)
        if commit_:
            c.commit()
        return {"code": code, "docid": docid, "vno": vno, "prefix": prefix,
                "cash": cash, "security": sec, "ledger_rows": vsno,
                "new_curr": card["curr"] - cash,
                "new_secur": card["secur"] - sec,
                "registration_rows": reg_rows}

    return _with_cn(_go, cn, commit)


def waive_off_all(cn=None, commit=True, site=SITE_CODE, user=USER):
    """VB6 SmartCardRefund.frm CmdWaiveoff_Click.

    Confirm: "Process will Waive-off All Cash Card Balance."
    Har Cash Card (CurrBal<>0) ke liye ek ledger row (label='Waive-off',
    Type='WCARDC', AmtDr) + phir sabka CurrBal = 0.
    NOTE: WCARDC rollup me shamil nahi hai (VB6 bhi alag UPDATE se zero
    karta hai) - ye sirf audit trail hai.
    """
    def _go(c, commit_):
        rows = db.query(
            "SELECT Code, Name, CurrBal, SerialNo FROM "
            "SmartCardRegistration WHERE CardType = 'Cash Card' "
            "AND ISNULL(CurrBal,0) <> 0 ORDER BY Code", cn=c)
        if not rows:
            return {"cards": 0, "ledger_rows": 0}
        docid, vno, prefix = _card_docid("RCARD", date.today(), cn=c, site=site)
        vsno, cards = 0, 0
        for r in rows:
            amt = float(r.CurrBal or 0)
            if not amt:
                continue
            cards += 1
            vsno += 1
            insert_ledger({
                "code": str(r.Code or ""), "vtype": "RCARD", "vno": vno,
                "vprefix": prefix, "type": "WCARDC",
                "narration": f"Waive off Card Balance {r.Name or ''}".strip(),
                "amtcr": 0.0, "amtdr": abs(amt), "docid": docid, "vsno": vsno,
                "hw_id": str(r.SerialNo or "")[:20], "prebalance": amt,
            }, cn=c, commit=False, site=site, user=user)
        upd = db.execute(
            "UPDATE SmartCardRegistration SET CurrBal = 0, "
            "LastTransAmt = 0, LastTransDate = getdate() "
            "WHERE CardType = 'Cash Card' AND ISNULL(CurrBal,0) <> 0",
            cn=c, commit=False)
        if commit_:
            c.commit()
        return {"cards": cards, "ledger_rows": vsno, "registration_rows": upd}

    return _with_cn(_go, cn, commit)


def reissue_card(code, new_serial, iss_date=None, valid_upto=None, remark="",
                 cn=None, commit=True, site=SITE_CODE, user=USER):
    """VB6 SmartCardLostReIssue.frm CmdSave (4 statements, ek transaction):

      1. INSERT SmartCardReIssueDetail (old vs new card ka audit row)
      2. UPDATE SmartCardRegistration SET SerialNo/IssDate/ValidUpto
      3. UPDATE MemberFamily  SET HW_Id/CardIssDate/CardValidUpto (CardRegId)
      4. UPDATE SmartCardMaster SET MemberCode/CardIssDate/CardRegId (HW_Id)

    Validations (VB6 messages):
      - naya card scan + old card zaroori
      - ValidUpto >= Issue Date
      - naya SerialNo kisi dusre card par already registered nahi
    """
    code = str(code or "").strip()
    new_serial = str(new_serial or "").strip()
    if not code:
        raise ValueError("Please Scan Card First.")
    if not new_serial:
        raise ValueError("Please Scan New Card First.")
    if iss_date is None:
        iss_date = date.today()
    if isinstance(iss_date, str):
        iss_date = date.fromisoformat(iss_date)
    if valid_upto is None:
        raise ValueError("Valid Upto Date zaroori hai.")
    if isinstance(valid_upto, str):
        valid_upto = date.fromisoformat(valid_upto)
    if valid_upto < iss_date:
        raise ValueError("Valid Upto Date should be greater than Issue Date.")

    def _go(c, commit_):
        card = _load_card(code, c, site)
        clash = db.query(
            "SELECT Code FROM SmartCardRegistration WHERE SerialNo = ? "
            "AND Code <> ? AND LogSite_Code = ?", (new_serial, code, site), cn=c)
        if clash:
            raise ValueError(
                f"Smart Card is Already Registered. ({clash[0].Code})")
        old_hw = card["serialno"]
        old_iss, old_valid = card["issdate"], card["validupto"]

        ri = insert_reissue({
            "cardregid": code, "hw_id": new_serial, "issdate": iss_date,
            "validupto": valid_upto, "remark": str(remark or ""),
            "oldhw_id": old_hw, "oldissdate": old_iss, "oldvalidupto": old_valid,
        }, cn=c, commit=False, site=site, user=user)

        reg_rows = db.execute(
            "UPDATE SmartCardRegistration SET SerialNo = ?, IssDate = ?, "
            "ValidUpto = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
            "WHERE Code = ? AND LogSite_Code = ?",
            (new_serial, iss_date, valid_upto, user, code, site),
            cn=c, commit=False)

        fam_rows = db.execute(
            "UPDATE MemberFamily SET HW_Id = ?, CardIssDate = ?, "
            "CardValidUpto = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
            "WHERE CardRegId = ? AND LogSite_Code = ?",
            (new_serial, iss_date, valid_upto, user, code, site),
            cn=c, commit=False)

        # SmartCardMaster me CardIssDate column nahi hai (schema check).
        mast_rows = db.execute(
            "UPDATE SmartCardMaster SET CardRegId = ?, "
            "MemberCode = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
            "WHERE HW_Id = ?",
            (code, card["member"], user, new_serial),
            cn=c, commit=False)

        if commit_:
            c.commit()
        return {"code": code, "trans_id": ri["trans_id"],
                "new_serial": new_serial, "old_serial": old_hw,
                "registration_rows": reg_rows, "memberfamily_rows": fam_rows,
                "smartcardmaster_rows": mast_rows}

    return _with_cn(_go, cn, commit)


# === SmartCardReIssueDetail ===
def _map_reissue(r) -> dict:
    try:
        return {"trans_id": r.Trans_Id or 0, "cardregid": r.CardRegId or "",
                "hw_id": r.HW_Id or "", "issdate": r.IssDate, "validupto": r.ValidUpto,
                "remark": r.Remark or "", "oldhw_id": r.OldHW_Id or "",
                "site_code": r.Site_Code or "", "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}
    except AttributeError:
        return {"trans_id": r[0] or 0, "cardregid": str(r[1] or "")}


def list_reissue(cn=None, limit=500):
    rows = db.query(f"SELECT TOP {int(limit)} * FROM SmartCardReIssueDetail WHERE Site_Code = ? ORDER BY Trans_Id DESC",
                    (SITE_CODE,), cn=cn)
    return [_map_reissue(r) for r in rows]


def insert_reissue(rec, cn=None, commit=True, site=SITE_CODE, user=USER):
    # BUG-026b: Trans_Id IDENTITY column hai -> explicit value 544 deta tha.
    issdate = rec.get("issdate")
    if issdate is None:
        iss_sql, params_iss = "getdate()", ()
    else:
        iss_sql, params_iss = "?", (issdate,)
    db.execute(
        "INSERT INTO SmartCardReIssueDetail (CardRegId,HW_Id,IssDate,ValidUpto,Remark,OldHW_Id,OldIssDate,OldValidUpto,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code)"
        f" VALUES (?,?,{iss_sql},?,?,?,?,?,?,getdate(),'A',?,?)",
        (rec.get("cardregid",""), rec.get("hw_id",""),
         *params_iss, rec.get("validupto"), rec.get("remark",""), rec.get("oldhw_id",""),
         rec.get("oldissdate"), rec.get("oldvalidupto"), user, site, site),
        cn=cn, commit=commit)
    # @@IDENTITY (session-wide): SCOPE_IDENTITY() naya batch = naya scope
    # hota hai aur NULL de deta hai.
    rid = db.query("SELECT @@IDENTITY", cn=cn)
    try:
        trans_id = int(rid[0][0] or 0) if rid else 0
    except (TypeError, ValueError):
        trans_id = 0
    return {"trans_id": trans_id}


# === SmartCardMaster ===
def _map_master(r) -> dict:
    try:
        return {"contradocid": r.ContraDocid or "", "hw_id": r.HW_Id or "",
                "membercode": r.MemberCode or "", "cardregid": r.CardRegId or "",
                "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}
    except AttributeError:
        return {"contradocid": str(r[0] or ""), "hw_id": str(r[1] or "")}


def list_master(cn=None, limit=500):
    rows = db.query(f"SELECT TOP {int(limit)} * FROM SmartCardMaster ORDER BY ContraDocid", cn=cn)
    return [_map_master(r) for r in rows]


def insert_master(rec, cn=None, commit=True, user=USER):
    db.execute(
        "INSERT INTO SmartCardMaster (ContraDocid,HW_Id,MemberCode,CardRegId,U_Name,U_EntDt,U_AE)"
        " VALUES (?,?,?,?,?,getdate(),'A')",
        (rec.get("contradocid",""), rec.get("hw_id",""),
         rec.get("membercode",""), rec.get("cardregid",""), user),
        cn=cn, commit=commit)
    return rec


# === Card Operations (VB6: Card Recharge / Card Refund / Card Re-Issue) ===
def card_recharge(code: str, amount: float, narration: str = "",
                  cn=None, commit: bool = True, user: str = USER,
                  site: str = SITE_CODE) -> dict:
    """Recharge: SmartCardLedger 'Receipt' row + CurrBal += amount.

    VB6: SmartCard ledger Dr side (amount add karne wali side); CurrBal
    running balance registration par recompute (auto_settle_card pattern).
    Amount > 0 required; card SmartCardRegistration me hona chahiye.
    """
    amt = round(float(amount or 0), 2)
    if amt <= 0:
        raise ValueError("Recharge amount > 0 hona chahiye")
    reg = get_reg(code, cn=cn)
    if not reg:
        raise ValueError(f"Card '{code}' SmartCardRegistration me nahi mila")
    insert_ledger({
        "code": code, "vtype": "SCR", "vno": 0, "type": "Receipt",
        "narration": narration or "Card Recharge",
        "amtdr": amt,  # money IN -> Dr side (VB6 ledger pattern)
        "prebalance": float(reg.get("currbal") or 0),
    }, cn=cn, commit=commit, site=site, user=user)
    new_bal = round(float(reg.get("currbal") or 0) + amt, 2)
    update_reg(code, {"currbal": new_bal}, cn=cn, commit=commit,
               site=site, user=user)
    return {"code": code, "amount": amt, "new_balance": new_bal}


def card_refund(code: str, amount: float, narration: str = "",
                cn=None, commit: bool = True, user: str = USER,
                site: str = SITE_CODE) -> dict:
    """Refund: SmartCardLedger 'Refund' row + CurrBal -= amount.

    Guard: refund <= current CurrBal (negative balance reject).
    PYT* safety: production cards sirf <= CurrBal refund — over-refund
    error. VB6: 'Agnst. Refund' narration ledger Cr side.
    """
    amt = round(float(amount or 0), 2)
    if amt <= 0:
        raise ValueError("Refund amount > 0 hona chahiye")
    reg = get_reg(code, cn=cn)
    if not reg:
        raise ValueError(f"Card '{code}' SmartCardRegistration me nahi mila")
    curr = round(float(reg.get("currbal") or 0), 2)
    if amt > curr + 0.005:
        raise ValueError(
            f"Refund {amt:.2f} > current balance {curr:.2f} — "
            "negative balance allowed nahi")
    insert_ledger({
        "code": code, "vtype": "SCR", "vno": 0, "type": "Refund",
        "narration": narration or "Card Refund",
        "amtcr": amt,  # money OUT -> Cr side
        "prebalance": curr,
    }, cn=cn, commit=commit, site=site, user=user)
    new_bal = round(curr - amt, 2)
    update_reg(code, {"currbal": new_bal}, cn=cn, commit=commit,
               site=site, user=user)
    return {"code": code, "amount": amt, "new_balance": new_bal}


def card_reissue(code: str, new_hw_id: str, validupto=None,
                 remark: str = "", cn=None, commit: bool = True,
                 user: str = USER, site: str = SITE_CODE) -> dict:
    """Re-Issue: SmartCardReIssueDetail row + registration SerialNo swap.

    VB6: naya HW_Id (card hardware serial) issue hota hai — old HW/IssDate
    ReIssueDetail me archive, registration par naya serial. Balance
    carry-forward hota hai (CurrBal untouched).
    """
    reg = get_reg(code, cn=cn)
    if not reg:
        raise ValueError(f"Card '{code}' SmartCardRegistration me nahi mila")
    new_hw = (new_hw_id or "").strip()
    if not new_hw:
        raise ValueError("New HW Id (card serial) zaroori hai")
    old_hw = reg.get("serialno") or ""
    res = insert_reissue({
        "cardregid": code, "hw_id": new_hw,
        "validupto": validupto, "remark": remark or "Card Re-Issue",
        "oldhw_id": old_hw,
        "oldissdate": reg.get("issdate"),
        "oldvalidupto": reg.get("validupto"),
    }, cn=cn, commit=commit, site=site, user=user)
    update_reg(code, {"serialno": new_hw}, cn=cn, commit=commit,
               site=site, user=user)
    return {"trans_id": res["trans_id"], "code": code,
            "old_hw": old_hw, "new_hw": new_hw,
            "balance_carried": float(reg.get("currbal") or 0)}


class SmartCardAPI:
    def list_all(self, cn=None, limit=500): return list_all_reg(cn, limit)
    def get(self, code, cn=None): return get_reg(code, cn)
    def search(self, term, cn=None, limit=100): return search_reg(term, cn, limit)
    def insert(self, rec, cn=None, commit=True, site=SITE_CODE, user=USER): return insert_reg(rec, cn, commit, site, user)
    def update(self, code, rec, cn=None, commit=True, site=SITE_CODE, user=USER): return update_reg(code, rec, cn, commit, site, user)
    def delete(self, code, cn=None, commit=True): return delete_reg(code, cn, commit)
    def list_ledger(self, code, cn=None, limit=500): return list_ledger(code, cn, limit)
    def insert_ledger(self, rec, cn=None, commit=True, site=SITE_CODE, user=USER): return insert_ledger(rec, cn, commit, site, user)
    def list_reissue(self, cn=None, limit=500): return list_reissue(cn, limit)
    def insert_reissue(self, rec, cn=None, commit=True, site=SITE_CODE, user=USER): return insert_reissue(rec, cn, commit, site, user)
    def list_master(self, cn=None, limit=500): return list_master(cn, limit)
    def insert_master(self, rec, cn=None, commit=True, user=USER): return insert_master(rec, cn, commit, user)
    # card transactions (VB6 SmartCardRecharge / Refund / LostReIssue)
    def recharge(self, code, cash=0.0, secur=0.0, narration="", cn=None, commit=True):
        return recharge_card(code, cash, secur, narration, cn=cn, commit=commit)
    def refund(self, code, cash=0.0, secur=0.0, narration="", cn=None, commit=True):
        return refund_card(code, cash, secur, narration, cn=cn, commit=commit)
    def waive_off_all(self, cn=None, commit=True): return waive_off_all(cn=cn, commit=commit)
    def reissue(self, code, new_serial, iss_date=None, valid_upto=None, remark="",
                cn=None, commit=True):
        return reissue_card(code, new_serial, iss_date, valid_upto, remark,
                            cn=cn, commit=commit)