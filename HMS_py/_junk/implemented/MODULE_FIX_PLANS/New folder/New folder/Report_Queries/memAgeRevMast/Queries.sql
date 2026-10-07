# ==========================================================
# Module: memAgeRevMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: MemCatMast
-- --------------------------------------------
SELECT MemCatMast.Code, MemCatMast.Name FROM MemCatMast
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY MemCatMast.Name;

-- --------------------------------------------
-- Query 2
-- Uses table: MembershipRevMast
-- --------------------------------------------
SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY MembershipRevMast.Description;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [MemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [MembershipRevMast]  NOT present in visahl.sql dump (schema unknown)
