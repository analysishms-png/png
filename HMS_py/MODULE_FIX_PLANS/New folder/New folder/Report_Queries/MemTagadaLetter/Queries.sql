# ==========================================================
# Module: MemTagadaLetter
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: City
-- Uses table: MemTagadaLetter
-- Uses table: State
-- Uses table: SubGroup
-- --------------------------------------------
SELECT MTL.code as searchcode,MTL.*,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL
    Left Join SubGroup SG On MTL.MemCode=SG.SubCode
    Left Join City On SG.CityCode=City.CityCode
    Left Join State On City.State=State.Code
    where MTL.Type='<Type>' And (MTL.LOGSITE_CODE='<LogSiteCode>' or MTL.LOGSITE_CODE='HO')
    ORDER BY MTL.Code;

-- --------------------------------------------
-- Query 2
-- Uses table: SubGroup
-- --------------------------------------------
Update SubGroup
    Set AllowCredit='N'
    Where SubCode='00000000' And (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 3
-- Uses table: MemTagadaLetter
-- --------------------------------------------
Update MemTagadaLetter
    Set ContraCode='<ContraCode>',ContraType='<ContraType>'
    Where Code='00000000' And Type='Article_26(a)' And (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 4
-- Uses table: SubGroup
-- --------------------------------------------
Update SubGroup
    Set AllowCredit='N'
    Where SubCode='<SubCode><Param><LogSiteCode>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 5
-- Uses table: Ledger
-- --------------------------------------------
Select isnull(Sum(AmtDr),0) From Ledger
    Where SubCode='<SubCode><Param><Param>';

-- --------------------------------------------
-- Query 6
-- Uses table: Ledger
-- --------------------------------------------
Select isnull(Sum(AmtCr),0) From Ledger
    Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST') And SubCode='<SubCode>' And V_date>Select isnull(Sum(AmtDr),0) From Ledger
    Where SubCode='<SubCode><Param><Param> And V_date <=<Param>;

-- --------------------------------------------
-- Query 7
-- Uses table: Ledger
-- --------------------------------------------
Select isnull(Sum(AmtDr),0) From Ledger
    Where SubCode='<SubCode>' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4)='<Param>';

-- --------------------------------------------
-- Query 8
-- Uses table: Ledger
-- --------------------------------------------
Select isnull(Sum(AmtCr),0) From Ledger
    Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST') And SubCode='<SubCode>' And V_date>Select isnull(Sum(AmtDr),0) From Ledger
    Where SubCode='<SubCode>' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4)='<Param> And V_date <=<Param>;

-- --------------------------------------------
-- Query 9
-- Uses table: City
-- Uses table: MemTagadaLetter
-- Uses table: State
-- Uses table: SubGroup
-- --------------------------------------------
SELECT MTL.code As SerialNo,MTL.VDate As EntryDate,MTL.CurBillMonth,MTL.TillDate,MTL.DueAmt As NoticeAmt,MTL.CurMonthBillAmt,MTL.CreditAmt,MTL.BalanceTillDate As TotalDueAmt,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL
    Left Join SubGroup SG On MTL.MemCode=SG.SubCode
    Left Join City On SG.CityCode=City.CityCode
    Left Join State On City.State=State.Code
    where MTL.Code='<Code>' And MTL.Type='<Type>' And (MTL.LOGSITE_CODE='<LogSiteCode>' or MTL.LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 10
-- Uses table: City
-- Uses table: MemTagadaLetter
-- Uses table: State
-- Uses table: SubGroup
-- --------------------------------------------
SELECT MTL.code As SerialNo,MTL.VDate As EntryDate,MTL.CurBillMonth,MTL.ContraCode As ContraSerialNo,MTL.TillDate As ContraEntryDate,MTL.DueAmt As NoticeAmt,MTL.CurMonthBillAmt,MTL.CreditAmt,MTL.BalanceTillDate As TotalDueAmt,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL
    Left Join SubGroup SG On MTL.MemCode=SG.SubCode
    Left Join City On SG.CityCode=City.CityCode
    Left Join State On City.State=State.Code
    where MTL.Code='<Code>' And MTL.Type='<Type>' And (MTL.LOGSITE_CODE='<LogSiteCode>' or MTL.LOGSITE_CODE='HO');



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemTagadaLetter]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
