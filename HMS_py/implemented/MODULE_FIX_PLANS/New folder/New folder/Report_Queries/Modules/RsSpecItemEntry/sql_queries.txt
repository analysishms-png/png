# ==========================================================
# Module: RsSpecItemEntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ItemMast
-- --------------------------------------------
SELECT Code,Name,ItemGroup FROM ItemMast
    Where LogSite_Code in ('HO','<LogSiteCode>') and DispCode=9999
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name,RestType FROM Depart
    Where LogSite_Code in ('<LogSiteCode>') and RestType IN ('Other','Hall','Restaurant','Room Service','Kitchen')
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: Depart
-- Uses table: ItemCatMast
-- --------------------------------------------
SELECT ItemCatMast.Code, ItemCatMast.Name, Depart.Name as OutletName FROM ItemCatMast
    INNER JOIN Depart ON ItemCatMast.RestCode = Depart.Code
    Where Depart.LogSite_Code in ('HO','<LogSiteCode>') and RestCode='<RestCode>'
    ORDER BY ItemCatMast.Name;

-- --------------------------------------------
-- Query 4
-- Uses table: UnitMast
-- --------------------------------------------
SELECT Name as Code,Name FROM UnitMast
    Where LogSite_Code in ('HO','<LogSiteCode>')
    ORDER BY Name;

-- --------------------------------------------
-- Query 5
-- Uses table: UnitMast
-- --------------------------------------------
SELECT Name as Code,Name FROM UnitMast
    Where LogSite_Code in ('HO','<LogSiteCode>') and IG.Type IN ('Finish','Semi Finish') And I.DispCode=9999
    ORDER BY R.Name,I.Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [UnitMast]  NOT present in visahl.sql dump (schema unknown)
