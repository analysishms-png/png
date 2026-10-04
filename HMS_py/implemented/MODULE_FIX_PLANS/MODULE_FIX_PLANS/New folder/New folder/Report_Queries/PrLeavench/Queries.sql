# ==========================================================
# Module: PrLeavench
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: employee
-- --------------------------------------------
Select Joining_date from employee
    where code='<code>';

-- --------------------------------------------
-- Query 2
-- Uses table: employee
-- --------------------------------------------
Select Resign_date from employee
    where code='<code>';

-- --------------------------------------------
-- Query 3
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT SUBCODE as Code,NAME FROM SUBGROUP
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY NAME;

-- --------------------------------------------
-- Query 4
-- Uses table: Depart
-- Uses table: Desig
-- Uses table: Employee
-- --------------------------------------------
Select Employee.Code,Employee.Name,IsNull(Depart.Name,'') As Department,Desig.Name As Designation From Employee
    Left Join Depart On Depart.Code=Employee.Department
    Left Join Desig on Desig.Code=Employee.Designation
    Where (Employee.LOGSITE_CODE='<LogSiteCode>' or Employee.LOGSITE_CODE='HO')
    Order by Employee.Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Desig]  NOT present in visahl.sql dump (schema unknown)
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [employee]  NOT present in visahl.sql dump (schema unknown)
