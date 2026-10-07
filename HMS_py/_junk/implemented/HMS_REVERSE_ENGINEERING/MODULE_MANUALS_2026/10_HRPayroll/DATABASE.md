# 10 - HR & Payroll - Database Workflow

Live counts (2026-09-25, `Moondata2627`, read-only):

## 1. Tables (this module)

| Table | Rows | Role |
|---|---|---|
| `Employee` | 140 | Employee master |
| `Desig` | 61 | Designation master |
| `EmpCategory` | 4 | Employee category (Type A/B/C...) |
| `Holiday` | 0 | Holiday list |
| `Attend` | 1323 | Daily attendance (shift rows) |
| `Attendence` | 0 | Monthly attendance-string rows (VB6 `Attn_Str`) |
| `Salary` | 282 | Monthly salary rows (Basic/DA/HRA/Tax...) |
| `SalaryLog` | 0 | Salary audit log |
| `Loan` | 0 | Loan/advance rows |
| (Leave encash via `hr_payroll.leave_ench_*`) | — | Leave encashment rows |

## 2. Read flows (SELECT patterns)

- Employees: `hr_masters.emp_list(top=300)` (:231), `emp_get` (:237), `emp_exists` (:243).
- Category/Designation/Holiday: `empcat_list/get/exists` (:52-63), `desig_list/get` (:323-328), `holiday_list/get/exists` (:133-146).
- Salary: `hr_payroll.list_salary/get_salary/search_salary` (:16-27).
- Attendance: `list_attendance/get_attendance` (:70-91), monthly `list_attendence/get_attendence/search_attendence` (:136-148).
- Loans: `list_loan/get_loan/search_loan` (:175-186); leave encash: `list_leave_ench/get_leave_ench` (:225-231).
- Reports (`PayRep`): Pay Slip/Payroll Register → `Salary JOIN Employee`.

## 3. Write flows (transaction diagrams)

**Employee create** (`hr_masters.emp_insert`, :247):
```
emp_exists(code) guard (:243)
  -> INSERT INTO Employee (Code, Name, Sex, Designation, Category, ...)  (:255)
COMMIT
emp_update -> UPDATE Employee SET Name, Sex, Designation, ... (:271) ; emp_delete (:280)
```
**Category**: `INSERT INTO EmpCategory (Code, Name, Type, ...)` (:73) / `UPDATE` (:84).
**Holiday**: `INSERT INTO Holiday (Vdate, Remarks, Site_Code, ...)` (:159) / `UPDATE` (:168).
**Designation**: desig CRUD (Desig table).
**Attendance (daily)**: `insert_attendance` → `INSERT INTO Attend (V_Prefix, V_Date, Emp_Code, FirstShift, ...)` (:118).
**Attendance (monthly)**: `insert_attendence` → `INSERT INTO Attendence (Mth_Year, Emp_Code, Attn_Str, ...)` (:158).
**Salary**: `insert_salary` → `INSERT INTO Salary (Mth_Year, Emp_Code, Work_Day, CL, Leave, Sunday, Holiday, Absent, Basic, DA, HRA, Income_Tax, OT...)` (:37); delete (:43).
**Loan**: `insert_loan` → `INSERT INTO Loan (Sr_No, V_Type, V_Date, Emp_Code, Amount, Installment, ...)` (:197).

## 4. VNo / race safety

- `Loan.Sr_No` counter + `Attend.V_Prefix/V_Date` composite — select-then-consume family (KI-1 analog; low risk, single-writer HR usage).
- `Salary` PK (Mth_Year, Emp_Code) — upsert-ish delete+insert (:33/:43) — concurrent save race = duplicate or lost row (no optimistic lock observed).
- `Attendence.Attn_Str` monthly string — VB6 format locked (parity-critical).
- Multi-table none — all single-table writes (no orphan risk).

## 5. MenuHelp permission check SQL

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Employee Master','Category  Master','HR Payroll',
                          'Pay Slip','Payroll Register','Salary Creation','Leave');
-- Employee Master / Category  Master: SA AEDP E PRM (+htw_system, Saurav/Dinesh)
-- HR Payroll: NO ROW (registry-only, gap)
-- Pay Slip / Payroll Register: SA/MUKESH AC/HR ***P R PayRep
-- Salary Creation: MUKESH AC/SA/HR AE*P/AEDP E PayOpr
-- Leave: MUKESH AC/SA AEDP E PayOpr (also a NightAuditLR row — cross-module caption)
```
Layer screenshots: `01_Masters/10_masters_Employee_Master.png`, `02_Operations/20_operations_HR_Payroll.png`, `03_Reports/30_reports_Pay_Slip.png` (copies).
