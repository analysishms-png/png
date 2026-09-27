# ==========================================================
# Module: FrmVenueMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: VenueMast
-- --------------------------------------------
Delete From VenueMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 2
-- Uses table: VenueFeatures
-- --------------------------------------------
Delete From VenueFeatures
    Where VenueCode='<VenueCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: GodownMast
-- --------------------------------------------
Delete From GodownMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: VenueMast
-- --------------------------------------------
select * FROM VenueMast
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 5
-- Uses table: VenueCapacity
-- --------------------------------------------
SELECT Count(*) FROM VenueCapacity
    WHERE VenueCode='<VenueCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: VenueCapacity
-- --------------------------------------------
Delete From VenueCapacity
    Where VenueCode='<VenueCode>';

-- --------------------------------------------
-- Query 7
-- Uses table: VenueCapacity
-- --------------------------------------------
SELECT Count(*) FROM VenueCapacity
    WHERE VenueCode='<VenueCode><Param>';

-- --------------------------------------------
-- Query 8
-- Uses table: VenueCapacity
-- --------------------------------------------
Delete From VenueCapacity
    WHERE VenueCode='<VenueCode><Param>';

-- --------------------------------------------
-- Query 9
-- Uses table: VenueMast
-- --------------------------------------------
SELECT * FROM VenueMast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 10
-- Uses table: VenueCapacity
-- --------------------------------------------
Select * FROM VenueCapacity
    Where VenueCode='<VenueCode>';

-- --------------------------------------------
-- Query 11
-- Uses table: FEATUREMAST
-- --------------------------------------------
SELECT * FROM FEATUREMAST
    Where Status='Active' and LogSite_Code IN ('<LogSiteCode>','HO')
    ORDER BY NAME;

-- --------------------------------------------
-- Query 12
-- Uses table: VenueCapacity
-- --------------------------------------------
SELECT DISTINCT([Capacity]) FROM VenueCapacity;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [FEATUREMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [GodownMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [VenueCapacity]  NOT present in visahl.sql dump (schema unknown)
-- Table [VenueFeatures]  NOT present in visahl.sql dump (schema unknown)
-- Table [VenueMast]  NOT present in visahl.sql dump (schema unknown)
