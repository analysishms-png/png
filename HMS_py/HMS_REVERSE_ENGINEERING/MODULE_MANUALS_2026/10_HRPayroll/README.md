# 10 - HR & Payroll - Module Manual

## 1. Menu path (MenuHelp)

- Sidebar root: `hr/payroll` (shell:1846).
- Module_Names: `PR`, `PRM`, `PayRoll`, `PayO`, `PayOpr`, `PayR`, `PayRep`; `master_modules` = `PRM`.
- Counts: **masters=4, operations=0, reports=9, hidden=0, other=9**.
- Masters (`PRM`): `Designation Master`, `Category  Master` (VB6 double-space exact key), `Holiday Master`, `Employee Master`.
- Operations classify=0 — `Leave`, `Loan/Advance`, `Over Time`, `Leave Encashment`, `Salary Creation` (all `PayOpr`, Flag=E) `other` bucket me; curated ops leaf = **`HR Payroll`** (registry-only, shell:1494 → `payroll_ui.open_hr_payroll`; menuHelp me NO ROW).
- Reports (9, `PayRep`): `Pay Slip`, `Payroll Register`, `Loan Register`, `Loan/Advance Summary`, `Loan/Advance Ledger`, `Attendence Report` (VB6 misspelling), `Gratuity Report`, `PF Statement`, `Form C`.
- Other (9): `HR/Payroll` (x2 header rows), `Operations`, `Leave`, `Loan/Advance`, `Over Time`, `Leave Encashment`, `Salary Creation`, `Reports`.
- **Curated leaves (fixed 2026-09-25):** masters `Employee Master` (shell:1136 `hr.open_employee`), ops `HR Payroll` (shell:1494; earlier `HR Payroll Operations` key nahi tha), reports `Pay Slip` (menu_caption_map spread shell:1512-1513 → `_open_report`).

## 2. Workflow (menu → screen → action → DB write)

| # | Leaf | Screen (opener) | Action | DB write |
|---|---|---|---|---|
| 1 | Employee Master (`PRM`) | `hr.open_employee` (shell:1136) | Employee CRUD | `hr_masters.emp_insert/update/delete` → `INSERT INTO Employee (Code, Name, Sex, Designation, Category, ...)` (hr_masters:255/:271) |
| 2 | HR Payroll (registry-only) | `payroll_ui.open_hr_payroll` (shell:1494) | Payroll workbench (Leave/Attendance/Loan/Overtime/Salary Creation hub) | per sub-flow: `INSERT Salary` (hr_payroll:37), `INSERT Attend` (:118), `INSERT Attendence` (:158), `INSERT Loan` (:197) |
| 3 | Pay Slip (`PayRep`, Flag=R) | `_open_report("Pay Slip")` (reports.py:1370) | Report | read-only `Salary`/`Employee` |

Sub-flows (other bucket, same `payroll_ui` opener shell:1394-1399): `Leave`, `Attendance`, `Loan/Advance`, `Over Time`, `Leave Encashment`, `Salary Creation`.

## 3. Layers snapshot

| Layer | Count | registry hits |
|---|---|---|
| masters | 4 | Employee Master |
| operations | 0 classify (registry-only `HR Payroll`) | HR Payroll |
| reports | 9 | Pay Slip |
| hidden | 0 | — |
| other | 9 | see §1 |

## 4. Screenshot index (manifest `failed=[]`)

| File | Layer | Leaf | Status |
|---|---|---|---|
| `screenshots/10_masters_Employee_Master.png` | masters | Employee Master | ok |
| `screenshots/20_operations_HR_Payroll.png` | operations | HR Payroll | ok |
| `screenshots/30_reports_Pay_Slip.png` | reports | Pay Slip | ok |

## 5. Test status

- `TEST_RESULTS.md`: L1+L2b **fails=0**.
- Detail: [`TEST_RESULTS.md`](TEST_RESULTS.md); KI list: `00_Instructions/TEST_PLAN_MASTER.md`.

## 6. Related docs

- Database: [`DATABASE.md`](DATABASE.md) · Frontend: [`FRONTEND.md`](FRONTEND.md) · Backend: [`BACKEND.md`](BACKEND.md) · Tests: [`TEST_PLAN.md`](TEST_PLAN.md)
- Layers: [`01_Masters/README.md`](01_Masters/README.md) · [`02_Operations/README.md`](02_Operations/README.md) · [`03_Reports/README.md`](03_Reports/README.md)
- SOP: `00_Instructions/MANUAL_TEMPLATE.md` · capture: `00_Instructions/CAPTURE_GUIDE.md` · global map: `00_GLOBAL/MenuHelp_Module_Map.md`
