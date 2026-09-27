# ==========================================================
# Module: MemSelectCategory
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name,RestType,DiscApp FROM Depart
    Where Code<>'<LogSiteCode>RS' And (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: MemSelectCategory
-- --------------------------------------------
Select Distinct Type From MemSelectCategory
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: MemCatMast
-- --------------------------------------------
Select Code,Name From MemCatMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order by Name;

-- --------------------------------------------
-- Query 4
-- Uses table: MemSelectCategory
-- --------------------------------------------
Select Distinct Type,U_AE,U_EntDt From MemSelectCategory
    where Type='<Type>' And LogSite_Code='<LogSite_Code>';

-- --------------------------------------------
-- Query 5
-- Uses table: MemCatMast
-- Uses table: MemSelectCategory
-- --------------------------------------------
Select M.Code,M.Name,MS.Type From MemCatMast M
    Inner Join MemSelectCategory MS On M.Code=MS.MemCode
    where MS.Type='<Type>' And MS.LogSite_Code='<LogSite_Code>'
    Order By M.Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemSelectCategory]  NOT present in visahl.sql dump (schema unknown)
