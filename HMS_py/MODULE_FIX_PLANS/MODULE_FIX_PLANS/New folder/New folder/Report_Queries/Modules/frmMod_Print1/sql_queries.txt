# ==========================================================
# Module: frmMod_Print1
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: PrinterSetup
-- --------------------------------------------
SELECT printersetup.* FROM PrinterSetup
    WHERE PrinterSetup.SITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: Depart
-- --------------------------------------------
Select Max(Name) From Depart
    Where Code='<Code>' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: PrintMast
-- --------------------------------------------
Select Distinct Code as ModCode,ModuleDescription,ModType,RestCode from PrintMast
    where SITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: PRINTERSETUP
-- --------------------------------------------
DELETE FROM PRINTERSETUP
    WHERE SITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 5
-- --------------------------------------------
Select Distinct ModType,PrintMast.RestCode from <Param>.PrintMast
    WHERE PrintMast.SITE_CODE='<LogSiteCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [PRINTERSETUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrintMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrinterSetup]  NOT present in visahl.sql dump (schema unknown)
