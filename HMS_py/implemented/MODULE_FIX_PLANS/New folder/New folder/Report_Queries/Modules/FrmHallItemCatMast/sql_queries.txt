# ==========================================================
# Module: FrmHallItemCatMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ItemCatMast
-- --------------------------------------------
SELECT ItemCatMast.Code, ItemCatMast.Name FROM ItemCatMast
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and ItemCatMast.RestCode='<RestCode>'
    ORDER BY ItemCatMast.Name;

-- --------------------------------------------
-- Query 2
-- Uses table: TaxStru
-- Uses table: ViewSubGroup
-- --------------------------------------------
SELECT distinct IC.Code,IC.Name AS ItemCat,IC.RoundOff,IC.AcName,IC.TaxStru As TaxStruCode,IC.Status as Status,IC.Flag,IC.CatType,IC.RestCode,IC.TaxStru,VS.Name As SaleAc,TaxStru.Name As TaxStructure,IC.Drcr,IC.SITE_CODE,IC.LOGSITE_CODE FROM ((ItemCatMast IC
    Inner Join ViewSubGroup VS On IC.AcName=VS.SubCode)
    Inner Join TaxStru On IC.TaxStru=TaxStru.Code)
    Where (IC.LOGSITE_CODE='<LogSiteCode>' or IC.LOGSITE_CODE='HO') and IC.RestCode='<RestCode>'
    ORDER BY IC.Name;

-- --------------------------------------------
-- Query 3
-- Uses table: ViewSubGroup
-- --------------------------------------------
Select SubCode As Code,Name From ViewSubGroup
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND Left(MainGrCodeS,3) IN ('230','240','250','260','270','280')
    Order by Name;

-- --------------------------------------------
-- Query 4
-- Uses table: TaxStru
-- --------------------------------------------
Select distinct Code As Code,Name From TaxStru
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order by Name;

-- --------------------------------------------
-- Query 5
-- Uses table: RevMast
-- --------------------------------------------
Select Code From RevMast
    Where Name='<Name>';

-- --------------------------------------------
-- Query 6
-- Uses table: PayCharge
-- --------------------------------------------
Select Count(*) from PayCharge
    Where PayType='<PayType>';

-- --------------------------------------------
-- Query 7
-- Uses table: ItemCatMast
-- --------------------------------------------
Delete From ItemCatMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 8
-- Uses table: RevMast
-- --------------------------------------------
Delete From RevMast
    Where Name='<Name>';

-- --------------------------------------------
-- Query 9
-- Uses table: TaxStru
-- Uses table: ViewSubGroup
-- --------------------------------------------
SELECT distinct IC.Code,IC.Name AS ItemCat,IC.RoundOff,IC.AcName,IC.TaxStru As TaxStruCode,IC.Status,IC.Flag,IC.CatType,IC.RestCode,IC.TaxStru,VS.Name As SaleAc,TaxStru.Name As TaxStructure,IC.Drcr FROM ((ItemCatMast IC
    Left Join ViewSubGroup VS On IC.AcName=VS.SubCode)
    Left Join TaxStru On IC.TaxStru=TaxStru.Code)
    Where (IC.LOGSITE_CODE='<LogSiteCode>' or IC.LOGSITE_CODE='HO') and IC.RestCode='<RestCode>'
    ORDER BY IC.Name;

-- --------------------------------------------
-- Query 10
-- Uses table: Revmast
-- --------------------------------------------
Select * from Revmast
    where Name ='Select * from Revmast
    where Name ='BANQ - <Param>' and site_code='<site_code>' and site_code='<site_code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [ViewSubGroup]  NOT present in visahl.sql dump (schema unknown)
