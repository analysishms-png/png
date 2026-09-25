# ==========================================================
# Module: RsPOSDisplayNew
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: UserPermission
-- --------------------------------------------
SELECT POSSettlementYN FROM UserPermission
    WHERE LOGSITE_CODE='<LogSiteCode>' And CompCode='<CompCode>' And UserName='<UserName>';

-- --------------------------------------------
-- Query 2
-- Uses table: Dispcolor
-- --------------------------------------------
delete from Dispcolor
    where [index]=<Param> and Logsite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: DispColor
-- --------------------------------------------
Select * from DispColor;

-- --------------------------------------------
-- Query 4
-- Uses table: Depart
-- --------------------------------------------
Select Order_Booking,Kotyn from Depart
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [DispColor]  NOT present in visahl.sql dump (schema unknown)
-- Table [Dispcolor]  NOT present in visahl.sql dump (schema unknown)
-- Table [UserPermission]  NOT present in visahl.sql dump (schema unknown)
