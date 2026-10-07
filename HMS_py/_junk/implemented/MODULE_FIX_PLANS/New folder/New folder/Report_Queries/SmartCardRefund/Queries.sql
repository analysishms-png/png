# ==========================================================
# Module: SmartCardRefund
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Select Code,Name,CurrBal,SerialNo From SmartCardRegistration
    where CardType ='Cash Card' And IsNull(CurrBal,0)<>0;

-- --------------------------------------------
-- Query 2
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Update SmartCardRegistration
    Set CurrBal=0
    where CardType ='Cash Card' And IsNull(CurrBal,0)<>0;

-- --------------------------------------------
-- Query 3
-- Uses table: MemberFamily
-- Uses table: SmartCardRegistration
-- Uses table: SubGroup
-- --------------------------------------------
Select SCR.MemberCode,S.Name As MemberName,SCR.Code,SCR.Name As Name,SCR.CardType,SCR.CardNo,SCR.Addr,SCR.Phone,SCR.SerialNo,SCR.IssDate,SCR.ValidUpto,SCR.BlockedYN,MF.PicPath,MF.SigPath From SmartCardRegistration SCR
    Left Join MemberFamily MF On MF.CardRegId=SCR.Code
    Left Join SubGroup S On SCR.MemberCode=S.Subcode
    Where SCR.LogSite_Code='<LogSiteCode>' And SCR.Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [MemberFamily]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardRegistration]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
