# ==========================================================
# Module: MemAssistant
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: MembershipRevMast
-- --------------------------------------------
SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY MembershipRevMast.Description;

-- --------------------------------------------
-- Query 2
-- Uses table: Ledger
-- --------------------------------------------
Delete From Ledger
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 3
-- Uses table: MemBill
-- --------------------------------------------
Delete From MemBill
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 4
-- Uses table: MemBill1
-- --------------------------------------------
Delete From MemBill1
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 5
-- Uses table: MemBill2
-- --------------------------------------------
Delete From MemBill2
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 6
-- Uses table: RevMast
-- --------------------------------------------
Select Code,RoundOff from RevMast
    Where (LogSite_Code='<LogSiteCode>' Or LogSite_Code='HO')
    Order By Name;

-- --------------------------------------------
-- Query 7
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS
    LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code
    Where TS.Code='<Code>';

-- --------------------------------------------
-- Query 8
-- Uses table: MemcatMast
-- --------------------------------------------
select code,Name from MemcatMast
    where code='<code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemBill]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemBill1]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemBill2]  NOT present in visahl.sql dump (schema unknown)
-- Table [MembershipRevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemcatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
