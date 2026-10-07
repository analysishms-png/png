# ==========================================================
# Module: frmCompany
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: usermast
-- --------------------------------------------
select * from usermast
    order by user_name;

-- --------------------------------------------
-- Query 2
-- Uses table: usermast
-- --------------------------------------------
insert into usermast(USER_NAME,PASSWD,LABEL,ShortName) values('SA','\','1','SA');

-- --------------------------------------------
-- Query 3
-- Uses table: Enviro
-- --------------------------------------------
Select * from Enviro;

-- --------------------------------------------
-- Query 4
-- Uses table: userMast
-- --------------------------------------------
select COUNT(*) from userMast;

-- --------------------------------------------
-- Query 5
-- Uses table: userMAST
-- --------------------------------------------
insert into userMAST (USER_NAME,PASSWD,LABEL) values('SA','\','1');

-- --------------------------------------------
-- Query 6
-- Uses table: module
-- Uses table: user1
-- --------------------------------------------
insert into user1(USER_NAME,FORM_CODE,PARAM_STR) select 'SA',code,'AEDP' from module;

-- --------------------------------------------
-- Query 7
-- Uses table: UserMast
-- --------------------------------------------
Select isnull(AllowDtChng,'') from UserMast
    where User_Name='<UserName>';

-- --------------------------------------------
-- Query 8
-- Uses table: company
-- --------------------------------------------
Select * from company <Param>
    order by STart_dt Desc<Param>;

-- --------------------------------------------
-- Query 9
-- Uses table: company
-- --------------------------------------------
select * from company
    where comp_code='<comp_code>';

-- --------------------------------------------
-- Query 10
-- Uses table: usermast
-- --------------------------------------------
select backcolor from usermast
    where (user_name='<UserName>');

-- --------------------------------------------
-- Query 11
-- Uses table: information_schema
-- --------------------------------------------
select Count(*) from information_schema.columns
    where table_name = 'MemEnviro' And column_name='CardExpDate';

-- --------------------------------------------
-- Query 12
-- --------------------------------------------
Alter Table MemEnviro Add CardExpDate DateTime;

-- --------------------------------------------
-- Query 13
-- Uses table: FaEnviro
-- Uses table: MemEnviro
-- --------------------------------------------
Update MemEnviro
    Set CardExpDate=(Select Max(kdate) From FaEnviro);

-- --------------------------------------------
-- Query 14
-- --------------------------------------------
Alter Table FaEnviro Drop CONSTRAINT [DF_FaEnviro_KDate];

-- --------------------------------------------
-- Query 15
-- --------------------------------------------
Alter Table FaEnviro Drop Column kdate;

-- --------------------------------------------
-- Query 16
-- Uses table: Company
-- --------------------------------------------
Update Company
    Set Comp_Id=(Select Left(IsNull(Max(SerialKeyNo),''),10) From Company);

-- --------------------------------------------
-- Query 17
-- Uses table: Company
-- --------------------------------------------
Update Company
    Set SerialKeyNo='';

-- --------------------------------------------
-- Query 18
-- Uses table: Company
-- --------------------------------------------
Select * from Company;

-- --------------------------------------------
-- Query 19
-- Uses table: MemEnviro
-- --------------------------------------------
select * from MemEnviro;

-- --------------------------------------------
-- Query 20
-- Uses table: dbo
-- --------------------------------------------
Select Count(*) from dbo.sysobjects
    where id = object_id(N'[dbo].[eInvoiceEnviro]') and OBJECTPROPERTY(id, N'IsTable') = 1;

-- --------------------------------------------
-- Query 21
-- Uses table: sys
-- --------------------------------------------
select sum([rows]) from sys.partitions
    where object_id=object_id('eInvoiceEnviro') and index_id in (0,1);

-- --------------------------------------------
-- Query 22
-- Uses table: eInvoiceEnviro
-- --------------------------------------------
Select IsNull(ASPId,'') from eInvoiceEnviro;

-- --------------------------------------------
-- Query 23
-- Uses table: PlanMast
-- Uses table: RevMast
-- Uses table: RoomCat
-- --------------------------------------------
Update PlanMast
    SET RoomTaxStru=RevMast.TaxStru FROM PlanMast
    LEFT JOIN RoomCat ON RoomCat.Code = PlanMast.RoomCat
    LEFT JOIN RevMast ON RevMast.Code = RoomCat.RevCode
    WHERE IsNull(Planmast.RoomTaxStru,'')='';

-- --------------------------------------------
-- Query 24
-- Uses table: Revmast
-- Uses table: RoomCat
-- Uses table: RoomOcc
-- --------------------------------------------
UPDATE RoomOcc
    SET RoomTaxStru=Q.TaxStru FROM RoomOcc
    INNER JOIN (SELECT DocId+CAST(SNo AS VARCHAR) DocIdS,RoomOcc.RoomRate,RevMast.TaxStru FROM RoomOcc
    Inner Join RoomCat On RoomCat.Code=RoomOcc.RoomCat
    Inner Join Revmast On RoomCat.Revcode=Revmast.Code
    WHERE IsNull(RoomOcc.RoomTaxStru,'')='') Q ON DocId+CAST(SNo AS VARCHAR)=Q.DocIdS;

-- --------------------------------------------
-- Query 25
-- Uses table: GrpBookingDetails
-- Uses table: Revmast
-- Uses table: RoomCat
-- --------------------------------------------
UPDATE GrpBookingDetails
    SET RoomTaxStru=Q.TaxStru FROM GrpBookingDetails
    INNER JOIN (SELECT BookingDocId+CAST(SNo AS VARCHAR) DocIdS,RevMast.TaxStru FROM GrpBookingDetails
    Inner Join RoomCat On RoomCat.Code=GrpBookingDetails.RoomCat
    Inner Join Revmast On RoomCat.Revcode=Revmast.Code
    WHERE IsNull(GrpBookingDetails.RoomTaxStru,'')='') Q ON BookingDocId+CAST(SNo AS VARCHAR)=Q.DocIdS;

-- --------------------------------------------
-- Query 26
-- Uses table: GuestFolioProfDetail
-- --------------------------------------------
Delete From GuestFolioProfDetail
    Where Docid='';

-- --------------------------------------------
-- Query 27
-- Uses table: ItemMast
-- --------------------------------------------
Update ItemMast
    Set MRP=IsNull(MRP,0)
    Where MRP Is Null;

-- --------------------------------------------
-- Query 28
-- Uses table: ItemRate
-- --------------------------------------------
Update ItemRate
    Set MRP=IsNull(MRP,0)
    Where MRP Is Null;

-- --------------------------------------------
-- Query 29
-- Uses table: Stock
-- --------------------------------------------
Update Stock
    Set MRP=IsNull(MRP,0)
    Where MRP Is Null;

-- --------------------------------------------
-- Query 30
-- Uses table: StockLog
-- --------------------------------------------
Update StockLog
    Set MRP=IsNull(MRP,0)
    Where MRP Is Null;

-- --------------------------------------------
-- Query 31
-- Uses table: SplitStock
-- --------------------------------------------
Update SplitStock
    Set MRP=IsNull(MRP,0)
    Where MRP Is Null;

-- --------------------------------------------
-- Query 32
-- Uses table: RevMast
-- --------------------------------------------
Update RevMast
    Set Active=IsNull(Active,'')
    Where Active Is Null;

-- --------------------------------------------
-- Query 33
-- Uses table: RevMast
-- --------------------------------------------
Update RevMast
    Set TaxInc=IsNull(TaxInc,'No')
    Where TaxInc Is Null;

-- --------------------------------------------
-- Query 34
-- Uses table: Sale1
-- --------------------------------------------
Update Sale1
    Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt
    Where IsNull(AU_Name,'')='';

-- --------------------------------------------
-- Query 35
-- Uses table: Sale1Log
-- --------------------------------------------
Update Sale1Log
    Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt
    Where IsNull(AU_Name,'')='';

-- --------------------------------------------
-- Query 36
-- Uses table: SplitSale1
-- --------------------------------------------
Update SplitSale1
    Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt
    Where IsNull(AU_Name,'')='';

-- --------------------------------------------
-- Query 37
-- Uses table: Paycharge
-- --------------------------------------------
Update Paycharge
    Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt
    Where IsNull(AU_Name,'')='';

-- --------------------------------------------
-- Query 38
-- Uses table: PaychargeLog
-- --------------------------------------------
Update PaychargeLog
    Set AU_Name=IsNull(U_Name,''),AU_EntDt=U_EntDt
    Where IsNull(AU_Name,'')='';

-- --------------------------------------------
-- Query 39
-- Uses table: GuestReward
-- Uses table: Sale1
-- --------------------------------------------
Update GuestReward
    Set Total=Q.Total,DiscAmt=Q.DiscAmt,RestCode=Q.RestCode,SchemeCode='',SaleUpTo=0,RPointOnAmt=0,RewardValue=0,RedeemValue=0 From (Select S1.Total,S1.DiscAmt,S1.RestCode,G.DocId From GuestReward G
    Inner Join Sale1 S1 On G.DocId=S1.DocId)Q
    Where GuestReward.DocId=Q.DocId And IsNull(GuestReward.RestCode,'')='';

-- --------------------------------------------
-- Query 40
-- Uses table: SmartCardRegistration
-- --------------------------------------------
Update SmartCardRegistration
    Set RewardBal=IsNull(RewardBal,0),RewardSale=IsNull(RewardSale,0),RewardPoint=IsNull(RewardPoint,0),RedeemPoint=IsNull(RedeemPoint,0)
    Where RedeemPoint Is Null;

-- --------------------------------------------
-- Query 41
-- Uses table: Depart
-- Uses table: Enviro
-- --------------------------------------------
Update Depart
    Set KOTAtNightAudit=(Select IsNull(Max(KOTAtNightAudit),'') From Enviro
    Where LogSite_Code='<LogSiteCode>')
    Where IsNull(KOTAtNightAudit,'')='' And OutletYN='Y';

-- --------------------------------------------
-- Query 42
-- Uses table: Booking
-- Uses table: GuestProf
-- --------------------------------------------
Update GuestProf
    Set FOM=1
    Where Code In (Select GuestProf From Booking) And FOM Is Null;

-- --------------------------------------------
-- Query 43
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- --------------------------------------------
Update GuestProf
    Set FOM=1
    Where Code In (Select GuestProf From GuestFolio) And FOM Is Null;

-- --------------------------------------------
-- Query 44
-- Uses table: GuestFolioProfDetail
-- Uses table: GuestProf
-- --------------------------------------------
Update GuestProf
    Set FOM=1
    Where Code In (Select GuestProf From GuestFolioProfDetail) And FOM Is Null;

-- --------------------------------------------
-- Query 45
-- Uses table: GuestProf
-- Uses table: GuestReward
-- --------------------------------------------
Update GuestProf
    Set POS=1
    Where Code In (Select CustCode From GuestReward) And POS Is Null;

-- --------------------------------------------
-- Query 46
-- Uses table: GuestProf
-- --------------------------------------------
Update GuestProf
    Set FOM=ISNULL(FOM,0);

-- --------------------------------------------
-- Query 47
-- Uses table: GuestProf
-- --------------------------------------------
Update GuestProf
    Set POS=ISNULL(POS,0);

-- --------------------------------------------
-- Query 48
-- Uses table: MarketSeg
-- --------------------------------------------
Update MarketSeg
    Set Active=ISNULL(Active,'');

-- --------------------------------------------
-- Query 49
-- Uses table: BussSource
-- --------------------------------------------
Update BussSource
    Set Active=ISNULL(Active,'');

-- --------------------------------------------
-- Query 50
-- Uses table: RoomDiscount
-- --------------------------------------------
Update RoomDiscount
    Set Adult=ISNULL(Adult,1);

-- --------------------------------------------
-- Query 51
-- Uses table: Item
-- --------------------------------------------
Update Item
    Set CommodityCode=ItemMast.CommodityCode From Item,ItemMast
    Where Item.Code=ItemMast.Code And Item.CommodityCode IS Null;

-- --------------------------------------------
-- Query 52
-- Uses table: Depart
-- Uses table: Enviro
-- --------------------------------------------
Update Depart
    Set CoverMandatory=(Select IsNull(Max(CoversMandatory),'') From Enviro
    Where LogSite_Code='<LogSiteCode>')
    Where CoverMandatory Is Null;

-- --------------------------------------------
-- Query 53
-- Uses table: ItemRate
-- --------------------------------------------
Update ItemRate
    Set Party=ISNULL(Party,'');

-- --------------------------------------------
-- Query 54
-- Uses table: SunTranFacility
-- --------------------------------------------
Update SunTranFacility
    set Vtype='FACL'
    Where Vtype='8';

-- --------------------------------------------
-- Query 55
-- Uses table: FacilityBill
-- Uses table: FacilityBill1
-- --------------------------------------------
Update FacilityBill1
    Set FacilityBill1.LocationCode=Q.LocationCode From (Select FacilityBill.DocId,FacilityBill.LocationCode From FacilityBill)Q
    Where DocId1=Q.Docid And IsNull(FacilityBill1.LocationCode,'')='';

-- --------------------------------------------
-- Query 56
-- Uses table: COMPANY
-- --------------------------------------------
DELETE FROM COMPANY
    WHERE COMP_CODE='<COMP_CODE>';

-- --------------------------------------------
-- Query 57
-- Uses table: depart
-- --------------------------------------------
select code,Name,KOTYN from depart
    where outletYN='Y';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Booking]  NOT present in visahl.sql dump (schema unknown)
-- Table [BussSource]  NOT present in visahl.sql dump (schema unknown)
-- Table [COMPANY]  NOT present in visahl.sql dump (schema unknown)
-- Table [Company]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [FaEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [FacilityBill]  NOT present in visahl.sql dump (schema unknown)
-- Table [FacilityBill1]  NOT present in visahl.sql dump (schema unknown)
-- Table [GrpBookingDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolioProfDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestReward]  NOT present in visahl.sql dump (schema unknown)
-- Table [Item]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemRate]  NOT present in visahl.sql dump (schema unknown)
-- Table [MarketSeg]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [Paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [PaychargeLog]  NOT present in visahl.sql dump (schema unknown)
-- Table [PlanMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomCat]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomDiscount]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [Sale1]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL,
--     Vtype                  varchar (5) NULL,
--     VNo                    int NULL,
--     Vtime                  varchar (5) NULL,
--     Site_Code              varchar (2) NULL,
--     Vprefix                varchar (5) NULL,
--     Vdate                  datetime NULL,
--     RestCode               varchar (6) NULL,
--     RoomCat                varchar (5) NULL,
--     RoomType               varchar (2) NULL,
--     RoomNo                 varchar (5) NULL,
--     FolioNo                int NULL,
--     Party                  varchar (8) NULL,
--     Total                  float NULL,
--     DiscPer                float NULL,
--     DiscAmt                float NULL,
--     NonTaxable             float NULL,
--     Taxable                float NULL,
--     Tax                    float NULL,
--     ServiceCharge          float NULL,
--     AddAmt                 float NULL,
--     DedAmt                 float NULL,
--     RoundOff               float NULL,
--     NetAmt                 float NULL,
--     Remark                 varchar (255) NULL,
--     Waiter                 varchar (8) NULL,
--     FrBookDate             datetime NULL,
--     FrBookTime             varchar (5) NULL,
--     MenuSpl1               varchar (30) NULL,
--     MenuSpl2               varchar (30) NULL,
--     MenuSpl3               varchar (30) NULL,
--     MenuSpl4               varchar (30) NULL,
--     FuncName               varchar (30) NULL,
--     HouseKeep              varchar (25) NULL,
--     FrontOff               varchar (25) NULL,
--     Engg                   varchar (25) NULL,
--     Security               varchar (25) NULL,
--     Chef                   varchar (25) NULL,
--     Board                  varchar (25) NULL,
--     KOTNo                  varchar (255) NULL,
--     TokenNo                int NULL,
--     ExpAtt                 smallint NULL,
--     GuarAtt                smallint NULL,
--     CoverRate              float NULL,
--     U_Name                 varchar (10) NULL,
--     U_EntDt                datetime NULL,
--     U_AE                   varchar (1) NULL,
--     ToBookDate             datetime NULL,
--     ToBookTime             varchar (5) NULL,
--     HallRent               float NULL,
--     TotalPerCover          float NULL,
--     Amount                 float NULL,
--     Advance                float NULL,
--     RecNo                  int NULL,
--     RecDate                datetime NULL,
--     CrCardNo               varchar (20) NULL,
--     CrCardHolder           varchar (35) NULL,
--     BookDocId              varchar (21) NULL,
--     DelFlag                varchar (1) NULL,
--     PRINTED                varchar (1) NULL,
--     LogSite_Code           varchar (2) NULL,
--     DeliveredYN            varchar (1) NULL,
--     PhoneNo                varchar (20) NULL,
--     CustName               varchar (50) NULL,
--     Addr1                  varchar (50) NULL,
--     Addr2                  varchar (50) NULL,
--     CashRecd               float NULL,
--     BookNo                 int NULL,
--     SeqNo                  smallint NULL,
--     CardNo                 varchar (15) NULL,
--     ServiceTax             float NULL,
--     FolionoDocid           varchar (21) NULL,
--     AU_Name                varchar (10) NULL,
--     AU_EntDt               datetime NULL,
--     Redemption             float NULL,
--     DiscRemark             varchar (50) NULL,
--     CGST                   float NULL,
--     SGST                   float NULL,
--     IGST                   float NULL,
--     EditRemark             varchar (75) NULL,
-- Table [Sale1Log]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardRegistration]  NOT present in visahl.sql dump (schema unknown)
-- Table [SplitSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [SplitStock]  NOT present in visahl.sql dump (schema unknown)
-- Table [Stock]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL,
--     Sno                    smallint NOT NULL,
--     Vtype                  varchar (5) NULL,
--     VNo                    int NULL,
--     Site_Code              varchar (2) NULL,
--     Vprefix                varchar (5) NULL,
--     Vdate                  datetime NULL,
--     PartyCode              varchar (8) NULL,
--     RestCode               varchar (6) NULL,
--     RoomCat                varchar (5) NULL,
--     RoomType               varchar (2) NULL,
--     RoomNo                 varchar (5) NULL,
--     ContraDocId            varchar (21) NULL,
--     ContraSno              int NULL,
--     Item                   varchar (8) NULL,
--     QtyIss                 float NULL,
--     QtyRec                 float NULL,
--     Unit                   varchar (6) NULL,
--     Rate                   float NULL,
--     Amount                 float NULL,
--     TaxPer                 float NULL,
--     TaxAmt                 float NULL,
--     DiscPer                float NULL,
--     DiscAmt                float NULL,
--     VoidYN                 varchar (1) NULL,
--     Remarks                varchar (75) NULL,
--     KOTDocId               varchar (21) NULL,
--     KOTSno                 smallint NULL,
--     VTime                  varchar (6) NULL,
--     U_Name                 varchar (10) NULL,
--     U_EntDt                datetime NULL,
--     U_AE                   varchar (1) NULL,
--     Total                  float NULL,
--     DiscApp                varchar (1) NULL,
--     RoundOff               varchar (3) NULL,
--     DepartCode             varchar (6) NULL,
--     GodownCode             varchar (6) NULL,
--     ChalQty                float NULL,
--     RecdQty                float NULL,
--     AccQty                 float NULL,
--     RejQty                 float NULL,
--     RecdUnit               varchar (6) NULL,
--     Specification          varchar (35) NULL,
--     ItemRate               float NULL,
--     DelFlag                varchar (1) NULL,
--     LandVal                float NULL,
--     ConvRatio              float NULL,
--     IndentDocId            varchar (21) NOT NULL,
--     IndentSNo              int NULL,
--     IssQty                 float NULL,
--     IssueUnit              varchar (6) NULL,
--     LogSite_Code           varchar (2) NULL,
--     FreeSno                int NULL,
--     SchemeCode             varchar (6) NULL,
--     SeqNo                  smallint NULL,
--     Company                varchar (8) NULL,
--     ExpDate                datetime NULL,
--     MfdDate                datetime NULL,
--     ItemRestCode           varchar (6) NULL,
--     ShiftCode              varchar (5) NULL,
--     MRP                    float NULL,
--     SChrgApp               varchar (1) NULL,
--     SChrgPer               float NULL,
--     SChrgAmt               float NULL,
--     RefDocId               varchar (21) NULL,
-- Table [StockLog]  NOT present in visahl.sql dump (schema unknown)
-- Table [SunTranFacility]  NOT present in visahl.sql dump (schema unknown)
-- Table [UserMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [company]  NOT present in visahl.sql dump (schema unknown)
-- Table [dbo]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [eInvoiceEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [information_schema]  NOT present in visahl.sql dump (schema unknown)
-- Table [module]  NOT present in visahl.sql dump (schema unknown)
-- Table [sys]  NOT present in visahl.sql dump (schema unknown)
-- Table [user1]  NOT present in visahl.sql dump (schema unknown)
-- Table [userMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [userMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [usermast]  NOT present in visahl.sql dump (schema unknown)
