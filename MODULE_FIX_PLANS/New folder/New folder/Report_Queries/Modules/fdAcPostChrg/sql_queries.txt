# ==========================================================
# Module: fdAcPostChrg
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ItemMast
-- --------------------------------------------
SELECT Code,Name FROM ItemMast
    Where Type IN ('Semi Finish','Consumables','Raw Material','Store Item')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: Enviro
-- --------------------------------------------
Select PostingType,NoShowAtNightAudit from Enviro
    Where LogSite_Code='<LogSiteCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
