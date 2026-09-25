# ==========================================================
# Module: RsBookingEntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Voucher_Type
-- --------------------------------------------
Select V_Type from Voucher_Type
    Where Ncat='PADV' And LOGSITE_CODE='<LogSiteCode>' And RestCode='<RestCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: depart
-- --------------------------------------------
Select AutoSplit,KOtYn from depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 3
-- Uses table: ENVIRO
-- --------------------------------------------
SELECT * FROM ENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: Depart
-- --------------------------------------------
Select 'B'+ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 5
-- Uses table: SundryType
-- --------------------------------------------
Select Count(*) From SundryType
    WHERE V_Type='<V_Type>';

-- --------------------------------------------
-- Query 6
-- Uses table: SplitStock
-- --------------------------------------------
Select Count(*) from SplitStock
    where KOtDocId='<KOtDocId>' And KotSno=<KotSno><Param>;

-- --------------------------------------------
-- Query 7
-- Uses table: Stock
-- --------------------------------------------
Select Count(*) from Stock
    where KOtDocId='<KOtDocId>' And KotSno=<KotSno><Param>;

-- --------------------------------------------
-- Query 8
-- Uses table: Voucher_Type
-- --------------------------------------------
Select Description,V_Type From Voucher_Type
    Where RestCode='<RestCode>' and logSite_Code='<LogSiteCode>' and Site_Code='<Site_Code>' and NCat='ORDER';

-- --------------------------------------------
-- Query 9
-- Uses table: PackingOrderDetail2
-- --------------------------------------------
Delete From PackingOrderDetail2
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 10
-- Uses table: PackingOrderDetail1
-- --------------------------------------------
Delete From PackingOrderDetail1
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 11
-- Uses table: PackingOrderDetail
-- --------------------------------------------
Delete From PackingOrderDetail
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 12
-- Uses table: PackingOrder
-- --------------------------------------------
Delete From PackingOrder
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 13
-- Uses table: Enviro
-- --------------------------------------------
Select OrderBookingPrintType from Enviro
    where LOGSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 14
-- Uses table: Enviro
-- --------------------------------------------
Select OrderBookingPrintType from Enviro
    where LOGSite_code='<LogSiteCode>'';

-- --------------------------------------------
-- Query 15
-- Uses table: Depart
-- --------------------------------------------
Update Depart
    Set CurTokenNo=<CurTokenNo>
    Where Logsite_Code='<LogSiteCode>'And code='<code>';

-- --------------------------------------------
-- Query 16
-- Uses table: Depart
-- --------------------------------------------
Select Max(CKOTPrintYN) From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 17
-- Uses table: Depart
-- --------------------------------------------
Select 'B'+ShortName From Depart
    Where LOGSITE_CODE='<LogSiteCode>' and Code='<Code>';

-- --------------------------------------------
-- Query 18
-- Uses table: RoundOffSetting
-- --------------------------------------------
SELECT RoundOffType FROM RoundOffSetting
    WHERE ModuleName='Sale Bill' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 19
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS
    inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code)
    Where TS.Code='<Code><Param>'
    ORDER BY SNO DESC;

-- --------------------------------------------
-- Query 20
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT IsNull(Sum(TS.Rate),0) FROM TaxStru AS TS
    inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code)
    Where TS.Code='<Code><Param>';

-- --------------------------------------------
-- Query 21
-- Uses table: Revmast
-- --------------------------------------------
Select DeskCode AS RestCode from Revmast
    where taxstru='<taxstru>';

-- --------------------------------------------
-- Query 22
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS
    LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code
    Where TS.Code='<Code>';

-- --------------------------------------------
-- Query 23
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 24
-- Uses table: Enviro
-- --------------------------------------------
Select BookingSlipFooter1,BookingSlipFooter2 from Enviro
    where LOGSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 25
-- Uses table: Depart
-- --------------------------------------------
Select distinct(ShortName),Name,Code,PrintType,CKOTPrintYN,CKOTPrintPath As Printer,NoOfKot From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 26
-- Uses table: Depart
-- Uses table: ItemMast
-- --------------------------------------------
Select PD.Sno,I.Name as ItemName,PD.Qty, Depart.ShortName From (PackingOrderDetail PD
    Left Join ItemMast I on PD.ItemCode=I.Code And PD.ItemRestCode = I.RestCode)
    LEFT JOIN Depart ON I.Kitchen=Depart.Code
    Where PD.DocID='<DocID>';

-- --------------------------------------------
-- Query 27
-- Uses table: Depart
-- --------------------------------------------
Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart
    Where Depart.Code='<LogSiteCode>MK';

-- --------------------------------------------
-- Query 28
-- Uses table: PackingOrder
-- --------------------------------------------
UPDATE PackingOrder
    SET PRINTEDYN='Y'
    WHERE DOCID='<DOCID>';

-- --------------------------------------------
-- Query 29
-- Uses table: PackingOrderDetail
-- --------------------------------------------
Select DocId,VType,VNo From PackingOrderDetail
    Where DocId='<DocId>' And isnull(Contradocid,'')<>'';

-- --------------------------------------------
-- Query 30
-- Uses table: PayCharge
-- --------------------------------------------
Select DocId,VType,VNo From PayCharge
    Where ContraDocId='<ContraDocId>';

-- --------------------------------------------
-- Query 31
-- Uses table: PackingOrderDetail
-- --------------------------------------------
Select DocId,VType,VNo From PackingOrderDetail
    Where DocId='<DocId>' And isnull(Contradocid,'')='';

-- --------------------------------------------
-- Query 32
-- Uses table: Depart
-- --------------------------------------------
Select CurTokenNo From Depart
    Where Logsite_code='<LogSiteCode>' And Code='<Code>';

-- --------------------------------------------
-- Query 33
-- Uses table: PackingOrder
-- --------------------------------------------
Select P.* From PackingOrder P
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 34
-- Uses table: PackingOrderDetail2
-- --------------------------------------------
Select S.* From PackingOrderDetail2 S
    Where S.DocId='<DocId>'
    Order By SNo;

-- --------------------------------------------
-- Query 35
-- Uses table: DEPART
-- --------------------------------------------
Select R.NAME,R.HEADER1,R.HEADER2,R.COMPANYTITLE,R.OUTLETTITLE,R.PHONE From DEPART R
    Where R.CODE='<CODE>';

-- --------------------------------------------
-- Query 36
-- Uses table: PackingOrder
-- --------------------------------------------
Select * From PackingOrder P
    Where P.DocID='<DocID>';

-- --------------------------------------------
-- Query 37
-- Uses table: ITEMMAST
-- Uses table: PackingOrderDetail
-- --------------------------------------------
Select S.SNO AS SRNO,S.TAXPER AS TAXPER,S.TAXAMT AS TAXAMT,S.RATE AS RATE,S.QTY As QTY,S.AMOUNT AS AMT,S.REMARK,I.NAME AS ITEMNAME,S.ItemCode,I.DISPCODE As DISPCODE,Case When S.TAXAMT=0 THEN S.AMOUNT ELSE 0 END AS NONTAXABLE,Case When S.TAXAMT<>0 THEN S.AMOUNT ELSE 0 END AS TAXABLE,S.Unit As UNIT,IsNull(S.VoidYN,'') As VoidYN From PackingOrderDetail S
    LEFT JOIN ITEMMAST I ON I.CODE=S.ITEMCODE And I.RestCODE=S.ItemRestCode
    Where S.DocID='<DocID>'
    Order By S.Sno;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [ITEMMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PackingOrder]  NOT present in visahl.sql dump (schema unknown)
-- Table [PackingOrderDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [PackingOrderDetail1]  NOT present in visahl.sql dump (schema unknown)
-- Table [PackingOrderDetail2]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoundOffSetting]  NOT present in visahl.sql dump (schema unknown)
-- Table [SplitStock]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [SundryType]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
