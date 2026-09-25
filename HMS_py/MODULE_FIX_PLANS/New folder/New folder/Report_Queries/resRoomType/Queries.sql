# ==========================================================
# Module: resRoomType
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: RoomCat
-- --------------------------------------------
Select Name From RoomCat
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: FAEnviro
-- --------------------------------------------
Select * From FAEnviro;

-- --------------------------------------------
-- Query 3
-- Uses table: RoomCat
-- --------------------------------------------
Select Sum(NoRooms) As tNoRooms From RoomCat
    Where Type='RO' And LOGSITE_CODE='<LogSiteCode>' AND InclCount='Y' And Code In <Param>;

-- --------------------------------------------
-- Query 4
-- Uses table: RoomCat
-- --------------------------------------------
Select Name,Code,1 Value from RoomCat
    Where InclCount='Y' And LogSite_Code='<LogSiteCode>'
    order by Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [FAEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomCat]  NOT present in visahl.sql dump (schema unknown)
