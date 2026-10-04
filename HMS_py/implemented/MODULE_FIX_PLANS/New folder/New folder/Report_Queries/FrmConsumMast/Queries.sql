# ==========================================================
# Module: FrmConsumMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: BOM
-- Uses table: ItemMast
-- --------------------------------------------
Update ItemMast
    Set IssueUnit=Unit,convRatio=1,PurchRate=Insert Into BOM(Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,Cost,Waste,Total,U_Name,U_EntDt,U_AE,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode) Values ('<Param>,LPurRate=<LPurRate>
    where Code='<Code>' And RestCode='<RestCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: Bom
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From Bom
    where FinItem+RestCode+Convert(Varchar(11),AppDate,103)='<Param>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [BOM]  NOT present in visahl.sql dump (schema unknown)
-- Table [Bom]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
