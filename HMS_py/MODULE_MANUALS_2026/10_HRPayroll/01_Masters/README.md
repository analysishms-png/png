# 10 HR & Payroll - Masters

## Leaves (MenuHelp)

**masters bucket = 4** (`_logic.json`, `PRM`): `Designation Master`, `Category  Master` (double-space VB6 key), `Holiday Master`, `Employee Master`.
Curated capture leaf: **`Employee Master`** (shell:1136 → `hr.open_employee`).

## Functioning

- `Employee Master` → `hr.open_employee` → `hr_masters.emp_*` CRUD (list/get/exists/insert/update/delete; `Employee` table).
- `Category  Master` → `hr.open_empcat` (shell:1131/:1134 double-space alias) → `empcat_*` (`EmpCategory`, Type A/B/C).
- `Designation Master` → `hr.open_desig` (shell:1137/:1218) → `desig_*` (`Desig`).
- `Holiday Master` → `hr.open_holiday` (shell:1135) → `holiday_*` (`Holiday`, Vdate+Remarks).

## Database Tables (this layer)

| Table | Rows |
|---|---|
| `Employee` | 140 |
| `Desig` | 61 |
| `EmpCategory` | 4 |
| `Holiday` | 0 |

## Backend SQL pattern

```sql
INSERT INTO Employee (Code, Name, Sex, Designation, Category, ...)  -- hr_masters:255
UPDATE Employee SET Name=?, Sex=?, Designation=?, ...                -- :271
INSERT INTO EmpCategory (Code, Name, Type, ...)                      -- :73
INSERT INTO Holiday (Vdate, Remarks, Site_Code, ...)                 -- :159
INSERT INTO Desig (...)                                              -- desig_insert
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Employee Master','Category  Master','Holiday Master');
-- SA AEDP E PRM (+htw_system, Saurav/Dinesh) — PRM bucket
```
Screenshot: `screenshots/10_masters_Employee_Master.png` (copy: `01_Masters/screenshots/`).
