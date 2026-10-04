# ==========================================================
# Module: FrmUserPaymentCollection
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where LOGsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: UserCollection
-- --------------------------------------------
SELECT UserCollection.* FROM UserCollection
    Where DocID='<DocID>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [UserCollection]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
