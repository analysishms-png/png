# ==========================================================
# Module: MembershipMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: SubGroup
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(SubCode,3,6) AS INT)),0)+1 AS MyCode From SubGroup
    Where IsNumeric(substring(SubCode,3,6))=1;

-- --------------------------------------------
-- Query 2
-- Uses table: MemberFamily
-- --------------------------------------------
Select Count(*) From MemberFamily
    Where LogSite_Code='<LogSiteCode>' And Relationship='<Relationship>' And SubCode='<SubCode>';

-- --------------------------------------------
-- Query 3
-- Uses table: MemAddRWA
-- --------------------------------------------
Delete From MemAddRWA
    where Mark='*';

-- --------------------------------------------
-- Query 4
-- Uses table: MembershipRevMast
-- --------------------------------------------
SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY MembershipRevMast.Description;

-- --------------------------------------------
-- Query 5
-- Uses table: MemEnviro
-- --------------------------------------------
Select * From MemEnviro
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: MemCatMast
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode As SearchCode,SubCode,Site_Code,Name From SubGroup
    Where CompanyType in (SELECT Code FROM MemCatMast
    WHERE Corporate='N') and (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 7
-- Uses table: MemberFamily
-- --------------------------------------------
Select Count(*) From MemberFamily
    Where HW_ID<>'' And Subcode='<Subcode><Param>;

-- --------------------------------------------
-- Query 8
-- Uses table: City
-- Uses table: Country
-- Uses table: MemCatMast
-- Uses table: MemberFamily
-- Uses table: SUBGROUPCURRBAL
-- Uses table: State
-- --------------------------------------------
Select MF.ConPrefix+' '+MF.Name As Name, S.Name As AcName,MF.CardNo, MCat.Name as CompanyType,MF.DOB As Birthday,MF.WedDate As Anniversary,S.Phone,S.Mobile,(Substring(LTrim(IsNull(S.AddName,'')),1,4)+'.- '+IsNull(S.Add1,'')+IsNull(S.Add2,'')+IsNull(S.Add3,'')) as Address,C.CityName As City,CO.Name As Country,ST.Name As State,S.Pin As PinCode, S.EMail,IsNull((Select Top 1 ConPrefix+Name from MemberFamily
    Where RelationShip='Father' And SubCode=S.SubCode),'') Father,IsNull((Select Top 1 ConPrefix+Name from MemberFamily
    Where RelationShip='Mother' And SubCode=S.SubCode),'') Mother,SCR.CurrBal,SCR.CurBalType,MF.SNo,MF.PicPath,S.GSTIN From (((((Subgroup S
    Inner Join MemberFamily MF On S.SubCode=MF.Subcode)Inner
    Join MemCatMast Mcat On S.CompanyType=Mcat.code)
    Left Join City C On S.CityCode=C.CityCode)
    Left Join Country CO On C.Country=CO.Code)
    Left Join State ST On C.State=ST.Code)
    Left Join (SELECT SUBCODE,ABS(ISNULL(SUM(CURR_BAL),0)) AS CurrBal,CASE WHEN ISNULL(SUM(CURR_BAL),0)>0 THEN 'Cr' WHEN ISNULL(SUM(CURR_BAL),0)<0 THEN 'Dr' Else '' END CurBalType FROM SUBGROUPCURRBAL
    GROUP BY SUBCODE) SCR On SCR.SubCode=S.SubCode
    where ActiveYN=1 And <Param>' And <Param>
    Order by <Param> Mcat.Name,S.ConPerson,MF.SNo;

-- --------------------------------------------
-- Query 9
-- Uses table: AcGroup
-- --------------------------------------------
Select ID,GroupCode,GroupName,Nature,AliasYN,GroupNature From AcGroup
    Where GroupCode='<GroupCode>';

-- --------------------------------------------
-- Query 10
-- Uses table: SubGroup
-- --------------------------------------------
Select Validateupto From SubGroup
    Where validateupto Is Not Null And Subcode='<Subcode>';

-- --------------------------------------------
-- Query 11
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Select * From SmartCardRegistration
    Where code='<code>';

-- --------------------------------------------
-- Query 12
-- Uses table: Ledger
-- --------------------------------------------
Select isnull(Sum(AmtCr),0) From Ledger
    Where V_Type='F_AO' and SubCode='<SubCode>';

-- --------------------------------------------
-- Query 13
-- Uses table: Ledger
-- --------------------------------------------
Select isnull(Sum(AmtDr),0) From Ledger
    Where V_Type='F_AO' and SubCode='<SubCode>';

-- --------------------------------------------
-- Query 14
-- Uses table: MemcatMast
-- --------------------------------------------
select code,Name,Corporate from MemcatMast
    where code='<code>';

-- --------------------------------------------
-- Query 15
-- Uses table: MemcatMast
-- --------------------------------------------
select code,Name,Corporate from MemcatMast
    where code='<code><Param>'
    Order By MPF.SNo;

-- --------------------------------------------
-- Query 16
-- Uses table: SubgroupLog
-- --------------------------------------------
Update SubgroupLog
    Set SeqNo=<SeqNo>',LEDGER.GROUPNATURE='<GROUPNATURE>'
    Where LEDGER.SUBCODE='<SUBCODE>';

-- --------------------------------------------
-- Query 17
-- Uses table: MemProposedMemInf
-- --------------------------------------------
Insert into MemProposedMemInf(Subcode,SNo,PMemCode,MemberType,Mark,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE) Values (';

-- --------------------------------------------
-- Query 18
-- Uses table: MemberFamily
-- --------------------------------------------
Select Count(*) From MemberFamily
    where Subcode='Edit' And SNo=<SNo>;

-- --------------------------------------------
-- Query 19
-- Uses table: MemberFamily
-- --------------------------------------------
Update MemberFamily
    Set SNo=Insert Into MemberFamily (Subcode,SNo,ConPrefix,Name,CardNo,Relationship,Gender,MaritalStatus,DOB,POB,WedDate,Phone,Mobile,Fax,Email,Nationality,Religion,BloodGroup,ProOcc,EdQuali,TBusiness,TurnOver,Desig,PassPort,PAN,InTax,SpInterest,PicPath,';

-- --------------------------------------------
-- Query 20
-- Uses table: MemProposedMemInf
-- Uses table: MemberFamily
-- --------------------------------------------
Update MemProposedMemInf
    Set SNo=Insert Into MemberFamily (Subcode,SNo,ConPrefix,Name,CardNo,Relationship,Gender,MaritalStatus,DOB,POB,WedDate,Phone,Mobile,Fax,Email,Nationality,Religion,BloodGroup,ProOcc,EdQuali,TBusiness,TurnOver,Desig,PassPort,PAN,InTax,SpInterest,PicPath,' And IsNull(HW_Id,'')<>'' And IsNull(CardRegId,'')<>''
    Order By SNo;

-- --------------------------------------------
-- Query 21
-- Uses table: MemAddRWA
-- --------------------------------------------
Update MemAddRWA
    Set SNo=<SNo><Param>' And Name ='Abroad Address' And Mark ='*'' And RevCode Not In('<Param>');



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [AcGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [Country]  NOT present in visahl.sql dump (schema unknown)
-- Table [Ledger]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemAddRWA]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemProposedMemInf]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemberFamily]  NOT present in visahl.sql dump (schema unknown)
-- Table [MembershipRevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemcatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUPCURRBAL]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardRegistration]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubgroupLog]  NOT present in visahl.sql dump (schema unknown)
