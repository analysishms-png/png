# ==========================================================
# Module: frmSeasonMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SeasonMast1
-- --------------------------------------------
Delete from SeasonMast1
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 2
-- Uses table: SeasonMast1
-- --------------------------------------------
Insert Into SeasonMast1(Weekend,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('<Param>','' AND (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 3
-- Uses table: SeasonMast
-- --------------------------------------------
SELECT Distinct(year(FromDate)) as SYear,SITE_CODE,LOGSITE_CODE FROM SeasonMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY year(FromDate) desc;

-- --------------------------------------------
-- Query 4
-- Uses table: SeasonMast1
-- --------------------------------------------
SELECT Weekend FROM SeasonMast1
    WHERE LOGSITE_CODE='<LogSiteCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [SeasonMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SeasonMast1]  NOT present in visahl.sql dump (schema unknown)
