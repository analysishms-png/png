# ==========================================================
# Module: FrmChangeKitch
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Depart
-- --------------------------------------------
Select RestType,BackColor From Depart
    Where Code='<RestCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: Depart
-- --------------------------------------------
Select R.Code as SearchCode,R.Name From Depart R
    Where RestType in ('Kitchen','Store')
    Order by R.Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
