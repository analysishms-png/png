"""Phase 1: Core Module Unit Tests - DB CRUD verification."""
import sys
from pathlib import Path
sys.path.insert(0, str(Path(__file__).parent))

from HMS_py.core import db
cfg = db.load_config()
cn = db.connect(cfg)

P = 0
F = 0
ERRORS = []

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

# ===================== FINANCE =====================
print("\n--- FINANCE ---")
from HMS_py.core import fa_voucher, fa_ledger_ops, fa_reports, fa_tds_ops, fa_enviro

ok("fa_voucher.trial_balance", lambda: fa_voucher.trial_balance())
ok("fa_voucher.balance_sheet", lambda: fa_voucher.balance_sheet())
ok("fa_reports.profit_and_loss", lambda: fa_reports.profit_and_loss('2025-04-01', '2026-03-31'))
ok("fa_reports.cash_flow", lambda: fa_reports.cash_flow())
ok("fa_reports.fund_flow", lambda: fa_reports.fund_flow())
ok("fa_reports.cash_bank_summary", lambda: fa_reports.cash_bank_summary())
ok("fa_reports.trial_balance_group", lambda: fa_reports.trial_balance_group())
ok("fa_reports.trial_balance_ledger", lambda: fa_reports.trial_balance_ledger())
ok("fa_ledger_ops.ledger_list", lambda: fa_ledger_ops.ledger_list())
ok("fa_ledger_ops.ledgerm_list", lambda: fa_ledger_ops.ledgerm_list())
ok("fa_ledger_ops.ledgeradj_list", lambda: fa_ledger_ops.ledgeradj_list())
ok("fa_ledger_ops.vprefix_list", lambda: fa_ledger_ops.vprefix_list())
ok("fa_ledger_ops.budget_list", lambda: fa_ledger_ops.budget_list())
ok("fa_tds_ops.tdschal_list", lambda: fa_tds_ops.tdschal_list())
ok("fa_tds_ops.tdschal1_list", lambda: fa_tds_ops.tdschal1_list())
ok("fa_enviro.get", lambda: fa_enviro.get())

# ===================== FRONT OFFICE =====================
print("\n--- FRONT OFFICE ---")
from HMS_py.core import booking, guest_folio, room_occ, guestprof, guest_services
from HMS_py.core import folio, fixcharge, checkin, checkout

ok("booking.list_all", lambda: booking.list_all())
ok("booking.get", lambda: booking.get('000001'))
ok("guest_folio.list_all", lambda: guest_folio.list_all())
ok("guest_folio.get", lambda: guest_folio.get('000001'))
ok("room_occ.list_all", lambda: room_occ.list_all())
ok("room_occ.list_occupied", lambda: room_occ.list_occupied())
ok("guestprof.list_all", lambda: guestprof.list_all())
ok("guestprof.search('')", lambda: guestprof.search(''))
ok("guest_services.list_complaint", lambda: guest_services.list_complaint())
ok("guest_services.list_wakeup", lambda: guest_services.list_wakeup())
ok("guest_services.list_comments", lambda: guest_services.list_comments())
ok("guest_services.list_lostfound", lambda: guest_services.list_lostfound())
ok("guest_services.list_stat", lambda: guest_services.list_stat())
ok("guest_services.list_message", lambda: guest_services.list_message())
ok("fixcharge.list_all", lambda: fixcharge.list_all())
ok("folio.folio_balance", lambda: folio.folio_balance('000001'))
ok("folio.folio_charges", lambda: folio.folio_charges('000001'))
ok("folio.list_payments", lambda: folio.list_payments('000001'))
ok("checkin.list_checkins", lambda: checkin.list_checkins())
ok("checkout.list_active_folios", lambda: checkout.list_active_folios())
ok("checkout.list_checked_out", lambda: checkout.list_checked_out())

# ===================== POS =====================
print("\n--- POS ---")
from HMS_py.core import pos_kot, pos_sales, pos_stock, pos_delivery, pos_table
from HMS_py.core import pos_happy, pos_packing, pos_hall, pos_entry

ok("pos_kot.kotlog_list", lambda: pos_kot.kotlog_list())
ok("pos_kot.token_list", lambda: pos_kot.token_list())
ok("pos_sales.sale1_list", lambda: pos_sales.sale1_list())
ok("pos_sales.sale1_get", lambda: pos_sales.sale1_get('X'))
ok("pos_stock.stock_list", lambda: pos_stock.stock_list())
ok("pos_delivery.assign_list", lambda: pos_delivery.assign_list())
ok("pos_delivery.reward_list", lambda: pos_delivery.reward_list())
ok("pos_table.table_list", lambda: pos_table.table_list())
ok("pos_happy.happyhours_list", lambda: pos_happy.happyhours_list())
ok("pos_happy.freeitem_list", lambda: pos_happy.freeitem_list())
ok("pos_packing.packing_list", lambda: pos_packing.packing_list())
ok("pos_hall.hallstock_list", lambda: pos_hall.hallstock_list())
ok("pos_hall.precosting_list", lambda: pos_hall.precosting_list())

# ===================== INVENTORY =====================
print("\n--- INVENTORY ---")
from HMS_py.core import inventory, purchase

ok("inventory.indent_list", lambda: inventory.indent_list())
ok("inventory.porder_list", lambda: inventory.porder_list())
ok("inventory.purchase_list", lambda: inventory.purchase_list())
ok("inventory.stock_balance", lambda: inventory.stock_balance())
ok("inventory.stock_register", lambda: inventory.stock_register())
ok("inventory.stock_movements", lambda: inventory.stock_movements())
ok("inventory.stock_in_hand", lambda: inventory.stock_in_hand())
ok("inventory.purchase_register", lambda: inventory.purchase_register())
ok("purchase.purch1_list", lambda: purchase.purch1_list())
ok("purchase.porder1_list", lambda: purchase.porder1_list())
ok("purchase.indent1_list", lambda: purchase.indent1_list())
ok("purchase.kclstk_list", lambda: purchase.kclstk_list())

# ===================== MASTERS =====================
print("\n--- MASTERS ---")
from HMS_py.core import (acgroup, ledger, depart, item, narr, roommaster,
    roomcategory, area, city, state, country, company, companymaster,
    forexmaster, general_setup, usermaster, taxstru, taxmaster, sundry,
    businesssource, paymenttype, seasonmaster, venue, tdscat, packagemaster,
    plans, marketsegment, gueststatus, smartcard, epabx_masters,
    members_masters, pos_masters, banquet_masters, hr_masters, unit, voucher_type)

ok("acgroup.list_all", lambda: acgroup.list_all())
ok("ledger.list_all", lambda: ledger.list_all())
ok("depart.list_all", lambda: depart.list_all())
ok("item.list_all", lambda: item.list_all())
ok("item.itemgrp_list", lambda: item.itemgrp_list())
ok("narr.list_all", lambda: narr.list_all())
ok("roommaster.list_all", lambda: roommaster.list_all())
ok("roomcategory.list_all", lambda: roomcategory.list_all())
ok("area.list_all", lambda: area.list_all())
ok("city.list_all", lambda: city.list_all())
ok("state.list_all", lambda: state.list_all())
ok("country.list_all", lambda: country.list_all())
ok("company.list_companies", lambda: company.list_companies())
ok("companymaster.list_all", lambda: companymaster.list_all())
ok("forexmaster.list_all", lambda: forexmaster.list_all())
ok("general_setup.godown_list", lambda: general_setup.godown_list())
ok("general_setup.roomfeat_list", lambda: general_setup.roomfeat_list())
ok("general_setup.vouchcat_list", lambda: general_setup.vouchcat_list())
ok("usermaster.list_all", lambda: usermaster.list_all())
ok("taxstru.list_all", lambda: taxstru.list_all())
ok("taxmaster.list_all", lambda: taxmaster.list_all())
ok("sundry.list_all", lambda: sundry.list_all())
ok("businesssource.list_all", lambda: businesssource.list_all())
ok("paymenttype.list_all", lambda: paymenttype.list_all())
ok("seasonmaster.list_all", lambda: seasonmaster.list_all())
ok("venue.list_all", lambda: venue.list_all())
ok("tdscat.list_all", lambda: tdscat.list_all())
ok("packagemaster.list_all", lambda: packagemaster.list_all())
ok("plans.list_plans", lambda: plans.list_plans())
ok("marketsegment.list_all", lambda: marketsegment.list_all())
ok("gueststatus.list_all", lambda: gueststatus.list_all())
ok("smartcard.smartcard_list", lambda: smartcard.smartcard_list())
ok("epabx_masters.callcode_list", lambda: epabx_masters.callcode_list())
ok("epabx_masters.calltype_list", lambda: epabx_masters.calltype_list())
ok("epabx_masters.telext_list", lambda: epabx_masters.telext_list())
ok("members_masters.facility_list", lambda: members_masters.facility_list())
ok("members_masters.memcat_list", lambda: members_masters.memcat_list())
ok("members_masters.memrev_list", lambda: members_masters.memrev_list())
ok("pos_masters.waiter_list", lambda: pos_masters.waiter_list())
ok("pos_masters.combo_list", lambda: pos_masters.combo_list())
ok("pos_masters.delboy_list", lambda: pos_masters.delboy_list())
ok("pos_masters.nctype_list", lambda: pos_masters.nctype_list())
ok("pos_masters.scheme_list", lambda: pos_masters.scheme_list())
ok("pos_masters.session_list", lambda: pos_masters.session_list())
ok("pos_masters.shift_list", lambda: pos_masters.shift_list())
ok("pos_masters.itemcat_list", lambda: pos_masters.itemcat_list())
ok("banquet_masters.catalog_list", lambda: banquet_masters.catalog_list())
ok("banquet_masters.functype_list", lambda: banquet_masters.functype_list())
ok("banquet_masters.groupprof_list", lambda: banquet_masters.groupprof_list())
ok("hr_masters.desig_list", lambda: hr_masters.desig_list())
ok("hr_masters.emp_list", lambda: hr_masters.emp_list())
ok("hr_masters.empcat_list", lambda: hr_masters.empcat_list())
ok("hr_masters.holiday_list", lambda: hr_masters.holiday_list())
ok("unit.list_all", lambda: unit.list_all())
ok("voucher_type.list_all", lambda: voucher_type.list_all())

# ===================== NIGHT AUDIT =====================
print("\n--- NIGHT AUDIT ---")
from HMS_py.core import nightaudit

ok("nightaudit.occupancy", lambda: nightaudit.occupancy())
ok("nightaudit.get_night_audit_flags", lambda: nightaudit.get_night_audit_flags())
ok("nightaudit.na_log", lambda: nightaudit.na_log())
ok("nightaudit.get_inhouse_rooms(2026-09-21)", lambda: nightaudit.get_inhouse_rooms('2026-09-21'))

# ===================== HR/PAYROLL =====================
print("\n--- HR/PAYROLL ---")
from HMS_py.core import hr_payroll

ok("hr_payroll.list_salary", lambda: hr_payroll.list_salary())
ok("hr_payroll.list_attendence", lambda: hr_payroll.list_attendence())
ok("hr_payroll.list_loan", lambda: hr_payroll.list_loan())
ok("hr_payroll.list_overtime", lambda: hr_payroll.list_overtime())
ok("hr_payroll.list_leave_ench", lambda: hr_payroll.list_leave_ench())

# ===================== MEMBER BILLING =====================
print("\n--- MEMBER BILLING ---")
from HMS_py.core import member_billing

ok("member_billing.list_membill", lambda: member_billing.list_membill())
ok("member_billing.list_memenviro", lambda: member_billing.list_memenviro())

# ===================== HALL BOOKING =====================
print("\n--- HALL BOOKING ---")
from HMS_py.core import hall_booking

ok("hall_booking.list_all_hallbook", lambda: hall_booking.list_all_hallbook())
ok("hall_booking.list_hallsale1", lambda: hall_booking.list_hallsale1('X'))

# ===================== SMS/EPABX/SMARTCARD =====================
print("\n--- SMS/EPABX/SMARTCARD ---")
from HMS_py.core import sms_comm, sms_enviro, epabx_ops, smartcard_ops

ok("sms_comm.list_dbsms", lambda: sms_comm.list_dbsms())
ok("sms_comm.list_dboy", lambda: sms_comm.list_dboy())
ok("sms_enviro.dbsendsms_list", lambda: sms_enviro.dbsendsms_list())
ok("sms_enviro.emailforward_list", lambda: sms_enviro.emailforward_list())
ok("epabx_ops.epabxdata_list", lambda: epabx_ops.epabxdata_list())
ok("smartcard_ops.list_master", lambda: smartcard_ops.list_master())
ok("smartcard_ops.list_reg", lambda: smartcard_ops.list_reg())

# ===================== SYSTEM =====================
print("\n--- SYSTEM ---")
from HMS_py.core import sys_config, db_maintenance, revenue_budget, year_end, auth

ok("sys_config.datelock_list", lambda: sys_config.datelock_list())
ok("sys_config.site_list", lambda: sys_config.site_list())
ok("sys_config.userperm_list", lambda: sys_config.userperm_list())
ok("sys_config.roundoff_list", lambda: sys_config.roundoff_list())
ok("db_maintenance.get_null_summary", lambda: db_maintenance.get_null_summary())
ok("revenue_budget.revenue_group_list", lambda: revenue_budget.revenue_group_list())
ok("revenue_budget.budget_list", lambda: revenue_budget.budget_list())
ok("year_end.get_fy_dates", lambda: year_end.get_fy_dates())

# ===================== REPORTS =====================
print("\n--- REPORTS ---")
from HMS_py.core import reports

ok("reports.run", lambda: reports.run.__doc__)
ok("reports.by_key", lambda: reports.by_key.__doc__)

# ===================== ENVIRO =====================
print("\n--- ENVIRO ---")
from HMS_py.core import enviro

ok("enviro.get", lambda: enviro.get())
ok("enviro.snapshot", lambda: enviro.snapshot())

# ===================== BANQUET =====================
print("\n--- BANQUET ---")
from HMS_py.core import banquet_ops

ok("banquet_ops.hallbook_list", lambda: banquet_ops.hallbook_list())
ok("banquet_ops.hallsale1_list", lambda: banquet_ops.hallsale1_list())
ok("banquet_ops.venueocc_list", lambda: banquet_ops.venueocc_list())

# ===================== RESERVATION =====================
print("\n--- RESERVATION ---")
from HMS_py.core import reservation

ok("reservation.list_reservations", lambda: reservation.list_reservations())
ok("reservation.voucher_config", lambda: reservation.voucher_config())

# ===================== ROOM STATUS =====================
print("\n--- ROOM STATUS ---")
from HMS_py.core import roomstatus

ok("roomstatus.housekeeping_summary", lambda: roomstatus.housekeeping_summary())

# ===================== TALLY =====================
print("\n--- TALLY ---")
from HMS_py.core import tally_export

ok("tally_export.fetch_groups", lambda: tally_export.fetch_groups())
ok("tally_export.fetch_ledgers", lambda: tally_export.fetch_ledgers())

# ===================== SUMMARY =====================
print("\n" + "=" * 60)
total = P + F
pct = P * 100 // max(total, 1)
print(f"TOTAL: {total} tests")
print(f"PASS:  {P} ({pct}%)")
print(f"FAIL:  {F}")
print("=" * 60)

if ERRORS:
    print("\nFAILURES:")
    for n, e in ERRORS:
        print(f"  FAIL: {n}")
        print(f"        {e}")

cn.close()
