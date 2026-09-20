# ==========================================================
# Module: FrmEventMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: FunctionType
-- --------------------------------------------
SELECT Code,Name FROM FunctionType
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: FunctionType
-- --------------------------------------------
SELECT * FROM FunctionType
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: FunctionType
-- --------------------------------------------
Delete From FunctionType
    Where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: FunctionType
-- --------------------------------------------
select * FROM FunctionType
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 5
-- Uses table: FunctionType
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From FunctionType
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [FunctionType]  NOT present in visahl.sql dump (schema unknown)
