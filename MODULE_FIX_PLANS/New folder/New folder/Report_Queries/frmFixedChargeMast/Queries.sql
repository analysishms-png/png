# ==========================================================
# Module: frmFixedChargeMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: FixedCharge
-- --------------------------------------------
SELECT Code,Name FROM FixedCharge
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT distinct Revmast.Code as Code,RevMast.Name as Name,RevMast.taxstru as TaxCode,TaxStru.name as Taxname FROM RevMast
    left join TaxStru on Taxstru.Code=Revmast.Taxstru
    where (Revmast.LOGSITE_CODE='<LogSiteCode>' or RevMast.LOGSITE_CODE='HO') AND FlagType='FOM' AND FlagAMR='Detail'
    ORDER BY Revmast.Name;

-- --------------------------------------------
-- Query 3
-- Uses table: TaxStru
-- --------------------------------------------
SELECT distinct Code,Name FROM TaxStru
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT distinct R.*,R.Code as SearchCode,S.Code as RevCode ,S.Name as RevName,T.Code as TaxCode,T.Name as TaxName FROM ((FixedCharge R
    Left Join TaxStru T on T.Code=R.TaxStru)
    Left join RevMast S on S.Code=R.RevCode)
    WHERE (R.LOGSITE_CODE='<LogSiteCode>' or R.LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 5
-- Uses table: FixedCharge
-- --------------------------------------------
Delete From FixedCharge
    Where Code='<Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: RevMast
-- Uses table: SubGroup
-- --------------------------------------------
SELECT FixedCharge.Name, FixedCharge.SName, FixedCharge.Adult, FixedCharge.FlatRate, S.Name AS AccName FROM (FixedCharge
    INNER JOIN RevMast ON FixedCharge.Revcode = RevMast.Code)
    INNER JOIN SubGroup AS S ON RevMast.ACCode = S.SubCode
    where (FixedCharge.LOGSITE_CODE='<LogSiteCode>' or FixedCharge.LOGSITE_CODE='HO')
    Order by FixedCharge.Name;

-- --------------------------------------------
-- Query 7
-- Uses table: FixedCharge
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From FixedCharge;

-- --------------------------------------------
-- Query 8
-- Uses table: FixedCharge
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From FixedCharge
    where Code='<Code>';

-- --------------------------------------------
-- Query 9
-- Uses table: taxstru
-- --------------------------------------------
Select taxcode from taxstru
    where code='<code>';

-- --------------------------------------------
-- Query 10
-- Uses table: taxstru
-- --------------------------------------------
Select Code from taxstru
    where taxcode='<taxcode>' and Code not in ('<Param>');

-- --------------------------------------------
-- Query 11
-- Uses table: FixedCharge
-- --------------------------------------------
Select Count(*) from FixedCharge
    where TaxStru='<TaxStru>' and DeskCode='<DeskCode>';

-- --------------------------------------------
-- Query 12
-- Uses table: FixedCharge
-- --------------------------------------------
Delete From FixedCharge
    Where TaxCode='<TaxCode>' and DeskCode='<DeskCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [FixedCharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [taxstru]  NOT present in visahl.sql dump (schema unknown)
