# ==========================================================
# Module: FrmComplaintClearing
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ComplaintDetail
-- --------------------------------------------
Delete From ComplaintDetail
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: Country
-- Uses table: State
-- --------------------------------------------
SELECT State.Code as SCode, State.Name as SName, State.ShortName as SShortName,Country.Name AS CCountry FROM State
    LEFT JOIN Country ON State.Country = Country.Code
    ORDER BY State.Name;

-- --------------------------------------------
-- Query 3
-- Uses table: ComplaintCategory
-- --------------------------------------------
SELECT Code AS Scode,Category FROM ComplaintCategory
    Order BY Category;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ComplaintCategory]  NOT present in visahl.sql dump (schema unknown)
-- Table [ComplaintDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [Country]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
