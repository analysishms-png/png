# ==========================================================
# Module: FaTDSCertificate
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: TDSCerti
-- --------------------------------------------
SELECT Max(CertiNo) as ID FROM TDSCerti;

-- --------------------------------------------
-- Query 2
-- Uses table: SubGroup
-- Uses table: TDSChal1
-- --------------------------------------------
SELECT TDSChal1.*,SubGroup.Name AS BANBNAME,TDSCHAL.BANKCODE FROM (TDSChal
    LEFT JOIN TDSChal1 ON TDSChal.DocId=TDSChal1.DocId)
    LEFT JOIN SubGroup ON TDSChal.BankCode = SubGroup.SubCode
    WHERE TDSCHAL1.CERTINO='<CERTINO>'
    ORDER BY TDSChal1.CHALDATE,TDSChal1.CHALTYPE,TDSChal1.CHALNO;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [TDSCerti]  NOT present in visahl.sql dump (schema unknown)
-- Table [TDSChal1]  NOT present in visahl.sql dump (schema unknown)
