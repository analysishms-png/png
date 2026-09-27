# ==========================================================
# Module: MemPaymentReceive
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where LOGsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode as SearchCode,Name From SubGroup
    where ActiveYN=1 And Nature='Bank' and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode as SearchCode,Name From SubGroup
    where ActiveYN=1 And Nature='Cash' and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order by Name;

-- --------------------------------------------
-- Query 4
-- Uses table: PrinterSetup
-- --------------------------------------------
Select * from PrinterSetup;

-- --------------------------------------------
-- Query 5
-- Uses table: Ledger
-- Uses table: SubGroup
-- --------------------------------------------
SELECT S.Name as AcName,S.CardNo, L.* FROM Ledger L
    LEFT JOIN SubGroup S ON L.SubCode = S.SubCode
    Where DocID='<DocID>' And AmtDr<>0
    Order By V_SNo;

-- --------------------------------------------
-- Query 6
-- Uses table: Ledger
-- Uses table: SubGroup
-- --------------------------------------------
SELECT S.Name as AcName,S.CardNo, L.* FROM Ledger L
    LEFT JOIN SubGroup S ON L.SubCode = S.SubCode
    Where DocID='<DocID>' And AmtCr<>0
    Order By V_SNo;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrinterSetup]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
