# ==========================================================
# Module: fdAmendEntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: PlanDetails
-- --------------------------------------------
Update PlanDetails
    Set NoofDays=Room No
    Where FolioNO=<FolioNO> and Site_Code='<Site_Code>' and RoomNO='<RoomNO>' and DocId='<DocId>' and noofDays=<noofDays>;

-- --------------------------------------------
-- Query 2
-- Uses table: City
-- Uses table: Country
-- Uses table: GuestStat
-- Uses table: State
-- --------------------------------------------
SELECT GuestProf.Code, GuestProf.Name, GuestProf.Add1,GuestProf.ExpiresOn, GuestProf.Add2, GuestProf.Type, GuestProf.PhoneNo, GuestProf.FaxNo, GuestProf.MobileNo, GuestProf.EmailId, GuestProf.Nationality, GuestProf.BirthDate, GuestProf.Anniversary, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, City.CityName, City.ZipCode, State.Name as StateName, Country.Name as CountryName , GuestStat.Name as Status FROM GuestStat
    RIGHT JOIN (((GuestProf
    LEFT JOIN City ON GuestProf.City = City.CityCode)
    LEFT JOIN State ON City.State = State.Code)
    LEFT JOIN Country ON City.Country = Country.Code) ON GuestStat.Code = GuestProf.GuestStatus
    where GuestProf.Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [Country]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestStat]  NOT present in visahl.sql dump (schema unknown)
-- Table [PlanDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
