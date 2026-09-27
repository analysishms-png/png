# ==========================================================
# Module: PrCategoryMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: EmpCategory
-- --------------------------------------------
SELECT Code,Name FROM EmpCategory
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: EmpCategory
-- --------------------------------------------
SELECT D.*,D.Code as SearchCode FROM EmpCategory D
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: EmpCategory
-- --------------------------------------------
SELECT * from EmpCategory
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [EmpCategory]  NOT present in visahl.sql dump (schema unknown)
