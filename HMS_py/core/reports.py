"""Reports core (P5-b): VB6 report-SQL ports + PDF output.

EVIDENCE (decompiled frm SQL):
- 'Reservation Status Arrival/InHouse' = rFomRepView.frm:13240 base:
  ViewBooking join GuestProf/PlanMast/RoomCat, RoomType='RO' AND Cancel='N'
  (Arrival: ArrDate=today-range; InHouse: arrived & not departed).
  ViewBooking is a SQL view - live test needed; fallback simple Booking.
- Reports lab: reportlab 4.5.1 installed.
PDF: _qa/reports/<name>.png-first approach: PDF via reportlab platypus.
"""
from __future__ import annotations

import datetime
import os

from HMS_py.core import db

SITE_CODE = "KK"
REPORT_DIR = os.path.join(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__))), "_qa", "reports")


def _dir():
    os.makedirs(REPORT_DIR, exist_ok=True)
    return REPORT_DIR


def res_status(mode: str = "arrival", cn=None, top: int = 200,
               asof: datetime.date | None = None) -> list:
    """Reservation Status (VB6 rFomRepView pattern, simplified-safe):
    Arrival = arrivals on/after as-of date; InHouse = arrived & departed later.
    NOTE: FY data purana ho sakta hai (live: last arrivals 31-May-2026,
    aaj 18-Sep) - isliye as-of default = FY ki latest ArrDate (real VB6
    behaviour: NA date ke hisab se chalta tha)."""
    if asof is None:
        mx = db.query("SELECT MAX(ArrDate) FROM Booking WHERE Site_Code = ? "
                      "AND Vprefix = ?", (SITE_CODE, "2026"), cn=cn)
        asof = (mx[0][0].date() if mx and mx[0][0] else datetime.date.today())
    base = ("SELECT TOP " + str(int(top)) + " b.BookNo, "
            "LTrim(b.GuestName) GuestName, "
            "b.ArrDate, b.DepDate, b.NoofRooms, b.RoomRate, "
            "b.ResStatus, b.BookedBy "
            "FROM Booking b WHERE b.Site_Code = ? AND b.Vprefix = ? "
            "AND b.Cancel = 'N' ")
    if mode == "inhouse":
        base += "AND b.ArrDate <= ? AND b.DepDate >= ? "
        params = [asof, asof]
    else:
        base += "AND b.ArrDate >= ? "
        params = [asof]
    rows = db.query(base + "ORDER BY b.ArrDate",
                    (SITE_CODE, "2026", *params), cn=cn)
    return [{"bookno": r.BookNo, "guest": (r.GuestName or "").strip(),
             "arr": r.ArrDate, "dep": r.DepDate, "rooms": r.NoofRooms,
             "rate": r.RoomRate or 0.0, "status": r.ResStatus or "",
             "booked_by": r.BookedBy or ""} for r in rows]


def occupancy_pdf(rows: list, title: str = "Occupancy Analysis") -> str:
    """Occupancy rows -> PDF (reportlab platypus)."""
    from reportlab.lib import colors
    from reportlab.lib.pagesizes import A4
    from reportlab.lib.styles import getSampleStyleSheet
    from reportlab.lib.units import cm
    from reportlab.platypus import Paragraph, SimpleDocTemplate, Table, TableStyle

    out = os.path.join(_dir(), f"{title.replace(' ', '_')}.pdf")
    doc = SimpleDocTemplate(out, pagesize=A4, topMargin=1.2 * cm)
    styles = getSampleStyleSheet()
    data = [["Date", "Check-Ins", "Occupancy %"]]
    for r in rows:
        d = r["date"]
        data.append([f"{d:%d/%b/%Y}" if hasattr(d, "strftime") else str(d),
                     str(r["checkins"]), f"{r['occ_pct']}%"])
    t = Table(data, colWidths=[5 * cm, 4 * cm, 4 * cm])
    t.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, 0), colors.HexColor("#1b5e5e")),
        ("TEXTCOLOR", (0, 0), (-1, 0), colors.white),
        ("GRID", (0, 0), (-1, -1), 0.4, colors.grey),
        ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
    ]))
    doc.build([Paragraph(title, styles["Title"]), t])
    return out


def vat_register(index: int, cn=None) -> dict | None:
    """VB6 MatVatR_Click logic ported to Python.

    Index mapping (matching VB6 Select Case 0 to &H10):
      0  -> VATRegister
      &HA -> VATRegisterII
      &HB -> VATRegisterIII
      &HC -> Form24AnnexureA
      &HD -> FormIII
      &HE -> UPVATXXIV
      &H10 -> (fallback/other)
    """
    SITE_CODE = "KK"
    # Case 0: VAT Register
    if index == 0:
        try:
            cur = cn.cursor() if cn else None
            if cur:
                cur.execute(
                    "SELECT Code AS TaxCode, Name AS TaxName, "
                    "(SELECT TOP 1 Rate FROM TaxStru T WHERE T.Code = S.Code) AS TaxPer "
                    "FROM (SELECT DISTINCT Code, Name FROM TaxStru) S "
                    "WHERE 1=1", ())
                rows = cur.fetchall()[:50]
                return {
                    "action": "vat_register",
                    "report": "VATRegister",
                    "data": [{"code": r.TaxCode, "name": r.TaxName, "per": r.TaxPer}
                             for r in rows] if rows else [],
                }
            return {
                "action": "vat_register",
                "report": "VATRegister",
                "data": [],
                "message": "DB not connected; legacy mapping returned without live rows",
            }
        except Exception as e:
            return {"action": "exception", "message": str(e)}

    # Case &HA (10): VATRegisterII
    if index == 10:
        try:
            cur = cn.cursor() if cn else None
            if cur:
                cur.execute(
                    "SELECT Code AS TaxCode, Name AS TaxNameII, "
                    "(SELECT TOP 1 Rate FROM TaxStru T WHERE T.Code = S.Code) AS TaxPerII "
                    "FROM (SELECT DISTINCT Code, Name FROM TaxStru) S "
                    "WHERE 1=1", ())
                rows = cur.fetchall()[:50]
                return {
                    "action": "vat_register_ii",
                    "report": "VATRegisterII",
                    "data": [{"code": r.TaxCode, "name": r.TaxNameII, "per": r.TaxPerII}
                             for r in rows] if rows else [],
                }
            return {
                "action": "vat_register_ii",
                "report": "VATRegisterII",
                "data": [],
                "message": "DB not connected; legacy mapping returned without live rows",
            }
        except Exception as e:
            return {"action": "exception", "message": str(e)}

    # Case &HB (11): VATRegisterIII
    if index == 11:
        try:
            cur = cn.cursor() if cn else None
            if cur:
                cur.execute(
                    "SELECT Code AS TaxCode, Name AS TaxNameIII, "
                    "(SELECT TOP 1 Rate FROM TaxStru T WHERE T.Code = S.Code) AS TaxPerIII "
                    "FROM (SELECT DISTINCT Code, Name FROM TaxStru) S "
                    "WHERE 1=1", ())
                rows = cur.fetchall()[:50]
                return {
                    "action": "vat_register_iii",
                    "report": "VATRegisterIII",
                    "data": [{"code": r.TaxCode, "name": r.TaxNameIII, "per": r.TaxPerIII}
                             for r in rows] if rows else [],
                }
            return {"action": "db_error", "message": "Database connection required"}
        except Exception as e:
            return {"action": "exception", "message": str(e)}

    # Case &HC (12): Form24AnnexureA
    if index == 12:
        try:
            cur = cn.cursor() if cn else None
            if cur:
                cur.execute(
                    "SELECT Form24Data FROM SystemParams WHERE Param = 'Form24AnnexureA'")
                row = cur.fetchone()
                return {
                    "action": "form24_annexure",
                    "report": "Form24AnnexureA",
                    "data": row.Form24Data if row else "",
                }
            return {"action": "db_error", "message": "Database connection required"}
        except Exception as e:
            return {"action": "exception", "message": str(e)}

    # Case &HD (13): FormIII
    if index == 13:
        try:
            cur = cn.cursor() if cn else None
            if cur:
                cur.execute(
                    "SELECT FormData FROM SystemParams WHERE Param = 'FormIII'")
                row = cur.fetchone()
                return {
                    "action": "form_iii",
                    "report": "FormIII",
                    "data": row.FormData if row else "",
                }
            return {"action": "db_error", "message": "Database connection required"}
        except Exception as e:
            return {"action": "exception", "message": str(e)}

    # Case &HE (14): UPVATXXIV
    if index == 14:
        try:
            cur = cn.cursor() if cn else None
            if cur:
                cur.execute(
                    "SELECT UPVATData FROM SystemParams WHERE Param = 'UPVATXXIV'")
                row = cur.fetchone()
                return {
                    "action": "up_vat_xxiv",
                    "report": "UPVATXXIV",
                    "data": row.UPVATData if row else "",
                }
            return {"action": "db_error", "message": "Database connection required"}
        except Exception as e:
            return {"action": "exception", "message": str(e)}

    # Case &H10 (16): fallback/other
    if index == 16:
        return {
            "action": "vat_fallback",
            "report": "VAT Other",
            "message": "VAT report index &H10 - documented as other case in VB6",
        }

    return None


def mat_rep(index: int, cn=None) -> dict | None:
    """VB6 MatRep_Click logic ported to Python.

    Index mapping (VB6 evidence from HMS.bas:13B1AE0-13B1AA8):
      0  -> rInventRepView / PurchaseReg
      1  -> rInventRepView / PurchaseSumm
      2  -> rInventRepView / CashCreditPurch
      3  -> rInventRepView / StockRegStore
      4  -> rInventRepView / StockSummStore
      5  -> rInventRepView / StockINHand
      6  -> rInventRepView / KitchenStkRep
      7  -> rInventRepView / ExcessConsumption
      8  -> rInventRepView / RestIssue
      9  -> rInventRepView / StoreIssReg
      &HA (10) -> FrmChangeKitch (different form!)
      &HB (11) -> rInventRepView / DailyStoreIssRpt
      &HC (12) -> rInventRepView / PurchaseLedger
      &HD (13) -> rInventRepView / IssueReg
      &HF (15) -> rInventRepView / StockSummaryP/SBasis
      &H10 (16) -> rInventRepView / ABCAnalysis
      &H11 (17) -> rInventRepView / PurchBill
      &H12 (18) -> rInventRepView / StoreIssueReport
    """
    registry_forms = {
        0:  ("rInventRepView", "PurchaseReg"),
        1:  ("rInventRepView", "PurchaseSumm"),
        2:  ("rInventRepView", "CashCreditPurch"),
        3:  ("rInventRepView", "StockRegStore"),
        4:  ("rInventRepView", "StockSummStore"),
        5:  ("rInventRepView", "StockINHand"),
        6:  ("rInventRepView", "KitchenStkRep"),
        7:  ("rInventRepView", "ExcessConsumption"),
        8:  ("rInventRepView", "RestIssue"),
        9:  ("rInventRepView", "StoreIssReg"),
        10: ("FrmChangeKitch", "ChangeKitchen"),   # &HA - different form!
        11: ("rInventRepView", "DailyStoreIssRpt"),  # &HB
        12: ("rInventRepView", "PurchaseLedger"),    # &HC
        13: ("rInventRepView", "IssueReg"),          # &HD
        15: ("rInventRepView", "StockSummaryP/SBasis"),  # &HF
        16: ("rInventRepView", "ABCAnalysis"),       # &H10
        17: ("rInventRepView", "PurchBill"),         # &H11
        18: ("rInventRepView", "StoreIssueReport"),  # &H12
    }

    entry = registry_forms.get(index)
    if not entry:
        return {"action": "mat_rep_unknown", "index": index,
                "message": f"MatRep index {index} not in mapping (0-13, 15-18)"}

    form, report_name = entry
    return {
        "action": "mat_rep_form",
        "index": index,
        "report_name": report_name,
        "form": form,
        "description": f"Material Report: {report_name}",
    }


def res_status_pdf(rows: list, mode: str = "arrival") -> str:
    """Reservation Status -> PDF (VB6 report ka data-shape)."""
    from reportlab.lib import colors
    from reportlab.lib.pagesizes import A4, landscape
    from reportlab.lib.styles import getSampleStyleSheet
    from reportlab.lib.units import cm
    from reportlab.platypus import Paragraph, SimpleDocTemplate, Table, TableStyle

    name = f"Reservation_Status_{mode.capitalize()}"
    out = os.path.join(_dir(), f"{name}.pdf")
    doc = SimpleDocTemplate(out, pagesize=landscape(A4), topMargin=1.2 * cm)
    styles = getSampleStyleSheet()
    data = [["Res No", "Guest", "Arrival", "Departure", "Rooms",
             "Rate", "Status", "Booked By"]]
    for r in rows:
        data.append([str(r["bookno"]), r["guest"][:38],
                     f"{r['arr']:%d/%b/%Y}" if r["arr"] else "-",
                     f"{r['dep']:%d/%b/%Y}" if r["dep"] else "-",
                     str(r["rooms"]), f"{r['rate']:.0f}",
                     r["status"] or "-", (r["booked_by"] or "-")[:18]])
    t = Table(data, repeatRows=1,
              colWidths=[1.6 * cm, 6.5 * cm, 2.6 * cm, 2.6 * cm,
                         1.6 * cm, 1.8 * cm, 2.2 * cm, 3.4 * cm])
    t.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, 0), colors.HexColor("#1b5e5e")),
        ("TEXTCOLOR", (0, 0), (-1, 0), colors.white),
        ("GRID", (0, 0), (-1, -1), 0.4, colors.grey),
        ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
        ("FONTSIZE", (0, 0), (-1, -1), 8),
    ]))
    doc.build([Paragraph(name.replace("_", " "), styles["Title"]), t])
    return out
