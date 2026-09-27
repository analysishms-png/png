# ==========================================================
# Module: frmSessionMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SESSIONMAST
-- --------------------------------------------
Delete From SESSIONMAST
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: SESSIONMAST
-- --------------------------------------------
SELECT * FROM SESSIONMAST
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: SESSIONMAST
-- --------------------------------------------
SELECT Code,Name FROM SESSIONMAST
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: SESSIONMAST
-- --------------------------------------------
SELECT * FROM SESSIONMAST
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 5
-- Uses table: sessionMast
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From sessionMast
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [SESSIONMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [sessionMast]  NOT present in visahl.sql dump (schema unknown)
