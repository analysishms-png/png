# ==========================================================
# Module: TelCallCodeMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: TelCallCode
-- --------------------------------------------
Delete From TelCallCode
    Where STDCODE='<STDCODE>';

-- --------------------------------------------
-- Query 2
-- Uses table: TelCallCode
-- Uses table: TelCallType
-- --------------------------------------------
SELECT TCC.*,TCT.CallType FROM TelCallCode AS TCC
    LEFT JOIN TelCallType AS TCT ON TCC.CallTypeCode=TCT.Code
    ORDER BY TCT.CallType,TCC.STDCode,TCC.Description;

-- --------------------------------------------
-- Query 3
-- Uses table: TelCallCode
-- --------------------------------------------
SELECT StdCode,StdCode FROM TelCallCode
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY TelCallCode.STDCODE;

-- --------------------------------------------
-- Query 4
-- Uses table: TelCallType
-- --------------------------------------------
SELECT Code as Code,CallType FROM TelCallType
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY CallType;

-- --------------------------------------------
-- Query 5
-- Uses table: TelCallCode
-- Uses table: TelCallType
-- --------------------------------------------
SELECT TCC.*,TCT.CallType as CallType FROM TelCallCode as TCC
    LEFT JOIN TelCallType as TCT ON TCC.CallTypeCode=TCT.Code
    WHERE (TCC.LOGSITE_CODE='<LogSiteCode>' or TCC.LOGSITE_CODE='HO');



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [TelCallCode]  NOT present in visahl.sql dump (schema unknown)
-- Table [TelCallType]  NOT present in visahl.sql dump (schema unknown)
