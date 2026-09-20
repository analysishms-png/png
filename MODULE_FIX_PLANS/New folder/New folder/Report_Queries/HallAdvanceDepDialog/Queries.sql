# ==========================================================
# Module: HallAdvanceDepDialog
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: DepartPay
-- Uses table: RevMast
-- --------------------------------------------
SELECT DP.PayCode as code, RevMast.name as Name, revMast.PayType as PayType FROM DepartPay as DP LEFT OUTER
    JOIN RevMast ON DP.PayCode = RevMast.code
    where (DP.LOGSITE_CODE='<LogSiteCode>') AND DP.restcode='BANQ'
    ORDER BY NAME;

-- --------------------------------------------
-- Query 3
-- Uses table: Employee
-- --------------------------------------------
SELECT Code,Name FROM Employee
    Where (LogSite_Code='<LogSiteCode>' or LogSite_Code='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: Employee
-- --------------------------------------------
SELECT Code,Name FROM Employee
    Where (LogSite_Code='<LogSiteCode>' and RoomOcc.LogSite_Code='<LogSiteCode>') and T.Type in ('HL') and RoomOcc.ChkoutDate is NULL
    Order By T.Code;

-- --------------------------------------------
-- Query 5
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode as Code,Name From SubGroup
    where LogSite_Code in ('HO','<LogSiteCode>') and CompanyType in ('Corporate','Travel Agency')
    Order By Name;

-- --------------------------------------------
-- Query 6
-- Uses table: TaxStru
-- --------------------------------------------
SELECT distinct Code,Name FROM TaxStru
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 7
-- Uses table: PayChargeH
-- --------------------------------------------
SELECT Distinct Docid as SearchCode,PostDocId,LogSite_Code,Site_Code FROM PayChargeH
    Where RestCode='<RestCode>' And LogSite_Code='<LogSiteCode>' And ContraDocId='<ContraDocId>' AND Vtype In ('AD','AR');

-- --------------------------------------------
-- Query 8
-- Uses table: PayChargeH
-- --------------------------------------------
SELECT Distinct Docid as SearchCode,PostDocId,LogSite_Code,Site_Code FROM PayChargeH
    Where RestCode='<RestCode>' And LogSite_Code='<LogSiteCode>' AND Vtype In ('AD','AR');

-- --------------------------------------------
-- Query 9
-- Uses table: PayChargeH
-- --------------------------------------------
SELECT Distinct Docid as SearchCode,PostDocId,ContraDocId FROM PayChargeH
    Where RestCode='<RestCode>' And Vtype In ('AD','AR') AND ContraDocID='<ContraDocID>';

-- --------------------------------------------
-- Query 10
-- Uses table: HallBook
-- --------------------------------------------
SELECT HallBook.DocId AS Code, HallBook.VNo AS Name,HallBook.PartyName FROM HallBook
    WHERE HallBook.RestCode='<RestCode>' AND HallbOOK.Docid='<Docid>';

-- --------------------------------------------
-- Query 11
-- Uses table: PayChargeH
-- --------------------------------------------
SELECT Distinct Docid as SearchCode,PostDocId FROM PayChargeH
    Where RestCode='<RestCode>' And Vtype In ('AD','AR') AND ContraDocID='<ContraDocID>';

-- --------------------------------------------
-- Query 12
-- Uses table: PayChargeH
-- --------------------------------------------
SELECT Distinct Docid as SearchCode,PostDocId FROM PayChargeH
    Where RestCode='<RestCode>' And LogSite_Code='<LogSiteCode>' AND Vtype In ('AD','AR');

-- --------------------------------------------
-- Query 13
-- Uses table: Ledger
-- --------------------------------------------
SELECT count(*) FROM Ledger
    WHERE DocId='<DocId>' AND V_Type='BREC';

-- --------------------------------------------
-- Query 14
-- Uses table: PayChargeH
-- --------------------------------------------
SELECT ContraDocId FROM PayChargeH
    Where VType='AD' AND Docid='<Docid>';

-- --------------------------------------------
-- Query 15
-- Uses table: PayChargeH
-- --------------------------------------------
Delete From PayChargeH
    Where VType='AD' AND Docid='<Docid>';

-- --------------------------------------------
-- Query 16
-- Uses table: lEDGER
-- --------------------------------------------
Delete From lEDGER
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 17
-- Uses table: HallSale1
-- --------------------------------------------
UPDATE HallSale1
    SET Advance=<Advance>
    WHERE BookDocId='<BookDocId>';

-- --------------------------------------------
-- Query 18
-- Uses table: REVMAST
-- --------------------------------------------
SELECT * FROM REVMAST
    WHERE CODE='<LogSiteCode>TOUT';

-- --------------------------------------------
-- Query 19
-- Uses table: PayChargeH
-- --------------------------------------------
Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,AmtCr,TaxStru,;

-- --------------------------------------------
-- Query 20
-- Uses table: PayChargeH
-- --------------------------------------------
Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,AmtDr,TaxStru,;

-- --------------------------------------------
-- Query 21
-- Uses table: HallBook
-- --------------------------------------------
SELECT PartyName FROM HallBook
    WHERE DocId='<DocId>';

-- --------------------------------------------
-- Query 22
-- Uses table: HallBook
-- --------------------------------------------
SELECT P.VNO AS RECTNO,P.VDATE AS RECTDATE,P.PAYTYPE AS RECTMODE,P.U_Name As UserName,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo As ChqNo,P.ChqDate AS ChqDate,P.ExpDate AS CCExpDate,P.BatchNo As BatchNo,(P.AMTCR-P.AmtDr) AS RECTAMT,HB.VType+'/'+Cast(HB.VNO As Char)AS BOOKNO,HB.PartyName As CustName,P.Comments FROM (PAYCHARGEH P
    left join HallBook HB On P.ContraDocid=HB.DocId)
    WHERE IsNull(P.ContraDocId,'')<>'' And P.DOCID IN ('<Param>') AND P.VTYPE='<VTYPE>';

-- --------------------------------------------
-- Query 23
-- Uses table: PayChargeH
-- Uses table: RevMast
-- --------------------------------------------
Select R.Name As TaxName,P.TaxPer,Abs(P.AmtCr-P.AmtDr) as TaxAmt,P.OnAmt as TaxableAmt From PayChargeH P
    Left Join RevMast R On P.PayCode=R.Code
    where P.Docid='<Docid>' And P.TaxPer<>0
    Order by P.TaxPer Desc,P.PayCode;

-- --------------------------------------------
-- Query 24
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LogSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 25
-- Uses table: Ledger
-- --------------------------------------------
Delete from Ledger
    where Docid='<Docid>' AND V_Type='<V_Type>';

-- --------------------------------------------
-- Query 26
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 27
-- Uses table: TaxStru
-- Uses table: revmast
-- --------------------------------------------
Select AcCode,Rate,TaxStru.Nature from TaxStru
    INNER JOIN revmast on RevMast.Code=TaxStru.TaxCode
    Where TaxStru.Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [DepartPay]  NOT present in visahl.sql dump (schema unknown)
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallBook]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [PayChargeH]  NOT present in visahl.sql dump (schema unknown)
-- Table [REVMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [lEDGER]  NOT present in visahl.sql dump (schema unknown)
-- Table [revmast]  NOT present in visahl.sql dump (schema unknown)
