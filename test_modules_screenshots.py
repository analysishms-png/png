import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
os.environ['QT_QPA_FONTDIR'] = 'HMS_py/fonts'

import sys
sys.path.insert(0, 'HMS_py')

from PyQt6.QtWidgets import QApplication
from PyQt6.QtTest import QTest
from HMS_py.ui.theme import apply_theme

# Test more modules
modules_to_test = [
    ('reservation_browser', 'ReservationBrowser'),
    ('checkout_ui', 'CheckOutBrowser'),
    ('folio_ui', 'FolioBrowser'),
    ('frontoffice', 'CheckInBrowser'),
    ('guest_lookup_ui', 'GuestLookupWindow'),
    ('guest_services_ui', 'GuestServicesDialog'),
    ('guest_history_ui', 'GuestHistoryViewer'),
    ('booking_ops_ui', 'BookingOpsDialog'),
    ('roomstatus_ui', 'RoomStatusForm'),
    ('pos_masters_ui', 'POSMastersLauncher'),
    ('pos_na', 'NABrowser'),
    ('pos_sales_ui', 'PosSalesDialog'),
    ('pos_stock_ui', 'PosStockDialog'),
    ('pos_packing_ui', 'PosPackingWindow'),
    ('pos_delivery_ui', 'PosDeliveryDialog'),
    ('pos_happy_ui', 'PosHappyDialog'),
    ('pos_table_ui', 'PosTableWindow'),
    ('kot_entry', 'KOTEntryForm'),
    ('inventory', 'InvBrowser'),
    ('purchase_order_ui', 'PurchaseOrderWindow'),
    ('purchase_bill_ui', 'PurchaseBillWindow'),
    ('stock_receive_ui', 'StockReceiveWindow'),
    ('stock_issue_ui', 'StockIssueWindow'),
    ('stock_adjust_ui', 'StockAdjustWindow'),
    ('kitchen_clstk_ui', 'KitchenClosingStockWindow'),
    ('hr_members_ui', 'HRMembersLauncher'),
    ('hr_payroll_ui', 'HrPayrollDialog'),
    ('member_billing_ui', 'MemberBillingDialog'),
    ('finance_masters_ui', 'FinanceMastersLauncher'),
    ('fa_ledger_ui', 'FaLedgerWindow'),
    ('fa_voucher_ui', 'VoucherEntryDialog'),
    ('expense_ui', 'ExpenseEntryForm'),
    ('reports_ui', 'ReportsCenter'),
    ('banquet_masters_ui', 'BanquetMastersLauncher'),
    ('hall_booking_ui', 'HallBookingDialog'),
    ('nightaudit_reports_ui', 'NightAuditReportsWindow'),
    ('general_setup_ui', 'GeneralSetupLauncher'),
    ('epabx_ui', 'EPABXLauncher'),
    ('enviro_ui', 'EnviroScreen'),
    ('taxstru_ui', 'TaxStruForm'),
    ('scheme_tds_ui', 'HappyHoursViewer'),
    ('account_merge_ui', 'AccountMergeWindow'),
    ('sys_config_ui', 'SysConfigWindow'),
    ('db_maintenance_ui', 'DbMaintenanceWindow'),
    ('db_backup_ui', 'DbBackupWindow'),
    ('pos_sub_forms_ui', 'BillReprintWindow'),
    ('fo_sub_forms_ui', 'RoomLookupWindow'),
    ('fa_sub_forms_ui', 'FaAdjustWindow'),
    ('misc_sub_forms_ui', 'OpeningStockWindow'),
    ('p2_masters', 'P2Launcher'),
    ('plan_master', 'PlanMasterForm'),
    ('usermaster_ui', 'UserMasterForm'),
    ('registration_entry_ui', 'RegistrationEntryWindow'),
    ('facility_billing_ui', 'FacilityBillingDialog'),
]

app = QApplication.instance() or QApplication([])
apply_theme(app, 'light')

os.makedirs('test_screenshots/modules_new', exist_ok=True)

for module_name, class_name in modules_to_test:
    try:
        mod = __import__(f'HMS_py.ui.{module_name}', fromlist=[class_name])
        cls = getattr(mod, class_name)
        dlg = cls()
        dlg.show()
        QTest.qWait(300)
        dlg.grab().save(f'test_screenshots/modules_new/{module_name}.png')
        dlg.hide()
        print(f'✅ {module_name}.{class_name}')
    except Exception as e:
        print(f'❌ {module_name}.{class_name}: {e}')

print('Done!')