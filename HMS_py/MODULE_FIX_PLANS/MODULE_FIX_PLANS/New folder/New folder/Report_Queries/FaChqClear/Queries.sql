# ==========================================================
# Module: FaChqClear
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Ledger
-- --------------------------------------------
Update Ledger
    Set Chq_No='<Chq_No>
    Where DocID='<DocID>' AND V_SNO=<V_SNO>;

-- --------------------------------------------
-- Query 2
-- Uses table: Ledger
-- --------------------------------------------
Update Ledger
    Set Chq_No='<Chq_No>
    Where DocID='<DocID>'<Param>;

-- --------------------------------------------
-- Query 3
-- Uses table: FAENVIRO
-- --------------------------------------------
SELECT * FROM FAENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [FAENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
