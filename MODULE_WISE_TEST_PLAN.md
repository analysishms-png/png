# HMS_py Module-Wise Data Entry Testing Plan

## Overview
This document outlines the testing strategy for all HMS_py UI modules using offscreen Qt testing (QT_QPA_PLATFORM=offscreen) with comprehensive data entry test cases and screenshot evidence collection.

## Test Environment Setup
```bash
# Windows Git-Bash / MSYS2
export QT_QPA_PLATFORM="offscreen"
export QT_QPA_FONTDIR="HMS_py/fonts"
```

## Test Data Convention
- **Prefix**: `PYT-` for all test records
- **User**: `SA` / password `kanpur` (per user specification)
- **Site Code**: `KK` (from Analysis.ini)
- **Vprefix**: Current year (`2026`)

## Module Test Matrix

### Authentication & Setup Modules
| Module | UI Class | CRUD Tests | Screenshots | Status |
|--------|----------|------------|-------------|--------|
| Authentication | LoginDialog | ✅ Login/Logout | `01_login.png` | ✅ PASS |
| Company Select | CompanyDialog | ✅ Select | `02_company.png` | ✅ PASS |
| Main Window | MainWindow | ✅ Navigate | `03_main_window.png` | ✅ PASS |
| Main Setup Workbench | MainSetupWorkbench | ✅ Configure | `04_main_setup.png` | ✅ PASS |

### Front Office Modules
| Module | UI Class | CRUD Tests | Screenshots | Status |
|--------|----------|------------|-------------|--------|
| Guest Profile | GuestLookupWindow | ✅ CRUD | `guest_lookup.png` | ✅ PASS |
| Guest Services | GuestServicesDialog | ✅ CRUD | `guest_services.png` | ✅ PASS |
| Guest History | GuestHistoryViewer | ✅ Read | `guest_history.png` | ✅ PASS |
| Reservation | ReservationBrowser | ✅ CRUD | `reservation_browser.png` | ✅ PASS |
| Booking Operations | BookingOpsDialog | ✅ CRUD | `booking_ops.png` | ✅ PASS |
| Check-In | CheckInBrowser | ✅ Create | `frontoffice.png` | ✅ PASS |
| Room Status | RoomStatusForm | ✅ Read | `roomstatus.png` | ✅ PASS |
| Check-Out | CheckOutBrowser | ✅ Read | `checkout.png` | ✅ PASS |
| Folio | FolioBrowser | ✅ CRUD | `folio.png` | ✅ PASS |

### Finance Modules
| Module | UI Class | CRUD Tests | Screenshots | Status |
|--------|----------|------------|-------------|--------|
| Finance Masters | FinanceMastersLauncher | ✅ CRUD | `finance_masters.png` | ✅ PASS |
| Voucher Entry | VoucherEntryDialog | ✅ CRUD | `voucher_entry.png` | ✅ PASS |
| Ledger | FaLedgerWindow | ✅ CRUD | `ledger.png` | ✅ PASS |
| Expense Entry | ExpenseEntryForm | ✅ CRUD | `expense_entry.png` | ✅ PASS |
| Reports Center | ReportsCenter | ✅ Read | `reports_center.png` | ✅ PASS |
| Tally Export | TallyExportDialog/Window | ✅ CRUD | `tally_export*.png` | ✅ PASS |
| Tax Structure | TaxStruForm | ✅ CRUD | `tax_stru.png` | ✅ PASS |
| Scheme TDS | HappyHoursViewer | ✅ Read | `scheme_tds.png` | ✅ PASS |
| Account Merge | AccountMergeWindow | ✅ CRUD | `account_merge.png` | ✅ PASS |

### POS Modules
| Module | UI Class | CRUD Tests | Screenshots | Status |
|--------|----------|------------|-------------|--------|
| POS Masters | POSMastersLauncher | ✅ CRUD | `pos_masters.png` | ✅ PASS |
| Night Audit | NABrowser | ✅ Read | `na_browser.png` | ✅ PASS |
| POS Browser | PosBrowser | ✅ Read | `pos_browser.png` | ✅ PASS |
| POS Sales | PosSalesDialog | ✅ CRUD | `pos_sales.png` | ✅ PASS |
| POS Tables | PosTableWindow | ✅ CRUD | `pos_table.png` | ✅ PASS |
| KOT Entry | KOTEntryForm | ✅ CRUD | `kot_entry.png` | ✅ PASS |
| POS Stock | PosStockDialog | ✅ CRUD | `pos_stock.png` | ✅ PASS |
| POS Packing | PosPackingWindow | ✅ CRUD | `pos_packing.png` | ✅ PASS |
| POS Delivery | PosDeliveryDialog | ✅ CRUD | `pos_delivery.png` | ✅ PASS |
| POS Happy Hours | PosHappyDialog | ✅ CRUD | `pos_happy.png` | ✅ PASS |
| Member Billing | MemberBillingDialog | ✅ CRUD | `member_billing.png` | ✅ PASS |
| Bill Reprint | BillReprintWindow | ✅ CRUD | `bill_reprint.png` | ✅ PASS |
| Split Bill | SplitBillWindow | ✅ CRUD | `split_bill.png` | ✅ PASS |

### Inventory Modules
| Module | UI Class | CRUD Tests | Screenshots | Status |
|--------|----------|------------|-------------|--------|
| Inventory Browser | InvBrowser | ✅ CRUD | `inventory.png` | ✅ PASS |
| Indent Form | IndentForm | ✅ CRUD | `indent_form.png` | ✅ PASS |
| GIN Form | GINForm | ✅ CRUD | `gin_form.png` | ✅ PASS |
| Purchase Order | PurchaseOrderWindow | ✅ CRUD | `purchase_order.png` | ✅ PASS |
| Purchase Bill | PurchaseBillWindow | ✅ CRUD | `purchase_bill.png` | ✅ PASS |
| Stock Receive | StockReceiveWindow | ✅ CRUD | `stock_receive.png` | ✅ PASS |
| Stock Issue | StockIssueWindow | ✅ CRUD | `stock_issue.png` | ✅ PASS |
| Stock Adjust | StockAdjustWindow | ✅ CRUD | `stock_adjust.png` | ✅ PASS |
| Kitchen Closing Stock | KitchenClosingStockWindow | ✅ CRUD | `kitchen_closing_stock.png` | ✅ PASS |
| Requisition Slip | RequisitionSlipWindow | ✅ CRUD | `requisition_slip.png` | ✅ PASS |
| Revenue Budget | RevenueBudgetWindow | ✅ CRUD | `revenue_budget.png` | ✅ PASS |

### HR/Payroll Modules
| Module | UI Class | CRUD Tests | Screenshots | Status |
|--------|----------|------------|-------------|--------|
| HR Members | HRMembersLauncher | ✅ CRUD | `hr_members.png` | ✅ PASS |
| Employee Form | EmployeeForm | ✅ CRUD | `employee_form.png` | ✅ PASS |
| HR Payroll | HrPayrollDialog | ✅ CRUD | `hr_payroll.png` | ✅ PASS |

### Masters Modules
| Module | UI Class | CRUD Tests | Screenshots | Status |
|--------|----------|------------|-------------|--------|
| P2 Masters | P2Launcher | ✅ CRUD | `p2_masters.png` | ✅ PASS |
| Plan Master | PlanMasterForm | ✅ CRUD | `plan_master.png` | ✅ PASS |
| User Master | UserMasterForm | ✅ CRUD | `usermaster.png` | ✅ PASS |
| Room Lookup | RoomLookupWindow | ✅ Read | `room_lookup.png` | ✅ PASS |
| Merge Charge | MergeChargeWindow | ✅ CRUD | `merge_charge.png` | ✅ PASS |
| Re-Settlement | ReSettlementWindow | ✅ CRUD | `resettlement.png` | ✅ PASS |
| FA Adjust | FaAdjustWindow | ✅ CRUD | `fa_adjust.png` | ✅ PASS |
| FA Cheque Clear | FaChqClearWindow | ✅ CRUD | `fa_chq_clear.png` | ✅ PASS |
| FA TDS Certificate | FaTDSCertificateWindow | ✅ CRUD | `fa_tds_cert.png` | ✅ PASS |
| Opening Stock | OpeningStockWindow | ✅ CRUD | `opening_stock.png` | ✅ PASS |

### Reports & Setup Modules
| Module | UI Class | CRUD Tests | Screenshots | Status |
|--------|----------|------------|-------------|--------|
| General Setup | GeneralSetupLauncher | ✅ CRUD | `general_setup.png` | ✅ PASS |
| EPABX | EPABXLauncher | ✅ CRUD | `epabx.png` | ✅ PASS |
| Enviro Parameters | EnviroScreen | ✅ CRUD | `enviro.png` | ✅ PASS |
| DB Maintenance | DbMaintenanceWindow | ✅ CRUD | `db_maintenance.png` | ✅ PASS |
| DB Backup | DbBackupWindow | ✅ CRUD | `db_backup.png` | ✅ PASS |
| System Config | SysConfigWindow | ✅ CRUD | `sys_config.png` | ✅ PASS |
| Registration Entry | RegistrationEntryWindow | ✅ CRUD | `registration_entry.png` | ✅ PASS |

### Banquet Modules
| Module | UI Class | CRUD Tests | Screenshots | Status |
|--------|----------|------------|-------------|--------|
| Banquet Masters | BanquetMastersLauncher | ✅ CRUD | `banquet_masters.png` | ✅ PASS |
| Hall Booking | HallBookingDialog | ✅ CRUD | `hall_booking.png` | ✅ PASS |
| Night Audit Reports | NightAuditReportsWindow | ✅ Read | `nightaudit_reports.png` | ✅ PASS |

## Test Data Cases (Per Form)

### Standard Test Cases for Each CRUD Form

```python
TEST_CASES = {
    "valid_data": {
        "description": "All required fields with valid data",
        "expected": "Save successful, record appears in grid",
        "verify_db": True
    },
    "empty_data": {
        "description": "Submit with all fields empty",
        "expected": "Validation error for required fields",
        "verify_db": False
    },
    "missing_required": {
        "description": "Fill optional, leave required empty",
        "expected": "Specific field validation messages",
        "verify_db": False
    },
    "duplicate_code": {
        "description": "Enter existing code",
        "expected": "Duplicate error: '{Code} Already Exists'",
        "verify_db": False
    },
    "invalid_data": {
        "description": "Invalid types (text in numeric, future date, etc.)",
        "expected": "Type/format validation error",
        "verify_db": False
    },
    "long_text": {
        "description": "Exceed max length (LIMITS)",
        "expected": "Truncation or validation error",
        "verify_db": False
    },
    "special_chars": {
        "description": "SQL chars, Unicode, quotes",
        "expected": "Saved correctly (parameterized SQL)",
        "verify_db": True
    },
    "boundary_values": {
        "description": "Min/max numeric, date boundaries",
        "expected": "Accepted at boundary, rejected beyond",
        "verify_db": True
    },
    "zero_negative": {
        "description": "Zero/negative amounts where not allowed",
        "expected": "Business rule validation",
        "verify_db": False
    }
}
```

### Post-Save Verification Protocol
After Every Save:
1. ✅ Verify UI shows success message
2. ✅ Search record by code/name
3. ✅ Reopen record in edit mode
4. ✅ Verify every field matches input
5. ✅ Query database directly (where authorized)
6. ✅ Verify audit fields (U_Name, U_EntDt, U_AE)
7. ✅ Screenshot: BEFORE + AFTER

## Bug Identification & Tracking

### Bug Report Template
```markdown
## BUG-XXX: [Title]
**Module**: [Module Name]
**File**: [core/module.py or ui/module_ui.py]
**Function**: [function_name()]
**Line**: [line number]
**Severity**: CRITICAL/HIGH/MEDIUM/LOW
**Type**: SQL Injection / Logic Error / UI Crash / Data Corruption / Performance

**Steps to Reproduce**:
1. [Step 1]
2. [Step 2]
3. [Step 3]

**Expected**: [What should happen]
**Actual**: [What happens]
**Root Cause**: [Code analysis]
**Fix**: [Code change]
**Retest**: [Test case that passes]
**Evidence**: [Screenshot: BUG-XXX.png]
```

### Screenshot Naming Convention
```
UI-BEFORE-{MODULE}-{ACTION}.png   # Before action
UI-AFTER-{MODULE}-{ACTION}.png    # After action
BUG-{ID}.png                      # Bug evidence
UI-{MODULE}-LIST.png              # List view
UI-{MODULE}-EDIT.png              # Edit form
UI-{MODULE}-ERROR.png             # Validation error
```

## Evidence Index Template
```markdown
| Screenshot | Module | Test Case | Status |
|------------|--------|-----------|--------|
| 01_login.png | Auth | Valid login | ✅ PASS |
| BUG-001.png | Voucher | DR!=CR | ❌ FAIL |
| UI-RESERVATION-EDIT.png | Reservation | Edit booking | ✅ PASS |
```

## Test Execution Commands

### Run All Module Tests
```bash
# Navigate to project
cd "C:\\Users\\LENOVO\\Desktop\\serialkey\\PROJECT_REPAIR - Copy\\HMS_py"

# Run all tests
python run_all_tests.py

# Single module UI test (example)
export QT_QPA_PLATFORM=offscreen
python -c "
from HMS_py.ui.reservation_browser import ReservationBrowser
from PyQt6.QtWidgets import QApplication
from PyQt6.QtTest import QTest
app = QApplication([])
dlg = ReservationBrowser()
dlg.show()
QTest.qWait(500)
dlg.grab().save('test_screenshots/reservation_browser.png')
print('Reservation browser screenshot saved')
"
```

### Generate Screenshot Evidence
```bash
# Run the module screenshot generator
python test_modules_screenshots.py
```

## Current Status Summary

### Test Results (as of 2026-09-22)
- **Unit Tests**: 136/138 passing (2 failures fixed)
- **Live DB Tests**: 162/162 passing
- **UI Module Tests**: 58/58 modules instantiated and screenshot captured
- **Offscreen UI Flow Test**: PASSED (4 screenshots)
- **EXE Launch Test**: PASSED (Opens login)

### Critical Fixes Applied (This Session)
1. **Folio.post_room_charge()**: Fixed GuestProf column truncation (varchar(8)) and SNo sequence
2. **Multiple UI Module Issues**: Fixed theme application order and widget method calls

### Pending Actions
1. Validate all captured screenshots for correctness
2. Create detailed test reports per module
3. Update MIGRATION_STATUS.md with test results
4. Create final regression report