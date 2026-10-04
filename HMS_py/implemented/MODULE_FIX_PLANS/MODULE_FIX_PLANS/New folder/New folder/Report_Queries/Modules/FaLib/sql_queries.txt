# ==========================================================
# Module: FaLib
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ACGROUP
-- --------------------------------------------
SELECT MAINGRCODE FROM ACGROUP
    Where GroupCode='<GroupCode>' AND AliasYN='N';

-- --------------------------------------------
-- Query 2
-- Uses table: ACGROUP
-- --------------------------------------------
SELECT * FROM ACGROUP
    Where MAINGRCODE='<MAINGRCODE>' AND AliasYN='N';

-- --------------------------------------------
-- Query 3
-- Uses table: ledger
-- --------------------------------------------
SELECT isnull(sum(ledger.Amtcr),0) AS OpRec FROM ledger
    where subcode='<subcode>';

-- --------------------------------------------
-- Query 4
-- Uses table: ledger
-- --------------------------------------------
SELECT isnull(sum(ledger.Amtdr),0) AS OpIss FROM ledger
    where subcode='<subcode>';

-- --------------------------------------------
-- Query 5
-- Uses table: ledger
-- --------------------------------------------
SELECT isnull(sum(ledger.Amtcr),0) AS OpRec FROM ledger
    where subcode='<subcode>' AND LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: ledger
-- --------------------------------------------
SELECT isnull(sum(ledger.Amtdr),0) AS OpIss FROM ledger
    where subcode='<subcode>' AND LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 7
-- --------------------------------------------
Select Count(<Param>) from <Param>
    where <Param> = #<Param>#;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ACGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [ledger]  NOT present in visahl.sql dump (schema unknown)
