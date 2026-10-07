# ==========================================================
# Module: FrmRoomMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: RoomMast
-- --------------------------------------------
Delete From RoomMast
    Where Code='<Code>' AND TYPE='RO';

-- --------------------------------------------
-- Query 2
-- Uses table: RoomMast1
-- --------------------------------------------
Delete From RoomMast1
    Where RoomCode='<RoomCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: RateList
-- --------------------------------------------
Delete From RateList
    Where RoomNo='<RoomNo>';

-- --------------------------------------------
-- Query 4
-- Uses table: RateList
-- Uses table: roomcat
-- --------------------------------------------
SELECT RT.Rate1, RT.Rate2, RT.Rate3, RT.Rate4, RT.Rate5, RT.OccType, RT.RateW, RT.RateM FROM RateList AS RT
    LEFT JOIN roomcat ON (RT.RoomCat = Roomcat.Code)
    where (RT.LOGSITE_CODE='<LogSiteCode>' or RT.LOGSITE_CODE='HO') and RT.ROOMNO='<ROOMNO>' AND RT.CODE='*';

-- --------------------------------------------
-- Query 5
-- Uses table: roommast
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From roommast
    where Code='<Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: Depart
-- Uses table: RoomMast
-- --------------------------------------------
SELECT RoomMast.*, Depart.Name as Department FROM RoomMast
    LEFT JOIN Depart ON RoomMast.MaidStation = Depart.Code
    where ROOMMAST.TYPE='RO' AND RoomMast.Code='<Code>';

-- --------------------------------------------
-- Query 7
-- Uses table: ROOMFEATURE
-- --------------------------------------------
SELECT * FROM ROOMFEATURE
    where (LOGSITE_CODE='<LogSiteCode>')
    ORDER BY NAME;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMFEATURE]  NOT present in visahl.sql dump (schema unknown)
-- Table [RateList]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast1]  NOT present in visahl.sql dump (schema unknown)
-- Table [roomcat]  NOT present in visahl.sql dump (schema unknown)
-- Table [roommast]  NOT present in visahl.sql dump (schema unknown)
