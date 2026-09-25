# ==========================================================
# Module: FaVoucher
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: VOUCHER_TYPE
-- --------------------------------------------
SELECT NCAT FROM VOUCHER_TYPE
    WHERE V_TYPE='<V_TYPE>';

-- --------------------------------------------
-- Query 2
-- Uses table: menuHelp
-- --------------------------------------------
SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp
    WHERE UserName='<UserName>' AND CompCode='<CompCode>' AND [Option]='Voucher Entry';

-- --------------------------------------------
-- Query 3
-- Uses table: menuHelp
-- --------------------------------------------
SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp
    WHERE UserName='<UserName>' AND CompCode='<CompCode>' AND [Option]='Purchase Bill/Return Entry';

-- --------------------------------------------
-- Query 4
-- Uses table: menuHelp
-- --------------------------------------------
SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp
    WHERE UserName='<UserName>' AND CompCode='<CompCode>' AND [Option]='Purchase Bill';

-- --------------------------------------------
-- Query 5
-- Uses table: menuHelp
-- --------------------------------------------
SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp
    WHERE UserName='<UserName>' AND CompCode='<CompCode>' AND [Option]='Member Facility Billing';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [VOUCHER_TYPE]  NOT present in visahl.sql dump (schema unknown)
-- Table [menuHelp]  NOT present in visahl.sql dump (schema unknown)
