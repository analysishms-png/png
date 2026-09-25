# ==========================================================
# Module: kClStk
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Ledger
-- --------------------------------------------
Delete From Ledger
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 2
-- Uses table: Purch1
-- --------------------------------------------
Delete From Purch1
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 3
-- Uses table: Stock
-- --------------------------------------------
Delete From Stock
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 4
-- Uses table: enviro
-- --------------------------------------------
Select AutoFillItemInKitchenClosingYN from enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: GodownMast
-- Uses table: KClStk
-- --------------------------------------------
Select DISTINCT K.DOCID,K.VDATE, GodownMast.Name as Location,GodownMast.Code as DepartCode,K.Vno,K.Vtype,K.VPrefix From KClStk K
    left join GodownMast on GodownMast.Code=K.DepartCode
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 6
-- Uses table: ItemMast
-- Uses table: KcLsTK
-- --------------------------------------------
Select S.*,I.Name as ItemName From KcLsTK S
    Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store'
    Where S.Docid='<Docid>'
    Order By I.Name;

-- --------------------------------------------
-- Query 7
-- Uses table: DateLock
-- --------------------------------------------
Select Name, Srno,IsNull(SDate,'') as SDate,IsNull(EDate,'') as EDate From DateLock
    Where Name='Purchase Bill Entry';

-- --------------------------------------------
-- Query 8
-- Uses table: Depart
-- --------------------------------------------
Select Code,D.Name as Name From Depart D
    Order by Name;

-- --------------------------------------------
-- Query 9
-- Uses table: ItemMast
-- Uses table: Stock
-- --------------------------------------------
SELECT Distinct Stock.Item, ItemMast.Name,Itemmast.IssueUnit As Unit FROM Stock
    INNER JOIN ItemMast ON Stock.Item = ItemMast.Code And ItemMast.ItemType='Store'
    where GodownCode='<GodownCode>' and RecdQty>0
    Order By ItemMast.Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DateLock]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [GodownMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [KClStk]  NOT present in visahl.sql dump (schema unknown)
-- Table [KcLsTK]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [Purch1]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
