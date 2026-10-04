# ==========================================================
# Module: FrmFacilityMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: FacilityMast
-- --------------------------------------------
SELECT Code,Name FROM FacilityMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');

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
SELECT distinct F.*,F.Code as SearchCode,S.SubCode as LedgerCode ,S.Name as LedgerName,T.Code as TaxCode,T.Name as TaxName FROM ((FacilityMast F
    Left Join TaxStru T on T.Code=F.TaxStru)
    Left join Subgroup S on S.SubCode=F.ACCode)
    where (F.LOGSITE_CODE='<LogSiteCode>' or F.LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 5
-- Uses table: FacilityMast
-- --------------------------------------------
Delete From FacilityMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: Voucher_Type
-- --------------------------------------------
Delete From Voucher_Type
    Where V_Type='<V_Type>';

-- --------------------------------------------
-- Query 7
-- Uses table: Voucher_Prefix
-- --------------------------------------------
Delete From Voucher_Prefix
    Where V_Type='<V_Type>';

-- --------------------------------------------
-- Query 8
-- Uses table: Subgroup
-- Uses table: TaxStru
-- --------------------------------------------
SELECT distinct F.*,F.Code as SearchCode,S.SubCode as LedgerCode ,S.Name as LedgerName,T.Code as TaxCode,T.Name as TaxName FROM ((FacilityMast F
    Left Join TaxStru T on T.Code=F.TaxStru)
    Left join Subgroup S on S.SubCode=F.ACCode)
    where (F.LOGSITE_CODE='<LogSiteCode>' or F.LOGSITE_CODE='<LOGSITE_CODE>')
    Order by F.Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [FacilityMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Prefix]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
