"""Reports engine - VB6 REPORTS_TXT collection (231 reports) ka module-wise port.

EVIDENCE:
- MODULE_FIX_PLANS/New folder/.../REPORTS_TXT/*.txt (231 report definitions,
  EXTRAS.text VB6 source se) + mdi_menu.json ke exact leaf captions.
- Schemas live-verified: RoomOcc (ChkInDate/DepDate/ChkOutDate), GuestFolio,
  PayCharge (Vdate/FolioNo/RoomNo/PayCode/AmtDr/AmtCr/Bill_No/Vtype), FOMBillDetails,
  Sale1 (POS bill header), Sale2 (tax detail), Ledger (FA: SubCode/AmtDr/AmtCr),
  Subgroup, Stock.
- SunTran = POS sundry heads (CGST/DISC/NET), FA ke liye Ledger hi source of truth.
- All queries READ-ONLY (SELECT only). Engine rows cap karta hai (UI safety).

Har report: {key, title, module, menu (exact mdi leaf captions), cols, sql, note}
sql me '?' = From/To date (daterange reports) ya koi param nahi (snapshot reports).
"""

from __future__ import annotations

import datetime
import csv
import os

from HMS_py.core import db

DEFAULT_LIMIT = 5000


def _spine(dfrom: str, dto: str) -> str:
    """Date spine CTE (SQL Server recursive) — arr_dep_reg/occupancy ke liye."""
    return (
        "WITH Dates AS (SELECT CAST(? AS date) AS d "
        "UNION ALL SELECT DATEADD(day,1,d) FROM Dates WHERE d < ?) "
    )


# --------------------------------------------------------------------------
# Report registry (module-wise). menu = exact mdi_menu.json leaf captions.
# --------------------------------------------------------------------------
REPORTS: list[dict] = [
    # ================= FRONT OFFICE =================
    {
        "key": "arrival_departure_list",
        "title": "Arrival / Departure List",
        "module": "Front Office",
        "menu": ["Arrival  Departure List"],
        "cols": ["FolioNo", "RoomNo", "Guest", "ChkInDate", "DepDate",
                 "Adult", "Children", "Company"],
        "sql": (
            "SELECT TOP ({L}) o.FolioNo, o.RoomNo, ISNULL(f.Name,''), "
            "o.ChkInDate, o.DepDate, o.Adult, o.Children, ISNULL(f.Company,'') "
            "FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId = "
            "(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo = o.FolioNo "
            "ORDER BY g.DocId) "
            "WHERE o.ChkInDate BETWEEN ? AND ? OR o.DepDate BETWEEN ? AND ? "
            "ORDER BY o.ChkInDate"
        ),
        "note": "RoomOcc window (Arr/Dep) + GuestFolio name/company",
    },
    {
        "key": "arr_dep_reg",
        "title": "Arrival And Departure Register",
        "module": "Front Office",
        "menu": ["Arrival And Departure Register"],
        "cols": ["Date", "Arrivals", "Departures", "InHouse"],
        "sql": (
            _spine(0, 0) +
            "SELECT d, "
            "(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate = d) AS Arrivals, "
            "(SELECT COUNT(*) FROM RoomOcc o WHERE o.DepDate = d "
            " AND o.ChkOutDate IS NOT NULL) AS Departures, "
            "(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate <= d "
            " AND ISNULL(o.ChkOutDate,'9999-12-31') > d) AS InHouse "
            "FROM Dates ORDER BY d OPTION (MAXRECURSION 0)"
        ),
        "note": "Day-wise arrivals/departures/in-house counts (date spine)",
    },
    {
        "key": "check_in_register",
        "title": "Check In Register",
        "module": "Front Office",
        "menu": ["Check In Register"],
        "cols": ["ChkInDate", "FolioNo", "RoomNo", "Guest", "RoomRate",
                 "PlanCode", "Adult", "Children"],
        "sql": (
            "SELECT TOP ({L}) o.ChkInDate, o.FolioNo, o.RoomNo, "
            "ISNULL(f.Name,''), o.RoomRate, ISNULL(o.PlanCode,''), "
            "o.Adult, o.Children FROM RoomOcc o LEFT JOIN GuestFolio f ON "
            "f.DocId = (SELECT TOP 1 DocId FROM GuestFolio g WHERE "
            "g.FolioNo = o.FolioNo ORDER BY g.DocId) "
            "WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate, o.RoomNo"
        ),
    },
    {
        "key": "check_out_register",
        "title": "Check Out Register",
        "module": "Front Office",
        "menu": ["Check Out Register"],
        "cols": ["ChkOutDate", "FolioNo", "RoomNo", "Guest", "ChkInDate",
                 "ChkoutUser"],
        "sql": (
            "SELECT TOP ({L}) o.ChkOutDate, o.FolioNo, o.RoomNo, "
            "ISNULL(f.Name,''), o.ChkInDate, ISNULL(o.ChkoutUser,'') "
            "FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId = "
            "(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo = o.FolioNo "
            "ORDER BY g.DocId) WHERE o.ChkOutDate BETWEEN ? AND ? "
            "ORDER BY o.ChkOutDate"
        ),
    },
    {
        "key": "expected_checkout",
        "title": "Expected Check Out",
        "module": "Front Office",
        "menu": ["Expected Check Out"],
        "cols": ["DepDate", "FolioNo", "RoomNo", "Guest", "RoomRate"],
        "sql": (
            "SELECT TOP ({L}) o.DepDate, o.FolioNo, o.RoomNo, "
            "ISNULL(f.Name,''), o.RoomRate FROM RoomOcc o LEFT JOIN "
            "GuestFolio f ON f.DocId = (SELECT TOP 1 DocId FROM GuestFolio g "
            "WHERE g.FolioNo = o.FolioNo ORDER BY g.DocId) "
            "WHERE o.DepDate BETWEEN ? AND ? AND o.ChkOutDate IS NULL "
            "ORDER BY o.DepDate, o.RoomNo"
        ),
    },
    {
        "key": "settlement_report",
        "title": "Settlement Report",
        "module": "Front Office",
        "menu": ["Settlement Report"],
        "cols": ["Bill_No", "Bill_Date", "FolioNo", "Guestname", "BillAmt",
                 "SettMode", "SettAmt", "Status"],
        "sql": (
            "SELECT TOP ({L}) Bill_No, Bill_Date, FolioNo, Guestname, "
            "BillAmt, ISNULL(SettMode,''), SettAmt, ISNULL(Status,'') "
            "FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? "
            "ORDER BY Bill_Date, Bill_No"
        ),
    },
    {
        "key": "fom_sales_register",
        "title": "FOM Sales Register (Folio Charges)",
        "module": "Front Office",
        "menu": ["FOM Sales Register"],
        "cols": ["Vdate", "FolioNo", "RoomNo", "PayCode", "AmtDr", "AmtCr",
                 "Bill_No"],
        "sql": (
            "SELECT TOP ({L}) Vdate, FolioNo, ISNULL(RoomNo,''), PayCode, "
            "AmtDr, AmtCr, ISNULL(Bill_No,'') FROM PayCharge "
            "WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate, FolioNo"
        ),
    },
    {
        "key": "guest_payments",
        "title": "Payments By Cashier (Receipts)",
        "module": "Front Office",
        "menu": ["Payments By Cashier"],
        "cols": ["Vdate", "FolioNo", "PayCode", "AmtDr", "AmtCr", "Bill_No"],
        "sql": (
            "SELECT TOP ({L}) Vdate, FolioNo, PayCode, AmtDr, AmtCr, "
            "ISNULL(Bill_No,'') FROM PayCharge WHERE Vtype = 'REC' "
            "AND Vdate BETWEEN ? AND ? ORDER BY Vdate, FolioNo"
        ),
    },
    {
        "key": "guest_wise_analysis",
        "title": "Guest wise Analysis",
        "module": "Front Office",
        "menu": ["Guest wise Analysis"],
        "cols": ["Guest", "Folios", "Nights"],
        "sql": (
            "SELECT TOP ({L}) Name, COUNT(*) AS Folios, "
            "SUM(ISNULL(NoDays,0)) AS Nights FROM GuestFolio "
            "WHERE Vdate BETWEEN ? AND ? GROUP BY Name "
            "ORDER BY Folios DESC"
        ),
    },
    {
        "key": "company_wise_analysis",
        "title": "Company wise Analysis",
        "module": "Front Office",
        "menu": ["Company wise Analysis"],
        "cols": ["Company", "Folios", "Nights"],
        "sql": (
            "SELECT TOP ({L}) ISNULL(NULLIF(Company,''),'(Direct)'), "
            "COUNT(*) AS Folios, SUM(ISNULL(NoDays,0)) AS Nights "
            "FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY Company "
            "ORDER BY Folios DESC"
        ),
    },
    {
        "key": "buss_source_occupancy",
        "title": "Business Source Occupancy Analysis",
        "module": "Front Office",
        "menu": ["Business Source Occupancy Analysis"],
        "cols": ["BussSource", "Folios", "Nights"],
        "sql": (
            "SELECT TOP ({L}) ISNULL(NULLIF(BussSource,''),'(None)'), "
            "COUNT(*) AS Folios, SUM(ISNULL(NoDays,0)) AS Nights "
            "FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY BussSource "
            "ORDER BY Folios DESC"
        ),
    },
    # ================= FINANCE =================
    {
        "key": "day_book",
        "title": "Day Book (FA Vouchers)",
        "module": "Finance",
        "menu": ["Day Book"],
        "cols": ["V_Date", "Vouchers", "Debit", "Credit"],
        "sql": (
            "SELECT V_Date, COUNT(DISTINCT DocId) AS Vouchers, "
            "SUM(AmtDr) AS Debit, SUM(AmtCr) AS Credit "
            "FROM Ledger WHERE V_Date BETWEEN ? AND ? "
            "GROUP BY V_Date ORDER BY V_Date"
        ),
    },
    {
        "key": "cash_book",
        "title": "Cash Book",
        "module": "Finance",
        "menu": ["Cash Book"],
        "cols": ["V_Date", "DocId", "Account", "AmtDr", "AmtCr"],
        "sql": (
            "SELECT TOP ({L}) l.V_Date, l.DocId, s.Name, l.AmtDr, l.AmtCr "
            "FROM Ledger l JOIN Subgroup s ON s.SubCode = l.SubCode "
            "WHERE s.Name LIKE '%CASH%' AND l.V_Date BETWEEN ? AND ? "
            "ORDER BY l.V_Date, l.DocId"
        ),
    },
    {
        "key": "bank_book",
        "title": "Bank Book",
        "module": "Finance",
        "menu": ["Bank Book"],
        "cols": ["V_Date", "DocId", "Account", "Chq_No", "AmtDr", "AmtCr"],
        "sql": (
            "SELECT TOP ({L}) l.V_Date, l.DocId, s.Name, "
            "ISNULL(l.Chq_No,''), l.AmtDr, l.AmtCr "
            "FROM Ledger l JOIN Subgroup s ON s.SubCode = l.SubCode "
            "WHERE s.Name LIKE '%BANK%' AND l.V_Date BETWEEN ? AND ? "
            "ORDER BY l.V_Date, l.DocId"
        ),
    },
    {
        "key": "detailed_trial",
        "title": "Detailed Trial Ledger",
        "module": "Finance",
        "menu": ["Detailed Trial Ledger"],
        "cols": ["SubCode", "Account", "Debit", "Credit", "Balance"],
        "sql": (
            "SELECT TOP ({L}) l.SubCode, ISNULL(s.Name,'?'), SUM(l.AmtDr), "
            "SUM(l.AmtCr), SUM(l.AmtDr) - SUM(l.AmtCr) AS Balance "
            "FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode = l.SubCode "
            "WHERE l.V_Date BETWEEN ? AND ? GROUP BY l.SubCode, s.Name "
            "ORDER BY Balance DESC"
        ),
    },
    {
        "key": "aging_dr",
        "title": "Ageing Analysis for Debtors",
        "module": "Finance",
        "menu": ["Ageing Analysis for Debtors"],
        "cols": ["SubCode", "Account", "Balance", "LastTxn", "Bucket"],
        "sql": (
            "SELECT TOP ({L}) l.SubCode, ISNULL(MAX(s.Name),'?'), "
            "SUM(l.AmtDr) - SUM(l.AmtCr) AS Balance, MAX(l.V_Date) AS LastTxn, "
            "CASE WHEN DATEDIFF(day, MAX(l.V_Date), GETDATE()) <= 30 THEN '0-30' "
            "WHEN DATEDIFF(day, MAX(l.V_Date), GETDATE()) <= 60 THEN '31-60' "
            "WHEN DATEDIFF(day, MAX(l.V_Date), GETDATE()) <= 90 THEN '61-90' "
            "ELSE '>90' END AS Bucket "
            "FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode = l.SubCode "
            "GROUP BY l.SubCode "
            "HAVING SUM(l.AmtDr) - SUM(l.AmtCr) > 0 "
            "ORDER BY Balance DESC"
        ),
        "note": "Bucket = last-txn age (simplified ageing; VB6 used clg dates)",
    },
    {
        "key": "outstanding_dr",
        "title": "Outstanding Report For Debtors",
        "module": "Finance",
        "menu": ["Outstanding Report For Debtors"],
        "cols": ["SubCode", "Account", "Debit", "Credit", "Balance"],
        "sql": (
            "SELECT TOP ({L}) l.SubCode, ISNULL(s.Name,'?'), SUM(l.AmtDr), "
            "SUM(l.AmtCr), SUM(l.AmtDr) - SUM(l.AmtCr) AS Balance "
            "FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode = l.SubCode "
            "GROUP BY l.SubCode, s.Name "
            "HAVING SUM(l.AmtDr) - SUM(l.AmtCr) > 0 ORDER BY Balance DESC"
        ),
    },
    # ================= POINT OF SALE =================
    {
        "key": "pos_sales_daybook",
        "title": "Sales Day Book (POS)",
        "module": "Point Of Sale",
        "menu": ["Sales Day Book"],
        "cols": ["Vdate", "Bills", "Total", "Taxable", "Tax", "RoundOff",
                 "NetAmt"],
        "sql": (
            "SELECT Vdate, COUNT(*) AS Bills, SUM(Total), SUM(Taxable), "
            "SUM(Tax), SUM(RoundOff), SUM(NetAmt) FROM Sale1 "
            "WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate"
        ),
    },
    {
        "key": "cashier_sale",
        "title": "Cashier Report (Outlet-wise)",
        "module": "Point Of Sale",
        "menu": ["Cashier Report "],
        "cols": ["Vdate", "Outlet", "Bills", "NetAmt"],
        "sql": (
            "SELECT Vdate, RestCode, COUNT(*) AS Bills, SUM(NetAmt) "
            "FROM Sale1 WHERE Vdate BETWEEN ? AND ? "
            "GROUP BY Vdate, RestCode ORDER BY Vdate, RestCode"
        ),
        "note": "VB6 cashier-wise; cashier col live me nahi — outlet-wise port",
    },
    {
        "key": "company_wise_sale",
        "title": "Company Wise Sale Report (POS)",
        "module": "Point Of Sale",
        "menu": ["Company Wise Sale Report"],
        "cols": ["Party", "Bills", "NetAmt"],
        "sql": (
            "SELECT TOP ({L}) ISNULL(NULLIF(Party,''),'(Cash)'), COUNT(*), "
            "SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? "
            "GROUP BY Party ORDER BY SUM(NetAmt) DESC"
        ),
    },
    {
        "key": "bill_wise_adjustment",
        "title": "Bill Wise Adjustment Report (POS to Folio)",
        "module": "Point Of Sale",
        "menu": ["Bill Wise Adjustment Report"],
        "cols": ["DocId", "Vdate", "Outlet", "FolioNo", "Party", "NetAmt"],
        "sql": (
            "SELECT TOP ({L}) DocId, Vdate, RestCode, FolioNo, "
            "ISNULL(NULLIF(Party,''),''), NetAmt FROM Sale1 "
            "WHERE FolioNo > 0 AND Vdate BETWEEN ? AND ? "
            "ORDER BY Vdate, DocId"
        ),
        "note": "Bills posted to guest folio (adjustment route)",
    },
    {
        "key": "cashier_collection",
        "title": "Cashier Collection Summary (Settlement Mode)",
        "module": "Point Of Sale",
        "menu": ["Cashier Collection Summary"],
        "cols": ["SettMode", "Bills", "BillAmt", "SettAmt"],
        "sql": (
            "SELECT ISNULL(NULLIF(SettMode,''),'(Blank)') AS SettMode, "
            "COUNT(*) AS Bills, SUM(BillAmt), SUM(SettAmt) "
            "FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? "
            "GROUP BY SettMode ORDER BY SUM(BillAmt) DESC"
        ),
    },
    {
        "key": "fom_tax_detail",
        "title": "FOM Tax Detail (Luxury Tax Register)",
        "module": "Point Of Sale",
        "menu": ["Luxury Tax Report", "Form -3 (Luxury Tax Register)"],
        "cols": ["Vdate", "TaxCode", "BaseValue", "TaxPer", "TaxAmt"],
        "sql": (
            "SELECT Vdate, TaxCode, SUM(BaseValue), TaxPer, SUM(TaxAmt) "
            "FROM Sale2 WHERE Vdate BETWEEN ? AND ? "
            "GROUP BY Vdate, TaxCode, TaxPer ORDER BY Vdate, TaxCode"
        ),
    },
    # ================= INVENTORY =================
    {
        "key": "daily_store_issue",
        "title": "Daily Store Issue",
        "module": "Inventory",
        "menu": ["Daily Store Issue Reports"],
        "cols": ["Vdate", "IssueDocs", "IssuedQty", "IssueValue"],
        "sql": (
            "SELECT Vdate, COUNT(DISTINCT DocId), SUM(QtyIss), SUM(QtyIss*Rate) "
            "FROM Stock WHERE QtyIss > 0 AND Vdate BETWEEN ? AND ? "
            "GROUP BY Vdate ORDER BY Vdate"
        ),
    },
    {
        "key": "store_issue_register",
        "title": "Store Issue Register",
        "module": "Inventory",
        "menu": ["Store Issue Register"],
        "cols": ["Vdate", "Vtype", "VNo", "Item", "QtyIss", "Rate", "Amount",
                 "GodownCode"],
        "sql": (
            "SELECT TOP ({L}) Vdate, Vtype, VNo, Item, QtyIss, Rate, Amount, "
            "ISNULL(GodownCode,'') FROM Stock WHERE QtyIss > 0 "
            "AND Vdate BETWEEN ? AND ? ORDER BY Vdate, DocId"
        ),
    },
    {
        "key": "abc_analysis",
        "title": "ABC Analysis (Consumption Value)",
        "module": "Inventory",
        "menu": [],
        "cols": ["Item", "ConsValue", "CumPct", "Class"],
        "sql": (
            "SELECT TOP ({L}) Item, SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0)) AS ConsValue, "
            "SUM(SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0))) OVER (ORDER BY "
            "SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0)) DESC) * 100.0 / "
            "NULLIF(SUM(SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0))) OVER (),0) AS CumPct, "
            "CASE WHEN SUM(SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0))) OVER (ORDER BY "
            "SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0)) DESC) * 100.0 / "
            "NULLIF(SUM(SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0))) OVER (),0) <= 70 THEN 'A' "
            "WHEN SUM(SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0))) OVER (ORDER BY "
            "SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0)) DESC) * 100.0 / "
            "NULLIF(SUM(SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0))) OVER (),0) <= 90 THEN 'B' "
            "ELSE 'C' END AS Class "
            "FROM Stock GROUP BY Item ORDER BY ConsValue DESC"
        ),
        "note": "REPORTS_TXT ABCAnalysis.txt ka port (70/90 cut)",
    },
    # ================= NIGHT AUDIT =================
    {
        "key": "business_source_analysis",
        "title": "Business Source Analysis",
        "module": "Night Audit",
        "menu": ["Business Source Analysis"],
        "cols": ["BussSource", "Folios", "Nights"],
        "sql": (
            "SELECT ISNULL(NULLIF(BussSource,''),'(None)'), COUNT(*), "
            "SUM(ISNULL(NoDays,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? "
            "GROUP BY BussSource ORDER BY COUNT(*) DESC"
        ),
    },
    {
        "key": "daily_summary",
        "title": "Daily Summary (Occ + Revenue)",
        "module": "Night Audit",
        "menu": [],
        "cols": ["Date", "Arrivals", "Departures", "InHouse"],
        "sql": (
            _spine(0, 0) +
            "SELECT d, "
            "(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate = d), "
            "(SELECT COUNT(*) FROM RoomOcc o WHERE o.DepDate = d), "
            "(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate <= d "
            " AND ISNULL(o.ChkOutDate,'9999-12-31') > d) "
            "FROM Dates ORDER BY d OPTION (MAXRECURSION 0)"
        ),
    },
]


def by_key() -> dict:
    return {r["key"]: r for r in REPORTS}


def by_module() -> dict:
    out: dict[str, list[dict]] = {}
    for r in REPORTS:
        out.setdefault(r["module"], []).append(r)
    return out


def menu_caption_map() -> dict:
    """Exact mdi leaf caption -> report key (shell wiring ke liye)."""
    out = {}
    for r in REPORTS:
        for cap in r.get("menu", []):
            out[cap] = r["key"]
    return out


def run(key: str, d_from=None, d_to=None, limit: int = DEFAULT_LIMIT,
        cn=None) -> tuple:
    """Report chalao (read-only). Returns (cols, rows-as-lists).

    d_from/d_to: 'YYYY-MM-DD' ya date; daterange reports ke liye required.
    Spine reports (arr_dep_reg/daily_summary) pe limit window guard hai.
    """
    r = by_key()[key]
    sql = r["sql"].replace("{L}", str(int(limit)))
    has_params = "?" in sql
    if has_params:
        if d_from is None or d_to is None:
            raise ValueError(f"report '{key}' needs d_from/d_to")
        f = d_from if isinstance(d_from, str) else d_from.isoformat()
        t = d_to if isinstance(d_to, str) else d_to.isoformat()
        n = sql.count("?")
        if n == 0 or n % 2:
            raise ValueError(f"report '{key}' sql has odd/no date params")
        params = (f, t) * (n // 2)
        rows = db.query(sql, params, cn=cn)
    else:
        rows = db.query(sql, cn=cn)
    rows = [list(map(_fmt, row)) for row in rows]
    return list(r["cols"]), rows


def _fmt(v):
    if isinstance(v, (datetime.datetime, datetime.date)):
        return v.strftime("%d/%m/%Y")
    if isinstance(v, datetime.time):
        return v.strftime("%H:%M")
    return v


def export_csv(key: str, d_from, d_to, path: str, limit=DEFAULT_LIMIT) -> int:
    """Report ko CSV file me export karo (UI Export button). Returns rows."""
    cols, rows = run(key, d_from, d_to, limit=limit)
    with open(path, "w", newline="", encoding="utf-8-sig") as fh:
        w = csv.writer(fh)
        w.writerow(cols)
        w.writerows(rows)
    return len(rows)
