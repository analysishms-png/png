# ==========================================================
# Module: RsGravyItemEntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT distinct Code,Name,Type,RestCode FROM ItemGrp
    Where Type IN ('Finish','Semi Finish') AND RESTCODE='<RESTCODE>'
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: ItemCatMast
-- --------------------------------------------
SELECT Code,Name,RestCode FROM ItemCatMast
    where (cattype is not NULL and cattype<>'') AND RESTCODE='<RESTCODE>'
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: ItemMast
-- --------------------------------------------
SELECT Code,Name,ItemGroup,RestCode FROM ItemMast
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and Type IN ('Semi Finish') and GravyItem='Yes' And DispCode<>9999
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name,RestType,DiscApp FROM Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and RestType='Kitchen'
    ORDER BY Name;

-- --------------------------------------------
-- Query 5
-- Uses table: UnitMast
-- --------------------------------------------
SELECT Name as Code,Name FROM UnitMast
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 6
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT distinct Code,Name,Type,RestCode FROM ItemGrp
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and Type IN ('Semi Finish')
    ORDER BY Name;

-- --------------------------------------------
-- Query 7
-- Uses table: ItemCatMast
-- --------------------------------------------
SELECT Code,Name,RestCode FROM ItemCatMast
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and (cattype is not NULL and cattype<>'')
    ORDER BY Name;

-- --------------------------------------------
-- Query 8
-- Uses table: Depart
-- Uses table: ItemCatMast
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT I.Code,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SchrgApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,I.TYPE,DispCode,R.Name as RestName,I.RestCode,I.kitchen,K.Name as KitchenName,R.DiscApp,I.Site_Code,I.LogSite_Code FROM ((((ItemMast I
    Inner join ItemGrp IG on IG.Code=I.ItemGroup)
    Inner Join ItemCatMast IC on I.ItemCatCode=IC.Code))Inner
    Join Depart R on R.Code=I.RestCode)
    Inner Join Depart K on K.Code=I.Kitchen
    Where (I.LOGSITE_CODE='<LogSiteCode>' or I.LOGSITE_CODE='HO') and I.GravyItem='Yes' and IG.Type IN ('Semi Finish')
    ORDER BY R.Name,I.Name;

-- --------------------------------------------
-- Query 9
-- Uses table: ItemMast
-- --------------------------------------------
Delete From ItemMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 10
-- Uses table: ItemRate
-- --------------------------------------------
Delete From ItemRate
    Where ItemCode='<ItemCode>';

-- --------------------------------------------
-- Query 11
-- Uses table: STOCK
-- --------------------------------------------
Delete From STOCK
    Where ITEM='<ITEM>';

-- --------------------------------------------
-- Query 12
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
-- Table [UnitMast]  NOT present in visahl.sql dump (schema unknown)
