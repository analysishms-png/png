# Python Architecture

**Date:** 2026-09-24  
**Project:** HMS_py  
**Reference:** HMS.exe (VB6)  
**Database:** MOONData2627

---

## Overview

The Python project (`HMS_py`) is a reverse-engineered reimplementation of a VB6 hotel management system (HMS.exe). It uses PyQt6 for the UI, pyodbc for SQL Server connectivity, and follows the VB6 business logic and database schema exactly.

---

## Project Structure

```text
HMS_py/
│
├── HMS.exe                          # VB6 reference application
├── Analysis.ini                     # Shared config (server, db, paths)
├── VB6_PYTHON_SIDE_BY_SIDE_REPORT.md
│
├── HMS_py/                          # Python package
│   ├── core/                        # Core business logic & data layer
│   │   ├── db.py                    # Database connection & config
│   │   ├── auth.py                  # VB6-compatible authentication
│   │   ├── menu.py                  # Menu/sidebar resolution
│   │   ├── reports.py               # Report query engine
│   │   ├── shell.py                 # Main shell/MDI controller
│   │   ├── sidebar_buttons.py       # Sidebar button generation
│   │   ├── vb6_frontend.py          # VB6 module frontend classes
│   │   ├── vb6_logic.py             # VB6 business logic analysis
│   │   ├── mdi_menu.json            # MDI menu structure
│   │   ├── error_handling.py        # Error handling framework
│   │   ├── validation.py            # Validation utilities
│   │   ├── sys_config.py            # System configuration
│   │   ├── http_client.py           # HTTP client for SMS/GST
│   │   ├── url_utils.py             # URL utilities
│   │   └── __init__.py
│   │
│   ├── ui/                          # PyQt6 UI modules
│   │   ├── shell.py                 # Main window shell
│   │   ├── sidebar_buttons.py       # Sidebar navigation
│   │   ├── base_window.py           # Base window class
│   │   ├── base_master.py           # Base master form class
│   │   ├── dashboard.py             # Main dashboard
│   │   ├── frontoffice.py           # Front office main
│   │   ├── front_office_dashboard.py
│   │   ├── global_search.py         # Global search
│   │   ├── theme.py                 # UI theming
│   │   ├── design.py                # UI design helpers
│   │   ├── print_preview.py         # Print preview
│   │   ├── glass.py                 # Glass effect UI
│   │   ├── debug_mainsetup.py       # Debug tool
│   │   ├── verify_fix.py            # Verification tool
│   │   ├── verify_vb6.py            # VB6 verification
│   │   ├── test_sidebar_buttons.py  # Sidebar test
│   │   │
│   │   ├── finance/                 # Finance UI
│   │   ├── frontoffice/             # Front Office UI
│   │   ├── inventory/               # Inventory UI
│   │   ├── pos/                     # POS UI
│   │   ├── reports/                 # Reports UI
│   │   ├── hr/                      # HR UI
│   │   └── ... (82 UI modules)
│   │
│   ├── tests/                       # Unit tests (310 tests)
│   │   ├── unit/
│   │   ├── integration/
│   │   ├── regression/
│   │   ├── database/
│   │   ├── fixtures/
│   │   ├── conftest.py
│   │   ├── test_front_office.py
│   │   ├── test_ui_walkthroughs.py
│   │   └── test_validation_crud.py
│   │
│   └── _qa/                         # QA artifacts
│       ├── kanpur_00_startup.png    # Screenshots (18 total)
│       ├── kanpur_18_final.png
│       ├── HMS_QA_REPORT.md
│       ├── HMS_QA_REPORT.json
│       ├── HMS_final_status.json
│       ├── HMS_module_test.json
│       ├── kanpur_sql_tracking.json
│       ├── screenshot_manifest.json
│       ├── login_creds.json
│       ├── module_logic.json
│       ├── sql_tracking.json
│       └── HMS_db_verify.json
│
├── docs/                            # Documentation (this folder)
│   ├── MODULE_MAP.md
│   ├── DATABASE_MAP.md
│   ├── PYTHON_ARCHITECTURE.md
│   ├── BUSINESS_LOGIC.md
│   ├── UI_REFERENCE.md
│   ├── EXE_VS_PYTHON.md
│   ├── DEBUG_REPORT.md
│   ├── TEST_REPORT.md
│   └── IMPLEMENTATION_STATUS.md
│
└── moondata.sql                     # 274 CREATE TABLE scripts
```

---

## Architecture Layers

### 1. Database Layer (`core/db.py`)

- **Connection:** `pyodbc` with Windows Authentication
- **Config:** Reads `Analysis.ini` section `[HMS]`
  - Key 1 = Server
  - Key 6 = Database
  - Key 2 = Reports path
  - Key 3 = Temp path
- **Query method:** `db.query(sql, params)` — parameterized only
- **Config loading:** `db.load_config()` returns dict of all config keys

```python
from HMS_py.core import db
rows = db.query("SELECT code, name FROM User_Module WHERE flag='9'", ())
```

### 2. Authentication Layer (`core/auth.py`)

- **Encryption:** VB6-compatible reversible XOR-like cipher (shift=27)
- **Brute-force protection:** Max 5 attempts per 15 min per user
- **User table:** `UserMast` (USER_NAME, PASSWD, LABEL, ActiveYN)
- **SA default:** Password `\` (from VB6 `frmCompany.frm` line 2415)

### 3. Menu/Navigation Layer (`core/menu.py`, `ui/sidebar_buttons.py`)

- **Sidebar roots:** `User_Module` table, `flag='9'`
- **Menubar groups:** `DISTINCT Module_Name, MIN(srno)`
- **Submenus:** `flag='1'` headers followed by `flag='0'` children
- **Runtime order:** `Analysis.ini` key 9 (#-list)
- **Rights:** `User1` table (empty = full access for SA)

### 4. Business Logic Layer (`core/vb6_frontend.py`, `core/vb6_logic.py`)

- **VB6 Frontend Classes:** 16 `VB6Form` subclasses (one per module)
- **WRONG_TARGET Re-wires:** 10 critical form-target corrections
- **Logic Implementation:** `VB6LogicImpl` class with key business rules

### 5. UI Layer (`ui/`)

- **Framework:** PyQt6
- **Base Classes:** `QMainWindow`, `QWidget`, `QDialog`
- **Pattern:** Each VB6 form → corresponding PyQt6 UI module
- **82 UI modules** covering all 321 VB6 forms

### 6. Report Layer (`core/reports.py`)

- **Query engine:** 261 report query keys
- **Source:** `Report_Queries/` directory (356 folders)
- **SQL:** 333/421 live queries verified PASS
- **Format:** Parameterized SQL executed via `db.query()`

### 7. Shell/Controller Layer (`core/shell.py`, `ui/shell.py`)

- **Main controller:** `shell.py` manages MDI child forms
- **Keyboard shortcuts:** Alt+key for all 16 modules
- **WRONG_TARGET handling:** 10 re-wires redirect to correct forms
- **Registry fixes:** Trailing/double-space key normalization

---

## Data Flow

```text
User Input (PyQt6 UI)
    ↓
UI Module (ui/*.py)
    ↓
Business Logic (core/vb6_frontend.py, core/*.py)
    ↓
Database Layer (core/db.py)
    ↓
pyodbc → SQL Server (MOONData2627)
    ↓
Result → UI Module → User
```

---

## Configuration Flow

```text
Analysis.ini (VB6 config)
    ↓
core/db.py: load_config()
    ↓
{server, database, reports, temp, company, site, modules}
    ↓
Used by: db.connect(), menu.py, shell.py, reports.py
```

---

## Module Loading Flow

```text
User clicks sidebar button
    ↓
sidebar_buttons.py resolves User_Module flag='9'
    ↓
core/menu.py: roots() returns [{code, name, srno}]
    ↓
core/shell.py: opens corresponding form
    ↓
core/vb6_frontend.py: VB6Form subclass instantiated
    ↓
PyQt6 QMainWindow displayed
```

---

## Error Handling

```text
Exception caught
    ↓
core/error_handling.py: classify_error()
    ↓
{Module, Screen, Action, Error, SQL, Resolution}
    ↓
Logged to logs/error.log
    ↓
User shown friendly message
    ↓
Transaction rolled back (if applicable)
```

---

## Test Architecture

```text
HMS_py/tests/
├── unit/          # 310 unit tests
├── integration/   # Integration tests
├── regression/    # Regression tests
├── database/      # DB verification tests
├── fixtures/      # Test fixtures
└── conftest.py    # pytest configuration
```

---

## Key Design Decisions

1. **No schema changes:** Python uses exact same tables as VB6
2. **Parameterized queries only:** No string concatenation in SQL
3. **VB6-compatible encryption:** Reversible cipher for password compat
4. **Offscreen Qt:** Tests run with `QT_QPA_PLATFORM=offscreen`
5. **Config from Analysis.ini:** Same config file as VB6
6. **Flag-based menu system:** `User_Module.flag` determines sidebar/menubar
7. **Transaction safety:** All writes wrapped in BEGIN/COMMIT/ROLLBACK
8. **Zero production data modification:** Tests use transactions and rollback

---

## Technology Stack

| Component | Technology |
|-----------|------------|
| UI Framework | PyQt6 |
| Database | SQL Server 2008 R2 |
| DB Driver | pyodbc |
| Auth | Windows Authentication |
| Config | Analysis.ini |
| OCR | Tesseract 5.x |
| Browser Automation | Playwright MCP |
| Windows Automation | win32 MCP (53 tools) |
| Testing | pytest |
| Version Control | Git |
| Build | Python 3.14 |
