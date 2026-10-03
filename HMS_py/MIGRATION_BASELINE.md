# HMS Migration Baseline Report

**Date:** 2026-10-03
**Project Root:** C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py
**Legacy VB6 Source:** `implemented/HMS_REVERSE_ENGINEERING/HMS/`
**Target Python Source:** `ui/` (PyQt), `core/` (Business Logic)
**Database:** SQL Server (referenced by `core/db.py`)

## 1. Discovered Architecture

### 1.1 Legacy VB6 Environment
- **Total Forms (.frm):** 321
- **Total Modules (.bas):** 32
- **Core Logic:** Primarily in `HMS.bas` (large concatenated file), `MainLib.bas`, `FaLib.bas`, `FOMModule.bas`.
- **UI:** Standard VB6 forms with associated `.frx` binary files.

### 1.2 Target Python Environment
- **Frontend:** PyQt6-based UI files in `ui/`.
- **Backend:** Python modules in `core/` handling database operations and business logic.
- **Registry/Shell:** `ui/shell.py` acts as the main application entry point and form dispatcher.
- **Reports:** Crystal Reports (.rpt) files in `Reports/`, managed by `core/reports.py`.

### 1.3 Database Layer
- **System:** SQL Server.
- **Base Tables:** 280 tables discovered in live database (`Moondata2627`).
- **Shared Tables:** 236 tables used by both VB6 and Python (parity C2, live-DB validated).
- **Gaps:** 25 tables used by VB6 are not referenced in Python (parity C1 → `DATABASE_MAPPING_LEDGER.md`); 1 Python-only table (C3).

## 2. Migration Progress Summary (per existing logs)

- **Foundation & Master Data:** 100% COMPLETE.
- **Front Office:** ~80% UI complete. 5 major operational UIs missing.
- **Night Audit:** ~90% complete. GST reports and Printing are the main gaps.
- **Inventory:** ~90% complete.
- **POS:** ~30% complete. KOT Entry and Sale Bill UIs are missing.
- **Banquet:** ~30% complete. Masters done, but operations (Booking/Billing) missing.
- **Finance/HR/Membership:** Partially started or Not Started.

## 3. High-Priority Gaps

### 3.1 Front Office
- `fdRoomChange` (Room Change UI)
- `fdAmendEntry` (Amend Stay UI)
- `FrmMergeCharge` (Room Merge UI)
- `FrmRevMergeCharge` (Reverse Room Merge UI)
- `frmFomB` (Bill Reprint UI)

### 3.2 POS
- `RsKOTEntry` (KOT Entry UI) - CRITICAL
- `RSSaleBill` (Sale Bill UI) - CRITICAL

### 3.3 Banquet
- All operational forms (HallBooking, HallBill, etc.)

## 4. Documentation & Artifacts
- **Parity Report:** `VB6_VS_PYTHON_FILE_BY_FILE.txt` (regenerated 2026-10-03;
  baseline copy: `.baseline_20261003.txt`)
- **Migration Status:** `MIGRATION_STATUS.md`
- **Completion Matrix:** `MIGRATION_COMPLETION_MATRIX.md`
- **Bug Register:** `MIGRATION_MASTER_BUG_REGISTER.md`
- **Constitution:** `.specify/memory/constitution.md` (v1.0.0, 10 principles)
- **Ledgers (spec §18-21):** `FORM_MIGRATION_LEDGER.md` (321 forms),
  `PROCEDURE_MIGRATION_LEDGER.md` (32 modules / 396 missing named procs /
  619 event handlers), `DATABASE_MAPPING_LEDGER.md` (262 rows),
  `REPORT_PARAMETER_LEDGER.md`, `PRINTING_VERIFICATION.md`
- **Reconciliation:** `PARITY_RECONCILIATION.md` (baseline-vs-regenerated delta)
- **Test evidence:** `TEST_RESULTS.md`, `REGRESSION_RESULTS.md` (1062 passed)

### 4.1 Parity snapshot (2026-10-03 regeneration)

| Metric | Baseline | Now |
|---|---:|---:|
| Forms MISSING (na UI na registry) | 3 | **1** (FrmDataRecieving.frm) |
| Forms COMING_SOON | 3 | **1** (RsPaymentReceice.frm) |
| Forms with Python UI file (PY_FILE) | 71 | **77** |
| .bas FULL coverage | 23 | **26** |
| VB6-only tables (PY gap) | 48 | **25** |
| UI files (`ui/`) | 126 | **134** |
| Core files (`core/`) | 146 | **170** |
| Named procs ported / total | 50 / 1065 | 50 / 1065 (D5a missing 396) |

## 5. Next Strategic Focus
1. Complete Front Office UI gaps.
2. Implement Night Audit GST reports.
3. Implement POS KOT and Sale Bill operations.
4. Establish Banquet operational workflow.
