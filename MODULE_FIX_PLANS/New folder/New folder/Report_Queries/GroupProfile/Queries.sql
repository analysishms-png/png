# ==========================================================
# Module: GroupProfile
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: GROUPPROF
-- --------------------------------------------
Delete From GROUPPROF
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: GroupProf
-- --------------------------------------------
Delete From GroupProf
    Where Code='<Code>';

-- --------------------------------------------
-- Query 3
-- Uses table: City
-- Uses table: GroupProf
-- --------------------------------------------
SELECT G.Name, G.Add1 AS Address1, G.Add2 AS Address2, C.CityName + ' ' +C.ZipCode AS City, G.Type AS Country, G.PhoneNo AS PhoneNo, G.TravelAgency AS TravelAgency, G.MarketSeg AS MarketSegment, G.BusSource AS BusSource From GroupProf G
    Left Join City C ON G.City=C.CityCode
    where (G.LOGSITE_CODE='<LogSiteCode>' or G.LOGSITE_CODE='HO')
    order by G.Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [GROUPPROF]  NOT present in visahl.sql dump (schema unknown)
-- Table [GroupProf]  NOT present in visahl.sql dump (schema unknown)
