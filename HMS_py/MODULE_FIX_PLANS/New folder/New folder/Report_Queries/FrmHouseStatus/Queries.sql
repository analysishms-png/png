# ==========================================================
# Module: FrmHouseStatus
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name from Depart
    Where OutletYN='Y'
    Order By Name;

-- --------------------------------------------
-- Query 2
-- Uses table: Kot
-- --------------------------------------------
Select DISTINCT RoomNo as Name from Kot
    where Pending='Y' and NcKot<>'Y' and Delflag='' and VoidYN='N' and restcode='<restcode>';

-- --------------------------------------------
-- Query 3
-- Uses table: Kot
-- --------------------------------------------
Select DISTINCT roomno as Name from Kot
    where Pending='Y' and NcKot<>'Y' and Delflag='' and VoidYN='N' and restcode='<restcode>';

-- --------------------------------------------
-- Query 4
-- Uses table: RoomOcc
-- Uses table: roommast
-- --------------------------------------------
SELECT Roommast.code as name from RoomOcc
    Left Join roommast on roomocc.RoomNo=Roommast.code
    where roomocc.type not in ('O','C') and roommast.roomstat='D' and roommast.type='RO'
    ORDER BY Roommast.Code;

-- --------------------------------------------
-- Query 5
-- Uses table: ROOMCAT
-- --------------------------------------------
SELECT * FROM ROOMCAT
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: RoomOcc
-- --------------------------------------------
SELECT RoomNo as Name FROM RoomOcc
    WHERE Type = ''
    ORDER BY RoomNo;

-- --------------------------------------------
-- Query 7
-- Uses table: paycharge
-- Uses table: roomocc
-- --------------------------------------------
select Distinct roomocc.roomno as Name from roomocc
    Left join paycharge on paycharge.foliono=roomocc.foliono
    where roomocc.type='' and paycharge.bill_no>0
    ORDER BY RoomOcc.RoomNo;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Kot]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMCAT]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [roommast]  NOT present in visahl.sql dump (schema unknown)
-- Table [roomocc]  NOT present in visahl.sql dump (schema unknown)
