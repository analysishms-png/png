# ==========================================================
# Module: FaAdjust
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Ledger
-- Uses table: SubGroup
-- --------------------------------------------
Select DocId,V_SNo,V_Type,V_Prefix,V_No,V_Date,AmtDr As Amount,Narration,SG.Name As PartyName FROM Ledger L
    Left Join SubGroup SG on SG.SubCode=L.SubCode
    Where L.SubCode='<SubCode>' AND L.LOGSITE_CODE='<LogSiteCode>'
    ORDER BY V_Date,V_Type,V_No;

-- --------------------------------------------
-- Query 2
-- Uses table: LEDGERAdj
-- --------------------------------------------
Select IsNull(Sum(CR),0) From LEDGERAdj
    Where DocId1='<DocId1>' And V_SNo1=<V_SNo1> And SubCode='<SubCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [LEDGERAdj]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
