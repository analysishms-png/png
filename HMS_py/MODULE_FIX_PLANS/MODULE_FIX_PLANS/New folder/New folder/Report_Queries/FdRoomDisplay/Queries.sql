# ==========================================================
# Module: FdRoomDisplay
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: roommast
-- --------------------------------------------
select * from roommast
    where logsite_code='<LogSiteCode>' and type='RO' and inclcount='Y'
    order by Code;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [roommast]  NOT present in visahl.sql dump (schema unknown)
