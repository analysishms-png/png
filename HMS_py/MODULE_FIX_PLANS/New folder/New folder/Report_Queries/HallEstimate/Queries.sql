# ==========================================================
# Module: HallEstimate
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Voucher_Type
-- --------------------------------------------
Select Description,V_Type From Voucher_Type
    Where NCat='EBILL' AND rESTCODE='<rESTCODE>';

-- --------------------------------------------
-- Query 2
-- Uses table: SunTran
-- --------------------------------------------
Delete From SunTran
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 3
-- Uses table: SunTranH
-- --------------------------------------------
Delete From SunTranH
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 4
-- Uses table: HallStock
-- --------------------------------------------
Delete From HallStock
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 5
-- Uses table: HallSale1
-- --------------------------------------------
Delete From HallSale1
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 6
-- Uses table: HallSale1
-- --------------------------------------------
Select BookDocId from HallSale1;

-- --------------------------------------------
-- Query 7
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 8
-- Uses table: DEPART
-- --------------------------------------------
Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H
    WHERE H.RESTTYPE IN('Banquet')
    Order by H.Name;

-- --------------------------------------------
-- Query 9
-- Uses table: Voucher_Type
-- --------------------------------------------
Select V_Type As Code,Description As Name,NCat From Voucher_Type
    WHERE NCAT='BBILL' AND RestCode='<RestCode>'
    Order by Description;

-- --------------------------------------------
-- Query 10
-- Uses table: SundryType
-- --------------------------------------------
Select Count(*) From SundryType
    WHERE V_Type='<V_Type>';

-- --------------------------------------------
-- Query 11
-- Uses table: PrinterSetup
-- --------------------------------------------
Select * from PrinterSetup
    Where RestCode='<RestCode>FOM';

-- --------------------------------------------
-- Query 12
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LogSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 13
-- Uses table: ItemMast
-- --------------------------------------------
SELECT Name FROM ItemMast
    WHERE Code='<Code>' And RestCode='<RestCode>';

-- --------------------------------------------
-- Query 14
-- Uses table: Enviro
-- Uses table: HallBooK
-- Uses table: SubGroup
-- --------------------------------------------
Select SG.Name AS CompanyName FROM HallBooK HB
    LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode
    WHERE HB.DocId='Select * from Enviro
    where LogSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 15
-- Uses table: HallSale1
-- --------------------------------------------
Select S.* From HallSale1 S
    Where S.Docid='<Docid>';

-- --------------------------------------------
-- Query 16
-- Uses table: SunTran
-- --------------------------------------------
Select S.* From SunTran S
    Where S.DocId='<DocId>'
    Order By SNo;

-- --------------------------------------------
-- Query 17
-- Uses table: SunTranH
-- --------------------------------------------
Select S.* From SunTranH S
    Where S.DocId='<DocId>'
    Order By SNo;

-- --------------------------------------------
-- Query 18
-- Uses table: HallStock
-- Uses table: ItemMast
-- --------------------------------------------
Select S.*,I.Name as ItemName From HallStock S
    Left Join ItemMast I On S.Item=I.Code And S.RestCode=I.REstCODE
    Where S.DocId='<DocId>';

-- --------------------------------------------
-- Query 19
-- Uses table: HallSale1
-- --------------------------------------------
Select Distinct DocId,V_Type,V_No From HallSale1
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 20
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS
    LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code
    Where TS.Code='<Code>';

-- --------------------------------------------
-- Query 21
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LogSite_code='<LogSiteCode>'' AND QTYIss>0;

-- --------------------------------------------
-- Query 22
-- Uses table: SunTransaction
-- Uses table: SundryMast
-- --------------------------------------------
SELECT ST.Amt AS Amount,ST.SunCode AS Code,ST.SNo as SNo, SM.Name AS SName FROM SunTransaction AS ST
    INNER JOIN SundryMast SM ON ST.SunCode=SM.Code
    WHERE DocId='<DocId>'
    Order by SNo;

-- --------------------------------------------
-- Query 23
-- Uses table: FAEnviro
-- --------------------------------------------
Select * From FAEnviro;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [FAEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallBooK]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallStock]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrinterSetup]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [SunTranH]  NOT present in visahl.sql dump (schema unknown)
-- Table [SunTransaction]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryType]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
