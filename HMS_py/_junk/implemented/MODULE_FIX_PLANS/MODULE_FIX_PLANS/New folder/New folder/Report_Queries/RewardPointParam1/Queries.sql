# ==========================================================
# Module: RewardPointParam1
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: RWParameter
-- --------------------------------------------
Select * From RWParameter
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order by Sno;

-- --------------------------------------------
-- Query 2
-- Uses table: RWParameter
-- --------------------------------------------
Delete From RWParameter
    Where Code='<Code>';

-- --------------------------------------------
-- Query 3
-- Uses table: RWParameter
-- --------------------------------------------
Select RWParameter.* From RWParameter
    where RWParameter.Code='<Code>'
    Order by Sno;

-- --------------------------------------------
-- Query 4
-- Uses table: RWParameter
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From RWParameter
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [RWParameter]  NOT present in visahl.sql dump (schema unknown)
