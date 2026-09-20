# ==========================================================
# Module: rRepTelPreview
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: FAEnviro
-- --------------------------------------------
Select * From FAEnviro;

-- --------------------------------------------
-- Query 2
-- Uses table: EPABX_DATA
-- Uses table: TelExt
-- --------------------------------------------
SELECT E.Id,E.CALL_START_DATE,E.PNT_NO,E.Extension,T.Description,T.RoomNo,E.DIALED_NO,E.CALL_DURATION,E.CALL_AMT,E.CALL_START_TIME FROM EPABX_DATA E
    LEFT JOIN TelExt T On E.Extension=T.Extension <Param>
    Order By E.CALL_START_DATE,E.PNT_NO;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [EPABX_DATA]  NOT present in visahl.sql dump (schema unknown)
-- Table [FAEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [TelExt]  NOT present in visahl.sql dump (schema unknown)
