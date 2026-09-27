# 10 HR & Payroll - Operations

## Leaves (MenuHelp)

**operations bucket = 0 classify** — Leave/Attendance/Loan/Overtime/Salary Creation rows `PayOpr` module hain lekin classify `other` me. Curated registry leaf: **`HR Payroll`** (shell:1494 → `payroll_ui.open_hr_payroll`; menuHelp me NO ROW).

Sub-leaves (registry, same opener shell:1394-1399): `Leave`, `Attendance`, `Loan/Advance`, `Over Time`, `Leave Encashment`, `Salary Creation`.

## Functioning

- `HR Payroll` → `payroll_ui.open_hr_payroll` — payroll workbench: daily attendance (`Attend`), monthly attendance string (`Attendence.Attn_Str`), salary creation (`Salary`), loans (`Loan`), leave encashment.
- `Salary Creation` (`PayOpr`, Flag=E) → `hr_payroll.insert_salary` (Mth_Year+Emp_Code row, components Basic/DA/HRA/Tax/OT).
- `Leave` → leave tracking (shared cross-module caption — also NightAuditLR row).

## Database Tables (this layer)

| Table | Rows | Role |
|---|---|---|
| `Attend` | 1323 | Daily attendance |
| `Attendence` | 0 | Monthly Attn_Str rows |
| `Salary` | 282 | Salary rows |
| `Loan` | 0 | Loan/advance |
| `SalaryLog` | 0 | Salary audit |

## Backend SQL pattern

```sql
INSERT INTO Attend (V_Prefix, V_Date, Emp_Code, FirstShift, ...)   -- hr_payroll:118
INSERT INTO Attendence (Mth_Year, Emp_Code, Attn_Str, ...)         -- :158
INSERT INTO Salary (Mth_Year, Emp_Code, Work_Day, ..., Basic, DA,  -- :37
                    HRA, Income_Tax, OT, ...)
INSERT INTO Loan (Sr_No, V_Type, V_Date, Emp_Code, Amount, ...)    -- :197
-- Salary save = delete+insert upsert (race note, BACKEND §4)
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('HR Payroll','Salary Creation','Leave');
-- HR Payroll: NO ROW (registry-only)
-- Salary Creation: MUKESH AC/SA/HR AE*P/AEDP E PayOpr
-- Leave: MUKESH AC/SA AEDP E PayOpr (+cross-module NightAuditLR row)
```
Screenshot: `screenshots/20_operations_HR_Payroll.png` (copy: `02_Operations/screenshots/`).
