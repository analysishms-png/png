# ==========================================================
# Module: pPOrder
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Enviro
-- --------------------------------------------
select SmartPurchaseOrder,RateEditableInPO from Enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: Stock
-- --------------------------------------------
Select Count(*) From Stock
    Where ContraDocid='<ContraDocid>' And ContraSno=<ContraSno><Param><Param>;

-- --------------------------------------------
-- Query 3
-- Uses table: Voucher_Type
-- --------------------------------------------
Select Description,V_Type From Voucher_Type
    Where Site_Code='<Site_Code>' and LogSite_Code='<LogSiteCode>' and NCat='PORD';

-- --------------------------------------------
-- Query 4
-- Uses table: POrder1
-- --------------------------------------------
Select IndentDocId,IndentSno from POrder1
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 5
-- Uses table: Indent1
-- --------------------------------------------
Update Indent1
    Set ClearYN='Y'
    Where Docid='<Docid><Param><Param>;

-- --------------------------------------------
-- Query 6
-- Uses table: DateLock
-- --------------------------------------------
Select Name, Srno,IsNull(SDate,'') as SDate,IsNull(EDate,'') as EDate From DateLock
    Where Name='Purchase Order Entry';

-- --------------------------------------------
-- Query 7
-- Uses table: POrder
-- --------------------------------------------
Select * From POrder
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 8
-- Uses table: Voucher_Type
-- --------------------------------------------
Select Description,NCat From Voucher_Type
    Where V_Type='<V_Type>';

-- --------------------------------------------
-- Query 9
-- Uses table: SubGroup
-- --------------------------------------------
Select SG.Name From SubGroup SG
    Where SG.SubCode='<SubCode>';

-- --------------------------------------------
-- Query 10
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS
    LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code
    Where TS.Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DateLock]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [Indent1]  NOT present in visahl.sql dump (schema unknown)
-- Table [POrder]  NOT present in visahl.sql dump (schema unknown)
-- Table [POrder1]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
