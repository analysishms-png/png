# ==========================================================
# Module: FrmLostFound
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: LostFoundDetail
-- --------------------------------------------
Delete From LostFoundDetail
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: LostFoundDetail
-- --------------------------------------------
SELECT FDate,FTime,FArea,FindBy,Description,UName1,Status FROM LostFoundDetail
    Order BY Code;

-- --------------------------------------------
-- Query 3
-- Uses table: LostFoundDetail
-- --------------------------------------------
SELECT Code AS Scode,FDate,FTime,FArea,Description,Appvalue,FindBy,FFDate,FFTime,FPlace,UName1,Status,Site_Code,LogSite_code FROM LostFoundDetail
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order BY Code;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [LostFoundDetail]  NOT present in visahl.sql dump (schema unknown)
