# ==========================================================
# Module: HHouseKeeping
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: RoomBlockOut
-- --------------------------------------------
delete from RoomBlockOut
    where RoomCode='<RoomCode><Param>;

-- --------------------------------------------
-- Query 2
-- Uses table: RoomBlockOut
-- --------------------------------------------
delete from RoomBlockOut
    where (LOGSITE_CODE='<LogSiteCode>') and RoomCode='<RoomCode><Param>' And Type='O';

-- --------------------------------------------
-- Query 3
-- Uses table: roommast
-- --------------------------------------------
Select IsNull(Max(Name),'') from roommast
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and code='<code>';

-- --------------------------------------------
-- Query 4
-- Uses table: roommast
-- --------------------------------------------
Select * from roommast
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and Type='RO' AND InclCount='Y'
    order by COde;

-- --------------------------------------------
-- Query 5
-- Uses table: RoomOcc
-- --------------------------------------------
Select * from RoomOcc
    where (LOGSITE_CODE='<LogSiteCode>') and ChkOutDate is Null;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [RoomBlockOut]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [roommast]  NOT present in visahl.sql dump (schema unknown)
