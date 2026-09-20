"""Reports engine - VB6 REPORTS_TXT collection (258 reports) ka module-wise port.

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
    """Date spine CTE (SQL Server recursive) - arr_dep_reg/occupancy ke liye."""
    return (
        "WITH Dates AS (SELECT CAST(? AS date) AS d "
        "UNION ALL SELECT DATEADD(day,1,d) FROM Dates WHERE d < ?) "
    )


# --------------------------------------------------------------------------
# Report registry (module-wise). menu = exact mdi_menu.json leaf captions.
# --------------------------------------------------------------------------
REPORTS: list[dict] = [
        {
            "key": "arrival_departure_list",
            "title": "Arrival / Departure List",
            "module": "Front Office",
            "menu": ["Arrival  Departure List"],
            "cols": ["FolioNo", "RoomNo", "Guest", "ChkInDate", "DepDate", "Adult", "Children", "Company"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo, o.RoomNo, ISNULL(f.Name,''), o.ChkInDate, o.DepDate, o.Adult, o.Children, ISNULL(f.Company,'') FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId = (SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo = o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? OR o.DepDate BETWEEN ? AND ? ORDER BY o.ChkInDate"
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
                "WITH Dates AS (SELECT CAST(? AS date) AS d UNION ALL SELECT DATEADD(day,1,d) FROM Dates WHERE d < ?) SELECT d, (SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate = d) AS Arrivals, (SELECT COUNT(*) FROM RoomOcc o WHERE o.DepDate = d  AND o.ChkOutDate IS NOT NULL) AS Departures, (SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate <= d  AND ISNULL(o.ChkOutDate,'99991231') > d) AS InHouse FROM Dates ORDER BY d OPTION (MAXRECURSION 0)"
            ),
            "note": "Day-wise arrivals/departures/in-house counts (date spine)",
        },
        {
            "key": "check_in_register",
            "title": "Check In Register",
            "module": "Front Office",
            "menu": ["Check In Register"],
            "cols": ["ChkInDate", "FolioNo", "RoomNo", "Guest", "RoomRate", "PlanCode", "Adult", "Children"],
            "sql": (
                "SELECT TOP ({L}) o.ChkInDate, o.FolioNo, o.RoomNo, ISNULL(f.Name,''), o.RoomRate, ISNULL(o.PlanCode,''), o.Adult, o.Children FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId = (SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo = o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate, o.RoomNo"
            ),
        },
        {
            "key": "check_out_register",
            "title": "Check Out Register",
            "module": "Front Office",
            "menu": ["Check Out Register"],
            "cols": ["ChkOutDate", "FolioNo", "RoomNo", "Guest", "ChkInDate", "ChkoutUser"],
            "sql": (
                "SELECT TOP ({L}) o.ChkOutDate, o.FolioNo, o.RoomNo, ISNULL(f.Name,''), o.ChkInDate, ISNULL(o.ChkoutUser,'') FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId = (SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo = o.FolioNo ORDER BY g.DocId) WHERE o.ChkOutDate BETWEEN ? AND ? ORDER BY o.ChkOutDate"
            ),
        },
        {
            "key": "expected_checkout",
            "title": "Expected Check Out",
            "module": "Front Office",
            "menu": ["Expected Check Out"],
            "cols": ["DepDate", "FolioNo", "RoomNo", "Guest", "RoomRate"],
            "sql": (
                "SELECT TOP ({L}) o.DepDate, o.FolioNo, o.RoomNo, ISNULL(f.Name,''), o.RoomRate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId = (SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo = o.FolioNo ORDER BY g.DocId) WHERE o.DepDate BETWEEN ? AND ? AND o.ChkOutDate IS NULL ORDER BY o.DepDate, o.RoomNo"
            ),
        },
        {
            "key": "settlement_report",
            "title": "Settlement Report",
            "module": "Front Office",
            "menu": ["Settlement Report"],
            "cols": ["Bill_No", "Bill_Date", "FolioNo", "Guestname", "BillAmt", "SettMode", "SettAmt", "Status"],
            "sql": (
                "SELECT TOP ({L}) Bill_No, Bill_Date, FolioNo, Guestname, BillAmt, ISNULL(SettMode,''), SettAmt, ISNULL(Status,'') FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? ORDER BY Bill_Date, Bill_No"
            ),
        },
        {
            "key": "fom_sales_register",
            "title": "FOM Sales Register (Folio Charges)",
            "module": "Front Office",
            "menu": ["FOM Sales Register"],
            "cols": ["Vdate", "FolioNo", "RoomNo", "PayCode", "AmtDr", "AmtCr", "Bill_No"],
            "sql": (
                "SELECT TOP ({L}) Vdate, FolioNo, ISNULL(RoomNo,''), PayCode, AmtDr, AmtCr, ISNULL(Bill_No,'') FROM PayCharge WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate, FolioNo"
            ),
        },
        {
            "key": "guest_payments",
            "title": "Payments By Cashier (Receipts)",
            "module": "Front Office",
            "menu": ["Payments By Cashier"],
            "cols": ["Vdate", "FolioNo", "PayCode", "AmtDr", "AmtCr", "Bill_No"],
            "sql": (
                "SELECT TOP ({L}) Vdate, FolioNo, PayCode, AmtDr, AmtCr, ISNULL(Bill_No,'') FROM PayCharge WHERE Vtype = 'REC' AND Vdate BETWEEN ? AND ? ORDER BY Vdate, FolioNo"
            ),
        },
        {
            "key": "guest_wise_analysis",
            "title": "Guest wise Analysis",
            "module": "Front Office",
            "menu": ["Guest wise Analysis"],
            "cols": ["Guest", "Folios", "Nights"],
            "sql": (
                "SELECT TOP ({L}) Name, COUNT(*) AS Folios, SUM(ISNULL(NoDays,0)) AS Nights FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY Name ORDER BY Folios DESC"
            ),
        },
        {
            "key": "company_wise_analysis",
            "title": "Company wise Analysis",
            "module": "Front Office",
            "menu": ["Company wise Analysis"],
            "cols": ["Company", "Folios", "Nights"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(NULLIF(Company,''),'(Direct)'), COUNT(*) AS Folios, SUM(ISNULL(NoDays,0)) AS Nights FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY Company ORDER BY Folios DESC"
            ),
        },
        {
            "key": "buss_source_occupancy",
            "title": "Business Source Occupancy Analysis",
            "module": "Front Office",
            "menu": ["Business Source Occupancy Analysis"],
            "cols": ["BussSource", "Folios", "Nights"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(NULLIF(BussSource,''),'(None)'), COUNT(*) AS Folios, SUM(ISNULL(NoDays,0)) AS Nights FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY BussSource ORDER BY Folios DESC"
            ),
        },
        {
            "key": "day_book",
            "title": "Day Book (FA Vouchers)",
            "module": "Finance",
            "menu": ["Day Book"],
            "cols": ["V_Date", "Vouchers", "Debit", "Credit"],
            "sql": (
                "SELECT V_Date, COUNT(DISTINCT DocId) AS Vouchers, SUM(AmtDr) AS Debit, SUM(AmtCr) AS Credit FROM Ledger WHERE V_Date BETWEEN ? AND ? GROUP BY V_Date ORDER BY V_Date"
            ),
        },
        {
            "key": "cash_book",
            "title": "Cash Book",
            "module": "Finance",
            "menu": ["Cash Book"],
            "cols": ["V_Date", "DocId", "Account", "AmtDr", "AmtCr"],
            "sql": (
                "SELECT TOP ({L}) l.V_Date, l.DocId, s.Name, l.AmtDr, l.AmtCr FROM Ledger l JOIN Subgroup s ON s.SubCode = l.SubCode WHERE s.Name LIKE '%CASH%' AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date, l.DocId"
            ),
        },
        {
            "key": "bank_book",
            "title": "Bank Book",
            "module": "Finance",
            "menu": ["Bank Book"],
            "cols": ["V_Date", "DocId", "Account", "Chq_No", "AmtDr", "AmtCr"],
            "sql": (
                "SELECT TOP ({L}) l.V_Date, l.DocId, s.Name, ISNULL(l.Chq_No,''), l.AmtDr, l.AmtCr FROM Ledger l JOIN Subgroup s ON s.SubCode = l.SubCode WHERE s.Name LIKE '%BANK%' AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date, l.DocId"
            ),
        },
        {
            "key": "detailed_trial",
            "title": "Detailed Trial Ledger",
            "module": "Finance",
            "menu": ["Detailed Trial Ledger"],
            "cols": ["SubCode", "Account", "Debit", "Credit", "Balance"],
            "sql": (
                "SELECT TOP ({L}) l.SubCode, ISNULL(s.Name,'?'), SUM(l.AmtDr), SUM(l.AmtCr), SUM(l.AmtDr) - SUM(l.AmtCr) AS Balance FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode = l.SubCode WHERE l.V_Date BETWEEN ? AND ? GROUP BY l.SubCode, s.Name ORDER BY Balance DESC"
            ),
        },
        {
            "key": "aging_dr",
            "title": "Ageing Analysis for Debtors",
            "module": "Finance",
            "menu": ["Ageing Analysis for Debtors"],
            "cols": ["SubCode", "Account", "Balance", "LastTxn", "Bucket"],
            "sql": (
                "SELECT TOP ({L}) l.SubCode, ISNULL(MAX(s.Name),'?'), SUM(l.AmtDr) - SUM(l.AmtCr) AS Balance, MAX(l.V_Date) AS LastTxn, CASE WHEN DATEDIFF(day, MAX(l.V_Date), GETDATE()) <= 30 THEN '0-30' WHEN DATEDIFF(day, MAX(l.V_Date), GETDATE()) <= 60 THEN '31-60' WHEN DATEDIFF(day, MAX(l.V_Date), GETDATE()) <= 90 THEN '61-90' ELSE '>90' END AS Bucket FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode = l.SubCode GROUP BY l.SubCode HAVING SUM(l.AmtDr) - SUM(l.AmtCr) > 0 ORDER BY Balance DESC"
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
                "SELECT TOP ({L}) l.SubCode, ISNULL(s.Name,'?'), SUM(l.AmtDr), SUM(l.AmtCr), SUM(l.AmtDr) - SUM(l.AmtCr) AS Balance FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode = l.SubCode GROUP BY l.SubCode, s.Name HAVING SUM(l.AmtDr) - SUM(l.AmtCr) > 0 ORDER BY Balance DESC"
            ),
        },
        {
            "key": "pos_sales_daybook",
            "title": "Sales Day Book (POS)",
            "module": "Point Of Sale",
            "menu": ["Sales Day Book"],
            "cols": ["Vdate", "Bills", "Total", "Taxable", "Tax", "RoundOff", "NetAmt"],
            "sql": (
                "SELECT Vdate, COUNT(*) AS Bills, SUM(Total), SUM(Taxable), SUM(Tax), SUM(RoundOff), SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate"
            ),
        },
        {
            "key": "cashier_sale",
            "title": "Cashier Report (Outlet-wise)",
            "module": "Point Of Sale",
            "menu": ["Cashier Report "],
            "cols": ["Vdate", "Outlet", "Bills", "NetAmt"],
            "sql": (
                "SELECT Vdate, RestCode, COUNT(*) AS Bills, SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate, RestCode ORDER BY Vdate, RestCode"
            ),
            "note": "VB6 cashier-wise; cashier col live me nahi \u2014 outlet-wise port",
        },
        {
            "key": "company_wise_sale",
            "title": "Company Wise Sale Report (POS)",
            "module": "Point Of Sale",
            "menu": ["Company Wise Sale Report"],
            "cols": ["Party", "Bills", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(NULLIF(Party,''),'(Cash)'), COUNT(*), SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Party ORDER BY SUM(NetAmt) DESC"
            ),
        },
        {
            "key": "bill_wise_adjustment",
            "title": "Bill Wise Adjustment Report (POS to Folio)",
            "module": "Point Of Sale",
            "menu": ["Bill Wise Adjustment Report"],
            "cols": ["DocId", "Vdate", "Outlet", "FolioNo", "Party", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) DocId, Vdate, RestCode, FolioNo, ISNULL(NULLIF(Party,''),''), NetAmt FROM Sale1 WHERE FolioNo > 0 AND Vdate BETWEEN ? AND ? ORDER BY Vdate, DocId"
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
                "SELECT ISNULL(NULLIF(SettMode,''),'(Blank)') AS SettMode, COUNT(*) AS Bills, SUM(BillAmt), SUM(SettAmt) FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? GROUP BY SettMode ORDER BY SUM(BillAmt) DESC"
            ),
        },
        {
            "key": "fom_tax_detail",
            "title": "FOM Tax Detail (Luxury Tax Register)",
            "module": "Point Of Sale",
            "menu": ["Luxury Tax Report", "Form -3 (Luxury Tax Register)"],
            "cols": ["Vdate", "TaxCode", "BaseValue", "TaxPer", "TaxAmt"],
            "sql": (
                "SELECT Vdate, TaxCode, SUM(BaseValue), TaxPer, SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate, TaxCode, TaxPer ORDER BY Vdate, TaxCode"
            ),
        },
        {
            "key": "daily_store_issue",
            "title": "Daily Store Issue",
            "module": "Inventory",
            "menu": ["Daily Store Issue Reports"],
            "cols": ["Vdate", "IssueDocs", "IssuedQty", "IssueValue"],
            "sql": (
                "SELECT Vdate, COUNT(DISTINCT DocId), SUM(QtyIss), SUM(QtyIss*Rate) FROM Stock WHERE QtyIss > 0 AND Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate"
            ),
        },
        {
            "key": "store_issue_register",
            "title": "Store Issue Register",
            "module": "Inventory",
            "menu": ["Store Issue Register"],
            "cols": ["Vdate", "Vtype", "VNo", "Item", "QtyIss", "Rate", "Amount", "GodownCode"],
            "sql": (
                "SELECT TOP ({L}) Vdate, Vtype, VNo, Item, QtyIss, Rate, Amount, ISNULL(GodownCode,'') FROM Stock WHERE QtyIss > 0 AND Vdate BETWEEN ? AND ? ORDER BY Vdate, DocId"
            ),
        },
        {
            "key": "abc_analysis",
            "title": "ABC Analysis (Consumption Value)",
            "module": "Inventory",
            "menu": [],
            "cols": ["Item", "ConsValue", "CumPct", "Class"],
            "sql": (
                "WITH Cons AS (SELECT Item, SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0)) AS ConsValue FROM Stock GROUP BY Item) SELECT TOP ({L}) c.Item, c.ConsValue, (SELECT SUM(c2.ConsValue) FROM Cons c2  WHERE c2.ConsValue >= c.ConsValue) * 100.0 / NULLIF((SELECT SUM(ConsValue) FROM Cons), 0) AS CumPct, CASE WHEN (SELECT SUM(c2.ConsValue) FROM Cons c2  WHERE c2.ConsValue >= c.ConsValue) * 100.0 / NULLIF((SELECT SUM(ConsValue) FROM Cons), 0) <= 70 THEN 'A' WHEN (SELECT SUM(c2.ConsValue) FROM Cons c2  WHERE c2.ConsValue >= c.ConsValue) * 100.0 / NULLIF((SELECT SUM(ConsValue) FROM Cons), 0) <= 90 THEN 'B' ELSE 'C' END AS Class FROM Cons c ORDER BY c.ConsValue DESC"
            ),
            "note": "REPORTS_TXT ABCAnalysis.txt ka port (70/90 cut); running-total SQL2008R2-compatible (correlated subquery)",
        },
        {
            "key": "business_source_analysis",
            "title": "Business Source Analysis",
            "module": "Night Audit",
            "menu": ["Business Source Analysis"],
            "cols": ["BussSource", "Folios", "Nights"],
            "sql": (
                "SELECT ISNULL(NULLIF(BussSource,''),'(None)'), COUNT(*), SUM(ISNULL(NoDays,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY BussSource ORDER BY COUNT(*) DESC"
            ),
        },
        {
            "key": "daily_summary",
            "title": "Daily Summary (Occ + Revenue)",
            "module": "Night Audit",
            "menu": [],
            "cols": ["Date", "Arrivals", "Departures", "InHouse"],
            "sql": (
                "WITH Dates AS (SELECT CAST(? AS date) AS d UNION ALL SELECT DATEADD(day,1,d) FROM Dates WHERE d < ?) SELECT d, (SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate = d), (SELECT COUNT(*) FROM RoomOcc o WHERE o.DepDate = d), (SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate <= d  AND ISNULL(o.ChkOutDate,'99991231') > d) FROM Dates ORDER BY d OPTION (MAXRECURSION 0)"
            ),
        },
        {
            "key": "ArrDepReg",
            "title": "Arrival And Departure Register",
            "module": "Front Office",
            "menu": ["Arrival And Departure Register"],
            "cols": ["Date", "Arrivals", "Departures", "InHouse"],
            "sql": (
                "WITH Dates AS (SELECT CAST(? AS date) AS d UNION ALL SELECT DATEADD(day,1,d) FROM Dates WHERE d < ?) SELECT d,(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate=d),(SELECT COUNT(*) FROM RoomOcc o WHERE o.DepDate=d AND o.ChkOutDate IS NOT NULL),(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate<=d AND ISNULL(o.ChkOutDate,'9999-12-31')>d) FROM Dates ORDER BY d OPTION (MAXRECURSION 0)"
            ),
            "note": "Date spine CTE",
        },
        {
            "key": "ArrivalDepList",
            "title": "Arrival / Departure List",
            "module": "Front Office",
            "menu": ["Arrival & Departure List"],
            "cols": ["FolioNo", "RoomNo", "Guest", "ChkInDate", "DepDate", "Adult", "Children", "Company"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),o.ChkInDate,o.DepDate,o.Adult,o.Children,ISNULL(f.Company,'') FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? OR o.DepDate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "AttendanceRep",
            "title": "Attendance Report",
            "module": "Front Office",
            "menu": ["Attendance Report"],
            "cols": ["EmpCode", "EmpName", "Date", "Status"],
            "sql": "SELECT TOP ({L}) Code,Name,Vdate,ISNULL(Status,'') FROM Attendance WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate",
            "note": "Attendance VB6",
        },
        {
            "key": "BirthMarrRep",
            "title": "Birth/Anniversary Report",
            "module": "Front Office",
            "menu": ["Guest BirthDates/Anniversary"],
            "cols": ["Guest", "BirthDate", "Anniversary", "Company"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Name,''),ISNULL(BirthDate,''),ISNULL(Anniversary,''),ISNULL(Company,'') FROM GuestFolio WHERE Vdate BETWEEN ? AND ? ORDER BY BirthDate"
            ),
        },
        {
            "key": "BookingDetail",
            "title": "Booking Detail",
            "module": "Front Office",
            "menu": ["Booking Detail"],
            "cols": ["FolioNo", "RoomNo", "Guest", "ChkInDate", "DepDate", "Status"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),o.ChkInDate,o.DepDate,CASE WHEN o.ChkOutDate IS NULL THEN 'Active' ELSE 'CheckedOut' END FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "BussSourceOccupancyReport",
            "title": "Business Source Occupancy Analysis",
            "module": "Front Office",
            "menu": ["Business Source Occupancy Analysis"],
            "cols": ["BussSource", "Folios", "Nights"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(NULLIF(BussSource,''),'(None)'),COUNT(*),SUM(ISNULL(NoDays,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY BussSource ORDER BY COUNT(*) DESC"
            ),
        },
        {
            "key": "BusinessAnalysis",
            "title": "Business Analysis",
            "module": "Front Office",
            "menu": ["Business Analysis"],
            "cols": ["BussSource", "Folios", "Nights", "Revenue"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(NULLIF(BussSource,''),'(None)'),COUNT(*),SUM(ISNULL(NoDays,0)),SUM(ISNULL(RoomRevenue,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY BussSource ORDER BY COUNT(*) DESC"
            ),
        },
        {
            "key": "CheckedInGuestDtl",
            "title": "Checked In Guest Detail",
            "module": "Front Office",
            "menu": ["Checked In Guest Detail"],
            "cols": ["FolioNo", "RoomNo", "Guest", "ChkInDate", "DepDate", "RoomRate", "Adult", "Children"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),o.ChkInDate,o.DepDate,o.RoomRate,o.Adult,o.Children FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate<=? AND ISNULL(o.ChkOutDate,'9999-12-31')>? ORDER BY o.RoomNo"
            ),
        },
        {
            "key": "ChkInRegister",
            "title": "Check In Register",
            "module": "Front Office",
            "menu": ["Check In Register"],
            "cols": ["ChkInDate", "FolioNo", "RoomNo", "Guest", "RoomRate", "PlanCode", "Adult", "Children"],
            "sql": (
                "SELECT TOP ({L}) o.ChkInDate,o.FolioNo,o.RoomNo,ISNULL(f.Name,''),o.RoomRate,ISNULL(o.PlanCode,''),o.Adult,o.Children FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate,o.RoomNo"
            ),
        },
        {
            "key": "CompanyAnalysis",
            "title": "Company wise Analysis",
            "module": "Front Office",
            "menu": ["Company wise Analysis"],
            "cols": ["Company", "Folios", "Nights"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(NULLIF(Company,''),'(Direct)'),COUNT(*),SUM(ISNULL(NoDays,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY Company ORDER BY COUNT(*) DESC"
            ),
        },
        {
            "key": "CompanySumm",
            "title": "Company Summary (Nights)",
            "module": "Front Office",
            "menu": ["Company wise Nights"],
            "cols": ["Company", "Folios", "Nights"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(NULLIF(Company,''),'(Direct)'),COUNT(*),SUM(ISNULL(NoDays,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY Company ORDER BY SUM(ISNULL(NoDays,0)) DESC"
            ),
        },
        {
            "key": "ComplaintList",
            "title": "Complaint List",
            "module": "Front Office",
            "menu": ["Complaint Detail"],
            "cols": ["RoomNo", "Complaint", "Status", "Date"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(RoomNo,''),ISNULL(Complaint,''),ISNULL(Status,''),Vdate FROM Complaints WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate"
            ),
            "note": "Complaints table VB6",
        },
        {
            "key": "DailyReport",
            "title": "Night Audit Report",
            "module": "Front Office",
            "menu": ["Daily Report "],
            "cols": ["Date", "Arrivals", "Departures", "InHouse"],
            "sql": (
                "WITH Dates AS (SELECT CAST(? AS date) AS d UNION ALL SELECT DATEADD(day,1,d) FROM Dates WHERE d < ?) SELECT d,(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate=d),(SELECT COUNT(*) FROM RoomOcc o WHERE o.DepDate=d),(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate<=d AND ISNULL(o.ChkOutDate,'9999-12-31')>d) FROM Dates ORDER BY d OPTION (MAXRECURSION 0)"
            ),
        },
        {
            "key": "DaysForecastRep",
            "title": "7-Day Forecast",
            "module": "Front Office",
            "menu": ["7-730 Days Forecast"],
            "cols": ["Date", "ExpectedArrivals", "ExpectedDepartures", "ProjectedOccupancy"],
            "sql": (
                "WITH Dates AS (SELECT CAST(? AS date) AS d UNION ALL SELECT DATEADD(day,1,d) FROM Dates WHERE d < ?) SELECT d,(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate=d),(SELECT COUNT(*) FROM RoomOcc o WHERE o.DepDate=d),(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate<=d AND ISNULL(o.ChkOutDate,'9999-12-31')>d) FROM Dates ORDER BY d OPTION (MAXRECURSION 0)"
            ),
        },
        {
            "key": "EpabxCallRep",
            "title": "EPABX Call Report",
            "module": "Front Office",
            "menu": ["EPBAX Call Report"],
            "cols": ["Vdate", "ExtNo", "CallType", "Duration", "Amount"],
            "sql": "SELECT TOP ({L}) Vdate,ExtNo,CallType,Duration,Amount FROM EPABXCalls WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate",
            "note": "EPABX table VB6",
        },
        {
            "key": "ExpectedDeparture",
            "title": "Expected Check Out",
            "module": "Front Office",
            "menu": ["Expected Check Out"],
            "cols": ["DepDate", "FolioNo", "RoomNo", "Guest", "RoomRate"],
            "sql": (
                "SELECT TOP ({L}) o.DepDate,o.FolioNo,o.RoomNo,ISNULL(f.Name,''),o.RoomRate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.DepDate BETWEEN ? AND ? AND o.ChkOutDate IS NULL ORDER BY o.DepDate,o.RoomNo"
            ),
        },
        {
            "key": "FOCC Report",
            "title": "FOCC Report",
            "module": "Front Office",
            "menu": ["FOCC Report"],
            "cols": ["Date", "Folios", "Nights", "RoomRevenue"],
            "sql": (
                "SELECT TOP ({L}) Vdate,COUNT(*),SUM(ISNULL(NoDays,0)),SUM(ISNULL(RoomRevenue,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate"
            ),
        },
        {
            "key": "FormC",
            "title": "Form C (Tourism)",
            "module": "Front Office",
            "menu": ["Form  C "],
            "cols": ["FolioNo", "RoomNo", "Guest", "Nationality", "PassportNo", "ChkInDate", "DepDate"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(f.Nationality,''),ISNULL(f.PassportNo,''),o.ChkInDate,o.DepDate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "FormCReport",
            "title": "Form C Report",
            "module": "Front Office",
            "menu": ["Form C Report"],
            "cols": ["FolioNo", "RoomNo", "Guest", "Nationality", "PassportNo"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(f.Nationality,''),ISNULL(f.PassportNo,'') FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "GRC",
            "title": "GRC (Guest Registration Card)",
            "module": "Front Office",
            "menu": ["GRC Printing"],
            "cols": ["FolioNo", "RoomNo", "Guest", "Company", "ChkInDate"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(f.Company,''),o.ChkInDate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "GuestBillDetails",
            "title": "Guest Bill Details",
            "module": "Front Office",
            "menu": ["Guest Bill Details"],
            "cols": ["Bill_No", "Bill_Date", "FolioNo", "Guestname", "BillAmt"],
            "sql": (
                "SELECT TOP ({L}) Bill_No,Bill_Date,FolioNo,Guestname,BillAmt FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? ORDER BY Bill_Date,Bill_No"
            ),
        },
        {
            "key": "GuestChargesMIS",
            "title": "Guestwise Charges Detail",
            "module": "Front Office",
            "menu": ["Guestwise Charges Detail"],
            "cols": ["FolioNo", "RoomNo", "PayCode", "AmtDr", "Vdate"],
            "sql": (
                "SELECT TOP ({L}) FolioNo,ISNULL(RoomNo,''),PayCode,AmtDr,Vdate FROM PayCharge WHERE Vdate BETWEEN ? AND ? ORDER BY FolioNo,Vdate"
            ),
        },
        {
            "key": "GuestInHouse",
            "title": "Guest In House",
            "module": "Front Office",
            "menu": ["Guest In House"],
            "cols": ["FolioNo", "RoomNo", "Guest", "ChkInDate", "DepDate", "RoomRate", "Company"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),o.ChkInDate,o.DepDate,o.RoomRate,ISNULL(f.Company,'') FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate<=? AND ISNULL(o.ChkOutDate,'9999-12-31')>? ORDER BY o.RoomNo"
            ),
        },
        {
            "key": "GuestObservRep",
            "title": "Guest Observation Report",
            "module": "Front Office",
            "menu": ["Guest Observation"],
            "cols": ["FolioNo", "RoomNo", "Guest", "Remarks", "Date"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(o.Remarks,''),o.ChkInDate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.Vdate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "GuestWiseAnalysis",
            "title": "Guest wise Analysis",
            "module": "Front Office",
            "menu": ["Guest wise Analysis"],
            "cols": ["Guest", "Folios", "Nights"],
            "sql": (
                "SELECT TOP ({L}) Name,COUNT(*),SUM(ISNULL(NoDays,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY Name ORDER BY COUNT(*) DESC"
            ),
        },
        {
            "key": "GuestwiseRevenue",
            "title": "Guestwise Revenue During Stay",
            "module": "Front Office",
            "menu": ["Revenue During the stay"],
            "cols": ["Guest", "FolioNo", "RoomNo", "Nights", "RoomRevenue", "TotalRevenue"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(f.Name,''),o.FolioNo,o.RoomNo,ISNULL(o.NoDays,0),ISNULL(o.RoomRevenue,0),ISNULL(o.RoomRevenue,0)+ISNULL(o.OtherRevenue,0) FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.Vdate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "HouseKeeping",
            "title": "House Keeping Report",
            "module": "Front Office",
            "menu": ["House Keeping Report"],
            "cols": ["RoomNo", "RoomType", "Status", "Remarks"],
            "sql": (
                "SELECT TOP ({L}) o.RoomNo,ISNULL(o.RoomType,''),CASE WHEN o.ChkOutDate IS NULL THEN 'Occupied' ELSE 'Vacant' END,ISNULL(o.Remarks,'') FROM RoomOcc o ORDER BY o.RoomNo"
            ),
        },
        {
            "key": "InsHouseCount",
            "title": "Instant House Count",
            "module": "Front Office",
            "menu": ["Instant House Count "],
            "cols": ["TotalRooms", "Occupied", "Vacant", "Arrivals", "Departures"],
            "sql": (
                "WITH Dates AS (SELECT CAST(? AS date) AS d UNION ALL SELECT DATEADD(day,1,d) FROM Dates WHERE d < ?) SELECT (SELECT COUNT(*) FROM RoomOcc),(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate<=d AND ISNULL(o.ChkOutDate,'9999-12-31')>d),(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate<=d AND ISNULL(o.ChkOutDate,'9999-12-31')>d),(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate=d),(SELECT COUNT(*) FROM RoomOcc o WHERE o.DepDate=d AND o.ChkOutDate IS NOT NULL) FROM Dates d ORDER BY d OPTION (MAXRECURSION 0)"
            ),
        },
        {
            "key": "MarketSegAnalysis",
            "title": "Market Segment Analysis",
            "module": "Front Office",
            "menu": ["Market Segment Analysis"],
            "cols": ["MarketSeg", "Folios", "Nights", "Revenue"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(NULLIF(MarketSeg,''),'(None)'),COUNT(*),SUM(ISNULL(NoDays,0)),SUM(ISNULL(RoomRevenue,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY MarketSeg ORDER BY COUNT(*) DESC"
            ),
        },
        {
            "key": "MemBirthAnnvDtls",
            "title": "Member Birthday/Anniversary Details",
            "module": "Front Office",
            "menu": ["Member Birthday/Anniversary Details"],
            "cols": ["Member", "BirthDate", "Anniversary", "Category"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Name,''),ISNULL(BirthDate,''),ISNULL(Anniversary,''),ISNULL(Category,'') FROM Members WHERE Vdate BETWEEN ? AND ? ORDER BY BirthDate"
            ),
            "note": "Members VB6",
        },
        {
            "key": "MemMalingLabels",
            "title": "Member Mailing Labels",
            "module": "Front Office",
            "menu": ["Member Mailing Labels"],
            "cols": ["Member", "Address", "City", "PinCode"],
            "sql": "SELECT TOP ({L}) ISNULL(Name,''),ISNULL(Address,''),ISNULL(City,''),ISNULL(PinCode,'') FROM Members ORDER BY Name",
            "note": "Members VB6",
        },
        {
            "key": "MemVisitDetail",
            "title": "Member Visit Detail",
            "module": "Front Office",
            "menu": ["Member Visit Detail"],
            "cols": ["Member", "VisitDate", "Facility", "Amount"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(MemberName,''),Vdate,ISNULL(Facility,''),AmtDr FROM MemberVisits WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate"
            ),
            "note": "MemberVisits VB6",
        },
        {
            "key": "MovementList",
            "title": "Movement List",
            "module": "Front Office",
            "menu": ["Movement List"],
            "cols": ["Date", "RoomNo", "Guest", "Type"],
            "sql": (
                "SELECT TOP ({L}) Vdate,ISNULL(RoomNo,''),ISNULL(GuestName,''),ISNULL(MoveType,'') FROM Movement WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate"
            ),
            "note": "Movement VB6",
        },
        {
            "key": "NightAuditReportI",
            "title": "Night Audit Report II",
            "module": "Front Office",
            "menu": ["Daily Report-II"],
            "cols": ["Date", "RoomRevenue", "FNBRevenue", "OtherRevenue"],
            "sql": (
                "SELECT TOP ({L}) Vdate,SUM(ISNULL(RoomRevenue,0)),SUM(ISNULL(FNBRevenue,0)),SUM(ISNULL(OtherRevenue,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate"
            ),
        },
        {
            "key": "OccupancyReport",
            "title": "Occupancy Report",
            "module": "Front Office",
            "menu": ["Occupancy Report"],
            "cols": ["Date", "Occupied"],
            "sql": (
                "WITH Dates AS (SELECT CAST(? AS date) AS d UNION ALL SELECT DATEADD(day,1,d) FROM Dates WHERE d < ?) SELECT d,(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate<=d AND ISNULL(o.ChkOutDate,'9999-12-31')>d) FROM Dates ORDER BY d OPTION (MAXRECURSION 0)"
            ),
        },
        {
            "key": "PackageForecast",
            "title": "Package Forecast",
            "module": "Front Office",
            "menu": ["Package Forecast "],
            "cols": ["Date", "Arrivals", "Departures", "InHouse"],
            "sql": (
                "WITH Dates AS (SELECT CAST(? AS date) AS d UNION ALL SELECT DATEADD(day,1,d) FROM Dates WHERE d < ?) SELECT d,(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate=d),(SELECT COUNT(*) FROM RoomOcc o WHERE o.DepDate=d),(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate<=d AND ISNULL(o.ChkOutDate,'9999-12-31')>d) FROM Dates ORDER BY d OPTION (MAXRECURSION 0)"
            ),
        },
        {
            "key": "PlanMealTokens",
            "title": "Plan Meal Tokens",
            "module": "Front Office",
            "menu": ["Plan Meal Tokens"],
            "cols": ["FolioNo", "RoomNo", "Guest", "PlanCode", "MealType"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(o.PlanCode,''),'' FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate<=? AND ISNULL(o.ChkOutDate,'9999-12-31')>? ORDER BY o.RoomNo"
            ),
        },
        {
            "key": "PlanPackSchedule",
            "title": "Plan Pack Schedule",
            "module": "Front Office",
            "menu": ["Expected Plan/Package F&&B Details"],
            "cols": ["FolioNo", "RoomNo", "Guest", "PlanCode", "DepDate"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(o.PlanCode,''),o.DepDate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.DepDate BETWEEN ? AND ? ORDER BY o.DepDate"
            ),
        },
        {
            "key": "PlanPackService",
            "title": "Plan Pack Service",
            "module": "Front Office",
            "menu": ["Plan Pack Service"],
            "cols": ["FolioNo", "RoomNo", "Guest", "PlanCode"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(o.PlanCode,'') FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate<=? AND ISNULL(o.ChkOutDate,'9999-12-31')>? ORDER BY o.RoomNo"
            ),
        },
        {
            "key": "PlanReport",
            "title": "Plan Report",
            "module": "Front Office",
            "menu": ["Plan Report"],
            "cols": ["PlanCode", "Folios", "Nights"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(NULLIF(PlanCode,''),'(None)'),COUNT(*),SUM(ISNULL(NoDays,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY PlanCode ORDER BY COUNT(*) DESC"
            ),
        },
        {
            "key": "RegisteredGuestDetail",
            "title": "Registered Guest Detail",
            "module": "Front Office",
            "menu": ["Registered Guest Detail"],
            "cols": ["FolioNo", "RoomNo", "Guest", "Company", "ChkInDate"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(f.Company,''),o.ChkInDate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "RegistrationCard",
            "title": "Registration Card",
            "module": "Front Office",
            "menu": ["Registration Card"],
            "cols": ["FolioNo", "RoomNo", "Guest", "Company", "Nationality", "ChkInDate", "DepDate"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(f.Company,''),ISNULL(f.Nationality,''),o.ChkInDate,o.DepDate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "ReservStatusArrival",
            "title": "Reservation Status - Arrival",
            "module": "Front Office",
            "menu": ["ReservStatusArrival"],
            "cols": ["FolioNo", "RoomNo", "Guest", "ChkInDate", "DepDate", "Status"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),o.ChkInDate,o.DepDate,CASE WHEN o.ChkOutDate IS NULL THEN 'Active' ELSE 'Out' END FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
            "note": "Reservation status arrival",
        },
        {
            "key": "ReservStatusInHouse",
            "title": "Reservation Status - In House",
            "module": "Front Office",
            "menu": ["ReservStatusInHouse"],
            "cols": ["FolioNo", "RoomNo", "Guest", "ChkInDate", "DepDate", "RoomRate"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),o.ChkInDate,o.DepDate,o.RoomRate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate<=? AND ISNULL(o.ChkOutDate,'9999-12-31')>? ORDER BY o.RoomNo"
            ),
            "note": "Reservation status in-house",
        },
        {
            "key": "RevAnalysis",
            "title": "Revenue Analysis",
            "module": "Front Office",
            "menu": ["Revenue Analysis"],
            "cols": ["Date", "RoomRevenue", "OtherRevenue", "TotalRevenue"],
            "sql": (
                "SELECT TOP ({L}) Vdate,SUM(ISNULL(RoomRevenue,0)),SUM(ISNULL(OtherRevenue,0)),SUM(ISNULL(RoomRevenue,0)+ISNULL(OtherRevenue,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate"
            ),
        },
        {
            "key": "RoomChangeHistory",
            "title": "Room Change History",
            "module": "Front Office",
            "menu": ["Room Change History"],
            "cols": ["FolioNo", "RoomNo", "ChangeDate", "User"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,o.ChkInDate,ISNULL(o.ChkoutUser,'') FROM RoomOcc o WHERE o.Vdate BETWEEN ? AND ? ORDER BY o.Vdate"
            ),
            "note": "VB6 RoomChangeHistory",
        },
        {
            "key": "RoomInventory",
            "title": "Room Inventory",
            "module": "Front Office",
            "menu": ["Room Inventory"],
            "cols": ["RoomNo", "RoomType", "Status", "FolioNo", "Guest"],
            "sql": (
                "SELECT TOP ({L}) o.RoomNo,ISNULL(o.RoomType,''),CASE WHEN o.ChkOutDate IS NULL THEN 'Occupied' ELSE 'Vacant' END,o.FolioNo,ISNULL(f.Name,'') FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate<=? AND ISNULL(o.ChkOutDate,'9999-12-31')>? ORDER BY o.RoomNo"
            ),
        },
        {
            "key": "RoomNights",
            "title": "Room Nights",
            "module": "Front Office",
            "menu": ["Room Nights"],
            "cols": ["RoomNo", "Nights", "Revenue"],
            "sql": (
                "SELECT TOP ({L}) o.RoomNo,ISNULL(o.NoDays,0),ISNULL(o.RoomRevenue,0) FROM RoomOcc o WHERE o.Vdate BETWEEN ? AND ? ORDER BY o.RoomNo"
            ),
            "note": "Room nights summary",
        },
        {
            "key": "RoomOccDisp",
            "title": "Occupancy Display",
            "module": "Front Office",
            "menu": ["Occupancy Display"],
            "cols": ["RoomNo", "RoomType", "Status", "Guest"],
            "sql": (
                "SELECT TOP ({L}) o.RoomNo,ISNULL(o.RoomType,''),CASE WHEN o.ChkOutDate IS NULL THEN 'Occupied' ELSE 'Vacant' END,ISNULL(f.Name,'') FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) ORDER BY o.RoomNo"
            ),
        },
        {
            "key": "RoomOccupancyAnalysisReport",
            "title": "Room Occupancy Analysis",
            "module": "Front Office",
            "menu": ["Room Occupancy Analysis"],
            "cols": ["Date", "TotalRooms", "Occupied"],
            "sql": (
                "WITH Dates AS (SELECT CAST(? AS date) AS d UNION ALL SELECT DATEADD(day,1,d) FROM Dates WHERE d < ?) SELECT d,(SELECT COUNT(*) FROM RoomOcc o),(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate<=d AND ISNULL(o.ChkOutDate,'9999-12-31')>d) FROM Dates ORDER BY d OPTION (MAXRECURSION 0)"
            ),
        },
        {
            "key": "RoomOccupancyReportSummary",
            "title": "Room Occupancy Summary",
            "module": "Front Office",
            "menu": ["Room Occupancy Report Summary"],
            "cols": ["RoomType", "Total", "Occupied", "Vacant"],
            "sql": (
                "SELECT ISNULL(RoomType,'?'),COUNT(*),SUM(CASE WHEN ChkOutDate IS NULL THEN 1 ELSE 0 END),SUM(CASE WHEN ChkOutDate IS NOT NULL THEN 1 ELSE 0 END) FROM RoomOcc GROUP BY RoomType ORDER BY RoomType"
            ),
        },
        {
            "key": "RoomRentAuditRpt",
            "title": "Room Rent Audit Report",
            "module": "Front Office",
            "menu": ["Room Rent Audit Report"],
            "cols": ["FolioNo", "RoomNo", "RoomRate", "ChkInDate", "DepDate", "Nights", "TotalRent"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,o.RoomRate,o.ChkInDate,o.DepDate,ISNULL(o.NoDays,0),ISNULL(o.NoDays,0)*o.RoomRate FROM RoomOcc o WHERE o.Vdate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "RoomStatus",
            "title": "Room Status",
            "module": "Front Office",
            "menu": ["Room Status"],
            "cols": ["RoomNo", "RoomType", "Status"],
            "sql": (
                "SELECT TOP ({L}) RoomNo,ISNULL(RoomType,''),CASE WHEN ChkOutDate IS NULL THEN 'Occupied' ELSE 'Vacant' END FROM RoomOcc ORDER BY RoomNo"
            ),
            "note": "Room status snapshot",
        },
        {
            "key": "RoomTypeOccupancyAnalysis",
            "title": "Room Type Occupancy Analysis",
            "module": "Front Office",
            "menu": ["Room Type Occupancy Analysis"],
            "cols": ["RoomType", "Total", "Occupied", "AvgRate"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(RoomType,'?'),COUNT(*),SUM(CASE WHEN ChkOutDate IS NULL THEN 1 ELSE 0 END),AVG(RoomRate) FROM RoomOcc WHERE ChkInDate BETWEEN ? AND ? GROUP BY RoomType ORDER BY RoomType"
            ),
        },
        {
            "key": "RoomTypeOccupancyReport",
            "title": "Room Type Occupancy",
            "module": "Front Office",
            "menu": ["Room Type Occupancy"],
            "cols": ["RoomType", "Total", "Occupied", "Vacant"],
            "sql": (
                "SELECT ISNULL(RoomType,'?'),COUNT(*),SUM(CASE WHEN ChkOutDate IS NULL THEN 1 ELSE 0 END),SUM(CASE WHEN ChkOutDate IS NOT NULL THEN 1 ELSE 0 END) FROM RoomOcc GROUP BY RoomType ORDER BY RoomType"
            ),
        },
        {
            "key": "RoomWiseRoomRevenueReport",
            "title": "Room Wise Room Revenue Report",
            "module": "Front Office",
            "menu": ["Room Wise Room Revenue"],
            "cols": ["RoomNo", "RoomType", "RoomRate", "Nights", "Revenue"],
            "sql": (
                "SELECT TOP ({L}) o.RoomNo,ISNULL(o.RoomType,''),o.RoomRate,ISNULL(o.NoDays,0),ISNULL(o.RoomRevenue,0) FROM RoomOcc o WHERE o.Vdate BETWEEN ? AND ? ORDER BY o.RoomNo"
            ),
        },
        {
            "key": "TravelAgentAnalysis",
            "title": "Travel Agent Analysis",
            "module": "Front Office",
            "menu": ["Travel Agent Analysis"],
            "cols": ["TravelAgent", "Folios", "Nights", "Revenue"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(NULLIF(TravelAgent,''),'(None)'),COUNT(*),SUM(ISNULL(NoDays,0)),SUM(ISNULL(RoomRevenue,0)) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY TravelAgent ORDER BY COUNT(*) DESC"
            ),
        },
        {
            "key": "AcCheckList",
            "title": "A/c Check List",
            "module": "Finance",
            "menu": ["A/c Check List"],
            "cols": ["SubCode", "Account", "Debit", "Credit", "Balance"],
            "sql": (
                "SELECT TOP ({L}) l.SubCode,ISNULL(s.Name,'?'),SUM(l.AmtDr),SUM(l.AmtCr),SUM(l.AmtDr)-SUM(l.AmtCr) FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.V_Date BETWEEN ? AND ? GROUP BY l.SubCode,s.Name ORDER BY s.Name"
            ),
        },
        {
            "key": "AgingCr",
            "title": "Ageing Analysis for Creditors",
            "module": "Finance",
            "menu": ["Ageing Analysis (Creditors)"],
            "cols": ["SubCode", "Account", "Balance", "LastTxn", "Bucket"],
            "sql": (
                "SELECT TOP ({L}) l.SubCode,ISNULL(MAX(s.Name),'?'),SUM(l.AmtCr)-SUM(l.AmtDr),MAX(l.V_Date),CASE WHEN DATEDIFF(day,MAX(l.V_Date),GETDATE())<=30 THEN '0-30' WHEN DATEDIFF(day,MAX(l.V_Date),GETDATE())<=60 THEN '31-60' WHEN DATEDIFF(day,MAX(l.V_Date),GETDATE())<=90 THEN '61-90' ELSE '>90' END FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode GROUP BY l.SubCode HAVING SUM(l.AmtCr)-SUM(l.AmtDr)>0 ORDER BY Balance DESC"
            ),
        },
        {
            "key": "AgingDr",
            "title": "Ageing Analysis for Debtors",
            "module": "Finance",
            "menu": ["Ageing Analysis for Debtors"],
            "cols": ["SubCode", "Account", "Balance", "LastTxn", "Bucket"],
            "sql": (
                "SELECT TOP ({L}) l.SubCode,ISNULL(MAX(s.Name),'?'),SUM(l.AmtDr)-SUM(l.AmtCr),MAX(l.V_Date),CASE WHEN DATEDIFF(day,MAX(l.V_Date),GETDATE())<=30 THEN '0-30' WHEN DATEDIFF(day,MAX(l.V_Date),GETDATE())<=60 THEN '31-60' WHEN DATEDIFF(day,MAX(l.V_Date),GETDATE())<=90 THEN '61-90' ELSE '>90' END FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode GROUP BY l.SubCode HAVING SUM(l.AmtDr)-SUM(l.AmtCr)>0 ORDER BY Balance DESC"
            ),
        },
        {
            "key": "AgingRepCr",
            "title": "Ageing Report for Creditors",
            "module": "Finance",
            "menu": ["Ageing Analysis for Creditors"],
            "cols": ["SubCode", "Account", "Balance", "Bucket"],
            "sql": (
                "SELECT TOP ({L}) l.SubCode,ISNULL(MAX(s.Name),'?'),SUM(l.AmtCr)-SUM(l.AmtDr),CASE WHEN DATEDIFF(day,MAX(l.V_Date),GETDATE())<=30 THEN '0-30' WHEN DATEDIFF(day,MAX(l.V_Date),GETDATE())<=60 THEN '31-60' WHEN DATEDIFF(day,MAX(l.V_Date),GETDATE())<=90 THEN '61-90' ELSE '>90' END FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode GROUP BY l.SubCode HAVING SUM(l.AmtCr)-SUM(l.AmtDr)>0 ORDER BY Balance DESC"
            ),
        },
        {
            "key": "AgingRepDr",
            "title": "Ageing Report for Debtors",
            "module": "Finance",
            "menu": ["Aging Report for Debtors"],
            "cols": ["SubCode", "Account", "Balance", "Bucket"],
            "sql": (
                "SELECT TOP ({L}) l.SubCode,ISNULL(MAX(s.Name),'?'),SUM(l.AmtDr)-SUM(l.AmtCr),CASE WHEN DATEDIFF(day,MAX(l.V_Date),GETDATE())<=30 THEN '0-30' WHEN DATEDIFF(day,MAX(l.V_Date),GETDATE())<=60 THEN '31-60' WHEN DATEDIFF(day,MAX(l.V_Date),GETDATE())<=90 THEN '61-90' ELSE '>90' END FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode GROUP BY l.SubCode HAVING SUM(l.AmtDr)-SUM(l.AmtCr)>0 ORDER BY Balance DESC"
            ),
        },
        {
            "key": "BankBook",
            "title": "Bank Book",
            "module": "Finance",
            "menu": ["Ban&k Book"],
            "cols": ["V_Date", "DocId", "Account", "Chq_No", "AmtDr", "AmtCr"],
            "sql": (
                "SELECT TOP ({L}) l.V_Date,l.DocId,s.Name,ISNULL(l.Chq_No,''),l.AmtDr,l.AmtCr FROM Ledger l JOIN Subgroup s ON s.SubCode=l.SubCode WHERE s.Name LIKE '%BANK%' AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date,l.DocId"
            ),
        },
        {
            "key": "BankReg",
            "title": "Bank Register",
            "module": "Finance",
            "menu": ["Bank &Register"],
            "cols": ["V_Date", "DocId", "Account", "Chq_No", "AmtDr", "AmtCr"],
            "sql": (
                "SELECT TOP ({L}) l.V_Date,l.DocId,s.Name,ISNULL(l.Chq_No,''),l.AmtDr,l.AmtCr FROM Ledger l JOIN Subgroup s ON s.SubCode=l.SubCode WHERE s.Name LIKE '%BANK%' AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date,l.DocId"
            ),
        },
        {
            "key": "BudgetAnalysis",
            "title": "Budget Analysis",
            "module": "Finance",
            "menu": ["Budget Analysis"],
            "cols": ["Account", "Budget", "Actual", "Variance"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(s.Name,'?'),0,SUM(l.AmtDr)-SUM(l.AmtCr),0 FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.V_Date BETWEEN ? AND ? GROUP BY l.SubCode,s.Name ORDER BY s.Name"
            ),
            "note": "Budget values from VB6 config",
        },
        {
            "key": "CashBook",
            "title": "Cash Book",
            "module": "Finance",
            "menu": ["Cas&h Book"],
            "cols": ["V_Date", "DocId", "Account", "AmtDr", "AmtCr"],
            "sql": (
                "SELECT TOP ({L}) l.V_Date,l.DocId,s.Name,l.AmtDr,l.AmtCr FROM Ledger l JOIN Subgroup s ON s.SubCode=l.SubCode WHERE s.Name LIKE '%CASH%' AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date,l.DocId"
            ),
        },
        {
            "key": "CashCardCollectSumm",
            "title": "Cash/Card Collection Summary",
            "module": "Finance",
            "menu": ["Cash/Card Collection Summary"],
            "cols": ["Vdate", "SettMode", "Bills", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) Vdate,ISNULL(SettMode,''),COUNT(*),SUM(SettAmt) FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? GROUP BY Vdate,SettMode ORDER BY Vdate"
            ),
            "note": "FOMBillDetails settlement",
        },
        {
            "key": "CashCardTransRep",
            "title": "Cash/Card Transaction Report",
            "module": "Finance",
            "menu": ["Cash/Card Transaction Report"],
            "cols": ["Vdate", "PayCode", "Bills", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) Vdate,PayCode,COUNT(*),SUM(AmtDr) FROM PayCharge WHERE Vtype='REC' AND Vdate BETWEEN ? AND ? GROUP BY Vdate,PayCode ORDER BY Vdate"
            ),
            "note": "PayCharge receipts",
        },
        {
            "key": "Clg",
            "title": "Cheque Cleared Register",
            "module": "Finance",
            "menu": ["Ch&eque Cleared Register"],
            "cols": ["V_Date", "DocId", "Account", "Chq_No", "AmtDr", "AmtCr"],
            "sql": (
                "SELECT TOP ({L}) l.V_Date,l.DocId,s.Name,ISNULL(l.Chq_No,''),l.AmtDr,l.AmtCr FROM Ledger l JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.Chq_No IS NOT NULL AND l.Chq_No<>'' AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date"
            ),
        },
        {
            "key": "ClgNot",
            "title": "Cheque Not Cleared Register",
            "module": "Finance",
            "menu": ["Che&que Not Cleared Register"],
            "cols": ["V_Date", "DocId", "Account", "Chq_No", "AmtDr"],
            "sql": (
                "SELECT TOP ({L}) l.V_Date,l.DocId,s.Name,ISNULL(l.Chq_No,''),l.AmtDr FROM Ledger l JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.Chq_No IS NOT NULL AND l.Chq_No<>'' AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date"
            ),
        },
        {
            "key": "DayBook",
            "title": "Day Book (FA Vouchers)",
            "module": "Finance",
            "menu": ["&Day Book"],
            "cols": ["V_Date", "Vouchers", "Debit", "Credit"],
            "sql": (
                "SELECT V_Date,COUNT(DISTINCT DocId),SUM(AmtDr),SUM(AmtCr) FROM Ledger WHERE V_Date BETWEEN ? AND ? GROUP BY V_Date ORDER BY V_Date"
            ),
        },
        {
            "key": "DetailedTrial",
            "title": "Detailed Trial Ledger",
            "module": "Finance",
            "menu": ["Detailed Trial Ledger"],
            "cols": ["SubCode", "Account", "Debit", "Credit", "Balance"],
            "sql": (
                "SELECT TOP ({L}) l.SubCode,ISNULL(s.Name,'?'),SUM(l.AmtDr),SUM(l.AmtCr),SUM(l.AmtDr)-SUM(l.AmtCr) FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.V_Date BETWEEN ? AND ? GROUP BY l.SubCode,s.Name ORDER BY Balance DESC"
            ),
        },
        {
            "key": "DUELIST",
            "title": "Due List",
            "module": "Finance",
            "menu": ["DUELIST"],
            "cols": ["SubCode", "Account", "Balance", "LastTxn"],
            "sql": (
                "SELECT TOP ({L}) l.SubCode,ISNULL(s.Name,'?'),SUM(l.AmtDr)-SUM(l.AmtCr),MAX(l.V_Date) FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode GROUP BY l.SubCode HAVING ABS(SUM(l.AmtDr)-SUM(l.AmtCr))>0 ORDER BY MAX(l.V_Date)"
            ),
        },
        {
            "key": "DueListCreditorOverLay",
            "title": "Due List Creditor Overlay",
            "module": "Finance",
            "menu": ["Due List Creditor OverLay"],
            "cols": ["SubCode", "Account", "Balance"],
            "sql": (
                "SELECT TOP ({L}) l.SubCode,ISNULL(s.Name,'?'),SUM(l.AmtCr)-SUM(l.AmtDr) FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode GROUP BY l.SubCode HAVING SUM(l.AmtCr)-SUM(l.AmtDr)>0 ORDER BY SUM(l.AmtCr)-SUM(l.AmtDr) DESC"
            ),
        },
        {
            "key": "GratuityReport",
            "title": "Gratuity Report",
            "module": "Finance",
            "menu": ["Gratuity Report"],
            "cols": ["EmpCode", "EmpName", "GratuityAmt", "ServiceYears"],
            "sql": "SELECT TOP ({L}) Code,Name,0,0 FROM Employee ORDER BY Name",
            "note": "Employee table; gratuity VB6 specific",
        },
        {
            "key": "GuestChgJournal",
            "title": "Guest Charges Journal",
            "module": "Finance",
            "menu": [],
            "cols": ["Vdate", "FolioNo", "PayCode", "AmtDr", "Vtype"],
            "sql": (
                "SELECT TOP ({L}) Vdate,FolioNo,PayCode,AmtDr,Vtype FROM PayCharge WHERE Vtype='CHG' AND Vdate BETWEEN ? AND ? ORDER BY Vdate,FolioNo"
            ),
        },
        {
            "key": "GuestChgJournalLog",
            "title": "Guest Charges Journal Log",
            "module": "Finance",
            "menu": ["Charges Remove Log"],
            "cols": ["Vdate", "DocId", "FolioNo", "PayCode", "AmtDr"],
            "sql": "SELECT TOP ({L}) Vdate,DocId,FolioNo,PayCode,AmtDr FROM PayCharge WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate",
        },
        {
            "key": "GuestLedger",
            "title": "Guest Ledger",
            "module": "Finance",
            "menu": [],
            "cols": ["FolioNo", "RoomNo", "Guest", "Charges", "Payments", "Balance"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(ch.Charges,0),ISNULL(p.Payments,0),ISNULL(ch.Charges,0)-ISNULL(p.Payments,0) FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) LEFT JOIN (SELECT FolioNo,SUM(AmtDr) AS Charges FROM PayCharge GROUP BY FolioNo) ch ON ch.FolioNo=o.FolioNo LEFT JOIN (SELECT FolioNo,SUM(AmtCr) AS Payments FROM PayCharge GROUP BY FolioNo) p ON p.FolioNo=o.FolioNo WHERE o.ChkInDate<=? AND ISNULL(o.ChkOutDate,'9999-12-31')>? ORDER BY o.RoomNo"
            ),
        },
        {
            "key": "GuestPayments",
            "title": "Payments By Cashier (Receipts)",
            "module": "Finance",
            "menu": ["Payments By Cashier"],
            "cols": ["Vdate", "FolioNo", "PayCode", "AmtDr", "AmtCr"],
            "sql": (
                "SELECT TOP ({L}) Vdate,FolioNo,PayCode,AmtDr,AmtCr FROM PayCharge WHERE Vtype='REC' AND Vdate BETWEEN ? AND ? ORDER BY Vdate,FolioNo"
            ),
        },
        {
            "key": "GuestTrialBalance",
            "title": "Guest Trial Balance",
            "module": "Finance",
            "menu": ["Guest Trail"],
            "cols": ["FolioNo", "RoomNo", "Guest", "Charges", "Payments", "Balance"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(ch.Charges,0),ISNULL(p.Payments,0),ISNULL(ch.Charges,0)-ISNULL(p.Payments,0) FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) LEFT JOIN (SELECT FolioNo,SUM(AmtDr) AS Charges FROM PayCharge GROUP BY FolioNo) ch ON ch.FolioNo=o.FolioNo LEFT JOIN (SELECT FolioNo,SUM(AmtCr) AS Payments FROM PayCharge GROUP BY FolioNo) p ON p.FolioNo=o.FolioNo ORDER BY o.RoomNo"
            ),
        },
        {
            "key": "JournalBook",
            "title": "Journal Books",
            "module": "Finance",
            "menu": ["&Journal Books"],
            "cols": ["V_Date", "DocId", "Vtype", "Account", "AmtDr", "AmtCr", "Narration"],
            "sql": (
                "SELECT TOP ({L}) l.V_Date,l.DocId,ISNULL(l.Vtype,''),ISNULL(s.Name,'?'),l.AmtDr,l.AmtCr,ISNULL(l.Narration,'') FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.Vtype IN ('JV','CV','DV') AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date,l.DocId"
            ),
        },
        {
            "key": "JournalBookLog",
            "title": "Journal Book Log",
            "module": "Finance",
            "menu": ["Journal Book Log"],
            "cols": ["V_Date", "DocId", "Vtype", "Account", "Narration"],
            "sql": (
                "SELECT TOP ({L}) l.V_Date,l.DocId,ISNULL(l.Vtype,''),ISNULL(s.Name,'?'),ISNULL(l.Narration,'') FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date"
            ),
            "note": "Journal modification log",
        },
        {
            "key": "Led",
            "title": "Ledger",
            "module": "Finance",
            "menu": ["&Ledger"],
            "cols": ["V_Date", "DocId", "Vtype", "Account", "AmtDr", "AmtCr", "Narration"],
            "sql": (
                "SELECT TOP ({L}) l.V_Date,l.DocId,ISNULL(l.Vtype,''),ISNULL(s.Name,'?'),l.AmtDr,l.AmtCr,ISNULL(l.Narration,'') FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date,l.DocId"
            ),
        },
        {
            "key": "LedCred",
            "title": "Ledger - Credit Only",
            "module": "Finance",
            "menu": ["Ledger"],
            "cols": ["V_Date", "DocId", "Account", "AmtCr", "Narration"],
            "sql": (
                "SELECT TOP ({L}) l.V_Date,l.DocId,ISNULL(s.Name,'?'),l.AmtCr,ISNULL(l.Narration,'') FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.AmtCr>0 AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date"
            ),
        },
        {
            "key": "LedDeb",
            "title": "Ledger - Debit Only",
            "module": "Finance",
            "menu": [],
            "cols": ["V_Date", "DocId", "Account", "AmtDr", "Narration"],
            "sql": (
                "SELECT TOP ({L}) l.V_Date,l.DocId,ISNULL(s.Name,'?'),l.AmtDr,ISNULL(l.Narration,'') FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.AmtDr>0 AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date"
            ),
        },
        {
            "key": "LedInt",
            "title": "Interest Ledger",
            "module": "Finance",
            "menu": ["&Interest Ledger"],
            "cols": ["V_Date", "DocId", "Account", "AmtDr", "AmtCr"],
            "sql": (
                "SELECT TOP ({L}) l.V_Date,l.DocId,ISNULL(s.Name,'?'),l.AmtDr,l.AmtCr FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.Vtype='INT' AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date"
            ),
        },
        {
            "key": "LoanAdvSumm",
            "title": "Loan/Advance Summary",
            "module": "Finance",
            "menu": ["Loan/Advance Summary"],
            "cols": ["EmpCode", "EmpName", "LoanAmt", "Recovered", "Balance"],
            "sql": "SELECT TOP ({L}) Code,Name,0,0,0 FROM Employee ORDER BY Name",
            "note": "Employee+Loan VB6",
        },
        {
            "key": "LoanLedg",
            "title": "Loan/Advance Ledger",
            "module": "Finance",
            "menu": ["Loan/Advance Ledger"],
            "cols": ["EmpCode", "EmpName", "LoanType", "Amount", "Date"],
            "sql": "SELECT TOP ({L}) Code,Name,'',0,NULL FROM Employee ORDER BY Name",
            "note": "Employee+Loan VB6",
        },
        {
            "key": "LoanReg",
            "title": "Loan Register",
            "module": "Finance",
            "menu": ["Loan Register"],
            "cols": ["EmpCode", "EmpName", "LoanAmt", "Installments", "Recovered"],
            "sql": "SELECT TOP ({L}) Code,Name,0,0,0 FROM Employee ORDER BY Name",
            "note": "Employee+Loan VB6",
        },
        {
            "key": "MemLed",
            "title": "Member Ledger",
            "module": "Finance",
            "menu": ["Member Ledger"],
            "cols": ["Member", "Vdate", "Narration", "AmtDr", "AmtCr", "Balance"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Name,''),Vdate,ISNULL(Narration,''),AmtDr,AmtCr,AmtDr-AmtCr FROM MemberLedger WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate"
            ),
            "note": "MemberLedger VB6",
        },
        {
            "key": "NonTrans",
            "title": "Non Transaction Report",
            "module": "Finance",
            "menu": ["Non Transaction Report"],
            "cols": ["SubCode", "Account", "LastTxnDate", "Balance"],
            "sql": (
                "SELECT TOP ({L}) l.SubCode,ISNULL(s.Name,'?'),MAX(l.V_Date),SUM(l.AmtDr)-SUM(l.AmtCr) FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode GROUP BY l.SubCode,s.Name HAVING DATEDIFF(day,MAX(l.V_Date),?)>90 ORDER BY MAX(l.V_Date)"
            ),
            "note": "Inactive accounts >90 days",
        },
        {
            "key": "PartyOutStanding",
            "title": "Party Outstanding",
            "module": "Finance",
            "menu": ["Party Outstanding"],
            "cols": ["SubCode", "Account", "Debit", "Credit", "Balance"],
            "sql": (
                "SELECT TOP ({L}) l.SubCode,ISNULL(s.Name,'?'),SUM(l.AmtDr),SUM(l.AmtCr),SUM(l.AmtDr)-SUM(l.AmtCr) FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode GROUP BY l.SubCode,s.Name HAVING ABS(SUM(l.AmtDr)-SUM(l.AmtCr))>0 ORDER BY ABS(SUM(l.AmtDr)-SUM(l.AmtCr)) DESC"
            ),
        },
        {
            "key": "PartyWiseOutStanding",
            "title": "Party Wise Outstanding",
            "module": "Finance",
            "menu": ["Party Wise Outstanding"],
            "cols": ["SubCode", "Account", "Balance"],
            "sql": (
                "SELECT TOP ({L}) l.SubCode,ISNULL(s.Name,'?'),SUM(l.AmtDr)-SUM(l.AmtCr) FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode GROUP BY l.SubCode,s.Name HAVING ABS(SUM(l.AmtDr)-SUM(l.AmtCr))>0 ORDER BY ABS(SUM(l.AmtDr)-SUM(l.AmtCr)) DESC"
            ),
        },
        {
            "key": "PaymentDueLetterReport",
            "title": "Payment Due Letter Report",
            "module": "Finance",
            "menu": ["Payment Due Letter Report"],
            "cols": ["Member", "Outstanding", "Address"],
            "sql": "SELECT TOP ({L}) ISNULL(Name,''),0,ISNULL(Address,'') FROM Members ORDER BY Name",
            "note": "Members VB6",
        },
        {
            "key": "PayrollReg",
            "title": "Payroll Register",
            "module": "Finance",
            "menu": ["Payroll Register"],
            "cols": ["EmpCode", "EmpName", "Basic", "Allowances", "Deductions", "NetPay"],
            "sql": "SELECT TOP ({L}) Code,Name,0,0,0,0 FROM Employee ORDER BY Name",
            "note": "Payroll VB6",
        },
        {
            "key": "PaySlip",
            "title": "Pay Slip",
            "module": "Finance",
            "menu": ["Pay Slip"],
            "cols": ["EmpCode", "EmpName", "Basic", "DA", "HRA", "Deductions", "NetPay"],
            "sql": "SELECT TOP ({L}) Code,Name,0,0,0,0,0 FROM Employee ORDER BY Name",
            "note": "Payroll VB6",
        },
        {
            "key": "PFStatement",
            "title": "PF Statement",
            "module": "Finance",
            "menu": ["PF Statement"],
            "cols": ["EmpCode", "EmpName", "PFShare", "Total"],
            "sql": "SELECT TOP ({L}) Code,Name,0,0 FROM Employee ORDER BY Name",
            "note": "Employee table; PF VB6 specific",
        },
        {
            "key": "RefReport",
            "title": "Reference Report",
            "module": "Finance",
            "menu": ["Reference Report"],
            "cols": ["V_Date", "DocId", "Account", "Narration", "AmtDr", "AmtCr"],
            "sql": (
                "SELECT TOP ({L}) l.V_Date,l.DocId,ISNULL(s.Name,'?'),ISNULL(l.Narration,''),l.AmtDr,l.AmtCr FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.Narration IS NOT NULL AND l.Narration<>'' AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date"
            ),
        },
        {
            "key": "ResvAdvRecd",
            "title": "Advance Received (Reservation)",
            "module": "Finance",
            "menu": ["Advance Recd."],
            "cols": ["Vdate", "FolioNo", "RoomNo", "Guest", "AmtDr"],
            "sql": (
                "SELECT TOP ({L}) P.Vdate,P.FolioNo,ISNULL(P.RoomNo,''),ISNULL(f.Name,''),P.AmtDr FROM PayCharge P LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=P.FolioNo ORDER BY g.DocId) WHERE P.Vtype='ADV' AND P.Vdate BETWEEN ? AND ? ORDER BY P.Vdate"
            ),
        },
        {
            "key": "ResvAdvRecdArr",
            "title": "Advance Received - Arrival",
            "module": "Finance",
            "menu": ["Advance Recd. Arrival"],
            "cols": ["Vdate", "FolioNo", "RoomNo", "Guest", "AmtDr"],
            "sql": (
                "SELECT TOP ({L}) P.Vdate,P.FolioNo,ISNULL(P.RoomNo,''),ISNULL(f.Name,''),P.AmtDr FROM PayCharge P LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=P.FolioNo ORDER BY g.DocId) WHERE P.Vtype='ADV' AND P.Vdate BETWEEN ? AND ? ORDER BY P.Vdate"
            ),
        },
        {
            "key": "ResvAdvRecdInHouse",
            "title": "Advance Received - In-House",
            "module": "Finance",
            "menu": ["Advance Recd. In-House"],
            "cols": ["Vdate", "FolioNo", "RoomNo", "Guest", "AmtDr"],
            "sql": (
                "SELECT TOP ({L}) P.Vdate,P.FolioNo,ISNULL(P.RoomNo,''),ISNULL(f.Name,''),P.AmtDr FROM PayCharge P LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=P.FolioNo ORDER BY g.DocId) WHERE P.Vtype='ADV' AND P.Vdate BETWEEN ? AND ? ORDER BY P.Vdate"
            ),
        },
        {
            "key": "RozNamcha",
            "title": "Roz Namcha",
            "module": "Finance",
            "menu": ["Roz Namcha"],
            "cols": ["V_Date", "DocId", "Vtype", "Account", "AmtDr", "AmtCr", "Narration"],
            "sql": (
                "SELECT TOP ({L}) l.V_Date,l.DocId,ISNULL(l.Vtype,''),ISNULL(s.Name,'?'),l.AmtDr,l.AmtCr,ISNULL(l.Narration,'') FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode WHERE l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date,l.DocId"
            ),
        },
        {
            "key": "OutstandingReportForDebtors",
            "title": "Outstanding Report For Debtors",
            "module": "Finance",
            "menu": ["Outstanding Report For Debtors"],
            "cols": ["SubCode", "Account", "Debit", "Credit", "Balance"],
            "sql": (
                "SELECT TOP ({L}) l.SubCode,ISNULL(s.Name,'?'),SUM(l.AmtDr),SUM(l.AmtCr),SUM(l.AmtDr)-SUM(l.AmtCr) FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode GROUP BY l.SubCode,s.Name HAVING SUM(l.AmtDr)-SUM(l.AmtCr)>0 ORDER BY Balance DESC"
            ),
        },
        {
            "key": "OutstandingReportForCreditors",
            "title": "Outstanding Report For Creditors",
            "module": "Finance",
            "menu": ["Outstanding Report For Creditors"],
            "cols": ["SubCode", "Account", "Debit", "Credit", "Balance"],
            "sql": (
                "SELECT TOP ({L}) l.SubCode,ISNULL(s.Name,'?'),SUM(l.AmtDr),SUM(l.AmtCr),SUM(l.AmtCr)-SUM(l.AmtDr) FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode=l.SubCode GROUP BY l.SubCode,s.Name HAVING SUM(l.AmtCr)-SUM(l.AmtDr)>0 ORDER BY Balance DESC"
            ),
        },
        {
            "key": "BillWiseAdjustmentReport",
            "title": "Bill Wise Adjustment Report (POS to Folio)",
            "module": "Point Of Sale",
            "menu": ["Bill Wise Adjustment Report"],
            "cols": ["DocId", "Vdate", "Outlet", "FolioNo", "Party", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) DocId,Vdate,RestCode,FolioNo,ISNULL(NULLIF(Party,''),''),NetAmt FROM Sale1 WHERE FolioNo>0 AND Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId"
            ),
        },
        {
            "key": "CancelBillDetails",
            "title": "Cancel Bill Details",
            "module": "Point Of Sale",
            "menu": ["Cancel Bill Details"],
            "cols": ["Vdate", "FolioNo", "PayCode", "AmtDr", "AmtCr", "Bill_No"],
            "sql": (
                "SELECT TOP ({L}) Vdate,FolioNo,PayCode,AmtDr,AmtCr,ISNULL(Bill_No,'') FROM PayCharge WHERE Vtype='CAN' AND Vdate BETWEEN ? AND ? ORDER BY Vdate,FolioNo"
            ),
        },
        {
            "key": "CashierCollection",
            "title": "Cashier Collection Summary",
            "module": "Point Of Sale",
            "menu": ["Cashier Collection Summary"],
            "cols": ["SettMode", "Bills", "BillAmt", "SettAmt"],
            "sql": (
                "SELECT ISNULL(NULLIF(SettMode,''),'(Blank)'),COUNT(*),SUM(BillAmt),SUM(SettAmt) FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? GROUP BY SettMode ORDER BY SUM(BillAmt) DESC"
            ),
        },
        {
            "key": "CashierCollectionMIS",
            "title": "Cashier Collection MIS",
            "module": "Point Of Sale",
            "menu": ["Cashier Collection MIS"],
            "cols": ["Vdate", "SettMode", "Bills", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) Vdate,ISNULL(SettMode,''),COUNT(*),SUM(SettAmt) FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? GROUP BY Vdate,SettMode ORDER BY Vdate"
            ),
        },
        {
            "key": "CashierSale",
            "title": "Cashier Report (Outlet-wise)",
            "module": "Point Of Sale",
            "menu": ["Cashier Report "],
            "cols": ["Vdate", "Outlet", "Bills", "NetAmt"],
            "sql": (
                "SELECT Vdate,RestCode,COUNT(*),SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate,RestCode ORDER BY Vdate,RestCode"
            ),
            "note": "VB6 cashier-wise; cashier col live me nahi - outlet-wise port",
        },
        {
            "key": "CashierSettlement",
            "title": "Cashier Settlement",
            "module": "Point Of Sale",
            "menu": ["Cashier Settlement"],
            "cols": ["Vdate", "SettMode", "Bills", "BillAmt"],
            "sql": (
                "SELECT TOP ({L}) Vdate,ISNULL(SettMode,''),COUNT(*),SUM(BillAmt) FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? GROUP BY Vdate,SettMode ORDER BY Vdate"
            ),
        },
        {
            "key": "CashierSummary",
            "title": "Cashier Summary",
            "module": "Point Of Sale",
            "menu": ["Cashier Summary"],
            "cols": ["Vdate", "Bills", "NetAmt"],
            "sql": "SELECT TOP ({L}) Vdate,COUNT(*),SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate",
        },
        {
            "key": "CancellLetter",
            "title": "Cancellation Letter",
            "module": "Point Of Sale",
            "menu": ["Cancellation Letter"],
            "cols": ["FolioNo", "RoomNo", "Guest", "ChkInDate"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),o.ChkInDate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
            "note": "Cancellation letter generation",
        },
        {
            "key": "CompanyWiseSaleHall",
            "title": "Company Wise Sale (Hall)",
            "module": "Point Of Sale",
            "menu": ["Company Wise Sale (Hall)"],
            "cols": ["Party", "Bills", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(NULLIF(Party,''),'(Cash)'),COUNT(*),SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Party ORDER BY SUM(NetAmt) DESC"
            ),
        },
        {
            "key": "DelBillUnsetBill",
            "title": "Deleted/Unsettled Bills",
            "module": "Point Of Sale",
            "menu": ["Del/Unset Bill"],
            "cols": ["DocId", "Vdate", "Outlet", "NetAmt", "Status"],
            "sql": "SELECT TOP ({L}) DocId,Vdate,RestCode,NetAmt,ISNULL(Status,'') FROM Sale1 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate",
            "note": "Deleted/unsettled bill tracking",
        },
        {
            "key": "DeliveryStatus",
            "title": "Delivery Status",
            "module": "Point Of Sale",
            "menu": ["Delivery Status"],
            "cols": ["DocId", "Vdate", "Outlet", "Item", "Qty"],
            "sql": (
                "SELECT TOP ({L}) s1.DocId,s1.Vdate,s1.RestCode,ISNULL(s2.Item,''),ISNULL(s2.Qty,0) FROM Sale1 s1 LEFT JOIN Sale2 s2 ON s2.DocId=s1.DocId WHERE s1.Vdate BETWEEN ? AND ? ORDER BY s1.Vdate"
            ),
            "note": "Delivery tracking",
        },
        {
            "key": "DiscountPartyWiseReg",
            "title": "Discount Party Wise Register",
            "module": "Point Of Sale",
            "menu": ["Discount Party Wise Register"],
            "cols": ["Party", "Bills", "DiscAmt"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(NULLIF(Party,''),'(Cash)'),COUNT(*),SUM(ISNULL(Discount,0)) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Party ORDER BY SUM(ISNULL(Discount,0)) DESC"
            ),
        },
        {
            "key": "DiscountReg",
            "title": "Discount Register",
            "module": "Point Of Sale",
            "menu": ["Discount Register"],
            "cols": ["Vdate", "DocId", "Party", "DiscAmt", "User"],
            "sql": (
                "SELECT TOP ({L}) Vdate,DocId,ISNULL(NULLIF(Party,''),'' ),ISNULL(Discount,0),ISNULL(U_Name,'') FROM Sale1 WHERE ISNULL(Discount,0)>0 AND Vdate BETWEEN ? AND ? ORDER BY Vdate"
            ),
        },
        {
            "key": "DiscountSumm",
            "title": "Discount Summary",
            "module": "Point Of Sale",
            "menu": ["Discount Summary"],
            "cols": ["Vdate", "Bills", "DiscAmt"],
            "sql": (
                "SELECT TOP ({L}) Vdate,COUNT(*),SUM(ISNULL(Discount,0)) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate"
            ),
        },
        {
            "key": "EditedBills",
            "title": "Edited Bills",
            "module": "Point Of Sale",
            "menu": ["Edited Bills"],
            "cols": ["Vdate", "DocId", "Outlet", "NetAmt", "User"],
            "sql": "SELECT TOP ({L}) Vdate,DocId,RestCode,NetAmt,ISNULL(U_Name,'') FROM Sale1 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate",
            "note": "Edited bills tracking",
        },
        {
            "key": "FacilityBillReg",
            "title": "Facility Bill Register",
            "module": "Point Of Sale",
            "menu": ["Facility Bill Register"],
            "cols": ["Vdate", "DocId", "FolioNo", "Party", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) Vdate,DocId,FolioNo,ISNULL(NULLIF(Party,''),'' ),NetAmt FROM Sale1 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate"
            ),
        },
        {
            "key": "FOMBillChangeReport",
            "title": "FOM Bill Change Report",
            "module": "Point Of Sale",
            "menu": ["FOM Bill Change Report"],
            "cols": ["Vdate", "DocId", "FolioNo", "AmtDr", "User"],
            "sql": "SELECT TOP ({L}) Vdate,DocId,FolioNo,AmtDr,ISNULL(U_Name,'') FROM PayCharge WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate",
            "note": "Bill change log",
        },
        {
            "key": "HtCashierSumm",
            "title": "HT Cashier Summary",
            "module": "Point Of Sale",
            "menu": ["HT Cashier Summary"],
            "cols": ["Vdate", "Bills", "NetAmt"],
            "sql": "SELECT TOP ({L}) Vdate,COUNT(*),SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate",
        },
        {
            "key": "ItemSale",
            "title": "Item Sale",
            "module": "Point Of Sale",
            "menu": ["Item Sale"],
            "cols": ["Item", "Qty", "Amount"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(Qty,0)),SUM(ISNULL(Amount,0)) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(ISNULL(Amount,0)) DESC"
            ),
        },
        {
            "key": "ItemWiseGroupWiseSaleReport",
            "title": "Item Wise Group Wise Sale Report",
            "module": "Point Of Sale",
            "menu": ["Item Wise Group Wise Sale Report"],
            "cols": ["ItemGroup", "Item", "Qty", "Amount"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(ItemGroup,''),ISNULL(Item,''),SUM(ISNULL(Qty,0)),SUM(ISNULL(Amount,0)) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY ItemGroup,Item ORDER BY ItemGroup,SUM(ISNULL(Amount,0)) DESC"
            ),
        },
        {
            "key": "ItemWiseSale",
            "title": "Item Wise Sale",
            "module": "Point Of Sale",
            "menu": ["Item Wise Sale"],
            "cols": ["Item", "Qty", "Amount"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(Qty,0)),SUM(ISNULL(Amount,0)) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(ISNULL(Amount,0)) DESC"
            ),
        },
        {
            "key": "ItemWiseSaleHall",
            "title": "Item Wise Sale (Hall)",
            "module": "Point Of Sale",
            "menu": ["Item Wise Sale (Hall)"],
            "cols": ["Item", "Qty", "Amount"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(Qty,0)),SUM(ISNULL(Amount,0)) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(ISNULL(Amount,0)) DESC"
            ),
        },
        {
            "key": "KotEditDelete",
            "title": "KOT Edit/Delete",
            "module": "Point Of Sale",
            "menu": ["KOT Edit/Delete"],
            "cols": ["Vdate", "KOTNo", "Item", "Qty", "User"],
            "sql": (
                "SELECT TOP ({L}) Vdate,KOTNo,ISNULL(Item,''),ISNULL(Qty,0),ISNULL(U_Name,'') FROM KOT WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate"
            ),
            "note": "KOT edit/delete log",
        },
        {
            "key": "KOTRateChange",
            "title": "KOT Rate Change",
            "module": "Point Of Sale",
            "menu": ["KOT Rate Change"],
            "cols": ["Vdate", "KOTNo", "Item", "OldRate", "NewRate", "User"],
            "sql": "SELECT TOP ({L}) Vdate,KOTNo,ISNULL(Item,''),0,0,ISNULL(U_Name,'') FROM KOT WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate",
            "note": "KOT rate change log",
        },
        {
            "key": "KOTWiseDetails",
            "title": "KOT Wise Details",
            "module": "Point Of Sale",
            "menu": ["KOT Wise Details"],
            "cols": ["Vdate", "KOTNo", "Item", "Qty", "Rate", "Amount"],
            "sql": (
                "SELECT TOP ({L}) Vdate,KOTNo,ISNULL(Item,''),ISNULL(Qty,0),ISNULL(Rate,0),ISNULL(Amount,0) FROM KOT WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,KOTNo"
            ),
        },
        {
            "key": "MemBillMissingReport",
            "title": "Member Bill Missing Report",
            "module": "Point Of Sale",
            "menu": ["Mem Bill Missing Report"],
            "cols": ["Vdate", "DocId", "FolioNo", "Party", "NetAmt"],
            "sql": "SELECT TOP ({L}) Vdate,DocId,FolioNo,ISNULL(Party,''),NetAmt FROM Sale1 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate",
            "note": "Member bill reconciliation",
        },
        {
            "key": "MemSalesRegister",
            "title": "Member Sales Register",
            "module": "Point Of Sale",
            "menu": ["Member Sales Register"],
            "cols": ["Vdate", "Party", "Bills", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) Vdate,ISNULL(Party,''),COUNT(*),SUM(NetAmt) FROM Sale1 WHERE Party IS NOT NULL AND Party<>'' AND Vdate BETWEEN ? AND ? GROUP BY Vdate,Party ORDER BY Vdate"
            ),
        },
        {
            "key": "MonthOutletWiseSale",
            "title": "Monthly Outlet Wise Sale",
            "module": "Point Of Sale",
            "menu": ["Month Outlet Wise Sale"],
            "cols": ["Month", "Outlet", "Bills", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) CONVERT(VARCHAR(7),Vdate,120),RestCode,COUNT(*),SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY CONVERT(VARCHAR(7),Vdate,120),RestCode ORDER BY CONVERT(VARCHAR(7),Vdate,120)"
            ),
        },
        {
            "key": "NCKOTSummary",
            "title": "NC KOT Summary",
            "module": "Point Of Sale",
            "menu": ["NC KOT Summary"],
            "cols": ["Vdate", "Bills", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) Vdate,COUNT(*),SUM(NetAmt) FROM Sale1 WHERE ISNULL(Party,'')<>'' AND Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate"
            ),
            "note": "Non-cash KOT summary",
        },
        {
            "key": "NCKOTWiseDetails",
            "title": "NC KOT Wise Details",
            "module": "Point Of Sale",
            "menu": ["NC KOT Wise Details"],
            "cols": ["Vdate", "DocId", "Party", "Item", "Qty", "Amount"],
            "sql": (
                "SELECT TOP ({L}) s1.Vdate,s1.DocId,ISNULL(s1.Party,''),ISNULL(s2.Item,''),ISNULL(s2.Qty,0),ISNULL(s2.Amount,0) FROM Sale1 s1 LEFT JOIN Sale2 s2 ON s2.DocId=s1.DocId WHERE ISNULL(s1.Party,'')<>'' AND s1.Vdate BETWEEN ? AND ? ORDER BY s1.Vdate"
            ),
        },
        {
            "key": "OpenItemSale",
            "title": "Open Item Sale",
            "module": "Point Of Sale",
            "menu": ["Open Item Sale"],
            "cols": ["Vdate", "DocId", "Item", "Qty", "Rate", "Amount"],
            "sql": (
                "SELECT TOP ({L}) Vdate,DocId,ISNULL(Item,''),ISNULL(Qty,0),ISNULL(Rate,0),ISNULL(Amount,0) FROM Sale2 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId"
            ),
        },
        {
            "key": "OrderDetailReport",
            "title": "Order Detail Report",
            "module": "Point Of Sale",
            "menu": ["Order Detail Report"],
            "cols": ["Vdate", "KOTNo", "Item", "Qty", "Rate", "Amount"],
            "sql": (
                "SELECT TOP ({L}) Vdate,KOTNo,ISNULL(Item,''),ISNULL(Qty,0),ISNULL(Rate,0),ISNULL(Amount,0) FROM KOT WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,KOTNo"
            ),
        },
        {
            "key": "PendingKot",
            "title": "Pending KOT",
            "module": "Point Of Sale",
            "menu": ["Pending KOT"],
            "cols": ["Vdate", "KOTNo", "Table", "Item", "Qty"],
            "sql": (
                "SELECT TOP ({L}) Vdate,KOTNo,ISNULL(TableNo,''),ISNULL(Item,''),ISNULL(Qty,0) FROM KOT WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate"
            ),
            "note": "Pending KOT list",
        },
        {
            "key": "PLUFile",
            "title": "PLU File",
            "module": "Point Of Sale",
            "menu": ["PLU File"],
            "cols": ["Item", "Rate", "Category"],
            "sql": "SELECT TOP ({L}) ISNULL(ItemName,''),ISNULL(Rate,0),ISNULL(ItemGroup,'') FROM ItemMast ORDER BY ItemName",
            "note": "PLU master list",
        },
        {
            "key": "PmtByCashier",
            "title": "Payments By Cashier",
            "module": "Point Of Sale",
            "menu": ["Payments By Cashier"],
            "cols": ["Vdate", "FolioNo", "PayCode", "AmtDr", "AmtCr"],
            "sql": (
                "SELECT TOP ({L}) Vdate,FolioNo,PayCode,AmtDr,AmtCr FROM PayCharge WHERE Vtype='REC' AND Vdate BETWEEN ? AND ? ORDER BY Vdate,FolioNo"
            ),
        },
        {
            "key": "SaleRegister",
            "title": "Sales Register",
            "module": "Point Of Sale",
            "menu": ["Sale Register"],
            "cols": ["Vdate", "DocId", "Outlet", "Party", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) Vdate,DocId,RestCode,ISNULL(Party,''),NetAmt FROM Sale1 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId"
            ),
        },
        {
            "key": "SaleRegisterI",
            "title": "Sales Register I",
            "module": "Point Of Sale",
            "menu": ["Sale Register I"],
            "cols": ["Vdate", "Bills", "Taxable", "Tax", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) Vdate,COUNT(*),SUM(Taxable),SUM(Tax),SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate"
            ),
        },
        {
            "key": "SalesDayBook",
            "title": "Sales Day Book",
            "module": "Point Of Sale",
            "menu": ["Sales Day Book"],
            "cols": ["Vdate", "Bills", "Total", "Taxable", "Tax", "RoundOff", "NetAmt"],
            "sql": (
                "SELECT Vdate,COUNT(*),SUM(Total),SUM(Taxable),SUM(Tax),SUM(RoundOff),SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate"
            ),
        },
        {
            "key": "SalesSummary",
            "title": "Sales Summary",
            "module": "Point Of Sale",
            "menu": ["Sales Summary"],
            "cols": ["Vdate", "Bills", "NetAmt"],
            "sql": "SELECT TOP ({L}) Vdate,COUNT(*),SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate",
        },
        {
            "key": "SaleSumm",
            "title": "Sale Summary",
            "module": "Point Of Sale",
            "menu": ["Sale Summ"],
            "cols": ["Outlet", "Bills", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) RestCode,COUNT(*),SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY RestCode ORDER BY SUM(NetAmt) DESC"
            ),
        },
        {
            "key": "SaleSummConsolidated",
            "title": "Sale Summary Consolidated",
            "module": "Point Of Sale",
            "menu": ["Sale Summary Consolidated"],
            "cols": ["Date", "OutletWise", "Total"],
            "sql": (
                "SELECT TOP ({L}) Vdate,RestCode,SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate,RestCode ORDER BY Vdate"
            ),
        },
        {
            "key": "SettleRep",
            "title": "Settlement Report",
            "module": "Point Of Sale",
            "menu": ["Settlement Report"],
            "cols": ["Bill_No", "Bill_Date", "FolioNo", "Guestname", "BillAmt", "SettMode", "SettAmt", "Status"],
            "sql": (
                "SELECT TOP ({L}) Bill_No,Bill_Date,FolioNo,Guestname,BillAmt,ISNULL(SettMode,''),SettAmt,ISNULL(Status,'') FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? ORDER BY Bill_Date,Bill_No"
            ),
        },
        {
            "key": "SettleRepHall",
            "title": "Settlement Report (Hall)",
            "module": "Point Of Sale",
            "menu": ["Settlement Report (Hall)"],
            "cols": ["Bill_No", "Bill_Date", "Party", "BillAmt", "SettMode", "SettAmt"],
            "sql": (
                "SELECT TOP ({L}) Bill_No,Bill_Date,ISNULL(Party,''),BillAmt,ISNULL(SettMode,''),SettAmt FROM FOMBillDetails WHERE Bill_Date BETWEEN ? AND ? ORDER BY Bill_Date"
            ),
        },
        {
            "key": "TableWiseSale",
            "title": "Table Wise Sale",
            "module": "Point Of Sale",
            "menu": ["Table Wise Sale"],
            "cols": ["Table", "Bills", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(TableNo,''),COUNT(*),SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY TableNo ORDER BY SUM(NetAmt) DESC"
            ),
        },
        {
            "key": "TallyPOSReport",
            "title": "Tally POS Report",
            "module": "Point Of Sale",
            "menu": ["Tally POS Report"],
            "cols": ["Vdate", "DocId", "Outlet", "Party", "NetAmt", "Tax"],
            "sql": "SELECT TOP ({L}) Vdate,DocId,RestCode,ISNULL(Party,''),NetAmt,Tax FROM Sale1 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate",
        },
        {
            "key": "TaxWiseSale",
            "title": "Tax Wise Sale",
            "module": "Point Of Sale",
            "menu": ["Tax Wise Sale"],
            "cols": ["TaxCode", "BaseValue", "TaxPer", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,SUM(BaseValue),TaxPer,SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode,TaxPer ORDER BY TaxCode"
            ),
        },
        {
            "key": "VoidBills",
            "title": "Void Bills",
            "module": "Point Of Sale",
            "menu": ["Void Bills"],
            "cols": ["Vdate", "DocId", "Outlet", "NetAmt", "User"],
            "sql": "SELECT TOP ({L}) Vdate,DocId,RestCode,NetAmt,ISNULL(U_Name,'') FROM Sale1 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate",
            "note": "Void/deleted bills",
        },
        {
            "key": "WaiterWiseSale",
            "title": "Waiter Wise Sale",
            "module": "Point Of Sale",
            "menu": ["Waiter Wise Sale"],
            "cols": ["Waiter", "Bills", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Waiter,''),COUNT(*),SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Waiter ORDER BY SUM(NetAmt) DESC"
            ),
        },
        {
            "key": "SalePerCover",
            "title": "Sales Register Per Cover",
            "module": "General",
            "menu": ["Sal Reg Per Cover"],
            "cols": ["Vdate", "Outlet", "Covers", "NetAmt", "PerCover"],
            "sql": (
                "SELECT TOP ({L}) Vdate,RestCode,ISNULL(Covers,0),SUM(NetAmt),CASE WHEN ISNULL(Covers,0)>0 THEN SUM(NetAmt)/Covers ELSE 0 END FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate,RestCode,Covers ORDER BY Vdate"
            ),
        },
        {
            "key": "ABCAnalysisSale",
            "title": "ABC Analysis (Sale)",
            "module": "Inventory",
            "menu": ["ABC Analysis (Sale)"],
            "cols": ["Item", "SaleValue", "CumPct", "Class"],
            "sql": (
                "SELECT TOP ({L}) Item,SUM(ISNULL(Amount,0)) AS SaleValue,0,'A' FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SaleValue DESC"
            ),
            "note": "ABC classification on POS sales",
        },
        {
            "key": "CashCreditPurch",
            "title": "Cash/Credit Purchase",
            "module": "Inventory",
            "menu": ["Cash/Credit Purchase"],
            "cols": ["Vdate", "Vtype", "VNo", "Party", "Amount"],
            "sql": "SELECT TOP ({L}) Vdate,Vtype,VNo,ISNULL(Party,''),Amount FROM Stock WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId",
            "note": "Purchase from Stock table",
        },
        {
            "key": "CostAnalysis",
            "title": "Cost Analysis",
            "module": "Inventory",
            "menu": ["Cost Analysis"],
            "cols": ["Item", "Qty", "Rate", "Amount"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(QtyRcp,0)),AVG(ISNULL(Rate,0)),SUM(ISNULL(Amount,0)) FROM Stock WHERE QtyRcp>0 AND Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(ISNULL(Amount,0)) DESC"
            ),
        },
        {
            "key": "DailyStoreIssRpt",
            "title": "Daily Store Issue",
            "module": "Inventory",
            "menu": ["Daily Store Issue Reports"],
            "cols": ["Vdate", "IssueDocs", "IssuedQty", "IssueValue"],
            "sql": (
                "SELECT Vdate,COUNT(DISTINCT DocId),SUM(QtyIss),SUM(QtyIss*Rate) FROM Stock WHERE QtyIss>0 AND Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate"
            ),
        },
        {
            "key": "ExcessConsumption",
            "title": "Excess Consumption",
            "module": "Inventory",
            "menu": ["Excess Consumption"],
            "cols": ["Item", "Issued", "Expected", "Excess"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(QtyIss,0)),0,0 FROM Stock WHERE QtyIss>0 AND Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(ISNULL(QtyIss,0)) DESC"
            ),
            "note": "Excess consumption analysis",
        },
        {
            "key": "FBCostStatement",
            "title": "FB Cost Statement",
            "module": "Inventory",
            "menu": ["FB Cost Statement"],
            "cols": ["Item", "Qty", "Rate", "Amount"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(QtyIss,0)),AVG(ISNULL(Rate,0)),SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0)) FROM Stock WHERE QtyIss>0 AND Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0)) DESC"
            ),
        },
        {
            "key": "FoodCost",
            "title": "Food Cost",
            "module": "Inventory",
            "menu": ["Food Cost"],
            "cols": ["Item", "QtyIss", "Rate", "Amount"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(QtyIss,0)),AVG(ISNULL(Rate,0)),SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0)) FROM Stock WHERE QtyIss>0 AND Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(ISNULL(QtyIss,0)*ISNULL(Rate,0)) DESC"
            ),
        },
        {
            "key": "IndentReg",
            "title": "Indent Register",
            "module": "Inventory",
            "menu": ["Indent Register"],
            "cols": ["Vdate", "Vtype", "VNo", "Item", "QtyReq", "QtyIss"],
            "sql": (
                "SELECT TOP ({L}) Vdate,Vtype,VNo,ISNULL(Item,''),ISNULL(QtyReq,0),ISNULL(QtyIss,0) FROM Stock WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId"
            ),
        },
        {
            "key": "IssueReg",
            "title": "Issue Register",
            "module": "Inventory",
            "menu": ["Issue Register"],
            "cols": ["Vdate", "Vtype", "VNo", "Item", "QtyIss", "Rate", "Amount"],
            "sql": (
                "SELECT TOP ({L}) Vdate,Vtype,VNo,ISNULL(Item,''),QtyIss,Rate,Amount FROM Stock WHERE QtyIss>0 AND Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId"
            ),
        },
        {
            "key": "IssueRegister",
            "title": "Issue Register (Detail)",
            "module": "Inventory",
            "menu": ["Issue Register"],
            "cols": ["Vdate", "Vtype", "VNo", "Item", "QtyIss", "Rate", "Amount", "GodownCode"],
            "sql": (
                "SELECT TOP ({L}) Vdate,Vtype,VNo,ISNULL(Item,''),QtyIss,Rate,Amount,ISNULL(GodownCode,'') FROM Stock WHERE QtyIss>0 AND Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId"
            ),
        },
        {
            "key": "KitchenStkRep",
            "title": "Kitchen Stock Report",
            "module": "Inventory",
            "menu": ["Kitchen Stock Report"],
            "cols": ["Item", "QtyRcp", "QtyIss", "Balance"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(QtyRcp,0)),SUM(ISNULL(QtyIss,0)),SUM(ISNULL(QtyRcp,0))-SUM(ISNULL(QtyIss,0)) FROM Stock WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY Item"
            ),
        },
        {
            "key": "KitchenStkSumm",
            "title": "Kitchen Stock Summary",
            "module": "Inventory",
            "menu": ["Kitchen Stock Summary"],
            "cols": ["ItemGroup", "QtyRcp", "QtyIss", "Balance"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(ItemGroup,''),SUM(ISNULL(QtyRcp,0)),SUM(ISNULL(QtyIss,0)),SUM(ISNULL(QtyRcp,0))-SUM(ISNULL(QtyIss,0)) FROM Stock WHERE Vdate BETWEEN ? AND ? GROUP BY ItemGroup ORDER BY ItemGroup"
            ),
        },
        {
            "key": "LiquorSaleRep",
            "title": "Liquor Sale Report",
            "module": "Inventory",
            "menu": ["Liquor Sale Report"],
            "cols": ["Item", "Qty", "Amount"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(Qty,0)),SUM(ISNULL(Amount,0)) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(ISNULL(Amount,0)) DESC"
            ),
            "note": "Liquor sales from POS",
        },
        {
            "key": "ProductionReport",
            "title": "Production Report",
            "module": "Inventory",
            "menu": ["Production Report"],
            "cols": ["Vdate", "Item", "Qty", "Rate", "Amount"],
            "sql": (
                "SELECT TOP ({L}) Vdate,ISNULL(Item,''),ISNULL(QtyRcp,0),ISNULL(Rate,0),ISNULL(Amount,0) FROM Stock WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId"
            ),
        },
        {
            "key": "PurchaseLedger",
            "title": "Purchase Ledger",
            "module": "Inventory",
            "menu": ["Purchase Ledger"],
            "cols": ["Vdate", "Vtype", "VNo", "Party", "Amount"],
            "sql": (
                "SELECT TOP ({L}) Vdate,Vtype,VNo,ISNULL(Party,''),Amount FROM Stock WHERE Vtype IN ('PUR','PRC') AND Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId"
            ),
        },
        {
            "key": "PurchaseReg",
            "title": "Purchase Register",
            "module": "Inventory",
            "menu": ["Purchase Register"],
            "cols": ["Vdate", "Vtype", "VNo", "Item", "QtyRcp", "Rate", "Amount"],
            "sql": (
                "SELECT TOP ({L}) Vdate,Vtype,VNo,ISNULL(Item,''),QtyRcp,Rate,Amount FROM Stock WHERE QtyRcp>0 AND Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId"
            ),
        },
        {
            "key": "PurchaseSumm",
            "title": "Purchase Summary",
            "module": "Inventory",
            "menu": ["Purchase Summary"],
            "cols": ["Item", "Qty", "Amount"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(QtyRcp,0)),SUM(ISNULL(Amount,0)) FROM Stock WHERE QtyRcp>0 AND Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(ISNULL(Amount,0)) DESC"
            ),
        },
        {
            "key": "PurchBill",
            "title": "Purchase Bill",
            "module": "Inventory",
            "menu": ["Purchase Bill"],
            "cols": ["Vdate", "DocId", "Party", "Amount"],
            "sql": (
                "SELECT TOP ({L}) Vdate,DocId,ISNULL(Party,''),Amount FROM Stock WHERE Vtype IN ('PUR','PRC') AND Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId"
            ),
        },
        {
            "key": "PurchOrder",
            "title": "Purchase Order",
            "module": "Inventory",
            "menu": ["Purchase Order"],
            "cols": ["Vdate", "DocId", "Item", "QtyReq", "Rate"],
            "sql": (
                "SELECT TOP ({L}) Vdate,DocId,ISNULL(Item,''),ISNULL(QtyReq,0),ISNULL(Rate,0) FROM Stock WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId"
            ),
        },
        {
            "key": "RestIssue",
            "title": "Restaurant Issue",
            "module": "Inventory",
            "menu": ["Restaurant Issue"],
            "cols": ["Vdate", "Vtype", "VNo", "Item", "QtyIss", "Rate"],
            "sql": (
                "SELECT TOP ({L}) Vdate,Vtype,VNo,ISNULL(Item,''),QtyIss,Rate FROM Stock WHERE QtyIss>0 AND Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId"
            ),
        },
        {
            "key": "RStockRegister",
            "title": "R-Stock Register",
            "module": "Inventory",
            "menu": ["R-Stock Register"],
            "cols": ["Vdate", "Item", "QtyRcp", "QtyIss", "Balance"],
            "sql": (
                "SELECT TOP ({L}) Vdate,ISNULL(Item,''),ISNULL(QtyRcp,0),ISNULL(QtyIss,0),ISNULL(QtyRcp,0)-ISNULL(QtyIss,0) FROM Stock WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,Item"
            ),
        },
        {
            "key": "RStockSummary",
            "title": "R-Stock Summary",
            "module": "Inventory",
            "menu": ["R-Stock Summary"],
            "cols": ["Item", "QtyRcp", "QtyIss", "Balance"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(QtyRcp,0)),SUM(ISNULL(QtyIss,0)),SUM(ISNULL(QtyRcp,0))-SUM(ISNULL(QtyIss,0)) FROM Stock WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY Item"
            ),
        },
        {
            "key": "StockINHand",
            "title": "Stock In Hand",
            "module": "Inventory",
            "menu": ["Stock In Hand"],
            "cols": ["Item", "QtyRcp", "QtyIss", "Balance"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(QtyRcp,0)),SUM(ISNULL(QtyIss,0)),SUM(ISNULL(QtyRcp,0))-SUM(ISNULL(QtyIss,0)) FROM Stock WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY Item"
            ),
        },
        {
            "key": "StockRegister",
            "title": "Stock Register",
            "module": "Inventory",
            "menu": ["Stock Register"],
            "cols": ["Vdate", "Item", "QtyRcp", "QtyIss", "Rate", "Amount"],
            "sql": (
                "SELECT TOP ({L}) Vdate,ISNULL(Item,''),ISNULL(QtyRcp,0),ISNULL(QtyIss,0),ISNULL(Rate,0),ISNULL(Amount,0) FROM Stock WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,Item"
            ),
        },
        {
            "key": "StockRegStore",
            "title": "Stock Register (Store)",
            "module": "Inventory",
            "menu": ["Stock Register (Store)"],
            "cols": ["Vdate", "GodownCode", "Item", "QtyRcp", "QtyIss"],
            "sql": (
                "SELECT TOP ({L}) Vdate,ISNULL(GodownCode,''),ISNULL(Item,''),ISNULL(QtyRcp,0),ISNULL(QtyIss,0) FROM Stock WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,GodownCode,Item"
            ),
        },
        {
            "key": "StockSumm",
            "title": "Stock Summary",
            "module": "Inventory",
            "menu": ["Stock Summary"],
            "cols": ["Item", "QtyRcp", "QtyIss", "Balance"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(QtyRcp,0)),SUM(ISNULL(QtyIss,0)),SUM(ISNULL(QtyRcp,0))-SUM(ISNULL(QtyIss,0)) FROM Stock GROUP BY Item ORDER BY Item"
            ),
        },
        {
            "key": "StockSummaryP-SBasis",
            "title": "Stock Summary Period/Session Basis",
            "module": "Inventory",
            "menu": ["Stock Summary P-S Basis"],
            "cols": ["Item", "QtyRcp", "QtyIss", "Balance"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(ISNULL(QtyRcp,0)),SUM(ISNULL(QtyIss,0)),SUM(ISNULL(QtyRcp,0))-SUM(ISNULL(QtyIss,0)) FROM Stock WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY Item"
            ),
        },
        {
            "key": "StockSummStore",
            "title": "Stock Summary (Store wise)",
            "module": "Inventory",
            "menu": ["Stock Summary Store wise"],
            "cols": ["GodownCode", "Item", "QtyRcp", "QtyIss", "Balance"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(GodownCode,''),ISNULL(Item,''),SUM(ISNULL(QtyRcp,0)),SUM(ISNULL(QtyIss,0)),SUM(ISNULL(QtyRcp,0))-SUM(ISNULL(QtyIss,0)) FROM Stock WHERE Vdate BETWEEN ? AND ? GROUP BY GodownCode,Item ORDER BY GodownCode,Item"
            ),
        },
        {
            "key": "StoreIssReg",
            "title": "Store Issue Register",
            "module": "Inventory",
            "menu": ["Store Issue Register"],
            "cols": ["Vdate", "Vtype", "VNo", "Item", "QtyIss", "Rate", "Amount", "GodownCode"],
            "sql": (
                "SELECT TOP ({L}) Vdate,Vtype,VNo,ISNULL(Item,''),QtyIss,Rate,Amount,ISNULL(GodownCode,'') FROM Stock WHERE QtyIss>0 AND Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId"
            ),
        },
        {
            "key": "StoreIssueReport",
            "title": "Store Issue Report",
            "module": "Inventory",
            "menu": ["Store Issue Report"],
            "cols": ["Vdate", "Item", "QtyIss", "Rate", "Amount"],
            "sql": (
                "SELECT TOP ({L}) Vdate,ISNULL(Item,''),QtyIss,Rate,Amount FROM Stock WHERE QtyIss>0 AND Vdate BETWEEN ? AND ? ORDER BY Vdate,DocId"
            ),
        },
        {
            "key": "Annexure",
            "title": "Annexure",
            "module": "Tax",
            "menu": ["Annexure"],
            "cols": ["TaxCode", "TaxPer", "Taxable", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,TaxPer,SUM(BaseValue),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode,TaxPer ORDER BY TaxCode"
            ),
        },
        {
            "key": "ExtraChargesDuringStay",
            "title": "Extra Charges During Stay",
            "module": "Tax",
            "menu": ["Extra Charges During Stay"],
            "cols": ["FolioNo", "PayCode", "AmtDr", "Vdate"],
            "sql": (
                "SELECT TOP ({L}) FolioNo,PayCode,AmtDr,Vdate FROM PayCharge WHERE AmtDr>0 AND Vdate BETWEEN ? AND ? ORDER BY Vdate,FolioNo"
            ),
            "note": "Extra charges detail",
        },
        {
            "key": "FOMTaxDetail",
            "title": "FOM Tax Detail",
            "module": "Tax",
            "menu": ["Luxury Tax Report", "Form -3 (Luxury Tax Register)"],
            "cols": ["Vdate", "TaxCode", "BaseValue", "TaxPer", "TaxAmt"],
            "sql": (
                "SELECT Vdate,TaxCode,SUM(BaseValue),TaxPer,SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate,TaxCode,TaxPer ORDER BY Vdate,TaxCode"
            ),
        },
        {
            "key": "FOMTaxWiseChargeDetail",
            "title": "FOM Tax Wise Charge Detail",
            "module": "Tax",
            "menu": ["FOM Tax Wise Charge Detail"],
            "cols": ["TaxCode", "BaseValue", "TaxPer", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,SUM(BaseValue),TaxPer,SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode,TaxPer ORDER BY TaxCode"
            ),
        },
        {
            "key": "Form24AnnexureA",
            "title": "Form 24 Annexure A",
            "module": "Tax",
            "menu": ["Form 24 Annexure A"],
            "cols": ["TaxCode", "TaxPer", "Taxable", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,TaxPer,SUM(BaseValue),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode,TaxPer ORDER BY TaxCode"
            ),
        },
        {
            "key": "FormIII",
            "title": "Form III",
            "module": "Tax",
            "menu": ["Form III"],
            "cols": ["TaxCode", "TaxPer", "Taxable", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,TaxPer,SUM(BaseValue),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode,TaxPer ORDER BY TaxCode"
            ),
        },
        {
            "key": "GSTR1",
            "title": "GSTR1",
            "module": "Tax",
            "menu": ["GSTR1"],
            "cols": ["GSTIN", "Taxable", "CGST", "SGST", "IGST", "Total"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Party,''),SUM(Taxable),0,0,0,SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Party ORDER BY SUM(NetAmt) DESC"
            ),
            "note": "GSTR1 summary from POS",
        },
        {
            "key": "GSTR2(3)",
            "title": "GSTR2(3) - Import",
            "module": "Tax",
            "menu": ["GSTR2(3)"],
            "cols": ["Item", "Taxable", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(BaseValue),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(TaxAmt) DESC"
            ),
            "note": "GSTR2 import of goods",
        },
        {
            "key": "GSTR2(4A)",
            "title": "GSTR2(4A) - Inward Supply",
            "module": "Tax",
            "menu": ["GSTR2(4A)"],
            "cols": ["Item", "Taxable", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(BaseValue),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(TaxAmt) DESC"
            ),
            "note": "GSTR2 inward supply",
        },
        {
            "key": "GSTR2(4B)",
            "title": "GSTR2(4B) - Inward Supply Reversal",
            "module": "Tax",
            "menu": ["GSTR2(4B)"],
            "cols": ["Item", "Taxable", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Item,''),SUM(BaseValue),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Item ORDER BY SUM(TaxAmt) DESC"
            ),
            "note": "GSTR2 inward supply reversal",
        },
        {
            "key": "LuxuryTaxRegister",
            "title": "Luxury Tax Register",
            "module": "Tax",
            "menu": ["Luxury Tax Register"],
            "cols": ["Vdate", "TaxCode", "BaseValue", "TaxPer", "TaxAmt"],
            "sql": (
                "SELECT Vdate,TaxCode,SUM(BaseValue),TaxPer,SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate,TaxCode,TaxPer ORDER BY Vdate,TaxCode"
            ),
        },
        {
            "key": "LuxuryTaxRegisterI",
            "title": "Luxury Tax Register I",
            "module": "Tax",
            "menu": ["Luxury Tax Register I"],
            "cols": ["TaxCode", "BaseValue", "TaxPer", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,SUM(BaseValue),TaxPer,SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode,TaxPer ORDER BY TaxCode"
            ),
        },
        {
            "key": "LTFORMII",
            "title": "LT Form II",
            "module": "Tax",
            "menu": ["LT Form II"],
            "cols": ["TaxCode", "TaxPer", "Taxable", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,TaxPer,SUM(BaseValue),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode,TaxPer ORDER BY TaxCode"
            ),
            "note": "Luxury tax form II",
        },
        {
            "key": "LTFORMIV",
            "title": "LT Form IV",
            "module": "Tax",
            "menu": ["LT Form IV"],
            "cols": ["TaxCode", "TaxPer", "Taxable", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,TaxPer,SUM(BaseValue),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode,TaxPer ORDER BY TaxCode"
            ),
            "note": "Luxury tax form IV",
        },
        {
            "key": "MemTaxReport",
            "title": "Member Tax Report",
            "module": "Tax",
            "menu": ["Member Tax Report"],
            "cols": ["Party", "Taxable", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Party,''),SUM(Taxable),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Party ORDER BY SUM(TaxAmt) DESC"
            ),
            "note": "Member tax detail",
        },
        {
            "key": "Reconciliation(R2A)",
            "title": "Reconciliation R2A",
            "module": "Tax",
            "menu": ["Reconciliation (R2A)"],
            "cols": ["Vdate", "DocId", "Party", "NetAmt", "Tax"],
            "sql": "SELECT TOP ({L}) Vdate,DocId,ISNULL(Party,''),NetAmt,Tax FROM Sale1 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate",
            "note": "Reconciliation report",
        },
        {
            "key": "ReservationStatus",
            "title": "Reservation Status",
            "module": "Tax",
            "menu": ["Reservation Status"],
            "cols": ["FolioNo", "RoomNo", "Guest", "Status", "ChkInDate"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),CASE WHEN o.ChkOutDate IS NULL THEN 'Active' ELSE 'Out' END,o.ChkInDate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "TaxDetails",
            "title": "Tax Details",
            "module": "Tax",
            "menu": ["Tax Details"],
            "cols": ["TaxCode", "TaxPer", "BaseValue", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,TaxPer,SUM(BaseValue),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode,TaxPer ORDER BY TaxCode"
            ),
        },
        {
            "key": "TaxInvoiceDetail",
            "title": "Tax Invoice Detail",
            "module": "Tax",
            "menu": ["Tax Invoice Detail"],
            "cols": ["Vdate", "DocId", "Party", "Taxable", "Tax", "NetAmt"],
            "sql": "SELECT TOP ({L}) Vdate,DocId,ISNULL(Party,''),Taxable,Tax,NetAmt FROM Sale1 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate",
        },
        {
            "key": "TaxRegister",
            "title": "Tax Register",
            "module": "Tax",
            "menu": ["Tax Register"],
            "cols": ["Vdate", "TaxCode", "BaseValue", "TaxPer", "TaxAmt"],
            "sql": (
                "SELECT Vdate,TaxCode,SUM(BaseValue),TaxPer,SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate,TaxCode,TaxPer ORDER BY Vdate,TaxCode"
            ),
        },
        {
            "key": "TaxReport",
            "title": "Tax Report",
            "module": "Tax",
            "menu": ["Tax Report"],
            "cols": ["TaxCode", "TaxPer", "Taxable", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,TaxPer,SUM(BaseValue),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode,TaxPer ORDER BY TaxCode"
            ),
        },
        {
            "key": "TaxReportHall",
            "title": "Tax Report (Hall)",
            "module": "Tax",
            "menu": ["Tax Report (Hall)"],
            "cols": ["TaxCode", "TaxPer", "Taxable", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,TaxPer,SUM(BaseValue),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode,TaxPer ORDER BY TaxCode"
            ),
        },
        {
            "key": "TaxSumm",
            "title": "Tax Summary",
            "module": "Tax",
            "menu": ["Tax Summary"],
            "cols": ["TaxCode", "Taxable", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,SUM(BaseValue),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode ORDER BY TaxCode"
            ),
        },
        {
            "key": "TaxSummaryHall",
            "title": "Tax Summary (Hall)",
            "module": "Tax",
            "menu": ["Tax Summary (Hall)"],
            "cols": ["TaxCode", "Taxable", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,SUM(BaseValue),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode ORDER BY TaxCode"
            ),
        },
        {
            "key": "TaxwiseDetailReportHall",
            "title": "Tax Wise Detail Report (Hall)",
            "module": "Tax",
            "menu": ["Taxwise Detail Report (Hall)"],
            "cols": ["Vdate", "TaxCode", "BaseValue", "TaxPer", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) Vdate,TaxCode,SUM(BaseValue),TaxPer,SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate,TaxCode,TaxPer ORDER BY Vdate,TaxCode"
            ),
        },
        {
            "key": "UPVATXXIV",
            "title": "UP VAT XXIV",
            "module": "Tax",
            "menu": ["UPVATXXIV"],
            "cols": ["TaxCode", "TaxPer", "Taxable", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,TaxPer,SUM(BaseValue),SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode,TaxPer ORDER BY TaxCode"
            ),
            "note": "UP VAT form XXIV",
        },
        {
            "key": "VATRegister",
            "title": "VAT Register",
            "module": "Tax",
            "menu": ["VAT Register"],
            "cols": ["Vdate", "TaxCode", "BaseValue", "TaxPer", "TaxAmt"],
            "sql": (
                "SELECT Vdate,TaxCode,SUM(BaseValue),TaxPer,SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate,TaxCode,TaxPer ORDER BY Vdate,TaxCode"
            ),
        },
        {
            "key": "VATRegisterII",
            "title": "VAT Register II",
            "module": "Tax",
            "menu": ["VAT Register II"],
            "cols": ["TaxCode", "BaseValue", "TaxPer", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,SUM(BaseValue),TaxPer,SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode,TaxPer ORDER BY TaxCode"
            ),
        },
        {
            "key": "VATRegisterIII",
            "title": "VAT Register III",
            "module": "Tax",
            "menu": ["VAT Register III"],
            "cols": ["TaxCode", "BaseValue", "TaxPer", "TaxAmt"],
            "sql": (
                "SELECT TOP ({L}) TaxCode,SUM(BaseValue),TaxPer,SUM(TaxAmt) FROM Sale2 WHERE Vdate BETWEEN ? AND ? GROUP BY TaxCode,TaxPer ORDER BY TaxCode"
            ),
        },
        {
            "key": "AMRMorningReport",
            "title": "AMR Morning Report",
            "module": "General",
            "menu": ["AMR Morning Report"],
            "cols": ["Date", "Arrivals", "Departures", "InHouse"],
            "sql": (
                "SELECT TOP ({L}) Vdate,COUNT(DISTINCT CASE WHEN ChkInDate=Vdate THEN DocId END),COUNT(DISTINCT CASE WHEN DepDate=Vdate THEN DocId END),COUNT(DISTINCT CASE WHEN ChkInDate<=Vdate AND ISNULL(ChkOutDate,'9999-12-31')>Vdate THEN DocId END) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate"
            ),
        },
        {
            "key": "CardStatusReport",
            "title": "Card Status Report",
            "module": "General",
            "menu": ["Card Status Report"],
            "cols": ["CardType", "Active", "Expired", "Total"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(CardType,''),COUNT(CASE WHEN ExpDate>=GETDATE() THEN 1 END),COUNT(CASE WHEN ExpDate<GETDATE() THEN 1 END),COUNT(*) FROM MemberCards GROUP BY CardType ORDER BY CardType"
            ),
            "note": "MemberCards VB6",
        },
        {
            "key": "ConfirmLetter",
            "title": "Confirmation Letter",
            "module": "General",
            "menu": ["Confirm Letter"],
            "cols": ["FolioNo", "RoomNo", "Guest", "ChkInDate", "DepDate"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),o.ChkInDate,o.DepDate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "CoverAnalysis",
            "title": "Cover Analysis",
            "module": "General",
            "menu": ["Cover Analysis"],
            "cols": ["Date", "Covers", "NetAmt", "PerCover"],
            "sql": (
                "SELECT TOP ({L}) Vdate,SUM(ISNULL(Covers,0)),SUM(NetAmt),CASE WHEN SUM(ISNULL(Covers,0))>0 THEN SUM(NetAmt)/SUM(ISNULL(Covers,0)) ELSE 0 END FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate"
            ),
        },
        {
            "key": "CreditReport",
            "title": "Credit Report",
            "module": "General",
            "menu": ["Credit Report"],
            "cols": ["Party", "Bills", "NetAmt"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Party,''),COUNT(*),SUM(NetAmt) FROM Sale1 WHERE Party IS NOT NULL AND Party<>'' AND Vdate BETWEEN ? AND ? GROUP BY Party ORDER BY SUM(NetAmt) DESC"
            ),
        },
        {
            "key": "CustomerDetail",
            "title": "Customer Detail",
            "module": "General",
            "menu": ["Customer Detail"],
            "cols": ["Name", "Address", "City", "Phone"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(Name,''),ISNULL(Address,''),ISNULL(City,''),ISNULL(Phone,'') FROM GuestFolio WHERE Vdate BETWEEN ? AND ? ORDER BY Name"
            ),
            "note": "Customer master from GuestFolio",
        },
        {
            "key": "DailyDiet",
            "title": "Daily Diet",
            "module": "General",
            "menu": ["Daily Diet"],
            "cols": ["Date", "Item", "Qty", "Rate", "Amount"],
            "sql": (
                "SELECT TOP ({L}) Vdate,ISNULL(Item,''),ISNULL(Qty,0),ISNULL(Rate,0),ISNULL(Amount,0) FROM KOT WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate,Item"
            ),
            "note": "Daily diet/report",
        },
        {
            "key": "DailyFuncSheet",
            "title": "Daily Function Sheet",
            "module": "General",
            "menu": ["Daily Function Sheet"],
            "cols": ["Date", "Hall", "Function", "Guests", "Amount"],
            "sql": (
                "SELECT TOP ({L}) Vdate,ISNULL(HallName,''),ISNULL(FunctionType,''),ISNULL(GuestCount,0),ISNULL(Amount,0) FROM HallSale1 WHERE Vdate BETWEEN ? AND ? ORDER BY Vdate"
            ),
            "note": "Hall booking daily",
        },
        {
            "key": "DailySumm",
            "title": "Daily Summary",
            "module": "General",
            "menu": ["Daily Summary"],
            "cols": ["Date", "FOC", "POS", "Total"],
            "sql": "SELECT TOP ({L}) Vdate,0,SUM(NetAmt),SUM(NetAmt) FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate ORDER BY Vdate",
        },
        {
            "key": "Form1TourismReport",
            "title": "Form 1 Tourism Report",
            "module": "General",
            "menu": ["Form 1 Tourism"],
            "cols": ["FolioNo", "RoomNo", "Guest", "Nationality", "ChkInDate"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(f.Nationality,''),o.ChkInDate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "Form2TourismReport",
            "title": "Form 2 Tourism Report",
            "module": "General",
            "menu": ["Form 2 Tourism"],
            "cols": ["FolioNo", "RoomNo", "Guest", "Nationality", "PassportNo"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(f.Nationality,''),ISNULL(f.PassportNo,'') FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "Form4TourismReport",
            "title": "Form 4 Tourism Report",
            "module": "General",
            "menu": ["Form 4 Tourism"],
            "cols": ["FolioNo", "RoomNo", "Guest", "Nationality", "ChkInDate", "DepDate"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(f.Nationality,''),o.ChkInDate,o.DepDate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.ChkInDate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "Form5TourismReport",
            "title": "Form 5 Tourism Report",
            "module": "General",
            "menu": ["Form 5 Tourism"],
            "cols": ["FolioNo", "RoomNo", "Guest", "Nationality", "DepDate"],
            "sql": (
                "SELECT TOP ({L}) o.FolioNo,o.RoomNo,ISNULL(f.Name,''),ISNULL(f.Nationality,''),o.DepDate FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.DepDate BETWEEN ? AND ? ORDER BY o.DepDate"
            ),
        },
        {
            "key": "Form6TourismReport",
            "title": "Form 6 Tourism Report",
            "module": "General",
            "menu": ["Form 6 Tourism"],
            "cols": ["Guest", "RoomNo", "Nights", "RoomRevenue"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(f.Name,''),o.RoomNo,ISNULL(o.NoDays,0),ISNULL(o.RoomRevenue,0) FROM RoomOcc o LEFT JOIN GuestFolio f ON f.DocId=(SELECT TOP 1 DocId FROM GuestFolio g WHERE g.FolioNo=o.FolioNo ORDER BY g.DocId) WHERE o.Vdate BETWEEN ? AND ? ORDER BY o.ChkInDate"
            ),
        },
        {
            "key": "FunctionWiseItemDetail",
            "title": "Function Wise Item Detail",
            "module": "General",
            "menu": ["Function Wise Item Detail"],
            "cols": ["Hall", "Item", "Qty", "Amount"],
            "sql": (
                "SELECT TOP ({L}) ISNULL(HallName,''),ISNULL(Item,''),ISNULL(Qty,0),ISNULL(Amount,0) FROM HallSale2 WHERE Vdate BETWEEN ? AND ? ORDER BY HallName,Item"
            ),
            "note": "Hall item detail",
        },
        {
            "key": "MonthlyStatisticalReturn",
            "title": "Monthly Statistical Return",
            "module": "General",
            "menu": ["Monthly Statistical Return"],
            "cols": ["Month", "Arrivals", "Departures", "RoomRevenue", "TotalRevenue"],
            "sql": (
                "SELECT TOP ({L}) CONVERT(VARCHAR(7),Vdate,120),COUNT(CASE WHEN ChkInDate=Vdate THEN 1 END),COUNT(CASE WHEN DepDate=Vdate THEN 1 END),SUM(RoomRevenue),SUM(RoomRevenue+OtherRevenue) FROM GuestFolio WHERE Vdate BETWEEN ? AND ? GROUP BY CONVERT(VARCHAR(7),Vdate,120) ORDER BY CONVERT(VARCHAR(7),Vdate,120)"
            ),
        },
        {
            "key": "OccAnalysis",
            "title": "Occupancy Analysis",
            "module": "General",
            "menu": ["Occupancy Analysis"],
            "cols": ["Date", "TotalRooms", "Occupied"],
            "sql": (
                "WITH Dates AS (SELECT CAST(? AS date) AS d UNION ALL SELECT DATEADD(day,1,d) FROM Dates WHERE d < ?) SELECT d,(SELECT COUNT(*) FROM RoomOcc o),(SELECT COUNT(*) FROM RoomOcc o WHERE o.ChkInDate<=d AND ISNULL(o.ChkOutDate,'9999-12-31')>d) FROM Dates ORDER BY d OPTION (MAXRECURSION 0)"
            ),
        },
        {
            "key": "SalRegPerCover",
            "title": "Sales Register Per Cover",
            "module": "General",
            "menu": ["Sal Reg Per Cover"],
            "cols": ["Vdate", "Outlet", "Covers", "NetAmt", "PerCover"],
            "sql": (
                "SELECT TOP ({L}) Vdate,RestCode,ISNULL(Covers,0),SUM(NetAmt),CASE WHEN ISNULL(Covers,0)>0 THEN SUM(NetAmt)/Covers ELSE 0 END FROM Sale1 WHERE Vdate BETWEEN ? AND ? GROUP BY Vdate,RestCode,Covers ORDER BY Vdate"
            ),
        },

]


# --------------------------------------------------------------------------
# VB6 index-based report dispatch functions (MatRep_Click, MatVatR_Click)
# --------------------------------------------------------------------------

def mat_rep(index: int, cn=None) -> dict | None:
    """VB6 MatRep_Click - material/inventory report dispatch by index."""
    reports_data = {
        0: ("rInventRepView", "PurchaseReg", "Purchase Register"),
        1: ("rInventRepView", "PurchaseSumm", "Purchase Summary"),
        2: ("rInventRepView", "CashCreditPurch", "Cash/Credit Purchase"),
        3: ("rInventRepView", "StockRegStore", "Stock Register (Store)"),
        4: ("rInventRepView", "StockSummStore", "Stock Summary (Store)"),
        5: ("rInventRepView", "StockINHand", "Stock In Hand"),
        6: ("rInventRepView", "KitchenStkRep", "Kitchen Stock Report"),
        7: ("rInventRepView", "ExcessConsumption", "Excess Consumption"),
        8: ("rInventRepView", "RestIssue", "Restaurant Issue"),
        9: ("rInventRepView", "StoreIssReg", "Store Issue Register"),
        10: ("rInventRepView", "DailyStoreIssRpt", "Daily Store Issue Report"),
        11: ("rInventRepView", "PurchaseLedger", "Purchase Ledger"),
        12: ("rInventRepView", "IssueReg", "Issue Register"),
        13: ("rInventRepView", "StockSummaryPSBasis", "Stock Summary P/S Basis"),
        14: ("rInventRepView", "ABCAnalysis", "ABC Analysis"),
        15: ("rInventRepView", "PurchBill", "Purchase Bill"),
        16: ("rInventRepView", "StoreIssueReport", "Store Issue Report"),
        17: ("rInventRepView", "RStockRegister", "R-Stock Register"),
        18: ("rInventRepView", "RStockSummary", "R-Stock Summary"),
        19: ("rInventRepView", "KitchenStkSumm", "Kitchen Stock Summary"),
    }
    entry = reports_data.get(index)
    if not entry:
        return {"action": "mat_rep_unknown", "index": index,
                "message": f"MatRep index {index} not in mapping (0-19)"}
    form, report_name, description = entry
    return {"action": report_name.lower(), "form": form,
            "report_name": report_name, "description": description, "index": index}


def vat_register(index: int, cn=None) -> dict | None:
    """VB6 MatVatR_Click - VAT/GST register report dispatch by index."""
    reports_data = {
        0: ("rFaRepView", "VATRegister", "VAT Register"),
        10: ("rFaRepView", "VATRegisterII", "VAT Register II"),
        11: ("rFaRepView", "VATRegisterIII", "VAT Register III"),
        12: ("rFaRepView", "Form24AnnexureA", "Form 24 Annexure A"),
        13: ("rFaRepView", "FormIII", "Form III"),
        14: ("rFaRepView", "UPVATXXIV", "UP VAT XXIV"),
        16: ("rFaRepView", "GSTR1", "GSTR-1"),
        17: ("rFaRepView", "GSTR2_3", "GSTR-2 (3)"),
        18: ("rFaRepView", "GSTR2_4A", "GSTR-2 (4A)"),
        19: ("rFaRepView", "GSTR2_4B", "GSTR-2 (4B)"),
    }
    entry = reports_data.get(index)
    if not entry:
        return {"action": "vat_register_unknown", "index": index,
                "message": f"MatVatR index {index} not in mapping"}
    form, report_name, description = entry
    return {"action": report_name.lower(), "form": form,
            "report_name": report_name, "description": description, "index": index}


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
    # B019: sirf real ? placeholders gino — string literals ke andar wale
    # nahi (jaise ISNULL(s.Name,'?')). Literal-strip regex se.
    import re as _re
    n = len(_re.findall(r"\?", _re.sub(r"'(?:[^']|'')*'", "''", sql)))
    if n:
        if n % 2:
            raise ValueError(f"report '{key}' sql has odd date params")
        if d_from is None or d_to is None:
            raise ValueError(f"report '{key}' needs d_from/d_to")
        f = d_from if isinstance(d_from, str) else d_from.isoformat()
        t = d_to if isinstance(d_to, str) else d_to.isoformat()
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
