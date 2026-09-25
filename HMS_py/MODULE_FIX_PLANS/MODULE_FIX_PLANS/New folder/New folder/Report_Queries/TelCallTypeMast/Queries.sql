# ==========================================================
# Module: TelCallTypeMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: TelCallCode
-- --------------------------------------------
SELECT Count(*) FROM TelCallCode
    WHERE CallTypeCode='<CallTypeCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: RevMast
-- --------------------------------------------
Delete From RevMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 3
-- Uses table: TelCallType
-- --------------------------------------------
Delete From TelCallType
    Where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: TelCallType
-- --------------------------------------------
Select TelCallType.Code As SearchCode,TelCallType.CallType as [Call Type],TelCallType.ShortName as [Short Name] FROM TelCallType
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order by TelCallType.CallType;

-- --------------------------------------------
-- Query 5
-- Uses table: TelCallType
-- --------------------------------------------
SELECT Code,CallType FROM TelCallType
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY CallType;

-- --------------------------------------------
-- Query 6
-- Uses table: SubGroup
-- --------------------------------------------
SELECT SubCode as Code,Name FROM SubGroup
    WHERE ActiveYN=1 and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 7
-- Uses table: TaxStru
-- --------------------------------------------
SELECT distinct Code,Name FROM TaxStru
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 8
-- Uses table: Subgroup
-- Uses table: TaxStru
-- --------------------------------------------
SELECT distinct R.*,R.Code as SearchCode,S.SubCode as LedgerCode ,S.Name as LedgerName,T.Code as TaxCode,T.Name as TaxName FROM ((TelCallType R
    Left Join TaxStru T on T.Code=R.TaxStru)
    Left join Subgroup S on S.SubCode=R.ACCode)
    WHERE (R.LOGSITE_CODE='<LogSiteCode>' or R.LOGSITE_CODE='HO');

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
-- Uses table: RevMast
-- --------------------------------------------
Select Count(*) from RevMast
    where TaxStru='<TaxStru>' and DeskCode='<DeskCode>';

-- --------------------------------------------
-- Query 12
-- Uses table: RevMast
-- --------------------------------------------
Delete From RevMast
    Where TaxCode='<TaxCode>' and DeskCode='<DeskCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [TelCallCode]  NOT present in visahl.sql dump (schema unknown)
-- Table [TelCallType]  NOT present in visahl.sql dump (schema unknown)
-- Table [taxstru]  NOT present in visahl.sql dump (schema unknown)
