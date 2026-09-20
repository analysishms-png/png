# ==========================================================
# Module: MemberShipRevenueMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: MembershipRevMast
-- --------------------------------------------
Delete From MembershipRevMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: MembershipRevMast
-- --------------------------------------------
SELECT Description,SubsDetails,RefundableYN,SubsChargeYN FROM MembershipRevMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Description;

-- --------------------------------------------
-- Query 3
-- Uses table: MembershipRevMast
-- --------------------------------------------
SELECT Code,Description as Name FROM MembershipRevMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: SubGroup
-- --------------------------------------------
SELECT SubCode as Code,Name FROM SubGroup
    WHERE ActiveYN=1 and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 5
-- Uses table: TaxStru
-- --------------------------------------------
SELECT distinct Code,Name FROM TaxStru
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 6
-- Uses table: SubGroup
-- Uses table: TaxStru
-- --------------------------------------------
SELECT Distinct M.Code as SearchCode,M.*,S.Name As LedgerName,T.Name As TaxStruName FROM (MembershipRevMast M
    Left Join SubGroup S on M.AcCode=S.SubCode)
    Left Join TaxStru T on T.Code=M.TaxStru
    WHERE (M.LOGSITE_CODE='<LogSiteCode>' or M.LOGSITE_CODE='HO')
    ORDER BY M.Code;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [MembershipRevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
