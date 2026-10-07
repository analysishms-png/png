# ==========================================================
# Module: FrmItemMastRaw
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Item
-- --------------------------------------------
SELECT Code,Name,BarCode,CommodityCode FROM Item
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: ItemMast
-- --------------------------------------------
SELECT Code,Name,Unit FROM ItemMast
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') And ItemType='Store'
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: Depart
-- Uses table: ItemMast
-- --------------------------------------------
SELECT I.Code,I.Name,I.Unit,D.Name As Outlet FROM ItemMast I
    Left Join Depart D On I.RestCode=D.Code
    Where (I.LOGSITE_CODE='<LogSiteCode>' or I.LOGSITE_CODE='HO') AND I.Type='Finish' And I.DispCode <>9999 and I.ActiveYN<>'No'
    Order by I.Name;

-- --------------------------------------------
-- Query 4
-- Uses table: UnitMast
-- --------------------------------------------
SELECT Name as Code,Name FROM UnitMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 5
-- Uses table: ItemCatMast
-- --------------------------------------------
SELECT Code,Name FROM ItemCatMast
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND Restcode='<LogSiteCode>PURC'
    ORDER BY Name;

-- --------------------------------------------
-- Query 6
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT distinct Code,Name,Type FROM ItemGrp
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') And Restcode='<LogSiteCode>PURC'
    ORDER BY Name;

-- --------------------------------------------
-- Query 7
-- Uses table: UnitMast
-- --------------------------------------------
SELECT Name as Code,Name FROM UnitMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or I.LOGSITE_CODE='HO') And I.ItemType='Store'
    ORDER BY I.Name;

-- --------------------------------------------
-- Query 8
-- Uses table: ItemMast
-- --------------------------------------------
Delete From ItemMast
    Where Code='<Code>' And RestCode='<RestCode>';

-- --------------------------------------------
-- Query 9
-- Uses table: ItemGrp
-- Uses table: itemCatMast
-- --------------------------------------------
SELECT I.Code as SearchCode,I.Name,I.Unit,IG.Name as ItemGrpName ,IG.Type,I.PurchRate,I.MinStock,I.MaxStock,I.ReStock,I.ItemCatCode,itemCatMast.Name AS Category,IsNull(I.BarCode,'') BarCode,IsNull(I.CommodityCode,'') HSNCode fROM ((ItemMast I
    Left join ItemGrp IG on IG.Code=I.ItemGroup)left
    join itemCatMast on itemCatMast.code=i.ItemCatCode)
    Where (I.LOGSITE_CODE='<LogSiteCode>' or I.LOGSITE_CODE='HO') And I.ItemType='Store'
    Order by I.Name;

-- --------------------------------------------
-- Query 10
-- Uses table: Itemmast
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From Itemmast
    where Code='<Code>';

-- --------------------------------------------
-- Query 11
-- Uses table: Itemmast
-- --------------------------------------------
Select Max(Name) from Itemmast
    where Code='<Code>'And ItemType='Store';

-- --------------------------------------------
-- Query 12
-- Uses table: Itemmast
-- --------------------------------------------
Select Max(Name) from Itemmast
    where Code='<Code>';

-- --------------------------------------------
-- Query 13
-- Uses table: STOCK
-- --------------------------------------------
Select MAX(vno)AS VNO From STOCK s
    Where s.VType='STOP';

-- --------------------------------------------
-- Query 14
-- Uses table: iTEMMAST
-- --------------------------------------------
Select LPURRATE From iTEMMAST I
    Where I.CODE='<CODE>' And I.ItemType='Store';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Item]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Itemmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [STOCK]  NOT present in visahl.sql dump (schema unknown)
-- Table [UnitMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [iTEMMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [itemCatMast]  NOT present in visahl.sql dump (schema unknown)
