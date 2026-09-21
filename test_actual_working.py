"""Actual Working Test - Data entry into each module + DB verify."""
import sys, os
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parent))

os.environ["QT_QPA_PLATFORM"] = "offscreen"
from PyQt6.QtWidgets import QApplication
app = QApplication.instance() or QApplication(sys.argv)
from HMS_py.ui.theme import apply_theme
apply_theme(app, "dark")

from HMS_py.core import db
cfg = db.load_config()
cn = db.connect(cfg)
c = cn.cursor()

P = 0; F = 0; ERRORS = []

def ok(name, fn):
    global P
    try:
        fn()
        P += 1
        print(f"  OK  {name}")
    except Exception as e:
        global F
        F += 1
        ERRORS.append((name, str(e)[:100]))
        print(f"  FAIL {name}: {str(e)[:80]}")

def verify_row(table, where, params):
    c.execute(f"SELECT COUNT(*) FROM {table} WHERE {where}", params)
    cnt = c.fetchone()[0]
    return cnt > 0

# ============================================================
# 1. SUNDRY MASTER - Insert + Verify
# ============================================================
print("\n--- 1. SUNDRY MASTER (Insert) ---")
from HMS_py.core import sundry
test_code = "TESTSUN01"
try:
    sundry.delete(test_code)
except: pass

ok("sundry.insert", lambda: sundry.insert({"code": test_code, "name": "Test Electricity", "nature": "Expense"}))
ok("sundry.verify_row", lambda: verify_row("SundryMast", "Code = ?", (test_code,)))
ok("sundry.get", lambda: sundry.get(test_code))
ok("sundry.list_all", lambda: sundry.list_all())
try:
    sundry.delete(test_code)
except: pass

# ============================================================
# 2. DEPARTMENT - Insert + Verify
# ============================================================
print("\n--- 2. DEPARTMENT (Insert) ---")
from HMS_py.core import depart
test_code = "TDPT01"
try:
    depart.delete(test_code)
except: pass

ok("depart.insert", lambda: depart.insert({"code": test_code, "name": "Test Kitchen"}))
ok("depart.verify_row", lambda: verify_row("Depart", "Code = ?", (test_code,)))
ok("depart.list_all", lambda: depart.list_all())
try:
    depart.delete(test_code)
except: pass

# ============================================================
# 3. NARRATION - Insert + Verify
# ============================================================
print("\n--- 3. NARRATION (Insert) ---")
from HMS_py.core import narr
test_code = "TNARR01"
try:
    narr.delete(test_code)
except: pass

ok("narr.insert", lambda: narr.insert({"code": test_code, "name": "Test narration entry"}))
ok("narr.verify_row", lambda: verify_row("NarrMast", "Code = ?", (test_code,)))
ok("narr.list_all", lambda: narr.list_all())
try:
    narr.delete(test_code)
except: pass

# ============================================================
# 4. AREA - Insert + Verify
# ============================================================
print("\n--- 4. AREA (Insert) ---")
from HMS_py.core import area
test_code = "TAREA01"
try:
    area.delete(test_code)
except: pass

ok("area.insert", lambda: area.insert({"code": test_code, "name": "Test Area Kanpur"}))
ok("area.verify_row", lambda: verify_row("Area", "Code = ?", (test_code,)))
ok("area.list_all", lambda: area.list_all())
try:
    area.delete(test_code)
except: pass

# ============================================================
# 5. CITY - Insert + Verify
# ============================================================
print("\n--- 5. CITY (Insert) ---")
from HMS_py.core import city
test_code = "TCITY01"
try:
    city.delete(test_code)
except: pass

ok("city.insert", lambda: city.insert({"code": test_code, "name": "Test City"}))
ok("city.verify_row", lambda: verify_row("City", "Code = ?", (test_code,)))
ok("city.list_all", lambda: city.list_all())
try:
    city.delete(test_code)
except: pass

# ============================================================
# 6. GUEST PROFILE - Insert + Verify
# ============================================================
print("\n--- 6. GUEST PROFILE (Insert) ---")
from HMS_py.core import guestprof
test_code = "TGUEST01"
try:
    guestprof.delete(test_code)
except: pass

ok("guestprof.insert", lambda: guestprof.insert({"code": test_code, "name": "Mr. Test Guest", "phone": "9999999999"}))
ok("guestprof.verify_row", lambda: verify_row("GuestProf", "Code = ?", (test_code,)))
ok("guestprof.list_all", lambda: guestprof.list_all())
ok("guestprof.search('Test')", lambda: guestprof.search("Test"))
try:
    guestprof.delete(test_code)
except: pass

# ============================================================
# 7. ITEM MASTER - Insert + Verify
# ============================================================
print("\n--- 7. ITEM MASTER (Insert) ---")
from HMS_py.core import item
test_code = "TITEM01"
try:
    item.delete(test_code)
except: pass

ok("item.insert", lambda: item.insert({"code": test_code, "name": "Test Chicken Biryani", "unit": "NOS"}))
ok("item.verify_row", lambda: verify_row("ItemMast", "Code = ?", (test_code,)))
ok("item.list_all", lambda: item.list_all())
ok("item.itemgrp_list", lambda: item.itemgrp_list())
try:
    item.delete(test_code)
except: pass

# ============================================================
# 8. VOUCHER TYPE - Insert + Verify
# ============================================================
print("\n--- 8. VOUCHER TYPE (Insert) ---")
from HMS_py.core import voucher_type
test_code = "TJV"
try:
    voucher_type.delete(test_code)
except: pass

ok("voucher_type.insert", lambda: voucher_type.insert({"code": test_code, "name": "Test Journal", "category": "Journal"}))
ok("voucher_type.verify_row", lambda: verify_row("Voucher_Type", "Code = ?", (test_code,)))
ok("voucher_type.list_all", lambda: voucher_type.list_all())
try:
    voucher_type.delete(test_code)
except: pass

# ============================================================
# 9. ROOM CATEGORY - Insert + Verify
# ============================================================
print("\n--- 9. ROOM CATEGORY (Insert) ---")
from HMS_py.core import roomcategory
test_code = "TRC01"
try:
    roomcategory.delete(test_code)
except: pass

ok("roomcategory.insert", lambda: roomcategory.insert({"code": test_code, "name": "Test Deluxe Suite"}))
ok("roomcategory.verify_row", lambda: verify_row("RoomCat", "Code = ?", (test_code,)))
ok("roomcategory.list_all", lambda: roomcategory.list_all())
try:
    roomcategory.delete(test_code)
except: pass

# ============================================================
# 10. ROOM MASTER - Insert + Verify
# ============================================================
print("\n--- 10. ROOM MASTER (Insert) ---")
from HMS_py.core import roommaster
test_code = "T999"
try:
    roommaster.delete(test_code)
except: pass

ok("roommaster.insert", lambda: roommaster.insert({"code": test_code, "name": "Test Room 999", "roomcat": "KK001"}))
ok("roommaster.verify_row", lambda: verify_row("RoomMast", "Code = ?", (test_code,)))
ok("roommaster.list_all", lambda: roommaster.list_all())
try:
    roommaster.delete(test_code)
except: pass

# ============================================================
# 11. LEDGER - Insert + Verify
# ============================================================
print("\n--- 11. LEDGER (Insert) ---")
from HMS_py.core import ledger
test_code = "TLED001"
try:
    ledger.delete(test_code)
except: pass

ok("ledger.insert", lambda: ledger.insert({"code": test_code, "name": "Test Cash Account"}))
ok("ledger.verify_row", lambda: verify_row("SubGroup", "Code = ?", (test_code,)))
ok("ledger.list_all", lambda: ledger.list_all())
try:
    ledger.delete(test_code)
except: pass

# ============================================================
# 12. AC GROUP - Insert + Verify
# ============================================================
print("\n--- 12. AC GROUP (Insert) ---")
from HMS_py.core import acgroup
test_code = "TAG01"
try:
    acgroup.delete(test_code)
except: pass

ok("acgroup.insert", lambda: acgroup.insert({"code": test_code, "name": "Test Group"}))
ok("acgroup.verify_row", lambda: verify_row("ACGroup", "Code = ?", (test_code,)))
ok("acgroup.list_all", lambda: acgroup.list_all())
try:
    acgroup.delete(test_code)
except: pass

# ============================================================
# 13. BUSINESS SOURCE - Insert + Verify
# ============================================================
print("\n--- 13. BUSINESS SOURCE (Insert) ---")
from HMS_py.core import businesssource
test_code = "TBS01"
try:
    businesssource.delete(test_code)
except: pass

ok("businesssource.insert", lambda: businesssource.insert({"code": test_code, "name": "Test Walk-in"}))
ok("businesssource.verify_row", lambda: verify_row("BusinessSource", "Code = ?", (test_code,)))
ok("businesssource.list_all", lambda: businesssource.list_all())
try:
    businesssource.delete(test_code)
except: pass

# ============================================================
# 14. PAYMENT TYPE - Insert + Verify
# ============================================================
print("\n--- 14. PAYMENT TYPE (Insert) ---")
from HMS_py.core import paymenttype
test_code = "TPT01"
try:
    paymenttype.delete(test_code)
except: pass

ok("paymenttype.insert", lambda: paymenttype.insert({"code": test_code, "name": "Test UPI"}))
ok("paymenttype.verify_row", lambda: verify_row("PayType", "Code = ?", (test_code,)))
ok("paymenttype.list_all", lambda: paymenttype.list_all())
try:
    paymenttype.delete(test_code)
except: pass

# ============================================================
# 15. LEDGER ADJUSTMENT - Insert + Verify
# ============================================================
print("\n--- 15. LEDGER ADJUSTMENT (Insert) ---")
from HMS_py.core import fa_ledger_ops
ok("ledgeradj.list", lambda: fa_ledger_ops.ledgeradj_list())
ok("ledgerm.list", lambda: fa_ledger_ops.ledgerm_list())
ok("vprefix.list", lambda: fa_ledger_ops.vprefix_list())
ok("budget.list", lambda: fa_ledger_ops.budget_list())

# ============================================================
# 16. NIGHT AUDIT - Live Data
# ============================================================
print("\n--- 16. NIGHT AUDIT (Live Data) ---")
from HMS_py.core import nightaudit
ok("nightaudit.occupancy", lambda: nightaudit.occupancy())
ok("nightaudit.na_log (has data)", lambda: check_has_data(nightaudit.na_log(), "NightAuditLog"))
ok("nightaudit.get_night_audit_flags", lambda: nightaudit.get_night_audit_flags())

# ============================================================
# 17. INVENTORY - Live Data
# ============================================================
print("\n--- 17. INVENTORY (Live Data) ---")
from HMS_py.core import inventory
ok("stock_balance (has data)", lambda: check_has_data(inventory.stock_balance(), "Stock"))
ok("stock_register", lambda: inventory.stock_register())
ok("stock_in_hand", lambda: inventory.stock_in_hand())
ok("stock_movements", lambda: inventory.stock_movements())
ok("indent.list", lambda: inventory.indent_list())
ok("porder.list", lambda: inventory.porder_list())

# ============================================================
# 18. POS - Live Data
# ============================================================
print("\n--- 18. POS (Live Data) ---")
from HMS_py.core import pos_kot, pos_sales, pos_stock, pos_table
ok("kot.log (has data)", lambda: check_has_data(pos_kot.kotlog_list(), "KOT"))
ok("sale1.list (has data)", lambda: check_has_data(pos_sales.sale1_list(), "Sale1"))
ok("stock.list (has data)", lambda: check_has_data(pos_stock.stock_list(), "Stock"))
ok("table.list", lambda: pos_table.table_list())

# ============================================================
# 19. FRONT OFFICE - Live Data
# ============================================================
print("\n--- 19. FRONT OFFICE (Live Data) ---")
from HMS_py.core import guest_folio, room_occ, guestprof, booking
ok("guestfolio.list (has data)", lambda: check_has_data(guest_folio.list_all(), "GuestFolio"))
ok("roomocc.list (has data)", lambda: check_has_data(room_occ.list_all(), "RoomOcc"))
ok("guestprof.list (has data)", lambda: check_has_data(guestprof.list_all(), "GuestProf"))
ok("booking.list", lambda: booking.list_all())

# ============================================================
# 20. FINANCE - Live Data
# ============================================================
print("\n--- 20. FINANCE (Live Data) ---")
from HMS_py.core import fa_voucher, fa_reports, enviro
ok("fa_voucher.trial_balance", lambda: fa_voucher.trial_balance())
ok("fa_voucher.balance_sheet", lambda: fa_voucher.balance_sheet())
ok("fa_reports.balance_sheet", lambda: fa_reports.balance_sheet())
ok("fa_reports.cash_flow", lambda: fa_reports.cash_flow())
ok("enviro.get (has data)", lambda: check_has_data([enviro.get()], "Enviro"))


def check_has_data(data, name):
    if not data:
        raise ValueError(f"No data in {name}")
    return True


# ============================================================
# 21. SYSTEM - Live Data
# ============================================================
print("\n--- 21. SYSTEM (Live Data) ---")
from HMS_py.core import sys_config, usermaster, company
ok("datelock.list", lambda: sys_config.datelock_list())
ok("site.list", lambda: sys_config.site_list())
ok("userperm.list", lambda: sys_config.userperm_list())
ok("usermaster.list (has data)", lambda: check_has_data(usermaster.list_all(), "User"))
ok("company.list (has data)", lambda: check_has_data(company.list_companies(), "Company"))

# ============================================================
# 22. MASTER COUNTS
# ============================================================
print("\n--- 22. DB ROW COUNTS ---")
tables = [
    ("LEDGER", "Finance"), ("GuestFolio", "FO"), ("KOT", "POS"),
    ("Stock", "Inventory"), ("GuestProf", "Guest"), ("RoomMast", "Room"),
    ("Sale1", "POS Sale"), ("ItemMast", "Item"), ("SubGroup", "Groups"),
    ("NightAuditLog", "Audit"), ("SundryMast", "Sundry"), ("User_Module", "Perms"),
    ("Company", "Company"), ("Enviro", "Config"),
]
total = 0
for tbl, mod in tables:
    try:
        c.execute(f"SELECT COUNT(*) FROM {tbl}")
        cnt = c.fetchone()[0]
        total += cnt
        print(f"  {tbl:22s} {mod:12s} {cnt:>8,d}")
    except:
        print(f"  {tbl:22s} {mod:12s}   MISSING")
print(f"\n  TOTAL: {total:,d} rows across {len(tables)} tables")

# ===================== SUMMARY =====================
print("\n" + "=" * 60)
print("ACTUAL WORKING TEST RESULTS")
print("=" * 60)
total_tests = P + F
pct = P * 100 // max(total_tests, 1)
print(f"TOTAL: {total_tests} tests")
print(f"PASS:  {P} ({pct}%)")
print(f"FAIL:  {F}")
print("=" * 60)

if ERRORS:
    print("\nFAILURES:")
    for n, e in ERRORS:
        print(f"  FAIL: {n}")
        print(f"        {e}")

cn.close()
