# ==========================================================
# Module: frmRevGroup
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Revmast
-- --------------------------------------------
Update Revmast
    set GroupSrNo=<GroupSrNo>
    where code='<code><Param>;

-- --------------------------------------------
-- Query 2
-- Uses table: revmast
-- --------------------------------------------
Select GroupSrNo as Sno,Name as Revenue,code as RevCode,FlagAMR from revmast
    Order by GroupSrNo;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [revmast]  NOT present in visahl.sql dump (schema unknown)
