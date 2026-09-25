# ==========================================================
# Module: FrmGuestWakeUp
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: EPABX_IN
-- --------------------------------------------
Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN;

-- --------------------------------------------
-- Query 2
-- Uses table: GuestWakeUp
-- --------------------------------------------
Select * From GuestWakeUp
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 3
-- Uses table: GuestFolio
-- Uses table: RoomOcc
-- --------------------------------------------
Select Name,Company From RoomOcc RO
    Left Join GuestFolio GF On RO.FolioNo=GF.FolioNo
    Where RO.RoomNo='<RoomNo>' And RO.FolioNo=<FolioNo><Param>;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [EPABX_IN]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestWakeUp]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
