# ==========================================================
# Module: FrmPartyLocations
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: LocationMast
-- Uses table: Subgroup
-- --------------------------------------------
select PL.PrCode, S.Name, PL.LcCode, L.Name as Location, PL.AppDate from ((PartyLocation PL
    Left Join Subgroup S on PL.PrCode=S.Subcode)
    Left Join LocationMast L on PL.LcCode=L.Code)
    Where PL.LogSite_Code='<LogSiteCode>' and PL.Site_Code='<Site_Code>'
    Order By L.Name;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [LocationMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
