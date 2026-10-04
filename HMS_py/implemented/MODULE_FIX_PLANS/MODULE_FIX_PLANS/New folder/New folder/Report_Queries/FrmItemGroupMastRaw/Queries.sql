# ==========================================================
# Module: FrmItemGroupMastRaw
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Depart
-- --------------------------------------------
Select Code,Name From Depart
    Where (Depart.LOGSITE_CODE='<LogSiteCode>' or Depart.LOGSITE_CODE='HO') and OutletYN='N'
    Order by Name;

-- --------------------------------------------
-- Query 2
-- Uses table: ItemGrp
-- --------------------------------------------
Delete From ItemGrp
    Where Code='<Code>';

-- --------------------------------------------
-- Query 3
-- Uses table: ItemGrp
-- --------------------------------------------
select IG.Code,IG.Name As ItemGroup,IG.Type,IG.CommodityCode FROM ItemGrp as IG
    WHERE (IG.LOGSITE_CODE='<LogSiteCode>' or IG.LOGSITE_CODE='HO') and IG.TYPE <>'Finish'
    ORDER BY IG.Name;

-- --------------------------------------------
-- Query 4
-- Uses table: ItemGrp
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From ItemGrp
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
