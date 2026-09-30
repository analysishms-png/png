# 03_Finance — Notes, gaps, bugs

## A. Undocumented / not present in this repo

1. `Proc_165_1_1EF3904` (the routine holding **all** `Proc_165_0` menu registrations, EXTRAS.text L475818)
   has **no textual caller** — `rg -F 'Proc_165_1_1EF3904' EXTRAS.text` returns only the definition line.
   It is guarded by `If (Len(MemVar_1F81228) = 1) Then Exit Sub` and keyed on
   `Ucase(Mid(MemVar_1F81228,1,1))` (L475830-region).
   `Runtime invocation of Proc_165_1 → [UNKNOWN]`; it is plausibly a seed/bootstrap that was later
   superseded by the DB-driven menu. `[UNKNOWN]`
2. Physical `.rpt` for `DayBook`, `RozNamcha`, `Led`, `LedInt`, `CashBook`, `BankBook`, `JournalBook`,
   `Annexure`, `BankReg`, `Clg`, `ClgNot`, `DetailedTrial`, `DailySumm`, `NonTrans`, `AcCheckList`,
   `CONTROLLED`, `LEDTRIAL`, `CASHFLOW`, `FUNDFLOW`: `[UNKNOWN] — no matching file in Reports\`.
3. `FaTAGADADR.RPT` and `FaJRNLLog.RPT` are referenced from source (L569595, L566584) but **absent**
   from `Reports\`. Print will raise a Crystal file-not-found at run time. `[VERIFIED-VB6]` `[VERIFIED-SQL]`
4. `FaGrEnt` (group-account entry, L555999–L557753), `FaNarrMast`, `FaRepView`, `FaGlobeNarr`,
   `FaAdjustDel` SQL detail: `[UNKNOWN]` — only fragments extracted (see `sql/sql_notes.md` §7).
5. `Proc_165_5_1042728` (L480880) and `Proc_165_6_1342C90` (L480907) bodies are unreconstructed:
   `[UNKNOWN]`.
6. `PrintFormats` / `PrinterSetup` selection logic for FA reports: `[UNKNOWN]`.
7. `Form_Load` branch list of `FaReports` after L559289 (parameter button / search handlers): `[UNKNOWN]`.

## B. Behaviour worth flagging (candidate bugs / quirks)

1. **`Roz Namcha` is a dead menu row.** `menuHelp` has `Roz Namcha|11|13|33|0|R`, but the dispatcher
   branch that builds `GRepFormName="RozNamcha"` is keyed on **`"Day  Book"` (two spaces)** at L477552.
   `If (var_188 = "Roz Namcha")` does not exist anywhere in EXTRAS.text. Click → silent no-op
   (`On Error Resume Next`, L477022). `[VERIFIED-VB6]` `[VERIFIED-SQL]`
2. **`TDS Report` is a dead menu row.** `menuHelp` has `TDS Report|11|13|33|0|R`; no
   `If (var_188 = "TDS Report")` branch exists. `[VERIFIED-VB6]` `[VERIFIED-SQL]`
3. **`Adjustment Entry` / `Delete Adjustment Entry` are orphan screens.** Registered (L475891/L475893),
   have live branches (L477257/L477264 → `FaAdjust`/`FaAdjustDel`), but **no `menuHelp` row at all** —
   unreachable from the runtime menu in this database. `[VERIFIED-VB6]` `[VERIFIED-SQL]`
4. **OPT3 collisions in `menuHelp`.** `Control Ledger|11|13|32` collides with `Journal Books Log|11|13|32`;
   `Roz Namcha|11|13|33` collides with `TDS Report|11|13|33`; `Cash Flow|11|13|15` with `Cash Book|11|13|15`;
   `Fund Flow|11|13|16` with `Bank Book|11|13|16`. Not fatal — dispatch uses `MenuHelp.Code`, not `OPT3` —
   but any rebuild that keys on `OPT3` will lose rows. `[VERIFIED-SQL]`
5. **Caption double registration.** `Day Book` (L475905 → `DayBook`) and `Day  Book` (L475935 →
   `RozNamcha`) differ by one space and open **different** reports. `[VERIFIED-VB6]`
6. **Hard-coded writable path.** Every dispatch appends the breadcrumb to `C:\moduleFILE.TXT`
   (`Open "C:\moduleFILE.TXT" For Append As 1` L477034, `Close 1` L477035-region) — drive-root,
   no directory creation, no rotation. `[VERIFIED-VB6]`
7. **`On Error Resume Next` at dispatcher start** (L477022) and inside `Proc_165_3_EEA710` (L480842):
   a missing `menuHelp` row yields an empty key → click does nothing with no user feedback. `[VERIFIED-VB6]`
8. **Two menu surfaces disagree** (11 rows only in `menuHelp`, 5 only in code) — see `reports/reports.md` §1c
   and `screens/screens.md` §4. `[VERIFIED-SQL]` `[VERIFIED-VB6]`
9. **Year-end operations are stubs.** `Year End Updation (Finance)` (L478170–L478172) and
   `Opening Balance Updation` (L478167–L478168) set no state — the branch body is empty.
   `Year End Updation` under Main Setup (L477222) is the real one. `[VERIFIED-VB6]`
10. **`FaAdjustDel` is registered and dispatched (L477264) but `ledgerAdj` has no reverse-posting guard**
    visible in the extracted SQL — deleting a posted adjustment may leave `Curr_Bal` stale until
    `FaCurrBalUpdate` is run. `[INFERRED]`

## C. Data observations

- `Ledger` 40818 rows / `LedgerM` 3158 rows → ~13 lines per voucher. `[VERIFIED-SQL]`
- `LedgerLog` 19219 / `LedgerMLog` 2386 → a large share of vouchers has been edited at least once
  (every edit/delete copies rows into the *Log tables, L535548–L535553). `[VERIFIED-SQL]` `[INFERRED]`
- Empty while referenced by live SQL: `ledgerRef` 0, `TDSChal` 0, `TDSChal1` 0, `TDSCerti` 0,
  `Budget` 0, `DATELOCK` 0, `Site` 0, `LedgerMerge`/`LedgerMMerge` 0,
  `Voucher_Include`/`Voucher_Exclude` 0, `CompanyProfile` 0. `[VERIFIED-SQL]`
- `FaEnviro` has exactly 1 row and `Enviro` has 1 row → effectively single-site configuration while
  most queries fan out on `LogSite_Code`. `[VERIFIED-SQL]`
- `foreign_keys.txt` is 0 bytes → **0 declared foreign keys**; referential integrity is entirely
  application-enforced in VB6. `[VERIFIED-SQL]`
- `menuHelp` has 9212 rows across 69 users; module `11` subtree for user SA is 33 rows. `[VERIFIED-SQL]`

## D. Cross-references

- Menu inventory: `19_VB6_Logic/MENU_INVENTORY.md` (hex `B` block).
- Form inventory: `19_VB6_Logic/vb6_form_inventory.md`.
- MenuHelp semantics: `19_VB6_Logic/MENUHELP_PER_USER_ANALYSIS.md` (OPT1=module, OPT2=group, OPT3=item,
  OPT4=rare, Flag E/R/N/V; `Param_Str` = AEDP privilege).
- Reports inventory: `17_Reports/REPORTS_ANALYSIS.md` (`.rpt`/`.ttx` pairs; does **not** resolve
  `GRepFormName → file`).
- Screenshots: `../../screenshots/03_Finance/` (20 PNGs).
- Neighbour module with the same dispatcher: `../02_Main_Setup/`.
