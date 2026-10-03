# REPORT_PARAMETER_LEDGER

**Spec §21** — har report ka parameter contract: VB6 source (form/rpt + Analysis.ini
keys + Enviro flags + MemVar context) vs Python implementation (`core/report_params.py`
→ `core/reports.py`). Status vocabulary per spec §17.

**Status:** SEED — structure + verified inventory; per-report rows fill in as each
report's comparison pass runs. No parameter rows are invented: row = evidence only.

**Generated:** 2026-10-03

## 1. Verified inventory (evidence)

| Item | Count / Value | Evidence |
|---|---|---|
| Python report registry keys | 278 | `reports.by_key()` → `len(REPORTS)`, run 2026-10-03 |
| VB6 report-viewer forms | 15 | parity report `REPORT_VIEWER` rows (FaRepView, REPVIEW, rFaRepView, rFomRepView, rHallRepView, rInventRepView, rMemberRepView, rPOSRepView, rRepHouse, rRepHousePreview, rRepPayRoll, rRepReserv, rRepTel, rRepTelPreview, FaReports) |
| Python viewer target | `ui/fa_voucher_ui.ReportViewer` + `ui/print_preview.py` | shell.py `_open_fv_list` (MS-02 fix makes it `exec()`), parity STATUS `REPORT_VIEWER → core/reports.py` |
| Parameter service | `core/report_params.py` | `get_report_params()`, `get_report_specific_params()`, `get_print_params()`, `validate_report_params()`, `ReportParameterService` |
| Date param dialog (VB6 repTouchDate) | PORTED | `ui/utility_forms_ui.py:168` `open_select_report_date` — caption "Select Report Date - HMS_py" |

## 2. Parameter sources (VB6 → Python mapping)

| Layer | VB6 source | Python source | Status |
|---|---|---|---|
| Date range | Form txt From/To, repTouchDate | `reports.run(key, d_from, d_to)` | MIGRATED |
| Site / Company / User | `MemVar_1F92078` (LogSite_Code), `MemVar_1F92128` (CompCode), `MemVar_1F920C8` (User) | `db.get_site_code() / get_comp_code() / get_user()` | MIGRATED (docstring evidence, report_params.py:7-9) |
| Business date | `Enviro.BusinessDate` ya Analysis.ini key 5 | `db.get_business_date()` | MIGRATED (report_params.py:7) |
| Analysis.ini | keys 1=Server 2=ReportsPath 3=TempPath 4=Printer 5=BackupPath 6=Database 7=CompanyCode 8=Site | `db.load_config()` → `ini_paths` | MIGRATED (report_params.py:8, `get_report_params`) |
| Enviro flags | Bill_Header/Bill_Footer/KOTPrinting/RcptPrinting/ReservationPrinting… | `SELECT * FROM Enviro WHERE LogSite_Code = ? OR 'HO'` → `enviro_flags` | MIGRATED (report_params.py:42-57) |
| Report-specific | per-report form controls / FAEnviro columns | `get_report_specific_params(report_key, ...)` | PARTIALLY_MIGRATED — per-key audit pending |
| Validation | implicit (VB6 form-level) | `validate_report_params()` | MIGRATED (present; behavior parity unverified) |

## 3. Known parameter gaps (from MAIN_SETUP_REPORT_PARAMETERS.md)

Detail per-report rows live there (Main Setup scope, 2026-10-01 audit). Standing
findings: Company/Ageing/Tagada/Credit-Limit report params currently
**"Not implemented"** at the report-consumer end → status MISSING in that doc.
Reconciliation rule: when a report's unit is worked, its rows move here with
evidence link, and that doc's MISSING → OK/MISMATCH after fix.

## 4. Row template (fill per report, evidence-only)

| Report key | VB6 form/rpt | Params (date/site/company/enviro/ini) | Python consumer | Type match | Required/default match | Status | Evidence |
|---|---|---|---|---|---|---|---|
| arrival_departure_list | (TBD: find VB6 viewer) | d_from,d_to,site,company,user,business_date | reports.run | TBD | TBD | DISCOVERED | reports.py registry |

Standing rules (spec):
- A row may only exist with a citable source line (VB6 .frm/.bas or Python file:line).
- "Not implemented" is a legitimate value — never fabricate a default to look complete.
- Parameter type mismatch = MISMATCH status, not silently coerced.
