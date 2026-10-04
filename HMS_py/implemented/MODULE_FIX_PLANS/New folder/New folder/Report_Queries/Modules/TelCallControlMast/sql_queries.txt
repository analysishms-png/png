# ==========================================================
# Module: TelCallControlMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: TelCallControl
-- --------------------------------------------
Delete From TelCallControl
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: TelCallControl
-- Uses table: TelCallType
-- --------------------------------------------
Select TelCallControl.*, TelCallType.CallType as Name From TelCallControl
    Left Join TelCallType On TelCallControl.Code=TelCallType.Code
    Where TelCallControl.Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [TelCallControl]  NOT present in visahl.sql dump (schema unknown)
-- Table [TelCallType]  NOT present in visahl.sql dump (schema unknown)
