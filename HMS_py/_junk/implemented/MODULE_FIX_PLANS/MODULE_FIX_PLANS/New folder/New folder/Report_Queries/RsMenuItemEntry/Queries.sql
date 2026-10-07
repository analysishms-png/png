# ==========================================================
# Module: RsMenuItemEntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- --------------------------------------------
Print Item Label<Param> And IsNull(Party,'')=''
    Group by ItemCode,RestCode) Q On I.Code=Q.ItemCode And I.RestCode=Q.RestCode
    Where Q.MaxDate=ItemRate.AppDate And IG.Type IN ('Finish','Semi Finish') <Param> And I.DispCode<>9999
    order by I.Name;

-- --------------------------------------------
-- Query 2
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT distinct Code,Name,Type,RestCode FROM ItemGrp
    Where Type IN ('Finish','Semi Finish') AND RESTCODE='<RESTCODE>'
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: ItemCatMast
-- --------------------------------------------
SELECT Code,Name,RestCode FROM ItemCatMast
    where (cattype is not NULL and cattype<>'') AND RESTCODE='<RESTCODE>'
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: Depart
-- Uses table: ItemCatMast
-- Uses table: ItemGrp
-- Uses table: ItemRate
-- Uses table: TaxStru
-- --------------------------------------------
SELECT Distinct I.Code,I.Name,I.Unit,I.ItemGroup,I.DISPCODE,IG.Type,ItemRate.Rate as SaleRate ,IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,T.Name TaxStru,Convert(Varchar(11),ItemRate.AppDate,106) As AppDate,I.NType,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END, REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncTax=CASE I.RateIncTax WHEN 'Y' THEN 'Yes' ELSE 'No' END, K.Name as KitchenName,I.ActiveYN,I.BarCode,ItemRate.MRP,IsNull(I.CommodityCode,'') HSNCode FROM ((ItemMast I
    Left join ItemGrp IG on IG.Code=I.ItemGroup)
    Left Join ItemCatMast IC on I.ItemCatCode=IC.Code)
    Left Join ItemRate on I.Code=ItemRate.ItemCode And I.RestCode=ItemRate.RestCode And IsNull(itemrate.Party,'')=''
    left Join TaxStru T On IC.TaxStru=T.Code
    Left Join Depart K on K.Code=I.Kitchen
    Where IG.Type IN ('Finish','Semi Finish') <Param><Param><Param> And I.DispCode<>9999
    order by I.Name;

-- --------------------------------------------
-- Query 5
-- Uses table: Item
-- --------------------------------------------
SELECT Code,Name,BarCode,CommodityCode FROM Item
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 6
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType='Banquet') OR RestType='Kitchen')
    ORDER BY Name;

-- --------------------------------------------
-- Query 7
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen')
    ORDER BY Name;

-- --------------------------------------------
-- Query 8
-- Uses table: UnitMast
-- --------------------------------------------
SELECT Name as Code,Name FROM UnitMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 9
-- Uses table: ItemRate
-- --------------------------------------------
SELECT Distinct Convert(Varchar(11),AppDate,104) as Code,Convert(Varchar(11),AppDate,104) As Name,RestCode,AppDate FROM ItemRate
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') And IsNull(Party,'')=''
    ORDER BY AppDate;

-- --------------------------------------------
-- Query 10
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT distinct Code,Name,Type,RestCode FROM ItemGrp
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND Type IN ('Finish')
    ORDER BY Name;

-- --------------------------------------------
-- Query 11
-- Uses table: ItemCatMast
-- --------------------------------------------
SELECT Code,Name,RestCode FROM ItemCatMast
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND (cattype is not NULL and cattype<>'')
    ORDER BY Name;

-- --------------------------------------------
-- Query 12
-- Uses table: ItemMast
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From ItemMast
    where Code+RestCode='<RestCode>';

-- --------------------------------------------
-- Query 13
-- Uses table: Depart
-- --------------------------------------------
Select LabelPrinting From Depart
    Where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Item]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemRate]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [UnitMast]  NOT present in visahl.sql dump (schema unknown)
