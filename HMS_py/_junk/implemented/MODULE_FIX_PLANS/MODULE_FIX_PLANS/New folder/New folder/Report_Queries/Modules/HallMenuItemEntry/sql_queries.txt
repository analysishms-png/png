# ==========================================================
# Module: HallMenuItemEntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ItemMast
-- --------------------------------------------
SELECT Code,Name,ItemGroup,RestCode FROM ItemMast
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND RestCode='<RestCode>' And DispCode<>9999
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name,RestType,DiscApp FROM Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND RestType='Kitchen'
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: UnitMast
-- --------------------------------------------
SELECT Name as Code,Name FROM UnitMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT distinct Code,Name,Type,RestCode FROM ItemGrp
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND RestCode ='<RestCode>' and status='Active'
    ORDER BY Name;

-- --------------------------------------------
-- Query 5
-- Uses table: ItemCatMast
-- --------------------------------------------
SELECT Code,Name,RestCode FROM ItemCatMast
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND RestCode ='<RestCode>' And status='Active' And (cattype is not NULL and cattype<>'')
    ORDER BY Name;

-- --------------------------------------------
-- Query 6
-- Uses table: ItemMast
-- --------------------------------------------
SELECT DispCode as COde,DispCode FROM ItemMast
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND Type IN ('Finish') And DispCode<>9999 and RestCode ='<RestCode>'
    ORDER BY DispCode;

-- --------------------------------------------
-- Query 7
-- Uses table: Depart
-- Uses table: ItemCatMast
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT I.Code,I.Name,I.CommodityCode,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SchrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,IG.Name as ItemGrpName,I.TYPE,DispCode,I.RestCode,I.kitchen,I.Status,K.Name as KitchenName,I.DiscApp, I.Specification AS Specification,I.SITE_CODE,I.LOGSITE_CODE FROM (((ItemMast I
    Left join ItemGrp IG on IG.Code=I.ItemGroup)
    Left Join ItemCatMast IC on I.ItemCatCode=IC.Code)
    Left Join Depart K on K.Code=I.Kitchen)
    Where (I.LOGSITE_CODE='<LogSiteCode>' or I.LOGSITE_CODE='HO') AND I.RestCode='<RestCode>' And DispCode<>9999
    ORDER BY I.Name;

-- --------------------------------------------
-- Query 8
-- Uses table: ItemMast
-- --------------------------------------------
Delete From ItemMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 9
-- Uses table: ItemRate
-- --------------------------------------------
Delete From ItemRate
    Where ItemCode='<ItemCode>';

-- --------------------------------------------
-- Query 10
-- Uses table: STOCK
-- --------------------------------------------
Delete From STOCK
    Where ITEM='<ITEM>';

-- --------------------------------------------
-- Query 11
-- Uses table: ItemCatMast
-- Uses table: ItemGrp
-- Uses table: ItemRate
-- Uses table: TaxStru
-- --------------------------------------------
SELECT Distinct I.Code,I.Name,I.DISPCODE,I.Unit,I.ItemGroup,ItemRate.Rate as SaleRate,IG.Type,IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,T.Name TaxStru,ISNull(I.CommodityCode,'') HSNCode FROM ((ItemMast I
    Left join ItemGrp IG on IG.Code=I.ItemGroup)
    Left Join ItemCatMast IC on I.ItemCatCode=IC.Code)
    Left Join ItemRate on I.Code=ItemRate.ItemCode And I.RestCode=ItemRate.RestCode
    left Join TaxStru T On IC.TaxStru=T.Code
    Where (I.LOGSITE_CODE='<LogSiteCode>' or I.LOGSITE_CODE='HO') AND I.RestCode='<RestCode>' And I.DispCode<>9999
    order by I.Name;

-- --------------------------------------------
-- Query 12
-- Uses table: ItemMast
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From ItemMast
    where Code='<Code>';

-- --------------------------------------------
-- Query 13
-- Uses table: ItemRate
-- --------------------------------------------
Select Rate,Appdate From ItemRate
    Where ItemCode='<ItemCode>' And RestCode='<RestCode>'
    Order By AppDate Desc;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemRate]  NOT present in visahl.sql dump (schema unknown)
-- Table [STOCK]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [UnitMast]  NOT present in visahl.sql dump (schema unknown)
