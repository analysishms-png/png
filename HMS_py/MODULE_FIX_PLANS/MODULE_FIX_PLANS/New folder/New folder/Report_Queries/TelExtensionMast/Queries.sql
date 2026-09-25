# ==========================================================
# Module: TelExtensionMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: TelExt
-- --------------------------------------------
SELECT Code,Description FROM TelExt
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Description;

-- --------------------------------------------
-- Query 2
-- Uses table: RoomMast
-- --------------------------------------------
SELECT Code,Code FROM RoomMast
    WHERE Type='RO' and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY RoomMast.Code;

-- --------------------------------------------
-- Query 3
-- Uses table: Depart
-- --------------------------------------------
SELECT code,Name FROM Depart
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: Depart
-- Uses table: RoomMast
-- --------------------------------------------
SELECT T.*,R.Code as RName,D.Name as DName FROM (TelExt as T
    LEFT JOIN RoomMast as R ON T.RoomNo=R.Code)
    LEFT JOIN Depart as D ON T.DepCode=D.Code
    WHERE (T.LOGSITE_CODE='<LogSiteCode>' or T.LOGSITE_CODE='HO')
    ORDER BY T.Description;

-- --------------------------------------------
-- Query 5
-- Uses table: TelExt
-- --------------------------------------------
Delete From TelExt
    Where Code='<Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: Depart
-- Uses table: RoomMast
-- --------------------------------------------
Select TelExt.Code As SearchCode,TelExt.Description , TelExt.Extension , TelExt.Type , TelExt.ShopNo & RoomMast.Code & Depart.Name as Nos,TelExt.PulseRate FROM (TelExt
    LEFT JOIN RoomMast ON TelExt.RoomNo=RoomMast.Code)
    LEFT JOIN Depart ON TelExt.DepCode=Depart.Code
    ORDER BY TelExt.Description;

-- --------------------------------------------
-- Query 7
-- Uses table: TelExt
-- --------------------------------------------
Select IsNull(Max(Cast(SubString(Code,3,5) as Numeric)),0)+1 AS MyCode From TelExt;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [TelExt]  NOT present in visahl.sql dump (schema unknown)
