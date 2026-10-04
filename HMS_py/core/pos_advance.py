"""Advance / Settlement collection core (VB6 AdvanceDepDialog family).

Teen VB6 dialogs ek hi PayCharge machinery use karte hain:

  frmAdvanceDepDialog.frm          -> menu leaf "Advance Deposit"
      VType 'ADRES' (loc_15F09D7), RefDocId = reservation DocId,
      `Update Booking Set Guarantee='Y' where Docid=...`,
      `Select minadv from roomCat where Code=...`,
      `Select count(*) / sum(AmtCr) from PayCharge where RefDocid=...`

  rsTouchScreenAdvanceDepDialog.frm -> menu leaf "Settlement Entry"
      PayCharge insert (loc_179B886), pay codes
      `SELECT DP.PayCode, RevMast.Name, RevMast.PayType FROM DepartPay DP
       LEFT OUTER JOIN RevMast ON DP.PayCode = RevMast.code WHERE
       DP.LOGSITE_CODE='..'`, `Update Sale1 Set Party='..'`

  POSAdvanceDepDialog.frm          -> menu leaf "Order Booking Advance"
      VType 'AD'/'AR' (`Delete From PayChargeH Where VType In ('AD','AR')`),
      PayChargeH insert (loc_19A7A3A) + PayCharge insert,
      `UPDATE PackingOrder SET AdvAmt=...`, `UPDATE HallBook SET Advance=...`,
      `UPDATE HallSale1 SET Advance=...`,
      `SELECT Sum(AmtCr) FROM PayCharge WHERE ContraDocid='...'`

Live DB (Moondata2627) evidence:
  PayCharge  VType: IPOS 4900, BMM 3380, BMTC 2522, RC 1364, ADRES 44 ...
  PayChargeH VType: AD 10827, AR 135, IDC 117
  Voucher_Prefix rows present for ADRES / AD / AR / REC / RPV (FY 2026).
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

# VB6 column lists (designer/insert evidence)
PAYCHARGE_COLS = (
    "DocId, SNo, VType, VNo, Site_Code, VPrefix, VDate, VTime, GuestProf, "
    "EmpCode, CompCode, Comments, PayCode, PayType, BillAmount, AmtCr, "
    "AmtDr, TipAmt, RoomCat, RoomType, RoomNo, FolioNo, CardNo, CardHolder, "
    "ChqNo, ChqDate, ExpDate, U_Name, U_EntDt, U_AE, RestCode, DbtChkIn, "
    "BatchNo, LogSite_Code, TaxStru, RefNo, RefDocId, ContraDocID")


def _s(v) -> str:
    return ("" if v is None else str(v)).strip()


def _f(v) -> float:
    try:
        return float(v or 0)
    except (TypeError, ValueError):
        return 0.0


def make_docid(vtype: str, vprefix: str, vno: int) -> str:
    """21-char VB6 DocId: D + site(2) + type.ljust(6) + prefix(4) + vno.rjust(8)."""
    return ("D" + SITE_CODE + str(vtype).ljust(6) + str(vprefix).ljust(4)
            + str(vno).rjust(8))[:21]


def prefix_for(vtype: str, cn=None) -> str:
    """Voucher_Prefix.Prefix for VType (site-filtered); fallback Analysis.ini."""
    rows = db.query(
        "SELECT TOP 1 Prefix FROM Voucher_Prefix WHERE V_Type = ? "
        "AND Site_Code = ?", (vtype, SITE_CODE), cn=cn)
    return _s(rows[0][0]) if rows and rows[0][0] else db.get_vprefix()


def next_vno(vtype: str, table: str = "PayCharge", cn=None) -> int:
    """Race-safe MAX(VNo)+1 (BUG-015 pattern) - VB6 Automatic numbering."""
    vprefix = prefix_for(vtype, cn=cn)
    col = "Vtype" if table.lower() == "paycharge" else "VType"
    rows = db.query(
        f"SELECT ISNULL(MAX(VNo), 0) FROM [{table}] WITH (UPDLOCK, HOLDLOCK) "
        f"WHERE [{col}] = ? AND VPrefix = ? AND Site_Code = ?",
        (vtype, vprefix, SITE_CODE), cn=cn)
    return int((rows[0][0] if rows else 0) or 0) + 1


# ------------------------------------------------------------------ pay codes
def rev_pay_codes(cn=None) -> list[dict]:
    """VB6 frmAdvanceDepDialog loc_13A25CF: SELECT Code, Name, PayType
    FROM RevMast Where PayType<>'Hold' and (LOGSITE_CODE='<site>'
    or LOGSITE_CODE='HO') and FieldType='P' ORDER BY Name."""
    out = []
    for r in db.query(
            "SELECT Code, Name, PayType FROM RevMast "
            "WHERE PayType <> 'Hold' "
            "AND (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Name",
            (SITE_CODE,), cn=cn):
        try:
            out.append({"code": _s(r[0]), "name": _s(r[1]),
                        "paytype": _s(r[2])})
        except (IndexError, TypeError):
            out.append({"code": _s(r.Code), "name": _s(r.Name),
                        "paytype": _s(r.PayType)})
    return out


def outlet_pay_codes(restcode: str, cn=None) -> list[dict]:
    """VB6 rsTouchScreenAdvanceDepDialog: DepartPay LEFT JOIN RevMast
    (outlet ke payment modes).  Live DB: 14 codes dono me."""
    out = []
    for r in db.query(
            "SELECT DP.PayCode, ISNULL(R.Name, '') AS Name, "
            "ISNULL(R.PayType, '') AS PayType "
            "FROM DepartPay DP LEFT OUTER JOIN RevMast R "
            "ON DP.PayCode = R.Code WHERE DP.LogSite_Code = ? "
            "AND DP.RestCode = ? ORDER BY R.Name",
            (SITE_CODE, restcode), cn=cn):
        try:
            out.append({"code": _s(r[0]), "name": _s(r[1]),
                        "paytype": _s(r[2])})
        except (IndexError, TypeError):
            out.append({"code": _s(r.PayCode), "name": _s(r.Name),
                        "paytype": _s(r.PayType)})
    if not out:  # outlet mapping khali ho to saare RevMast pay heads
        out = rev_pay_codes(cn=cn)
    return out


# -------------------------------------------------------------------- inserts
def paycharge_insert(rec: dict, cn=None, commit: bool = True) -> dict:
    """VB6 PayCharge insert (advance + settlement dono)."""
    if not _s(rec.get("docid")):
        raise ValueError("DocId zaroori hai")
    if _f(rec.get("amtcr")) <= 0 and _f(rec.get("amtdr")) <= 0:
        raise ValueError("Amount > 0 hona chahiye")
    sno = int(rec.get("sno") or 0)
    if not sno:
        rows = db.query(
            "SELECT ISNULL(MAX(SNo), 0) + 1 FROM PayCharge WHERE DocId = ?",
            (_s(rec["docid"]),), cn=cn)
        sno = int(rows[0][0] if rows else 1)
    vprefix = _s(rec.get("vprefix")) or prefix_for(
        _s(rec.get("vtype")), cn=cn)
    db.execute(
        "INSERT INTO PayCharge (DocId, SNo, VType, VNo, Site_Code, "
        "VPrefix, VDate, VTime, GuestProf, EmpCode, CompCode, Comments, "
        "PayCode, PayType, BillAmount, AmtCr, AmtDr, TipAmt, RoomCat, "
        "RoomType, RoomNo, FolioNo, CardNo, CardHolder, ChqNo, ChqDate, "
        "ExpDate, U_Name, U_EntDt, U_AE, RestCode, DbtChkIn, BatchNo, "
        "LogSite_Code, TaxStru, RefNo, RefDocId, ContraDocID) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
        "?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?, ?, ?, ?, ?, ?)",
        (_s(rec["docid"]), sno, _s(rec.get("vtype")),
         int(rec.get("vno") or 0), SITE_CODE, vprefix, rec.get("vdate"),
         _s(rec.get("vtime")), _s(rec.get("guestprof")),
         _s(rec.get("empcode")), _s(rec.get("compcode")),
         _s(rec.get("comments"))[:255], _s(rec.get("paycode")),
         _s(rec.get("paytype")), _f(rec.get("billamount")),
         _f(rec.get("amtcr")), _f(rec.get("amtdr")), _f(rec.get("tipamt")),
         _s(rec.get("roomcat")), _s(rec.get("roomtype")),
         _s(rec.get("roomno")), int(rec.get("foliono") or 0),
         _s(rec.get("cardno")), _s(rec.get("cardholder")),
         _s(rec.get("chqno")), rec.get("chqdate"), rec.get("expdate"),
         USER, SITE_CODE, _s(rec.get("restcode")) or "FOM", "N", 0,
         SITE_CODE, _s(rec.get("taxstru")), int(rec.get("refno") or 0),
         _s(rec.get("refdocid")), _s(rec.get("contradocid"))),
        cn=cn, commit=commit)
    return {"docid": _s(rec["docid"]), "sno": sno}


def paychargeh_insert(rec: dict, cn=None, commit: bool = True) -> dict:
    """VB6 POSAdvanceDepDialog loc_19A7A3A - PayChargeH (header-level advance)."""
    if not _s(rec.get("docid")):
        raise ValueError("DocId zaroori hai")
    if _f(rec.get("amtcr")) <= 0 and _f(rec.get("amtdr")) <= 0:
        raise ValueError("Amount > 0 hona chahiye")
    sno = int(rec.get("sno") or 1)
    vprefix = _s(rec.get("vprefix")) or prefix_for(
        _s(rec.get("vtype")), cn=cn)
    db.execute(
        "INSERT INTO PayChargeH (DocId, SNo, VType, VNo, Site_Code, "
        "VPrefix, VDate, VTime, GuestProf, EmpCode, CompCode, Comments, "
        "PayCode, PayType, AmtCr, AmtDr, TipAmt, FPNo, CardNo, CardHolder, "
        "ChqNo, ChqDate, TxnNo, ExpDate, U_Name, U_EntDt, U_AE, RestCode, "
        "ContraDocID, BillAmount, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
        "?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?, ?, ?)",
        (_s(rec["docid"]), sno, _s(rec.get("vtype")),
         int(rec.get("vno") or 0), SITE_CODE, vprefix, rec.get("vdate"),
         _s(rec.get("vtime")), _s(rec.get("guestprof")),
         _s(rec.get("empcode")), _s(rec.get("compcode")),
         _s(rec.get("comments"))[:250], _s(rec.get("paycode")),
         _s(rec.get("paytype")), _f(rec.get("amtcr")), _f(rec.get("amtdr")),
         _f(rec.get("tipamt")), int(rec.get("fpno") or 0),
         _s(rec.get("cardno")), _s(rec.get("cardholder")),
         _s(rec.get("chqno")), rec.get("chqdate"), _s(rec.get("txnno")),
         rec.get("expdate"), USER, SITE_CODE, _s(rec.get("restcode")),
         _s(rec.get("contradocid")), _f(rec.get("billamount")), SITE_CODE),
        cn=cn, commit=commit)
    return {"docid": _s(rec["docid"]), "sno": sno}


# -------------------------------------------------------------------- reads
def paid_against_ref(refdocid: str, cn=None) -> dict:
    """VB6: Select count(*) / sum(AmtCr) From PayCharge Where RefDocid=..."""
    rows = db.query(
        "SELECT COUNT(*), ISNULL(SUM(AmtCr), 0) FROM PayCharge "
        "WHERE RefDocId = ?", (_s(refdocid),), cn=cn)
    r = rows[0] if rows else (0, 0)
    return {"count": int(r[0] or 0), "amount": _f(r[1])}


def paid_against_contra(contra: str, cn=None) -> dict:
    """VB6 POSAdvanceDepDialog: SELECT Sum(AmtCr) FROM PayCharge
    WHERE ContraDocid='...'"""
    rows = db.query(
        "SELECT COUNT(*), ISNULL(SUM(AmtCr), 0) FROM PayCharge "
        "WHERE ContraDocID = ?", (_s(contra),), cn=cn)
    r = rows[0] if rows else (0, 0)
    return {"count": int(r[0] or 0), "amount": _f(r[1])}


def occupied_rooms(cn=None) -> list[dict]:
    """VB6: Select T.Type+T.RoomCat+space(...)+Code ... From RoomMast T
    inner join RoomOcc on RoomOcc.RoomNo=T.Code.

    ChkOutDate IS NULL filter zaroori hai - live RoomOcc me 11002 rows
    hain par sirf 6 in-house (baaki purane check-outs)."""
    out = []
    for r in db.query(
            "SELECT LTrim(RTrim(T.Code)) AS Code, T.Name, T.Type, T.RoomCat, "
            "RO.FolioNo, ISNULL(RO.GuestProf, '') AS GuestProf "
            "FROM RoomMast T INNER JOIN RoomOcc RO ON RO.RoomNo = T.Code "
            "WHERE RO.ChkOutDate IS NULL "
            "ORDER BY LTrim(RTrim(T.Code))", cn=cn):
        try:
            out.append({"code": _s(r[0]), "name": _s(r[1]),
                        "type": _s(r[2]), "roomcat": _s(r[3]),
                        "foliono": int(r[4] or 0),
                        "guestprof": _s(r[5])})
        except (IndexError, TypeError, ValueError):
            continue
    return out


def reservations(cn=None, limit: int = 300) -> list[dict]:
    """Advance Deposit target - Booking rows (Guarantee flag VB6 updates).

    Live Booking: VType='RES', 19 rows, columns BookNo/GuestName/ResStatus
    (na VNo/PartyName/BookingStatus - wo VB6 ke aliased select the)."""
    out = []
    for r in db.query(
            f"SELECT TOP {int(limit)} DocId, BookNo, GuestName, "
            "ISNULL(ResStatus, '') AS ResStatus, "
            "ISNULL(Guarantee, '') AS Guarantee, VDate "
            "FROM Booking ORDER BY VDate DESC", cn=cn):
        try:
            out.append({"docid": _s(r[0]), "vno": r[1],
                        "party": _s(r[2]), "status": _s(r[3]),
                        "guarantee": _s(r[4]), "vdate": r[5]})
        except (IndexError, TypeError):
            continue
    return out


def open_pos_bills(restcode: str, cn=None, limit: int = 300) -> list[dict]:
    """VB6 Settlement Entry - baki hue POS bills (jinka settlement nahi hua)."""
    out = []
    for r in db.query(
            f"SELECT TOP {int(limit)} S.DocId, S.VNo, "
            "CONVERT(varchar(11), S.VDate, 103) AS VDate, S.CustName, "
            "S.NetAmt, ISNULL(P.Paid, 0) AS Paid, S.RestCode "
            "FROM Sale1 S LEFT JOIN (SELECT DocId, SUM(AmtCr) AS Paid "
            "FROM PayCharge GROUP BY DocId) P ON P.DocId = S.DocId "
            "WHERE S.DelFlag IN ('', 'N') AND S.RestCode = ? "
            "ORDER BY S.VNo DESC", (restcode,), cn=cn):
        try:
            out.append({"docid": _s(r[0]), "vno": r[1], "vdate": _s(r[2]),
                        "custname": _s(r[3]), "netamt": _f(r[4]),
                        "paid": _f(r[5]), "restcode": _s(r[6])})
        except (IndexError, TypeError):
            continue
    return out


def packing_orders(cn=None, limit: int = 300) -> list[dict]:
    """VB6 Order Booking Advance target - PackingOrder (AdvAmt)."""
    out = []
    for r in db.query(
            f"SELECT TOP {int(limit)} P.DocId, P.VNo, P.CustName, P.NetAmt, "
            "ISNULL(P.AdvAmt, 0) AS AdvAmt, P.RestCode, "
            "CONVERT(varchar(11), P.VDate, 103) AS VDate "
            "FROM PackingOrder P ORDER BY P.VNo DESC", cn=cn):
        try:
            out.append({"docid": _s(r[0]), "vno": r[1], "custname": _s(r[2]),
                        "netamt": _f(r[3]), "advamt": _f(r[4]),
                        "restcode": _s(r[5]), "vdate": _s(r[6])})
        except (IndexError, TypeError):
            continue
    return out


def hall_bookings(cn=None, limit: int = 300) -> list[dict]:
    """VB6 Order Booking Advance target - HallBook (Advance)."""
    out = []
    for r in db.query(
            f"SELECT TOP {int(limit)} DocId, VNo, PartyName, "
            "ISNULL(Advance, 0) AS Advance, ISNULL(NetAmount, 0) AS NetAmount, "
            "ISNULL(RestCode, '') AS RestCode, "
            "CONVERT(varchar(11), VDate, 103) AS VDate "
            "FROM HallBook ORDER BY VDate DESC", cn=cn):
        try:
            out.append({"docid": _s(r[0]), "vno": r[1], "party": _s(r[2]),
                        "advance": _f(r[3]), "netamt": _f(r[4]),
                        "restcode": _s(r[5]), "vdate": _s(r[6])})
        except (IndexError, TypeError):
            continue
    return out


def advance_receipts(vtype: str = "AD", cn=None, limit: int = 200) -> list[dict]:
    """VB6: SELECT Distinct Docid, VNo As Rect_No, ... FROM PayChargeH
    WHERE Vtype='..'"""
    out = []
    for r in db.query(
            f"SELECT TOP {int(limit)} DocId, VNo, "
            "CONVERT(varchar(11), VDate, 103) AS VDate, "
            "ISNULL(Comments, '') AS Comments, ISNULL(PayType, '') AS PayType, "
            "ISNULL(AmtCr, 0) AS AmtCr, ISNULL(ContraDocID, '') AS ContraDocID "
            "FROM PayChargeH WHERE VType = ? ORDER BY VNo DESC",
            (vtype,), cn=cn):
        try:
            out.append({"docid": _s(r[0]), "vno": r[1], "vdate": _s(r[2]),
                        "comments": _s(r[3]), "paytype": _s(r[4]),
                        "amtcr": _f(r[5]), "contradocid": _s(r[6])})
        except (IndexError, TypeError):
            continue
    return out


# ------------------------------------------------------------------ writes
def receive_advance(refdocid: str, amount: float, paycode: str, paytype: str,
                    vtype: str = "ADRES", vdate=None, comments: str = "",
                    roomno: str = "", roomcat: str = "", roomtype: str = "",
                    foliono: int = 0, guestprof: str = "", restcode: str = "",
                    set_guarantee: bool = True, cn=None,
                    commit: bool = True) -> dict:
    """VB6 frmAdvanceDepDialog save: PayCharge row + (reservation par)
    `Update Booking Set Guarantee='Y' where Docid=...`."""
    if amount <= 0:
        raise ValueError("Advance amount > 0 hona chahiye")
    if not str(paycode or "").strip():
        raise ValueError("PayCode zaroori hai")
    with db.transaction(cn) as conn:
        vprefix = prefix_for(vtype, cn=conn)
        vno = next_vno(vtype, "PayCharge", cn=conn)
        docid = make_docid(vtype, vprefix, vno)
        paycharge_insert({
            "docid": docid, "vtype": vtype, "vno": vno,
            "vprefix": vprefix, "vdate": vdate, "paycode": paycode,
            "paytype": paytype, "amtcr": amount, "billamount": amount,
            "comments": comments, "refdocid": refdocid, "roomno": roomno,
            "roomcat": roomcat, "roomtype": roomtype, "foliono": foliono,
            "guestprof": guestprof, "restcode": restcode,
        }, cn=conn, commit=False)
        if refdocid and set_guarantee:
            db.execute("UPDATE Booking SET Guarantee = 'Y' WHERE DocId = ?",
                       (refdocid,), cn=conn, commit=False)
    return {"docid": docid, "vno": vno, "amount": amount}


def settle_bill(bill: dict, payments: list[dict], vtype: str = "RPV",
                vdate=None, cn=None) -> dict:
    """VB6 rsTouchScreenAdvanceDepDialog save: ek POS bill ke against
    n PayCharge rows + `Update Sale1 Set Party=...`."""
    if not _s(bill.get("docid")):
        raise ValueError("Bill DocId zaroori hai")
    if not payments:
        raise ValueError("Kam se kam ek payment line chahiye")
    total = round(sum(_f(p.get("amtcr")) for p in payments), 2)
    if total <= 0:
        raise ValueError("Payment amount > 0 hona chahiye")
    with db.transaction(cn) as conn:
        vprefix = prefix_for(vtype, cn=conn)
        vno = next_vno(vtype, "PayCharge", cn=conn)
        docid = make_docid(vtype, vprefix, vno)
        for i, p in enumerate(payments, start=1):
            paycharge_insert({
                "docid": docid, "sno": i, "vtype": vtype, "vno": vno,
                "vprefix": vprefix, "vdate": vdate,
                "paycode": p.get("paycode"), "paytype": p.get("paytype"),
                "amtcr": _f(p.get("amtcr")), "billamount": total,
                "comments": p.get("comments", ""),
                "contradocid": _s(bill.get("docid")),
                "cardno": p.get("cardno", ""), "cardholder": "",
                "restcode": _s(bill.get("restcode")),
            }, cn=conn, commit=False)
        if _s(bill.get("custname")):
            db.execute("UPDATE Sale1 SET Party = ? WHERE DocId = ?",
                       (_s(bill["custname"]), _s(bill["docid"])),
                       cn=conn, commit=False)
    return {"docid": docid, "vno": vno, "total": total,
            "lines": len(payments)}


def receive_order_advance(target: dict, amount: float, paycode: str,
                          paytype: str, vtype: str = "AD", vdate=None,
                          comments: str = "", restcode: str = "",
                          cn=None) -> dict:
    """VB6 POSAdvanceDepDialog save: PayChargeH + PayCharge rows aur
    target ka advance counter badhana (PackingOrder.AdvAmt /
    HallBook.Advance)."""
    if amount <= 0:
        raise ValueError("Advance amount > 0 hona chahiye")
    if not _s(target.get("docid")):
        raise ValueError("Target DocId zaroori hai")
    table, col = ("PackingOrder", "AdvAmt") if target.get("kind") == "PO" \
        else ("HallBook", "Advance")
    contra = _s(target["docid"])
    with db.transaction(cn) as conn:
        vprefix = prefix_for(vtype, cn=conn)
        vno = next_vno(vtype, "PayChargeH", cn=conn)
        docid = make_docid(vtype, vprefix, vno)
        common = {"docid": docid, "vtype": vtype, "vno": vno,
                  "vprefix": vprefix, "vdate": vdate, "paycode": paycode,
                  "paytype": paytype, "comments": comments,
                  "contradocid": contra, "restcode": restcode}
        paychargeh_insert(dict(common, amtcr=amount, billamount=amount),
                          cn=conn, commit=False)
        paycharge_insert(dict(common, amtcr=amount, billamount=amount),
                         cn=conn, commit=False)
        db.execute(f"UPDATE [{table}] SET [{col}] = ISNULL([{col}], 0) + ? "
                   "WHERE DocId = ?", (amount, contra),
                   cn=conn, commit=False)
    return {"docid": docid, "vno": vno, "amount": amount,
            "already": paid_against_contra(contra, cn=cn)["amount"]}
