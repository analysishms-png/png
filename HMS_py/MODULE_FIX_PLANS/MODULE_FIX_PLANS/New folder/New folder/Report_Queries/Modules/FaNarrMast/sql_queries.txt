# ==========================================================
# Module: FaNarrMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: NarrMast
-- --------------------------------------------
Delete From NarrMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: NarrMast
-- --------------------------------------------
Select * FROM NarrMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    Order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: NarrMast
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From NarrMast
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [NarrMast]  NOT present in visahl.sql dump (schema unknown)
