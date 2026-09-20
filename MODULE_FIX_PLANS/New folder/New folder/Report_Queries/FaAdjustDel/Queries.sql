# ==========================================================
# Module: FaAdjustDel
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: LEDGERADJ
-- --------------------------------------------
Delete From LEDGERADJ
    Where DocId1='<DocId1>' AND V_SNo1=<V_SNo1><Param>' AND V_SNo2=<V_SNo2> AND SubCode='<SubCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: LEDGERADJ
-- --------------------------------------------
SELECT * FROM LEDGERADJ
    WHERE SUBCODE='<SUBCODE>' AND LOGSITE_CODE='<LogSiteCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [LEDGERADJ]  NOT present in visahl.sql dump (schema unknown)
