# ==========================================================
# Module: FaMagic
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SITE
-- --------------------------------------------
SELECT '' as O,SITE_DESC AS Site,SITE_CODE FROM SITE
    ORDER BY SITE_dESC;

-- --------------------------------------------
-- Query 2
-- Uses table: FAENVIRO
-- --------------------------------------------
SELECT * FROM FAENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [FAENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [SITE]  NOT present in visahl.sql dump (schema unknown)
