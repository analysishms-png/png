# ==========================================================
# Module: FrmForExRec
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ForEx
-- --------------------------------------------
SELECT Code,Name,Rate FROM ForEx
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: enviro
-- --------------------------------------------
Select ncur from enviro
    where LOGsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: ForEx
-- Uses table: ForExTrans
-- --------------------------------------------
SELECT ForEx.Name as ForCurrency, ForExTrans.* FROM ForExTrans
    LEFT JOIN ForEx ON ForExTrans.ForExCode = ForEx.Code
    Where DocID='<DocID>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ForEx]  NOT present in visahl.sql dump (schema unknown)
-- Table [ForExTrans]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
