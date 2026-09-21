# PROJECT_MAP.md — HMS_py

## Architecture
```
HMS_py/
├── core/           # Business logic (89 modules)
│   ├── db.py       # Database layer (pyodbc + Analysis.ini)
│   ├── auth.py     # VB6-compatible encryption/login
│   ├── checkout.py, frontoffice.py, reservation.py  # FO ops
│   ├── inventory.py, purchase.py, stock.py          # Inventory
│   ├── fa_*.py, pos_*.py, hr_*.py                   # Finance/POS/HR
│   └── ...
├── ui/             # PyQt6 forms (65 modules)
│   ├── shell.py    # Login→Company→Main window flow + registry
│   ├── theme.py    # Theme engine (glassmorphism, 6 presets, dark/light)
│   ├── design.py   # Design system (tokens, helpers, table setup)
│   ├── glass.py    # AuroraCanvas + AppearanceDialog
│   ├── base_master.py  # Generic CRUD master with state machine
│   ├── base_window.py  # ModernWindow base class
│   ├── *_ui.py     # Individual screen modules
│   └── ...
├── core/db.py reads Analysis.ini for connection
├── tests/          # Unit + database tests
├── Analysis.ini    # DB config (server, database, site)
└── run.py          # Entry point
```

## Database
- **Engine**: SQL Server (KailashData2526 on Localhost/DESKTOP-7P5A55R)
- **Users**: SA (pw: KANPUR), Admin, PANKAJ, AMIT
- **App user**: PYADMIN (app name, not DB user)
- **Tables**: 283 in sys.tables, 189 empty, 0 FK constraints
- **Hardcoded**: SITE_CODE="KK", USER="PYADMIN", VPREFIX="2026"

## Entry Points
- `run.py` — main launcher
- `HMS_py/ui/shell.py` — LoginDialog → CompanyDialog → MainWindow

## Key Constants
- `SITE_CODE = "KK"`, `USER = "PYADMIN"`, `VPREFIX = "2026"`
- Theme: glassmorphism with 6 presets (Ocean Frost, Midnight Glass, etc.)
- Font: Segoe UI 13px universal

## Dependencies
- Python 3.14.4, PyQt6 6.11.0, pyodbc
- No external UI frameworks

## Test Coverage
- 137 unit tests (validation, auth, CRUD, business logic)
- 162 DB tests (test_all_modules.py)
- 61 UI modules import-verified
