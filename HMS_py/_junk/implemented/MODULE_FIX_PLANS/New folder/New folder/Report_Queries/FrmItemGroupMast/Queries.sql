# ==========================================================
# Module: FrmItemGroupMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Depart
-- --------------------------------------------
Select Code,Name From Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND OutletYN='Y' And RestType in('Banquet')
    Order by Name;

-- --------------------------------------------
-- Query 2
-- Uses table: Depart
-- --------------------------------------------
Select Code,Name From Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND OutletYN='Y' And RestType in('Outlet','Room Service','Production')
    Order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: Depart
-- --------------------------------------------
Select Code,Name From Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND OutletYN='N'
    Order by Name;

-- --------------------------------------------
-- Query 4
-- Uses table: ItemGrp
-- --------------------------------------------
Delete From ItemGrp
    Where Code='<Code>';

-- --------------------------------------------
-- Query 5
-- Uses table: Depart
-- Uses table: ItemGrp
-- --------------------------------------------
select IG.Code,IG.Name As ItemGroup,IG.Type,D.Name As RestName FROM ItemGrp IG
    Left Join Depart D ON IG.RestCode=D.Code
    WHERE IG.TYPE <Param> And iG.Code <>'MISC' and Resttype='Outlet'
    ORDER BY IG.Name;

-- --------------------------------------------
-- Query 6
-- Uses table: Depart
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp
    LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code
    WHERE ItemGrp.Code<>'MISC' AND ItemGrp.Type='Finish' and Depart.RestType='Banquet'
    ORDER BY ItemGrp.Name;

-- --------------------------------------------
-- Query 7
-- Uses table: Depart
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT ItemGrp.Code, ItemGrp.Name,Depart.Name as BanquetNaME FROM ItemGrp
    LEFT JOIN Depart ON ItemGrp.RestCode = Depart.Code
    WHERE ItemGrp.Code<>'MISC' AND ItemGrp.Type='Finish' and Depart.RestType in ('Outlet','Room Service','Production') AND RestCode='<RestCode>'
    ORDER BY ItemGrp.Name;

-- --------------------------------------------
-- Query 8
-- Uses table: itemgrp
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From itemgrp
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
-- Table [itemgrp]  NOT present in visahl.sql dump (schema unknown)
