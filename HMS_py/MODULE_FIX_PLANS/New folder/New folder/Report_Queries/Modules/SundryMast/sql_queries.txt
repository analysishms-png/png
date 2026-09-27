# ==========================================================
# Module: SundryMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SundryMast
-- --------------------------------------------
SELECT Code,Name FROM SundryMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: SundryMast
-- --------------------------------------------
SELECT * FROM SundryMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: SundryMast
-- --------------------------------------------
Delete From SundryMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: SundryMast
-- --------------------------------------------
select * FROM SundryMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 5
-- Uses table: Sundrymast
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From Sundrymast
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [SundryMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Sundrymast]  NOT present in visahl.sql dump (schema unknown)
