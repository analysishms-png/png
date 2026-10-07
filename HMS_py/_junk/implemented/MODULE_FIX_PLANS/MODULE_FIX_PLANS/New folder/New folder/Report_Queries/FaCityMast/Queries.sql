# ==========================================================
# Module: FaCityMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: City
-- --------------------------------------------
SELECT CityCode,CityName FROM City
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    ORDER BY CityName;

-- --------------------------------------------
-- Query 2
-- Uses table: State
-- --------------------------------------------
Select Code,Name from State
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: Country
-- Uses table: State
-- --------------------------------------------
SELECT City.CityCode AS CCode,City.CityName AS CName,City.ShortName AS CShortName,City.STDCode AS CSTDCode,City.ZipCode AS CZipCode,City.State as CityState,City.Country as CityCntry,City.Site_Code AS CSite_Code,City.U_Name AS CU_Name,City.U_EntDt AS CU_EntDt,City.U_AE AS CU_AE,State.Name AS CState,Country.Name AS CCountry,City.Site_Code,City.LogSite_Code FROM (City
    LEFT JOIN State ON City.State=State.Code)
    LEFT JOIN Country ON City.Country=Country.Code
    WHERE (CITY.LOGSITE_CODE='<LogSiteCode>' OR CITY.LOGSITE_CODE='HO')
    ORDER BY City.CityName;

-- --------------------------------------------
-- Query 4
-- Uses table: City
-- --------------------------------------------
Delete From City
    Where CityCode='<CityCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: Country
-- Uses table: State
-- --------------------------------------------
SELECT City.CityCode AS CCode, City.CityName AS CName, City.ShortName AS CShortName, City.STDCode AS CSTDCode, City.ZipCode AS CZipCode, City.Site_Code AS CSite_Code, City.U_Name AS CU_Name, City.U_EntDt AS CU_EntDt, City.U_AE AS CU_AE, State.Name AS CState, Country.Name AS CCountry FROM (City
    LEFT JOIN State ON City.State=State.Code)
    LEFT JOIN Country ON City.Country=Country.Code
    ORDER BY City.CityName;

-- --------------------------------------------
-- Query 6
-- Uses table: city
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From city
    where cityCode='<cityCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [Country]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
-- Table [city]  NOT present in visahl.sql dump (schema unknown)
