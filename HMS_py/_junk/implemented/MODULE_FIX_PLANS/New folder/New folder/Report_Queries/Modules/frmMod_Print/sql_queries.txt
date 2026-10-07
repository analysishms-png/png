# ==========================================================
# Module: frmMod_Print
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: PRINTERSETUP
-- --------------------------------------------
DELETE FROM PRINTERSETUP
    WHERE SITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: PrinterSetup
-- --------------------------------------------
SELECT printersetup.* FROM PrinterSetup
    WHERE PrinterSetup.SITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: Depart
-- --------------------------------------------
Select Max(Name) From Depart
    Where Code='<Code>' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: PrintMast
-- --------------------------------------------
Select Distinct ModType,PrintMast.RestCode from PrintMast
    where SITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: PrintMast
-- --------------------------------------------
Select Distinct Code as ModCode,ModuleDescription,ModType,RestCode from PrintMast
    where SITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: PrintMast
-- --------------------------------------------
Select Distinct Max(Code) as ModCode,RestCode from PrintMast
    where SITE_CODE='<LogSiteCode>' And ModType='POS'
    Group By RestCode;

-- --------------------------------------------
-- Query 7
-- Uses table: PrintMast
-- --------------------------------------------
Select Distinct Max(Code) as ModCode,'KOT' As ModType,RestCode from PrintMast
    where SITE_CODE='<LogSiteCode>' And ModType='POS'
    Group By RestCode;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [PRINTERSETUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrintMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrinterSetup]  NOT present in visahl.sql dump (schema unknown)
