# ==========================================================
# Module: FaTDSCat
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: TDSCAT
-- --------------------------------------------
Delete From TDSCAT
    Where code='<code>';

-- --------------------------------------------
-- Query 2
-- Uses table: TDSCAT
-- --------------------------------------------
select * FROM TDSCAT
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: TDSCAT
-- --------------------------------------------
SELECT * FROM TDSCAT
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: TDSCAT
-- --------------------------------------------
SELECT Code,name,TDSLimit,TDSPercentage FROM TDSCAT
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 5
-- Uses table: TDSCAT
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From TDSCAT
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [TDSCAT]  NOT present in visahl.sql dump (schema unknown)
