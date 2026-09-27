# ==========================================================
# Module: CompMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: AcGroup
-- --------------------------------------------
Select ID,GroupCode,GroupName,Nature,AliasYN,GroupNature From AcGroup
    Where GroupCode='<GroupCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: AcGroup
-- Uses table: City
-- --------------------------------------------
Select SubCode,Name,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,CreditLimit,CreditDays,Remark,GSTIN,LegalName,TradeName From (SubGroup S
    Left Join AcGroup G on S.GroupCode=G.GroupCode)
    Left Join City C on S.CityCode=C.CityCode <Param>
    Where G.Nature='Customer'and S.CompanyType in ('Corporate','Travel Agency','Mesh');

-- --------------------------------------------
-- Query 3
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode As SearchCode,SubCode,Site_Code,Name From SubGroup
    Where CompanyType in ('Corporate','Travel Agency','Mesh') and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 4
-- Uses table: Roomcat
-- --------------------------------------------
SELECT Code,Name as CatName FROM Roomcat
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 5
-- Uses table: PlanMast
-- --------------------------------------------
Select * from PlanMast
    where Plan_Package='Plan';

-- --------------------------------------------
-- Query 6
-- Uses table: PlanMast
-- Uses table: ROOMCAT
-- --------------------------------------------
Select PlanMast.*,ROOMCAT.NAME AS ROOMCATNAME from PlanMast
    INNER JOIN ROOMCAT ON PLANMAST.ROOMCAT=ROOMCAT.CODE
    where Plan_Package='Plan' and (planmast.LOGSITE_CODE='<LogSiteCode>' or planmast.LOGSITE_CODE='HO')
    ORDER BY planmast.NAME;

-- --------------------------------------------
-- Query 7
-- Uses table: SubGroup
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From SubGroup
    where SubCode='<SubCode>';

-- --------------------------------------------
-- Query 8
-- Uses table: Ledger
-- --------------------------------------------
Select isnull(Sum(AmtCr),0) From Ledger
    Where V_Type='F_AO' and SubCode='<SubCode>';

-- --------------------------------------------
-- Query 9
-- Uses table: Ledger
-- --------------------------------------------
Select isnull(Sum(AmtDr),0) From Ledger
    Where V_Type='F_AO' and SubCode='<SubCode>';

-- --------------------------------------------
-- Query 10
-- Uses table: Comp_PlanDet
-- --------------------------------------------
Select * from Comp_PlanDet
    where CompanyCode='<CompanyCode>' and RoomCat='<RoomCat>' and PlanCode='<PlanCode>';

-- --------------------------------------------
-- Query 11
-- Uses table: Comp_PlanDet
-- --------------------------------------------
Select * from Comp_PlanDet
    where CompanyCode='<CompanyCode>' and RoomCat='<RoomCat>' and PlanCode=''
    Order by V_SNo;

-- --------------------------------------------
-- Query 12
-- --------------------------------------------
Update <Param>
    Set Name='',LEDGER.GROUPNATURE='<GROUPNATURE>'
    Where LEDGER.SUBCODE='<SUBCODE>';

-- --------------------------------------------
-- Query 13
-- Uses table: SubGroup
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(SubCode,3,6) AS INT)),0)+1 AS MyCode From SubGroup
    Where IsNumeric(substring(SubCode,3,6))=1;

-- --------------------------------------------
-- Query 14
-- Uses table: PLanMast
-- Uses table: Roomcat
-- --------------------------------------------
SELECT RoomCat.Code,RoomCat.Name as CatName,PlanMast.Code as PLanCode,PLanMast.Name as PlanName,PlanMast.Total as PlanAmt FROM Roomcat
    inner Join PLanMast on PLanMast.RoomCat=RoomCat.Code
    where (RoomCat.LOGSITE_CODE='<LogSiteCode>' or RoomCat.LOGSITE_CODE='HO')
    order by RoomCat.Name;

-- --------------------------------------------
-- Query 15
-- Uses table: Comp_Inclusive
-- --------------------------------------------
SELECT Count(*) FROM Comp_Inclusive
    where Inclusive='<Inclusive>' And CompanyCode='<CompanyCode>' And (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO');



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [AcGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [Comp_Inclusive]  NOT present in visahl.sql dump (schema unknown)
-- Table [Comp_PlanDet]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [PLanMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PlanMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMCAT]  NOT present in visahl.sql dump (schema unknown)
-- Table [Roomcat]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
