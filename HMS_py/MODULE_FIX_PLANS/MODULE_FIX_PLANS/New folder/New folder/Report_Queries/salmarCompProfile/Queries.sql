# ==========================================================
# Module: salmarCompProfile
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: CompanyProfile
-- --------------------------------------------
SELECT * FROM CompanyProfile
    WHERE Site_Code='<Site_Code>' AND (LogSite_Code='<LogSiteCode>' OR LogSite_Code='HO');

-- --------------------------------------------
-- Query 2
-- Uses table: CompanyProfile
-- --------------------------------------------
select * FROM CompanyProfile
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [CompanyProfile]  NOT present in visahl.sql dump (schema unknown)
