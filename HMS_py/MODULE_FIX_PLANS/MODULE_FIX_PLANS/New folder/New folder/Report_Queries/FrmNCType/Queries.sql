# ==========================================================
# Module: FrmNCType
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: NCTypeMast
-- --------------------------------------------
SELECT NCType As Code,NCType As Name,NCPer as Per,SITE_CODE,LogSite_Code FROM NCTypeMast
    WHERE SITE_CODE='<SITE_CODE>' And (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY NCType;

-- --------------------------------------------
-- Query 2
-- Uses table: NCTypeMast
-- --------------------------------------------
SELECT NCType As Code,NCType,NCPer as Per,SITE_CODE,LOGSITE_CODE,U_AE,U_EntDt,U_Name FROM NCTypeMast
    WHERE SITE_CODE='<SITE_CODE>' And (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY NCType;

-- --------------------------------------------
-- Query 3
-- Uses table: NCTypeMast
-- --------------------------------------------
Delete From NCTypeMast
    Where NCType='<NCType>' And Site_Code='<Site_Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: NCTypeMast
-- --------------------------------------------
Select Nctype,NCPer,U_Name,U_AE,U_Entdt FROM NCTypeMast
    ORDER BY NCType;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [NCTypeMast]  NOT present in visahl.sql dump (schema unknown)
