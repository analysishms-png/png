# 10 HR & Payroll - Reports

## Leaves (MenuHelp)

**reports bucket = 9** (`PayRep`): `Pay Slip`, `Payroll Register`, `Loan Register`, `Loan/Advance Summary`, `Loan/Advance Ledger`, `Attendence Report` (VB6 misspelling), `Gratuity Report`, `PF Statement`, `Form C`.
Curated capture leaf: **`Pay Slip`** (registry via `menu_caption_map` spread shell:1512-1513 → `_open_report`; reports.py:1370).

## Functioning

- `Pay Slip` → `_open_report("Pay Slip")` — reports engine window over `Salary JOIN Employee` (reports.py:1370-1372 `menu: ["Pay Slip"]`).
- `Payroll Register` → same engine (reports.py:1361-1363).
- `Form C` also hardcoded in shell spread (:1341); `Attendence Report` misspelling is exact VB6 key.
- `Loan Register`/`Loan/Advance Summary`/`Ledger` → `Loan` table (0 rows live — report empty).

## Database Tables (this layer)

| Table | Rows |
|---|---|
| `Salary` | 282 |
| `Employee` | 140 |
| `Loan` | 0 (loan reports empty) |
| `Attendence` | 0 (attendance report empty) |

Read-only.

## Backend SQL pattern

```sql
SELECT ... FROM Salary s JOIN Employee e ON s.Emp_Code = e.Code   -- payslip/register
SELECT ... FROM Loan ...                                          -- loan reports (0 rows)
SELECT ... FROM Attendence / Attend ...                            -- attendence report
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Pay Slip','Payroll Register','Form C');
-- Pay Slip / Payroll Register: SA/MUKESH AC/HR ***P R PayRep
-- Form C: ***P R (report spread)
```
Screenshot: `screenshots/30_reports_Pay_Slip.png` (copy: `03_Reports/screenshots/`).
