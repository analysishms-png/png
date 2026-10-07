# ==========================================================
# Module: FdGrpdetCheckOut
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
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: RoomOcc
-- --------------------------------------------
Select * from RoomOcc
    Where DocId='<DocId>' And SNo=1;

-- --------------------------------------------
-- Query 7
-- Uses table: Enviro
-- --------------------------------------------
Select Max(IsNull(RoomCheckOutClearanceYN,'')) from Enviro
    where lOGSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 8
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where lOGSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 9
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct Split,Bill_No from paycharge
    where (ContraDocId is NULL or contradocid='') and folionodocid in ('<Param>);

-- --------------------------------------------
-- Query 10
-- Uses table: ROOMOCC
-- --------------------------------------------
SELECT * FROM ROOMOCC
    WHERE TYPE='O'
    ORDER BY CHKOUTDATE,CHKOUTTIME;

-- --------------------------------------------
-- Query 11
-- Uses table: PAYCHARGE
-- --------------------------------------------
SELECT * FROM PAYCHARGE
    WHERE FOLIONO<>0 AND VTYPE Not In ('ARRES','ADRES');

-- --------------------------------------------
-- Query 12
-- Uses table: paycharge
-- --------------------------------------------
Select * from paycharge
    where (ContraDocId is NULL or contradocid='') and folionoDocid in ('<Param>)
    order by vDate,VNO,SNO;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [EPABX_IN]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [PAYCHARGE]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrinterSetup]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMOCC]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [paycharge]  NOT present in visahl.sql dump (schema unknown)
