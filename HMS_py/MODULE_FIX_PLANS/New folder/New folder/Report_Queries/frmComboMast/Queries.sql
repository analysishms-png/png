# ==========================================================
# Module: frmComboMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ItemMast
-- --------------------------------------------
Delete From ItemMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: ItemRate
-- --------------------------------------------
Delete From ItemRate
    Where ItemCode='<ItemCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: ItemRate
-- --------------------------------------------
Update ItemRate
    Set Rate=<Rate>,Site_Code='' AND (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 4
-- Uses table: ItemMast
-- --------------------------------------------
SELECT Code,Name,ItemGroup,RestCode FROM ItemMast
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND ItemType<>'Store' And DispCode<>9999
    ORDER BY Name;

-- --------------------------------------------
-- Query 5
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType='Banquet') OR RestType='Kitchen')
    ORDER BY Name;

-- --------------------------------------------
-- Query 6
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen')
    ORDER BY Name;

-- --------------------------------------------
-- Query 7
-- Uses table: UnitMast
-- --------------------------------------------
SELECT Name as Code,Name FROM UnitMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 8
-- Uses table: ItemRate
-- --------------------------------------------
SELECT Distinct Convert(Varchar(11),AppDate,104) as Code,Convert(Varchar(11),AppDate,104) As Name,RestCode,AppDate FROM ItemRate
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY AppDate;

-- --------------------------------------------
-- Query 9
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT distinct Code,Name,Type,RestCode FROM ItemGrp
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND Type IN ('Finish')
    ORDER BY Name;

-- --------------------------------------------
-- Query 10
-- Uses table: ItemCatMast
-- --------------------------------------------
SELECT Code,Name,RestCode FROM ItemCatMast
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND (cattype is not NULL and cattype<>'')
    ORDER BY Name;

-- --------------------------------------------
-- Query 11
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT distinct Code,Name,Type,RestCode FROM ItemGrp
    Where Type IN ('Finish','Semi Finish') AND RESTCODE='<RESTCODE>'
    ORDER BY Name;

-- --------------------------------------------
-- Query 12
-- Uses table: ItemCatMast
-- --------------------------------------------
SELECT Code,Name,RestCode FROM ItemCatMast
    where (cattype is not NULL and cattype<>'') AND RESTCODE='<RESTCODE>'
    ORDER BY Name;

-- --------------------------------------------
-- Query 13
-- Uses table: itemmast
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From itemmast
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemRate]  NOT present in visahl.sql dump (schema unknown)
-- Table [UnitMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [itemmast]  NOT present in visahl.sql dump (schema unknown)
