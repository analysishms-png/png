# ==========================================================
# Module: HallBillEstimate
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Voucher_Type
-- --------------------------------------------
Select Description,V_Type From Voucher_Type
    Where NCat='ESBIL' AND rESTCODE='<rESTCODE>';

-- --------------------------------------------
-- Query 2
-- Uses table: SunTranEst
-- --------------------------------------------
Delete From SunTranEst
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 3
-- Uses table: SunTranHEst
-- --------------------------------------------
Delete From SunTranHEst
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 4
-- Uses table: HallStockEst
-- --------------------------------------------
Delete From HallStockEst
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 5
-- Uses table: HallSale1Est
-- --------------------------------------------
Delete From HallSale1Est
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 6
-- Uses table: Depart
-- --------------------------------------------
Select * from Depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 7
-- Uses table: Voucher_Type
-- --------------------------------------------
Select V_Type As Code,Description As Name,NCat From Voucher_Type
    WHERE NCAT='BBILL' AND RestCode='<RestCode>'
    Order by Description;

-- --------------------------------------------
-- Query 8
-- Uses table: SundryType
-- --------------------------------------------
Select Count(*) From SundryType
    WHERE V_Type='<V_Type>';

-- --------------------------------------------
-- Query 9
-- Uses table: HallSale1Est
-- --------------------------------------------
Select S.* From HallSale1Est S
    Where S.Docid='<Docid>';

-- --------------------------------------------
-- Query 10
-- Uses table: SunTranEst
-- --------------------------------------------
Select S.* From SunTranEst S
    Where S.DocId='<DocId>'
    Order By SNo;

-- --------------------------------------------
-- Query 11
-- Uses table: SunTranHEst
-- --------------------------------------------
Select S.* From SunTranHEst S
    Where S.DocId='<DocId>'
    Order By SNo;

-- --------------------------------------------
-- Query 12
-- Uses table: HallStockEst
-- Uses table: ItemMast
-- --------------------------------------------
Select S.*,I.Name as ItemName From HallStockEst S
    Left Join ItemMast I On S.Item=I.Code And S.RestCode=I.RestCode
    Where S.DocId='<DocId>';

-- --------------------------------------------
-- Query 13
-- Uses table: HallSale1Est
-- --------------------------------------------
Select Distinct DocId,V_Type,V_No From HallSale1Est
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 14
-- Uses table: SundryMast
-- --------------------------------------------
Select IsNull(Max(Nature),'') from SundryMast
    where LOGSITE_CODE='<LogSiteCode>' AND Code='<LogSiteCode>ST';

-- --------------------------------------------
-- Query 15
-- Uses table: Revmast
-- --------------------------------------------
Select DeskCode AS RestCode from Revmast
    where taxstru='<taxstru>' And DeskCode='<DeskCode>';

-- --------------------------------------------
-- Query 16
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS
    LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code
    Where TS.Code='<Code>';

-- --------------------------------------------
-- Query 17
-- Uses table: PrinterSetup
-- --------------------------------------------
Select * from PrinterSetup
    Where RestCode='<RestCode>FOM';

-- --------------------------------------------
-- Query 18
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LOgSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 19
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LOgSite_code='<LogSiteCode>'' AND QTYIss>0;

-- --------------------------------------------
-- Query 20
-- Uses table: FAEnviro
-- --------------------------------------------
Select * From FAEnviro;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [FAEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallSale1Est]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallStockEst]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrinterSetup]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SunTranEst]  NOT present in visahl.sql dump (schema unknown)
-- Table [SunTranHEst]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryType]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
