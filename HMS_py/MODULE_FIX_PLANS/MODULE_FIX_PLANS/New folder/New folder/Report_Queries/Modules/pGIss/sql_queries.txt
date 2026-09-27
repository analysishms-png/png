# ==========================================================
# Module: pGIss
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Enviro
-- --------------------------------------------
Select ReqCompWise,BanquetKitchen,RateEditableInStockIssue,NegativeStockAllowYN from Enviro
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 2
-- Uses table: STOCK
-- --------------------------------------------
select count(*) from STOCK
    where stock.DOCID='<DOCID>' AND STOCK.U_NAME='<UserName>' AND stock.sno=<sno><Param>;

-- --------------------------------------------
-- Query 3
-- Uses table: Voucher_Type
-- --------------------------------------------
Select Description,V_Type From Voucher_Type
    Where NCat='RQI';

-- --------------------------------------------
-- Query 4
-- Uses table: Enviro
-- Uses table: GodownMast
-- --------------------------------------------
Select E.PurchaseGodown,G.Name as GodownName From Enviro E
    Left Join GodownMast G on E.PurchaseGodown=G.Code
    Where E.Logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: Indent
-- Uses table: Stock
-- --------------------------------------------
Update Indent
    Set ClearYN=''
    Where DocId In (Select distinct Contradocid From Stock
    Where DocID='<DocID>');

-- --------------------------------------------
-- Query 6
-- Uses table: Stock
-- --------------------------------------------
Delete from Stock
    where ContraDocId ='<ContraDocId>';

-- --------------------------------------------
-- Query 7
-- Uses table: GodownMast
-- Uses table: Stock
-- --------------------------------------------
Select S.GodownCode,G.Name as GodName From Stock as S
    Left Join GodownMast as G on S.GodownCode=G.Code
    Where S.ContraDocID='<ContraDocID>';

-- --------------------------------------------
-- Query 8
-- Uses table: Stock
-- --------------------------------------------
Select count(*) from Stock
    where DocID='<DocID>';

-- --------------------------------------------
-- Query 9
-- Uses table: STOCK
-- --------------------------------------------
Delete From STOCK
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 10
-- Uses table: Indent
-- --------------------------------------------
Update Indent
    set ClearYN='Y'
    where Docid='<Docid><Param>;

-- --------------------------------------------
-- Query 11
-- Uses table: GodownMast
-- Uses table: Subgroup
-- Uses table: Voucher_Type
-- --------------------------------------------
Select Distinct SH.Docid,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,SH.Vtime,SH.Remarks,SH.GodownCode,D.NAME AS DEPARTNAME ,VT.Description,VT.NCAT,SH.Company,Sub.Name as Compname,SH.RefDocId From (Stock SH
    left Join GodownMast D on D.Code=SH.GodownCode)
    left join Voucher_Type VT on Vt.V_type=SH.VType
    left join Subgroup Sub on SH.Company=Sub.Subcode
    where DocID='<DocID>';

-- --------------------------------------------
-- Query 12
-- Uses table: Stock
-- --------------------------------------------
Select GodownCode From Stock
    Where ContraDocID='<ContraDocID>';

-- --------------------------------------------
-- Query 13
-- Uses table: HallBook
-- --------------------------------------------
Select DocId As Code, Cast(VNo as varchar) Name,PartyName Party,Vdate From HallBook
    Where Docid='<Docid>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [GodownMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallBook]  NOT present in visahl.sql dump (schema unknown)
-- Table [Indent]  NOT present in visahl.sql dump (schema unknown)
-- Table [STOCK]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
