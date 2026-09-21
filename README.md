# HMS_py — Hotel Management System (Python port of VB6 HMS)

PyQt6 + pyodbc based port of the VB6 "Analysis HMS" (Project.vbp / HMS.bas,
FODER/) onto the same live SQL Server database (`KailashData2526`).
Schema me ZERO change — sirf reads/writes, VB6 ke jaisa.

## Run

```bash
pip install -r HMS_py/requirements.txt
python -m HMS_py.main
```

Config: `Analysis.ini` (section `[HMS]`; keys 1=server, 6=database,
7=company/site code, 9=sidebar modules) — VB6 wahi padhta hai.

## Tests

```bash
cd HMS_py
python -m pytest tests/unit -q          # 137 unit tests (no DB)
python ../test_all_modules.py           # 162 live-DB core checks
python ../test_ui_modules.py            # 62 UI instantiation checks
```

---

# CHANGELOG

## v0.1.1 — Bug-Fix Batch (BUG-016…BUG-025) + UI Registry Completion (2026-09-21)

### Fixed

- **BUG-016** `core/checkout.py` — `_get_checkout_type` ab sirf pyodbc
  `Invalid column name` (207) errors par next column candidate try karta
  hai; baaki DB errors propagate (pehle generic `except` sab chhupa deta).
- **BUG-018** `ui/taxstru_ui.py` — grid lines me invalid SNo/Rate/Limit
  rows **silently skip** ho rahi thi; ab row-number ke saath
  `ValueError` raise hota hai (user ka data save-fail par pata chale).
- **BUG-019** `ui/kot_entry.py` — invalid SNo/Qty/Rate ab explicit error
  (silent zero ki jagah); rate-autofill junk text ko overwrite karta hai.
- **BUG-022** `ui/reservation_browser.py` — `_selected_bookno()` +
  `reload(keep_bookno=...)` non-numeric/empty BookNo par crash-guarded.
- **BUG-024** `ui/checkout_ui.py` — folio selection helpers None-item,
  empty aur non-numeric cells par safe; PYT guard missing guest cell par
  crash nahi karta.
- **BUG-014** (partial) — 83 core modules ke hardcoded `SITE_CODE = "KK"`
  ab `db.get_site_code()` se aata hai (Analysis.ini key 7 / `HMS_SITE_CODE`
  env override). `db.get_user()` + `db.get_vprefix()` helpers bhi.
- **BUG-015** (key flows) — `MAX(VNo)+1` race condition fix: central
  race-safe helper `db.next_vno(table, vtype, vprefix, ...)` using
  `WITH (UPDLOCK, HOLDLOCK)`. Migrated: folio (RC/REC posting),
  expenseentry, nightaudit, inventory (`_next_vno`, `_next_vno_table`);
  inline locks: guest_services (WakeUp/Message), hall_booking (HB/HS),
  sms_comm (AssignDelivery), banquet_ops (Voucher_Type), checkin
  (`next_folio`), facility_billing (FacilityBill), kitchen_clstk UI.

### Added

- `HMS_py/ui/kitchen_clstk_ui.py` — Kitchen Closing Stock entry
  (VB6 kClStk port; KClStk table, atomic commit + rollback).
- `HMS_py/ui/requisition_slip_ui.py` — Requisition Slip / Pending M.R.
  (VB6 pReqSlip port; pending Indent1 lines (ClearYN='') → Stock Issue
  RQI; linked indents auto-clear).
- `HMS_py/tests/unit/test_bugfix_batch.py` — 33 unit tests for the
  bug-fix batch (all passing).
- Shell registry: `Kitchen Closing Stock`, `Requisition Slip`,
  `Stock Issue on Requisition`, `Pending M.R.`, `M.R. Entry` ab LIVE
  (pehle `_coming_soon`/blocked the).
- Keyboard shortcuts (Ctrl+Alt, conflict-free): H=HR Payroll,
  M=Member Billing, B=Booking Ops, F=Facility Billing, G=Guest Services,
  D=Hall Booking, S=POS Sales, K=POS Stock, E=EPABX (Call Type),
  T=Tally Export (existing).

### Notes

- Shell registry me ab koi direct `_coming_soon` wiring nahi bacha —
  sab leaves real UIs/report viewers pe wired hain, sirf truly
  no-table leaves documented skip message dikhati hain.
- Test status: unit 137/137, live-DB core 162/162, UI 62/62.

## v0.1.0 — Initial migration baseline

- 83 core modules + 60+ UI forms (VB6 FODER/ se port audit ke saath,
  dekho `UI_UPDATE_PLAN.md`, `MASTER_PLAN.txt`, `HMS_py/DEBUG_PLAN.txt`).
- VB6 menu structure → shell sidebar + menubar registry (641 leaves).
- Reports engine (70+ report types), Night Audit, Tally XML export.
