# ==========================================================
# Module: InHouseGuestFolio
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Paycharge
-- --------------------------------------------
Select Distinct Bill_No,FolioNo,SPLIT from Paycharge
    where bill_no<>'' and Bill_No is not Null and FolioNoDocid='<FolioNoDocid><Param>';

-- --------------------------------------------
-- Query 2
-- Uses table: KOT
-- Uses table: ROOMOCC
-- --------------------------------------------
Select Count(*) From ROOMOCC RC
    where LogSite_Code='<LogSiteCode>' and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL And ROOMNO In (Select RoomNo From KOT
    Where RoomType='RO' And Pending='Y' AND NCKOT<> 'Y' AND VOIDYN='N' AND (DELFLAG='N' Or Delflag is NULL or Delflag='') and RoomNo='<RoomNo><Param>;

-- --------------------------------------------
-- Query 3
-- Uses table: PayCharge
-- --------------------------------------------
Select Count(*) from PayCharge
    where FolioNoDocid='<FolioNoDocid>' and Bill_No<>'' and Bill_No is Not NULL;

-- --------------------------------------------
-- Query 4
-- Uses table: KOT
-- --------------------------------------------
Select COunt(*) From KOT
    Where LogSite_Code='<LogSiteCode>' and RoomType='RO' And RoomNO='<RoomNO>' and Pending='Y' AND NCKOT<>'Y' AND VOIDYN='N' AND (DELFLAG='N' or Delflag is NULL or DelFlag ='');

-- --------------------------------------------
-- Query 5
-- Uses table: PayCharge
-- --------------------------------------------
Select Count(*) from PayCharge
    where FolioNoDocid='<FolioNoDocid>' and IsNull(Bill_No,'')<>'';

-- --------------------------------------------
-- Query 6
-- Uses table: PayCharge
-- --------------------------------------------
Select Count(*) from PayCharge
    where Folionodocid is not null and folionodocid<>'' and (FolioNoDocid='<FolioNoDocid><Param>' Or Folionodocid='<Folionodocid><Param>;

-- --------------------------------------------
-- Query 7
-- Uses table: paycharge
-- --------------------------------------------
Select bill_no,AmtDr from paycharge
    where LogSite_Code='<LogSiteCode>' and (ContraDocId is NULL or contradocid='') and (modeset<>'S' or ModeSet is NULL) and folionoDocid='<folionoDocid>';

-- --------------------------------------------
-- Query 8
-- Uses table: paycharge
-- --------------------------------------------
Select distinct bill_no from paycharge
    where LogSite_Code='<LogSiteCode>' and folionoDocid='<folionoDocid>' and IsNull(Bill_NO,'')<>'';

-- --------------------------------------------
-- Query 9
-- Uses table: PayCharge
-- --------------------------------------------
Select Count(*) from PayCharge
    where LogSite_Code='<LogSiteCode>' and VType Not In ('ARRES','ADRES') and FolionoDocid='<FolionoDocid><Param>;

-- --------------------------------------------
-- Query 10
-- Uses table: PayCharge
-- --------------------------------------------
Select Count(*) from PayCharge
    where LogSite_Code='<LogSiteCode>' and VType Not In ('ARRES','ADRES') and FolionoDocid='<FolionoDocid>';

-- --------------------------------------------
-- Query 11
-- Uses table: enviro
-- --------------------------------------------
Select NCUR from enviro
    where logsite_code='<LogSiteCode>';

-- --------------------------------------------
-- Query 12
-- Uses table: RoomMast
-- --------------------------------------------
Update RoomMast
    set ROOMSTAT='D'
    WHERE CODE='<CODE>' AND TYPE='RO';

-- --------------------------------------------
-- Query 13
-- Uses table: EPABX_IN
-- --------------------------------------------
Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN;

-- --------------------------------------------
-- Query 14
-- Uses table: EPABX_IN
-- --------------------------------------------
insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (<Param>,'CHKOT','<Param><Param>','<Param>','<Param>',0);

-- --------------------------------------------
-- Query 15
-- Uses table: Paycharge
-- --------------------------------------------
Update Paycharge
    set SettleDate=Guest Not Checked Out
    where FolioNoDocid='<FolioNoDocid>' and LogSite_Code='<LogSite_Code>';

-- --------------------------------------------
-- Query 16
-- Uses table: RoomMast
-- --------------------------------------------
Update RoomMast
    set ROOMSTAT='D'
    WHERE logsite_code='<LogSiteCode>' and CODE='<CODE>' AND TYPE='RO';

-- --------------------------------------------
-- Query 17
-- Uses table: EmailSMSForward
-- --------------------------------------------
Select TxtMsg,MobileNo from EmailSMSForward
    WHERE LOGSITE_CODE='<LogSiteCode>' And Type='Check Out' And Len(MobileNo)>=10 And Len(TxtMsg)>0;

-- --------------------------------------------
-- Query 18
-- Uses table: SMSEnviro
-- --------------------------------------------
Select CheckOutMsg,SendingMessageText from SMSEnviro
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 19
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
    where ModeSet='S' and ST.FolionoDocid='dd/MMM/yyyy' And AmtCr>0;

-- --------------------------------------------
-- Query 20
-- Uses table: Paycharge
-- --------------------------------------------
Select Distinct Bill_No,FolioNo,SPLIT,FolioNoDocid from Paycharge
    where bill_no<>'' and Bill_No is not null and FolioNoDocid='dd/MMM/yyyy';

-- --------------------------------------------
-- Query 21
-- Uses table: paycharge
-- --------------------------------------------
Delete From paycharge
    where folionoDocid='<folionoDocid>' and modeset='S' and paycode='<paycode>ROFF';

-- --------------------------------------------
-- Query 22
-- Uses table: Paycharge
-- --------------------------------------------
Update Paycharge
    set SettleDate=Guest Not Checked Out
    where FolioNoDocid='<FolioNoDocid>' and LogSite_Code='
    where Bill_NO='<Bill_NO>';

-- --------------------------------------------
-- Query 23
-- Uses table: RevMast
-- --------------------------------------------
Select SaleRate from RevMast
    where ShortName='EXTB';

-- --------------------------------------------
-- Query 24
-- Uses table: RoomOcc
-- --------------------------------------------
Select MAX(sno) AS SNO from RoomOcc
    where Docid='<Docid><Param>;

-- --------------------------------------------
-- Query 25
-- Uses table: EPABX_IN
-- Uses table: Paycharge
-- --------------------------------------------
insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (Select IsNull(Sum(AmtCr)-Sum(AmtDr),0) from Paycharge
    Where PayCode In ('<LogSiteCode>,'CHKOT','EPABX Message','<Param>','<Param>',0);

-- --------------------------------------------
-- Query 26
-- Uses table: Paycharge
-- --------------------------------------------
Select Distinct Bill_No,FolioNo,SPLIT from Paycharge
    where bill_no<>'' and Bill_No is not Null and FolioNoDocid='SanCreateKey "SanCreateKey "SanCreateKey "SanCreateKey "SanCreateKey "SanCreateKey "<Param>';

-- --------------------------------------------
-- Query 27
-- Uses table: GuestMessage
-- Uses table: RoomOcc
-- --------------------------------------------
SELECT RoomOcc.FolioNo, GuestMessage.Message,Solved FROM RoomOcc
    LEFT JOIN GuestMessage ON RoomOcc.FolioNo = GuestMessage.FolioNo
    where (ROOMOCC.LOGSITE_CODE='<LogSiteCode>' or ROOMOCC.LOGSITE_CODE='HO') AND RoomOcc.ChkoutDate is NULL AND Solved<>'Y'
    order by RoomOcc.RoomNO;

-- --------------------------------------------
-- Query 28
-- Uses table: menuhelp
-- --------------------------------------------
Select count(*) from menuhelp
    where Flag<>'V' And username='<UserName>' and CompCode='<CompCode>' AND MODULE_NAME='LockManage';

-- --------------------------------------------
-- Query 29
-- Uses table: UserPermission
-- --------------------------------------------
SELECT CancelGuestBill FROM UserPermission
    WHERE LOGSITE_CODE='<LogSiteCode>' And CompCode='<CompCode>' And UserName='<UserName>';

-- --------------------------------------------
-- Query 30
-- Uses table: ROOMCAT
-- --------------------------------------------
SELECT * FROM ROOMCAT
    WHERE LOGSITE_CODE='<LogSiteCode>';

-- --------------------------------------------
-- Query 31
-- Uses table: Booking
-- Uses table: City
-- Uses table: GuestFolio
-- Uses table: GuestFolioProfDetail
-- Uses table: GuestProf
-- Uses table: Paycharge
-- --------------------------------------------
Select Code FROM GuestProf
    Left Join City on City.CityCode=GuestProf.City
    Where GuestProf.Code Not In (Select Distinct GuestProf From (Select GuestProf From Booking
    Union All Select GuestProf From GuestFolio
    Union All Select GuestProf From GuestFolioProfDetail
    Union All Select GuestProf From Paycharge) Q) And (GuestProf.LOGSITE_CODE='<LogSiteCode>' or GuestProf.LOGSITE_CODE='HO') and GUESTPROF.Name is not null And GUESTPROF.WebYN='Y';

-- --------------------------------------------
-- Query 32
-- --------------------------------------------
Select getDate();

-- --------------------------------------------
-- Query 33
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct Bill_No from paycharge
    where FolionodOCID='<FolionodOCID><Param>;

-- --------------------------------------------
-- Query 34
-- Uses table: paycharge
-- --------------------------------------------
Select bill_no,AmtDr,RoomNo from paycharge
    where (ContraDocId is NULL or contradocid='') and folionodOCID='<folionodOCID><Param>';

-- --------------------------------------------
-- Query 35
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct Bill_No from paycharge
    where FolioNoDocid='<FolioNoDocid><Param>;

-- --------------------------------------------
-- Query 36
-- Uses table: paycharge
-- --------------------------------------------
Select COunt(*) from paycharge
    where Bill_No<>'' and RelatedFolioNo=<RelatedFolioNo><Param><Param>';

-- --------------------------------------------
-- Query 37
-- Uses table: paycharge
-- --------------------------------------------
Select bill_no,AmtDr,RoomNo from paycharge
    where (ContraDocId is NULL or contradocid='') and (ModeSet<>'S' OR ModeSet is NULL) and folionoDocid='<folionoDocid><Param>';

-- --------------------------------------------
-- Query 38
-- Uses table: paycharge
-- --------------------------------------------
Select Distinct Bill_No from paycharge
    where FolionoDocid='<FolionoDocid><Param>;

-- --------------------------------------------
-- Query 39
-- Uses table: GuestMessage
-- Uses table: RoomOcc
-- --------------------------------------------
SELECT RoomOcc.FolioNo, GuestMessage.Message,Solved FROM RoomOcc
    LEFT JOIN GuestMessage ON RoomOcc.FolioNo = GuestMessage.FolioNo
    where RoomOcc.ChkoutDate is NULL AND (Solved<>'Y' or Solved is NULL) AND GuestMessage.RoomNo = '<RoomNo><Param>'
    order by RoomOcc.RoomNO;

-- --------------------------------------------
-- Query 40
-- Uses table: RoomOcc
-- Uses table: roommast
-- --------------------------------------------
SELECT Count(*)From RoomOcc
    Left Join roommast on roomocc.RoomNo=Roommast.code
    where roomocc.type not in ('O','C') and roommast.roomstat='D' and roommast.type='RO';

-- --------------------------------------------
-- Query 41
-- Uses table: RoomMast
-- --------------------------------------------
SELECT Count(*) FROM RoomMast
    where type='RO' and inclcount='Y';

-- --------------------------------------------
-- Query 42
-- Uses table: RoomOcc
-- Uses table: roommast
-- --------------------------------------------
SELECT Count(*)From RoomOcc
    Left Join roommast on roomocc.RoomNo=Roommast.code
    where roomocc.type not in ('O','C') and roommast.roomstat='C' and roommast.type='RO';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Booking]  NOT present in visahl.sql dump (schema unknown)
-- Table [City]  NOT present in visahl.sql dump (schema unknown)
-- Table [EPABX_IN]  NOT present in visahl.sql dump (schema unknown)
-- Table [EmailSMSForward]  NOT present in visahl.sql dump (schema unknown)
-- Table [Employee]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolioProfDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestMessage]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
-- Table [KOT]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [ROOMCAT]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROOMOCC]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [SMSEnviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [UserPermission]  NOT present in visahl.sql dump (schema unknown)
-- Table [enviro]  NOT present in visahl.sql dump (schema unknown)
-- Table [menuhelp]  NOT present in visahl.sql dump (schema unknown)
-- Table [paycharge]  NOT present in visahl.sql dump (schema unknown)
-- Table [roommast]  NOT present in visahl.sql dump (schema unknown)
