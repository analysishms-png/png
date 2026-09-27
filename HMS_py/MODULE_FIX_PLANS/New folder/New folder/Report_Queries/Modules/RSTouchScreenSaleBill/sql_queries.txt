# ==========================================================
# Module: RSTouchScreenSaleBill
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: ItemMast
-- --------------------------------------------
SELECT Code,DispCode,Unit,RestCode,SaleRate AS Rate,DiscApp,Kitchen FROM ItemMast
    WHERE DispCode=<DispCode>;

-- --------------------------------------------
-- Query 2
-- Uses table: CashRegData
-- --------------------------------------------
DELETE FROM CashRegData
    WHERE VDate=<VDate> AND VNo=<VNo> AND SNo=<SNo>;

-- --------------------------------------------
-- Query 3
-- Uses table: CashRegData
-- --------------------------------------------
DELETE FROM CashRegData
    WHERE VDate=<VDate>;

-- --------------------------------------------
-- Query 4
-- Uses table: Paycharge
-- --------------------------------------------
DELETE FROM Paycharge
    WHERE VDate=Cash Register... AND VNo=<VNo>;

-- --------------------------------------------
-- Query 5
-- Uses table: ENVIRO
-- --------------------------------------------
SELECT * FROM ENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 6
-- Uses table: depart
-- --------------------------------------------
Select RateInclTax,AutoSettlement from depart
    where code='<code>';

-- --------------------------------------------
-- Query 7
-- Uses table: depart
-- --------------------------------------------
Select KOtYn from depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 8
-- Uses table: depart
-- --------------------------------------------
Select AutoSplit from depart
    where Code='<Code>';

-- --------------------------------------------
-- Query 9
-- Uses table: Depart
-- --------------------------------------------
Select ShortName,Code,CustInfo from Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 10
-- Uses table: Depart
-- --------------------------------------------
Select Name From Depart
    Where Code ='<Code>';

-- --------------------------------------------
-- Query 11
-- Uses table: Depart
-- --------------------------------------------
Select Name From Depart
    Where Code ='<Code>'';

-- --------------------------------------------
-- Query 12
-- Uses table: Depart
-- Uses table: ItemCatMast
-- Uses table: ItemGrp
-- --------------------------------------------
Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.Unit,IG.Name as ItemGroup,DispCode,IC.taxStru,IC.CatType,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,I.SChrgApp,I.RateIncTax From ((ItemMast I
    left join ItemGrp IG on I.ItemGroup=IG.Code)Left
    Join Depart D On D.Code=I.RestCode)Left
    join ItemCatMast IC on IC.Code=I.ItemCatCode
    Where I.Type='Finish' And I.DispCode <>9999
    Order by I.Name;

-- --------------------------------------------
-- Query 13
-- Uses table: MemENVIRO
-- --------------------------------------------
SELECT * FROM MemENVIRO
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 14
-- Uses table: UserPermission
-- --------------------------------------------
SELECT RefundCashCardAmt FROM UserPermission
    WHERE LOGSITE_CODE='<LogSiteCode>' And CompCode='<CompCode>' And UserName='<UserName>';

-- --------------------------------------------
-- Query 15
-- Uses table: enviro
-- --------------------------------------------
Select FreeiteminKOT from enviro
    where LogSite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 16
-- Uses table: Depart
-- --------------------------------------------
Select 'B'+ShortName From Depart
    Where Code='<Code>';

-- --------------------------------------------
-- Query 17
-- Uses table: SundryType
-- --------------------------------------------
Select Count(*) From SundryType
    WHERE V_Type='<V_Type>';

-- --------------------------------------------
-- Query 18
-- Uses table: SubGroup
-- --------------------------------------------
Select Name,CardNo,Discount From SubGroup
    where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO') And SubCode='<SubCode>';

-- --------------------------------------------
-- Query 19
-- Uses table: Item
-- --------------------------------------------
SELECT * FROM Item;

-- --------------------------------------------
-- Query 20
-- Uses table: ItemMast
-- --------------------------------------------
SELECT Code FROM ItemMast
    WHERE DispCode=Please verify database.;

-- --------------------------------------------
-- Query 21
-- Uses table: ItemMast
-- --------------------------------------------
Select iif(IsNull(Max(val(MID(Code,2)))),1,Max(val(MID(Code,2)))+1)AS MyCode From ItemMast;

-- --------------------------------------------
-- Query 22
-- Uses table: ItemMast
-- --------------------------------------------
DELETE FROM ItemMast
    WHERE DispCode=<DispCode>;

-- --------------------------------------------
-- Query 23
-- Uses table: ItemRate
-- --------------------------------------------
DELETE FROM ItemRate
    WHERE ItemCode='<ItemCode>';

-- --------------------------------------------
-- Query 24
-- Uses table: KOT
-- --------------------------------------------
Update KOT
    set delflag='Y'
    where docid='<docid>';

-- --------------------------------------------
-- Query 25
-- Uses table: Stock
-- --------------------------------------------
Update Stock
    set delflag='D'
    where docid='<docid>';

-- --------------------------------------------
-- Query 26
-- Uses table: Sale1
-- --------------------------------------------
Update Sale1
    set delflag='D',Remark='<Remark>',U_name='<U_name>',U_AE='E'
    where docid='<docid>';

-- --------------------------------------------
-- Query 27
-- Uses table: Sale2
-- --------------------------------------------
Update Sale2
    set delflag='D'
    where docid='<docid>';

-- --------------------------------------------
-- Query 28
-- Uses table: SunTran
-- --------------------------------------------
Update SunTran
    set delflag='D'
    where docid='<docid>';

-- --------------------------------------------
-- Query 29
-- Uses table: packingorderdetail
-- --------------------------------------------
update packingorderdetail
    set contradocid='' ,ContraSno=0
    where contradocid='<contradocid>';

-- --------------------------------------------
-- Query 30
-- Uses table: SmartCardLedger
-- --------------------------------------------
Select Code,VType,VNo,AmtDr,HW_Id,PreBalance From SmartCardLedger
    Where docid='<docid>';

-- --------------------------------------------
-- Query 31
-- Uses table: SmartCardLedger
-- --------------------------------------------
DELETE FROM SmartCardLedger
    WHERE docid='<docid>';

-- --------------------------------------------
-- Query 32
-- Uses table: MemEnviro
-- --------------------------------------------
Select Interface From MemEnviro
    Where LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 33
-- Uses table: SessionMast
-- --------------------------------------------
Select Name From SessionMast
    WHERE <Param> BETWEEN FromTime AND ToTime;

-- --------------------------------------------
-- Query 34
-- Uses table: KOT
-- --------------------------------------------
SELECT ISNULL(MAX(GUARATT),1) FROM KOT
    WHERE RestCode='<RestCode>' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y' AND ROOMNO='<ROOMNO>';

-- --------------------------------------------
-- Query 35
-- Uses table: PAYCHARGE
-- --------------------------------------------
DELETE FROM PAYCHARGE
    WHERE dOCID='<dOCID>';

-- --------------------------------------------
-- Query 36
-- Uses table: Voucher_Type
-- --------------------------------------------
Select S.Docid as SearchCode,S.VNo as [No] ,Convert(Varchar(11),S.VDate,106) as [Date],s.RoomNo as TableNo From (Sale1 S
    INNER Join Voucher_Type V On (S.VType= V.V_Type AND S.LOGSITE_CODE=V.LOGSITE_CODE)) S.LOGSITE_CODE='';

-- --------------------------------------------
-- Query 37
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where Logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 38
-- Uses table: Enviro
-- Uses table: KOT
-- --------------------------------------------
Select Waiter From KOT
    where DocID='Please define Room Payment Type From Enviro' And SNO =<SNO>;

-- --------------------------------------------
-- Query 39
-- Uses table: KOT
-- --------------------------------------------
Update KOT
    Set ContraDocId='PayCharge',ContraSno=<ContraSno>
    where docid='<docid>' And SNo=<SNo>;

-- --------------------------------------------
-- Query 40
-- Uses table: DEPART
-- --------------------------------------------
SELECT SHORTNAME FROM DEPART
    WHERE CODE='<CODE>';

-- --------------------------------------------
-- Query 41
-- Uses table: REVMAST
-- --------------------------------------------
SELECT * FROM REVMAST
    WHERE CODE='<LogSiteCode>TOUT';

-- --------------------------------------------
-- Query 42
-- Uses table: PayCharge
-- --------------------------------------------
Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTIME, GuestProf,EmpCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,;

-- --------------------------------------------
-- Query 43
-- Uses table: LASTVOU
-- Uses table: SunTran
-- --------------------------------------------
Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,PartyCode,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LOGSITE_CODE) Values ('SELECT COUNT(*) FROM LASTVOU
    WHERE UNAME='<UserName>'
    WHERE UNAME='<UserName>' AND ENAME='<ENAME>';

-- --------------------------------------------
-- Query 44
-- Uses table: SmartCardRegistration
-- Uses table: SubGroup
-- --------------------------------------------
Select Code,Name,CardNo From (Select SubCode as Code,Name,CardNo From SubGroup
    union all Select Code,Name,CardNo From SmartCardRegistration) Q
    where Code='<Code>';

-- --------------------------------------------
-- Query 45
-- Uses table: Depart
-- --------------------------------------------
Select Count(*) From Depart
    Where Code='<Code>' And RestType='Production';

-- --------------------------------------------
-- Query 46
-- Uses table: Depart
-- --------------------------------------------
SELECT ShortName FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 47
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 48
-- Uses table: CashRegData
-- Uses table: Enviro
-- --------------------------------------------
Select Waiter From CashRegData
    where DocID='Please define Room Payment Type From Enviro' And SNO =<SNO>;

-- --------------------------------------------
-- Query 49
-- Uses table: CashRegData
-- Uses table: enviro
-- --------------------------------------------
Update CashRegData
    Set ContraDocId='Select NCUR from enviro
    where logsite_code='<LogSiteCode>',ContraSno=<ContraSno>
    where docid='<docid>' And SNo=<SNo>;

-- --------------------------------------------
-- Query 50
-- Uses table: LASTVOU
-- Uses table: SunTran
-- --------------------------------------------
Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode) Values ('SELECT COUNT(*) FROM LASTVOU
    WHERE UNAME='<UserName>'
    WHERE UNAME='<UserName>' AND ENAME='<ENAME>';

-- --------------------------------------------
-- Query 51
-- Uses table: SplitSale1
-- --------------------------------------------
Select S.* From SplitSale1 S
    Where S.Docid='<Docid>';

-- --------------------------------------------
-- Query 52
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where V_Type='<V_Type>';

-- --------------------------------------------
-- Query 53
-- Uses table: RoomMast
-- --------------------------------------------
Select Name From RoomMast
    Where [Type]='HL' AND RoomCat='HALL' And Code='<Code>';

-- --------------------------------------------
-- Query 54
-- Uses table: Voucher_Type
-- --------------------------------------------
Select NCAT From Voucher_Type
    Where V_Type='<V_Type>'';

-- --------------------------------------------
-- Query 55
-- Uses table: SplitedSunTran
-- --------------------------------------------
Select S.* From SplitedSunTran S
    Where S.DocId='<DocId>'
    Order By SNo;

-- --------------------------------------------
-- Query 56
-- Uses table: Depart
-- Uses table: ItemCatMast
-- Uses table: ItemMast
-- Uses table: KOT
-- --------------------------------------------
Select S.*,I.Name as ItemName,I.RateIncTax,DispCode,I.SchrgApp,S.DiscApp as DApp,S.RoundOff as ROff,IC.TaxStru as TaxCode,IC.CatType,RateEdit,K.DociD as KOTDocID ,K.SNo as KOTSno,D.Code as DepartCode,D.ShortName as DepartName From (((SplitStock S
    Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left
    Join ItemMast I On S.Item=I.Code And S.ITEMRestCode=I.RestCode)Left
    join ItemCatMast IC on IC.Code=I.ItemCatCode)Left
    Join Depart D on D.Code=I.RestCode
    Where S.DocId='<DocId>'
    Order By S.SNo;

-- --------------------------------------------
-- Query 57
-- Uses table: SunTran
-- --------------------------------------------
Select S.* From SunTran S
    Where S.DocId='<DocId>'
    Order By SNo;

-- --------------------------------------------
-- Query 58
-- Uses table: Depart
-- Uses table: ItemCatMast
-- Uses table: ItemMast
-- Uses table: KOT
-- --------------------------------------------
Select S.*,I.Name as ItemName,I.RateIncTax,DispCode,I.SchrgApp,S.DiscApp as DApp,S.RoundOff as ROff,IC.TaxStru as TaxCode,IC.CatType,RateEdit,K.DociD as KOTDocID ,K.SNo as KOTSno,D.Code as DepartCode,D.ShortName as DepartName From (((Stock S
    Left Join KOT K on K.ContraDocId=S.DocId and K.ContraSNo=S.SNo)Left
    Join ItemMast I On S.Item=I.Code And S.ITEMRestCode=I.RestCode)Left
    join ItemCatMast IC on IC.Code=I.ItemCatCode)Left
    Join Depart D on D.Code=I.RestCode
    Where S.DocId='<DocId>'
    Order By S.SNo;

-- --------------------------------------------
-- Query 59
-- Uses table: Sale1
-- --------------------------------------------
Select Distinct DocId,V_Type,V_No From Sale1
    Where DocID='<DocID>';

-- --------------------------------------------
-- Query 60
-- Uses table: KOT
-- Uses table: enviro
-- --------------------------------------------
Update KOT
    Set ContraDocId='Select NCUR from enviro
    where Logsite_code='<LogSiteCode>',ContraSno=<ContraSno>
    where docid='<docid>' And SNo=<SNo>;

-- --------------------------------------------
-- Query 61
-- Uses table: LASTVOU
-- Uses table: SplitedSunTran
-- --------------------------------------------
Insert Into SplitedSunTran (DocId,Sno,Vtype,VNo,Vdate,PartyCode,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LOGSITE_CODE) Values ('SELECT COUNT(*) FROM LASTVOU
    WHERE UNAME='<UserName>'
    WHERE UNAME='<UserName>' AND ENAME='<ENAME>';

-- --------------------------------------------
-- Query 62
-- Uses table: KOT
-- Uses table: SplitStock
-- --------------------------------------------
Select * from KOT
    where Docid in (Select Distinct COntraDocid from SplitStock
    Where Docid='<Docid>');

-- --------------------------------------------
-- Query 63
-- Uses table: Itemmast
-- Uses table: KOT
-- --------------------------------------------
Select Distinct Depart.Code as OutletCode,Depart.Name as DepartName from ((Depart
    Inner join Itemmast on Depart.Code=Itemmast.restcode)
    Inner Join KOT on KOT.Item=Itemmast.code And KOT.ITEMRestCode=ItemMast.RestCode)
    where KOT.COntraDocid='<COntraDocid>';

-- --------------------------------------------
-- Query 64
-- Uses table: KOT
-- --------------------------------------------
Update KOT
    Set ContraDocId='<ContraDocId>,'','','<Param>',ContraSno=<ContraSno>
    where docid=','A','<Param>' And SNo=<SNo>;

-- --------------------------------------------
-- Query 65
-- Uses table: PackingOrderDetail
-- --------------------------------------------
Update PackingOrderDetail
    set ContraDocID='<ContraDocID>,'','','<Param>',ContraSno=<ContraSno>
    where docid=','A','<Param>' and SNo=<SNo><Param>;

-- --------------------------------------------
-- Query 66
-- Uses table: RoomMast
-- --------------------------------------------
Select T.Code,T.Name As Name From RoomMast T
    where T.Type in('HL')
    Order by T.Code;

-- --------------------------------------------
-- Query 67
-- Uses table: ROOMOCC
-- --------------------------------------------
Select RC.FolioNo AS Code,RC.ROOMNO As Name,RC.RoomCat,RC.docid as FolioNoDocid From ROOMOCC RC
    where RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL
    Order by RC.ROOMNO;

-- --------------------------------------------
-- Query 68
-- Uses table: Depart
-- --------------------------------------------
Select 'B'+ShortName From Depart
    Where LOGSITE_CODE='<LogSiteCode>' and Code='<Code>';

-- --------------------------------------------
-- Query 69
-- Uses table: RoundOffSetting
-- --------------------------------------------
SELECT RoundOffType FROM RoundOffSetting
    WHERE ModuleName='Sale Bill' And LogSite_Code='<LogSiteCode>';

-- --------------------------------------------
-- Query 70
-- Uses table: Revmast
-- --------------------------------------------
Select DeskCode AS RestCode from Revmast
    where taxstru='<taxstru>';

-- --------------------------------------------
-- Query 71
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS
    LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code
    Where TS.Code='<Code>';

-- --------------------------------------------
-- Query 72
-- Uses table: RevMast
-- Uses table: TaxStru
-- --------------------------------------------
SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS
    inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code)
    Where TS.Code='<Code>'
    ORDER BY SNO DESC;

-- --------------------------------------------
-- Query 73
-- Uses table: SundryMast
-- --------------------------------------------
Select IsNull(Max(Nature),'') from SundryMast
    where LOGSITE_CODE='<LogSiteCode>' AND Code='<LogSiteCode>ST';

-- --------------------------------------------
-- Query 74
-- Uses table: guestfolio
-- --------------------------------------------
Select * from guestfolio
    where foliono=<foliono><Param>;

-- --------------------------------------------
-- Query 75
-- Uses table: RoundOffSetting
-- --------------------------------------------
SELECT RoundOffType FROM RoundOffSetting
    WHERE ModuleName='Sale Bill';

-- --------------------------------------------
-- Query 76
-- Uses table: Paycharge
-- --------------------------------------------
Select Count(*) From Paycharge
    Where Docid='<Docid>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [CashRegData]  NOT present in visahl.sql dump (schema unknown)
-- Table [DEPART]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [ENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [Enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [Item]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemCatMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemGrp]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [ItemRate]  NOT present in visahl.sql dump (schema unknown)
-- Table [Itemmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [KOT]  NOT present in visahl.sql dump (schema unknown)
-- Table [LASTVOU]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemENVIRO]  NOT present in visahl.sql dump (schema unknown)
-- Table [MemEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [PAYCHARGE]  NOT present in visahl.sql dump (schema unknown)
-- Table [PackingOrderDetail]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [Paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [REVMAST]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMOCC]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoundOffSetting]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [Sale2]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL,
--     Sno                    smallint NOT NULL,
--     SNo1                   varchar (50) NOT NULL,
--     Vtype                  varchar (5) NULL,
--     VNo                    int NULL,
--     Site_Code              varchar (2) NULL,
--     Vprefix                varchar (5) NULL,
--     Vdate                  datetime NULL,
--     RestCode               varchar (6) NULL,
--     TaxCode                varchar (6) NULL,
--     BaseValue              float NULL,
--     TaxPer                 float NULL,
--     TaxAmt                 float NULL,
--     U_Name                 varchar (10) NULL,
--     U_EntDt                datetime NULL,
--     U_AE                   varchar (1) NULL,
--     DelFlag                varchar (1) NULL,
--     LogSite_Code           varchar (2) NULL,
--     SeqNo                  smallint NULL,
-- Table [SessionMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardLedger]  NOT present in visahl.sql dump (schema unknown)
-- Table [SmartCardRegistration]  NOT present in visahl.sql dump (schema unknown)
-- Table [SplitSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [SplitStock]  NOT present in visahl.sql dump (schema unknown)
-- Table [SplitedSunTran]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [SunTran]  (schema from visahl.sql):
--     DocId                  varchar (21) NOT NULL,
--     Sno                    smallint NOT NULL,
--     Vtype                  varchar (5) NULL,
--     VNo                    int NULL,
--     Vdate                  datetime NULL,
--     PartyCode              varchar (8) NULL,
--     SunCode                varchar (6) NULL,
--     Limit                  float NULL,
--     DispName               varchar (20) NULL,
--     ROff                   varchar (3) NULL,
--     CalcFormula            varchar (50) NULL,
--     SValue                 float NULL,
--     Amount                 float NULL,
--     BaseAmount             float NULL,
--     U_Name                 varchar (10) NULL,
--     U_EntDt                datetime NULL,
--     U_AE                   varchar (1) NULL,
--     SunAppDate             datetime NULL,
--     RevCode                varchar (6) NULL,
--     RestCode               varchar (6) NULL,
--     DelFlag                varchar (1) NULL,
--     SiteCode               varchar (2) NULL,
--     LogSite_Code           varchar (2) NULL,
--     SeqNo                  smallint NULL,
-- Table [SundryMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [SundryType]  NOT present in visahl.sql dump (schema unknown)
-- Table [TaxStru]  NOT present in visahl.sql dump (schema unknown)
-- Table [UserPermission]  NOT present in visahl.sql dump (schema unknown)
-- Table [Voucher_Type]  NOT present in visahl.sql dump (schema unknown)
-- Table [depart]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [guestfolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [packingorderdetail]  NOT present in visahl.sql dump (schema unknown)
