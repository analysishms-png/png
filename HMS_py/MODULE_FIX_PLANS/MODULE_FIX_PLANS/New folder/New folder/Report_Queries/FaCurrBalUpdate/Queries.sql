# ==========================================================
# Module: FaCurrBalUpdate
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: HallBook1
-- --------------------------------------------
Insert Into HallBook1 Select * FROM <Param>.dbo.HallBook1
    Where DocId In (Select Distinct FPDocID from;

-- --------------------------------------------
-- Query 2
-- Uses table: PayCharge
-- --------------------------------------------
INSERT INTO PayCharge Select * FROM <Param>';

-- --------------------------------------------
-- Query 3
-- Uses table: Ledger
-- Uses table: SubGroup
-- --------------------------------------------
SELECT LEDGER.LOGSITE_CODE,LEDGER.V_DATE,SUBGROUP.GROUPCODE,SubGroup.SubCode,SubGroup.Name,Sum(Ledger.AmtCr) AS AMTCR,Sum(Ledger.AmtDr) AS AMTDR FROM SubGroup
    INNER JOIN Ledger ON SubGroup.SubCode=Ledger.SubCode
    where SubGroup.SubCode='<SubCode>'
    GROUP BY LEDGER.LOGSITE_CODE,LEDGER.V_DATE,SUBGROUP.GROUPCODE,SubGroup.SubCode,SubGroup.Name;

-- --------------------------------------------
-- Query 4
-- Uses table: Ledger
-- Uses table: SubGroup
-- --------------------------------------------
SELECT LEDGER.LOGSITE_CODE,LEDGER.V_DATE,SUBGROUP.GROUPCODE,SubGroup.SubCode,SubGroup.Name,Sum(Ledger.AmtCr) AS AMTCR,Sum(Ledger.AmtDr) AS AMTDR FROM SubGroup
    INNER JOIN Ledger ON SubGroup.SubCode=Ledger.SubCode
    GROUP BY LEDGER.LOGSITE_CODE,LEDGER.V_DATE,SUBGROUP.GROUPCODE,SubGroup.SubCode,SubGroup.Name;

-- --------------------------------------------
-- Query 5
-- Uses table: ACGROUPCURRBAL
-- --------------------------------------------
UPDATE ACGROUPCURRBAL
    SET CURR_BAL=0;

-- --------------------------------------------
-- Query 6
-- Uses table: SUBGROUPCURRBAL
-- --------------------------------------------
UPDATE SUBGROUPCURRBAL
    SET CURR_BAL=0;

-- --------------------------------------------
-- Query 7
-- Uses table: Stock
-- --------------------------------------------
SELECT * FROM Stock
    Where DocId Is Null;

-- --------------------------------------------
-- Query 8
-- --------------------------------------------
Select Code,Name From <Param>.dbo.Depart
    Where (Logsite_Code='HO' Or Logsite_Code='<LogSiteCode>') And RestType in ('Kitchen','Staff Kitchen');

-- --------------------------------------------
-- Query 9
-- --------------------------------------------
SELECT G.Code,G.Name FROM <Param>.dbo.GodownMast G
    INNER JOIN <Param>.dbo.Depart D ON G.Code=D.Code
    Where Where
    Where Where
    Where Where <Param> And (D.Logsite_Code='HO' Or D.Logsite_Code='<LogSiteCode>') And (D.Logsite_Code='HO' Or D.Logsite_Code='<LogSiteCode>') And (D.Logsite_Code='HO' Or D.Logsite_Code='<LogSiteCode>') And (D.Logsite_Code='HO' Or D.Logsite_Code='<LogSiteCode>') And (D.Logsite_Code='HO' Or D.Logsite_Code='<LogSiteCode>') And (D.Logsite_Code='HO' Or D.Logsite_Code='<LogSiteCode>')
    ORDER BY G.Name;

-- --------------------------------------------
-- Query 10
-- Uses table: Ledger
-- --------------------------------------------
SELECT * FROM Ledger;

-- --------------------------------------------
-- Query 11
-- Uses table: Ledger
-- --------------------------------------------
Update Ledger
    Set AmtCr=Case When <Param>' And V_SNo=<V_SNo>;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ACGROUPCURRBAL]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallBook1]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [SUBGROUPCURRBAL]  NOT present in visahl.sql dump (schema unknown)
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
