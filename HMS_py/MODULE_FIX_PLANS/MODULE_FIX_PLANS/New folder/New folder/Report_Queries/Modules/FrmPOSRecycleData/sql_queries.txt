# ==========================================================
# Module: FrmPOSRecycleData
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name,RestType,LOGSITE_CODE FROM Depart
    Where Code<>'<LogSiteCode>RS' And (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND OutletYN='Y' and RestType='Outlet'
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: DEPART
-- --------------------------------------------
SELECT SHORTNAME FROM DEPART
    WHERE CODE='<CODE>'And Logsite_Code='<Logsite_Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
