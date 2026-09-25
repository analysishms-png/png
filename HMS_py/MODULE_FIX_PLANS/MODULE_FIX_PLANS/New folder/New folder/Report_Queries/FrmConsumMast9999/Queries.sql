# ==========================================================
# Module: FrmConsumMast9999
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: BOM
-- --------------------------------------------
Delete From BOM
    Where FinItem='<FinItem>' And RestCode='<RestCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: BOM
-- Uses table: ItemMast
-- --------------------------------------------
Update ItemMast
    Set IssueUnit=Unit,convRatio=1,PurchRate=Insert Into BOM(Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,Cost,Waste,Total,U_Name,U_EntDt,U_AE,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode) Values ('<Param>,LPurRate=<LPurRate>
    where Code='<Code>' And RestCode='<RestCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [BOM]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
