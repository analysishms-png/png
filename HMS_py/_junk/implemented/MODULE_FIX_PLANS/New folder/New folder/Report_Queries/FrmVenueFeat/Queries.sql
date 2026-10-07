# ==========================================================
# Module: FrmVenueFeat
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: FeatureMast
-- --------------------------------------------
Delete From FeatureMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: FeatureMast
-- --------------------------------------------
select * FROM FeatureMast
    Where LogSite_Code in ('<LogSiteCode>','HO')order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: FeatureMast
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From FeatureMast;

-- --------------------------------------------
-- Query 4
-- Uses table: FeatureMast
-- --------------------------------------------
SELECT Code,Name FROM FeatureMast
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 5
-- Uses table: FeatureMast
-- --------------------------------------------
SELECT * FROM FeatureMast
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 6
-- Uses table: FeatureMast
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From FeatureMast
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [FeatureMast]  NOT present in visahl.sql dump (schema unknown)
