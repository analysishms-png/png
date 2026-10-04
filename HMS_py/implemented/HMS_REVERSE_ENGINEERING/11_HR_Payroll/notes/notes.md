# 11_HR_Payroll — Notes, gaps, bugs

## A. Undocumented / not present in this repo

1. `Attendance` dispatch key (→ `PrAttend1`, `EXTRAS.text` L480282) has **no** menu item in `menu_tree_raw.txt`
   (hex `14` block L454–L469) and **no** `menuHelp` row in any of the 5 extracted user trees.
   `[UNKNOWN] — searched menu_tree_raw L454-L469 and MenuHelp_*_tree.txt for "Attendance"/"Attendence Report" rows.`
   It is only reachable through `PayOpr_Click` index 1 (L4330). `[VERIFIED-VB6]`
2. Physical `.rpt` files for the 9 report keys: `[UNKNOWN] — no filename match in 17_Reports inventory`.
3. `SalaryLog` DDL / indexes: `[UNKNOWN] — row count 0 in extract; no DDL dump in 18_Database`.
4. Gratuity computation rules (only `GRepFormName = "GratuityReport"` is known, L913637):
   `[UNKNOWN] — no gratuity formula found in prSalCreate/rRepPayRoll bodies`.

## B. Behaviour worth flagging (candidate bugs / quirks)

1. **Duplicate menu item**: `14|0||Over Time Entry` appears twice (menu_tree_raw L459 and L460); registrations
   differ only by index (`9` at L476856 vs `&HA` at L476859, the latter preceded by `var_124 = "-"` at L476858).
   Both resolve to the same dispatcher key `"Over Time"`. `[VERIFIED-VB6]`
2. **Caption drift**: menu captions `Leave Entry` / `Loan/Advance Entry` / `Over Time Entry` never appear as
   dispatcher keys; the keys are `Leave` / `Loan/Advance` / `Over Time`. A rebuild that dispatches on the raw
   caption will miss these three screens. `[VERIFIED-VB6]`
3. **Menu reporting file**: every dispatch appends the resolved key to `C:\moduleFILE.TXT`
   (`Open … For Append As 1` L477034, `Print 1, var_94` L480825) — a hard-coded, writable path at drive root. `[VERIFIED-VB6]`
4. **`On Error Resume Next`** at dispatcher start (L477022) and inside `Proc_165_3_EEA710` (L480842):
   a missing `menuHelp` row silently produces an empty key → the click does nothing, with no user feedback. `[VERIFIED-VB6]`
5. **Delete guard wording** differs between forms: `prAttend` "Salary Already Created … Can Not Delete"
   (L904870) vs `prOverTime` L910072 — same rule, duplicated per form (copy-paste maintenance risk). `[VERIFIED-VB6]`
6. Pay-slip query uses `Right Join Salary` (L915020): employees with no salary row vanish from the pay slip
   rather than showing blanks. `[VERIFIED-VB6]`

## C. Data observations

- `Attend` has 1323 rows but `Attendence` (the monthly string table) has 0 → monthly roll-up either never ran
  or was cleared. `[VERIFIED-SQL]`
- `Loan`, `Leave_Ench`, `OverTime`, `SalaryLog`, `Holiday` are all 0 rows while `Salary` has 282. `[VERIFIED-SQL]`
- `foreign_keys.txt` is 0 bytes → referential integrity is entirely application-enforced. `[VERIFIED-SQL]`

## D. Cross-references

- Menu inventory: `19_VB6_Logic/MENU_INVENTORY.md` L212 (HR&Payroll section).
- Form inventory: `19_VB6_Logic/vb6_form_inventory.md` (forms listed at L13/L50/L57/L75 etc.).
- MenuHelp semantics: `19_VB6_Logic/MENUHELP_PER_USER_ANALYSIS.md` L10–L18.
- Screenshots: `../../screenshots/11_HR_Payroll/` (12 PNGs).
