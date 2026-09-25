# ==========================================================
# Module: frmYearEnd
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Company
-- --------------------------------------------
Select * From Company
    Where Comp_Code='<CompCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: Company
-- --------------------------------------------
Select Max((Comp_Code))+1 As Code From Company;

-- --------------------------------------------
-- Query 3
-- Uses table: Company
-- --------------------------------------------
Update Company
    Set ActiveEpabx=''
    Where Comp_Code='<CompCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: menuHelp
-- --------------------------------------------
Select * From menuHelp
    Where CompCode='<CompCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: menuHelp1
-- --------------------------------------------
Select * From menuHelp1
    Where CompCode='<CompCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: UserPermission
-- --------------------------------------------
Select * From UserPermission
    Where CompCode='<CompCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Company]  NOT present in visahl.sql dump (schema unknown)
-- Table [UserPermission]  NOT present in visahl.sql dump (schema unknown)
-- Table [menuHelp]  NOT present in visahl.sql dump (schema unknown)
-- Table [menuHelp1]  NOT present in visahl.sql dump (schema unknown)
