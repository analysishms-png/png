# ==========================================================
# Module: FrmDenomination
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: DenominationFormat
-- --------------------------------------------
Delete from DenominationFormat
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: DenominationDetail
-- --------------------------------------------
Delete From DenominationDetail
    WHERE Sno=<Sno> And LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: DenominationDetail
-- --------------------------------------------
SELECT Distinct(Sno) As SearchCode FROM DenominationDetail
    Where IsNull(DelFlag,'')<>'Y' And LogSite_Code='<LogSiteCode>'
    ORDER BY SNO;

-- --------------------------------------------
-- Query 4
-- Uses table: DenominationDetail
-- --------------------------------------------
Select * from DenominationDetail
    where Sno='<Sno>'
    Order by SNO1;

-- --------------------------------------------
-- Query 5
-- Uses table: DenominationFormat
-- --------------------------------------------
SELECT * From DenominationFormat
    Order By Sno;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DenominationDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [DenominationFormat]  NOT present in visahl.sql dump (schema unknown)
