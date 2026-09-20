# ==========================================================
# Module: FaSubGroup
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode As SearchCode,SubCode,Site_Code,Name,LOGSITE_CODE From SubGroup
    Where (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 2
-- Uses table: AcGroup
-- Uses table: City
-- --------------------------------------------
Select SubCode,Name,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,Active=CASE ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' END,CreditLimit,CreditDays,Remark,GSTIN From (SubGroup S
    Left Join AcGroup G on S.GroupCode=G.GroupCode)
    Left Join City C on S.CityCode=C.CityCode <Param><Param><Param>' OR S.LOGSITE_CODE='HO');

-- --------------------------------------------
-- Query 3
-- Uses table: AcGroup
-- --------------------------------------------
Select ID,GroupCode,GroupName,Nature,AliasYN,GroupNature From AcGroup
    Where GroupCode='<GroupCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: AcGroup
-- Uses table: CATEGORY
-- Uses table: City
-- Uses table: TDSCAT
-- --------------------------------------------
Select S.*,G.GroupNature AS GNature,G.GroupName,G.MainGrCode,C.CityName,T.CATEGORY_Desc,TDSCAT.NAME AS TDSNAME From (((SubGroup S
    Left Join AcGroup G on S.GroupCode=G.GroupCode)
    Left Join City C on S.CityCode=C.CityCode)
    Left Join CATEGORY T on S.CatEGORY=T.CatEGORY)
    LEFT JOIN TDSCAT ON TDSCAT.CODE=S.TDS_Catg
    Where S.SubCode='<SubCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: Subgroup
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From Subgroup
    where SubCode='<SubCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: Ledger
-- --------------------------------------------
Select isnull(Sum(AmtCr),0) From Ledger
    Where V_Type='F_AO' and SubCode='<SubCode>';

-- --------------------------------------------
-- Query 7
-- Uses table: Ledger
-- --------------------------------------------
Select isnull(Sum(AmtDr),0) From Ledger
    Where V_Type='F_AO' and SubCode='<SubCode>';

-- --------------------------------------------
-- Query 8
-- Uses table: Ledger
-- --------------------------------------------
Select isnull(Sum(AmtCr),0) From Ledger
    Where V_Type='F_AO' and SubCode='<SubCode>' AND LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 9
-- Uses table: Ledger
-- --------------------------------------------
Select isnull(Sum(AmtDr),0) From Ledger
    Where V_Type='F_AO' and SubCode='<SubCode>' AND LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 10
-- Uses table: SubGroup
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(SubCode,3,6) AS INT)),0)+1 AS MyCode From SubGroup
    Where IsNumeric(substring(SubCode,3,6))=1;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [AcGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [CATEGORY]  NOT present in visahl.sql dump (schema unknown)
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [TDSCAT]  NOT present in visahl.sql dump (schema unknown)
