# ==========================================================
# Module: MemberModule
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: MemEnviro
-- --------------------------------------------
Select * from MemEnviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: City
-- Uses table: State
-- Uses table: SubGroup
-- Uses table: membill
-- --------------------------------------------
Select S.Name As MemName,S.ConPrefix,S.ConPerson,S.ConPersonMName,S.ConPersonLName,S.Add1,S.Add2,S.Add3,City.CityName,State.ShortName StateCode,State.Name State,S.GSTIN,S.PIN,S.Phone,S.Mobile,M.* From membill M
    Left Join SubGroup S On M.MemCode=S.SubCode
    Left Join City On S.CityCode=City.CityCode
    Left Join State on City.State=State.Code
    Where M.DocId='<DocId>' And M.Site_Code='<Site_Code>' And (M.LogSite_Code='<LogSiteCode>' Or M.LogSite_Code='HO');

-- --------------------------------------------
-- Query 3
-- Uses table: RevMast
-- Uses table: memSunTran
-- --------------------------------------------
Select R.Name As SunName,MS.* From memSunTran MS
    Left Join RevMast R On MS.SunCode=R.Code
    Where MS.DocId='<DocId>' And MS.Site_Code='<Site_Code>' And (MS.LogSite_Code='<LogSiteCode>' Or MS.LogSite_Code='HO')
    Order By Sno;

-- --------------------------------------------
-- Query 4
-- Uses table: MemCatChngDetail
-- --------------------------------------------
Select memcode,frmonth,ToMonth from MemCatChngDetail
    where memcode='<memcode>';

-- --------------------------------------------
-- Query 5
-- Uses table: SubGroup
-- Uses table: membill
-- --------------------------------------------
Select S.Name As MemName,M.* From membill M
    Left Join SubGroup S On M.MemCode=S.SubCode
    Where M.DocId='<DocId>' And M.Site_Code='<Site_Code>' And (M.LogSite_Code='<LogSiteCode>' Or M.LogSite_Code='HO');

-- --------------------------------------------
-- Query 6
-- Uses table: City
-- Uses table: SubGroup
-- Uses table: membill
-- --------------------------------------------
Select S.Name As MemName,S.ConPrefix,S.ConPerson,S.ConPersonMName,S.ConPersonLName,S.Add1,S.Add2,S.Add3,City.CityName,S.PIN,S.Phone,S.Mobile,M.* From membill M
    Left Join SubGroup S On M.MemCode=S.SubCode
    Left Join City On S.CityCode=City.CityCode
    Where M.DocId='<DocId>' And M.Site_Code='<Site_Code>' And (M.LogSite_Code='<LogSiteCode>' Or M.LogSite_Code='HO');



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemCatChngDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [memSunTran]  NOT present in visahl.sql dump (schema unknown)
-- Table [membill]  NOT present in visahl.sql dump (schema unknown)
