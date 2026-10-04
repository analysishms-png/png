# ==========================================================
# Module: FrmItemMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Item
-- --------------------------------------------
SELECT Q.Code,Q.Name FROM (SELECT Code,Name,LogSite_Code FROM Item)Q
    WHERE (Q.LOGSITE_CODE='<LogSiteCode>' or Q.LOGSITE_CODE='HO')
    ORDER BY Q.Name;

-- --------------------------------------------
-- Query 2
-- Uses table: Item
-- --------------------------------------------
SELECT I.Code,I.Name Item,IsNull(I.CommodityCode,'') CommodityCode,I.BarCode,I.SITE_CODE,I.LOGSITE_CODE FROM Item I
    WHERE (I.LOGSITE_CODE='<LogSiteCode>' or I.LOGSITE_CODE='HO')
    ORDER BY I.Name;

-- --------------------------------------------
-- Query 3
-- Uses table: Item
-- --------------------------------------------
Select Q.Code,Q.BarCode From (SELECT BarCode as COde,BarCode,LogSite_Code FROM Item)Q
    Where (Q.LOGSITE_CODE='<LogSiteCode>' or Q.LOGSITE_CODE='HO')
    ORDER BY Q.BarCode;

-- --------------------------------------------
-- Query 4
-- Uses table: Item
-- --------------------------------------------
Delete From Item
    Where Code='<Code>';

-- --------------------------------------------
-- Query 5
-- Uses table: Item
-- --------------------------------------------
select I.Code,I.Name,I.U_Name,I.U_AE,I.U_Entdt,IsNull(I.BarCode,'') BarCode,IsNull(I.CommodityCode,'') HSNCode FROM Item I
    ORDER BY I.Name;

-- --------------------------------------------
-- Query 6
-- Uses table: Item
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From Item
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Item]  NOT present in visahl.sql dump (schema unknown)
