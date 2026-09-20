# ==========================================================
# Module: SchemeMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SchemeMast
-- --------------------------------------------
SELECT Code, Name as SchemeName ,StartDate,EndDate, FromTime , ToTime , Days As DayCode, Active , Site_Code, LOGSITE_CODE FROM SchemeMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 2
-- Uses table: schememast
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From schememast
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [SchemeMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [schememast]  NOT present in visahl.sql dump (schema unknown)
