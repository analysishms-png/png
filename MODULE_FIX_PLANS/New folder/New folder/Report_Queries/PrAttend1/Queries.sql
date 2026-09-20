# ==========================================================
# Module: PrAttend1
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: employee
-- --------------------------------------------
SELECT Resign_Date from employee
    where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: employee
-- --------------------------------------------
SELECT Joining_Date from employee
    where Code='<Code>';

-- --------------------------------------------
-- Query 3
-- Uses table: DESIG
-- Uses table: EMPLOYEE
-- --------------------------------------------
SELECT EMPLOYEE.*,DESIG.Name as Desg_Desc FROM EMPLOYEE
    LEFT JOIN DESIG ON DESIG.Code=EMPLOYEE.Designation
    where EMployee.site_code='<site_code>'
    ORDER BY DESIG.Name,Employee.NAME;

-- --------------------------------------------
-- Query 4
-- Uses table: ATTENDENCE
-- --------------------------------------------
SELECT * FROM ATTENDENCE
    WHERE EMP_CODE='<EMP_CODE>' AND MTH_YEAR='<MTH_YEAR>';

-- --------------------------------------------
-- Query 5
-- Uses table: holiday
-- --------------------------------------------
select count(*) from holiday
    where VDate=<VDate>;

-- --------------------------------------------
-- Query 6
-- Uses table: holiday
-- --------------------------------------------
select count(*) from holiday
    where VDate=Short Date;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ATTENDENCE]  NOT present in visahl.sql dump (schema unknown)
-- Table [DESIG]  NOT present in visahl.sql dump (schema unknown)
-- Table [EMPLOYEE]  NOT present in visahl.sql dump (schema unknown)
-- Table [employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [holiday]  NOT present in visahl.sql dump (schema unknown)
