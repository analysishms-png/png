# 11_HR_Payroll — SQL notes (tables / fields / DB facts)

Database: `MOONData2627`. Sources: `18_Database/tables_rowcounts.txt`,
`18_Database/columns_dictionary.txt`, `18_Database/foreign_keys.txt` (0 bytes).
No query in this folder was executed against the live database. `[VERIFIED-SQL]`

## 1. Tables owned by this module

| Table | Rows in extract | Role |
|---|---|---|
| `Employee` | 140 | employee master (all pay elements, PF/ESI, loan opening balances) |
| `EmpCategory` | 4 | employee category (`Type` column, `columns_dictionary` line set `EmpCategory\|8`) |
| `Desig` | 61 | designation master |
| `Depart` | 73 | department master (shared) |
| `DepartPay` | 75 | department ↔ payroll mapping (shared with other modules) `[INFERRED]` |
| `Holiday` | 0 | holiday calendar (`Vdate`, `Remarks`) |
| `Attend` | 1323 | daily attendance (`V_Prefix`,`V_Date`,`Emp_Code`,`FirstShift`,`SecondShift`) |
| `Attendence` | 0 | monthly attendance string (`Mth_Year`,`Emp_Code`,`Attn_Str varchar(62)`) |
| `Salary` | 282 | one row per employee per month |
| `SalaryLog` | 0 | salary-creation audit (Basic/Increment/CreationDate) |
| `Loan` | 0 | loan + advance vouchers (`V_Type`: LO/LR/LR1/ADE/AR1/AR2) |
| `Leave_Ench` | 0 | leave encashment |
| `OverTime` | 0 | overtime register (`EmpCode`,`OTDate`,`OTime`,`OTRate`,`Amount`) |

`foreign_keys.txt` is empty → **0 declared foreign keys** in the extract for every table above. `[VERIFIED-SQL]`

## 2. Key field facts (from `columns_dictionary.txt`)

- `Employee` (66 columns): pay elements `Basic,DA,HRA,Income_Tax,Other_Allow,Other_Deduc,Conveyance,Medical,LTA,PF,ESI`;
  openings `OP_PF_Balance,OP_Loan,OP_Inst,OP_Advance,OP_Earned,OP_Casual`;
  leave counters `Tot_CL_Allow,Tot_EL_Allow,Tot_DL_Allow,Tot_VL_Allow,Curr_Earned,Curr_Casual,Curr_VL,Curr_DL`;
  flags `Pf_Yn,ESI_YN,ActiveYN,SUNDAY,Offday`; audit `U_EntDt,U_AE,U_Name,Site_Code,LogSite_Code`.
- `Salary` (33 columns): attendance block `Work_Day,CL,Leave,Sunday,Holiday,Absent`; earnings/deductions mirroring
  `Employee`; result `Net_Salary,Loan_Bal,Adv_Bal,Emp_Basic,OverTime,OverTimeAmt`.
- `Attend` composite key shape: `V_Prefix`(varchar 5) + `V_Date` + `Emp_Code` (first three columns are the PK-looking set,
  `columns_dictionary` rows `Attend|1..3`). `[INFERRED]` primary key from column order + `foreign_keys.txt` empty.
- `Loan.Sr_No` int + `V_Type` varchar(4) + `V_Date` are the first columns; `AC_Code` varchar(8) links to the ledger account.

## 3. Cross-module tables touched (not owned)

- `Ledger` (40818 rows) — salary / leave-encashment postings narrated "Being Salary Paid" style. `[VERIFIED-VB6]`
- `GoDownMast` — used as the department lookup in report SQL (`… Left Join GoDownMast G ON E.Department = G.Code`,
  `EXTRAS.text` L915020). Note: department data lives in `GoDownMast`, not only `Depart`. `[VERIFIED-VB6]`
- `menuHelp` (9212 rows) + `menuHelp1` (1234 rows) — menu/permission source. `[VERIFIED-SQL]`

## 4. Absent from the 18_Database extract

No table named `SalaryLog`… present (0 rows) but no DDL dump exists; `foreign_keys.txt`/`indexes_pks.txt` cover only
what was exported. Any column not listed above is `[UNKNOWN]` until a live `INFORMATION_SCHEMA` read is approved.

## 5. Report file cross-reference

`17_Reports/REPORTS_ANALYSIS.md` (524 `.rpt`/`.ttx` files) contains **no** file-name match for
`payroll|pay slip|PF|gratuity|attendance|loan` keywords (search performed across the report inventory). `[VERIFIED-SQL]`
Report path comes from INI key 2 (same analysis, report path section).
**Gap:** the physical `.rpt` files backing `GRepFormName` = `PaySlip/PayrollReg/LoanReg/LoanAdvSumm/LoanLedg/AttendanceRep/PFStatement/FormC/GratuityReport`
could not be tied to filenames — `[UNKNOWN] — searched 17_Reports inventory by keyword, no match`.
