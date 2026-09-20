# ==========================================================
# Module: HallMenuCatalog
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: CatalogMast
-- --------------------------------------------
Delete From CatalogMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 3
-- Uses table: GroupCatalog
-- --------------------------------------------
Delete From GroupCatalog
    Where CatCode='<CatCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LOGSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: CatalogMast
-- --------------------------------------------
SELECT DISTINCT CA.Code As SearchCode,lOGSITE_CODE,SITE_CODE FROM CatalogMast CA
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND CA.Category ='Y'
    ORDER BY Code;

-- --------------------------------------------
-- Query 6
-- Uses table: CatalogMast
-- --------------------------------------------
SELECT distinct Code,Name FROM CatalogMast
    WHERE Logsite_Code in ('<LogSiteCode>','HO') AND RestCode='<RestCode>' And Category ='Y'
    ORDER BY Name;

-- --------------------------------------------
-- Query 7
-- Uses table: CatalogMast
-- --------------------------------------------
SELECT DISTINCT CA.Code As SearchCode,LOGSITE_CODE,SITE_CODE FROM CatalogMast CA
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND RestCode='<RestCode>' AND CA.Category <>'Y' OR CA.Category Is Null
    ORDER BY Code;

-- --------------------------------------------
-- Query 8
-- Uses table: CatalogMast
-- --------------------------------------------
SELECT distinct Code,Name FROM CatalogMast
    WHERE Logsite_Code in ('<LogSiteCode>','HO') AND RestCode='<RestCode>' And Category <>'Y' OR Category Is Null
    ORDER BY Name;

-- --------------------------------------------
-- Query 9
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT Distinct Code,Name From ItemGrp
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND Type= 'Finish' and RestCode='<RestCode>'
    Order by Name;

-- --------------------------------------------
-- Query 10
-- Uses table: Depart
-- Uses table: ItemGrp
-- Uses table: ItemMast
-- --------------------------------------------
SELECT CA.*, CA.U_AE,CA.U_Name,CA.U_EntDt,I.Name AS ItemName, IC.Name AS ItemCatName, Depart.Name as RestName,CA.RestCode as RestCode, CA.Category AS Category FROM ((CatalogMast AS CA
    LEFT JOIN ItemMast AS I ON CA.ItemCode = I.Code)
    LEFT JOIN ItemGrp AS IC ON I.ItemGroup = IC.Code)
    LEFT JOIN Depart ON CA.RestCode = Depart.Code
    Where CA.Code='<Code>'
    Order By IC.Name,I.Name;

-- --------------------------------------------
-- Query 11
-- Uses table: GroupCatalog
-- Uses table: ItemGrp
-- --------------------------------------------
SELECT IG.Code AS Code, IG.Name AS GroupName, GC.Limit AS Limit FROM ItemGrp IG
    INNER JOIN GroupCatalog GC ON IG.Code = GC.ItemCatCode
    WHERE GC.CatCode='<CatCode>'
    Order By IG.Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [CatalogMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [GroupCatalog]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
