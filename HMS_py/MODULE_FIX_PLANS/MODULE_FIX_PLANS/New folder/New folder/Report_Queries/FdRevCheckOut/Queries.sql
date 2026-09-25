# ==========================================================
# Module: FdRevCheckOut
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where LOGsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: EPABX_IN
-- --------------------------------------------
Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN;

-- --------------------------------------------
-- Query 3
-- Uses table: PrinterSetup
-- --------------------------------------------
Select * from PrinterSetup
    Where RestCode='<LogSiteCode>FOM';

-- --------------------------------------------
-- Query 4
-- Uses table: enviro
-- --------------------------------------------
Select nCUR from enviro
    where LOGsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: Paycharge
-- --------------------------------------------
Delete from Paycharge
    where Docid='<Docid>' and MarkEntry='*' and FolioNo=<FolioNo>;

-- --------------------------------------------
-- Query 6
-- Uses table: Paycharge
-- --------------------------------------------
Update Paycharge
    set MarkEntry=''
    where markEntry='*' and Docid='<Docid>' and FolioNo=<FolioNo>;

-- --------------------------------------------
-- Query 7
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 8
-- Uses table: RoomOcc
-- --------------------------------------------
Select * from RoomOcc
    Where DocId='<DocId>' And SNo=1;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [EPABX_IN]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [Paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrinterSetup]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
