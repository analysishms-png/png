# ==========================================================
# Module: FrmForeignExMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ForEx
-- --------------------------------------------
Delete From ForEx
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: ForEx
-- --------------------------------------------
Select * from ForEx
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: ForEx
-- --------------------------------------------
SELECT Code,Name FROM ForEx
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: ForEx
-- --------------------------------------------
SELECT E.*,E.Code as SearchCode FROM ForEx E
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ForEx]  NOT present in visahl.sql dump (schema unknown)
