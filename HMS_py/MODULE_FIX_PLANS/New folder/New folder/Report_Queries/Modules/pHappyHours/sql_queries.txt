# ==========================================================
# Module: pHappyHours
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ItemMast
-- --------------------------------------------
Select DispCode,Code As ItemCode,Name As ItemName,ItemCatCode,ItemGroup From ItemMast
    Where RestCode='<RestCode>' AND (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order By Code;

-- --------------------------------------------
-- Query 2
-- Uses table: ItemMast
-- --------------------------------------------
Select DispCode,Code As ItemCode,Name As ItemName,ItemCatCode,ItemGroup From ItemMast
    Where RestCode='<RestCode>' And Code Not In (' AND (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order By AppDate Desc,ItemCode;

-- --------------------------------------------
-- Query 3
-- Uses table: HappyHours
-- --------------------------------------------
Delete From HappyHours
    Where schemeCode = '<schemeCode>' AND (LOGSITE_CODE='<LOGSITE_CODE>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 4
-- Uses table: ItemRate
-- --------------------------------------------
Select ItemCode,Rate,AppDate From ItemRate
    Where RestCode='<RestCode>' AND (LOGSITE_CODE='<LOGSITE_CODE>' or LOGSITE_CODE='HO'<Param>;

-- --------------------------------------------
-- Query 5
-- Uses table: HappyHours
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(SchemeCode,3,4) AS INT)),1)+1 AS MyCode From HappyHours
    Where SITE_CODE='<SITE_CODE>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [HappyHours]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemRate]  NOT present in visahl.sql dump (schema unknown)
