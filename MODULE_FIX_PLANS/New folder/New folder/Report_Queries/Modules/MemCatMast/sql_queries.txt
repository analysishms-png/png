# ==========================================================
# Module: MemCatMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: MemCatMast
-- --------------------------------------------
SELECT MemCatMast.Code, MemCatMast.Name FROM MemCatMast
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY MemCatMast.Name;

-- --------------------------------------------
-- Query 2
-- Uses table: MEmCatMast
-- --------------------------------------------
SELECT * FROM MEmCatMast
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: MemCatMast
-- --------------------------------------------
Delete From MemCatMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: MemCatMast
-- --------------------------------------------
select * FROM MemCatMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [MEmCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemCatMast]  NOT present in visahl.sql dump (schema unknown)
