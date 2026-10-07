# ==========================================================
# Module: RsTbChange
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: roommast
-- --------------------------------------------
Select Name from roommast
    where (LOGSITE_CODE='<LogSiteCode>') and TYPE='TB' AND code='<code>';

-- --------------------------------------------
-- Query 2
-- Uses table: Depart
-- --------------------------------------------
Select Kotyn from Depart
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [roommast]  NOT present in visahl.sql dump (schema unknown)
