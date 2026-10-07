# ==========================================================
# Module: MainLib
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- --------------------------------------------
Select Convert(Varchar,GetDate(),120);

-- --------------------------------------------
-- Query 2
-- --------------------------------------------
Select Substring(Convert(Varchar,GetDate(),120),1,10);

-- --------------------------------------------
-- Query 3
-- --------------------------------------------
Select Substring(Convert(Varchar,GetDate(),120),12,8);

-- --------------------------------------------
-- Query 4
-- Uses table: AcGroup
-- --------------------------------------------
Update AcGroup
    Set CurrentBalance=CurrentBalance <Param> <Param>
    Where MainGrCode In(<Param><Param>');

-- --------------------------------------------
-- Query 5
-- Uses table: Stock
-- --------------------------------------------
SELECT iif(isnull(sum(stock.qty)),0,sum(stock.qty)) AS OpRec FROM Stock
    where left(stock.v_type,1) ='X' and stock.prod_code=<prod_code><Param>;

-- --------------------------------------------
-- Query 6
-- Uses table: Stock
-- --------------------------------------------
SELECT iif(isnull(sum(stock.qty)),0,sum(stock.qty)) AS OpIss FROM Stock
    where left(stock.v_type,1) ='Y' and stock.prod_code=<prod_code><Param>;

-- --------------------------------------------
-- Query 7
-- Uses table: ledger
-- --------------------------------------------
SELECT iif(isnull(sum(ledger.Amtcr)),0,sum(ledger.Amtcr)) AS OpRec FROM ledger
    where subcode='<subcode>';

-- --------------------------------------------
-- Query 8
-- Uses table: ledger
-- --------------------------------------------
SELECT iif(isnull(sum(ledger.Amtdr)),0,sum(ledger.Amtdr)) AS OpIss FROM ledger
    where subcode='<subcode>';

-- --------------------------------------------
-- Query 9
-- --------------------------------------------
select getdate();

-- --------------------------------------------
-- Query 10
-- --------------------------------------------
Select Count(<Param>) from <Param>
    where <Param> = #<Param>#;

-- --------------------------------------------
-- Query 11
-- Uses table: AcGroup
-- --------------------------------------------
Update AcGroup
    Set CurrentBalance=CurrentBalance +<Param>
    Where MainGrCode In(<Param><Param>');

-- --------------------------------------------
-- Query 12
-- Uses table: LedgerAdj
-- --------------------------------------------
Select Sum(Cr) from LedgerAdj
    where DocID2='<DocID2>';

-- --------------------------------------------
-- Query 13
-- Uses table: LedgerAdj
-- --------------------------------------------
Delete From LedgerAdj
    Where DocID2='<DocID2>';

-- --------------------------------------------
-- Query 14
-- Uses table: LedgerAdj
-- --------------------------------------------
Select Sum(Cr) from LedgerAdj
    where DocID1='<DocID1>';

-- --------------------------------------------
-- Query 15
-- Uses table: LedgerAdj
-- --------------------------------------------
Delete From LedgerAdj
    Where DocID1='<DocID1>';

-- --------------------------------------------
-- Query 16
-- Uses table: Depart
-- --------------------------------------------
Select Count(*) From Depart
    Where Code='<Code>' And RestType='Production';

-- --------------------------------------------
-- Query 17
-- Uses table: SUBGROUP
-- --------------------------------------------
SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP
    WHERE SUBCODE='<SUBCODE>';

-- --------------------------------------------
-- Query 18
-- Uses table: Help
-- --------------------------------------------
Select isnull(Max(HelpDesc),'') From Help
    where FName='<FName>' and CtrlIndex='<CtrlIndex>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [AcGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Help]  NOT present in visahl.sql dump (schema unknown)
-- Table [LedgerAdj]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUP]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [ledger]  NOT present in visahl.sql dump (schema unknown)
