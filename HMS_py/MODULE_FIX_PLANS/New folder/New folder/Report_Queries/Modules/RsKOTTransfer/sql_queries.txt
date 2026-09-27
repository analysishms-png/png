# ==========================================================
# Module: RsKOTTransfer
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: KOT
-- --------------------------------------------
SELECT Max(RoomNo) FROM KOT
    WHERE (DELFLAG<>'Y' OR DELFLAG IS NULL) AND restCode='<restCode>' and ROOMTYPE='RO' AND (PENDING ='Y' OR PENDING IS NULL) AND (NCKOT<>'Y' OR NCKOT IS NULL) AND VOIDYN<>'Y' And DOCID='<DOCID>';

-- --------------------------------------------
-- Query 2
-- Uses table: KOT
-- --------------------------------------------
SELECT Max(RoomNo) FROM KOT
    WHERE (DELFLAG<>'Y' OR DELFLAG IS NULL) AND restCode='<restCode>' and ROOMTYPE='TB' AND (PENDING ='Y' OR PENDING IS NULL) AND (NCKOT<>'Y' OR NCKOT IS NULL) AND VOIDYN<>'Y' And VNO=<VNO><Param>;

-- --------------------------------------------
-- Query 3
-- Uses table: ROOMOCC
-- --------------------------------------------
SELECT * FROM ROOMOCC RC
    WHERE DocId='<DocId>' And (RC.LOGSITE_CODE='<LogSiteCode>' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL;

-- --------------------------------------------
-- Query 4
-- Uses table: roommast
-- --------------------------------------------
Select Name from roommast
    where (LOGSITE_CODE='<LogSiteCode>') and TYPE='TB' AND code='<code>';

-- --------------------------------------------
-- Query 5
-- Uses table: Depart
-- --------------------------------------------
Select Kotyn from Depart
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [KOT]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMOCC]  NOT present in visahl.sql dump (schema unknown)
-- Table [roommast]  NOT present in visahl.sql dump (schema unknown)
