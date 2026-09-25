# ==========================================================
# Module: DepartMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Depart
-- --------------------------------------------
Delete From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: RevMast
-- --------------------------------------------
Delete From RevMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 3
-- Uses table: Depart
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From Depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: RevMast
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast
    WHERE SUBSTRING(Code,1,3) ='<Param>' and isnumeric(SUBSTRING(Code,4,3))=1;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
