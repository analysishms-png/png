# ==========================================================
# Module: TelCallEntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: TelExt
-- --------------------------------------------
SELECT Code,CAST(Extension AS VARCHAR) AS EXT FROM TelExt
    ORDER BY Extension;

-- --------------------------------------------
-- Query 2
-- Uses table: EPABX_OUT
-- --------------------------------------------
SELECT * FROM EPABX_OUT;

-- --------------------------------------------
-- Query 3
-- --------------------------------------------
UPDATE [COUNTER]
    SET CBOUT=CBOUT+1;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [EPABX_OUT]  NOT present in visahl.sql dump (schema unknown)
-- Table [TelExt]  NOT present in visahl.sql dump (schema unknown)
