import re, os

# ============================================================
# FIX: Replace SELECT * with column-specific SELECTs
# ============================================================

# Map of files to their column definitions (from _map functions)
# hr_payroll.py - Salary columns
salary_cols = "Mth_Year, Emp_Code, Work_Day, CL, Leave, Sunday, Holiday, Absent, Basic, DA, HRA, Income_Tax, Other_Allow, Other_Deduc, Conveyance, Medical, LTA, PF, EPF, ESI, Loan, Advance, Net_Salary, Loan_Bal, OverTime, OverTimeAmt, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code"
attendance_cols = "Mth_Year, Emp_Code, Attn_Str, Site_Code, LogSite_Code"

files_to_fix = {}

# hr_payroll.py
fpath = 'core/hr_payroll.py'
with open(fpath) as f:
    content = f.read()

# Fix list_salary: SELECT TOP N * FROM Salary -> SELECT TOP N <cols> FROM Salary
content = content.replace(
    'f"SELECT TOP {int(limit)} * FROM Salary WHERE Site_Code = ? ORDER BY Emp_Code DESC"',
    'f"SELECT TOP {int(limit)} ' + salary_cols + ' FROM Salary WHERE Site_Code = ? ORDER BY Emp_Code DESC"'
)
# Fix get_salary: SELECT * FROM Salary -> SELECT <cols> FROM Salary
content = content.replace(
    '"SELECT * FROM Salary WHERE Mth_Year = ? AND Emp_Code = ?"',
    '"SELECT ' + salary_cols + ' FROM Salary WHERE Mth_Year = ? AND Emp_Code = ?"'
)
# Fix list_attendence
content = content.replace(
    'f"SELECT TOP {int(limit)} * FROM Attendence WHERE Site_Code = ? ORDER BY Emp_Code DESC"',
    'f"SELECT TOP {int(limit)} ' + attendance_cols + ' FROM Attendence WHERE Site_Code = ? ORDER BY Emp_Code DESC"'
)
# Fix get_attendence
content = content.replace(
    '"SELECT * FROM Attendence WHERE Mth_Year = ? AND Emp_Code = ?"',
    '"SELECT ' + attendance_cols + ' FROM Attendence WHERE Mth_Year = ? AND Emp_Code = ?"'
)
# Fix search_attendence
content = content.replace(
    'f"SELECT TOP {int(limit)} * FROM Attendence WHERE Site_Code = ? AND (Emp_Code LIKE ? OR Mth_Year LIKE ?)"',
    'f"SELECT TOP {int(limit)} ' + attendance_cols + ' FROM Attendence WHERE Site_Code = ? AND (Emp_Code LIKE ? OR Mth_Year LIKE ?)"'
)

# Also fix search_salary
content = content.replace(
    'f"SELECT TOP {int(limit)} * FROM Salary WHERE Site_Code = ? AND (Emp_Code LIKE ? OR Mth_Year LIKE ?)"',
    'f"SELECT TOP {int(limit)} ' + salary_cols + ' FROM Salary WHERE Site_Code = ? AND (Emp_Code LIKE ? OR Mth_Year LIKE ?)"'
)

with open(fpath, 'w') as f:
    f.write(content)
print("Fixed hr_payroll.py SELECT * occurrences")

# Also fix the f-string in list_salary and search_salary
# These use f"SELECT TOP {int(limit)} *" which is a different pattern
# Let me check and fix
with open(fpath) as f:
    content = f.read()

# Fix any remaining SELECT * with f-string pattern
content = content.replace(
    'f"SELECT TOP {int(limit)} * FROM Salary',
    'f"SELECT TOP {int(limit)} ' + salary_cols + ' FROM Salary'
)
content = content.replace(
    'f"SELECT TOP {int(limit)} * FROM Attendence',
    'f"SELECT TOP {int(limit)} ' + attendance_cols + ' FROM Attendence'
)

with open(fpath, 'w') as f:
    f.write(content)

# Count remaining SELECT *
remaining = content.count('SELECT *')
print(f"hr_payroll.py remaining SELECT *: {remaining}")

print("\nDone fixing SELECT *")
