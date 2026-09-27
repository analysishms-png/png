# ==========================================================
# Module: HallItemGroupMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ItemGrp
-- --------------------------------------------
Delete From ItemGrp
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT * FROM ItemGrp
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and RestCode='<RestCode>'
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT Code,Name,'Banquet' as BanquetName FROM ItemGrp
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and RestCode='<RestCode>'
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT Code,Name As ItemGroup,Status,SITE_CODE,LOGSITE_CODE FROM ItemGrp
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and RestCode='<RestCode>'
    ORDER BY Name;

-- --------------------------------------------
-- Query 5
-- Uses table: ItemGrp
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From ItemGrp
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
