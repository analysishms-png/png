# ==========================================================
# Module: RsTableMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: DEPART
-- --------------------------------------------
select ROOMMAST.*,DEPART.NAME AS RestName FROM (RoomMast
    LEFT JOIN DEPART ON DEPART.CODE=ROOMMAST.RESTCODE)
    Where (RoomMast.LOGSITE_CODE='<LogSiteCode>' or RoomMast.LOGSITE_CODE='HO') and Type='TB'
    order by ROOMMAST.Name;

-- --------------------------------------------
-- Query 2
-- Uses table: Depart
-- Uses table: RoomMast
-- --------------------------------------------
SELECT RoomMast.Code,RoomMast.Name,RestCode,D.Name as RestName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE From RoomMast
    Left Join Depart D ON RoomMast.RestCode=D.Code
    Where (RoomMast.LOGSITE_CODE='<LogSiteCode>' or RoomMast.LOGSITE_CODE='HO') and RoomMast.type='TB'
    ORDER BY RoomMast.Name;

-- --------------------------------------------
-- Query 3
-- Uses table: Depart
-- --------------------------------------------
Select Code,Name From Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and OutletYN='Y' aND RestType not in ('Room Service','Banquet')
    Order by Name;

-- --------------------------------------------
-- Query 4
-- Uses table: roommast
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From roommast
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [roommast]  NOT present in visahl.sql dump (schema unknown)
