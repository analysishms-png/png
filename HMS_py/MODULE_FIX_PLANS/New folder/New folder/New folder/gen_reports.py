# -*- coding: utf-8 -*-
"""
Report list generator - EXTRAS.text (VB6 POS/Hotel software) se nikale gaye
saare reports ke naam ke sath .txt files banata hai.
Stock/Inventory reports ko specially mark karta hai (visahl.sql ke Stock table ke sath).
"""
import os, re
from sql_queries import SQL_QUERIES, GENERIC_QUERIES
from report_layouts import layout_for

RAW = "all_reports_raw.txt"
OUTDIR = "REPORTS_TXT"

# ---------- MENU PATH (EXTRAS.text ke Sub names -> menu names) ----------
MENU_MAP = {
    "MatRep_Click":      "Material > Reports",
    "MatStat_Click":     "Material > Statistics",
    "MatVatR_Click":     "Material > VAT Reports",
    "POSRep_Click":      "POS > Reports",
    "PosTaxRep_Click":   "POS > Tax Reports",
    "MISREP_Click":      "POS > MIS Reports",
    "SaleReg_Click":     "POS > Sale Register",
    "FDORep_Click":      "Front Office > Reports",
    "FDOMISRep_Click":   "Front Office > MIS Reports",
    "FDOMenu_Click":     "Front Office > Menu",
    "FDOForms_Click":    "Front Office > Statutory Forms",
    "FDOTaxr_Click":     "Front Office > Tax Reports",
    "FAREPORT_Click":    "Accounts > Reports",
    "NightAuditRR_Click": "Night Audit > Revenue Reports",
    "NightAuditLR_Click": "Night Audit > Logs",
    "NightAuditGSTR_Click": "Night Audit > GST Reports",
    "NightAuditoR_Click": "Night Audit > Other Reports",
    "BanqRep_Click":     "Banquet > Reports",
    "BanqRepMIS_Click":  "Banquet > MIS Reports",
    "OdcRep_Click":      "Outdoor Catering > Reports",
    "OdcMis_Click":      "Outdoor Catering > MIS Reports",
    "HouseREP_Click":    "Housekeeping > Reports",
    "PayRep_Click":      "Payroll > Reports",
    "MemRpt_Click":      "Membership > Reports",
    "ResOpEnt_Click":    "Reservation > Operations",
    "ResStatusRpt_Click": "Reservation > Status Reports",
    "ReservationMIS_Click": "Reservation > MIS",
    "AdvRecdRpt_Click":  "Reservation > Advance Received",
    "EXTSCRP_Click":     "Extras > Scripts",
    "UTL_Click":         "Utilities",
    "mnuTelRep_Click":   "Telephone > Call Reports",
}

def menu_path(subs):
    """Sub names se menu path banao (Proc_* = code-generated menu, skip)"""
    if not subs:
        return "(direct form)"
    for s in subs:
        if not s.startswith("Proc_") and s in MENU_MAP:
            return MENU_MAP[s] + f"  [Sub: {s}]"
    return ", ".join(subs) + "  [code-generated]"

# sub -> report mapping (EXTRAS.text se extract kiya gaya)
SUB_MAP = {}
with open("report_menu_map.txt", "r", encoding="utf-8") as f:
    for ln in f:
        if " <= " in ln:
            rep, subs = ln.rstrip("\n").split(" <= ", 1)
            SUB_MAP.setdefault(rep.lower(), []).extend(subs.split(", "))

with open(RAW, "r", encoding="utf-8", errors="ignore") as f:
    names = [l.strip() for l in f if l.strip()]

# Windows case-insensitive filesystem -> case-duplicates merge
seen = {}
for n in names:
    seen.setdefault(n.lower(), n)
names = sorted(seen.values(), key=str.lower)

# ---------- CATEGORIES (keyword based, first match wins) ----------
CATEGORY_RULES = [
    ("STOCK / INVENTORY", r"stock|kitchen|store|indent|purch|issue|consumption|production|liquor|foodcost|fbcost|abcanalysis|costanalysis"),
    ("SALES / POS",       r"sale|kot|plu|waiter|tablewise|covers|bill|settle|cashier|discount|void|cancel|delivery|order|tallypos|itemwise|item sale|openitem"),
    ("TAX / GST / VAT",   r"tax|gst|vat|form24|formiii|ltform|reconciliation|annexure|einvoice"),
    ("ACCOUNTS / FINANCE",r"led|bank|cash|journal|aging|due|daybook|trial|clg|loan|budget|pay|recd|outstanding|control|roznamcha|nontrans|refreport|acchecklist|pf|gratuity|payroll|payslip"),
    ("FRONT OFFICE / GUEST", r"guest|resv|reserv|room|occup|arrival|dep|checkin|chkin|housekeep|formc|grc|registration|movement|forecast|package|plan|nightaudit|dailyreport|revanalysis|marketseg|business|company|travel|focc|ins|membership|mem|birth|marr|complaint|attendance|epabx|scrd"),
]

def category(n):
    low = n.lower()
    for cat, pat in CATEGORY_RULES:
        if re.search(pat, low):
            return cat
    return "OTHER / GENERAL"

# ---------- STOCK/INVENTORY reports: table mapping ----------
STOCK_TABLES = {
    "stockregister":       ("Stock + ItemMast + GodownMast", "Store-wise Stock Register (opening, receipt, issue, closing)"),
    "stocksumm":           ("Stock + ItemMast", "Item-wise Stock Summary with closing valuation"),
    "stockregstore":       ("Stock + ItemMast + GodownMast", "Store/Godown-wise Stock Register"),
    "stocksummstore":      ("Stock + ItemMast + GodownMast", "Store-wise Stock Summary"),
    "stockinhand":         ("Stock + ItemMast", "Stock In Hand - current balance of every item"),
    "stocksummaryp/sbasis":("Stock + ItemMast", "Stock Summary on P/S (Profit/Sales) basis"),
    "kitchenstkrep":       ("Stock + ItemMast", "Kitchen Stock Report (kitchen ke andar ka stock)"),
    "kitchenstksumm":      ("Stock + ItemMast", "Kitchen Stock Summary"),
    "excessconsumption":   ("Stock + ItemMast", "Standard se zyada consumption ka report"),
    "restissue":           ("Stock + ItemMast", "Restaurant-wise item issue report"),
    "storeissreg":         ("Stock + ItemMast", "Store Issue Register (store se kitchen transfer)"),
    "storeissuereport":    ("Stock + ItemMast", "Store Issue detailed report"),
    "dailystoreissrpt":    ("Stock + ItemMast", "Daily Store Issue report"),
    "issuereg":            ("Stock + ItemMast", "Item Issue Register"),
    "issueregister":       ("Stock + ItemMast", "Item Issue Register (detailed)"),
    "abcanalysis":         ("Stock + ItemMast", "ABC Analysis - A/B/C class item analysis"),
    "abcanalysissale":     ("Sale2 + Stock + ItemMast", "ABC Analysis based on sales consumption"),
    "purchbill":           ("Stock (Vtype=Purchase) + PartyMast", "Purchase Bill report (item receipt)"),
    "purchorder":          ("PurchaseOrder + Stock", "Purchase Order report"),
    "purchasereg":         ("Stock (Vtype=Purchase) + PartyMast", "Purchase Register - date-wise purchase"),
    "purchasesumm":        ("Stock (Vtype=Purchase)", "Purchase Summary - party/item-wise"),
    "purchaseledger":      ("Stock (Vtype=Purchase) + PartyMast", "Party-wise Purchase Ledger"),
    "cashcreditpurch":     ("Stock (Vtype=Purchase)", "Cash/Credit Purchase report"),
    "indentreg":           ("Indent + Stock", "Kitchen Indent Register"),
    "foodcost":            ("Stock + Sale2 + ItemMast", "Food Cost report (consumption vs sales)"),
    "fbcoststatement":     ("Stock + Sale2 + ItemMast", "F&B Cost Statement"),
    "productionreport":    ("Stock (Vtype=Production)", "Production/Recipe report"),
    "liquorsalerep":       ("Sale2 + Stock + ItemMast", "Liquor Sale & stock deduction report"),
    "costanalysis":        ("Stock + Sale2", "Item cost vs sale analysis"),
}

# visahl.sql me jo tables milte hain
DUMP_TABLES = "Stock, Sale1, Sale2, SunTran, PayCharge"

STOCK_COLUMNS = ("Stock table ke important columns (visahl.sql se): "
    "DocId, Sno, Vtype, VNo, Vdate, PartyCode, RestCode, Item, QtyIss, QtyRec, Unit, "
    "Rate, Amount, TaxPer, TaxAmt, DiscPer, DiscAmt, GodownCode, ChalQty, RecdQty, "
    "AccQty, RejQty, ItemRate, ConvRatio, LandVal, DeptCode, Remarks, U_Name")

def tables_for(cat, n):
    key = n.lower()
    if key in STOCK_TABLES:
        return STOCK_TABLES[key]
    if cat == "SALES / POS":
        return ("Sale1, Sale2, PayCharge, SunTran", "Sales/billing tables se report")
    if cat == "TAX / GST / VAT":
        return ("Sale1, Sale2, PayCharge", "Tax registers Sale tables se bante hain")
    if cat == "ACCOUNTS / FINANCE":
        return ("SunTran, PayCharge", "Accounting tables (SunTran = master ledger) se report")
    if cat == "FRONT OFFICE / GUEST":
        return ("SunTran, PayCharge, GuestMast*", "Front-office tables (*master tables purane DB me hain)")
    return ("SunTran, PayCharge", "General tables se report")

def safe_fname(n):
    return re.sub(r'[\\/:*?"<>|]', "-", n) + ".txt"

SQL_BAR = "-" * 70
def sql_section(n, cat, is_inv):
    """Report ke liye ready-to-run SQL query text banao"""
    key = n.lower()
    if is_inv and key in SQL_QUERIES:
        q = SQL_QUERIES[key]
        head = "READY-TO-RUN SQL QUERY (visahl.sql wali tables par chalegi - SQL Server T-SQL)"
    else:
        q = GENERIC_QUERIES.get(cat, GENERIC_QUERIES["OTHER / GENERAL"])
        head = "GENERIC SQL QUERY (is category ke liye - tables visahl.sql me available hain)"
    return f"{SQL_BAR}\n{head}\n{SQL_BAR}\n-- Tables available in dump: Stock, Sale1, Sale2, SunTran, PayCharge\n-- NOTE: Sirf in 5 tables ka dump hai; ItemMast/PartyMast jaisi master tables dump me NAHI hain\n\n{q}\n"

os.makedirs(OUTDIR, exist_ok=True)

inv_reports = []
index_lines = []
serial = 0

for n in names:
    cat = category(n)
    key = n.lower()
    is_inv = (cat == "STOCK / INVENTORY")
    if is_inv:
        inv_reports.append(n)
    tbls, desc = tables_for(cat, n)
    if key in STOCK_TABLES:
        tbls, desc = STOCK_TABLES[key]

    serial += 1
    bar = "=" * 70
    subs = SUB_MAP.get(key, [])
    lines = [
        bar,
        f"REPORT NAME   : {n}",
        f"REPORT NO.    : {serial}",
        f"CATEGORY      : {cat}",
        f"STOCK/INVENTORY: {'HAAN - is report me stock data aata hai' if is_inv else 'NAHI - ye non-stock report hai'}",
        f"MENU PATH     : {menu_path(subs)}",
        f"SOURCE TABLES : {tbls}",
        f"DESCRIPTION   : {desc}",
        f"OUTPUT COLUMNS: {layout_for(n, cat)}",
        "-" * 70,
        f"DATABASE DUMP (visahl.sql) TABLES: {DUMP_TABLES}",
        f"STOCK TABLE DETAIL: {STOCK_COLUMNS if is_inv else '(is report me Stock table directly use nahi hota)'}",
        "-" * 70,
        "NOTE: Ye report VB6 software (EXTRAS.text decompiled source) ke menu se mili hai.",
        "      SQL Server DB me isko chalane ke liye upar di gayi tables ka use hota hai.",
        bar,
        "",
        sql_section(n, cat, is_inv),
    ]
    with open(os.path.join(OUTDIR, safe_fname(n)), "w", encoding="utf-8") as f:
        f.write("\n".join(lines))

    mark = "[STOCK/INVENTORY]" if is_inv else "                 "
    index_lines.append(f"{serial:>3}. {mark}  {n:<32} | {cat:<22} | {safe_fname(n)}")

# ---------- Master index ----------
with open(os.path.join(OUTDIR, "ALL_REPORTS_LIST.txt"), "w", encoding="utf-8") as f:
    f.write("=" * 100 + "\n")
    f.write("SABHI REPORTS KI MASTER LIST  (EXTRAS.text VB6 source se extract kiya gaya)\n")
    f.write(f"TOTAL REPORTS: {len(names)}   |   STOCK/INVENTORY REPORTS: {len(inv_reports)}\n")
    f.write("DATABASE (visahl.sql) TABLES: " + DUMP_TABLES + "\n")
    f.write("=" * 100 + "\n\n")
    f.write("\n".join(index_lines))
    f.write("\n")

# ---------- Stock/Inventory special file ----------
with open(os.path.join(OUTDIR, "STOCK_INVENTORY_REPORTS.txt"), "w", encoding="utf-8") as f:
    f.write("=" * 100 + "\n")
    f.write("STOCK / INVENTORY REPORTS - JINME STOCK (ITEM/QTY/VALUE) DATA AATA HAI\n")
    f.write(f"TOTAL: {len(inv_reports)} reports\n")
    f.write("YE SABHI REPORTS 'Stock' TABLE (visahl.sql me available) SE DATA LETE HAIN\n")
    f.write(STOCK_COLUMNS + "\n")
    f.write("=" * 100 + "\n\n")
    for i, n in enumerate(inv_reports, 1):
        tbls, desc = STOCK_TABLES.get(n.lower(), ("Stock + ItemMast", "Stock report"))
        f.write(f"{i:>2}. {n}\n")
        f.write(f"    File      : {safe_fname(n)}\n")
        f.write(f"    Tables    : {tbls}\n")
        f.write(f"    Details   : {desc}\n\n")
    f.write("=" * 100 + "\n")
    f.write("INVENTORY FLOW: Purchase (Stock me QtyRec) -> Store -> Issue to Kitchen (QtyIss)\n")
    f.write("               -> Consumption -> Kitchen Stock -> Sale ke through adjust\n")
    f.write("=" * 100 + "\n")

print(f"DONE: {len(names)} report files + 2 index files bane, OUTDIR={OUTDIR}")
print(f"Stock/Inventory reports: {len(inv_reports)}")
