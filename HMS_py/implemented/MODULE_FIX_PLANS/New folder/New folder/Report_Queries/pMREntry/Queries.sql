# ==========================================================
# Module: pMREntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Purch2
-- --------------------------------------------
Select Count(*) from Purch2
    where ContraDocId='<ContraDocId>' and Item='<Item>';

-- --------------------------------------------
-- Query 2
-- Uses table: Voucher_Type
-- --------------------------------------------
Select Description,V_Type From Voucher_Type
    Where logSite_Code='<LogSiteCode>' and Site_Code='<Site_Code>' and NCat='MRE';

-- --------------------------------------------
-- Query 3
-- Uses table: Stock
-- --------------------------------------------
Select IndentDocId,IndentSno from Stock
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 4
-- Uses table: Stock
-- --------------------------------------------
Delete From Stock
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 5
-- Uses table: GIN
-- --------------------------------------------
Delete From GIN
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 6
-- Uses table: GIN
-- --------------------------------------------
Select G.* From GIN G
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 7
-- Uses table: GodownMast
-- Uses table: Itemmast
-- --------------------------------------------
Select S.*,I.Name as ItemName,G.name as GodownName From (Stock S
    Left Join Itemmast I On S.Item=I.Code And I.ItemType='Store')Left
    Join GodownMast G On S.Godowncode=G.Code
    Where S.Docid='<Docid>';

-- --------------------------------------------
-- Query 8
-- Uses table: Stock
-- --------------------------------------------
Select Distinct DocId,VType,VNo From Stock
    Where ContraDocId='<ContraDocId>';

-- --------------------------------------------
-- Query 9
-- Uses table: ItemMast
-- --------------------------------------------
Select CASE WHEN LPurRate<=0 THEN PurchRate ELSE LPurRate END As Rate From ItemMast
    Where Code='<Code>' And RestCode='<RestCode>';

-- --------------------------------------------
-- Query 10
-- Uses table: ItemMast
-- --------------------------------------------
Select PurchRate As Rate From ItemMast
    Where Code='<Code>' And RestCode='<RestCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [GIN]  NOT present in visahl.sql dump (schema unknown)
-- Table [GodownMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Itemmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Purch2]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
