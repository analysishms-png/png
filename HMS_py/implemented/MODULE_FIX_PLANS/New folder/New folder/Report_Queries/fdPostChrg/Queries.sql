# ==========================================================
# Module: fdPostChrg
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: RoomOcc
-- --------------------------------------------
Select * from RoomOcc
    Where DocId='<DocId>' And SNo=1;

-- --------------------------------------------
-- Query 3
-- Uses table: RevMast
-- --------------------------------------------
Select Name from RevMast
    where ShortName='EXTB';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
