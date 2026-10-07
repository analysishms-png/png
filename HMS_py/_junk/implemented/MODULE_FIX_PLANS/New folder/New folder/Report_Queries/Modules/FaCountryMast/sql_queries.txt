# ==========================================================
# Module: FaCountryMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Country
-- --------------------------------------------
Delete From Country
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: Country
-- --------------------------------------------
select * FROM Country
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: Country
-- --------------------------------------------
SELECT Code,Name FROM Country
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: Country
-- --------------------------------------------
SELECT * FROM Country
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 5
-- Uses table: country
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From country
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Country]  NOT present in visahl.sql dump (schema unknown)
-- Table [country]  NOT present in visahl.sql dump (schema unknown)
