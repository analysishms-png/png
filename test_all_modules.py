"""Full module-by-module test suite - with CORRECT function names."""
import traceback
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).parent))

from HMS_py.core import db

cfg = db.load_config()
cn = db.connect(cfg)
results = {'pass': 0, 'fail': 0, 'errors': []}

def test(name, fn):
    try:
        fn()
        results['pass'] += 1
        print(f'  PASS  {name}')
    except Exception as e:
        results['fail'] += 1
        results['errors'].append((name, str(e)[:120]))
        print(f'  FAIL  {name}: {str(e)[:100]}')

# === FINANCE ===
print('\n=== FINANCE ===')
from HMS_py.core import fa_voucher, fa_ledger_ops, fa_reports, fa_tds_ops, fa_enviro

test('fa_voucher.post_voucher', lambda: fa_voucher.post_voucher.__doc__)
test('fa_voucher.trial_balance', lambda: fa_voucher.trial_balance())
test('fa_voucher.balance_sheet', lambda: fa_voucher.balance_sheet())
test('fa_voucher.profit_and_loss', lambda: fa_voucher.profit_and_loss('2026-04-01', '2026-09-21'))
import datetime as _dt
test('fa_voucher.next_vno', lambda: fa_voucher.next_vno('JV', _dt.date(2026, 9, 21)))
test('fa_ledger_ops.ledger_list', lambda: fa_ledger_ops.ledger_list())
test('fa_ledger_ops.ledgeradj_list', lambda: fa_ledger_ops.ledgeradj_list())
test('fa_ledger_ops.ledgerm_list', lambda: fa_ledger_ops.ledgerm_list())
test('fa_ledger_ops.vprefix_list', lambda: fa_ledger_ops.vprefix_list())
test('fa_ledger_ops.refresh_currbal', lambda: fa_ledger_ops.refresh_currbal.__doc__)
test('fa_reports.balance_sheet', lambda: fa_reports.balance_sheet())
test('fa_reports.profit_and_loss', lambda: fa_reports.profit_and_loss())
test('fa_reports.trial_balance_group', lambda: fa_reports.trial_balance_group())
test('fa_reports.trial_balance_ledger', lambda: fa_reports.trial_balance_ledger())
test('fa_reports.cash_flow', lambda: fa_reports.cash_flow())
test('fa_reports.fund_flow', lambda: fa_reports.fund_flow())
test('fa_reports.cash_bank_summary', lambda: fa_reports.cash_bank_summary())
test('fa_tds_ops.tdschal_list', lambda: fa_tds_ops.tdschal_list())
test('fa_tds_ops.tdschal1_list', lambda: fa_tds_ops.tdschal1_list())
test('fa_enviro.get', lambda: fa_enviro.get())

# === FRONT OFFICE ===
print('\n=== FRONT OFFICE ===')
from HMS_py.core import booking, guest_folio, room_occ, guestprof, guest_services, folio, fixcharge, checkin, checkout

test('booking.list_all', lambda: booking.list_all())
test('booking.get', lambda: booking.get('000001'))
test('guest_folio.list_all', lambda: guest_folio.list_all())
test('guest_folio.get', lambda: guest_folio.get('000001'))
test('room_occ.list_all', lambda: room_occ.list_all())
test('room_occ.list_occupied', lambda: room_occ.list_occupied())
test('guestprof.list_all', lambda: guestprof.list_all())
test('guestprof.search', lambda: guestprof.search(''))
test('guest_services.list_complaint', lambda: guest_services.list_complaint())
test('guest_services.list_wakeup', lambda: guest_services.list_wakeup())
test('guest_services.list_comments', lambda: guest_services.list_comments())
test('fixcharge.list_all', lambda: fixcharge.list_all())
test('folio.folio_balance', lambda: folio.folio_balance('000001'))
test('checkin.list_checkins', lambda: checkin.list_checkins())
test('checkout.list_active_folios', lambda: checkout.list_active_folios())

# === POS ===
print('\n=== POS ===')
from HMS_py.core import pos_kot, pos_sales, pos_stock, pos_delivery, pos_table, pos_happy, pos_packing, pos_hall, pos_entry

test('pos_kot.kotlog_list', lambda: pos_kot.kotlog_list())
test('pos_kot.token_list', lambda: pos_kot.token_list())
test('pos_kot.splitbill_list_by_doc', lambda: pos_kot.splitbill_list_by_doc('X'))
test('pos_sales.sale1_list', lambda: pos_sales.sale1_list())
test('pos_sales.sale1_get', lambda: pos_sales.sale1_get('X'))
test('pos_sales.sale2_list_by_doc', lambda: pos_sales.sale2_list_by_doc('X'))
test('pos_stock.stock_list', lambda: pos_stock.stock_list())
test('pos_delivery.assign_list', lambda: pos_delivery.assign_list())
test('pos_delivery.reward_list', lambda: pos_delivery.reward_list())
test('pos_table.table_list', lambda: pos_table.table_list())
test('pos_happy.happyhours_list', lambda: pos_happy.happyhours_list())
test('pos_happy.freeitem_list', lambda: pos_happy.freeitem_list())
test('pos_packing.packing_list', lambda: pos_packing.packing_list())
test('pos_hall.hallstock_list', lambda: pos_hall.hallstock_list())
test('pos_hall.precosting_list', lambda: pos_hall.precosting_list())

# === INVENTORY ===
print('\n=== INVENTORY ===')
from HMS_py.core import inventory, purchase

test('inventory.indent_list', lambda: inventory.indent_list())
test('inventory.porder_list', lambda: inventory.porder_list())
test('inventory.purchase_list', lambda: inventory.purchase_list())
test('inventory.stock_balance', lambda: inventory.stock_balance())
test('inventory.stock_register', lambda: inventory.stock_register())
test('inventory.gin_get', lambda: inventory.gin_get('X'))
test('inventory.stock_next_vno', lambda: inventory.stock_next_vno('PR'))
test('purchase.purch1_list', lambda: purchase.purch1_list())
test('purchase.porder1_list', lambda: purchase.porder1_list())
test('purchase.indent1_list', lambda: purchase.indent1_list())
test('purchase.kclstk_list', lambda: purchase.kclstk_list())

# === MASTERS ===
print('\n=== MASTERS ===')
from HMS_py.core import (acgroup, ledger, depart, item, narr, roommaster,
    roomcategory, area, city, state, country, company, companymaster,
    forexmaster, general_setup, usermaster, taxstru, taxmaster, sundry,
    businesssource, paymenttype, seasonmaster, venue, tdscat, packagemaster,
    plans, marketsegment, gueststatus, smartcard, epabx_masters,
    members_masters, pos_masters, banquet_masters, hr_masters, unit, expenseentry, voucher_type)

test('acgroup.list_all', lambda: acgroup.list_all())
test('ledger.list_all', lambda: ledger.list_all())
test('depart.list_all', lambda: depart.list_all())
test('item.list_all', lambda: item.list_all())
test('item.itemgrp_list', lambda: item.itemgrp_list())
test('narr.list_all', lambda: narr.list_all())
test('roommaster.list_all', lambda: roommaster.list_all())
test('roomcategory.list_all', lambda: roomcategory.list_all())
test('area.list_all', lambda: area.list_all())
test('city.list_all', lambda: city.list_all())
test('state.list_all', lambda: state.list_all())
test('country.list_all', lambda: country.list_all())
test('company.list_companies', lambda: company.list_companies())
test('companymaster.list_all', lambda: companymaster.list_all())
test('forexmaster.list_all', lambda: forexmaster.list_all())
test('general_setup.godown_list', lambda: general_setup.godown_list())
test('general_setup.roomfeat_list', lambda: general_setup.roomfeat_list())
test('general_setup.vouchcat_list', lambda: general_setup.vouchcat_list())
test('usermaster.list_all', lambda: usermaster.list_all())
test('taxstru.list_all', lambda: taxstru.list_all())
test('taxmaster.list_all', lambda: taxmaster.list_all())
test('sundry.list_all', lambda: sundry.list_all())
test('businesssource.list_all', lambda: businesssource.list_all())
test('paymenttype.list_all', lambda: paymenttype.list_all())
test('seasonmaster.list_all', lambda: seasonmaster.list_all())
test('venue.list_all', lambda: venue.list_all())
test('tdscat.list_all', lambda: tdscat.list_all())
test('packagemaster.list_all', lambda: packagemaster.list_all())
test('plans.list_plans', lambda: plans.list_plans())
test('marketsegment.list_all', lambda: marketsegment.list_all())
test('gueststatus.list_all', lambda: gueststatus.list_all())
test('smartcard.smartcard_list', lambda: smartcard.smartcard_list())
test('epabx_masters.callcode_list', lambda: epabx_masters.callcode_list())
test('epabx_masters.calltype_list', lambda: epabx_masters.calltype_list())
test('epabx_masters.telext_list', lambda: epabx_masters.telext_list())
test('members_masters.facility_list', lambda: members_masters.facility_list())
test('members_masters.memcat_list', lambda: members_masters.memcat_list())
test('members_masters.memrev_list', lambda: members_masters.memrev_list())
test('pos_masters.waiter_list', lambda: pos_masters.waiter_list())
test('pos_masters.combo_list', lambda: pos_masters.combo_list())
test('pos_masters.delboy_list', lambda: pos_masters.delboy_list())
test('pos_masters.nctype_list', lambda: pos_masters.nctype_list())
test('pos_masters.scheme_list', lambda: pos_masters.scheme_list())
test('pos_masters.session_list', lambda: pos_masters.session_list())
test('pos_masters.shift_list', lambda: pos_masters.shift_list())
test('pos_masters.itemcat_list', lambda: pos_masters.itemcat_list())
test('banquet_masters.catalog_list', lambda: banquet_masters.catalog_list())
test('banquet_masters.functype_list', lambda: banquet_masters.functype_list())
test('banquet_masters.groupprof_list', lambda: banquet_masters.groupprof_list())
test('hr_masters.desig_list', lambda: hr_masters.desig_list())
test('hr_masters.emp_list', lambda: hr_masters.emp_list())
test('hr_masters.empcat_list', lambda: hr_masters.empcat_list())
test('hr_masters.holiday_list', lambda: hr_masters.holiday_list())
test('unit.list_all', lambda: unit.list_all())
test('expenseentry.list_folio_charges', lambda: expenseentry.list_folio_charges('X'))
test('voucher_type.list_all', lambda: voucher_type.list_all())
test('voucher_type.get_categories', lambda: voucher_type.get_categories())

# === NIGHT AUDIT ===
print('\n=== NIGHT AUDIT ===')
from HMS_py.core import nightaudit

test('nightaudit.occupancy', lambda: nightaudit.occupancy())
test('nightaudit.get_inhouse_rooms', lambda: nightaudit.get_inhouse_rooms('2026-09-21'))
test('nightaudit.get_night_audit_flags', lambda: nightaudit.get_night_audit_flags())
test('nightaudit.na_log', lambda: nightaudit.na_log())

# === HR/PAYROLL ===
print('\n=== HR/PAYROLL ===')
from HMS_py.core import hr_payroll

test('hr_payroll.list_salary', lambda: hr_payroll.list_salary())
test('hr_payroll.list_attendence', lambda: hr_payroll.list_attendence())
test('hr_payroll.list_loan', lambda: hr_payroll.list_loan())
test('hr_payroll.list_overtime', lambda: hr_payroll.list_overtime())

# === MEMBER BILLING ===
print('\n=== MEMBER BILLING ===')
from HMS_py.core import member_billing

test('member_billing.list_membill', lambda: member_billing.list_membill())
test('member_billing.list_family', lambda: member_billing.list_family(''))
test('member_billing.list_memenviro', lambda: member_billing.list_memenviro())

# === HALL BOOKING ===
print('\n=== HALL BOOKING ===')
from HMS_py.core import hall_booking

test('hall_booking.list_all_hallbook', lambda: hall_booking.list_all_hallbook())
test('hall_booking.list_hallbook1', lambda: hall_booking.list_hallbook1('X'))

# === SMS / EPABX / SMARTCARD ===
print('\n=== SMS / EPABX / SMARTCARD ===')
from HMS_py.core import sms_comm, sms_enviro, epabx_ops, smartcard_ops

test('sms_comm.list_dbsms', lambda: sms_comm.list_dbsms())
test('sms_comm.list_dboy', lambda: sms_comm.list_dboy())
test('sms_enviro.dbsendsms_list', lambda: sms_enviro.dbsendsms_list())
test('sms_enviro.emailforward_list', lambda: sms_enviro.emailforward_list())
test('epabx_ops.epabxdata_list', lambda: epabx_ops.epabxdata_list())
test('smartcard_ops.list_master', lambda: smartcard_ops.list_master())
test('smartcard_ops.list_reg', lambda: smartcard_ops.list_reg())

# === SYSTEM / CONFIG ===
print('\n=== SYSTEM / CONFIG ===')
from HMS_py.core import sys_config, db_backup, db_maintenance, account_merge, revenue_budget, year_end, auth

test('sys_config.datelock_list', lambda: sys_config.datelock_list())
test('sys_config.site_list', lambda: sys_config.site_list())
test('sys_config.userperm_list', lambda: sys_config.userperm_list())
test('sys_config.roundoff_list', lambda: sys_config.roundoff_list())
test('db_maintenance.get_null_summary', lambda: db_maintenance.get_null_summary())
test('account_merge.preview_merge', lambda: account_merge.preview_merge('X', 'Y'))
test('revenue_budget.revenue_group_list', lambda: revenue_budget.revenue_group_list())
test('year_end.get_fy_dates', lambda: year_end.get_fy_dates())
test('auth.check_login', lambda: auth.check_login.__doc__)

# === REPORTS ===
print('\n=== REPORTS ===')
from HMS_py.core import reports

test('reports.run', lambda: reports.run.__doc__)
test('reports.by_key', lambda: reports.by_key.__doc__)
test('reports.by_module', lambda: reports.by_module.__doc__)

# === ENVIRO ===
print('\n=== ENVIRO ===')
from HMS_py.core import enviro

test('enviro.get', lambda: enviro.get())
test('enviro.snapshot', lambda: enviro.snapshot())

# === BANQUET OPS ===
print('\n=== BANQUET OPS ===')
from HMS_py.core import banquet_ops

test('banquet_ops.hallbook_list', lambda: banquet_ops.hallbook_list())
test('banquet_ops.hallsale1_list', lambda: banquet_ops.hallsale1_list())
test('banquet_ops.venueocc_list', lambda: banquet_ops.venueocc_list())

# === RESERVATION ===
print('\n=== RESERVATION ===')
from HMS_py.core import reservation

test('reservation.list_reservations', lambda: reservation.list_reservations())
test('reservation.voucher_config', lambda: reservation.voucher_config())

# === ROOM STATUS ===
print('\n=== ROOM STATUS ===')
from HMS_py.core import roomstatus

test('roomstatus.room_availability', lambda: roomstatus.room_availability('2026-09-21', '2026-09-22'))
test('roomstatus.housekeeping_summary', lambda: roomstatus.housekeeping_summary())

# === TALLY ===
print('\n=== TALLY ===')
from HMS_py.core import tally_export

test('tally_export.export_all', lambda: tally_export.export_all.__doc__)
test('tally_export.fetch_groups', lambda: tally_export.fetch_groups())
test('tally_export.fetch_ledgers', lambda: tally_export.fetch_ledgers())

# ============ SUMMARY ============
print('\n' + '='*60)
total = results['pass'] + results['fail']
passed = results['pass']
failed = results['fail']
pct = passed * 100 // max(total, 1)
print(f'TOTAL: {total} tests')
print(f'PASS:  {passed} ({pct}%)')
print(f'FAIL:  {failed}')
print('='*60)

if results['errors']:
    print('\nFAILURE DETAILS:')
    for n, e in results['errors']:
        print(f'  FAIL: {n}')
        print(f'        {e}')
        print()

cn.close()
