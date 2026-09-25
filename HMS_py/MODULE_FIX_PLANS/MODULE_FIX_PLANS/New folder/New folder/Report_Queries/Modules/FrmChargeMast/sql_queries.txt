# ==========================================================
# Module: FrmChargeMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: RevMast
-- --------------------------------------------
SELECT Code,Name FROM RevMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND FlagAMR='Detail' and FLAGTYPE='FOM'
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: SubGroup
-- --------------------------------------------
SELECT SubCode as Code,Name FROM SubGroup
    WHERE ActiveYN=1 and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: TaxStru
-- --------------------------------------------
SELECT distinct Code,Name FROM TaxStru
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: Subgroup
-- Uses table: TaxStru
-- --------------------------------------------
SELECT distinct R.*,R.Code as SearchCode,S.SubCode as LedgerCode ,S.Name as LedgerName,T.Code as TaxCode,T.Name as TaxName FROM ((RevMast R
    Left Join TaxStru T on T.Code=R.TaxStru)
    Left join Subgroup S on S.SubCode=R.ACCode)
    where (R.LOGSITE_CODE='<LogSiteCode>' or R.LOGSITE_CODE='HO') AND FlagAMR='Detail' and FlagType='FOM';

-- --------------------------------------------
-- Query 5
-- Uses table: RevMast
-- --------------------------------------------
Delete From RevMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: RevMast
-- --------------------------------------------
Select RevMast.Code As SearchCode,RevMast.Name FROM RevMast
    WHERE FlagAMR='Detail' and FLAGTYPE='FOM'
    Order by RevMast.Name;

-- --------------------------------------------
-- Query 7
-- Uses table: revmast
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From revmast
    where Code='<Code>';

-- --------------------------------------------
-- Query 8
-- Uses table: taxstru
-- --------------------------------------------
Select taxcode from taxstru
    where code='<code>';

-- --------------------------------------------
-- Query 9
-- Uses table: taxstru
-- --------------------------------------------
Select Code from taxstru
    where taxcode='<taxcode>' and Code not in ('<Param>');

-- --------------------------------------------
-- Query 10
-- Uses table: RevMast
-- --------------------------------------------
Select Count(*) from RevMast
    where TaxStru='<TaxStru>' and DeskCode='<DeskCode>';

-- --------------------------------------------
-- Query 11
-- Uses table: RevMast
-- --------------------------------------------
Delete From RevMast
    Where TaxCode='<TaxCode>' and DeskCode='<DeskCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [taxstru]  NOT present in visahl.sql dump (schema unknown)
