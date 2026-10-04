# ==========================================================
# Module: DMTree
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: menuHelp1
-- --------------------------------------------
UPDATE menuHelp1
    SET Param_Str='<Param_Str><Param> AND UserName='SA';

-- --------------------------------------------
-- Query 2
-- Uses table: UserModule1
-- --------------------------------------------
UPDATE UserModule1
    SET Flag='<Flag><Param>;

-- --------------------------------------------
-- Query 3
-- Uses table: menuHelp1
-- --------------------------------------------
Select Code,Opt1,Opt2,Opt3,Opt4,MenuCaption As Description,Flag As MType,Param_Str AS Permission From menuHelp1
    WHERE UserName='SA'
    ORDER By Code;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [UserModule1]  NOT present in visahl.sql dump (schema unknown)
-- Table [menuHelp1]  NOT present in visahl.sql dump (schema unknown)
