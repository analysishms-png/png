# ==========================================================
# Module: FrmBookingInquiry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: VenueMast
-- --------------------------------------------
Select Code,Name From VenueMast
    Where LogSite_Code in ('<LogSiteCode>','HO')
    Order by Name;

-- --------------------------------------------
-- Query 2
-- Uses table: MarketSeg
-- --------------------------------------------
Select Code,Name From MarketSeg
    Where LogSite_Code in ('<LogSiteCode>','HO')
    Order by Name;

-- --------------------------------------------
-- Query 3
-- Uses table: BussSource
-- --------------------------------------------
Select Code,Name From BussSource
    Where LogSite_Code in ('<LogSiteCode>','HO')
    Order by Name;

-- --------------------------------------------
-- Query 4
-- Uses table: FunctionType
-- --------------------------------------------
Select Code,Name From FunctionType
    Where Status='Active' and LogSite_Code in ('<LogSiteCode>','HO')
    Order by Name;

-- --------------------------------------------
-- Query 5
-- Uses table: VenueCapacity
-- --------------------------------------------
Select * FROM VenueCapacity
    Where VenueCode='<VenueCode>'<Param>;

-- --------------------------------------------
-- Query 6
-- Uses table: BookingInquiry
-- --------------------------------------------
Delete From BookingInquiry
    Where Code='<Code>';

-- --------------------------------------------
-- Query 7
-- Uses table: BookingDetail
-- --------------------------------------------
Delete From BookingDetail
    Where Code='<Code>';

-- --------------------------------------------
-- Query 8
-- Uses table: VenueMast
-- --------------------------------------------
SELECT VenueMast.Code AS VenueCode, VenueMast.Name AS VenueName FROM VenueMast
    where DepartCode='<DepartCode>'
    ORDER By VenueMast.Name;

-- --------------------------------------------
-- Query 9
-- Uses table: BookingInquiry
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From BookingInquiry
    where Code='<Code>';

-- --------------------------------------------
-- Query 10
-- Uses table: BookingDetail
-- --------------------------------------------
Select * FROM BookingDetail
    Where Code='<Code>' AND VenueCode='<VenueCode>';

-- --------------------------------------------
-- Query 11
-- Uses table: VenueCapacity
-- --------------------------------------------
Select VenueCode,Capacity,Seating,Floating,PicPath FROM VenueCapacity
    Where VenueCode='<VenueCode>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [BookingDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [BookingInquiry]  NOT present in visahl.sql dump (schema unknown)
-- Table [BussSource]  NOT present in visahl.sql dump (schema unknown)
-- Table [FunctionType]  NOT present in visahl.sql dump (schema unknown)
-- Table [MarketSeg]  NOT present in visahl.sql dump (schema unknown)
-- Table [VenueCapacity]  NOT present in visahl.sql dump (schema unknown)
-- Table [VenueMast]  NOT present in visahl.sql dump (schema unknown)
