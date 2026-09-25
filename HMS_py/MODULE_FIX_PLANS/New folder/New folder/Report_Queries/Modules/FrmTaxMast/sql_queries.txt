# ==========================================================
# Module: FrmTaxMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: REVMAST
-- --------------------------------------------
SELECT Code,Name FROM REVMAST
    WHERE FIELDTYPE='T' AND (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: SubGroup
-- --------------------------------------------
SELECT S.SubCode as Code,S.Name FROM SubGroup S
    WHERE S.ActiveYN=1 And (S.LOGSITE_CODE='<LogSiteCode>' or S.LOGSITE_CODE='HO')
    ORDER BY S.Name;

-- --------------------------------------------
-- Query 3
-- Uses table: SundryMast
-- --------------------------------------------
SELECT Code,Name FROM SundryMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: RevMast
-- Uses table: SubGroup
-- Uses table: Subgroup
-- Uses table: SundryMast
-- --------------------------------------------
SELECT R.*,R.Code as SearchCode,R.ACCode as LedgerCode,S.Name as LedgerName,R.PayableAc as PayableAcCode,SP.Name as PayableAcName,R.UnregisteredAc as UnregisteredAcCode,SU.Name as UnregisteredAcName,SundryMast.Code as SundryCode,SundryMast.Name as SundryName FROM RevMast R
    Left join Subgroup S on S.SubCode=R.ACCode
    Left Join SubGroup SP On SP.SubCode=R.PayableAc
    Left Join SubGroup SU On SU.SubCode=R.UnregisteredAc
    Left Join SundryMast on SundryMast.Code=R.Sundry
    WHERE FIELDTYPE='T' AND (R.LOGSITE_CODE='<LogSiteCode>' or R.LOGSITE_CODE='HO')
    order by R.Name;

-- --------------------------------------------
-- Query 5
-- Uses table: RevMast
-- --------------------------------------------
Delete From RevMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: RevMast
-- Uses table: Subgroup
-- Uses table: SundryMast
-- --------------------------------------------
SELECT R.*,S.SubCode as LedgerCode,S.Name as LedgerName,SM.Name as SundryName FROM RevMast R
    Left Join SundryMast SM On R.Sundry=SM.Code
    Left join Subgroup S on S.SubCode=R.ACCode
    where (R.LOGSITE_CODE='<LogSiteCode>' or R.LOGSITE_CODE='HO') and FieldType='T';

-- --------------------------------------------
-- Query 7
-- Uses table: revmast
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From revmast
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [REVMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [revmast]  NOT present in visahl.sql dump (schema unknown)
