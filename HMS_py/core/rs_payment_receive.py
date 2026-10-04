"""Payment Receive Entry (POS) — VB6 RsPaymentReceice.frm core port.

VB6 form: RsPaymentReceice (Caption "Payment Receive Entry (POS)"),
menu leaf: Point Of Sale > POS Reports > "Payment Receive Entry (POS)".

EVIDENCE (decompiled RsPaymentReceice.frm + extracted SQL):
  * VType: Form_Load loc_134CD24/134CD45 — `global_128 = IIf(Var_A0<>"",
    "P" & Var_A0, "RPV")` jahan Var_A0 = form ka param (menu se pass
    nahi hota — ModuleAdd.bas loc_1E47396 dispatch sirf
    `Set var_90 = New RsPaymentReceice / var_90.CAPTION = arg_10 / Show`
    karta hai, koi argument nahi) -> default branch = **RPV**.
    LIVE PROBE 2026-10-03: Voucher_Type me RPV='Automatic' +
    Voucher_Prefix me RPV row (Prefix '2026', FY 2026-27) taiyaar hai;
    PayCharge me VType='RPV' 0 rows (screen kabhi use nahi hua).
    Doosra branch "P"&param = PPOS banata, par PayCharge ke 576 PPOS rows
    saare Dr (AmtCr>0 = 0) hain — wo POS bill posting (PayCode KKSGSS =
    SGST, Comments 'SGST (SALES) Bill No...') ke hain, is receipt screen
    ke nahi (iska apna fill query `And AmtCr>0` hai). PPOS mix karna
    dusre flow ke VType me gholna hota -> RPV use kiya gaya.
    Menu dispatch evidence: ModuleAdd.bas loc_1E47255 (leaf "Payment
    Receive") + loc_1E47396 (leaf "Payment Receive Entry (POS)") dono
    EK HI form RsPaymentReceice kholte hain.
  * DocId format: live rows `DKKPPOS  2026    2473` =
    "D" + Site(2) + VType.ljust(6) + VPrefix.ljust(4) + VNo.rjust(8) = 21 —
    wahi pattern core/folio.py receive_payment use karta hai, aur print
    query `Substring(DocId1,14,8)` (VNo) se confirm hota hai.
  * Lookups (Form_Load loc_134CDF0..134D089 = queries 3..9 in
    MODULE_FIX_PLANS/.../Report_Queries/Modules/RsPaymentReceice):
      RevMast Fieldtype='P' + 6 PayTypes, Employee, RoomMast+RoomOcc,
      SubGroup Corporate/Travel Agency, SubGroup member-cats, SubGroup
      (party) with past PayCharge companies.
  * Browse recordset (query 10/11): PayCharge where VType + RestCode +
    LOGSITE_CODE + vdate>= / vdate= order by DocID.
  * Find (TopCtrl event F, loc_100DF1C/100DF8F = queries 14/15):
    `Select P.DocID as SearchCode,P.VNo,S.Name As Party From PayCharge P
    Left Join Subgroup S On S.SubCode=P.AgAc ...` (SA/label-gate = vdate>=,
    warna vdate=).
  * Billed-party list (Proc_339_84 loc_1245AEE = query 29/31):
    `Select P.DocId,P.Vno,P.SNo,P.Vdate,P.AmtCr,P.PayType,P.CompCode From
    (Sale1 S Inner Join PayCharge P on P.DocId=S.DocId) Where
    IsNull(P.PayType,'') In('Company') And P.CompCode='<party>' And
    P.DocId+Cast(P.SNo As Varchar) Not In (Select Docid2+Cast(V_SNo2 As
    Varchar) From LedgerAdj Where Logsite_Code='<site>') ...`
  * Browse fill (query 28, loc_163F4B0): PayCharge left joins
    GuestProf/Employee/RevMast/RoomMast/SubGroup, `where ST.Docid='<doc>'
    And AmtCr>0`.
  * GridSel (bills) columns — Proc_339_83 loc_11B4CEE: Cols=8:
    [0]=tick (WINGDINGS) [1]="Bill No" [2]="DocId" [3]="SNo"
    [4]="Bill Date" [5]="Bill Amount" [6]="PayType" [7]="CompCode".
  * Save (TopCtrl event 16, loc_17BCF54..17BECDB):
      - "Please Fill Payment Details Before Saving.."
      - "Amount Mismatched save Detail in Grid first"
      - "Voucher Not defined for Entry" (DocId/VPrefix resolve nahi hua)
      - BeginTrans -> Delete From LEDGERADJ Where Docid1='<doc>' ->
        Delete From PayCharge Where Docid='<doc>' -> per ticked bill
        INSERT INTO LEDGERADJ (stmt 20) -> per payment line INSERT INTO
        PayCharge (stmt 21) -> Update Voucher_Prefix Set Start_Srl_No
        (stmt 27) -> CommitTrans / RollbackTrans.
      - LEDGERADJ values: DocId1=doc, V_SNo1=1, DocId2=bill DocId,
        V_SNo2=bill SNo, Cr=bill amount, SubCode=CompCode (party),
        U_Name/U_EntDt/U_AE='A', Site_Code, LogSite_Code.
      - PayCharge U_AE literal 'A' (VB6 me edit par bhi), RestCode =
        global_52 (outlet), AU_Name/AU_EntDt = author audit (add par
        current user/date, edit par existing record ka AU_*).
  * Delete voucher (TopCtrl event C, loc_1035930): MsgBox "Delete Record ?"
    -> BeginTrans -> Delete From PayCharge Where Docid -> Delete From
    LedgerAdj Where Docid1 -> CommitTrans (error = Rollback + " Deletion
    Error").
  * Del_Click (loc_F94E1F) = payment LINE delete (grid row), msg
    "Are You Sure To Delete?" / "No Entries To Delete".

DEVIATIONS (documented, koi bhi data-affecting behavior nahi badla):
  * Voucher number `db.next_vno` (MAX(VNo)+1, UPDLOCK — BUG-015) use
    hota hai; VB6 Voucher_Prefix.Start_Srl_No se leta tha. Save ke baad
    Voucher_Prefix.Start_Srl_No update (stmt 27) waise hi hota hai —
    dono taraf prefix row consumed number reflect karti hai.
  * VB6 ka member-balance guard (Proc_339_67: PayCode = site+"MEM" ->
    "Insufficient Ac. Balance.") reachable hi nahi hai: evidenced RevMast
    dropdown me sirf Cash/Cheque/Credit Card/Complementry/UPI/Other
    PayTypes hain (live probe: KKCASH/KK0002/KKVISA/KK00xx). Agar kisi
    line me wo paycode aaye to save refuse karta hai (fake pass nahi).
  * VB6 ka "Room" paytype branch (RevMast <site>TOUT -> taxstru ->
    GuestFolio posting, stmt 22..25) decompiled me hai par dropdown me
    'Room' PayType hi nahi — isliye port me nahi; Room line ke
    RoomCat/RoomType/RoomNo/FolioNo columns Phir bhi bharte hain.

Run: python -c "from HMS_py.core import rs_payment_receive as m; print(m.VTYPE)"
"""
from __future__ import annotations

import datetime

from HMS_py.core import db

# Form_Load loc_134CD45 default branch (param khaali) = "RPV";
# "P"&param branch tab banta hai jab form kisi dept/POS param ke saath
# khule (dispatcher me aisa koi arg nahi - upar evidence dekho).
VTYPE = "RPV"

# Form_Load loc_134CDF7 — evidenced tender list
PAYTYPE_FILTER = ("Cash", "Cheque", "Credit Card", "Complementry",
                  "UPI", "Other")

SITE_CODE = db.get_site_code()
USER = db.get_user()


def _site(site: str | None = None) -> str:
    return site or SITE_CODE


# ─────────────────────────────────────────────────────────── lookups (VB6 Form_Load)
def pay_types(site: str | None = None, cn=None) -> list[tuple]:
    """RevMast tender list (loc_134CDF7 / query 3)."""
    return db.query(
        "SELECT RevMast.Code AS code, RevMast.name AS Name, "
        "RevMast.PayType AS PayType FROM RevMast "
        "WHERE (LOGSITE_CODE = ?) AND RevMast.Fieldtype IN ('P') "
        "AND RevMast.PayType IN (?,?,?,?,?,?) ORDER BY NAME",
        (_site(site), *PAYTYPE_FILTER), cn=cn)


def employees(site: str | None = None, cn=None) -> list[tuple]:
    """Employee list (loc_134CE72 / query 4)."""
    return db.query(
        "SELECT Code, Name FROM Employee "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Name",
        (_site(site),), cn=cn)


def occupied_rooms(site: str | None = None, cn=None) -> list[tuple]:
    """Occupied rooms (loc_134CED4 query 5 + loc_134CEDB executed query 6)."""
    return db.query(
        "SELECT T.Code, T.Code AS Name, RoomOcc.DocId AS FolioNoDocId "
        "FROM RoomMast T INNER JOIN RoomOcc ON RoomOcc.RoomNo = T.Code "
        "WHERE T.LOGSITE_CODE = ? AND RoomOcc.ChkoutDate IS NULL "
        "ORDER BY T.Code", (_site(site),), cn=cn)


def corporate_parties(site: str | None = None, cn=None) -> list[tuple]:
    """Corporate / Travel Agency parties (loc_134CF4D / query 7)."""
    return db.query(
        "SELECT SubCode AS Code, Name FROM SubGroup "
        "WHERE ActiveYN = 1 AND (LOGSITE_CODE = ? OR LOGSITE_CODE = 'HO') "
        "AND CompanyType IN ('Corporate','Travel Agency') ORDER BY Name",
        (_site(site),), cn=cn)


def member_parties(site: str | None = None, cn=None) -> list[tuple]:
    """Member-category parties (loc_134CFBF / query 8)."""
    return db.query(
        "SELECT SubCode AS Code, Name, CardNo FROM SubGroup "
        "WHERE ActiveYN = 1 AND (LOGSITE_CODE = ? OR LOGSITE_CODE = 'HO') "
        "AND CompanyType IN (SELECT Code FROM MemCatMast "
        "WHERE LogSite_Code = ?) ORDER BY Name",
        (_site(site), _site(site)), cn=cn)


def billing_parties(site: str | None = None, cn=None) -> list[tuple]:
    """Party (AgAc) combo — companies with past outlet receipts
    (loc_134D03C / query 9)."""
    return db.query(
        "SELECT SubCode AS SearchCode, Name FROM SubGroup "
        "WHERE ActiveYN = 1 AND SubCode IN (SELECT CompCode FROM PayCharge "
        "WHERE RestCode IN (SELECT Code FROM Depart "
        "WHERE RestType IN ('Outlet','Room Service'))) "
        "AND (LOGSITE_CODE = ? OR LOGSITE_CODE = 'HO') ORDER BY Name",
        (_site(site),), cn=cn)


def outlets(cn=None) -> list[tuple]:
    """Depart with OutletYN='Y' (VB6 Proc_339_84 rest-filter)."""
    return db.query(
        "SELECT Code, Name FROM Depart WHERE OutletYN = 'Y' ORDER BY Code",
        cn=cn)


def default_outlet(cn=None) -> str:
    """VB6 global_52 = login department, par shell department context
    expose nahi karta — isliye default = sabse recent outlet jahan POS
    receipt (VType PPOS/REC Cr rows) aaya hai, warna pehla outlet.
    User combo se outlet badal sakta hai."""
    rows = db.query(
        "SELECT TOP 1 RestCode FROM PayCharge "
        "WHERE ISNULL(RestCode, '') <> '' AND ISNULL(AmtCr, 0) > 0 "
        "ORDER BY Vdate DESC, VNo DESC", cn=cn)
    if rows and rows[0][0]:
        return str(rows[0][0])
    rows = outlets(cn=cn)
    return str(rows[0][0]) if rows else ""


# ─────────────────────────────────────────────────────────── browse / find
def browse(outlet: str, *, date_from: str | None = None, site: str | None = None,
           cn=None) -> list[dict]:
    """Browse recordset (queries 10/11): VType + RestCode + logsite + date."""
    site = _site(site)
    sql = ("SELECT DocID AS SearchCode, DocID, LogSite_Code, Site_Code "
           "FROM PayCharge WHERE VType = ? AND RestCode = ? "
           "AND LOGSITE_CODE = ? AND ")
    params: list = [VTYPE, outlet, site]
    if date_from:                       # SA / label-gate: vdate >= business date
        sql += "vdate >= ? "
    else:
        sql += "vdate = ? "
    params.append(date_from or datetime.date.today())
    sql += "ORDER BY DocID"
    rows = db.query(sql, tuple(params), cn=cn)
    return [{"docid": r[1]} for r in rows]


def search_list(outlet: str, *, wide: bool = True, site: str | None = None,
                cn=None) -> list[dict]:
    """Find dialog rows (TopCtrl event F, queries 14/15)."""
    site = _site(site)
    sql = ("SELECT P.DocID AS SearchCode, P.VNo, S.Name AS Party "
           "FROM PayCharge P LEFT JOIN Subgroup S ON S.SubCode = P.AgAc "
           "WHERE P.VType = ? AND P.RestCode = ? AND P.LOGSITE_CODE = ? AND P.vdate ")
    params: list = [VTYPE, outlet, site]
    sql += ">= ? " if wide else "= ? "
    params.append(datetime.date.today())
    sql += "ORDER BY DocID"
    return [{"docid": r[0], "vno": r[1], "party": r[2] or ""}
            for r in db.query(sql, tuple(params), cn=cn)]


def voucher_lines(docid: str, cn=None) -> list[dict]:
    """FGrid rows for an existing voucher (query 28, `And AmtCr>0`)."""
    rows = db.query(
        "SELECT ST.DOCID, ST.VNO, ST.VDATE, ST.VTime, ST.VPREFIX, "
        "ST.BillAmount, ST.SNo, ST.GuestProf, GP.Name AS GPName, "
        "ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode, "
        "P.Name AS PayName, ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, "
        "ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.FolioNo, ST.CardNo, "
        "ST.CardHolder, ST.ChqNo, ST.BatchNo, ST.ChqDate, ST.ExpDate, "
        "ST.TxnNo, CC.Name AS CompName, ST.CompCode, Ag.Name AS Party, "
        "ST.AgAc, ST.U_AE, ST.U_Name, ST.U_EntDt, ST.AU_Name, ST.AU_EntDt "
        "FROM (((PayCharge AS ST "
        "LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) "
        "LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) "
        "LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) "
        "LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND "
        "(ST.RoomType = R.Type) AND (ST.RoomNo = R.Code) "
        "LEFT JOIN SubGroup CC ON CC.SubCode = ST.CompCode "
        "LEFT JOIN SubGroup Ag ON Ag.SubCode = ST.AgAc "
        "WHERE ST.Docid = ? AND AmtCr > 0", (docid,), cn=cn)
    return [{
        "paycode": r[12] or "", "payname": r[13] or "", "paytype": r[14] or "",
        "amount": float(r[15] or 0), "tipamt": float(r[16] or 0),
        "comments": r[11] or "", "empcode": r[9] or "", "empname": r[10] or "",
        "compcode": r[30] or "", "compname": r[29] or "",
        "guestprof": r[7] or "", "guestname": r[8] or "",
        "roomcat": r[17] or "", "roomtype": r[18] or "", "roomno": r[19] or "",
        "roomname": r[20] or "", "foliono": r[21],
        "cardno": r[22] or "", "cardholder": r[23] or "", "chqno": r[24] or "",
        "batchno": r[25], "chqdate": r[26], "expdate": r[27],
        "txnno": r[28] or "", "agac": r[32] or "", "party": r[31] or "",
        "vno": r[1], "vdate": r[2], "vtime": r[3], "vprefix": r[4],
        "billamount": float(r[5] or 0), "sno": r[6],
        "u_ae": r[33] or "", "u_name": r[34] or "", "u_entdt": r[35],
        "au_name": r[36] or "", "au_entdt": r[37],
    } for r in rows]


def adjusted_bills(docid: str, cn=None) -> list[dict]:
    """Ticked bills of an existing voucher (LEDGERADJ stmt 20 ka reverse).

    Join pattern VB6 print query (stmt 17) se liya gaya hai — DocId2 side
    bill PayCharge row hai (VNo/SNo/Vdate/AmtCr)."""
    rows = db.query(
        "SELECT LA.DocId2, LA.V_SNo2, LA.Cr, LA.SubCode, "
        "P.VNo, P.Vdate, P.PayType "
        "FROM LEDGERADJ LA LEFT JOIN PayCharge P ON P.DocId = LA.DocId2 "
        "AND P.SNo = LA.V_SNo2 "
        "WHERE LA.DocId1 = ? ORDER BY P.VNo, LA.V_SNo2", (docid,), cn=cn)
    return [{"docid": r[0], "sno": int(r[1] or 0), "amount": float(r[2] or 0),
             "subcode": r[3] or "", "vno": r[4], "vdate": r[5],
             "paytype": r[6] or ""} for r in rows]


def open_bills(party: str, outlet: str, *, site: str | None = None,
               cn=None) -> list[dict]:
    """Company bills not yet adjusted (Proc_339_84 / queries 29+31)."""
    site = _site(site)
    sql = ("SELECT P.DocId, P.Vno, P.SNo, P.Vdate, P.AmtCr, P.PayType, "
           "P.CompCode FROM (Sale1 S INNER JOIN PayCharge P "
           "ON P.DocId = S.DocId) "
           "WHERE ISNULL(P.PayType,'') IN ('Company') AND P.CompCode = ? "
           "AND P.DocId + CAST(P.SNo AS VARCHAR) NOT IN "
           "(SELECT Docid2 + CAST(V_SNo2 AS VARCHAR) FROM LedgerAdj "
           "WHERE Logsite_Code = ?) ")
    params: list = [party, site]
    if outlet:
        sql += "AND P.RestCode = ? "
        params.append(outlet)
    else:
        sql += "AND P.RestCode IN (SELECT Code FROM Depart "
        sql += "WHERE OutletYN = 'Y') "
    sql += "AND P.Logsite_Code = ? ORDER by P.Vno, P.SNo"
    params.append(site)
    rows = db.query(sql, tuple(params), cn=cn)
    return [{"docid": r[0], "vno": r[1], "sno": int(r[2] or 0),
             "vdate": r[3], "amount": float(r[4] or 0), "paytype": r[5] or "",
             "compcode": r[6] or ""} for r in rows]


# ─────────────────────────────────────────────────────────── voucher number
def resolve_prefix(site: str | None = None, cn=None) -> str:
    """VPrefix (stmt 26: Voucher_Type x Voucher_Prefix, Date_From <= today)."""
    rows = db.query(
        "SELECT VT.Number_Method, VP.V_Type, VP.Date_From, VP.Prefix, "
        "VP.Start_Srl_No FROM Voucher_Type VT "
        "INNER JOIN Voucher_Prefix VP ON (VT.V_Type = VP.V_Type AND "
        "VT.SITE_CODE = VP.SITE_CODE AND VP.LOGSITE_CODE = VP.LOGSITE_CODE) "
        "WHERE (VP.SITE_CODE = ? AND VP.LOGSITE_CODE = ?) AND VP.V_Type = ? "
        "AND VP.Date_From <= ? ORDER BY VP.Date_From DESC",
        (_site(site), _site(site), VTYPE, datetime.date.today()), cn=cn)
    if not rows:
        return ""
    return (rows[0][3] or "").strip()


def make_docid(vno: int, *, site: str | None = None,
               vprefix: str | None = None) -> str:
    """Live format: 'D'+site+VType.ljust(6)+prefix.ljust(4)+vno.rjust(8)."""
    return ("D" + _site(site) + VTYPE.ljust(6) +
            (vprefix or "").ljust(4) + str(int(vno)).rjust(8))


# ─────────────────────────────────────────────────────────── save / delete
def save(*, lines: list[dict], bills: list[dict] | None = None,
         amount=None, outlet: str = "", party: str = "",
         docid: str | None = None, user: str | None = None,
         site: str | None = None, cn=None, commit: bool = True) -> str:
    """VB6 TopCtrl event 16 — delete-then-reinsert transaction.

    Returns the (new or reused) DocId. `commit=False` caller ka apna
    transaction hota hai (rollback se koi row nahi bachti).
    """
    if not lines:
        raise ValueError("Please Fill Payment Details Before Saving..")
    total = round(sum(float(l.get("amount") or 0) for l in lines), 2)
    if amount is not None and round(float(amount or 0), 2) != total:
        raise ValueError("Amount Mismatched save Detail in Grid first")
    if any(str(l.get("paycode") or "") == _site(site) + "MEM"
           for l in lines):
        raise ValueError(
            "Member (site+MEM) payment: evidenced RevMast dropdown me ye "
            "paycode nahi aata - balance check port nahi kiya gaya")

    site = _site(site)
    user = user or USER
    for l in lines:
        if l.get("paycode") is None or l.get("paycode") == "":
            raise ValueError("Voucher Not defined for Entry")

    own = cn is None
    cn = cn or db.connect()
    try:
        vprefix = resolve_prefix(site, cn=cn)
        if not vprefix:
            raise ValueError("Voucher Not defined for Entry")

        # Edit: reuse DocId/VNo (VB6 Txt(0)). Add: next number.
        if docid:
            rows = db.query(
                "SELECT VNo, VPrefix FROM PayCharge WHERE DocId = ?",
                (docid,), cn=cn)
            if rows:
                vno, vprefix = int(rows[0][0] or 0), (rows[0][1] or vprefix)
            else:
                vno = db.next_vno("PayCharge", VTYPE, vprefix,
                                  site=site, cn=cn)
                docid = make_docid(vno, site=site, vprefix=vprefix)
        else:
            vno = db.next_vno("PayCharge", VTYPE, vprefix,
                              site=site, cn=cn)
            docid = make_docid(vno, site=site, vprefix=vprefix)

        now = datetime.datetime.now()
        today = datetime.date.today()
        tim = now.strftime("%H:%M")

        # VB6: BeginTrans -> delete LEDGERADJ -> delete PayCharge (stmt 18/19)
        db.execute("DELETE FROM LEDGERADJ WHERE DocId1 = ?", (docid,),
                   cn=cn, commit=False)
        db.execute("DELETE FROM PayCharge WHERE DocId = ?", (docid,),
                   cn=cn, commit=False)

        # stmt 21 — payment lines
        for i, l in enumerate(lines, start=1):
            amt = float(l.get("amount") or 0)
            db.execute(
                "INSERT INTO PayCharge (DocId, SNo, Vtype, VNo, Site_Code, "
                "VPrefix, Vdate, VTime, GuestProf, EmpCode, CompCode, "
                "Comments, PayCode, PayType, BillAmount, AmtCr, TipAmt, "
                "RoomCat, RoomType, RoomNo, FolioNo, CardNo, CardHolder, "
                "ChqNo, ChqDate, TxnNo, ExpDate, U_Name, U_EntDt, U_AE, "
                "RestCode, AgAc, BatchNo, LogSite_Code, AU_Name, AU_EntDt) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
                "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?, ?, "
                "?, ?, ?)",
                (docid, i, VTYPE, vno, site, vprefix, today, tim,
                 (l.get("guestprof") or ""), (l.get("empcode") or ""),
                 (l.get("compcode") or ""), (l.get("comments") or ""),
                 (l.get("paycode") or ""), (l.get("paytype") or ""),
                 float(l.get("billamount") if l.get("billamount") not in
                       (None, "") else amt),
                 amt, float(l.get("tipamt") or 0),
                 (l.get("roomcat") or ""), (l.get("roomtype") or ""),
                 (l.get("roomno") or ""), l.get("foliono"),
                 (l.get("cardno") or ""), (l.get("cardholder") or ""),
                 (l.get("chqno") or ""), _dt(l.get("chqdate")),
                 (l.get("txnno") or ""), _dt(l.get("expdate")),
                 user, outlet, (l.get("agac") or party or ""),
                 _int_or_none(l.get("batchno")), site,
                 (l.get("au_name") or user), l.get("au_entdt") or now),
                cn=cn, commit=False)

        # stmt 20 — bill allocation
        for b in bills or []:
            db.execute(
                "INSERT INTO LEDGERADJ (DOCID1, V_SNO1, DOCID2, V_SNO2, CR, "
                "SUBCODE, U_Name, U_EntDt, U_AE, SITE_CODE, LOGSITE_CODE) "
                "VALUES (?, 1, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?)",
                (docid, b["docid"], int(b.get("sno") or 0),
                 float(b.get("amount") or 0),
                 (b.get("subcode") or party or ""), user, site, site),
                cn=cn, commit=False)

        # stmt 27 — consumed number reflect karo
        db.execute(
            "UPDATE Voucher_Prefix SET Start_Srl_No = ?, U_EntDt = getdate() "
            "WHERE SITE_CODE = ? AND LOGSITE_CODE = ? AND V_Type = ? "
            "AND Prefix = ?", (vno, site, site, VTYPE, vprefix),
            cn=cn, commit=False)

        if commit:
            cn.commit()
        return docid
    except Exception:
        try:
            cn.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            cn.close()


def delete_voucher(docid: str, *, cn=None, commit: bool = True) -> int:
    """VB6 TopCtrl event C — Delete Record ? transaction."""
    own = cn is None
    cn = cn or db.connect()
    try:
        n1 = db.execute("DELETE FROM PayCharge WHERE DocId = ?", (docid,),
                        cn=cn, commit=False)
        n2 = db.execute("DELETE FROM LedgerAdj WHERE DocId1 = ?", (docid,),
                        cn=cn, commit=False)
        if commit:
            cn.commit()
        return int(n1 or 0) + int(n2 or 0)
    except Exception:
        try:
            cn.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            cn.close()


def _dt(v):
    """Date param: '' / None -> None, str -> date, datetime passthrough."""
    if v in (None, "", 0):
        return None
    if isinstance(v, datetime.datetime):
        return v.date()
    if isinstance(v, datetime.date):
        return v
    try:
        return datetime.datetime.strptime(str(v)[:10], "%Y-%m-%d").date()
    except ValueError:
        try:
            return datetime.datetime.strptime(str(v)[:10], "%d/%m/%Y").date()
        except ValueError:
            return None


def _int_or_none(v):
    if v in (None, ""):
        return None
    try:
        return int(v)
    except (TypeError, ValueError):
        return None
