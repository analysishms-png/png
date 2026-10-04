# ==========================================================
# Module: frmGuestInfo
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: GuestProf
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Update SmartCardRegistration
    Set Name=<Name>,Addr=Update GuestProf
    Set Name=<Name>,Add1=<Add1>,Phone=<Phone>
    Where MemberCode='<MemberCode>' And CardType='Cash Card';

-- --------------------------------------------
-- Query 2
-- Uses table: GuestProf
-- --------------------------------------------
Select Code,Name,MobileNo,Add1,BirthDate,Anniversary,CityName From GuestProf
    Where POS=1 And (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order By Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardRegistration]  NOT present in visahl.sql dump (schema unknown)
