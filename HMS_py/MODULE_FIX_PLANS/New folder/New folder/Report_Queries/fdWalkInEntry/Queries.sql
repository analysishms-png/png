# ==========================================================
# Module: fdWalkInEntry
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Enviro
-- --------------------------------------------
Select NCUR,ArrDateTimeEdit,RRIncTaxDefault,RRSerChrgDefault from Enviro
    Where LogSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: Guestfolio
-- --------------------------------------------
Delete From Guestfolio
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 3
-- Uses table: GuestfolioProfDetail
-- --------------------------------------------
Delete From GuestfolioProfDetail
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 4
-- Uses table: RoomOcc
-- --------------------------------------------
Delete From RoomOcc
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 5
-- Uses table: enviro
-- --------------------------------------------
Select ArrDateTimeEdit from enviro
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 7
-- Uses table: GuestFolio
-- --------------------------------------------
SELECT Count(*) FROM GuestFolio
    WHERE Docid='<Docid>' AND MFolioNo > 0;

-- --------------------------------------------
-- Query 8
-- Uses table: GuestFolio
-- --------------------------------------------
SELECT DocId, MFolioNoDocId,MFolioNo FROM GuestFolio
    WHERE Docid='<Docid>' AND MFolioNo > 0;

-- --------------------------------------------
-- Query 9
-- Uses table: EmailSMSForward
-- --------------------------------------------
Select TxtMsg,MobileNo from EmailSMSForward
    WHERE LOGSITE_CODE='<LogSiteCode>' And Type='Check In' And Len(MobileNo)>=10 And Len(TxtMsg)>0;

-- --------------------------------------------
-- Query 10
-- Uses table: SMSEnviro
-- --------------------------------------------
Select CheckInMsg,SendingMessageText from SMSEnviro
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 11
-- Uses table: GUESTPROF
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From GUESTPROF;

-- --------------------------------------------
-- Query 12
-- Uses table: GuestProfFor
-- --------------------------------------------
Delete From GuestProfFor
    Where Code='<Code>';

-- --------------------------------------------
-- Query 13
-- Uses table: GuestProfVeh
-- --------------------------------------------
Delete From GuestProfVeh
    Where Code='<Code>';

-- --------------------------------------------
-- Query 14
-- Uses table: GuestFolioProfDetail
-- --------------------------------------------
Select Count(*) From GuestFolioProfDetail
    Where IsNull(Docid,'')='' And mProf=<mProf>;

-- --------------------------------------------
-- Query 15
-- Uses table: GuestFolioProfDetail
-- --------------------------------------------
Update GuestFolioProfDetail
    Set DocId='<DocId>'
    Where IsNull(Docid,'')='' And mProf=<mProf>;

-- --------------------------------------------
-- Query 16
-- Uses table: Paycharge
-- --------------------------------------------
Update Paycharge
    Set ContraDocId='<ContraDocId>'
    Where DocId='<DocId>' And Sno=<Sno>;

-- --------------------------------------------
-- Query 17
-- Uses table: GUestFolio
-- --------------------------------------------
Update GUestFolio
    set GuestProf=<GuestProf>,Name='
    Order By VP.Date_From DESC;

-- --------------------------------------------
-- Query 18
-- Uses table: EPABX_IN
-- --------------------------------------------
Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN;

-- --------------------------------------------
-- Query 19
-- Uses table: PlanDetails
-- --------------------------------------------
Insert Into PlanDetails (FolioNo,RoomNo,RevCode,Chrgcode,TaxInc,TaxStru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild,NoOfDays,PlanPer,App_Date,FixRate,Site_Code,U_Name,U_EntDt,U_AE,Amount,PlanCode,Docid,NetPackageAmount,LogSite_Code,DiscAmt,PlanAppDate) Values (<Param>;

-- --------------------------------------------
-- Query 20
-- Uses table: GuestFolio
-- --------------------------------------------
Update GuestFolio
    set GuestProf=<GuestProf> And Docid=';

-- --------------------------------------------
-- Query 21
-- Uses table: GuestFolioProfDetail
-- --------------------------------------------
Update GuestFolioProfDetail
    Set DocId='<DocId>'
    Where IsNull(Docid,'')='' And mProf=<mProf>',0,'1','<Param>','<Param>');

-- --------------------------------------------
-- Query 22
-- Uses table: GuestFolio
-- Uses table: Paycharge
-- Uses table: guestProf
-- --------------------------------------------
update guestProf
    set PicPath=Update GuestFolio
    set GuestProf=<GuestProf>,Name=',IdPicPath=Update Paycharge
    Set ContraDocId='<ContraDocId>'
    Where DocId='<DocId>' And Sno=<Sno>
    Where Code=<Code><Param>;

-- --------------------------------------------
-- Query 23
-- Uses table: GuestFolio
-- --------------------------------------------
Update GuestFolio
    set GuestProf=<GuestProf>,Name='<Name>;

-- --------------------------------------------
-- Query 24
-- Uses table: ROOMCAT
-- --------------------------------------------
SELECT MULTPER FROM ROOMCAT
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 25
-- Uses table: RATELIST
-- Uses table: Revmast
-- Uses table: RoomCat
-- Uses table: RoomMast
-- --------------------------------------------
SELECT * FROM RATELIST
    WHERE ROOMCAT='Select RoomMast.Code as SearchCode,RoomMast.Code as RoomNo,RoomMast.Name as Quot,RoomMast.RoomCat,Revmast.TaxStru as RoomTaxStru From RoomMast
    Left Join RoomCat On RoomCat.Code=RoomMast.RoomCat
    Left Join Revmast On RoomCat.Revcode=Revmast.Code
    Where (RoomMast.LOGSITE_CODE='<LogSiteCode>'
    ORDER BY ROOMCAT,ROOMNO,CODE,OCCTYPE;

-- --------------------------------------------
-- Query 26
-- Uses table: SeasonMast1
-- --------------------------------------------
Select * from SeasonMast1;

-- --------------------------------------------
-- Query 27
-- Uses table: enviro
-- --------------------------------------------
Select NCUR,PlanCalc,GRCMandatory,RoomRateEditable,RoomIncTaxEditable,RoomServiceChargeEditable,BlockInvalidTarrifIncTaxYN,PlanSelectionBasedOn from enviro
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 28
-- Uses table: MenuHelp
-- --------------------------------------------
Select Count(*) From MenuHelp
    Where [Option]='Smart Card' And UserName='SA';

-- --------------------------------------------
-- Query 29
-- Uses table: Comp_PlanDet
-- --------------------------------------------
Select * from Comp_PlanDet
    where companyCode='<companyCode>' and RoomCat='<RoomCat>' and PLanCode='<PLanCode>';

-- --------------------------------------------
-- Query 30
-- Uses table: MemEnviro
-- --------------------------------------------
Select Interface From MemEnviro
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 31
-- Uses table: GrpBookingDetails
-- --------------------------------------------
Select ArrDate,ArrTime,NoDays,DepDate,DepTime From GrpBookingDetails
    Where BookingDocId='hh:nn' And Sno=<Sno><Param>;

-- --------------------------------------------
-- Query 32
-- Uses table: GrpBookingDetails
-- --------------------------------------------
Select ArrDate,ArrTime,NoDays,DepDate,DepTime From GrpBookingDetails
    Where BookingDocId='<BookingDocId>' And Sno=<Sno><Param>;

-- --------------------------------------------
-- Query 33
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select * from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='<Code>'
    Order By TaxStru.Limit,TaxStru.Limit1;

-- --------------------------------------------
-- Query 34
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select * from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='<LogSiteCode>TR'
    Order By TaxStru.Limit,TaxStru.Limit1;

-- --------------------------------------------
-- Query 35
-- Uses table: Comp_Inclusive
-- --------------------------------------------
SELECT Inclusive FROM Comp_Inclusive
    where CompanyCode='<CompanyCode>' And (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Inclusive;

-- --------------------------------------------
-- Query 36
-- Uses table: BookingPlanDetails
-- --------------------------------------------
Select * From BookingPlanDetails
    Where BookingDocid='<BookingDocid>' And Sno='<Sno>'
    Order By Sno1;

-- --------------------------------------------
-- Query 37
-- Uses table: FixedCharge
-- --------------------------------------------
Select Code,Name From FixedCharge
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') And Code='<Code><Param>';

-- --------------------------------------------
-- Query 38
-- Uses table: groupfoliomore
-- --------------------------------------------
Select * from groupfoliomore
    where Docid='<Docid>';

-- --------------------------------------------
-- Query 39
-- Uses table: City
-- Uses table: Country
-- Uses table: GuestStat
-- Uses table: State
-- --------------------------------------------
SELECT GuestProf.Code, GuestProf.PicPath, GuestProf.IdPicPath, GuestProf.Name, GuestProf.Add1,GuestProf.ExpiresOn, GuestProf.Add2, GuestProf.Type, GuestProf.PhoneNo, GuestProf.FaxNo, GuestProf.MobileNo, GuestProf.EmailId, GuestProf.Nationality, GuestProf.BirthDate, GuestProf.Anniversary, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, City.CityName, City.ZipCode, State.Name as StateName, Country.Name as CountryName , GuestStat.Name as Status FROM GuestStat
    RIGHT JOIN (((GuestProf
    LEFT JOIN City ON GuestProf.City = City.CityCode)
    LEFT JOIN State ON City.State = State.Code)
    LEFT JOIN Country ON City.Country = Country.Code) ON GuestStat.Code = GuestProf.GuestStatus
    where GuestProf.Code='<Code>';

-- --------------------------------------------
-- Query 40
-- Uses table: ProfileImages
-- --------------------------------------------
SELECT GuestImage,IdImage FROM ProfileImages
    WHERE ProfileCode='<ProfileCode>';

-- --------------------------------------------
-- Query 41
-- Uses table: GuestFolioProfDetail
-- --------------------------------------------
SELECT * FROM GuestFolioProfDetail
    where Docid='<Docid>';

-- --------------------------------------------
-- Query 42
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

-- --------------------------------------------
-- Query 43
-- Uses table: RoomMast
-- --------------------------------------------
Select Count(*) From RoomMast
    Where type='RO' And InclCount='Y' And Code='hh:nn' And RoomCat='hh:nn';

-- --------------------------------------------
-- Query 44
-- Uses table: Planmast
-- --------------------------------------------
Select RoomRate,RRIncTax From Planmast
    Where Code='hh:nn';

-- --------------------------------------------
-- Query 45
-- Uses table: ROOMMAST
-- --------------------------------------------
SELECT MULTPER,* FROM ROOMMAST
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and TYPE='RO' AND InclCount='Y' AND ROOMCAT='<ROOMCAT>';

-- --------------------------------------------
-- Query 46
-- Uses table: ROOMCAT
-- --------------------------------------------
SELECT MULTPER FROM ROOMCAT
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and CODE='<CODE>';

-- --------------------------------------------
-- Query 47
-- Uses table: RATELIST
-- --------------------------------------------
SELECT * FROM RATELIST
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and ROOMCAT='<ROOMCAT>'
    ORDER BY ROOMCAT,ROOMNO,CODE,OCCTYPE;

-- --------------------------------------------
-- Query 48
-- Uses table: Planmast
-- --------------------------------------------
Select RoomRate,RRIncTax From Planmast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 49
-- Uses table: enviro
-- --------------------------------------------
Select * from enviro
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 50
-- Uses table: RoomOcc
-- Uses table: roomOcc
-- --------------------------------------------
Select count(*) from roomOcc
    where RoomNo IN (Select RoomNo from RoomOcc
    where Docid = '<Docid>') AND tYPE NOT IN ('O','C');

-- --------------------------------------------
-- Query 51
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- --------------------------------------------
Select RoomOcc.*,RoomCat.Name as RoomCatName from RoomOcc
    left join RoomCat on roomocc.roomcat=RoomCat.COde
    Where docid='<docid>' and RoomOcc.Type='O';

-- --------------------------------------------
-- Query 52
-- Uses table: taxStru
-- --------------------------------------------
Select * from taxStru
    where Code='<Code>TR';

-- --------------------------------------------
-- Query 53
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select sum(TaxStru.Rate) as Rate from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.Nature='On Base Amt' and taxstru.Code='<Code>'
    Group By TaxStru.Nature;

-- --------------------------------------------
-- Query 54
-- Uses table: taxStru
-- --------------------------------------------
Select * from taxStru
    where Code='<LogSiteCode>TR';

-- --------------------------------------------
-- Query 55
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select sum(TaxStru.Rate) as Rate from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='<Code>'
    Group By TaxStru.Nature;

-- --------------------------------------------
-- Query 56
-- Uses table: GrpBookingDetails
-- --------------------------------------------
Select * from GrpBookingDetails
    Where BookingDocid='<BookingDocid>' and Adults=<Adults> and Childs=<Childs>;

-- --------------------------------------------
-- Query 57
-- Uses table: RevMast
-- Uses table: taxstru
-- --------------------------------------------
Select * from taxstru
    left join RevMast on RevMast.code=TaxStru.TaxCode
    where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='<LogSiteCode>TR';

-- --------------------------------------------
-- Query 58
-- Uses table: roomocc
-- --------------------------------------------
Select count(*) from roomocc
    where logsite_code='<LogSiteCode>' and chkoutdate is null and Roomno='<Roomno>';

-- --------------------------------------------
-- Query 59
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Select Code,Name,CardNo From SmartCardRegistration
    Where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [BookingPlanDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [Comp_Inclusive]  NOT present in visahl.sql dump (schema unknown)
-- Table [Comp_PlanDet]  NOT present in visahl.sql dump (schema unknown)
-- Table [Country]  NOT present in visahl.sql dump (schema unknown)
-- Table [EPABX_IN]  NOT present in visahl.sql dump (schema unknown)
-- Table [EmailSMSForward]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [FixedCharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [GUESTPROF]  NOT present in visahl.sql dump (schema unknown)
-- Table [GUestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [GrpBookingDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolioProfDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProfFor]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProfVeh]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestStat]  NOT present in visahl.sql dump (schema unknown)
-- Table [Guestfolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestfolioProfDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [MenuHelp]  NOT present in visahl.sql dump (schema unknown)
-- Table [Paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [PlanDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [Planmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ProfileImages]  NOT present in visahl.sql dump (schema unknown)
-- Table [RATELIST]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMCAT]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomCat]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [SMSEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [SeasonMast1]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardRegistration]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [groupfoliomore]  NOT present in visahl.sql dump (schema unknown)
-- Table [guestProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [roomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [roomocc]  NOT present in visahl.sql dump (schema unknown)
-- Table [taxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [taxstru]  NOT present in visahl.sql dump (schema unknown)
