# ==========================================================
# Module: FrmSMSMultiType
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SMSEnviro
-- --------------------------------------------
Select * from SMSEnviro;

-- --------------------------------------------
-- Query 2
-- Uses table: MenuHelp
-- --------------------------------------------
SELECT Count(*) FROM MenuHelp
    WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='<UserName>' AND CompCode='<CompCode>' AND [Option]='Front Office' AND Flag='N';

-- --------------------------------------------
-- Query 3
-- Uses table: MenuHelp
-- --------------------------------------------
SELECT Count(*) FROM MenuHelp
    WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='<UserName>' AND CompCode='<CompCode>' AND [Option]='PayRoll' AND Flag='N';

-- --------------------------------------------
-- Query 4
-- Uses table: MenuHelp
-- --------------------------------------------
SELECT Count(*) FROM MenuHelp
    WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='<UserName>
    Order By GroupName;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [MenuHelp]  NOT present in visahl.sql dump (schema unknown)
-- Table [SMSEnviro]  NOT present in visahl.sql dump (schema unknown)
