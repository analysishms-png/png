# ==========================================================
# Module: FrmPOSBillDeletion
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: TempPosDel
-- --------------------------------------------
Delete from TempPosDel;

-- --------------------------------------------
-- Query 2
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name,RestType,DiscApp FROM Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen')
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: RevMast
-- --------------------------------------------
SELECT Code,Name,PayType FROM RevMast
    Where PayType In('Cash','Member','Complementary') And (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND FieldType='P'
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- --------------------------------------------
Drop Table TempPosDel;

-- --------------------------------------------
-- Query 5
-- --------------------------------------------
CREATE TABLE [dbo].[TempPosDel]([AutoId] [int] IDENTITY(1,1) NOT NULL,[OldDocId] [varchar](21) NOT NULL CONSTRAINT [DF_TempPosDel_OldDocId_1__75] DEFAULT (''),[OldVno] [int] NULL CONSTRAINT [DF_TempPosDel_OldVno_1__75] DEFAULT (''),[OldVdate] [datetime] NULL,[NewDocId] [varchar](21) NULL CONSTRAINT [DF_TempPosDel_NewDocId_1__75] DEFAULT (''),[NewVno] [int] NULL CONSTRAINT [DF_TempPosDel_NewVno_1__75] DEFAULT (''), CONSTRAINT [PK_TempPosDel] PRIMARY KEY CLUSTERED ([OldDocId] ASC) ON [PRIMARY]) ON [PRIMARY];

-- --------------------------------------------
-- Query 6
-- Uses table: Sale1
-- --------------------------------------------
Select Vno,Vdate,NetAmt as BillAmount,DocId From Sale1
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 7
-- Uses table: Paycharge
-- --------------------------------------------
Select Case When IsNull(Sum(AmtCr),0)=<Param> Then 'Cash' Else 'Non-Cash' End From Paycharge
    Where PayType='Cash' And DocId='<DocId>';

-- --------------------------------------------
-- Query 8
-- Uses table: Kot
-- --------------------------------------------
Update Kot
    Set ContraDocID='Deleted'
    Where ContraDocID='<ContraDocID>';

-- --------------------------------------------
-- Query 9
-- Uses table: Sale1
-- --------------------------------------------
Delete From Sale1
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 10
-- Uses table: Sale2
-- --------------------------------------------
Delete From Sale2
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 11
-- Uses table: SunTran
-- --------------------------------------------
Delete From SunTran
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 12
-- Uses table: Stock
-- --------------------------------------------
Delete From Stock
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 13
-- Uses table: Paycharge
-- --------------------------------------------
Delete From Paycharge
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 14
-- Uses table: GuestReward
-- --------------------------------------------
Delete From GuestReward
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 15
-- Uses table: AssignDelivery
-- --------------------------------------------
Delete From AssignDelivery
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 16
-- Uses table: TempPosDel
-- --------------------------------------------
Select * from TempPosDel
    Order By OldVno;

-- --------------------------------------------
-- Query 17
-- Uses table: Kot
-- --------------------------------------------
Update Kot
    Set ContraDocId='<ContraDocId>'
    Where ContraDocId='<ContraDocId>';

-- --------------------------------------------
-- Query 18
-- Uses table: TempPosDel
-- --------------------------------------------
Update TempPosDel
    Set NewDocId='<NewDocId>',NewVno=<NewVno>
    Where OldDocId='<OldDocId>' And OldVno=<OldVno>;

-- --------------------------------------------
-- Query 19
-- Uses table: TempPosDel
-- --------------------------------------------
Select IsNull(Max(AutoId),0) from TempPosDel;

-- --------------------------------------------
-- Query 20
-- Uses table: Sale1
-- Uses table: TempPosDel
-- --------------------------------------------
Update Sale1
    Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T
    Where DocId=T.OldDocId and Vprefix=Year('<Param>');

-- --------------------------------------------
-- Query 21
-- Uses table: Sale2
-- Uses table: TempPosDel
-- --------------------------------------------
Update Sale2
    Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T
    Where DocId=T.OldDocId and Vprefix=Year('<Param>');

-- --------------------------------------------
-- Query 22
-- Uses table: SunTran
-- Uses table: TempPosDel
-- --------------------------------------------
Update SunTran
    Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T
    Where DocId=T.OldDocId;

-- --------------------------------------------
-- Query 23
-- Uses table: Stock
-- Uses table: TempPosDel
-- --------------------------------------------
Update Stock
    Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T
    Where DocId=T.OldDocId and Vprefix=Year('<Param>');

-- --------------------------------------------
-- Query 24
-- Uses table: PayCharge
-- Uses table: TempPosDel
-- --------------------------------------------
Update PayCharge
    Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T
    Where DocId=T.OldDocId and Vprefix=Year('<Param>');

-- --------------------------------------------
-- Query 25
-- Uses table: Kot
-- Uses table: TempPosDel
-- --------------------------------------------
Update Kot
    Set ContraDocId=T.NewDocId From TempPosDel T
    Where ContraDocId=T.OldDocId and Vprefix=Year('<Param>');



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [AssignDelivery]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestReward]  NOT present in visahl.sql dump (schema unknown)
-- Table [Kot]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [Paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [TempPosDel]  NOT present in visahl.sql dump (schema unknown)
