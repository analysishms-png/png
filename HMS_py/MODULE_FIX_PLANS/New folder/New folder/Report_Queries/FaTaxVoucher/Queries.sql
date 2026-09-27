# ==========================================================
# Module: FaTaxVoucher
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
-- Uses table: Depart
-- --------------------------------------------
Select ShortName,Code From Depart
    Where Code='<RestCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: Purch1
-- Uses table: VOUCHER_TYPE
-- --------------------------------------------
Select DISTINCT P.DocId as SearchCode,P.DocID,P.LogSite_Code,P.Site_Code From Purch1 P
    Inner JOIN VOUCHER_TYPE V ON (P.VTYPE=V.V_TYPE And P.logSite_Code=V.LogSite_Code)
    WHERE P.VDATE>=<Param> AND P.LogSite_Code='<LogSite_Code>' aND v.Ncat In ('EXR','EXC','CRN')
    ORDER BY P.DOCID;

-- --------------------------------------------
-- Query 5
-- Uses table: SundryType
-- --------------------------------------------
Select Count(*) From SundryType
    WHERE (LOGSITE_CODE='<LogSiteCode>') and V_Type='<LogSiteCode>PURC';

-- --------------------------------------------
-- Query 6
-- Uses table: Purch2
-- --------------------------------------------
Delete From Purch2
    where docid='<docid>';

-- --------------------------------------------
-- Query 7
-- Uses table: Purch1
-- --------------------------------------------
Delete From Purch1
    where docid='<docid>';

-- --------------------------------------------
-- Query 8
-- Uses table: Sale2
-- --------------------------------------------
Delete From Sale2
    where docid='<docid>';

-- --------------------------------------------
-- Query 9
-- Uses table: SunTran
-- --------------------------------------------
Select S.* From SunTran S
    Where S.DocId='Select P2.Docid,P2.VNo,P2.VDate,P2.VType As V_Type,CASE WHEN P2.RecdQty=0 THEN P2.IssQty ELSE P2.RecdQty END as Qty,CASE WHEN ISNULL(P2.RecdUnit,'')='' THEN P2.IssueUnit ELSE P2.RecdUnit END As Unit,P2.ItemRate,P2.Amount, P1.CashParty as PartyName,P1.PartyBillNo,P1.PartyBillDt,P1.Total,P1.DiscPer,P1.DiscAmt,P1.AddAmt,P1.DedAmt,P1.RoundOff,P1.NetAmt,P1.PartyBillDt,I.Name as ItemName,G.Name as GodName,P2.ContraDocId,V.Description,SG.Name As SaleAcName,'
    Order By SNo;

-- --------------------------------------------
-- Query 10
-- Uses table: ItemMast
-- --------------------------------------------
Select IsNull(LPurDate,'01/Jan/1900') From ItemMast
    Where Code='<Code><Param>' And ItemType='Store';

-- --------------------------------------------
-- Query 11
-- Uses table: Stock
-- --------------------------------------------
Update Stock
    Set LandVal=<LandVal><Param><Param><Param>;

-- --------------------------------------------
-- Query 12
-- Uses table: Stock
-- --------------------------------------------
Update Stock
    Set LandVal=<LandVal><Param>;

-- --------------------------------------------
-- Query 13
-- Uses table: Voucher_Type
-- --------------------------------------------
Select V_Type As Code,Description As Name,NCat From Voucher_Type
    WHERE logSite_Code='<LogSiteCode>' and Site_Code='';

-- --------------------------------------------
-- Query 14
-- Uses table: ItemMast
-- --------------------------------------------
Select Max(Name) From ItemMast
    Where Code='<Code>' And RestCode='<RestCode>';

-- --------------------------------------------
-- Query 15
-- Uses table: Purch1
-- Uses table: SubGroup
-- --------------------------------------------
Select P.*,S.Name as PartyName From Purch1 P
    Left Join SubGroup S on S.SubCode=P.Party
    Where P.Docid='<Docid>';

-- --------------------------------------------
-- Query 16
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where LogSite_Code='<LogSiteCode>' and V_Type='<V_Type>';

-- --------------------------------------------
-- Query 17
-- Uses table: SunTran
-- --------------------------------------------
Select S.* From SunTran S
    Where S.DocId='<DocId>'
    Order By SNo;

-- --------------------------------------------
-- Query 18
-- Uses table: Depart
-- Uses table: GodownMast
-- Uses table: ItemCatMast
-- Uses table: ItemMast
-- Uses table: Sale2
-- Uses table: SubGroup
-- Uses table: TaxStru
-- --------------------------------------------
Select DISTINCT S.*,I.Name as ItemName,DispCode,S.DiscApp as DApp,S.RoundOff as ROff,s.TaxStru as TaxCode,RateEdit,D.Code as DepartCode,D.ShortName as DepartName,G.Name as GodownName,TaxStru.Name as TaxStructure,S.AcCode As SaleAcCode,SG.Name As SaleAcName From (((((Purch2 S
    Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store')
    left join Sale2 S2 on (S2.docid=S.docid and S2.sno=S.sno))
    Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left
    Join Depart D on D.Code=I.RestCode)Left
    Join GodownMast G on G.Code=S.GodCode)
    left Join TaxStru on TaxStru.Code=S.TaxStru
    left Join SubGroup SG On SG.SubCode=S.AcCode
    Where S.DocId='<DocId>'
    Order By S.SNo;

-- --------------------------------------------
-- Query 19
-- Uses table: Stock
-- --------------------------------------------
Select ConvRatio,QtyIss,IssueUnit,Unit From Stock
    Where DocId='<DocId>' And Sno=<Sno>;

-- --------------------------------------------
-- Query 20
-- Uses table: Stock
-- --------------------------------------------
Select ConvRatio,QtyRec,RecdUnit,Unit From Stock
    Where DocId='<DocId>' And Sno=<Sno>;

-- --------------------------------------------
-- Query 21
-- Uses table: Stock
-- --------------------------------------------
Select ConvRatio,IssQty,IssueUnit,Unit From Stock
    Where DocId='<DocId>' And Sno=<Sno>;

-- --------------------------------------------
-- Query 22
-- Uses table: Purch1
-- --------------------------------------------
Select Distinct DocId,V_Type,V_No From Purch1
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 23
-- Uses table: RoundOffSetting
-- --------------------------------------------
SELECT RoundOffType FROM RoundOffSetting
    WHERE ModuleName='Purchase Bill';

-- --------------------------------------------
-- Query 24
-- Uses table: DEPART
-- --------------------------------------------
Select R.HEADER1,R.HEADER2 From DEPART R
    Where R.CODE='<CODE>';

-- --------------------------------------------
-- Query 25
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS
    LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code
    Where TS.Code='<Code>';

-- --------------------------------------------
-- Query 26
-- Uses table: ItemMast
-- --------------------------------------------
Select CASE WHEN LPurRate<=0 THEN PurchRate ELSE LPurRate END As Rate From ItemMast
    Where Code='<Code>' And RestCode='<RestCode>';

-- --------------------------------------------
-- Query 27
-- Uses table: ItemMast
-- --------------------------------------------
Select PurchRate As Rate From ItemMast
    Where Code='<Code>' And RestCode='<RestCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [GodownMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrinterSetup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Purch1]  NOT present in visahl.sql dump (schema unknown)
-- Table [Purch2]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoundOffSetting]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [SundryType]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [VOUCHER_TYPE]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
