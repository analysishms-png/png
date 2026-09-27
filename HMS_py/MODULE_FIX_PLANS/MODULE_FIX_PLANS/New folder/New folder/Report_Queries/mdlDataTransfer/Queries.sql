# ==========================================================
# Module: mdlDataTransfer
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- --------------------------------------------
INSERT INTO <Param><Param>;

-- --------------------------------------------
-- Query 2
-- --------------------------------------------
DELETE FROM <Param><Param>;

-- --------------------------------------------
-- Query 3
-- Uses table: TransIn
-- --------------------------------------------
Select * From TransIn
    Where TableName='<TableName>';

-- --------------------------------------------
-- Query 4
-- Uses table: Ledger
-- --------------------------------------------
Select * From Ledger
    Where V_Type='<V_Type>' and SubCode= '<SubCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: Table_SearchField
-- --------------------------------------------
SELECT Table_Name,Search_Field,UniqueField,SiteCode,LogSiteCode FROM Table_SearchField
    WHERE IsNull(Search_Field,'')<>'';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [Table_SearchField]  NOT present in visahl.sql dump (schema unknown)
-- Table [TransIn]  NOT present in visahl.sql dump (schema unknown)
