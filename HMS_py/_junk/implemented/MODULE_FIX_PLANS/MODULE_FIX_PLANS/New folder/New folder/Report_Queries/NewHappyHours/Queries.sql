# ==========================================================
# Module: NewHappyHours
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Depart
-- Uses table: ItemMast
-- Uses table: SchemeMast
-- --------------------------------------------
SELECT NH.Code, NH.RestCode, D.Name as RestName, NH.AppDate, NH.EndDate, NH.Active, NH.FromTime, Nh.ToTime, SM.Name As SchemeName, NH.SchemeCode, NH.Days As DayCode, NH.Site_Code,NH.LOGSITE_CODE FROM (((SchemeItemDetail NH
    Left Join ItemMast IM on NH.ItemCode = IM.code And NH.RestCode = IM.Restcode)
    Left join Depart D On D.Code=NH.RestCode)
    Left Join SchemeMast SM On SM.Code=NH.SchemeCode)
    WHERE NH.SNo=1 And (NH.LOGSITE_CODE='<LogSiteCode>' or NH.LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 2
-- Uses table: SchemeItemDetail
-- --------------------------------------------
Delete From SchemeItemDetail
    Where Code = '<Code>' AND (LOGSITE_CODE='<LOGSITE_CODE>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 3
-- Uses table: SchemeItemDetail
-- --------------------------------------------
Delete From SchemeItemDetail
    Where Code = '<Code>' AND (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 4
-- Uses table: FreeItemDetail
-- --------------------------------------------
Delete from FreeItemDetail
    WHERE Code ='<Code>' AND (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 5
-- Uses table: SchemeMast
-- --------------------------------------------
Select * From SchemeMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 6
-- Uses table: SchemeItemDetail
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From SchemeItemDetail
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [FreeItemDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SchemeItemDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [SchemeMast]  NOT present in visahl.sql dump (schema unknown)
