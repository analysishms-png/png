# ==========================================================
# Module: FdLookUpRoom
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: RoomCat
-- Uses table: RoomMast
-- --------------------------------------------
SELECT RoomCat.Name, RoomCat.Code FROM RoomMast
    LEFT JOIN RoomCat ON RoomMast.RoomCat = RoomCat.Code
    where rOOMmaST.CODE='<CODE><Param>;

-- --------------------------------------------
-- Query 2
-- Uses table: roommast
-- --------------------------------------------
Select Name from roommast
    where code='<code><Param>;

-- --------------------------------------------
-- Query 3
-- Uses table: roommast
-- --------------------------------------------
Select * from roommast
    where Type='RO'
    order by COde;

-- --------------------------------------------
-- Query 4
-- Uses table: RoomOcc
-- --------------------------------------------
Select * from RoomOcc
    where ChkOutDate is Null;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [RoomCat]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [roommast]  NOT present in visahl.sql dump (schema unknown)
