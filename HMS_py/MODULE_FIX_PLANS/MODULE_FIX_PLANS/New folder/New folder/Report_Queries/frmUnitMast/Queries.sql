# ==========================================================
# Module: frmUnitMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: UnitMast
-- --------------------------------------------
SELECT Name as Unit, Status as Active,Site_code,LOGSITE_CODE,U_AE,U_Name,U_EntDt from UnitMast
    WHERE (Site_code='<Site_code>' and LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: UnitMast
-- --------------------------------------------
Delete From UnitMast
    Where Name='<Name>';

-- --------------------------------------------
-- Query 3
-- Uses table: UnitMast
-- --------------------------------------------
select Name,Status,U_Name,U_AE,U_Entdt FROM UnitMast
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: UnitMast
-- --------------------------------------------
Select Name,Status U_Name,U_AE,U_EntDt From UnitMast
    where Name='<Name>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [UnitMast]  NOT present in visahl.sql dump (schema unknown)
