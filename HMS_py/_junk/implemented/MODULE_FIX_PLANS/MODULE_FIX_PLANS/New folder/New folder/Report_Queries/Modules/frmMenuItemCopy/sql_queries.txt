# ==========================================================
# Module: frmMenuItemCopy
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ItemMast
-- --------------------------------------------
select Count(*) from ItemMast
    where Name='<Name>' And RestCode= '<RestCode>' And ItemType Not In ('Combo','Store') And DispCode<>9999 And GravyItem<>'Yes';

-- --------------------------------------------
-- Query 2
-- Uses table: ItemGrp
-- --------------------------------------------
select Code,Name from ItemGrp
    where Name='<Name>' And RestCode= '<RestCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: ItemCatMast
-- --------------------------------------------
select Code,Name from ItemCatMast
    where Name='<Name>' And RestCode= '<RestCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: ItemCatMast
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From ItemCatMast
    WHERE isnumeric(SUBSTRING(Code,3,4) )=1 and SITE_CODE='<SITE_CODE>';

-- --------------------------------------------
-- Query 5
-- Uses table: ItemCatMast
-- --------------------------------------------
Select * from ItemCatMast
    where Name='<Name>' And Code='<Code>' And RestCode= '<RestCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: Item
-- --------------------------------------------
select Count(*) from Item
    where Code='<Code>';

-- --------------------------------------------
-- Query 7
-- Uses table: itemgrp
-- --------------------------------------------
select IG.code ,IG.name,IG.restcode as Depart from itemgrp IG
    WHERE (IG.LOGSITE_CODE='<LogSiteCode>' OR IG.LOGSITE_CODE='HO')
    order by IG.Name;

-- --------------------------------------------
-- Query 8
-- Uses table: ItemCatMast
-- --------------------------------------------
Select IC.Code,IC.Name,IC.RestCode as Depart From ItemCatMast IC
    WHERE (IC.LOGSITE_CODE='<LogSiteCode>' OR IC.LOGSITE_CODE='HO')
    order by IC.Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Item]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [itemgrp]  NOT present in visahl.sql dump (schema unknown)
