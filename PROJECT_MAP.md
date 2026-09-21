# HMS_py Project Map

## Project Overview
**Project:** HMS_py - Hotel Management System (Python port of VB6 HMS)
**Location:** C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py
**Language:** Python 3.10+
**Framework:** PyQt6 (GUI), pyodbc (Database)
**Database:** SQL Server (KailashData2526) - Same as VB6 production
**Configuration:** Analysis.ini (VB6-compatible)

---

## Architecture

```
HMS_py/
├── HMS_py/                      # Main package
│   ├── __init__.py
│   ├── main.py                  # Entry point: Login → Company → Main Window
│   ├── requirements.txt         # PyQt6==6.7.1, pyodbc==5.1.0
│   ├── pyproject.toml           # Build config (setuptools + pytest)
│   ├── Analysis.ini             # VB6-compatible config (section [HMS])
│   │
│   ├── core/                    # Business Logic Layer (92 modules)
│   │   ├── __init__.py
│   │   ├── db.py                # Config + parameterized SQL (COMPLETE)
│   │   ├── auth.py              # VB6-compatible encrypt/decrypt/login
│   │   ├── company.py           # Company list from Company table
│   │   ├── menu.py              # DB-driven menu (User_Module + User1)
│   │   ├── *.py                 # 89 core business modules
│   │
│   ├── ui/                      # PyQt6 Forms Layer (64+ modules)
│   │   ├── __init__.py
│   │   ├── shell.py             # Main flow: Login → Company → MDI
│   │   ├── base_master.py       # Generic master form (TopCtrl pattern)
│   │   ├── *.py                 # 62 UI forms
│   │
│   ├── tools/                   # Migration/utility scripts
│   │   ├── migrate_area_citycode.py
│   │   ├── api_mismatch_audit.py
│   │   ├── registry_audit.py
│   │   └── ...
│   │
│   ├── tests/                   # Test Suite
│   │   ├── conftest.py
│   │   ├── fixtures/
│   │   ├── unit/
│   │   └── database/
│   │
│   ├── _qa/
│   │   └── reports/             # Generated PDFs
│   │
│   ├── fonts/                   # Custom fonts for Qt
│   │
│   └── FODER/                   # VB6 source reference
│       ├── HMS.bas              # Decompiled VB6 (995,854 lines)
│       ├── HMS_Manuals/         # Manual extraction
│       └── *.sql                # SQL scripts
│
├── MODULE_FIX_PLANS/            # Migration tracking docs
├── pytest.ini                   # Pytest config
└── README.md
```

---

## Entry Points
- **Main:** `python -m HMS_py.main` (runs shell.run_flow())
- **Tests:** `python -m pytest tests/unit -q`, `python ../test_all_modules.py`
- **EXE Build:** `pyinstaller build/HMS_py.spec` → `build/dist/HMS_py.exe`

---

## Configuration (Analysis.ini)
Section: `[HMS]` with numbered keys (VB6-compatible):
- `1` = Server (e.g., Localhost)
- `2` = Reports path (e.g., C:\Drive\HMS2526\Reports)
- `3` = Temp path (e.g., C:\Drive\HMS2526\Temp)
- `4` = Printer
- `6` = Database (e.g., KailashData2526)
- `7` = Company code (e.g., KK)
- `8` = Site (e.g., Kanpur)
- `9` = Sidebar modules (#-delimited list)

---

## Database Structure
**Engine:** SQL Server (Trusted Connection)
**Driver:** SQL Server Native Client 10.0 (fallback: SQL Server)
**Database:** KailashData2526 (live production DB)
**Tables:** 293 tables (189 empty, 104 with data)
**Key Tables:**
- UserMast, Company, Site, Country, State, City, AreaMast
- RoomMast, RoomCatMast, RoomOcc, Booking, GuestProf
- GuestFolio, PayCharge, FOMBillDetails, FolioLog, BookingLog
- NightAuditLog, Stock, GodownMast, Indent, GIN, POrder, Purch2
- PlanMast, TaxMast, TaxStruMast, Voucher_Type, Voucher_Prefix
- Enviro, Depart, OutLetMast, VenueMast, VenueFeature
- ItemMast, ItemCatMast, SundryMast, NarrMast
- User_Module, User1, SubGroup, GroupProf, RevMast
- DeliveryBoy, MarketSeg, BussSource, GuestStat, PayTypeMast
- ForexMast, FixChargeMast, SeasonMast, PackageMaster
- HR: PrCategoryMast, PrDesigMast, PrEmployee, PrHoliday
- Members: MemCatMast, MemFacilityMast, MembershipRevMast
- Banquet: BanquetVenue, BanquetFeature, BanquetCatalog, BanquetGroup
- SmartCard: SmartCardMaster, SmartCardRegistration, SmartCardRecharge
- EPABX: CallTypeMast, CallCodeMast, ExtensionMast
- TDS: TDSCat, TDSCertificate

**Critical:** ZERO foreign key constraints - all referential integrity in application layer

---

## Core Modules (92) - By Category

### Foundation (Phase 1) - COMPLETE
- db.py, auth.py, company.py, menu.py, usermaster.py

### Master Data (Phase 2) - COMPLETE (30 modules)
- country.py, state.py, city.py, area.py, roomcategory.py
- roommaster.py, roomstatus.py, guestprof.py, plans.py
- seasonmaster.py, packagemaster.py, companymaster.py
- taxmaster.py, taxstru.py, paymenttype.py, marketsegment.py
- businesssource.py, gueststatus.py, forexmaster.py
- ledger.py, acgroup.py, fixcharge.py, unit.py, item.py
- sundry.py, narr.py, depart.py, venue.py
- banquet_masters.py, pos_masters.py, hr_masters.py
- members_masters.py, general_setup.py, epabx_masters.py
- smartcard.py, expenseentry.py

### Front Office (Phase 3) - 80% COMPLETE
- reservation.py, checkin.py, checkout.py, folio.py ✅
- nightaudit.py (READ-ONLY), reports.py ✅

### POS (Phase 6) - 30% COMPLETE
- pos.py (READ-ONLY), pos_masters.py ✅

### Inventory (Phase 7) - 42% COMPLETE
- inventory.py (READ-ONLY partial)

### Banquet (Phase 8) - 30% COMPLETE
- banquet_masters.py ✅, operations missing

### Membership/Other (Phase 9) - 30% COMPLETE
- hr_masters.py ✅, members_masters.py ✅, expenseentry.py ✅

### Reports (Phase 10) - 10% COMPLETE
- reports.py partial, pos_na.py READ-ONLY

---

## UI Modules (64+) - Key Forms

### Shell & Navigation
- shell.py - Main flow: LoginDialog, CompanyDialog, MainWindow, MainSetupWorkbench

### Front Office
- frontoffice.py - Guest Profile + Check-In browser
- reservation_browser.py - Reservation CRUD
- roomstatus_ui.py - Room rack + HK actions
- checkout_ui.py - Check-out browser
- folio_ui.py - Folio log + amend + payment (Ctrl+R)

### Masters
- p2_masters.py - Country/State/City/Area/Room/Plan/Season/Company/User/Charge/Unit/Item/Sundry/Narr/Venue/Dept
- plan_master.py, usermaster_ui.py
- finance_masters_ui.py - Tax/Payment/Market/Source/Status/Forex/Ledger
- pos_masters_ui.py - POS masters + smartcard
- banquet_masters_ui.py - Banquet masters
- hr_members_ui.py - HR + Members
- general_setup_ui.py - General setup + voucher category
- epabx_ui.py - EPABX masters

### Operations
- inventory.py, pos_na.py, kot_entry.py
- taxstru_ui.py, expense_ui.py
- pos_sales_ui.py, pos_table_ui.py
- booking_ops_ui.py, guest_lookup_ui.py
- guest_services_ui.py, guest_history_ui.py
- facility_billing_ui.py, hall_booking_ui.py
- member_billing_ui.py, hr_payroll_ui.py
- fa_voucher_ui.py, fa_ledger_ui.py
- tally_ui.py, tally_export_ui.py
- reports_ui.py, db_maintenance_ui.py
- db_backup_ui.py, sys_config_ui.py

---

## Dependencies

### Runtime
- PyQt6==6.7.1 (GUI framework)
- pyodbc==5.1.0 (SQL Server connectivity)
- reportlab>=4.0.0 (PDF generation - in dev deps)
- Python >=3.10 (match statements, union types)

### Development
- pytest>=7.4.0
- pytest-cov>=4.1.0
- pyinstaller>=6.8.0 (EXE build)

### System
- SQL Server Native Client 10.0 ODBC driver
- Windows (primary target), WSL/Linux (headless CI)

---

## Build Process
1. Install: `pip install -r HMS_py/requirements.txt`
2. Config: Ensure `Analysis.ini` exists with correct DB connection
3. Run: `python -m HMS_py.main`
4. Build EXE: `pyinstaller build/HMS_py.spec`
   - Output: `build/dist/HMS_py.exe`
   - Includes: tally_export, tally_ui as hidden imports

---

## Test Infrastructure
- **Unit Tests:** 137 tests, all passing (no DB)
- **Live DB Tests:** 162 tests, all passing (real KailashData2526)
- **UI Instantiation:** 57 forms, all instantiating
- **Markers:** unit, integration, database, regression, slow, vb6_compare
- **Fixtures:** PYT* prefix test data (TEST-GUEST-001, TEST-ROOM-101, etc.)
- **Transaction Rollback:** Session/function fixtures with auto-rollback

---

## Key Documentation Files
- README.md - Project overview + changelog
- MIGRATION_STATUS.md - Complete migration progress (504 lines)
- BUGS.md - Bug tracking (144 lines)
- PROJECT_AUDIT.md - Directory inventory + gaps
- SOFTWARE_QA_AUDIT_REPORT.md - Deep QA audit (515 lines)
- UI_UPDATE_PLAN.md, UI_UPDATE_GLASS.md - UI modernization
- TESTING_PLAN.md - Test strategy
- REMAINING_PRIORITY_PLAN.md - Next steps
- IMPLEMENTED_LOGICS_SUMMARY.md - Implemented logic summary

---

## Known Issues Summary (from SOFTWARE_QA_AUDIT_REPORT.md)
- **8 Critical:** SQL injection (387 f-string sites, 148 TOP patterns), NameError crash, hardcoded party code, param count mismatches (3)
- **16 High:** Broken transactions, race conditions (14 MAX+1 generators), connection leaks, orphan records, dead code
- **22 Medium:** Timing attacks, no rate limiting, silent failures, validation gaps
- **17 Low:** Duplicate imports, hardcoded colors, style issues
- **7 Security:** SQL injection, 178 DELETE without FK checks, auth weaknesses

---

## VB6 Reference
- **HMS.bas:** 995,854 lines decompiled P-Code (351 objects)
- **HMS.exe:** Compiled VB6 executable for behavior reference
- **Forms/Modules:** 25 Front Office, 8 Reservations, 12 Folio, 6 Night Audit, 18 POS, 12 Inventory, 14 Banquet, 8 Housekeeping, 35 Setup, 20 Finance, 8 HR, 14 Membership, 8 SMS, 5 Door Lock, 15 Reports, 8 Utilities, 5 External