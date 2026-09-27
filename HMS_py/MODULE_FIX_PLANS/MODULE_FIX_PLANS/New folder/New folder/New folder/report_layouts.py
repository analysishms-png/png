# -*- coding: utf-8 -*-
"""
Har report ka expected output layout (columns) - report ke naam/category se derive.
Key = report name lower-case.
"""

# Common column sets
PARTY = "PartyCode"
DATE_COLS = "Vdate, DocId, VNo"

# per-report explicit layouts (STOCK reports + kuch important others)
LAYOUTS = {
"stockregister": "GrpName, Item, OpeningQty, PurchaseQty, IssueQty, ClosingQty, ClosingValue",
"stocksumm": "GrpName, Item, BalQty, StockValue",
"stockregstore": "GodownCode, Item, OpeningQty, ReceiptQty, IssueQty, ClosingQty",
"stocksummstore": "GodownCode, Item, BalQty, Value",
"stockinhand": "GrpName, Item, StockInHand, Unit, LastRate",
"stocksummaryp/sbasis": "Item, ConsumedQty, ConsumptionValue",
"kitchenstkrep": "Kitchen, GrpName, Item, KitchenStock, Unit",
"kitchenstksumm": "Item, IssuedToKitchen, KitchenStockValue",
"excessconsumption": "Item, TotalReceived, TotalIssued, Variance",
"restissue": "RestCode, Item, IssueQty, IssueValue",
"storeissreg": "Vdate, DocId, Vtype, Item, QtyIss, Rate, Amount, RestCode, GodownCode",
"storeissuereport": "Item, Vdate, DocId, RestCode, IssueQty, Rate, IssueValue",
"dailystoreissrpt": "Item, DayIssueQty, DayIssueValue",
"issuereg": "Vdate, Vtype, VNo, DocId, Item, QtyIss, Unit, Rate, Value, RestCode, U_Name",
"issueregister": "DepartCode, Item, IssueQty, Value",
"abcanalysis": "Item, ConsValue, CumPct, Class (A/B/C)",
"abcanalysissale": "Item, ConsValue, Class (A/B/C)",
"purchbill": "Vdate, DocId, VNo, PartyCode, Item, ChalQty, RecdQty, AccQty, RejQty, RecdUnit, Rate, BillValue, TaxAmt",
"purchorder": "Vdate, DocId, Item, OrderedQty, ReceivedQty, PendingQty, PartyCode",
"purchasereg": "Vdate, DocId, VNo, PartyCode, Qty, Amount, TaxAmt",
"purchasesumm": "PartyCode, Bills, PurchaseValue",
"purchaseledger": "PartyCode, Item, Vdate, DocId, QtyRec, Rate, Amount",
"cashcreditpurch": "PartyCode, Vdate, DocId, Amount",
"indentreg": "IndentDocId, IndentSNo, Vdate, DocId, Item, QtyIss, Value",
"foodcost": "Head (Consumption/Sales/Tax), Amount",
"fbcoststatement": "RestCode, Consumption, Sales",
"productionreport": "Item, QtyUsed, ProductionCost",
"liquorsalerep": "Item, QtySold, SaleValue",
"costanalysis": "Item, Qty, CostValue",
"rstockregister": "RestCode, Item, OpeningQty, ReceiptQty, IssueQty, ClosingQty, ClosingValue",
"rstocksummary": "RestCode, Item, BalQty, StockValue",
# kuch non-stock important reports
"seregister": "Vdate, DocId, Vtype, RestCode, NetAmt, Tax, CGST, SGST",
"saleregister": "Vdate, DocId, Vtype, RestCode, NetAmt, Tax, CGST, SGST",
"salesdaybook": "Vdate, DocId, VNo, RestCode, NetAmt, CashRecd, CrCardNo",
"itemwisesale": "Item/MenuCode, Qty, Amount, TaxAmt",
"kotwisedetails": "KOTDocId, KOTSno, Vdate, RestCode, Item, QtyIss, Rate, Amount",
"taxregister": "Vdate, TaxCode, BaseValue, TaxPer, TaxAmt",
"gstr1": "Vdate, DocId, Party/GSTIN, Taxable, CGST, SGST, IGST",
"daybook": "Vdate, Vtype, VNo, SunCode, Amount",
"ledger": "Vdate, DocId, SunCode, Debit, Credit, Balance",
"cashbook": "Vdate, DocId, PayCode, AmtDr, AmtCr",
"guestledger": "FolioNo, RoomNo, GuestName, Charges, Payments, Balance",
"occupancyreport": "Vdate, RoomsSold, RoomsAvail, OccupancyPct, Arrivals, Departures",
"nightauditreport": "Vdate, RestCode, Covers, NetAmt, Tax, NetCash, NetCredit",
"roomstatus": "RoomNo, RoomType, Status (Vacant/Occupied/Dirty), GuestName",
"payslip": "EmpCode, EmpName, Basic, DA, HRA, Deductions, NetPay",
}

def layout_for(name, cat):
    """Report name se expected output columns nikalo"""
    key = name.lower()
    if key in LAYOUTS:
        return LAYOUTS[key]
    # category-based fallback
    if cat == "STOCK / INVENTORY":
        return "Item, Qty, Rate, Amount, Vdate (approx layout)"
    if cat == "SALES / POS":
        return "Vdate, DocId, RestCode, Amount/Tax columns (bill-level layout)"
    if cat == "TAX / GST / VAT":
        return "Vdate, TaxCode, TaxableValue, TaxPer, TaxAmt (tax-register layout)"
    if cat == "ACCOUNTS / FINANCE":
        return "Vdate, DocId, SunCode/PartyCode, Debit, Credit (ledger layout)"
    if cat == "FRONT OFFICE / GUEST":
        return "Vdate, FolioNo/RoomNo, Guest/Charge columns (front-office layout)"
    return "Vdate, DocId, Amount (generic layout)"
