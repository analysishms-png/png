# ==========================================================
# Module: frmWelcome
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: GuestProf
-- --------------------------------------------
Select * from GuestProf
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 2
-- Uses table: GuestProf
-- --------------------------------------------
Select * from GuestProf
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND BirthDate is not NULL and Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
