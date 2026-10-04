# ==========================================================
# Module: FrmChangeSite
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SITE
-- --------------------------------------------
Select S.Site_Code as SearchCode,S.Site_Desc From SITE S
    Where CompCode='<CompCode>'
    Order by S.Site_Desc;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [SITE]  NOT present in visahl.sql dump (schema unknown)
