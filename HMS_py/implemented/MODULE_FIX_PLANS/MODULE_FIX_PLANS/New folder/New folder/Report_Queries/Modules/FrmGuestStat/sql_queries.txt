# ==========================================================
# Module: FrmGuestStat
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: GuestStat
-- --------------------------------------------
Delete From GuestStat
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: GuestStat
-- --------------------------------------------
select * FROM GuestStat
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: GuestStat
-- --------------------------------------------
SELECT Code,Name FROM GuestStat
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: GuestStat
-- --------------------------------------------
SELECT * FROM GuestStat
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 5
-- Uses table: gueststat
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From gueststat
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [GuestStat]  NOT present in visahl.sql dump (schema unknown)
-- Table [gueststat]  NOT present in visahl.sql dump (schema unknown)
