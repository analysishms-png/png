# ==========================================================
# Module: frmBlockMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: BlockMast
-- --------------------------------------------
SELECT Code,Name FROM BlockMast
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: BlockMast
-- --------------------------------------------
SELECT * FROM BlockMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: BlockMast
-- --------------------------------------------
Delete From BlockMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: BlockMast
-- --------------------------------------------
select * FROM BlockMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 5
-- Uses table: BlockMast
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From BlockMast
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [BlockMast]  NOT present in visahl.sql dump (schema unknown)
