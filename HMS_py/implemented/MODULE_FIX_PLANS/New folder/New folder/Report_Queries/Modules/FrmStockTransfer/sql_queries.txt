# ==========================================================
# Module: FrmStockTransfer
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Stock
-- --------------------------------------------
Delete From Stock
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 2
-- Uses table: ItemMast
-- --------------------------------------------
Select S.Docid,S.VNo,S.VDate,S.QtyIss as Qty,S.Unit,S.Rate,S.Amount,S.GodownCode, I.Name as ItemName,G.Name as GodName From ((Stock as S
    Left Join ItemMast as I on S.Item=I.Code And I.ItemType='Store')';

-- --------------------------------------------
-- Query 3
-- Uses table: Stock
-- --------------------------------------------
Select Count(*) From Stock
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 4
-- Uses table: ITEMRATE
-- --------------------------------------------
SELECT RATE FROM ITEMRATE
    WHERE ITEMCODE='<ITEMCODE>' AND RestCode='<RestCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: ItemMast
-- Uses table: Stock
-- --------------------------------------------
Select Distinct SH.Docid,SH.SNo,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,SH.Rate,SH.Amount,SH.GodownCode,SH.Item,SH.QtyRec,SH.Unit,SH.RECDQty,SH.RECDUnit,SH.ConvRatio,SH.ContraDocId,I.Name As ItemName From Stock SH
    Left Join ItemMast I On I.Code=SH.Item And I.ItemType='Store'
    where DocID='<DocID>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ITEMRATE]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
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
