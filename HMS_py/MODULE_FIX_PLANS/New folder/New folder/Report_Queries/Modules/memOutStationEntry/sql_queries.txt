# ==========================================================
# Module: memOutStationEntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: MemOutStation
-- --------------------------------------------
Delete From MemOutStation
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: MemRevenueForPeriod
-- --------------------------------------------
Delete From MemRevenueForPeriod
    Where Code='<Code>' And Type='<Type>';

-- --------------------------------------------
-- Query 3
-- Uses table: MemOutStation
-- --------------------------------------------
Select Max(RevenueChng) From MemOutStation
    WHERE Code='<Code>' and SITE_CODE='<SITE_CODE>';

-- --------------------------------------------
-- Query 4
-- Uses table: MembershipRevMast
-- --------------------------------------------
SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY MembershipRevMast.Description;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [MemOutStation]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemRevenueForPeriod]  NOT present in visahl.sql dump (schema unknown)
-- Table [MembershipRevMast]  NOT present in visahl.sql dump (schema unknown)
