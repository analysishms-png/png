# ==========================================================
# Module: ModuleSmartCard
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SmartCardMaster
-- --------------------------------------------
Select Count(*) From SmartCardMaster
    Where HW_Id='<HW_Id>';

-- --------------------------------------------
-- Query 2
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Select Code,SerialNo,Name,CardNo,CardType From SmartCardRegistration
    Where SerialNo='<SerialNo>';

-- --------------------------------------------
-- Query 3
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Select Code,CardType,CardNo,SerialNo,ValidUpTo,BlockedYN,MemberCode,CurrBal,SecurBal From SmartCardRegistration
    Where code='<code>';

-- --------------------------------------------
-- Query 4
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Select Code,CardType,CardNo,SerialNo,ValidUpTo,BlockedYN,MemberCode,CurrBal,SecurBal From SmartCardRegistration
    Where code='<code>'';

-- --------------------------------------------
-- Query 5
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Select IsNull(Code,'') RegId,IsNull(SerialNo,'') SerialNo,IsNull(CurrBal,0) CurrBal from SmartCardRegistration
    Where IsNull(CurrBal,0)<0 And LogSite_Code='<LogSiteCode>'
    Order By IsNull(Code,'');

-- --------------------------------------------
-- Query 6
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Select IsNull(Code,'') RegId,IsNull(SerialNo,'') SerialNo,IsNull(SecurBal,0) SecurBal from SmartCardRegistration
    Where IsNull(SecurBal,0)<0 And LogSite_Code='<LogSiteCode>'
    Order By IsNull(Code,'');



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [SmartCardMaster]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardRegistration]  NOT present in visahl.sql dump (schema unknown)
