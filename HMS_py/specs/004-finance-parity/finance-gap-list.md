# Finance (VB6 hex B) — Verified Gap List

READ-ONLY audit. Evidence is line-anchored. No code was changed.

- Date: 2026-10-06
- Scope: VB6 `Finance` forms (`vb6_form_inventory.md:22-26`, 25 forms), the Finance MDI menu
  (`core/mdi_menu.json:7-211` = 7 Transaction + 7 Display + 23 Reports = **37 leaves**),
  and the report-key registry (`core/reports.py`).
- Dispatch model: DB-driven menu (`core/menu_help.py`, `User_Module` fallback) → **leaf→handler
  registry** in `ui/shell.py::_form_registry()` (`ui/shell.py:1508`). This registry, not the menu
  tables, decides what actually opens.

---

## 1. How resolution actually works (read this first — it decides the verdicts)

| Step | Where | Rule |
|---|---|---|
| 1 | `ui/shell.py:2151-2228` | report aliases (`_open_report(cap)` + `VB6_CAPTION_ALIASES`, `core/reports.py:2931`) |
| 2 | `ui/shell.py:2229-2234` | `{cap: _open_report(cap) for cap in menu_caption_map()}` — every `REPORTS[].menu` caption |
| 3 | `ui/shell.py:2549+` | explicit string keys (Finance Display/Reports block, `:2649-2670`) |
| 4 | `ui/shell.py:3375+` | later explicit keys (PARTIAL-bucket block, `:3389-3422`, `:3588`) — **later key wins** |
| Lookup | `ui/shell.py:3626` | `self._reg_ci = {str(k).strip().lower(): v ...}` — lower+strip, **`&` is NOT stripped** |
| Menu name | `core/menu_help.py:416,78` | `name = caption_disp` (raw DB caption, `&` preserved) |
| Fallback | `core/menu_help.py:565-581` | `User_Module` gap-merge supplies **non-`&`** captions for full-access users |

Two live caption shapes exist for the same leaf:

- **with `&`** — from `menuHelp.caption_disp` (`ui/shell.py:2547` comment: *"menuHelp captions '&' ke saath aate hain"*)
- **without `&`** — from `User_Module` gap-merge (`_qa/HMS_exe_20260924/user_module_tree.txt` has no `&`)

`_reg_ci` does **not** strip `&`, so the two shapes are **different keys**. Where both keys exist but
point at different handlers, the leaf is *ambiguously wired* (flagged `DIVERGENT` below).

Runtime verification (read-only) of `core/reports.py::menu_caption_map()`:

```
MAP  'Annexure'                    -> Annexure          |  '&Annexure'                   -> (MISS)
MAP  'Ageing Analysis for Debtors'  -> AgingDr           |  '&A&geing Analysis for Debtors'-> (MISS)
MAP  'Ageing Analysis for Creditors'-> AgingRepCr        |  'Ageing A&nalysis for Creditors'-> (MISS)
MAP  '&Ledger'                     -> Led               |  'Ledger'                      -> LedCred
```

---

## 2. A. Finance form inventory — 25 forms

| # | VB6 form | Status | Python port | Registry evidence |
|---|---|---|---|---|
| 1 | `FaVoucher` | **FULL** | `ui/fa_voucher_ui.py`, `core/fa_voucher.py` | Finance menu module itself; `&Voucher Entry` `ui/shell.py:2549`, `"Voucher Entry"` `:2631` |
| 2 | `FaVrEnt` | **FULL** | `VoucherEntryDialog` `ui/fa_voucher_ui.py:41`, `open_voucher_entry` `:380` | `ui/shell.py:2549 / 3385` |
| 3 | `FaGrEnt` | **FULL** | `GroupAccountsWindow` `ui/partial_forms_ui.py:5` | `ui/shell.py:3394 "Group Accounts Entry"` → `pfui.open_group_accounts` |
| 4 | `FaAdjust` | **WRONG_TARGET** | `fasub_ui.open_fa_adjust` `ui/fa_sub_forms_ui.py:329` | **Leaf `:2619 "Adjustment Entry"` → `fvu.open_voucher_entry`** (voucher entry, not adjustment). Correct handler only on dead alias `:2955 "Ledger Adjustment"` |
| 5 | `FaAdjustDel` | **WRONG_TARGET** | `pfui.open_adjustment_delete` `ui/partial_forms_ui.py:1213` / `fasub_ui.open_fa_adjust(delete=True)` | **Leaf `:2620 "Delete Adjustment Entry"` → `fvu.open_voucher_entry`**. Correct handlers only on non-menu captions `:3407 "Adjustment Delete"` and `:2959 "Adjustment Deletion"` |
| 6 | `FaChqClear` | **PARTIAL** | `fa_sub_forms_ui.open_fa_chq_clear` `:336`; `pfui.ChequeDDClearingWindow` `ui/partial_forms_ui.py:12` | Aliases only: `:2962 "Cheque Clearing"`, `:3404 "Cheque/DD Clearing Entry"`. No VB6 Finance menu leaf targets it (VB6 opened it from the voucher flow) |
| 7 | `FaCurrBalUpdate` | **FULL (was WRONG_TARGET, fixed)** | `fvu.open_currbal_update` `ui/fa_voucher_ui.py:447` | `ui/shell.py:2640 "Current Balance Updation"` ✅ |
| 8 | `FaTaxVoucher` | **FULL** | `expense_ui.open_expense` `ui/expense_ui.py:314` | VB6 caption is `"Expense Voucher"` (`implemented/.../FaTaxVoucher.frm:3`). `ui/shell.py:2552 "&Expense Voucher"` + `:2632 "Expense Voucher"` ✅ (target is a dedicated expense form) |
| 9 | `FaReports` | **FULL** | `FaReportsWindow` `ui/partial_forms_ui.py:10`, `open_fa_reports` `:1201` | `ui/shell.py:3401 "Finance Reports"` |
| 10 | `FaRepView` | **FULL** | `ReportViewer` `ui/fa_voucher_ui.py:249` | generic viewer used by `_open_report()` |
| 11 | `rFaRepView` | **PARTIAL** | — | only a report-*template* name in `core/reports.py` (VAT/Tax report family). No dedicated viewer form; reuses `FaRepView` |
| 12 | `FaFind` | **FULL** | `FAFindDialog` `ui/block_master_ui.py:121`, `open_fa_find` | `ui/shell.py:3317 "FA Find"` (guarded `else _coming_soon` if module missing) |
| 13 | `FaGlobeNarr` | **FULL** | `pfui.open_global_narration` `ui/partial_forms_ui.py:1189`; picker `fvu.open_global_narration_picker` `ui/fa_voucher_ui.py:435` | `ui/shell.py:3389 "Global Narration"` |
| 14 | `FaNarrMast` | **FULL** | `p2.open_narr` (`core/narr.py`) | `ui/shell.py:2285 "Narration Master"` |
| 15 | `FaSubGroup` | **FULL** | `LedgerAccountsWindow` `ui/partial_forms_ui.py:6`; also `finance_masters_ui.open_ledger`; ops `core/fa_masters_ops.py:195` | `ui/shell.py:3397 "Ledger Accounts Entry"` |
| 16 | `FaVtype` | **FULL** | `voucher_environment_ui.gs.open_vouchertype`, `core/voucher_type.py` | `ui/shell.py:2413 "Voucher Environment"`, `:2414 "Voucher Type"` |
| 17 | `FaCityMast` | **FULL** | `front_office_setup_ui.open_city` | `ui/shell.py:2260 "City Master"` (VB6 ref `front_office_setup_ui.py:459`) |
| 18 | `FaCountryMast` | **FULL** | `p2.open_country` | `ui/shell.py:2261 "Country Master"` |
| 19 | `FaStateMast` | **FULL** | `p2.open_state` | `ui/shell.py:2262 "State Master"` |
| 20 | `FaTDSCat` | **FULL (dual impl)** | `scheme_tds_ui.open_tdscat` (`core/tdscat.py`); *and* `pfui.TdsCategoryWindow` `ui/partial_forms_ui.py:4` | `ui/shell.py:2616 "T.D.S. Category"` (second copy at `:3422 "T.D.S.Category Entry"` — two divergent UIs for one form) |
| 21 | `FaTDSCertificate` | **PARTIAL** | `core/tdscerti.list_all()` list-view only | `ui/shell.py:2627` → `_open_fv_list(...)` (read-only list). Alias `"TDS Certificate"` → `fasub_ui.open_fa_tds_cert` `:339`. No confirmed *entry* form |
| 22 | `FaTDSChal` | **FULL (was WRONG_TARGET, fixed)** | `fasub_ui.open_fa_tds_challan` `ui/fa_sub_forms_ui.py:590` | `ui/shell.py:2624 "T.D.S. Challan Entry"` ✅ |
| 23 | `frmTallyExport` | **FULL** | `tally_export_ui.open_tally` (`core/tally_export.py`) | `ui/shell.py:2542 "Tally Export"`, `:2995 "Tally Export(XML)"` |
| 24 | `AccountMerg` | **FULL** | `account_merge_ui.open_account_merge` | `ui/shell.py:2538 "Account Merging"` |
| 25 | `SchemeMast` | **FULL** | `scheme_tds_ui.open_scheme` | `ui/shell.py:2611 "Scheme Master"` |

**Counts:** FULL 21 · PARTIAL 3 (`FaChqClear`, `rFaRepView`, `FaTDSCertificate`) · WRONG_TARGET 2 (`FaAdjust`, `FaAdjustDel`) · MISSING 0 · COMING_SOON 0.

---

## 3. B. WRONG_TARGET re-wire verification (the 3 + 3 found)

### The 3 documented re-wires

| VB6 form | Claim | Verdict | Evidence |
|---|---|---|---|
| `FaCurrBalUpdate` | was → `open_trial_balance` | **FIXED** | `ui/shell.py:2640` → `fvu.open_currbal_update` (`ui/fa_voucher_ui.py:447`) |
| `FaTDSChal` | was → generic list | **FIXED** | `ui/shell.py:2624` → `fasub_ui.open_fa_tds_challan` (`ui/fa_sub_forms_ui.py:590`) |
| `FaAdjustDel` | was → `open_voucher_entry` | **NOT FIXED** | `ui/shell.py:2620` still `"Delete Adjustment Entry": fvu.open_voucher_entry`. Correct `pfui.open_adjustment_delete` sits on `"Adjustment Delete"` `:3407` — a caption that is **not** in `mdi_menu.json` |

→ **2 of 3 re-wires landed. 1 of 3 (`FaAdjustDel`) is still wrong.** The same bug also hits its
twin: `:2619 "Adjustment Entry"` → `fvu.open_voucher_entry` (should be `fasub_ui.open_fa_adjust`,
currently reachable only via dead alias `"Ledger Adjustment"` `:2955`).

### Additional WRONG_TARGET / DIVERGENT leaves found (not in the original 3)

| mdi leaf | line | Opens | Should open | Class |
|---|---|---|---|---|
| `&Annexure` | `mdi_menu.json:132` | `fvu.open_trial_balance` `shell:2561` | report `Annexure` (`reports.py:2244`, `menu ["Annexure"]`) | **WRONG_TARGET** (`&`-key misses map, falls through to explicit key) |
| `A&geing Analysis for Debtors` | `mdi_menu.json:142` | `fvu.open_trial_balance` `shell:2564` | report `AgingDr` (`reports.py:1020`) | **WRONG_TARGET** |
| `Ageing A&nalysis for Creditors` | `mdi_menu.json:147` | `fvu.open_trial_balance` `shell:2565` | report `AgingRepCr` (`reports.py:1030`) | **WRONG_TARGET** |
| `Control Ledger` | `mdi_menu.json:202` | `fvu.open_trial_balance` `shell:2663` | no `Control Ledger` report key exists in `reports.py` | **WRONG_TARGET / MISSING port** |
| `Ledger` (no `&`) vs `&Ledger` | `reports.py:1270` / `:1280` | `Led` vs **`LedCred` ("Ledger - Credit Only")** | ambiguous — depends which caption shape the leaf carries | **DIVERGENT** |

All five `&Annexure`/Ageing targets are *reachable* leaves: `ui/shell.py:2547` documents `&`-keys
as the live menuHelp shape, so the wrong handler is the one most likely to fire.

---

## 4. C. Report-leaf audit — 23 Finance `&Reports` leaves

Registry check run read-only against `core/reports.py::menu_caption_map()` (327 mapped captions).

| # | mdi line | Leaf | `&`-caption key | no-`&` caption key | Verdict |
|---|---|---|---|---|---|
| 1 | 97 | `Trial Balance` | `:2650` → `fvu.open_trial_balance` | same | **FULL** (dedicated FA screen, not a report) |
| 2 | 102 | `&Day Book` | map → `DayBook` | map → `day_book` | **FULL** |
| 3 | 107 | `&Ledger` | map → `Led` | map → **`LedCred`** | **DIVERGENT** (see §3) |
| 4 | 112 | `&Interest Ledger` | `:2651` `_open_report("&Interest Ledger")` → `LedInt` `reports.py:1300` | — | **FULL** |
| 5 | 117 | `Cas&h Book` | map → `CashBook` | map → `cash_book` | **FULL** |
| 6 | 122 | `Ban&k Book` | map → `BankBook` | map → `bank_book` | **FULL** |
| 7 | 127 | `&Journal Books` | map → `JournalBook` | `:2658` → `fvu.open_journal_book` | **FULL** |
| 8 | 132 | `&Annexure` | **`shell:2561` → trial_balance** | map → `Annexure` ✅ | **WRONG_TARGET** |
| 9 | 137 | `Bank &Register` | map → `BankReg` `reports.py:1060` | `:2659` → `fvu.open_bank_register` | **FULL** |
| 10 | 142 | `A&geing Analysis for Debtors` | **`shell:2564` → trial_balance** | map → `AgingDr` ✅ | **WRONG_TARGET** |
| 11 | 147 | `Ageing A&nalysis for Creditors` | **`shell:2565` → trial_balance** | map → `AgingRepCr` ✅ | **WRONG_TARGET** |
| 12 | 152 | `Ch&eque Cleared Register` | map → `Clg` `reports.py:1113` | `:2660` `_open_fv_list("Cheque Cleared")` | **FULL** |
| 13 | 157 | `Che&que Not Cleared Register` | map → `ClgNot` `reports.py:1123` | `:2661` `_open_fv_list("Cheque Not Cleared")` | **FULL** |
| 14 | 162 | `Outstanding Report For Debtors` | map → `OutstandingReportForDebtors` | same | **FULL** |
| 15 | 167 | `Outstanding Report For Creditors` | map → `OutstandingReportForCreditors` | same | **FULL** |
| 16 | 172 | `Daily Transaction Summary` | `:2662` → `fvu.open_daily_txn_summary` | `:2662` | **FULL** |
| 17 | 177 | `Non Transaction Report` | map → `NonTrans` | same | **FULL** |
| 18 | 182 | `Reference Report` | map → `RefReport` | same | **FULL** |
| 19 | 187 | `Detailed Trial Ledger` | map → `DetailedTrial` `reports.py:1143` | same | **FULL** |
| 20 | 192 | `A/c Check List` | map → `AcCheckList` `reports.py:1000` | same | **FULL** |
| 21 | 197 | `Bill Wise Outstanding Report For Debtors` | alias `:2186` → `reports.py:2953` | map → `OutstandingReportForDebtors` | **FULL** |
| 22 | 202 | `Control Ledger` | `:2663` → trial_balance | `:2663` | **WRONG_TARGET / MISSING** |
| 23 | 207 | `Roz Namcha` | map → `RozNamcha` | same | **FULL** |

**Transaction (7)** — `&Voucher Entry` `:2549` ✅ · `Adjustment Entry` `:2619` ❌ ·
`Delete Adjustment Entry` `:2620` ❌ · `Bank Reconciliation` `:2621` ✅ ·
`T.D.S. Challan Entry` `:2624` ✅ · `T.D.S. Certificate Entry` `:2627` ⚠ list-only ·
`&Expense Voucher` `:2552` ✅ (FaTaxVoucher).

**Display (7)** — `Balanc&e Sheet` `:2555` ✅ · `&Profit And Loss Account` `:2556` ✅ ·
`&Trial Balance (Group)` `:2656` ✅ · `&Trial Ledger` `:2657` → `open_trial_balance` ⚠ (group
trial bal, not a ledger) · `Cash &Flow` `:2654` → `open_cash_bank_books` ⚠ (dedicated
cash-flow report exists: `reports.py` `cash_flow`) · `Fund Flo&w` `:2655` → `open_cash_bank_books`
⚠ (dedicated `fund_flow` exists) · `Cash And Bank Books` `:2653` ✅.

**Reports count: FULL 17 / WRONG_TARGET 4 (`&Annexure`, 2× Ageing, `Control Ledger`) /
DIVERGENT 1 (`Ledger`) / ⚠ mapped-to-closest-thing 1 (`&Trial Ledger`).**

### Stale-claim reconciliation

`comparison/VB6_vs_Python_Comparison.md:207` "Finance (2 missing)" = Reports → *Journal Books
Log*, Reports → *TDS Report*. **Both now resolved:**
`JournalBooks Log` key `reports.py:1240` + alias `:3027`; `TDSReport` key `reports.py:1253` +
alias `:3028`. Both verified `MAP` at runtime.

`_qa/HMS_exe_20260924/missing_leaves.txt` (2026-09-24 EXE snapshot) listed `A/c Check List`,
`Ageing Analysis for Debtors/Creditors`, `Annexure`, `Daily Transaction Summary`, `Detailed Trial
Ledger`, `Non Transaction Report`, `Reference Report`, `Roz Namcha`, `Bill Wise Outstanding
Report For Debtors` as missing from the registry — **all now have a map or explicit key** (the
two Ageing + Annexure keys are just wired to the wrong screen). Still open from that file:
**`## Finance` → `Voucher Serialisation`** (now wired `:3588` ✅) and the `Reports` entries
`Control Ledger` (still wrong).

---

## 5. D. Open defects in the bug registers (Finance-relevant)

| ID | File | Severity | Status | Detail |
|---|---|---|---|---|
| — | `VB6_Python_Bug_List.md:99` | **HIGH** | **OPEN** | *"FinanceModule.bas procedures not yet ported"* — action: port `FaLib.bas`, `BanqModule.bas`, `FaVoucher.bas`. No Python equivalent found under `core/`. |
| BUG-FI-01 | `MIGRATION_MASTER_BUG_REGISTER.md` | HIGH | **FIXED / VERIFIED** | Ledger Adjustment resize crash |
| BUG-UI-04 | `MIGRATION_MASTER_BUG_REGISTER.md` | MEDIUM | **VERIFIED** | Tally Export |
| BUG-MS-02 | `MIGRATION_MASTER_BUG_REGISTER.md` | MEDIUM | **VERIFIED** | `_open_fv_list` dead-click — hit `T.D.S. Certificate Entry` and both cheque registers |
| MS-013 (Tier-1) | `MAIN_SETUP_BUG_REGISTER.md:201-230`, `:684` | MEDIUM | **Tier-1 FIXED**, **Tier-2 OPEN** | 6 Account cols editable; remaining AC cols (`AdvanceAc`, `Loan_Ac`, `Salary_Ac`, `Cash_Ac`, `DummyTravelAc`, `CashCard*`, `DefCompGroup`) stay READ-ONLY by GL-integrity decision — deliberate, not a gap |
| — | `PARITY_RECONCILIATION.md` | — | n/a | no Finance-specific open items |
| — | this audit | **HIGH** | **NEW** | `FaAdjust` + `FaAdjustDel` wrong handlers (§3) |
| — | this audit | **HIGH** | **NEW** | `&Annexure`, 2× Ageing, `Control Ledger` wrong handlers (§3) |
| — | this audit | MEDIUM | **NEW** | `Ledger`/`&Ledger` divergent (`LedCred` = credit-only ledger, `reports.py:1280`) |
| — | this audit | LOW | **NEW** | `FaTDSCat` has two divergent UIs (`stu.open_tdscat` vs `pfui.TdsCategoryWindow`) |
| — | this audit | LOW | **NEW** | `FaTDSCertificate` list-only, no entry form |

---

## 6. E. Recommended fix order

1. ✅ **FIXED (PY-FIX-001)** `ui/shell.py:2622` `"Adjustment Entry"` → `fasub_ui.open_fa_adjust(w)` (guarded → `_coming_soon` if missing)
2. ✅ **FIXED (PY-FIX-001)** `ui/shell.py:2625` `"Delete Adjustment Entry"` → `fasub_ui.open_fa_adjust(w, delete=True)`
3. ✅ **FIXED (PY-FIX-001)** `ui/shell.py:2564-2566` `&`-keys re-pointed (not deleted) to `_open_report("Annexure" / "Ageing Analysis for Debtors" / "Ageing Analysis for Creditors")` → `Annexure`, `AgingDr`, `AgingRepCr`
4. ✅ **FIXED (PY-FIX-001, honesty path)** `Control Ledger` (`:2678`) → explicit not-ported `QMessageBox` (no `CONTROLLED` key in `core/reports.py`); never Trial Balance. Backlog: port report → re-wire.
5. ✅ **FIXED (PY-FIX-001)** `Ledger` (`:2661`) → `_open_report("&Ledger")` → report `Led` (VB6 `HMS.bas` L477387 `GRepFormName="Led"`); `LedCred` divergence dead.
6. ⬜ Backlog — Port `FaLib.bas` / `BanqModule.bas` / `FaVoucher.bas` (`VB6_Python_Bug_List.md:99`)

**Post-fix verification (PY-FIX-001, 2026-10-06):**
- Registry probe 9/9 PASS; no Finance target still routes to `TrialBal`.
- `ast.parse` OK; `ruff --select F821,E9,F601,F811,F841` zero new findings (byte-identical to HEAD).
- pytest: **1170 passed, 1 skipped, exit 0** (parity with HEAD). **Baseline correction: recorded 1038 was stale — actual = 1170.**
- Pre-existing, not ours: `tests/unit/test_merge_reverse_ui.py` hard-crashes (`0xC0000409`) at HEAD too — deselect when running full suite.
- Files changed: `ui/shell.py` only (+29/−8).

**Verification status: `verified` (read-only static + read-only registry runtime probe + post-fix probe).**
Not executed: live `menuHelp` DB query (remote SQL Server `Moondata2627`), UI launch test.
