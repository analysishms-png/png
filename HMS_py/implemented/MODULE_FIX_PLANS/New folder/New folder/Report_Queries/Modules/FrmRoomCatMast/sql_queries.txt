# ==========================================================
# Module: FrmRoomCatMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: RevMast
-- --------------------------------------------
Select distinct Code,Name,TaxStru From RevMast
    WHERE DESKCODE='<DESKCODE>' AND (LOGSITE_CODE='<LOGSITE_CODE>' or LOGSITE_CODE='HO') AND FLAGTYPE='FOM' AND FLAGAMR='Detail'
    Order by Name;

-- --------------------------------------------
-- Query 2
-- Uses table: RoomCat
-- --------------------------------------------
Delete From RoomCat
    Where Code='<Code>';

-- --------------------------------------------
-- Query 3
-- Uses table: RateList
-- --------------------------------------------
Delete From RateList
    Where RoomCat='<RoomCat>';

-- --------------------------------------------
-- Query 4
-- Uses table: RateList
-- --------------------------------------------
SELECT 0 AS Rate1, 0 AS Rate2, 0 AS Rate3, 0 AS Rate4, 0 AS Rate5, '' AS OccType, 0 AS RateW, 0 AS RateM FROM RateList
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 5
-- Uses table: RateList
-- --------------------------------------------
Delete From RateList
    Where RoomCat='<RoomCat>' and RoomNo='*****' AND Code='*';

-- --------------------------------------------
-- Query 6
-- Uses table: RoomCat
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From RoomCat
    where Code='<Code>';

-- --------------------------------------------
-- Query 7
-- Uses table: RoomCat
-- --------------------------------------------
Select RoomCat.* From RoomCat
    where RoomCat.Code='<Code>';

-- --------------------------------------------
-- Query 8
-- Uses table: RevMast
-- Uses table: roomcat
-- --------------------------------------------
Select Name from RevMast
    where Code=(select revcode from roomcat
    where code='<code>');

-- --------------------------------------------
-- Query 9
-- Uses table: RateList
-- Uses table: RoomCat
-- --------------------------------------------
Select RateList.* From RateList
    Left Join RoomCat on RateList.RoomCat=RoomCat.Code
    where RateList.RoomCat='<RoomCat>' ANd RoomNo='*****' and RateList.Code='*';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [RateList]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomCat]  NOT present in visahl.sql dump (schema unknown)
-- Table [roomcat]  NOT present in visahl.sql dump (schema unknown)
