# ==========================================================
# Module: memCatChngEntry
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
-- Uses table: MemCatChngDetail
-- --------------------------------------------
Delete From MemCatChngDetail
    Where Code='<Code>';

-- --------------------------------------------
-- Query 3
-- Uses table: MemRevenueForPeriod
-- --------------------------------------------
Delete From MemRevenueForPeriod
    Where Code='<Code>' And Type='<Type>';

-- --------------------------------------------
-- Query 4
-- Uses table: MemCatChngDetail
-- --------------------------------------------
Select Max(RevenueChng) From MemCatChngDetail
    WHERE Code='<Code>' and SITE_CODE='<SITE_CODE>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [MemCatChngDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemRevenueForPeriod]  NOT present in visahl.sql dump (schema unknown)
-- Table [MembershipRevMast]  NOT present in visahl.sql dump (schema unknown)
