# ==========================================================
# Module: FrmWaiterMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Waiter
-- --------------------------------------------
SELECT Code,Name FROM Waiter
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: Depart
-- --------------------------------------------
Select Code,Name From Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') AND OutletYN='Y' And RestType in('Outlet','Room Service','Production')
    Order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: Depart
-- Uses table: Waiter
-- --------------------------------------------
SELECT W.*,D.Name As RestName FROM Waiter W
    Left Join Depart D ON W.RestCode=D.Code
    WHere (W.LOGSITE_CODE='<LogSiteCode>' or W.LOGSITE_CODE='HO')
    Order by D.Name,W.Name;

-- --------------------------------------------
-- Query 4
-- Uses table: Waiter
-- --------------------------------------------
Delete From Waiter
    Where Code='<Code>';

-- --------------------------------------------
-- Query 5
-- Uses table: Depart
-- Uses table: Waiter
-- --------------------------------------------
SELECT D.Name As RestName,W.* from Waiter W
    Left Join Depart D ON W.RestCode=D.Code
    Where (W.LOGSITE_CODE='<LogSiteCode>' or W.LOGSITE_CODE='HO')
    order by D.Name,W.Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Waiter]  NOT present in visahl.sql dump (schema unknown)
