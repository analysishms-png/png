# ==========================================================
# Module: FrmRoomFeatureMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: RoomFeature
-- --------------------------------------------
Delete From RoomFeature
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: RoomFeature
-- --------------------------------------------
SELECT * from RoomFeature
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: RoomFeature
-- --------------------------------------------
SELECT Code,Name FROM RoomFeature
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: RoomFeature
-- --------------------------------------------
SELECT * FROM RoomFeature
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order by Name;

-- --------------------------------------------
-- Query 5
-- Uses table: RoomFeature
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From RoomFeature
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [RoomFeature]  NOT present in visahl.sql dump (schema unknown)
