# ==========================================================
# Module: FrmLocationMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: LocationMast
-- --------------------------------------------
Delete From LocationMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: LocationMast
-- --------------------------------------------
select * FROM LocationMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: LocationMast
-- --------------------------------------------
SELECT Code,Name FROM LocationMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: LocationMast
-- --------------------------------------------
SELECT * FROM LocationMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    ORDER BY Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [LocationMast]  NOT present in visahl.sql dump (schema unknown)
