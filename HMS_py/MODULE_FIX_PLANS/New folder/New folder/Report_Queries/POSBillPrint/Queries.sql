# ==========================================================
# Module: POSBillPrint
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: DEPART
-- --------------------------------------------
Select R.NAME,R.HEADER1,R.HEADER2,R.HEADER3,R.HEADER4,R.COMPANYTITLE,R.OUTLETTITLE From DEPART R
    Where R.CODE='<CODE>';

-- --------------------------------------------
-- Query 2
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 3
-- Uses table: Suntran
-- --------------------------------------------
Select st.sno,st.SunCode,st.dispname,St.AMOUNT From Suntran St
    Where St.DocID='<DocID>'
    order by sno;

-- --------------------------------------------
-- Query 4
-- Uses table: Depart
-- --------------------------------------------
SELECT Slogan1 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 5
-- Uses table: Depart
-- --------------------------------------------
SELECT Slogan2 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: Depart
-- --------------------------------------------
SELECT TOKENPrint FROM Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 7
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 8
-- Uses table: Depart
-- --------------------------------------------
SELECT HEADER1 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 9
-- Uses table: Depart
-- --------------------------------------------
SELECT HEADER2 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 10
-- Uses table: POS_SBill
-- --------------------------------------------
Select DocId,OutletDocId,OutletCode from POS_SBill
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 11
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID><Param>'
    GROUP BY S.ITEM
    ORDER BY MAX(I.NAME);

-- --------------------------------------------
-- Query 12
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID>C:\reptmp\SBILL.BAT'
    ORDER BY I.Kitchen;

-- --------------------------------------------
-- Query 13
-- Uses table: revmast
-- --------------------------------------------
Select Min(Sale2.SNo1) as SNo1,max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2
    left join revmast on revmast.code=sale2.Taxcode)
    where Sale2.DocID='<DocID>'
    group by revmast.code,TaxPer
    Order by Min(Sale2.SNo1),TaxPer;

-- --------------------------------------------
-- Query 14
-- Uses table: PackingOrder
-- Uses table: PackingOrderDetail
-- --------------------------------------------
SELECT Distinct P.CustName FROM PackingOrder P
    INNER JOIN PackingOrderDetail PD ON P.Docid = PD.DocID
    WHERE (P.LogSite_Code = '<LogSiteCode>') AND (P.RestCode = '<RestCode>') and PD.ContraDocID='<ContraDocID>';

-- --------------------------------------------
-- Query 15
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge
    Where DocID='<DocID>' And PayType='Cash';

-- --------------------------------------------
-- Query 16
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtCr) as Amount,Sum(TipAmt) as TipAmt From PayCharge
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 17
-- Uses table: Suntran
-- --------------------------------------------
Select st.sno,st.SunCode,st.dispname,St.Svalue,St.AMOUNT From Suntran St
    Where St.DocID='<DocID>'
    order by sno;

-- --------------------------------------------
-- Query 18
-- Uses table: ITEMCATMAST
-- Uses table: ITEMMAST
-- Uses table: Stock
-- --------------------------------------------
Select IM.CATTYPE,S.DISCPER,SUM(S.DISCAMT) AS DISCAMT From Stock S
    LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode
    LEFT JOIN ITEMCATMAST IM ON IM.CODE=I.ITEMCATCODE
    Where S.DocID='<DocID>'
    GROUP BY IM.CATTYPE,S.DISCPER
    HAVING SUM(S.DISCAMT)>0
    ORDER BY IM.CATTYPE,S.DISCPER DESC;

-- --------------------------------------------
-- Query 19
-- Uses table: Depart
-- --------------------------------------------
SELECT TOKENPrint FROM Depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 20
-- Uses table: Depart
-- --------------------------------------------
SELECT TOKENPrintAfter FROM Depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 21
-- Uses table: sale1
-- --------------------------------------------
Update sale1
    set Printed='Y'
    where Docid='<Docid>';

-- --------------------------------------------
-- Query 22
-- Uses table: revmast
-- --------------------------------------------
select Min(Sale2.SNo1) as SNo1,max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2
    left join revmast on revmast.code=sale2.Taxcode)
    where Sale2.DocID='<DocID>'
    group by revmast.code,TaxPer
    Order by Min(Sale2.SNo1),TaxPer;

-- --------------------------------------------
-- Query 23
-- Uses table: City
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: State
-- Uses table: SubGroup
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,S.CardNo,Case When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then IsNull(S.Name,'') Else '' End MemName,W.Name as WaiterName,Case When IsNull(Sale1.RoomType,'')='RO' Then RTrim(LTrim(IsNull(GP.ConPrefix,'')))+' '+RTrim(LTrim(IsNull(GP.Name,''))) When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then RTrim(LTrim(IsNull(S.Name,'')))+' - '+RTrim(LTrim(IsNull(S.CardNo,''))) Else IsNull(Sale1.Remark,'') End Remark1,S.NAME AS CompanyName,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,CC.CityName CompCity,CS.ShortName CompStateCode,CS.Name CompState,S.GSTIN CompGSTIN From ((((((Sale1
    left join waiter W on sale1.waiter=w.code)
    left join SubGroup S On Sale1.Party=S.SubCode)
    Left Join City CC On CC.CityCode=S.CityCode)
    Left Join State CS On CS.Code=CC.State)
    left join GuestFolio GF On Sale1.FolionoDocId=GF.DocId)
    left join GuestProf GP On GF.GuestProf=GP.Code)
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 24
-- Uses table: Depart
-- --------------------------------------------
Select IsNull(PrintNetPayable,'') from Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 25
-- Uses table: POS_SBill
-- Uses table: Sale1
-- --------------------------------------------
Update Sale1
    set Printed='Y'
    Where DocId In (Select OutletDocId from POS_SBill
    where Docid='<Docid>');

-- --------------------------------------------
-- Query 26
-- Uses table: revmast
-- --------------------------------------------
select max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (sale2
    left join revmast on revmast.code=sale2.Taxcode)
    where Sale2.DocID='<DocID>'
    group by revmast.code,TaxPer
    Order by TaxPer;

-- --------------------------------------------
-- Query 27
-- Uses table: Depart
-- --------------------------------------------
SELECT Header1,Header2,Header3,Header4,Slogan1,Slogan2 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 28
-- Uses table: Employee
-- Uses table: GuestProf
-- Uses table: RevMast
-- Uses table: RoomMast
-- Uses table: SubGroup
-- --------------------------------------------
SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf,GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGE AS ST
    LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code)
    LEFT JOIN Employee AS E ON ST.EmpCode = E.Code)
    LEFT JOIN RevMast AS P ON ST.PayCode = P.Code)
    LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left
    join SubGroup CC on CC.SubCode=ST.CompCode
    where ST.Docid='<Docid>' And AmtCr>0;

-- --------------------------------------------
-- Query 29
-- Uses table: POS_SBill
-- Uses table: Sale1
-- --------------------------------------------
Select IsNull(Sum(NetAmt),0) As TotalAmt from Sale1
    Where DocId In (Select OutletDocId from POS_SBill
    Where DocId='<DocId>');

-- --------------------------------------------
-- Query 30
-- Uses table: City
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: State
-- Uses table: SubGroup
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,S.CardNo,IsNull(S.Name,'') As MemName,W.Name as WaiterName,Case When IsNull(Sale1.RoomType,'')='RO' Then RTrim(LTrim(IsNull(GP.ConPrefix,'')))+' '+RTrim(LTrim(IsNull(GP.Name,''))) When IsNull(S.Name,'')<>'' And IsNull(S.CompanyType,'')<>'Corporate' Then RTrim(LTrim(IsNull(S.Name,'')))+' - '+RTrim(LTrim(IsNull(S.CardNo,''))) Else IsNull(Sale1.Remark,'') End Remark1,S.NAME AS CompanyName,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,CC.CityName CompCity,CS.ShortName CompStateCode,CS.Name CompState,S.GSTIN CompGSTIN From ((((((Sale1
    left join waiter W on sale1.waiter=w.code)
    left join SubGroup S On Sale1.Party=S.SubCode)
    Left Join City CC On CC.CityCode=S.CityCode)
    Left Join State CS On CS.Code=CC.State)
    left join GuestFolio GF On Sale1.FolionoDocId=GF.DocId)
    left join GuestProf GP On GF.GuestProf=GP.Code)
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 31
-- Uses table: Suntran
-- --------------------------------------------
Select st.sno,st.SunCode,st.dispname,St.AMOUNT,ST.SValue From Suntran St
    Where St.DocID='<DocID>'
    order by sno;

-- --------------------------------------------
-- Query 32
-- Uses table: PayCharge
-- --------------------------------------------
Select * from PayCharge
    where docid='<docid>' and Sno=1;

-- --------------------------------------------
-- Query 33
-- Uses table: PayCharge
-- Uses table: Subgroup
-- --------------------------------------------
Select Name from PayCharge
    left join Subgroup on Paycharge.CompCode=Subgroup.Subcode
    where docid='<docid>';

-- --------------------------------------------
-- Query 34
-- Uses table: PayCharge
-- --------------------------------------------
Select rOOMNO from PayCharge
    where Paycode='<LogSiteCode>TOUT' and docid='<docid>';

-- --------------------------------------------
-- Query 35
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    where code='<code>';

-- --------------------------------------------
-- Query 36
-- Uses table: enviro
-- --------------------------------------------
Select * from enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 37
-- Uses table: Depart
-- --------------------------------------------
Select IsNull(Max(RestType),'') from Depart
    where SITE_CODE='<LogSiteCode>' AND Code='<Code>';

-- --------------------------------------------
-- Query 38
-- Uses table: PrinterSetup
-- --------------------------------------------
Select * from PrinterSetup
    where SITE_CODE='<LogSiteCode>' AND RestCode='<RestCode>';

-- --------------------------------------------
-- Query 39
-- Uses table: SplitSale1
-- --------------------------------------------
Update SplitSale1
    set Printed='Y'
    where Docid='<Docid>';

-- --------------------------------------------
-- Query 40
-- Uses table: PrinterSetup
-- --------------------------------------------
Select * from PrinterSetup
    where SITE_CODE='<LogSiteCode>' AND RestCode='<RestCode>' And ModType='KOT';

-- --------------------------------------------
-- Query 41
-- Uses table: Depart
-- --------------------------------------------
Select Name,CKOTPrintYN,PrintType,CKOTPrintPath,NoOfKot From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 42
-- Uses table: Depart
-- --------------------------------------------
Select * From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 43
-- Uses table: KOT
-- --------------------------------------------
SELECT DISTINCT DOCID FROM KOT
    WHERE RESTCODE='<RESTCODE>' AND ROOMNO='<ROOMNO>' AND Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y' AND ISNULL(CONTRADOCID,'')='';

-- --------------------------------------------
-- Query 44
-- Uses table: Depart
-- --------------------------------------------
Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart
    Where Depart.Code='<LogSiteCode>MK';

-- --------------------------------------------
-- Query 45
-- Uses table: KOT
-- --------------------------------------------
SELECT DISTINCT DOCID FROM KOT
    WHERE RESTCODE='<RESTCODE>' AND ROOMNO='<ROOMNO>' AND PENDING='Y' AND (DELFLAG IS NULL OR DELFLAG<>'Y') AND CONTRADOCID IS NULL;

-- --------------------------------------------
-- Query 46
-- Uses table: Depart
-- --------------------------------------------
Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart
    Where Depart.Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [ITEMCATMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [ITEMMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [KOT]  NOT present in visahl.sql dump (schema unknown)
-- Table [POS_SBill]  NOT present in visahl.sql dump (schema unknown)
-- Table [PackingOrder]  NOT present in visahl.sql dump (schema unknown)
-- Table [PackingOrderDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [PayCharge]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL,
--     SNo                    int NOT NULL,
--     Vtype                  varchar (8) NULL,
--     VNo                    int NULL,
--     Site_Code              varchar (2) NULL,
--     VPrefix                varchar (5) NULL,
--     Vdate                  datetime NULL,
--     VTime                  varchar (5) NULL,
--     GuestProf              varchar (8) NULL,
--     EmpCode                varchar (8) NULL,
--     CompCode               varchar (8) NULL,
--     Comments               varchar (255) NULL,
--     PayCode                varchar (6) NULL,
--     PayType                varchar (15) NULL,
--     AmtCr                  float NULL,
--     AmtDr                  float NULL,
--     TipAmt                 float NULL,
--     RoomCat                varchar (5) NULL,
--     RoomType               varchar (2) NULL,
--     RoomNo                 varchar (5) NULL,
--     FolioNo                int NULL,
--     CardNo                 varchar (20) NULL,
--     CardHolder             varchar (35) NULL,
--     ChqNo                  varchar (20) NULL,
--     ChqDate                datetime NULL,
--     ExpDate                datetime NULL,
--     BookNo                 int NULL,
--     BookType               varchar (5) NULL,
--     U_Name                 varchar (10) NULL,
--     U_EntDt                datetime NULL,
--     U_AE                   varchar (1) NULL,
--     RestCode               varchar (6) NULL,
--     BillAmount             float NULL,
--     ContraDocID            varchar (21) NULL,
--     DbtChkIn               varchar (3) NULL,
--     TaxPer                 float NULL,
--     OnAmt                  float NULL,
--     Split                  varchar (2) NULL,
--     Bill_No                varchar (8) NULL,
--     MarkEntry              varchar (1) NULL,
--     ModeSet                varchar (1) NULL,
--     SettleDate             datetime NULL,
--     BatchNo                smallint NULL,
--     OldBill_No             varchar (8) NULL,
--     PlanCharge             varchar (6) NULL,
--     FixedChargeCode        varchar (5) NULL,
--     RelatedFolioNo         int NULL,
--     FolioNoDocid           varchar (21) NULL,
--     LogSite_Code           varchar (2) NOT NULL,
--     RefNo                  int NULL,
--     PlanCode               varchar (5) NULL,
--     SeqNo                  smallint NULL,
--     RelatedFolionoDocId    varchar (21) NULL,
--     RefDocId               varchar (21) NULL,
--     Remarks                varchar (255) NULL,
--     AU_Name                varchar (10) NULL,
--     AU_EntDt               datetime NULL,
--     TaxCondAmt             float NULL,
--     TaxStru                varchar (6) NULL,
--     AgAc                   varchar (8) NULL,
--     TxnNo                  varchar (20) NULL,
-- Table [PrinterSetup]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Sale1]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL,
--     Vtype                  varchar (5) NULL,
--     VNo                    int NULL,
--     Vtime                  varchar (5) NULL,
--     Site_Code              varchar (2) NULL,
--     Vprefix                varchar (5) NULL,
--     Vdate                  datetime NULL,
--     RestCode               varchar (6) NULL,
--     RoomCat                varchar (5) NULL,
--     RoomType               varchar (2) NULL,
--     RoomNo                 varchar (5) NULL,
--     FolioNo                int NULL,
--     Party                  varchar (8) NULL,
--     Total                  float NULL,
--     DiscPer                float NULL,
--     DiscAmt                float NULL,
--     NonTaxable             float NULL,
--     Taxable                float NULL,
--     Tax                    float NULL,
--     ServiceCharge          float NULL,
--     AddAmt                 float NULL,
--     DedAmt                 float NULL,
--     RoundOff               float NULL,
--     NetAmt                 float NULL,
--     Remark                 varchar (255) NULL,
--     Waiter                 varchar (8) NULL,
--     FrBookDate             datetime NULL,
--     FrBookTime             varchar (5) NULL,
--     MenuSpl1               varchar (30) NULL,
--     MenuSpl2               varchar (30) NULL,
--     MenuSpl3               varchar (30) NULL,
--     MenuSpl4               varchar (30) NULL,
--     FuncName               varchar (30) NULL,
--     HouseKeep              varchar (25) NULL,
--     FrontOff               varchar (25) NULL,
--     Engg                   varchar (25) NULL,
--     Security               varchar (25) NULL,
--     Chef                   varchar (25) NULL,
--     Board                  varchar (25) NULL,
--     KOTNo                  varchar (255) NULL,
--     TokenNo                int NULL,
--     ExpAtt                 smallint NULL,
--     GuarAtt                smallint NULL,
--     CoverRate              float NULL,
--     U_Name                 varchar (10) NULL,
--     U_EntDt                datetime NULL,
--     U_AE                   varchar (1) NULL,
--     ToBookDate             datetime NULL,
--     ToBookTime             varchar (5) NULL,
--     HallRent               float NULL,
--     TotalPerCover          float NULL,
--     Amount                 float NULL,
--     Advance                float NULL,
--     RecNo                  int NULL,
--     RecDate                datetime NULL,
--     CrCardNo               varchar (20) NULL,
--     CrCardHolder           varchar (35) NULL,
--     BookDocId              varchar (21) NULL,
--     DelFlag                varchar (1) NULL,
--     PRINTED                varchar (1) NULL,
--     LogSite_Code           varchar (2) NULL,
--     DeliveredYN            varchar (1) NULL,
--     PhoneNo                varchar (20) NULL,
--     CustName               varchar (50) NULL,
--     Addr1                  varchar (50) NULL,
--     Addr2                  varchar (50) NULL,
--     CashRecd               float NULL,
--     BookNo                 int NULL,
--     SeqNo                  smallint NULL,
--     CardNo                 varchar (15) NULL,
--     ServiceTax             float NULL,
--     FolionoDocid           varchar (21) NULL,
--     AU_Name                varchar (10) NULL,
--     AU_EntDt               datetime NULL,
--     Redemption             float NULL,
--     DiscRemark             varchar (50) NULL,
--     CGST                   float NULL,
--     SGST                   float NULL,
--     IGST                   float NULL,
--     EditRemark             varchar (75) NULL,
-- Table [SplitSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
-- Table [Stock]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL,
--     Sno                    smallint NOT NULL,
--     Vtype                  varchar (5) NULL,
--     VNo                    int NULL,
--     Site_Code              varchar (2) NULL,
--     Vprefix                varchar (5) NULL,
--     Vdate                  datetime NULL,
--     PartyCode              varchar (8) NULL,
--     RestCode               varchar (6) NULL,
--     RoomCat                varchar (5) NULL,
--     RoomType               varchar (2) NULL,
--     RoomNo                 varchar (5) NULL,
--     ContraDocId            varchar (21) NULL,
--     ContraSno              int NULL,
--     Item                   varchar (8) NULL,
--     QtyIss                 float NULL,
--     QtyRec                 float NULL,
--     Unit                   varchar (6) NULL,
--     Rate                   float NULL,
--     Amount                 float NULL,
--     TaxPer                 float NULL,
--     TaxAmt                 float NULL,
--     DiscPer                float NULL,
--     DiscAmt                float NULL,
--     VoidYN                 varchar (1) NULL,
--     Remarks                varchar (75) NULL,
--     KOTDocId               varchar (21) NULL,
--     KOTSno                 smallint NULL,
--     VTime                  varchar (6) NULL,
--     U_Name                 varchar (10) NULL,
--     U_EntDt                datetime NULL,
--     U_AE                   varchar (1) NULL,
--     Total                  float NULL,
--     DiscApp                varchar (1) NULL,
--     RoundOff               varchar (3) NULL,
--     DepartCode             varchar (6) NULL,
--     GodownCode             varchar (6) NULL,
--     ChalQty                float NULL,
--     RecdQty                float NULL,
--     AccQty                 float NULL,
--     RejQty                 float NULL,
--     RecdUnit               varchar (6) NULL,
--     Specification          varchar (35) NULL,
--     ItemRate               float NULL,
--     DelFlag                varchar (1) NULL,
--     LandVal                float NULL,
--     ConvRatio              float NULL,
--     IndentDocId            varchar (21) NOT NULL,
--     IndentSNo              int NULL,
--     IssQty                 float NULL,
--     IssueUnit              varchar (6) NULL,
--     LogSite_Code           varchar (2) NULL,
--     FreeSno                int NULL,
--     SchemeCode             varchar (6) NULL,
--     SeqNo                  smallint NULL,
--     Company                varchar (8) NULL,
--     ExpDate                datetime NULL,
--     MfdDate                datetime NULL,
--     ItemRestCode           varchar (6) NULL,
--     ShiftCode              varchar (5) NULL,
--     MRP                    float NULL,
--     SChrgApp               varchar (1) NULL,
--     SChrgPer               float NULL,
--     SChrgAmt               float NULL,
--     RefDocId               varchar (21) NULL,
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Suntran]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [sale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [waiter]  NOT present in visahl.sql dump (schema unknown)
