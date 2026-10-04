# ==========================================================
# Module: prOverTime
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: employee
-- --------------------------------------------
Select Max(Joining_date) from employee
    where code='<code>';

-- --------------------------------------------
-- Query 2
-- Uses table: employee
-- --------------------------------------------
Select Resign_date from employee
    where code='<code>';

-- --------------------------------------------
-- Query 3
-- Uses table: Employee
-- Uses table: OverTime
-- --------------------------------------------
SELECT (EmpCode+' '+convert(Varchar(12),OTDate,103)) as SearchCode,Employee.name,Overtime.EmpCode,Overtime.OTDate,OverTime.OTime,OverTime.U_name,OverTime.OTRate,OverTime.Amount,OverTime.Remark FROM OverTime
    left join Employee on Employee.Code=OverTime.EmpCode
    ORDER BY OTDate;

-- --------------------------------------------
-- Query 4
-- Uses table: Depart
-- Uses table: Desig
-- Uses table: Employee
-- --------------------------------------------
Select Employee.Code,Employee.Name,IsNull(Depart.Name,'') As Department,Desig.Name As Designation,OTRate From Employee
    Left Join Depart On Depart.Code=Employee.Department
    Left Join Desig on Desig.Code=Employee.Designation
    Order by Employee.Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Desig]  NOT present in visahl.sql dump (schema unknown)
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [OverTime]  NOT present in visahl.sql dump (schema unknown)
-- Table [employee]  NOT present in visahl.sql dump (schema unknown)
