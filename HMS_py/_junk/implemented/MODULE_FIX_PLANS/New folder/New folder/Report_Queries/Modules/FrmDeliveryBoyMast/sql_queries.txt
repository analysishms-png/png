# ==========================================================
# Module: FrmDeliveryBoyMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: DeliveryBoy
-- --------------------------------------------
Delete From DeliveryBoy
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: DeliveryBoy
-- --------------------------------------------
SELECT * from DeliveryBoy
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: DeliveryBoy
-- --------------------------------------------
SELECT Code,Name FROM DeliveryBoy
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: DeliveryBoy
-- --------------------------------------------
SELECT * FROM DeliveryBoy
    WHere (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order by Name;

-- --------------------------------------------
-- Query 5
-- Uses table: DeliveryBoy
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From DeliveryBoy
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [DeliveryBoy]  NOT present in visahl.sql dump (schema unknown)
