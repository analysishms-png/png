# ==========================================================
# Module: rMemberRepView
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Site
-- --------------------------------------------
Select Site_Code AS Code,Site_Desc AS NAME From Site
    Order by Site_Desc;

-- --------------------------------------------
-- Query 2
-- Uses table: FAEnviro
-- --------------------------------------------
Select * From FAEnviro;

-- --------------------------------------------
-- Query 3
-- Uses table: RevMast
-- --------------------------------------------
SELECT DISTINCT RevMast.Code, RevMast.Name FROM (MemBill2 AS M
    INNER JOIN RevMast ON M.TaxCode = RevMast.Code)
    where M.lOGSITE_CODE='<lOGSITE_CODE>' And M.Vdate Between <Param> And <Param>
    Order by RevMast.Name;

-- --------------------------------------------
-- Query 4
-- Uses table: MemBill2
-- --------------------------------------------
Select sum(TaxAmt) as TaxAmt from MemBill2
    where TaxCode in ('<Param>'<Param><Param>'<Param>;

-- --------------------------------------------
-- Query 5
-- Uses table: RevMast
-- --------------------------------------------
SELECT DISTINCT RevMast.Code, RevMast.ShortName, RevMast.Name FROM (MemBill2 AS M
    INNER JOIN RevMast ON M.TaxCode = RevMast.Code)
    where M.lOGSITE_CODE='<lOGSITE_CODE>' And M.Vdate Between <Param> And <Param>
    Order by RevMast.Name;

-- --------------------------------------------
-- Query 6
-- Uses table: City
-- Uses table: MemTagadaLetter
-- Uses table: State
-- Uses table: SubGroup
-- --------------------------------------------
SELECT MTL.*,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL
    Left Join SubGroup SG On MTL.MemCode=SG.SubCode
    Left Join City On SG.CityCode=City.CityCode
    Left Join State On City.State=State.Code
    where <Param> And (MTL.LOGSITE_CODE='<LogSiteCode>' or MTL.LOGSITE_CODE='HO')
    ORDER BY Cast(MTL.Code As Integer);



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [FAEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemBill2]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemTagadaLetter]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Site]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
