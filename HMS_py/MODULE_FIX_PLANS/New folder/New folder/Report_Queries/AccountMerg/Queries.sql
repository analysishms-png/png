# ==========================================================
# Module: AccountMerg
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: City
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode As Code,Name,SubCode,C.CityName From SubGroup
    Left Join City C on SubGroup.CityCode=C.CityCode
    order by Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
