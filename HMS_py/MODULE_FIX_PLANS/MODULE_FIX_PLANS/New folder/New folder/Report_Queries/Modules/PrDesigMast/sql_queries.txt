# ==========================================================
# Module: PrDesigMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Desig
-- --------------------------------------------
SELECT Code,Name FROM Desig
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: Desig
-- --------------------------------------------
SELECT D.*,D.Code as SearchCode FROM Desig D
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: Desig
-- --------------------------------------------
SELECT * from Desig
    order by Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Desig]  NOT present in visahl.sql dump (schema unknown)
