# PRINTING_VERIFICATION

**Spec §22** — print/preview/reprint parity verification record. VB6 (DataReport
.rpt + CommonDialog.ShowPrinter + print modules) vs Python (`core/print_engine.py`,
`ui/print_preview.py`, `core/printmast.py`, `core/printformats.py`).

**Status:** SEED — architecture verified by code inspection 2026-10-03; output-level
(printed page vs VB6 printed page) verification PENDING (requires physical/preview
print evidence per report).

## 1. Architecture mapping (verified — code exists)

| Concern | VB6 evidence | Python implementation | Status |
|---|---|---|---|
| Print job model | DataReport + Printer object | `print_engine.PrintJob` dataclass (report_key, title, d_from/d_to, headers/rows, printer, copies, paper, orientation, margins) | MIGRATED |
| Preview | Report.PrintPreview modal | `print_engine.preview()` → `ui/print_preview.py` QDialog | MIGRATED (feature parity PARTIAL — see §2) |
| Print out | `CommonDialog.ShowPrinter`, Analysis.ini key 4 | `print_engine.print(job, printer, copies)` | MIGRATED |
| Reprint | POSBillReprint.frm / fdDisplayFolio.frm: original doc ID + same params, audit `U_AE='R'` | `print_engine.reprint()`, `audit_reprint()` (U_AE='R', U_Name, U_EntDt), `get_reprint_history()` | MIGRATED (docstring-evidenced; live audit-row verification PENDING) |
| Reprint shortcuts | FOM Bill Reprint / OutLet Bill Reprint forms | `ReprintManager.reprint_bill/folio/kot/receipt` | MIGRATED (existence); end-to-end PENDING |
| Print master | frmMod_Print.frm / frmMod_Print1.frm "Printing Setup" | `core/printmast.py` (list/get/insert/update + validation `_validate`, `_require_unique`) | MIGRATED |
| Print formats | frmPrintModule.frm "Printing Parameters" | `core/printformats.py` (list_all/list_by_modname/get/exists) | MIGRATED |
| Print setup table | `printersetup` (VB6+PY, live DB) | `core/printersetup.py` | BOTH_SIDES (parity C2) |
| Print mast table | `printmast` (VB6+PY, live DB) | `core/printmast.py` | BOTH_SIDES (parity C2) |
| Member bill printing | MemBillPrintingModule.frm | `core/member_billing.py` (shared screen registry) | REGISTRY WIRED — output PENDING |

## 2. Feature gaps (from MAIN_SETUP_REPORT_PRINT_BUGS.md, 2026-10-01)

| Item | VB6 | Python | Class | Priority |
|---|---|---|---|---|
| Report templates | .rpt files | none — code-based templates | MISSING PYTHON LOGIC | P0 |
| Data binding | ADO Recordset → DataReport | query → dict → template | WRONG PYTHON LOGIC (verify data) | P0 |
| Sections (header/detail/footer) | DataReport sections | template sections | PARTIAL — verify render | P1 |
| Preview zoom levels | 50/75/100/150/200% | basic zoom | MISSING PYTHON LOGIC | P2 |
| Preview page navigation | First/Prev/Next/Last | basic nav | PARTIAL | P1 |

## 3. Verification procedure (per report, produces evidence rows)

1. Run report with fixed date range (d_from/d_to) against Moondata2627.
2. Capture Python preview screenshot → `_ui_shots/` (montage name = report key).
3. Compare against VB6 output reference (or VB6 spec of sections/columns when a
   physical VB6 print is unavailable — mark evidence kind `SPEC_DERIVED`, never
   claim pixel parity without a VB6 reference).
4. Column order/widths, page header/footer content, totals row: MUST match.
5. Print to PDF (offscreen-capable) and store path as evidence.
6. Row added to §4 with status VERIFIED / MISMATCH(bug id) / BLOCKED(reason).

## 4. Verification rows

| Report | Preview evidence | Print/PDF evidence | Sections match | Totals match | Status |
|---|---|---|---|---|---|
| (no report verified at output level yet) | — | — | — | — | PENDING |

Standing rules: verification claims require a stored artifact (screenshot/PDF/
test name). "Looks fine" without evidence is not a status.
