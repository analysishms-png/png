# MODULE MANUAL — 11_HR_Payroll

Module id: builder `&H14` (decimal 20) · menu_tree hex `14` · `menuHelp.OPT1 = 20` (`HR/Payroll`).
Evidence tags: `[VERIFIED-VB6]` source, `[VERIFIED-SQL]` database extracts, `[INFERRED]`, `[UNKNOWN]`.

## 1. Purpose
Attendance, leave, loan/advance, overtime, leave-encashment and monthly salary processing for hotel staff,
plus payroll masters (designation, category, holiday, employee) and 9 payroll reports. `[VERIFIED-VB6]`

## 2. Menu Structure
- Header `PayRoll` — menu_tree_raw L454; registered `EXTRAS.text` L476846.
- 16 items total: 6 screens (L455–L460, one duplicate `Over Time Entry`), 9 reports (L461–L469).
- `menuHelp` root `HR/Payroll|20|0|0|0|N` (MenuHelp_SA_tree.txt L321) + 16 child rows for user SA. `[VERIFIED-SQL]`
- Setup items live under menu module `C` → `PayRoll Setup` (menu_tree_raw L124–L128).

## 3. Screens
`prAttend`, `PrLoan`, `prSalCreate`, `PrLeavench`, `prOverTime` (+ `PrAttend1` without a menu item).
Full index/key tables in `screens/screens.md`. Two dispatch paths (control arrays vs `menuHelp.[Option]`).

## 4. Masters
| Master | Form | Table (rows) |
|---|---|---|
| Designation | `PrDesigMast` L918492 | `Desig` (61) |
| Category | `PrCategoryMast` L917629 | `EmpCategory` (4) |
| Holiday | `prHoliday` L922337 | `Holiday` (0) |
| Employee | `PrEmployee` L919215 | `Employee` (140) |

## 5. Transactions
- Daily attendance → `Attend` (insert L905302) + monthly `Attendence.Attn_Str` (L917592).
- Loan/advance vouchers → `Loan` (L908843, L911955/L912096) with `V_Type` ∈ {LO, LR, LR1, ADE, AR1, AR2}. `[VERIFIED-VB6]`
- Overtime → `OverTime` (L910442).
- Leave encashment → `Leave_Ench` (L906606) + ledger posting.
- Salary run → `Salary` (L912272), `SalaryLog` (L911659/L911661), ledger rows, `Employee.Basic` update (L911672). `[VERIFIED-VB6]`

## 6. Operations
Menu type `0` entry screens only; no separate bulk/period-close operation is registered under hex `14`. `[VERIFIED-VB6]`
Salary re-creation is allowed only after an explicit Yes/No prompt (L911411).

## 7. Reports
9 reports, all hosted by `rRepPayRoll` (L912857): AttendanceRep, PaySlip, LoanReg, LoanAdvSumm, PayrollReg,
PFStatement, LoanLedg, FormC, GratuityReport — see `reports/reports.md`.
`.rpt` file mapping: `[UNKNOWN] — no keyword match in 17_Reports inventory`.

## 8. Permissions
- `menuHelp.Param_Str` (AEDP) + `Module_Name` + `OutletCode` read at dispatch (L477046).
- Seeds mention module `Pay` with option `Leave` (L6603).
- Visibility = `menuHelp` rows; enforcement = `user1.PARAM_STR` (MENUHELP_PER_USER_ANALYSIS.md L35–L36). `[VERIFIED-SQL]`

## 9. Business Rules
- Attendance status letters `P/A/L/C/E` (L905002 region). `[VERIFIED-VB6]`
- Salary already created → edit/delete blocked (L904870, L904966, L910072, L910136, L917527, L920830, L922411).
- Salary re-run prompt (L911411); `SalaryLog` refresh per employee/month (L911659–L911661).
- Employee validation: joining ≥ birth (L920183), resign ≥ joining (L920210), unique ESI (L921331).
- Employee delete cascades to Salary/Attend/Attendence/Loan/Leave_Ench/OverTime (L920298–L920304).

## 10. VB6 Logic
`Proc_165_0_14C1708` (menu build, L475664), `Proc_165_2_1E3A588` (dispatch, L476999),
`Proc_165_3_EEA710` (key lookup, L480834), handlers `PayOpr_Click` L4313, `PayRep_Click` L4425, `PRM_Click` L1123.
Detail in `logic/vb6_logic.md`.

## 11. SQL Logic
All statements extracted, never executed: `sql/queries.sql`.
Report SQL: pay slip L915020, PF L915101, attendance L915181, loan ledger L915261–L915397.

## 12. Tables
`Employee` 140 · `EmpCategory` 4 · `Desig` 61 · `Depart` 73 · `Holiday` 0 · `Attend` 1323 · `Attendence` 0 ·
`Salary` 282 · `SalaryLog` 0 · `Loan` 0 · `Leave_Ench` 0 · `OverTime` 0 · cross-module `Ledger` 40818,
`GoDownMast`, `menuHelp` 9212. 0 foreign keys (`foreign_keys.txt` empty). `[VERIFIED-SQL]`

## 13. Fields
Key columns documented in `sql/sql_notes.md` §2 (Employee 66 cols incl. PF/ESI/openings; Salary 33 cols;
Attend key = `V_Prefix+V_Date+Emp_Code`; OverTime = `EmpCode+OTDate`).

## 14. Workflow
See `flowcharts/workflow.mmd` (menu → dispatch → form → table → report).

## 15. Screenshots
12 PNGs in `../../screenshots/11_HR_Payroll/` — pointer only (`screenshots/README.md`).

## 16. Test Cases
1. Open `Leave Entry` → expect `prAttend` caption set from menu path (L480279). `[VERIFIED-VB6]`
2. Save attendance for a date already marked in `Attend` → duplicate/reject path (L905302 block).
3. Create salary for a month twice → prompt `* Salary Already created *` appears (L911411); No cancels.
4. Delete a `Salary`-covered attendance row → blocked message (L904870).
5. Run `Pay Slip` with `GRepFormName=PaySlip` → dataset L915020 joins; employee with no `Salary` row absent (L915020 `Right Join`).
6. Employee with `Joining_Date > Birth_Date` → rejected (L920183).
7. Menu click for a user with no `menuHelp` row → silent no-op (L477022 `On Error Resume Next`). Expected legacy behaviour.

## 17. Known Issues
- Duplicate `Over Time Entry` menu rows (L459/L460).
- Caption ↔ dispatcher key drift (`Leave Entry` vs `Leave` etc.).
- `Attendance` screen unreachable from any registered menu row.
- Hard-coded log file `C:\moduleFILE.TXT` (L477034/L480825).
- `Attendence` table empty while `Attend` holds 1323 rows (roll-up unused or cleared).

## 18. Migration Notes
- Reproduce **both** menu surfaces: static control arrays (index maps above) and the `menuHelp`-driven tree,
  with `menuHelp.[Option]` as the canonical dispatch key and menu caption as display text.
- Port `V_Type` loan taxonomy (LO/LR/LR1/ADE/AR1/AR2) exactly; aggregates in reports depend on it.
- Keep the salary guard (`SalaryLog` per month+employee) as the idempotency mechanism.
- Replace the `C:\moduleFILE.TXT` breadcrumb with an audit table.
- Menu registry import is 1:1 possible from `menuHelp` (MENUHELP_PER_USER_ANALYSIS.md L41).
