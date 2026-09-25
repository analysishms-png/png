# ==========================================================
# Module: FdLookUpRoomNo
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ENVIRO
-- --------------------------------------------
SELECT * FROM ENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: RoomOcc
-- Uses table: roommast
-- --------------------------------------------
SELECT Count(*)From RoomOcc
    Left Join roommast on roomocc.RoomNo=Roommast.code
    where roomocc.type not in ('O','C') and roommast.roomstat='D' and roommast.type='RO';

-- --------------------------------------------
-- Query 3
-- Uses table: RoomOcc
-- Uses table: roommast
-- --------------------------------------------
SELECT Count(*)From RoomOcc
    Left Join roommast on roomocc.RoomNo=Roommast.code
    where roomocc.type not in ('O','C') and roommast.roomstat='C' and roommast.type='RO';

-- --------------------------------------------
-- Query 4
-- Uses table: RoomMast
-- --------------------------------------------
SELECT Count(*) FROM RoomMast
    where type='RO' and inclcount='Y';

-- --------------------------------------------
-- Query 5
-- Uses table: ROOMCAT
-- --------------------------------------------
SELECT * FROM ROOMCAT
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: roommast
-- --------------------------------------------
Select IsNull(Max(Name),'') from roommast
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and code='<code>';

-- --------------------------------------------
-- Query 7
-- Uses table: Dispcolor
-- --------------------------------------------
delete from Dispcolor
    where [index]=<Param> and Logsite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 8
-- Uses table: DispColor
-- --------------------------------------------
Select * from DispColor;

-- --------------------------------------------
-- Query 9
-- Uses table: RoomCat
-- Uses table: roommast
-- --------------------------------------------
SELECT roommast.*, RoomCat.Name AS RoomCategory, RoomCat.ShortName FROM roommast
    INNER JOIN RoomCat ON (roommast.Type = RoomCat.Type) AND (roommast.RoomCat = RoomCat.Code)
    WHERE (ROOMMAST.LOGSITE_CODE='<LogSiteCode>') AND (((roommast.Type)='RO' AND RoomMast.InclCount='Y'))
    ORDER BY roommast.Code;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DispColor]  NOT present in visahl.sql dump (schema unknown)
-- Table [Dispcolor]  NOT present in visahl.sql dump (schema unknown)
-- Table [ENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMCAT]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomCat]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [roommast]  NOT present in visahl.sql dump (schema unknown)
