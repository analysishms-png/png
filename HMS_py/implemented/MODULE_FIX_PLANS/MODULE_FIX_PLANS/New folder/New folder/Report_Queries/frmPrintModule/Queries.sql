# ==========================================================
# Module: frmPrintModule
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Printmast
-- --------------------------------------------
Select iif(IsNull(Max(val(Code))),1,Max(val(Code))+1)AS MyCode From Printmast;

-- --------------------------------------------
-- Query 2
-- Uses table: PrintFormats
-- --------------------------------------------
SELECT ModuleName as Code, ModuleDescription as Name FROM PrintFormats
    WHERE SITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: Depart
-- --------------------------------------------
Select Code,Name,ShortName From Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND RestType in ('FOM','Outlet','Room Service')
    Order by Name;

-- --------------------------------------------
-- Query 4
-- Uses table: PrintMast
-- --------------------------------------------
SELECT * From PrintMast
    WHERE SITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: RevMast
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From RevMast
    WHERE SUBSTRING(Code,2,1) ='<Param>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrintFormats]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrintMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Printmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
