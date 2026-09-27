# ==========================================================
# Module: RrRoomReservation
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: enviro
-- --------------------------------------------
Select NCUR,PlanCalc,RoomRateEditable,RoomIncTaxEditable,RoomServiceChargeEditable,PlanSelectionBasedOn,ReservationExpandOnSaveYN from enviro
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 2
-- Uses table: SubGroup
-- Uses table: memcatmast
-- --------------------------------------------
Select SubCode as Code,Name From SubGroup
    where ActiveYN=1 and (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO') and (CompanyType in ('Corporate','Travel Agency') Or CompanyType In (Select Code From memcatmast
    Where LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO'))
    Order By Name;

-- --------------------------------------------
-- Query 3
-- Uses table: Employee
-- --------------------------------------------
SELECT Code,Name FROM Employee
    WHERE (LOGSITE_CODE='<LogSiteCode>' OR LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 4
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 5
-- Uses table: SMSEnviro
-- --------------------------------------------
Select ReservationCancelMsg,SendingMessageText from SMSEnviro
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: Booking
-- --------------------------------------------
Delete From Booking
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 7
-- Uses table: GrpBookingDetails
-- --------------------------------------------
Delete From GrpBookingDetails
    Where BookingDocid='<BookingDocid>';

-- --------------------------------------------
-- Query 8
-- Uses table: BookingPlanDetails
-- --------------------------------------------
Delete From BookingPlanDetails
    Where BookingDocid='<BookingDocid>';

-- --------------------------------------------
-- Query 9
-- Uses table: BookingMore
-- --------------------------------------------
Delete From BookingMore
    Where Docid='<Docid>';

-- --------------------------------------------
-- Query 10
-- Uses table: SMSEnviro
-- --------------------------------------------
Select ReservationMsg,SendingMessageText from SMSEnviro
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 11
-- Uses table: SMSEnviro
-- --------------------------------------------
Select ReservationMsg,SendingMessageText from SMSEnviro
    WHERE LOGSITE_CODE='<LogSiteCode>'';

-- --------------------------------------------
-- Query 12
-- Uses table: RoomMast
-- --------------------------------------------
Select Code as SearchCode, Code as RoomNo,Name as Quot from RoomMast
    Where RoomMast.RoomCat='999999';

-- --------------------------------------------
-- Query 13
-- Uses table: Comp_PlanDet
-- --------------------------------------------
Select * from Comp_PlanDet
    where companyCode='<companyCode>' and RoomCat='<RoomCat>' and PLanCode='<PLanCode>';

-- --------------------------------------------
-- Query 14
-- Uses table: GroupProf
-- --------------------------------------------
Select Code,Name From GroupProf
    Order by Name;

-- --------------------------------------------
-- Query 15
-- Uses table: City
-- Uses table: Country
-- Uses table: GuestStat
-- Uses table: State
-- --------------------------------------------
SELECT GuestProf.Code, GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.Type, GuestProf.PhoneNo, GuestProf.FaxNo, GuestProf.MobileNo, GuestProf.EmailId, GuestProf.Nationality, GuestProf.BirthDate, GuestProf.Anniversary, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, City.CityName, City.ZipCode, State.Name as StateName, Country.Name as CountryName , GuestStat.Name as Status FROM GuestStat
    RIGHT JOIN (((GuestProf
    LEFT JOIN City ON GuestProf.City = City.CityCode)
    LEFT JOIN State ON City.State = State.Code)
    LEFT JOIN Country ON City.Country = Country.Code) ON GuestStat.Code = GuestProf.GuestStatus
    where GuestProf.Code='<Code>';

-- --------------------------------------------
-- Query 16
-- Uses table: RoomCat
-- --------------------------------------------
Select Sum(NoRooms) As tNoRooms From RoomCat
    Where LOGSITE_CODE='<LogSiteCode>' AND InclCount='Y';

-- --------------------------------------------
-- Query 17
-- Uses table: GrpBookingDetails
-- --------------------------------------------
Update GrpBookingDetails
    Set Cancel='N',CancelDate=NULL,CancelUName=''
    Where BookingDocid='<BookingDocid>' And Sno=<Sno><Param>;

-- --------------------------------------------
-- Query 18
-- Uses table: groupfoliomore
-- --------------------------------------------
Select * from groupfoliomore
    where Docid='<Docid>';

-- --------------------------------------------
-- Query 19
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
-- Query 20
-- Uses table: PlanMast
-- --------------------------------------------
SELECT PlanMast.Code,PlanMast.Name,PlanMast.PercentApp,RoomTaxStru FROM PlanMast
    where (PlanMast.LOGSITE_CODE='<LogSiteCode>' or PlanMast.LOGSITE_CODE='HO') and PlanMast.code='<code><Param>;

-- --------------------------------------------
-- Query 21
-- Uses table: FixedCharge
-- --------------------------------------------
Select Code,Name From FixedCharge
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') And Code='<Code><Param>';

-- --------------------------------------------
-- Query 22
-- Uses table: City
-- Uses table: GroupProf
-- Uses table: GuestProf
-- Uses table: PayCharge
-- Uses table: RoomCat
-- Uses table: SUBGROUP
-- Uses table: State
-- --------------------------------------------
Select B.DocId,Max(B.BookNo) AS BookNo,Max(B.VDate) AS VDate,Max(B.ArrDate) AS ArrDate,Max(B.DepDate) AS DepDate,Max(B.RoomNo) AS RoomNo,Max(B.RoomRate) AS RoomRate,Max(B.Adult) AS Adult,Max(B.Child) AS Child,Max(RC.Name) As RoomType,Max(B.GuestName) AS GNAME,Max(GroupProf.Name) AS GroupName,Max(GF.Add1) AS Add1,Max(GF.Add2) AS Add2,Max(GF.PhoneNo) AS PhoneNo,Max(GF.MobileNo) AS MobileNo,Max(GF.CreditCardNo) AS CCardNo,Max(GF.ExpiresOn) AS CCExpDate,Max(City.CityName) AS CityName,Max(City.ZipCode) AS Zip,Max(State.Name) as StateName,Max(SG.NAME) AS CompanyName,Sum(PC.AmtCr) AS ADVANCE,Max(B.Guarantee) as Guarantee,Max(B.RefBookNo) as RefBookNo From (((((((Booking B
    LEFT JOIN RoomCat RC ON B.RoomCat = RC.Code)
    Left Join GuestProf GF ON B.GuestProf=GF.Code)
    LEFT JOIN City ON GF.City = City.CityCode)
    LEFT JOIN State ON City.State = State.Code)
    LEFT JOIN SUBGROUP SG ON B.Company=SG.SubCode)
    LEFT JOIN GroupProf ON B.GroupCode = GroupProf.Code)
    Left Join PayCharge PC ON B.DocId=PC.RefDocid);

-- --------------------------------------------
-- Query 23
-- --------------------------------------------
Select IsNull(max(B.RefBookNo),'') as RefBookNo,B.DocId,Max(B.BookNo) AS BookNo,Max(B.Vdate) AS ResDate,Max(B.ArrDate) AS ArrDate, Max(B.DepDate) AS DepDate,Max(B.Adult) AS Adult,Max(B.Child) AS Child,;

-- --------------------------------------------
-- Query 24
-- Uses table: GRPBookingDetails
-- --------------------------------------------
SELECT Count(*) FROM GRPBookingDetails
    WHERE BookingDocId='<BookingDocId>';

-- --------------------------------------------
-- Query 25
-- Uses table: PayCharge
-- --------------------------------------------
SELECT Count(*) FROM PayCharge
    WHERE RefDocId='<RefDocId>' And VType In ('ARRES','ADRES','AWRES');

-- --------------------------------------------
-- Query 26
-- Uses table: PayCharge
-- Uses table: Revmast
-- --------------------------------------------
SELECT Vno as Receipt , Vdate As PayDate , AmtCr as Amount, Revmast.Name FROM PayCharge
    Inner Join Revmast On Revmast.Code=PayCharge.PayCode
    WHERE RefDocId='<RefDocId>' And VType In ('ARRES','ADRES','AWRES')
    Order By Vno;

-- --------------------------------------------
-- Query 27
-- Uses table: PayCharge
-- --------------------------------------------
SELECT MAX(Vno) as Receipt , Max(Vdate) As PayDate , Sum(AmtCr) as Amount FROM PayCharge
    WHERE RefDocId='<RefDocId>' And VType In ('ARRES','ADRES','AWRES');

-- --------------------------------------------
-- Query 28
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtCr) from PayCharge
    where RefDocId='<RefDocId>' And VType In ('ARRES','ADRES','AWRES');

-- --------------------------------------------
-- Query 29
-- Uses table: BookingPlanDetails
-- --------------------------------------------
Select * From BookingPlanDetails
    Where BookingDocid='<BookingDocid>'
    Order By Sno;

-- --------------------------------------------
-- Query 30
-- Uses table: Bookingmore
-- --------------------------------------------
Select * from Bookingmore
    where Docid='<Docid>';

-- --------------------------------------------
-- Query 31
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtCr) from PayCharge
    where RefDocId='<RefDocId>' And VType In ('ARRES','ADRES');

-- --------------------------------------------
-- Query 32
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtCr) from PayCharge
    where RefDocid='<RefDocid>' And VType In ('ARRES','ADRES');

-- --------------------------------------------
-- Query 33
-- Uses table: PayCharge
-- --------------------------------------------
Select Sum(AmtCr) from PayCharge
    where RefDocid='<RefDocid>'
    Order By Sno;

-- --------------------------------------------
-- Query 34
-- Uses table: Enviro
-- --------------------------------------------
Select RRIncTaxDefault,RRSerChrgDefault from Enviro
    Where LogSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 35
-- Uses table: RoomMast
-- --------------------------------------------
Select Count(*) From RoomMast
    Where type='RO' And InclCount='Y' And Code='<Code><Param>hh:nn';

-- --------------------------------------------
-- Query 36
-- Uses table: Planmast
-- --------------------------------------------
Select RoomRate,RRIncTax,RoomTaxStru From Planmast
    Where Code='<Code>';

-- --------------------------------------------
-- Query 37
-- Uses table: Comp_PlanDet
-- --------------------------------------------
Select IsNull(Max(PLANAmt),0) from Comp_PlanDet
    where CompanyCode='<CompanyCode>' and RoomCat='<RoomCat>' And PlanCode='hh:nn';

-- --------------------------------------------
-- Query 38
-- Uses table: ROOMMAST
-- --------------------------------------------
SELECT MULTPER,* FROM ROOMMAST
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and TYPE='RO' AND InclCount='Y' AND ROOMCAT='<ROOMCAT>';

-- --------------------------------------------
-- Query 39
-- Uses table: ROOMCAT
-- --------------------------------------------
SELECT MULTPER FROM ROOMCAT
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and CODE='<CODE>';

-- --------------------------------------------
-- Query 40
-- Uses table: RATELIST
-- --------------------------------------------
SELECT * FROM RATELIST
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') and ROOMCAT='<ROOMCAT>'
    ORDER BY ROOMCAT,ROOMNO,CODE,OCCTYPE;

-- --------------------------------------------
-- Query 41
-- Uses table: SeasonMast1
-- --------------------------------------------
Select * from SeasonMast1;

-- --------------------------------------------
-- Query 42
-- Uses table: Planmast
-- Uses table: RATELIST
-- --------------------------------------------
Select RoomRate,RRIncTax,RoomTaxStru From Planmast
    Where Code='SELECT * FROM RATELIST
    WHERE (LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 43
-- Uses table: Comp_PlanDet
-- Uses table: RATELIST
-- --------------------------------------------
Select IsNull(Max(PLANAmt),0) from Comp_PlanDet
    where CompanyCode='SELECT * FROM RATELIST
    WHERE (LOGSITE_CODE='<LogSiteCode>' and RoomCat='<RoomCat>' And PlanCode='hh:nn';

-- --------------------------------------------
-- Query 44
-- Uses table: RoomCat
-- --------------------------------------------
Select MinAdv from RoomCat
    where Code='<Code>';

-- --------------------------------------------
-- Query 45
-- Uses table: Comp_PlanDet
-- Uses table: FixedCharge
-- Uses table: plan1
-- --------------------------------------------
Select IsNull(Max(PLANAmt),0) from Comp_PlanDet
    where CompanyCode='SELECT plan1.Code, plan1.Chrgcode, FixedCharge.Name,plan1.Revcode,plan1.TaxStru,plan1.FixRate,plan1.TaxInc, plan1.PrintOption,plan1.PostingMethod, plan1.ChargeType, plan1.FlatRate,plan1.Adult, plan1.Child, plan1.ExtraAdult, plan1.ExtraChild,Plan1.App_Date , Plan1.PlanPer, PlanMast.PercentApp,PlanMast.plan_package,Plan1.NoofDays,Plan1.PerDayAmount,Plan1.NetAmount,pLANmAST.RoomPer,PlanMast.RoomRate,PlanMast.PackageAmount,PlanMast.DiscAppYN,PlanMAst.DiscAppOn,planmast.Nights,planmast.Adults,PlanMast.Childs,PLanMast.RRIncTax,PLanMast.RoomTaxStru FROM (PlanMast
    Left Join plan1 on Planmast.Code=Plan1.Code)
    Left Join FixedCharge ON plan1.Chrgcode = FixedCharge.Code
    where (PlanMast.LOGSITE_CODE='<LogSiteCode>' and RoomCat='<RoomCat>' And PlanCode='<PlanCode><Param>;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Booking]  NOT present in visahl.sql dump (schema unknown)
-- Table [BookingMore]  NOT present in visahl.sql dump (schema unknown)
-- Table [BookingPlanDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [Bookingmore]  NOT present in visahl.sql dump (schema unknown)
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [Comp_PlanDet]  NOT present in visahl.sql dump (schema unknown)
-- Table [Country]  NOT present in visahl.sql dump (schema unknown)
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [FixedCharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [GRPBookingDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [GroupProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [GrpBookingDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestStat]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [PlanMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Planmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RATELIST]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMCAT]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [Revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomCat]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SMSEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [SUBGROUP]  NOT present in visahl.sql dump (schema unknown)
-- Table [SeasonMast1]  NOT present in visahl.sql dump (schema unknown)
-- Table [State]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [groupfoliomore]  NOT present in visahl.sql dump (schema unknown)
-- Table [memcatmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [plan1]  NOT present in visahl.sql dump (schema unknown)
