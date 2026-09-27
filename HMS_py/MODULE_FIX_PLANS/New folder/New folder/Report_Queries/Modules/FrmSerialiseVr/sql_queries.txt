# ==========================================================
# Module: FrmSerialiseVr
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: LedgerMerge
-- --------------------------------------------
delete from LedgerMerge;

-- --------------------------------------------
-- Query 2
-- Uses table: LedgerMMerge
-- --------------------------------------------
delete from LedgerMMerge;

-- --------------------------------------------
-- Query 3
-- Uses table: LEDGERM
-- --------------------------------------------
Select DISTINCT v_Prefix from LEDGERM
    WHERE V_Type='<V_Type>' And V_Prefix='<V_Prefix>' And Site_Code='<Site_Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: LedgerM
-- --------------------------------------------
select * from LedgerM
    where V_Type='<V_Type>' And V_Prefix='<V_Prefix>' And Site_Code='<Site_Code>'
    order by V_Date;

-- --------------------------------------------
-- Query 5
-- Uses table: Ledger
-- --------------------------------------------
select docId as searchcode,Ledger.* from Ledger
    where V_Type='<V_Type>' And V_Prefix='<V_Prefix>' And Site_Code='<Site_Code>'
    Order by V_Date,DocId,V_No;

-- --------------------------------------------
-- Query 6
-- Uses table: VOUCHER_Prefix
-- --------------------------------------------
UPDATE VOUCHER_Prefix
    SET Start_Srl_No=<Start_Srl_No>
    WHERE V_Type='<V_Type>' and Prefix='<Prefix>' And Site_Code='<Site_Code>';

-- --------------------------------------------
-- Query 7
-- Uses table: LedgerM
-- --------------------------------------------
Delete from LedgerM
    where V_Type in ('<Param>') And V_Prefix='<V_Prefix>' And Site_Code='<Site_Code>';

-- --------------------------------------------
-- Query 8
-- Uses table: LedgerM
-- Uses table: LedgerMMerge
-- --------------------------------------------
insert into LedgerM select * from LedgerMMerge
    where V_Type in ('<Param>') And V_Prefix='<V_Prefix>' And Site_Code='<Site_Code>';

-- --------------------------------------------
-- Query 9
-- Uses table: Ledger
-- --------------------------------------------
Delete from Ledger
    where V_Type in ('<Param>') And V_Prefix='<V_Prefix>' And Site_Code='<Site_Code>';

-- --------------------------------------------
-- Query 10
-- Uses table: Ledger
-- Uses table: LedgerMerge
-- --------------------------------------------
insert into Ledger select * from LedgerMerge
    where V_Type in ('<Param>') And V_Prefix='<V_Prefix>' And Site_Code='<Site_Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [LEDGERM]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [LedgerM]  NOT present in visahl.sql dump (schema unknown)
-- Table [LedgerMMerge]  NOT present in visahl.sql dump (schema unknown)
-- Table [LedgerMerge]  NOT present in visahl.sql dump (schema unknown)
-- Table [VOUCHER_Prefix]  NOT present in visahl.sql dump (schema unknown)
