# 10 - HR & Payroll - Backend Workflow

## 1. Core modules (HMS_py/core/)

| File | Role | Key APIs |
|---|---|---|
| `hr_masters.py` | HR masters CRUD | **Category:** `empcat_list/get/exists/insert/update/delete` (:52-89, `INSERT EmpCategory` :73, `UPDATE` :84). **Holiday:** `holiday_list/get/exists/insert/update/delete` (:133-174, `INSERT Holiday` :159, `UPDATE` :168). **Employee:** `emp_list/get/exists/insert/update/delete` (:231-280, `INSERT Employee` :255, `UPDATE` :271, `_map_emp` :209). **Designation:** `desig_list/get/exists` (:313+) + insert/update/delete (Desig) |
| `hr_payroll.py` | Payroll ops | **Salary:** `list/get/search/insert/delete_salary` (:16-43, `INSERT Salary` :37). **Attendance daily:** `list/get/insert/delete_attendance` (:70-127, `INSERT Attend` :118). **Attendance monthly:** `list/get/search/insert/delete_attendence` (:136-164, `INSERT Attendence` :158). **Loan:** `list/get/search/insert/delete_loan` (:175-214, `INSERT Loan` :197). **Leave encash:** `list/get_leave_ench` (:225-231) |

## 2. Write flows (see DATABASE.md §3)

- `emp_insert` (:247) exists-guard → single-table INSERT; update/delete same table (no multi-table txn).
- `insert_salary` (:33) — monthly row keyed `(Mth_Year, Emp_Code)`; components Work_Day/CL/Leave/Sunday/Holiday/Absent/Basic/DA/HRA/Income_Tax/OT...
- `insert_attendance` (:101) daily shift row; `insert_attendence` (:154) monthly `Attn_Str` string (VB6 format parity).
- `insert_loan` (:192) — `Sr_No` sequence.

## 3. Validation & error handling

- exists-guards before insert (`emp_exists`, `holiday_exists`, etc.) → duplicate key prevention.
- `_map_*` normalizers (:41/:118/:209/:9/:51/:61/:168/:218) — type coercion for legacy columns.
- cn-managed commit/rollback per call.
- UI: `payroll_ui.open_hr_payroll` fallback `_coming_soon` if import None (shell:1394-1399 guards).

## 4. Race-safety (KI-1 family)

- `Loan.Sr_No` — select-then-max+1 pattern (same family as Finance voucher prefix).
- `Attend` daily key `(V_Prefix, V_Date, Emp_Code)` — composite PK guards double-insert.
- `Salary` upsert = delete+insert (:33/:43) — concurrent save could interleave (no lock); low risk (single HR user).
- `Attendence.Attn_Str` — VB6 string format must stay byte-compatible (parity-critical, no migration allowed).
