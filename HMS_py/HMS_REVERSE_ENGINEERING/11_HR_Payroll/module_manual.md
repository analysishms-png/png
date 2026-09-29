# HR & PAYROLL MODULE

## 1. Purpose

HR & Payroll module hotel ke employee management, attendance, leave, loan/advance, salary processing, aur payroll reporting ke liye hai. Employee master se lekar pay slip generation tak ka complete HR flow is module me hai.

**Evidence:** [VERIFIED-VB6] — 16 menu items, single group (all TOP-level).

## 2. Menu Structure (from MENU_INVENTORY.md)

```
HR & Payroll
├── Leave Entry
├── Loan/Advance Entry
├── Salary Creation
├── Leave Encashment
├── Over Time Entry
├── Over Time Entry (duplicate)
├── Attendence Report
├── Pay Slip
├── Loan Register
├── Loan Advance Summary
├── Payroll Register
├── PF Statement
├── Loan/Advance Ledger
├── Form C
├── Gratuity Report
└── PayRoll
```

## 3. Screens (from vb6_form_inventory.md)

### HR Forms (Pr*, pr*, sal*)
- **PrEmployee** — Employee master
- **PrAttend1** — Attendance entry
- **prAttend** — Attendance report
- **prHoliday** — Holiday master
- **prOverTime** — Over time entry
- **PrCategoryMast** — Category master
- **PrDesigMast** — Designation master
- **PrLeavench** — Leave encashment
- **PrLoan** — Loan/Advance entry
- **prSalCreate** — Salary creation
- **rRepPayRoll** — Payroll report
- **Empl_Detl** — Employee details report

## 4. Masters

| Master | Table | Evidence |
|--------|-------|----------|
| Employee | Employee | [VERIFIED-VB6] |
| Designation | PrDesigMast | [VERIFIED-VB6] |
| Category | PrCategoryMast | [VERIFIED-VB6] |
| Holiday | prHoliday | [VERIFIED-VB6] |

## 5. Transactions

| Transaction | Form | Table | Evidence |
|-------------|------|-------|----------|
| Attendance Entry | PrAttend1 | — | [VERIFIED-VB6] |
| Leave Entry | — | — | [VERIFIED-VB6] |
| Leave Encashment | PrLeavench | — | [VERIFIED-VB6] |
| Loan/Advance Entry | PrLoan | LOAN | [VERIFIED-VB6] |
| Over Time Entry | prOverTime | — | [VERIFIED-VB6] |
| Salary Creation | prSalCreate | — | [VERIFIED-VB6] |

## 6. Operations

- **Employee Management** — Employee master with personal/professional details
- **Attendance** — Daily attendance marking
- **Leave Management** — Leave application, approval, encashment
- **Loan/Advance** — Employee loan and advance tracking
- **Over Time** — Over time entry and calculation
- **Salary Processing** — Monthly salary creation and pay slip generation
- **PF Management** — Provident Fund statements
- **Gratuity** — Gratuity calculation and reporting

## 7. Reports

| Report | Form | Evidence |
|--------|------|----------|
| Attendence Report | prAttend | [VERIFIED-VB6] |
| Pay Slip | rRepPayRoll | [VERIFIED-VB6] |
| Loan Register | rRepPayRoll | [VERIFIED-VB6] |
| Loan Advance Summary | rRepPayRoll | [VERIFIED-VB6] |
| Payroll Register | rRepPayRoll | [VERIFIED-VB6] |
| PF Statement | rRepPayRoll | [VERIFIED-VB6] |
| Loan/Advance Ledger | rRepPayRoll | [VERIFIED-VB6] |
| Form C | rRepPayRoll | [VERIFIED-VB6] |
| Gratuity Report | rRepPayRoll | [VERIFIED-VB6] |
| Empl_Detl | rRepPayRoll | [VERIFIED-VB6] |

## 8. Permissions

- HR & Payroll module access UserPermission form se control hota hai [VERIFIED-VB6]
- Per-user menu hierarchy MenuHelp table me OPT1..OPT4 columns [VERIFIED-SQL]

## 9. Business Rules

1. **Employee table** — Employee master with personal/professional details [VERIFIED-VB6]
2. **Category** — PrCategoryMast for employee classification [VERIFIED-VB6]
3. **Designation** — PrDesigMast for employee designation [VERIFIED-VB6]
4. **Holiday** — prHoliday for company holidays [VERIFIED-VB6]
5. **Loan** — LOAN table for employee loans (47 refs) [VERIFIED-VB6]
6. **Audit columns** — Har transaction me U_Name, U_EntDt, U_AE ('A'/'E'/'D') [VERIFIED-VB6]
7. **Multi-site** — LogSite_Code filters every query [VERIFIED-VB6]
8. **Empl_Detl** — Employee details report with .ttx field map [VERIFIED-VB6]

## 10. VB6 Logic (from EXTRAS.text)

### Employee Master (PrEmployee)
```vb
' Employee master form
' Key fields: Code, Name, Category, Designation, DOB, DOJ, Address, Phone
' Tables: Employee, PrCategoryMast, PrDesigMast
```

### Attendance Entry (PrAttend1)
```vb
' Daily attendance entry
' Key fields: Employee, Date, Status (Present/Absent/Leave/Half-day)
```

### Leave Encashment (PrLeavench)
```vb
' Leave encashment calculation
' Key fields: Employee, Leave Days, Encash Amount
```

### Loan/Advance (PrLoan)
```vb
' Employee loan/advance entry
' Key fields: Employee, Loan Amount, Installment, Balance
' Table: LOAN
```

### Over Time (prOverTime)
```vb
' Over time entry
' Key fields: Employee, Date, Hours, Rate, Amount
```

### Salary Creation (prSalCreate)
```vb
' Monthly salary creation
' Key fields: Employee, Month, Basic, DA, HRA, Deductions, Net Pay
```

### Payroll Report (rRepPayRoll)
```vb
' Payroll report viewer
' Uses Empl_Detl.ttx field map
```

## 11. SQL Logic (from SQL_TRACKING_RESULTS.md)

### Employee Query
```sql
-- Employee: Code, Name, Category, Designation, DOB, DOJ
-- PrCategoryMast: Category master
-- PrDesigMast: Designation master
-- prHoliday: Holiday master
```

### Loan Query
```sql
-- LOAN: Employee, Loan Amount, Installment, Balance
```

## 12. Tables (from DATABASE_INVENTORY.md)

| Table | Usage Count | Purpose |
|-------|-------------|---------|
| Employee | 112 | Employee master |
| LOAN | 47 | Employee loans |
| MemberFamily | 70 | Member family (also used for employee family) |

## 13. Fields

### Employee
- Code, Name, Category, Designation, DOB, DOJ
- Address, Phone, Email, PAN, PF Number
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### LOAN
- Employee, Loan Amount, Installment, Balance
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### PrCategoryMast
- Code, Name, Description
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### PrDesigMast
- Code, Name, Description
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### prHoliday
- Date, Description
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

## 14. Workflow

```
Employee Master (PrEmployee)
  ├── Category (PrCategoryMast)
  ├── Designation (PrDesigMast)
  └── Holiday (prHoliday)
       ↓
Daily Operations
  ├── Attendance Entry (PrAttend1)
  ├── Leave Entry
  ├── Over Time Entry (prOverTime)
  └── Loan/Advance Entry (PrLoan)
       ↓
Monthly Processing
  ├── Salary Creation (prSalCreate)
  ├── Leave Encashment (PrLeavench)
  └── Pay Slip Generation
       ↓
Reports
  ├── Attendence Report
  ├── Payroll Register
  ├── Pay Slip
  ├── Loan Register
  ├── PF Statement
  ├── Form C
  └── Gratuity Report
```

## 15. Screenshots

Screenshots folder me available hain:
- HR & Payroll module ke screenshots `11_HR_Payroll/screenshots/` me hain

## 16. Test Cases

| Test Case | Description | Evidence |
|-----------|-------------|----------|
| TC-HR-001 | Employee master create/edit | [VERIFIED-VB6] |
| TC-HR-002 | Attendance entry | [VERIFIED-VB6] |
| TC-HR-003 | Leave entry | [VERIFIED-VB6] |
| TC-HR-004 | Leave encashment | [VERIFIED-VB6] |
| TC-HR-005 | Loan/Advance entry | [VERIFIED-VB6] |
| TC-HR-006 | Over time entry | [VERIFIED-VB6] |
| TC-HR-007 | Salary creation | [VERIFIED-VB6] |
| TC-HR-008 | Pay slip generation | [VERIFIED-VB6] |
| TC-HR-009 | Attendence report | [VERIFIED-VB6] |
| TC-HR-010 | Payroll register | [VERIFIED-VB6] |
| TC-HR-011 | PF statement | [VERIFIED-VB6] |
| TC-HR-012 | Gratuity report | [VERIFIED-VB6] |

## 17. Known Issues

1. **Duplicate menu items:** "Over Time Entry" do baar appear hota hai [VERIFIED-VB6]
2. **No stored procedures** — Application inline ADODB SQL use karta hai [VERIFIED-VB6]
3. **Limited integration** — HR module Finance module se limited integration hai (salary posting)

## 18. Migration Notes

1. **Employee management** — Modern HRMS system me migrate karna hoga
2. **Attendance** — Biometric/RFID integration karna hoga
3. **Leave management** — Modern leave management system with workflow karna hoga
4. **Payroll** — Modern payroll processing system me upgrade karna hoga
5. **PF/Gratuity** — Statutory compliance (PF, ESI, Gratuity) me upgrade karna hoga
6. **Pay slip** — Digital pay slip generation karna hoga
