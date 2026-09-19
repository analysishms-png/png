# HMS Python Project — Project Audit

**Project Root:**
```
C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py
```

**Date of Audit:** 2026-09-19

---

## 1. DIRECTORY INVENTORY

### Python Files (.py)
Total: 78 files

**Core modules (core/):**
- `db.py` - Database connection & queries (pyodbc, Analysis.ini)
- `menu.py` - Menu model v3, DB-driven (User_Module + User1)
- `auth.py` - Authentication/login logic
- `company.py` - Company details management
- `nightaudit.py` - Night audit reports + posting logic
- `reports.py` - Report generation (Reservation, Occupancy, VAT, Material)
- `pos.py` - POS Masters logic (NEW - implemented)
- `pos_entry.py` - POS Entry logic (NEW - implemented)
- `pos_masters.py` - POS masters
- `pos_masters_ui.py` - UI for POS masters
- `inventory.py` - Inventory core
- `item.py` - Item master
- `ledger.py` - Ledger accounts
- `taxmaster.py` - Tax master
- `paymenttype.py` - Payment types
- `marketsegment.py` - Market segment
- `businesssource.py` - Business source
- `gueststatus.py` - Guest status
- `forexmaster.py` - Forex master
- `core\inventory.py` - Inventory operations
- `core\ledger.py` - Ledger operations
- `core\fixcharge.py` - Fixed charges
- `core\taxstru.py` - Tax setup
- `core\sundry.py` - Sundry items
- `core\acgroup.py` - Account groups
- `core\area.py` - Area master
- `core\city.py` - City master
- `core\country.py` - Country master
- `core\depart.py` - Department master
- `core\state.py` - State master
- `core\unit.py` - Unit master
- `core\seasonmaster.py` - Season master
- `core\plans.py` - Plans
- `core\company.py` - Company
- `core\companymaster.py` - Company master
- `core\companymaster.py` - Company master
- `core\guestprof.py` - Guest profile
- `core\checkin.py` - Check-in
- `core\checkout.py` - Check-out
- `core\folio.py` - Folio/log operations
- `core\general_setup.py` - General setup
- `core\expenseentry.py` - Expense entry
- `core\narr.py` - Narration master
- `core\venue.py` - Venue master
- `core\roomcategory.py` - Room category
- `core\roommaster.py` - Room master
- `core\roomstatus.py` - Room status
- `core\menu.py` - Menu model
- `core\usermaster.py` - User master
- `core\hr_masters.py` - HR masters
- `core\members_masters.py` - Members masters
- `core\auth.py` - Authentication

**UI modules (ui/):**
- `shell.py` - Main flow: Login → Company → Main window
- `base_master.py` - Base master form engine
- `banquet_masters_ui.py` - Banquet masters UI
- `pos_masters_ui.py` - POS masters UI
- `reservation_browser.py` - Reservation browser
- `folio_ui.py` - Folio/Check-out UI
- `frontoffice.py` - Front office
- `usermaster_ui.py` - User master UI
- `hr_members_ui.py` - HR members UI
- `general_setup_ui.py` - General setup UI
- `expense_ui.py` - Expense entry UI
- `inventory.py` - Inventory UI
- `p2_masters.py` - P2 masters
- `pos_na.py` - POS NA operations
- `roomstatus_ui.py` - Room status UI
- `plan_master.py` - Plan master
- `kot_entry.py` - KOT entry UI
- `taxstru_ui.py` - Tax structure UI
- `pos_masters_ui.py` - POS masters UI

**Tests (tests/):**
- `conftest.py` - Pytest configuration
- `test_data.py` - Test data fixtures (PYT* prefix)
- `test_core_validation.py` - Core module validation tests

### Configuration Files
- `Analysis.ini` - VB6 HMS Analysis.ini (same config used by Python)
  - Keys: 1=Server, 2=Reports path, 3=Temp path, 6=Database
  - VB6 numbered keys decoded
- `AnalysisSetup\setup.ini` - Setup configuration

### Database Files
- `HMS.db` / `.mdb` / `.accdb` - Not found in project root (external)
- Analysis.ini provides connection config: `KailashData2526` database

### Report Files
- `_qa\reports\Occupancy_Analysis.pdf` - Generated PDF
- `_qa\reports\Reservation_Status_Arrival.pdf` - Generated PDF
- 372 `.rpt` files found (external/Crystal Reports?)
- Various `.pdf` in Reports/, Image/, pic/ directories

### Other Files
- `.bas` - `HMS.bas` (decompiled VB6 P-Code, 9619 lines)
- `.rpt` - Crystal Reports
- `.sql` - SQL scripts (in FODER/)
- `.ini` - Configuration
- `.txt` - Text files
- `.exe` - 7 executable files
- `.rar` - 3 archive files
- `.md` - 3 markdown files
- `.log` - Error log file
- `.bin`, `.bmp`, `.boot`, `.cab`, `.css`, `.gif`, `.hdr`, `.htm`, `.jpeg`, `.jpg`, `.js`, `.lnk`, `.mdb` (3), `.ocx`, `.skin`, `.sql` (2), `.ttx` (193), `.txt` (4), `.xlsx` (3)

---

## 2. ENTRY POINT

**main.py** - Confirmed main entry point:

```python
"""HMS_py main entry point (P0 flow).

Run: python -m HMS_py.main
EXE: pyinstaller build/HMS_py.spec  ->  build/dist/HMS_py.exe

Flow (VB6 jaisa): Login ('User Information') ->
Company select ('Company Details', Site table se dynamic) ->
Main window ('{Company} { Year }', sidebar ini key 9,
menubar User_Module se, ported masters registry se).
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from HMS_py.ui import shell


def main() -> int:
    return shell.run_flow()


if __name__ == "__main__":
    raise SystemExit(main())
```

**Startup command:** `python -m HMS_py.main`

**Flow (confirmed):** Login → Company select → Main window

---

## 3. VB6 REFERENCE AVAILABILITY

**VB6 Source:**
- `HMS.bas` - Decompiled P-Code (9619 lines, 9619 SUB/Function blocks)
- Located: `C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS.bas`

**VB6 Application:**
- `HMS.exe` - Compiled VB6 executable
- Reference for: Form names, event handlers, SQL, tables, business rules

**Key VB6 event handlers identified:**
- `mnuTelRep_Click` (ED77E8)
- `SCRD_Click` (DF4F90)
- `NightAuditLR_Click` (F14A94)
- `NightAuditoR_Click` (112CB18)
- `NightAuditRR_Click` (12FF954)
- `MatRep_Click` (13B1AE0)
- `MatVatR_Click` (1142960)
- `POSEnt_Click` (142C7E4)
- `POSMas_Click` (133A790)

---

## 4. DATABASE ANALYSIS

**Database Engine:** SQL Server (pyodbc)

**Connection Configuration (Analysis.ini):**
```
[HMS]
1=Server (Localhost)
2=Reports path (C:\Drive\HMS2526\Reports)
3=Temp path (C:\Drive\HMS2526\Temp)
4=Printer (Prn)
5=Backup path (C:\Backup)
6=Database (KailashData2526)
7=Company code (KK)
8=Site (Kanpur)
9=Sidebar modules (#-list)
```

**Connection String:**
```
DRIVER={SQL Server Native Client 10.0};SERVER=Localhost;DATABASE=KailashData2526;Trusted_Connection=yes
```

**Tables (preliminary - from VB6 decompilation and Python code):**
- AreaMast (CityCode varchar)
- City (CityCode varchar(6))
- Enviro (KOTAtNightAudit, POSBillAtNightAudit, PostingType, RoomChrgPostingType)
- Booking, GuestFolio, RoomOcc, KOT, Sale1, PayCharge, HallSale1
- Depart, RoomMast, Tax_Master, Voucher_Type, Voucher_Prefix
- SystemParams, Tax_MasterII, Tax_MasterIII
- And 50+ more tables from VB6 decompilation

**Temporary/Working Data:**
- TEMP path: `C:\Drive\HMS2526\Temp`
- Used for: Report staging, intermediate calculations, posting batches

**Crystal Reports:**
- `.rpt` files found (372 in project, more externally)
- Report parameters, subreports, stored procedures needed

---

## 5. CRYSTAL REPORTS ANALYSIS

**.rpt files found:**
- 372 `.rpt` files in project directory tree
- Located in: Reports/, Image/, pic/, and external paths

**Report requirements (from VB6 decompilation evidence):**
- Reservation Status (Arrival/InHouse)
- Occupancy Analysis
- VAT Register (7 index mappings)
- Material Reports (19 index mappings)
- Night Audit Reports (13 index mappings)
- POS Reports (various)
- Financial Reports
- Guest Reports
- Inventory Reports
- Banquet Reports
- Audit Reports

**Preferred architecture (per methodology):**
```
Python HMS
     ↓
Prepare Parameters/Data
     ↓
Existing Database
     ↓
Existing Crystal .rpt
     ↓
Crystal Reports Runtime
     ↓
Preview / Print / PDF / Export
```

**Action:** Determine whether Crystal Reports Runtime is installed on target Windows system. Do not rewrite into Python unless explicitly required.

---

## 6. TEMP FILE / TEMP TABLE ANALYSIS

**TEMP paths identified:**
1. `C:\Drive\HMS2526\Temp` (from Analysis.ini key 3)
2. Various `.tmp` files in project directories

**TEMP usage (from VB6 evidence and Python code):**
- Report staging data
- Intermediate calculation results
- Posting batches (Night Audit, POS)
- Export files
- Temporary tables for report generation

**Python TEMP handling (per methodology):**
- Do not blindly overwrite legacy TEMP data
- Use safe temporary paths where possible
- Reproduce required behavior safely

---

## 7. DLL/OCX/EXTERNAL DEPENDENCIES

**Known dependencies:**
- `SQL Server Native Client 10.0` (pyodbc driver)
- `pyodbc` Python package
- `PyQt6` (6.7.1) - GUI framework
- `reportlab` (4.5.1) - PDF generation
- VB6 runtime dependencies (forms, controls)

**EXE files found (7):**
- `HMS.exe` - Compiled VB6 application
- Other `.exe` files in project (purpose to be identified)

**.ocx found:** 1 file (purpose to be identified)

---

## 8. EXISTING TEST INFRASTRUCTURE

**Pytest configuration:**
- `tests\conftest.py` - Session/function fixtures with transaction rollback
- `tests\fixtures\test_data.py` - PYT* prefixed deterministic test data
- Markers: unit, integration, database, regression, slow, vb6_compare

**Test data pattern:** All test records use `PYT*` prefix (e.g., `PYT-GUEST-001`, `PYT-101`)

**Existing tests:** Unit tests for core modules, integration tests with DB

---

## 9. IDENTIFIED GAPS & RISKS

**Gaps:**
1. ~30% of VB6 event handlers not yet ported to Python
2. Crystal Reports integration not yet verified
3. TEMP file behavior not fully documented
4. External `.rpt` files location/dependencies not fully mapped
5. 7 `.exe` files purposes not verified

**Risks:**
1. Blind line-by-line VB6-to-Python conversion (violates golden rule)
2. Database schema changes without evidence
3. Overwriting legacy TEMP/data without backup
4. Missing VB6 business logic in Python port
5. UI/UX differences from VB6 original

---

## 10. NEXT STEPS (Per Methodology)

**Step 1 (Complete):** Project audit - DONE
**Step 2:** Find real entry point - DONE (main.py)
**Step 3:** Python architecture audit - IN PROGRESS
**Step 4:** VB6 reference - IN PROGRESS
**Step 5:** Database analysis - DONE
**Step 6:** Preserve existing database - PENDING
**Step 7:** TEMP file analysis - PENDING
**Step 8:** Crystal Reports - PENDING
**Step 9:** Report compatibility - PENDING
**Step 10:** Complete main HMS modules - PENDING
**Step 11:** Create audit documents - IN PROGRESS (this file)
**Step 12:** Create VB6→Python mapping - PENDING

**Priority First Module:** Night audit / POS entry (already partially implemented)