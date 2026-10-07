# ==========================================================
# Module: BanqAvailability
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: FAEnviro
-- --------------------------------------------
Select * From FAEnviro;

-- --------------------------------------------
-- Query 2
-- Uses table: VenueMast
-- --------------------------------------------
Select * from VenueMast
    where DepartCode='<DepartCode>'
    order by name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [FAEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [VenueMast]  NOT present in visahl.sql dump (schema unknown)
