# ==========================================================
# Module: Godown
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: GodownMast
-- --------------------------------------------
Delete From GodownMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: GodownMast
-- --------------------------------------------
Select * FROM GodownMast
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and SysYN<>'Y' or SysYN is Null
    Order by Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [GodownMast]  NOT present in visahl.sql dump (schema unknown)
