# ==========================================================
# Module: FaStateMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: State
-- --------------------------------------------
Delete From State
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: Country
-- Uses table: State
-- --------------------------------------------
SELECT State.Code as SCode, State.Name as SName, State.ShortName as SShortName,Country.Name AS CCountry FROM State
    LEFT JOIN Country ON State.Country=Country.Code
    WHERE (STATE.LOGSITE_CODE='<LogSiteCode>' OR STATE.LOGSITE_CODE='HO')
    ORDER BY State.Name;

-- --------------------------------------------
-- Query 3
-- Uses table: State
-- --------------------------------------------
SELECT Code,Name FROM State
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: Country
-- --------------------------------------------
Select Code,Name from Country
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 5
-- Uses table: Country
-- Uses table: State
-- --------------------------------------------
SELECT State.Code as SCode,State.Name as SName,State.ShortName as SShortName,State.Site_Code as SSite_Code,State.U_Name as SU_Name,State.U_EntDt as SU_EntDt,State.U_AE as SU_AE,Country.Name AS CCountry,STATE.LOGSITE_CODE,STATE.SITE_CODE FROM State
    LEFT JOIN Country ON State.Country=Country.Code
    WHERE (STATE.LOGSITE_CODE='<LogSiteCode>' OR STATE.LOGSITE_CODE='HO')
    ORDER BY State.Name;

-- --------------------------------------------
-- Query 6
-- Uses table: state
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From state
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Country]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
-- Table [state]  NOT present in visahl.sql dump (schema unknown)
