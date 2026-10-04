# ==========================================================
# Module: SmartCardRecharge
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SmartCardTransaction
-- --------------------------------------------
Select * From SmartCardTransaction SCT
    Where LogSite_Code='<LogSiteCode>'
    Order By TransactionId;

-- --------------------------------------------
-- Query 2
-- Uses table: SmartCardLedger
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Update SmartCardRegistration
    Set CurrBal=R.CurrBal,SecurBal=R.SecurBal From SmartCardRegistration SCR
    Left Join (Select Q.Code,Sum(Q.RCARDC)+Sum(Q.CARDEXP) Currbal,Sum(Q.RCARDS) SecurBal From (Select Code,(Case When Type='RCARDC' Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) RCARDC,(Case When Type='CARDEXP' Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) CARDEXP,(Case When Type='RCARDS' Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) RCARDS From SmartCardLedger
    Group By Code,Type)Q
    Group By Q.Code)R On SCR.Code=R.Code;

-- --------------------------------------------
-- Query 3
-- Uses table: SmartCardLedger
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Update SmartCardRegistration
    Set CurrBal=R.CurrBal,SecurBal=R.SecurBal From SmartCardRegistration SCR
    Left Join (Select Q.Code,Sum(Q.RCARDC)+Sum(Q.CARDEXP) Currbal,Sum(Q.RCARDS) SecurBal From (Select Code,(Case When Type In ('RCARDC','CARDADJC') Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) RCARDC,(Case When Type='CARDEXP' Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) CARDEXP,(Case When Type In ('RCARDS','CARDADJS') Then IsNull(Sum(AmtCr),0)-IsNull(Sum(AmtDr),0) Else 0 End) RCARDS From SmartCardLedger
    Group By Code,Type)Q
    Group By Q.Code)R On SCR.Code=R.Code;

-- --------------------------------------------
-- Query 4
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
-- Table [SmartCardLedger]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardRegistration]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardTransaction]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
