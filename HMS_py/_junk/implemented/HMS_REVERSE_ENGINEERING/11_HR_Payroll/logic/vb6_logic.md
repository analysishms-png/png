# 11_HR_Payroll — VB6 Logic

All line citations refer to `../EXTRAS.text` unless another file is named.

## 1. Menu construction

- Menu builder proc: `Public Sub Proc_165_0_14C1708(arg_C=caption, arg_10=ModuleID, arg_14=type, arg_18=group, arg_1C=icon, arg_20=index, arg_24=menuName, arg_28=flag)` — header at L475664, body to L476997. `[VERIFIED-VB6]`
- PayRoll module block: header `("PayRoll", &H14, 4, …, "PayRoll", 1)` L476846; 6 screens L476848–L476859; 9 reports L476861–L476877. `[VERIFIED-VB6]`
- Type codes observed: `4` = module header, `3` = group, `0` = screen, `1` = report, `2` = screen variant. `[INFERRED]` from the registration calls in this block.

## 2. Two dispatch paths

### Path A — static control-array click handlers (this file's module `165`, i.e. the MDI form)

| Handler | Lines | Index → form / report |
|---|---|---|
| `PayOpr_Click` | L4313–L4376 | 0 `prAttend`, 1 `PrAttend1`, 2 `PrLoan`, 3 `prOverTime`, 4 `PrLeavench`, 5 `prSalCreate` |
| `PayRep_Click` | L4425–L4524 | 0 `rRepPayRoll`/`PaySlip`, 1 `PayrollReg`, 2 `LoanReg`, 3 `LoanAdvSumm`, 4 `LoanLedg`, 5 `AttendanceRep`, 6 `GratuityReport`, 7 `PFStatement`, 8 `FormC` |
| `PRM_Click` (setup masters) | L1123–L1167 | 0 `PrDesigMast`, 1 `PrCategoryMast`, 2 `prHoliday`, 3 `PrEmployee` |

Each branch assigns the form caption from `0.Method_<handler>_Click0(...)` then `global_52.Show`. `[VERIFIED-VB6]`

### Path B — menuHelp-driven generic dispatcher

`Public Sub Proc_165_2_1E3A588(arg_C, arg_10)` L476999–L480832:

1. Reads `Enviro` (L477023) and the per-user privilege row: `SELECT Param_Str AS UPrivilege, Module_Name, OutletCode FROM menuHelp WHERE UserName=… AND CompCode=… AND Code=<arg_C>` (L477046–L477047). `[VERIFIED-VB6]`
2. Resolves the dispatch key: `var_94 = Proc_165_3_EEA710(arg_C)` (L477039) which runs
   `Select [Option] From MenuHelp Where Code=<arg_C> AND UserName=… and compcode=…` (L480844). `[VERIFIED-VB6]`
3. `var_188 = var_94` (L477055) then a long `Loop Until (var_188 = "<key>")` chain matches the key and shows the form.
4. Every selected menu item is appended to `C:\moduleFILE.TXT` (`Open … For Append` L477034, `Print 1, var_94` L480825). `[VERIFIED-VB6]` — audit breadcrumb file.

Consequence: **the dispatcher keys are `menuHelp.[Option]` values, not the menu captions registered by `Proc_165_0`**. `[VERIFIED-VB6]`

## 3. Form inventory (VB6 object start lines in `EXTRAS.text`)

| Form | Line |
|---|---|
| `prAttend` (Leave entry) | 904237 |
| `PrLeavench` | 905703 |
| `PrLoan` | 907110 |
| `prOverTime` | 909514 |
| `prSalCreate` | 910828 |
| `rRepPayRoll` (report host) | 912857 |
| `PrAttend1` | 916765 |
| `PrCategoryMast` | 917629 |
| `PrDesigMast` | 918492 |
| `PrEmployee` | 919215 |
| `prHoliday` | 922337 |

`[VERIFIED-VB6]` — marker `^'Object: <name>'`.

## 4. Decoded business rules (from form bodies)

- Attendance rows are daily and keyed `V_Prefix + V_Date + Emp_Code` (insert L905302, alternate insert L905350). `[VERIFIED-VB6]`
- Attendance status letters `P / A / L / C / E` are produced while filling the grid (L905002 region). `[VERIFIED-VB6]`
- Attendance month string is materialised into `Attendence.Attn_Str` (62 chars) at L917592. `[VERIFIED-VB6]`
- Guard rails: "Salary Already Created … You Can Not Delete Record" L904870; "… You Can Not Edit Record" L904966; the same guards exist in `prOverTime` (L910072, L910136) and in `PrAttend1` (L917527) and `PrEmployee` (L920830). `[VERIFIED-VB6]`
- Salary creation: warning `"* Salary Already created * … Do you want continue!"` L911392/L911411 (MsgBox Yes/No, `&H144`). `[VERIFIED-VB6]`
- Salary creation logs one `SalaryLog` row per employee per month (delete L911659 then insert L911661; repeated L911732/L911734). `[VERIFIED-VB6]`
- Salary creation can push `Employee.Basic` (`Update Employee Set Basic …` L911672 region) and posts to `Loan` + `Ledger` (inserts L911955, L912096; ledger narrations in the same block). `[VERIFIED-VB6]`
- Loan entry guard: `Employee.OP_Loan` / installment totals are checked before insert (aggregate `Select … from loan` around L907498–L907602). `[VERIFIED-VB6]`
- `PrEmployee` delete cascades manually: `Salary`, `Attend`, `Attendence`, `Loan`, `Leave_Ench`, `OverTime`, then `Employee` (L920298–L920304 region). `[VERIFIED-VB6]`
- `PrEmployee` date rules: joining date must be ≥ birth date (L920183), resign date ≥ joining date (L920210), duplicate ESI code rejected (L921331). `[VERIFIED-VB6]`

## 5. Permission hooks

- Dispatcher privilege read: `menuHelp.Param_Str` + `Module_Name` + `OutletCode` (L477046–L477053). `[VERIFIED-VB6]`
- Permission seeding statements reference this module: `Module_Name IN ('Purch','NightAuditMenu','Pay','mnuTelMast','mnuMSG')` with options `Leave`, `Telephone Call Entry`, `InBox` (L6603); further seeds at L6472, L6479, L6510, L6620, L6666, L6706, L6725, L6776. `[VERIFIED-VB6]`
- Enforcement beyond visibility is `user1.PARAM_STR` "AEDP" per form — see `19_VB6_Logic/MENUHELP_PER_USER_ANALYSIS.md` L35–L36. `[VERIFIED-SQL]`
