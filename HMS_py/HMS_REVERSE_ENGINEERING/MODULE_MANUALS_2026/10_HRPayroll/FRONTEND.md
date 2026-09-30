# 10 - HR & Payroll - Frontend Workflow

## 1. Shell wiring (shell.py)

- Sidebar root `hr/payroll` (:1846); `_on_sidebar_click` → `_safe_open` (:2194/:2284).
- UI imports: `hr` (masters, wave :1130-1141), `hr_payroll_ui as payroll_ui` (:750, None-guard :752).
- Registry keys:
  - **Masters (Wave 3, :1131-1141):** `Category Master` (:1131) + double-space alias `Category  Master` (:1134) → `hr.open_empcat`; `Holiday Master` (:1135) → `hr.open_holiday`; `Employee Master` (:1136) → `hr.open_employee`; `Designation` (:1137) → `hr.open_desig`; `Designation Master` alias (:1218).
  - **Operations:** `HR Payroll` (:1494) → `payroll_ui.open_hr_payroll`; sub-leaves `Leave` (:1394), `Attendance` (:1395), `Loan/Advance` (:1396), `Over Time` (:1397), `Leave Encashment` (:1398), `Salary Creation` (:1399) → same `payroll_ui.open_hr_payroll`.
  - **Reports:** `Pay Slip`/`Payroll Register` etc. via `menu_caption_map` dict-spread `**({cap: _open_report(cap) ...})` (:1512-1513) → `_open_report` (:907) resolves `_rpmod.menu_caption_map().get(cap)` (reports.py:1361-1372).
- Caption note: `Category  Master` (double space) — VB6 exact-key alias (:1134); `Attendence Report` misspelling preserved (reports bucket).

## 2. Forms

| Leaf | Opener | Notes |
|---|---|---|
| Employee Master | `hr.open_employee` (shell:1136) | Employee CRUD window → emp_* core |
| HR Payroll | `payroll_ui.open_hr_payroll` (shell:1494) | Payroll hub (Leave/Attendance/Loan/OT/Salary Creation entry points :1394-1399 all same opener) |
| Pay Slip | `_open_report("Pay Slip")` (spread :1512) | Reports-engine read-only window (reports.py:1370 `menu: ["Pay Slip"]`) |

## 3. Capture screenshot mapping (manifest `failed=[]`)

```
10_masters_Employee_Master.png   hr.open_employee window
20_operations_HR_Payroll.png     payroll_ui.open_hr_payroll hub
30_reports_Pay_Slip.png          _open_report("Pay Slip") engine window
```
Layer dirs `01_Masters/`, `02_Operations/`, `03_Reports/` = copies.
