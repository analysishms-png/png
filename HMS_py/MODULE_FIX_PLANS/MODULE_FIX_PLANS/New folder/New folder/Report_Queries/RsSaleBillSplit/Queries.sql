# ==========================================================
# Module: RsSaleBillSplit
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: PrinterSetup
-- --------------------------------------------
Select * from PrinterSetup
    where RestCode='<RestCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: depart
-- --------------------------------------------
Select RateInclTax from depart
    where code='<code>';

-- --------------------------------------------
-- Query 3
-- Uses table: depart
-- --------------------------------------------
Select KOtYn from depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: depart
-- --------------------------------------------
Select AutoSplit from depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 5
-- Uses table: Depart
-- --------------------------------------------
Select ShortName,Code from Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: Depart
-- --------------------------------------------
SELECT CODE ,ShortName as NAME,Name as Restaurant FROM Depart
    Where OutletYN='Y'
    ORDER BY NAME;

-- --------------------------------------------
-- Query 7
-- Uses table: Depart
-- --------------------------------------------
Select Name From Depart
    Where Code ='<Code>';

-- --------------------------------------------
-- Query 8
-- Uses table: Depart
-- --------------------------------------------
Select Name From Depart
    Where Code ='<Code>'';

-- --------------------------------------------
-- Query 9
-- Uses table: Depart
-- --------------------------------------------
Select 'B'+ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 10
-- Uses table: SundryType
-- --------------------------------------------
Select Count(*) From SundryType
    WHERE V_Type='<V_Type>';

-- --------------------------------------------
-- Query 11
-- Uses table: PAYCHARGE
-- --------------------------------------------
DELETE FROM PAYCHARGE
    WHERE dOCID='<dOCID>';

-- --------------------------------------------
-- Query 12
-- Uses table: Stock
-- --------------------------------------------
Update Stock
    set delflag='D'
    where docid='<docid>';

-- --------------------------------------------
-- Query 13
-- Uses table: Sale1
-- --------------------------------------------
Update Sale1
    set delflag='D',Remark='<Remark>',U_name='<U_name>',U_AE='E'
    where docid='<docid>';

-- --------------------------------------------
-- Query 14
-- Uses table: Sale2
-- --------------------------------------------
Update Sale2
    set delflag='D'
    where docid='<docid>';

-- --------------------------------------------
-- Query 15
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where LOGsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 16
-- Uses table: CashRegData
-- --------------------------------------------
Select Waiter From CashRegData
    where DocID='<DocID><Param>;

-- --------------------------------------------
-- Query 17
-- Uses table: CashRegData
-- Uses table: enviro
-- --------------------------------------------
Update CashRegData
    Set ContraDocId='Select NCUR from enviro
    where LOGsite_code='<LogSiteCode>',ContraSno=<ContraSno><Param><Param><Param>;

-- --------------------------------------------
-- Query 18
-- Uses table: DEPART
-- --------------------------------------------
SELECT SHORTNAME FROM DEPART
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 19
-- Uses table: REVMAST
-- --------------------------------------------
SELECT * FROM REVMAST
    WHERE CODE='<LogSiteCode>TOUT';

-- --------------------------------------------
-- Query 20
-- Uses table: PayCharge
-- --------------------------------------------
Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,;

-- --------------------------------------------
-- Query 21
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID>';

-- --------------------------------------------
-- Query 22
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 23
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID><Param>'
    GROUP BY S.ITEM
    ORDER BY MAX(I.NAME);

-- --------------------------------------------
-- Query 24
-- Uses table: Depart
-- --------------------------------------------
SELECT Slogan1 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 25
-- Uses table: Depart
-- --------------------------------------------
SELECT Slogan2 FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 26
-- Uses table: Depart
-- --------------------------------------------
SELECT TOKENPrint FROM Depart
    where Code ='<Code>';

-- --------------------------------------------
-- Query 27
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID><Param>'
    ORDER BY I.Kitchen;

-- --------------------------------------------
-- Query 28
-- Uses table: Depart
-- --------------------------------------------
SELECT TOKENPrint FROM Depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 29
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    where code='<code>';

-- --------------------------------------------
-- Query 30
-- Uses table: Sale1
-- Uses table: waiter
-- --------------------------------------------
Select Sale1.* ,W.Name as WaiterName From Sale1
    left join waiter W on sale1.waiter=w.code
    Where Sale1.DocID='<DocID><Param>'
    GROUP BY KOT.VDATE,S.ITEM
    ORDER BY KOT.VDATE,MAX(I.NAME);

-- --------------------------------------------
-- Query 31
-- Uses table: enviro
-- --------------------------------------------
Select * from enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 32
-- Uses table: Sale1
-- --------------------------------------------
Select S.* From Sale1 S
    Where S.Docid='<Docid>';

-- --------------------------------------------
-- Query 33
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where V_Type='<V_Type>';

-- --------------------------------------------
-- Query 34
-- Uses table: RoomMast
-- --------------------------------------------
Select Name From RoomMast
    Where [Type]='HL' AND RoomCat='HALL' And Code='<Code>';

-- --------------------------------------------
-- Query 35
-- Uses table: SessionMast
-- --------------------------------------------
Select Name From SessionMast
    WHERE <Param> BETWEEN FromTime AND ToTime;

-- --------------------------------------------
-- Query 36
-- Uses table: SunTran
-- --------------------------------------------
Select S.* From SunTran S
    Where S.DocId='<DocId>'
    Order By SNo;

-- --------------------------------------------
-- Query 37
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where V_Type='<V_Type>'' And PayType='Cash';

-- --------------------------------------------
-- Query 38
-- Uses table: Depart
-- Uses table: ItemCatMast
-- Uses table: ItemMast
-- Uses table: KOT
-- --------------------------------------------
Select S.*,I.Name as ItemName,DispCode,S.DiscApp as DApp,S.RoundOff as ROff,IC.TAxStru as TaxCode,RateEdit,K.DociD as KOTDocID ,K.SNo as KOTSno,D.Code as DepartCode,D.ShortName as DepartName From (((Stock S
    Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left
    Join ItemMast I On S.Item=I.Code And I.RestCode=S.ItemRestCode)Left
    join ItemCatMast IC on IC.Code=I.ItemCatCode)Left
    Join Depart D on D.Code=I.RestCode
    Where S.DocId='<DocId>'
    Order By S.SNo;

-- --------------------------------------------
-- Query 39
-- Uses table: SplitBillDetail
-- --------------------------------------------
SELECT BillQty FROM SplitBillDetail
    WHERE DocId='<DocId>' AND Sno=<Sno> AND BillCat=<BillCat>;

-- --------------------------------------------
-- Query 40
-- Uses table: SplitSunTran
-- --------------------------------------------
SELECT Count(*) FROM SplitSunTran
    WHERE DocId='<DocId>' AND BillCat=<BillCat> AND SNo=<SNo>;

-- --------------------------------------------
-- Query 41
-- Uses table: SplitSunTran
-- --------------------------------------------
SELECT Amount FROM SplitSunTran
    WHERE DocId='<DocId>' AND BillCat=<BillCat> AND SNo=<SNo>;

-- --------------------------------------------
-- Query 42
-- Uses table: SplitSunTran
-- --------------------------------------------
SELECT BaseAmount FROM SplitSunTran
    WHERE DocId='<DocId>' AND BillCat=<BillCat> AND SNo=<SNo>;

-- --------------------------------------------
-- Query 43
-- Uses table: Sale1
-- --------------------------------------------
Select Distinct DocId,V_Type,V_No From Sale1
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 44
-- Uses table: RoomMast
-- --------------------------------------------
Select T.Code,T.Name As Name From RoomMast T
    where T.Type in('HL')
    Order by T.Code;

-- --------------------------------------------
-- Query 45
-- Uses table: ROOMOCC
-- --------------------------------------------
Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat From ROOMOCC RC
    where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL
    Order by RC.ROOMNO;

-- --------------------------------------------
-- Query 46
-- Uses table: SundryType
-- --------------------------------------------
Select * From SundryType
    WHERE V_Type='<V_Type>
    Order by AppDate Desc<Param>;

-- --------------------------------------------
-- Query 47
-- Uses table: SundryMast
-- --------------------------------------------
Select IsNull(Max(Nature),'') from SundryMast
    where Code='<LogSiteCode>ST';

-- --------------------------------------------
-- Query 48
-- Uses table: guestfolio
-- --------------------------------------------
Select * from guestfolio
    where foliono=<foliono><Param>;

-- --------------------------------------------
-- Query 49
-- Uses table: RoundOffSetting
-- --------------------------------------------
SELECT RoundOffType FROM RoundOffSetting
    WHERE ModuleName='Sale Bill';

-- --------------------------------------------
-- Query 50
-- Uses table: SundryMast
-- --------------------------------------------
Select IsNull(Max(Nature),'') from SundryMast
    where LOGSITE_CODE='<LogSiteCode>' AND Code='<LogSiteCode>ST';

-- --------------------------------------------
-- Query 51
-- Uses table: DEPART
-- --------------------------------------------
Select R.HEADER1,R.HEADER2,R.COMPANYTITLE From DEPART R
    Where R.CODE='<CODE>';

-- --------------------------------------------
-- Query 52
-- Uses table: Revmast
-- --------------------------------------------
Select DeskCode AS RestCode from Revmast
    where taxstru='<taxstru>';

-- --------------------------------------------
-- Query 53
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS
    LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code
    Where TS.Code='<Code>';

-- --------------------------------------------
-- Query 54
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS
    LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code
    Where TS.Code='<Code><Param>'
    ORDER BY SNO DESC;

-- --------------------------------------------
-- Query 55
-- Uses table: DEPART
-- --------------------------------------------
Select R.NAME,R.HEADER1,R.HEADER2,R.HEADER3,R.HEADER4,R.COMPANYTITLE,R.OUTLETTITLE From DEPART R
    Where R.CODE='<CODE>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [CashRegData]  NOT present in visahl.sql dump (schema unknown)
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [KOT]  NOT present in visahl.sql dump (schema unknown)
-- Table [PAYCHARGE]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [REVMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMOCC]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoundOffSetting]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [Sale2]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL,
--     Sno                    smallint NOT NULL,
--     SNo1                   varchar (50) NOT NULL,
--     Vtype                  varchar (5) NULL,
--     VNo                    int NULL,
--     Site_Code              varchar (2) NULL,
--     Vprefix                varchar (5) NULL,
--     Vdate                  datetime NULL,
--     RestCode               varchar (6) NULL,
--     TaxCode                varchar (6) NULL,
--     BaseValue              float NULL,
--     TaxPer                 float NULL,
--     TaxAmt                 float NULL,
--     U_Name                 varchar (10) NULL,
--     U_EntDt                datetime NULL,
--     U_AE                   varchar (1) NULL,
--     DelFlag                varchar (1) NULL,
--     LogSite_Code           varchar (2) NULL,
--     SeqNo                  smallint NULL,
-- Table [SessionMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SplitBillDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [SplitSunTran]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [SunTran]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL,
--     Sno                    smallint NOT NULL,
--     Vtype                  varchar (5) NULL,
--     VNo                    int NULL,
--     Vdate                  datetime NULL,
--     PartyCode              varchar (8) NULL,
--     SunCode                varchar (6) NULL,
--     Limit                  float NULL,
--     DispName               varchar (20) NULL,
--     ROff                   varchar (3) NULL,
--     CalcFormula            varchar (50) NULL,
--     SValue                 float NULL,
--     Amount                 float NULL,
--     BaseAmount             float NULL,
--     U_Name                 varchar (10) NULL,
--     U_EntDt                datetime NULL,
--     U_AE                   varchar (1) NULL,
--     SunAppDate             datetime NULL,
--     RevCode                varchar (6) NULL,
--     RestCode               varchar (6) NULL,
--     DelFlag                varchar (1) NULL,
--     SiteCode               varchar (2) NULL,
--     LogSite_Code           varchar (2) NULL,
--     SeqNo                  smallint NULL,
-- Table [SundryMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryType]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [guestfolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [waiter]  NOT present in visahl.sql dump (schema unknown)
