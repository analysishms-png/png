# ==========================================================
# Module: rHallRepView
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: FAEnviro
-- --------------------------------------------
Select * From FAEnviro;

-- --------------------------------------------
-- Query 2
-- Uses table: Site
-- --------------------------------------------
Select Site_Code AS Code,Site_Desc AS NAME From Site
    Order by Site_Desc;

-- --------------------------------------------
-- Query 3
-- Uses table: HallBook
-- Uses table: HallSale1
-- Uses table: SubGroup
-- --------------------------------------------
SELECT H.DocId, H.VNo, H.Narration, H.VDate, H.Party,B.CompanyCode,S.Name, H.NoOFPax, H.RatePerPax, H.TOTAL AS TotalPerCover, H.DiscAmt, H.Taxable AS Taxable ,H.NonTaxable AS NonTaxable,H.Tax, H.RoundOff,H.ServiceCharge ,H.NetAmt as Amount,H.RestCode From HallSale1 H
    Inner Join HallBook B On H.BookDocID=B.DocID
    Left Join SubGroup S On B.CompanyCode=S.SubCode <Param> AND B.CompanyCode In (<Param>) AND IsNull(B.CompanyCode,'')<>''
    Order By S.Name,H.VNo, H.VDate;

-- --------------------------------------------
-- Query 4
-- Uses table: RevMast
-- Uses table: SundryMast
-- --------------------------------------------
SELECT DISTINCT SundryMast.Name, SundryMast.code FROM (SunTranH AS H
    INNER JOIN RevMast ON H.RevCode = RevMast.Code)
    INNER JOIN SundryMast ON RevMast.Sundry = SundryMast.Code <Param> AND H.DELFLAG<>'D'
    Order by SundryMast.Name;

-- --------------------------------------------
-- Query 5
-- Uses table: HallStock
-- Uses table: Itemmast
-- --------------------------------------------
SELECT HStk.DocId, HStk.VNo, HStk.VDate, HStk.Item, I.Name, HStk.QtyIss, HStk.Rate, NonTaxable=Case when HStk.TaxAmt=0 then HStk.Amount else '' end, Taxable= case when HStk.TaxAmt>0 then HStk.Amount else '' end From HallStock HStk
    left join Itemmast I on HStk.Item=I.Code
    where HStk.DocId='<DocId>'
    Order By I.Name;

-- --------------------------------------------
-- Query 6
-- Uses table: SuntranH
-- --------------------------------------------
Select Amount,BaseAmount From SuntranH
    Where DocId='<DocId>' And SunCode='<SunCode>' And SValue=<SValue>;

-- --------------------------------------------
-- Query 7
-- Uses table: HallBook
-- Uses table: PayChargeH
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT P.DocID, P.SettleDate AS SettleDate , P.VDate AS BillDate, P.VNo AS BillNo,H.PartyName AS PartyName, P.VDate, P.PayType, P.BillAmount, P.AmtCr AS Amount, P.Comments AS Narration, P.U_Name AS Employee,SubGroup.Name FROM PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId
    LEFT JOIN SUBGROUP ON P.COMPCODE=SUBGROUP.SUBCODE <Param>
    ORDER BY P.VDate, P.VNo;

-- --------------------------------------------
-- Query 8
-- Uses table: HallBook
-- Uses table: PayChargeH
-- --------------------------------------------
SELECT Distinct P.PayType FROM PayChargeH P
    LEFT JOIN HallBook H ON P.ContraDocID=H.DocId <Param>
    ORDER BY P.PayType;

-- --------------------------------------------
-- Query 9
-- Uses table: HallBook
-- Uses table: PayChargeH
-- --------------------------------------------
SELECT P.DocID, P.VDate AS BillDate,P.VTYPE,P.VNO, H.PartyName AS PartyName, P.VDate, P.PayType, P.BillAmount, P.AmtCr AS Amount, P.Comments AS Narration, P.U_Name AS Name,P.VType FROM PayChargeH P
    INNER JOIN HallBook H ON P.ContraDocID=H.DocId <Param>
    ORDER BY P.VDate, P.VNo;

-- --------------------------------------------
-- Query 10
-- Uses table: PayChargeH
-- --------------------------------------------
SELECT P.DocID, P.U_Name AS Name, P.VDate, P.PayType, P.BillAmount, P.AmtCr AS Amount FROM PayChargeH P <Param><Param>
    ORDER BY P.U_Name;

-- --------------------------------------------
-- Query 11
-- Uses table: depart
-- Uses table: revmast
-- --------------------------------------------
select max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt,Hallsale2.restcode,max(Depart.Name) as RestName,max(Vtype) as Vtype from (Hallsale2
    left join revmast on revmast.code=Hallsale2.Taxcode)
    left join depart on depart.code=Hallsale2.RestCode
    where <Param>
    group by Hallsale2.restcode,revmast.code,TaxPer
    order by Hallsale2.restcode,max(revmast.Name),TaxPer;

-- --------------------------------------------
-- Query 12
-- Uses table: BookingDetail
-- Uses table: FunctionType
-- Uses table: HallBook
-- Uses table: VenueMast
-- --------------------------------------------
SELECT B.Code, BD.FuncDate, BD.ToDate, BD.FuncTime, BD.ToTime, F.Name,BD.VenueCode,V.Name VenueName, B.PartyName, B.PhoneR, B.MobileNo, B.ConPerson, B.BookedBy, B.HandledBy, B.Status, B.U_Name,B.Remark FROM (BookingInquiry B
    INNER JOIN BookingDetail BD ON B.Code=BD.Code)
    LEFT JOIN FunctionType F ON B.FuncType=F.Code
    Left Join VenueMast V On BD.VenueCode=V.Code <Param><Param>' AND B.Code NOT IN(SELECT Distinct InquiryCode FROM HallBook)
    Order By BD.FuncDate, BD.FuncTime;

-- --------------------------------------------
-- Query 13
-- Uses table: HallSale1
-- --------------------------------------------
SELECT H.DocId, H.VNo, H.VDate, H.Party, H.NoOFPax, H.RatePerPax, H.TOTAL AS TotalPerCover, H.DiscAmt, H.Taxable AS Taxable ,H.NonTaxable AS NonTaxable,H.Tax, H.RoundOff,H.ServiceCharge ,H.NetAmt as Amount,H.BookDocId From HallSale1 H <Param> And <Param>
    Order By H.VNo, H.VDate;

-- --------------------------------------------
-- Query 14
-- Uses table: HallSale1
-- --------------------------------------------
SELECT H.DocId, H.VNo, H.Narration, H.VDate, H.Party, H.NoOFPax, H.RatePerPax, H.TOTAL AS TotalPerCover, H.DiscAmt, H.Taxable AS Taxable ,H.NonTaxable AS NonTaxable,H.Tax, H.RoundOff,H.ServiceCharge ,H.NetAmt as Amount,H.RestCode From HallSale1 H <Param>
    Order By H.VNo, H.VDate;

-- --------------------------------------------
-- Query 15
-- Uses table: Revmast
-- Uses table: SunTranH
-- --------------------------------------------
Select sum(Amount) as TaxAmt from SunTranH
    where RevCode IN (SELECT Code from Revmast
    where Sundry='<Sundry>'<Param>PAXs Select sum(Amount) as TaxAmt from SunTranH
    where RevCode IN (SELECT Code from Revmast
    where Sundry='<Sundry> @ ' And RestCode='<RestCode>'<Param>;

-- --------------------------------------------
-- Query 16
-- Uses table: HallStock
-- Uses table: Itemmast
-- --------------------------------------------
SELECT HStk.DocId,HStk.Sno, HStk.VNo, HStk.VDate, HStk.Item, I.Name, HStk.QtyIss, HStk.Rate, NonTaxable=Case when HStk.TaxAmt=0 then HStk.Amount else '' end, Taxable= case when HStk.TaxAmt>0 then HStk.Amount else '' end, HStk.RestCode From HallStock HStk
    left join Itemmast I on HStk.Item=I.Code
    where HStk.DocId='<DocId>'
    Order By I.Name;

-- --------------------------------------------
-- Query 17
-- Uses table: PayChargeH
-- --------------------------------------------
Select sum(Amtcr) as Advance from PayChargeH
    where vtype='AD' and ContraDocid='<ContraDocid>';

-- --------------------------------------------
-- Query 18
-- Uses table: PayChargeH
-- --------------------------------------------
Select Sum(AmtCr) as TotRect from PayChargeH
    where Docid='<Docid>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [BookingDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [FAEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [FunctionType]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallBook]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallStock]  NOT present in visahl.sql dump (schema unknown)
-- Table [Itemmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PayChargeH]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [Site]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [SunTranH]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SuntranH]  NOT present in visahl.sql dump (schema unknown)
-- Table [VenueMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [revmast]  NOT present in visahl.sql dump (schema unknown)
