# ==========================================================
# Module: prHoliday
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: salary
-- --------------------------------------------
Select count(*) from salary
    where mth_year='<mth_year>';

-- --------------------------------------------
-- Query 2
-- Uses table: attendence
-- --------------------------------------------
Select * from attendence
    where Emp_Code='<Emp_Code>' and mth_Year='<mth_Year>';

-- --------------------------------------------
-- Query 3
-- Uses table: salary
-- --------------------------------------------
Select count(*) from salary
    where mth_year='<mth_year><Param>';

-- --------------------------------------------
-- Query 4
-- Uses table: Holiday
-- --------------------------------------------
Delete From Holiday
    Where VDate=MMMyyyy;

-- --------------------------------------------
-- Query 5
-- Uses table: Holiday
-- --------------------------------------------
Select H.*, H.VDate as SearchCode From Holiday H
    Order by VDate;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Holiday]  NOT present in visahl.sql dump (schema unknown)
-- Table [attendence]  NOT present in visahl.sql dump (schema unknown)
-- Table [salary]  NOT present in visahl.sql dump (schema unknown)
