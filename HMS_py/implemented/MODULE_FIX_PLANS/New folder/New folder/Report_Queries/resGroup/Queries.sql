# ==========================================================
# Module: resGroup
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: CITY
-- --------------------------------------------
Select CITYCODE AS Code,CITYNAME AS Name From CITY
    Order by CITYName;

-- --------------------------------------------
-- Query 2
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode AS Code,Name From SubGroup
    Where CompanyType='Travel Agency'
    Order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: MarketSeg
-- --------------------------------------------
Select Code,Name FROM MarketSeg
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: BussSource
-- --------------------------------------------
SELECT Code,Name FROM BussSource
    ORDER BY Name;

-- --------------------------------------------
-- Query 5
-- Uses table: GROUPPROF
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(Code,2,7) AS INT)),1)+1 AS MyCode From GROUPPROF;

-- --------------------------------------------
-- Query 6
-- Uses table: GroupProf
-- --------------------------------------------
Delete From GroupProf
    Where Code='<Code>';

-- --------------------------------------------
-- Query 7
-- Uses table: RoomCat
-- --------------------------------------------
Select Sum(NoRooms) As tNoRooms From RoomCat
    Where InclCount='Y';

-- --------------------------------------------
-- Query 8
-- Uses table: RateList
-- Uses table: RoomCat
-- --------------------------------------------
Select RC.Code,RC.Name,RC.NoRooms,RL.Rate2 From RoomCat RC
    Left Join RateList RL on RC.Code=RL.RoomCat
    Where RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****'
    Order By RC.Name;

-- --------------------------------------------
-- Query 9
-- Uses table: RoomBlockOut
-- --------------------------------------------
Select RoomCode,FromDate ,dATEdiff(<Param>,FromDate,Todate) as Days,Reasons From RoomBlockOut
    Where Type='O' And FromDate Between <Param> And <Param>;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [BussSource]  NOT present in visahl.sql dump (schema unknown)
-- Table [CITY]  NOT present in visahl.sql dump (schema unknown)
-- Table [GROUPPROF]  NOT present in visahl.sql dump (schema unknown)
-- Table [GroupProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [MarketSeg]  NOT present in visahl.sql dump (schema unknown)
-- Table [RateList]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomBlockOut]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomCat]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
