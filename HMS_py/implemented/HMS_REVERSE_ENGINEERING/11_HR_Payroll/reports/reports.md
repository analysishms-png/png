# 11_HR_Payroll — Reports

9 menu items, menu type `1`, registered `EXTRAS.text` L476861–L476877, indexes `&HB`–`&H13`, menu array `Pay`.
All nine open **one host form**, `rRepPayRoll` (object starts at `EXTRAS.text` L912857), differing only by
`GRepFormName`. `[VERIFIED-VB6]`

## 1. Report catalogue

| # | Menu caption (menu_tree_raw) | menuHelp `[Option]` (SA tree) | GRepFormName | Dispatch (Proc_165_2) | PayRep index |
|---|---|---|---|---|---|
| 1 | Attendence Report (L461) | `Attendence Report` L334 | `AttendanceRep` | L480307–L480312 | 5 (L4478) |
| 2 | Pay Slip (L462) | `Pay Slip` L329 | `PaySlip` | L480313–L480318 | 0 (L4433) |
| 3 | Loan Register (L463) | `Loan Register` L331 | `LoanReg` | L480319–L480324 | 2 (L4451) |
| 4 | Loan Advance Summary (L464) | `Loan/Advance Summary` L332 | `LoanAdvSumm` | L480325–L480330 | 3 (L4460) |
| 5 | Payroll Register (L465) | `Payroll Register` L330 | `PayrollReg` | L480331–L480336 | 1 (L4442) |
| 6 | PF Statement (L466) | `PF Statement` L336 | `PFStatement` | L480337–L480342 | 7 (L4496) |
| 7 | Loan/Advance Ledger (L467) | `Loan/Advance Ledger` L333 | `LoanLedg` | L480343–L480348 | 4 (L4469) |
| 8 | Form C (L468) | `Form C` L337 | `FormC` | L480349–L480354 | 8 (L4505) |
| 9 | Gratuity Report (L469) | `Gratuity Report` L335 | `GratuityReport` | L480355–L480360 | 6 (L4487) |

Caption mismatch #4: menu_tree caption is `Loan Advance Summary` (L464) while both the dispatcher key and
`menuHelp` say `Loan/Advance Summary`. `[VERIFIED-VB6]` `[VERIFIED-SQL]`

## 2. Report runtime

- Selection inside `rRepPayRoll` is a `GRepFormName`/`global_52` chain:
  `"PaySlip"` L913414, `"PFStatement"` L913415, `"PayrollReg"` L913423, `"FormC"` L913634,
  `"GratuityReport"` L913637, combined gate L913963 (`AttendanceRep / LoanAdvSumm / PaySlip / PayrollReg / PFStatement`)
  and L913972 (`FormC`). `[VERIFIED-VB6]`
- Datasets (exact SQL): pay slip `EXTRAS.text` L915020, PF statement L915101, attendance L915181,
  loan/advance ledger aggregates L915261–L915397. Full text in `../sql/queries.sql`. `[VERIFIED-VB6]`
- All reports read `Employee ⨝ Salary ⨝ EmpCategory ⨝ Desig ⨝ GoDownMast` with `Right Join Salary` in the pay-slip query
  (L915020) — i.e. the dataset is salary-row driven, so employees without a `Salary` row are dropped from pay slip. `[VERIFIED-VB6]`
- Loan aggregates use `V_Type` buckets `LO`, `LR`/`LR1`, `ADE`, `AR1`/`AR2` plus the `Employee.OP_Loan` / `OP_Advance`
  opening balances (L915261, L915336–L915360). `[VERIFIED-VB6]`

## 3. Report parameter / print surface

- `rRepPayRoll` sets `Menu.Caption` and `CAPTION = arg_10` before `Show` (each dispatch branch, e.g. L480310).
- `BtnParam.Visible` is only forced in the Members `Member Ledger` report (L480621), not in HR reports. `[VERIFIED-VB6]`
- Report rendering path (`crw32` / print driver) and the `.rpt` backing files:
  `[UNKNOWN] — searched 17_Reports inventory for payroll/PF/gratuity/loan keywords, no filename match`.
- Preview host forms seen in this codebase for other modules: `rFomRepView`, `rPOSRepView`, `rMemberRepView`,
  `FaReports`, `rRepTelPreview`. HR deliberately uses its own `rRepPayRoll`. `[VERIFIED-VB6]`
