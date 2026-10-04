# ==========================================================
# Module: fdRoomChange
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ROOMCAT
-- --------------------------------------------
SELECT MULTPER FROM ROOMCAT
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 2
-- Uses table: RATELIST
-- Uses table: RoomMast
-- --------------------------------------------
SELECT * FROM RATELIST
    WHERE ROOMCAT='Select Code as SearchCode, Code as RoomNo,Name as Quot from RoomMast
    Where LogSite_Code='<LogSiteCode>'
    ORDER BY ROOMCAT,ROOMNO,CODE,OCCTYPE;

-- --------------------------------------------
-- Query 3
-- Uses table: SeasonMast1
-- --------------------------------------------
Select * from SeasonMast1;

-- --------------------------------------------
-- Query 4
-- Uses table: UserPermission
-- --------------------------------------------
SELECT ChangeRoomDtl FROM UserPermission
    WHERE LOGSITE_CODE='<LogSiteCode>' And CompCode='<CompCode>' And UserName='<UserName>';

-- --------------------------------------------
-- Query 5
-- Uses table: enviro
-- --------------------------------------------
Select NCUR,PlanCalc,RoomRateEditable,RoomIncTaxEditable,RoomServiceChargeEditable,BlockInvalidTarrifIncTaxYN,PlanSelectionBasedOn from enviro
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: EPABX_IN
-- --------------------------------------------
Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN;

-- --------------------------------------------
-- Query 7
-- Uses table: RoomOcc
-- --------------------------------------------
Select MAX(sno) AS SNO from RoomOcc
    where DocId='Validation Error' and Site_Code='<Site_Code>' and RoomNO=';

-- --------------------------------------------
-- Query 8
-- Uses table: taxStru
-- --------------------------------------------
Select * from taxStru
    where Code='<Code>TR';

-- --------------------------------------------
-- Query 9
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select sum(TaxStru.Rate) as Rate from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='<Code>'
    Group By TaxStru.Nature;

-- --------------------------------------------
-- Query 10
-- Uses table: taxStru
-- --------------------------------------------
Select * from taxStru
    where Code='<LogSiteCode>TR';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [EPABX_IN]  NOT present in visahl.sql dump (schema unknown)
-- Table [RATELIST]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMCAT]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [SeasonMast1]  NOT present in visahl.sql dump (schema unknown)
-- Table [UserPermission]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [taxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [taxstru]  NOT present in visahl.sql dump (schema unknown)
