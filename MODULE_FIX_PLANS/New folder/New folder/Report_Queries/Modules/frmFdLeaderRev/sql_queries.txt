# ==========================================================
# Module: frmFdLeaderRev
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: MarketSeg
-- --------------------------------------------
Select CODE ,NAME From MarketSeg
    Order by Name;

-- --------------------------------------------
-- Query 2
-- Uses table: BussSource
-- --------------------------------------------
Select CODE ,NAME From BussSource
    Order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: RevMast
-- --------------------------------------------
Select Code ,Name,Paytype From RevMast
    where FieldType='P'
    Order by Name;

-- --------------------------------------------
-- Query 4
-- Uses table: RevMast
-- --------------------------------------------
Select Code ,Name,Paytype From RevMast
    where FieldType='C'
    Order by Name;

-- --------------------------------------------
-- Query 5
-- Uses table: Subgroup
-- --------------------------------------------
Select SubCode ,Name From Subgroup
    where CompanyType like ('Travel Agency')
    Order by Name;

-- --------------------------------------------
-- Query 6
-- Uses table: RoomMast
-- --------------------------------------------
Select Code as SearchCode,Code as RoomNo, Name as Quot From RoomMast
    where type='RO'
    Order by Code;

-- --------------------------------------------
-- Query 7
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    WHERE LOGSITE_CODE='<LogSiteCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [BussSource]  NOT present in visahl.sql dump (schema unknown)
-- Table [MarketSeg]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
