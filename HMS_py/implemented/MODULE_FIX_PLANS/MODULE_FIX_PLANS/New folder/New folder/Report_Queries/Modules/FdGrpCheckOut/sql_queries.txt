# ==========================================================
# Module: FdGrpCheckOut
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: RoomOcc
-- --------------------------------------------
Select * from RoomOcc
    Where DocId='<DocId>' And SNo=1;

-- --------------------------------------------
-- Query 3
-- Uses table: Enviro
-- --------------------------------------------
Select Max(IsNull(RoomCheckOutClearanceYN,'')) from Enviro
    where lOGSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 4
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where LOGsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: EPABX_IN
-- --------------------------------------------
Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN;

-- --------------------------------------------
-- Query 6
-- Uses table: PrinterSetup
-- --------------------------------------------
Select * from PrinterSetup
    Where RestCode='<LogSiteCode>FOM';

-- --------------------------------------------
-- Query 7
-- Uses table: enviro
-- --------------------------------------------
Select nCUR from enviro
    where LOGsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 8
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where lOGSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 9
-- Uses table: paycharge
-- --------------------------------------------
Select iif(isnull(bill_no),'',Bill_No) as Bill_NO,AmtDr from paycharge
    where (ContraDocId is NULL or contradocid='') and folionoDocid='<folionoDocid>';

-- --------------------------------------------
-- Query 10
-- Uses table: paycharge
-- --------------------------------------------
Select * from paycharge
    where (ContraDocId is NULL or contradocid='') and folionoDocid='<folionoDocid>'
    order by vDate,VNO,SNO;

-- --------------------------------------------
-- Query 11
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct Split,FolioNoDocid from paycharge
    where (ContraDocId is NULL or contradocid='') and folionoDocid='<folionoDocid>';

-- --------------------------------------------
-- Query 12
-- Uses table: PayCharge
-- --------------------------------------------
Select Distinct Bill_NO from PayCharge
    where (ContraDocId is NULL or contradocid='') and folionoDocid='<folionoDocid>' and (Bill_No<>'' or Bill_No is Not Null);

-- --------------------------------------------
-- Query 13
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct Split,Bill_no from paycharge
    where AMtdr<>0 and (ContraDocId is NULL or contradocid='') AND (BILL_NO IS NOT NULL OR BILL_NO<>'') and folionoDocid='<folionoDocid>';

-- --------------------------------------------
-- Query 14
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct iif(isnull(Split),'1',Split) as Split,Bill_no from paycharge
    where AMtdr<>0 and (ContraDocId is NULL or contradocid='') and folionoDocid='<folionoDocid>';

-- --------------------------------------------
-- Query 15
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro
    where LOGSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 16
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct Split,Bill_No from paycharge
    where (ContraDocId is NULL or contradocid='') and folionoDocid='<folionoDocid>';

-- --------------------------------------------
-- Query 17
-- Uses table: PayCharge
-- --------------------------------------------
select max(Plancharge) as PlanCharge from PayCharge
    where folioNODocid='<folioNODocid>';

-- --------------------------------------------
-- Query 18
-- Uses table: PlanDetails
-- --------------------------------------------
Select * from PlanDetails
    where FolioNoDocid='<FolioNoDocid>' And PrintOption='Print Seperately';

-- --------------------------------------------
-- Query 19
-- Uses table: PlanDetails
-- --------------------------------------------
Select * from PlanDetails
    where Docid='<Docid>' And PrintOption='Print Seperately';

-- --------------------------------------------
-- Query 20
-- Uses table: PayCharge
-- --------------------------------------------
Update PayCharge
    Set Split='1'
    Where Docid='<Docid>' and Sno=<Sno><Param>' And Split='<Split>' And Amtcr<>0
    order by VDate;

-- --------------------------------------------
-- Query 21
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: Subgroup
-- --------------------------------------------
SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory,isnull(ST.Name,'') As TravelA, RoomOcc.DepTime, RoomOcc.ChkInTime,RoomOcc.PlanCode FROM (((GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    left joIn Subgroup S on GuestFolio.Company=s.Subcode)
    Left Join Subgroup ST on GuestFolio.TravelAgent=ST.Subcode
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 22
-- Uses table: PlanMast
-- --------------------------------------------
Select Name from PlanMast
    where Code='<Code>';

-- --------------------------------------------
-- Query 23
-- Uses table: FixedCharge
-- --------------------------------------------
Select name from FixedCharge
    where Code='<Code>';

-- --------------------------------------------
-- Query 24
-- Uses table: RoundOffSetting
-- --------------------------------------------
SELECT RoundOffType FROM RoundOffSetting
    WHERE ModuleName='Guest Bill' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 25
-- Uses table: paycharge
-- --------------------------------------------
Select isnull(bill_no,'') as Bill_NO,AmtDr from paycharge
    where (ContraDocId is NULL or contradocid='') and folionoDocid='<folionoDocid>';

-- --------------------------------------------
-- Query 26
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct Split,Bill_no from paycharge
    where AMtdr<>0 and (ContraDocId is NULL or contradocid='') and folionoDocid='<folionoDocid>';

-- --------------------------------------------
-- Query 27
-- Uses table: PayCharge
-- --------------------------------------------
Update PayCharge
    Set Split='1'
    Where Docid='<Docid>' and Sno=<Sno>';

-- --------------------------------------------
-- Query 28
-- Uses table: Taxstru
-- --------------------------------------------
Select Taxcode from Taxstru
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 29
-- Uses table: PayCharge
-- --------------------------------------------
Update PayCharge
    Set Split='1'
    Where Docid='<Docid>' and Sno=<Sno> And (PayCharge.AmtDr<>0 or PayCharge.AmtCr<>0)
    order by Paycharge.vDate,Paytype,Paycharge.VNO,Paycharge.SNO;

-- --------------------------------------------
-- Query 30
-- Uses table: RoomOcc
-- --------------------------------------------
SELECT RoomOcc.RoomNo FROM (GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    Where RoomOcc.Type<>'C' And GuestFolio.mfolionoDocid = '<mfolionoDocid>'
    Order By RoomOcc.RoomNo;

-- --------------------------------------------
-- Query 31
-- Uses table: RoomOcc
-- --------------------------------------------
SELECT sum(RoomOcc.Adult) As Adult, sum(RoomOcc.Children) As Child FROM (GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    Where RoomOcc.Type<>'C' And GuestFolio.mfolionoDocid = '<mfolionoDocid>';

-- --------------------------------------------
-- Query 32
-- Uses table: Country
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: Subgroup
-- --------------------------------------------
SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,GuestFolio.GuestProf,Guestprof.ConPrefix as CPrefix,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.MobileNo,GuestProf.PicPath, GuestFolio.FolioNo,GuestFolio.TravelAgent as TravelA, RoomOcc.ChkInDate,RoomOcc.RoomCat,RoomOcc.RoomNo,RoomOcc.ChkOutTime,RoomOcc.ChkOutdate, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, RoomOcc.RoomTarrif, RoomOcc.RateCode, RoomOcc.PlanDisc, GuestFolio.RODisc, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory,isnull(ST.Name,'') As TravelA, RoomOcc.DepTime, RoomOcc.ChkInTime,RoomOcc.PlanCode,RoomOcc.RRTaxInc,Country.Name As GNationality FROM (((GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    left joIn Subgroup S on GuestFolio.Company=s.Subcode)Left
    Join Subgroup ST on GuestFolio.TravelAgent=ST.Subcode
    Left Join Country On Country.Code=GuestProf.Nationality
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 33
-- Uses table: Taxstru
-- Uses table: revmast
-- --------------------------------------------
Select DISTINCT taxstru.taxcode,revmast.name from Taxstru
    inner join revmast on taxstru.taxcode=revmast.code
    Where taxstru.LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 34
-- Uses table: Employee
-- Uses table: GuestProf
-- Uses table: RevMast
-- Uses table: RoomMast
-- Uses table: SubGroup
-- --------------------------------------------
SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf,GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGE AS ST
    LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code)
    LEFT JOIN Employee AS E ON ST.EmpCode = E.Code)
    LEFT JOIN RevMast AS P ON ST.PayCode = P.Code)
    LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left
    join SubGroup CC on CC.SubCode=ST.CompCode
    where ModeSet='S' and ST.FolionoDocid='<FolionoDocid>' And AmtCr>0;

-- --------------------------------------------
-- Query 35
-- Uses table: RevMast
-- --------------------------------------------
Select Max(Name) As Name from RevMast
    where Code='<Code>';

-- --------------------------------------------
-- Query 36
-- Uses table: Depart
-- --------------------------------------------
Select Max(Name) As Name from Depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 37
-- Uses table: Taxstru
-- --------------------------------------------
Select Distinct Taxcode from Taxstru
    Where LogSite_Code='<LogSiteCode>'
    Order By TaxCode;

-- --------------------------------------------
-- Query 38
-- Uses table: Country
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: Subgroup
-- --------------------------------------------
SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,Guestprof.ConPrefix as CPrefix,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo,GuestProf.PicPath, GuestFolio.FolioNo,GuestFolio.TravelAgent as TravelA, RoomOcc.RoomNo,RoomOcc.ChkOutTime,RoomOcc.ChkOutdate, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.RODisc, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory,isnull(ST.Name,'') As TravelA, RoomOcc.DepTime, RoomOcc.ChkInTime,RoomOcc.PlanCode,Country.Name As GNationality FROM (((GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    left joIn Subgroup S on GuestFolio.Company=s.Subcode)Left
    Join Subgroup ST on GuestFolio.TravelAgent=ST.Subcode
    Left Join Country On Country.Code=GuestProf.Nationality
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 39
-- Uses table: RoomOcc
-- --------------------------------------------
SELECT sum(RoomOcc.Adult) As Adult, sum(RoomOcc.Children) As Child FROM (GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    Where GuestFolio.mfolionoDocid = '<mfolionoDocid>';

-- --------------------------------------------
-- Query 40
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: Subgroup
-- --------------------------------------------
SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,Guestprof.ConPrefix as CPrefix,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory,isnull(ST.Name,'') As TravelA, RoomOcc.DepTime, RoomOcc.ChkInTime,RoomOcc.PlanCode FROM (((GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    left joIn Subgroup S on GuestFolio.Company=s.Subcode)
    Left Join Subgroup ST on GuestFolio.TravelAgent=ST.Subcode
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 41
-- Uses table: paycharge
-- --------------------------------------------
Select isnull(bill_no,'') as bill_no,AmtDr from paycharge
    where (ContraDocId is NULL or contradocid='') and folionoDocid='<folionoDocid>';

-- --------------------------------------------
-- Query 42
-- Uses table: Taxstru
-- --------------------------------------------
Select Taxcode from Taxstru
    where taxcode='<LogSiteCode>LT';

-- --------------------------------------------
-- Query 43
-- Uses table: PayCharge
-- --------------------------------------------
Update PayCharge
    Set Split='1'
    Where Docid='<Docid>' and Sno=<Sno> And Amtcr<>0
    order by VDate;

-- --------------------------------------------
-- Query 44
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: Subgroup
-- --------------------------------------------
SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,Guestprof.ConPrefix as CPrefix,GuestProf.Name,GuestProf.Type As type_g,GuestProf.CODE AS code_g, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomCat.Name As Room_CAT , RoomOcc.RoomNo,RoomOcc.ChkOutTime,RoomOcc.ChkOutdate, RoomOcc.Adult, RoomOcc.Children, Guestfolio.BookingDocId, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory,isnull(ST.Name,'') As TravelA, RoomOcc.DepTime, RoomOcc.ChkInTime,RoomOcc.PlanCode,GuestFolio.RoDisc FROM (((GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    left joIn Subgroup S on GuestFolio.Company=s.Subcode)Left
    Join Subgroup ST on GuestFolio.TravelAgent=ST.Subcode
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 45
-- Uses table: Country
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: Subgroup
-- --------------------------------------------
SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,Guestprof.ConPrefix as CPrefix,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo,RoomOcc.ChkOutTime,RoomOcc.ChkOutdate, RoomOcc.Adult, RoomOcc.Children, Case When isnull(Country.Nationality,'')='' Then Country.Name Else Country.Nationality End As Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory,isnull(ST.Name,'') As TravelA, RoomOcc.DepTime, RoomOcc.ChkInTime,RoomOcc.PlanCode FROM (((GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    left joIn Subgroup S on GuestFolio.Company=s.Subcode)Left
    Join Subgroup ST on GuestFolio.TravelAgent=ST.Subcode
    left Join Country On GuestProf.Nationality=Country.Code
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 46
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: Subgroup
-- --------------------------------------------
SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, GuestFolio.RODisc, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory,isnull(ST.Name,'') As TravelA, RoomOcc.DepTime, RoomOcc.ChkInTime,RoomOcc.PlanCode FROM (((GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    left joIn Subgroup S on GuestFolio.Company=s.Subcode)
    Left Join Subgroup ST on GuestFolio.TravelAgent=ST.Subcode
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 47
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select * from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='<LogSiteCode>TR';

-- --------------------------------------------
-- Query 48
-- Uses table: GuestProfFor
-- --------------------------------------------
SELECT PassNo FROM GuestProfFor
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 49
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- Uses table: Subgroup
-- --------------------------------------------
SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,Guestprof.ConPrefix as CPrefix,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo,RoomOcc.ChkOutTime,RoomOcc.ChkOutdate, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory,isnull(ST.Name,'') As TravelA, RoomOcc.DepTime, RoomOcc.ChkInTime,RoomOcc.PlanCode FROM (((GuestProf
    LEFT JOIN (GuestFolio
    LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf)
    LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)
    left joIn Subgroup S on GuestFolio.Company=s.Subcode)Left
    Join Subgroup ST on GuestFolio.TravelAgent=ST.Subcode
    Where GuestFolio.Docid = '<Docid>'
    order by RoomOcc.Sno Desc;

-- --------------------------------------------
-- Query 50
-- Uses table: ROOMOCC
-- --------------------------------------------
sELECT * FROM ROOMOCC
    WHERE TYPE='O'
    ORDER BY CHKOUTDATE,CHKOUTTIME;

-- --------------------------------------------
-- Query 51
-- Uses table: PAYCHARGE
-- --------------------------------------------
SELECT * FROM PAYCHARGE
    WHERE FOLIONO<>0 AND VTYPE Not In ('ARRES','ADRES');



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Country]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [EPABX_IN]  NOT present in visahl.sql dump (schema unknown)
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [FixedCharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProfFor]  NOT present in visahl.sql dump (schema unknown)
-- Table [PAYCHARGE]  NOT present in visahl.sql dump (schema unknown)
-- Table [PayCharge]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL,
--     SNo                    int NOT NULL,
--     Vtype                  varchar (8) NULL,
--     VNo                    int NULL,
--     Site_Code              varchar (2) NULL,
--     VPrefix                varchar (5) NULL,
--     Vdate                  datetime NULL,
--     VTime                  varchar (5) NULL,
--     GuestProf              varchar (8) NULL,
--     EmpCode                varchar (8) NULL,
--     CompCode               varchar (8) NULL,
--     Comments               varchar (255) NULL,
--     PayCode                varchar (6) NULL,
--     PayType                varchar (15) NULL,
--     AmtCr                  float NULL,
--     AmtDr                  float NULL,
--     TipAmt                 float NULL,
--     RoomCat                varchar (5) NULL,
--     RoomType               varchar (2) NULL,
--     RoomNo                 varchar (5) NULL,
--     FolioNo                int NULL,
--     CardNo                 varchar (20) NULL,
--     CardHolder             varchar (35) NULL,
--     ChqNo                  varchar (20) NULL,
--     ChqDate                datetime NULL,
--     ExpDate                datetime NULL,
--     BookNo                 int NULL,
--     BookType               varchar (5) NULL,
--     U_Name                 varchar (10) NULL,
--     U_EntDt                datetime NULL,
--     U_AE                   varchar (1) NULL,
--     RestCode               varchar (6) NULL,
--     BillAmount             float NULL,
--     ContraDocID            varchar (21) NULL,
--     DbtChkIn               varchar (3) NULL,
--     TaxPer                 float NULL,
--     OnAmt                  float NULL,
--     Split                  varchar (2) NULL,
--     Bill_No                varchar (8) NULL,
--     MarkEntry              varchar (1) NULL,
--     ModeSet                varchar (1) NULL,
--     SettleDate             datetime NULL,
--     BatchNo                smallint NULL,
--     OldBill_No             varchar (8) NULL,
--     PlanCharge             varchar (6) NULL,
--     FixedChargeCode        varchar (5) NULL,
--     RelatedFolioNo         int NULL,
--     FolioNoDocid           varchar (21) NULL,
--     LogSite_Code           varchar (2) NOT NULL,
--     RefNo                  int NULL,
--     PlanCode               varchar (5) NULL,
--     SeqNo                  smallint NULL,
--     RelatedFolionoDocId    varchar (21) NULL,
--     RefDocId               varchar (21) NULL,
--     Remarks                varchar (255) NULL,
--     AU_Name                varchar (10) NULL,
--     AU_EntDt               datetime NULL,
--     TaxCondAmt             float NULL,
--     TaxStru                varchar (6) NULL,
--     AgAc                   varchar (8) NULL,
--     TxnNo                  varchar (20) NULL,
-- Table [PlanDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [PlanMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [PrinterSetup]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMOCC]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomCat]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoundOffSetting]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Subgroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [Taxstru]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [taxstru]  NOT present in visahl.sql dump (schema unknown)
