# ==========================================================
# Module: RsAssignDelivery
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: depart
-- --------------------------------------------
Select AutoSplit from depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: ENVIRO
-- --------------------------------------------
SELECT * FROM ENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: ENVIRO
-- --------------------------------------------
SELECT * FROM ENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>'';

-- --------------------------------------------
-- Query 4
-- Uses table: DeliveryBoy
-- --------------------------------------------
SELECT Code, Name FROM DeliveryBoy
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 5
-- Uses table: DeliveryBoy
-- --------------------------------------------
SELECT Code, Name FROM DeliveryBoy
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name';

-- --------------------------------------------
-- Query 6
-- Uses table: AssignDelivery
-- --------------------------------------------
Delete From AssignDelivery
    Where DocId='<DocId>';

-- --------------------------------------------
-- Query 7
-- Uses table: Depart
-- --------------------------------------------
Select 'B'+ShortName From Depart
    Where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [AssignDelivery]  NOT present in visahl.sql dump (schema unknown)
-- Table [DeliveryBoy]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
