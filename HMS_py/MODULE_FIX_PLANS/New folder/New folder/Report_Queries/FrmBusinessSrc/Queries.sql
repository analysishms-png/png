# ==========================================================
# Module: FrmBusinessSrc
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: BussSource
-- --------------------------------------------
SELECT Code,Name FROM BussSource
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: BussSource
-- --------------------------------------------
SELECT * FROM BussSource
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: BussSource
-- --------------------------------------------
Delete From BussSource
    Where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: BussSource
-- --------------------------------------------
select * FROM BussSource
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 5
-- Uses table: BussSource
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From BussSource
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [BussSource]  NOT present in visahl.sql dump (schema unknown)
