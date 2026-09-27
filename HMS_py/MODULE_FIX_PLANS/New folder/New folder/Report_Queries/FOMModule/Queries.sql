# ==========================================================
# Module: FOMModule
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: GUESTFOLIO
-- Uses table: PAYCHARGE
-- Uses table: RevMast
-- --------------------------------------------
SELECT Max(P.VNO) AS RECTNO,Max(P.VDATE) AS RECTDATE,Max(P.PAYTYPE) AS RECTMODE,Max(P.U_Name) As UserName,Max(P.CardNo) AS CCardNo,Max(P.Cardholder) As CCardholder,Max(P.ChqNo) As ChqNo,Max(P.ChqDate) AS ChqDate,Max(P.ExpDate) AS CCExpDate,Max(P.BatchNo) As BatchNo,Max(P.AMTCR) AS RECTAMT,Max(P.ROOMNO) AS ROOMNO,Max(P.FOLIONO) AS GRCNO,Max(GP.NAME) AS GUESTNAME,Max(R.NAME) As PayName,Max(P.TxnNo) As TxnNo,Max(P.Comments) As Comments FROM (GUESTPROF GP
    left join GUESTFOLIO GF ON GF.GUESTPROF=GP.CODE)
    LEFT JOIN PAYCHARGE P ON GF.DOCID=P.FOLIONODOCID
    LEFT JOIN RevMast R ON P.PayCode = R.Code
    WHERE P.DOCID IN ('<Param>') AND P.VTYPE='REC'
    Group By P.DocId;

-- --------------------------------------------
-- Query 2
-- Uses table: GUESTFOLIO
-- Uses table: PAYCHARGE
-- Uses table: RevMast
-- --------------------------------------------
SELECT P.VNO AS RECTNO,P.VDATE AS RECTDATE,P.PAYTYPE AS RECTMODE,P.U_Name As UserName,P.AMTCR AS RECTAMT,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo,P.ChqDate,P.ExpDate AS CCExpDate,P.BatchNo,P.ROOMNO AS ROOMNO,P.FOLIONO AS GRCNO,GP.NAME AS GUESTNAME,R.NAME As PayName,P.TxnNo FROM (GUESTPROF GP
    left join GUESTFOLIO GF ON GF.GUESTPROF=GP.CODE)
    LEFT JOIN PAYCHARGE P ON GF.DOCID=P.FOLIONODOCID
    LEFT JOIN RevMast R ON P.PayCode = R.Code
    WHERE P.FOLIONODOCID IN ('<Param>') AND P.VTYPE='REC' And MODESET='S'
    ORDER BY P.DOCID;

-- --------------------------------------------
-- Query 3
-- Uses table: PayCharge
-- --------------------------------------------
Select max(Bill_No) from PayCharge
    where (Bill_no is not NULL and Bill_no<>'') and Folionodocid In ('<Param>');

-- --------------------------------------------
-- Query 4
-- Uses table: Booking
-- Uses table: BussSource
-- Uses table: MarketSeg
-- Uses table: SubGroup
-- --------------------------------------------
Select B.DocId UID,IsNull(B.MyRectNo,'') as MyRectNo,B.BookNo,B.Vdate AS ResDate,B.U_Name,B.U_EntDt,COMP.Name as Company,TR.Name as TravelAgency,B.ResStatus,B.GuestProf,B.DepositeReq,B.Adult,B.Child,B.NoOfRooms,B.NoDays,BS.Name BussSource,MS.Name MarketSeg,B.ArrFrom,B.Destination,B.BookedBy,B.ResMode,B.TravelMode,B.RDisc,B.RSDisc From Booking B
    Left Join SubGroup COMP ON B.Company=COMP.SubCode
    Left Join SubGroup TR ON B.TravelAgency=TR.SubCode
    Left Join MarketSeg MS ON B.MarketSeg=MS.Code
    Left Join BussSource BS ON B.BussSource=BS.Code
    Where B.DocId='<DocId>';

-- --------------------------------------------
-- Query 5
-- Uses table: GRPBookingDetails
-- --------------------------------------------
SELECT Count(*) FROM GRPBookingDetails
    WHERE BookingDocId='<BookingDocId>';

-- --------------------------------------------
-- Query 6
-- Uses table: BookingPlanDetails
-- Uses table: PlanMast
-- Uses table: RoomCat
-- Uses table: booking
-- --------------------------------------------
SELECT GR.BookingDocId As UID,GR.SNo,ISNULL(Booking.MyRectNo,'') MyRectNo,Booking.BookNo,RC.Name As RoomType,GR.ArrDate,GR.ArrTime,GR.DepDate,GR.DepTime,GR.NoDays,GR.RoomDet,GR.Adults,GR.Childs,GR.Tarrif,GR.RateCode,GR.IncTax,GR.ServiceChrg,GR.Cancel,GR.CancelDate,IsNull(BP.RPackageAmt,0) MealCharge,IsNull(BP.NetPackageAmount,0) As PlanTariff,IsNull(PlanMast.Name,'') PlanName,IsNull(GR.PLAN_Package,'') PLAN_Package,IsNull(GR.REMARKS,'') As REMARKS,Booking.RDisc,Booking.RSDisc,IsNull(PlanMast.Tariff,'') As [Plan],IsNull(BP.PlanDiscPer,0) As PlanDiscPer,IsNull(BP.PlanDiscAmt,0) As PlanDiscAmt FROM (GRPBookingDetails GR
    Left Join RoomCat RC on GR.RoomCat=RC.Code)
    Left Join PlanMast on GR.Plan_Package=PlanMast.code
    Left Join BookingPlanDetails BP On GR.BookingDocId=BP.BookingDocId And GR.SNo=BP.SNo
    inner join booking on booking.docid=gr.bookingdocid
    WHERE GR.BookingDocid='<BookingDocid>'
    Order By GR.BookingDocid,GR.SNo;

-- --------------------------------------------
-- Query 7
-- Uses table: PayCharge
-- Uses table: Revmast
-- --------------------------------------------
SELECT RefDocId UID,P.VNo,P.Vdate,P.VTime,P.Comments,P.PayCode,P.PayType,Revmast.Name PayName,P.AmtCr,P.CardNo,P.CardHolder,P.ExpDate,P.BatchNo,P.ChqNo,P.ChqDate,P.U_Name,P.U_EntDt FROM PayCharge P
    Inner Join Revmast On Revmast.Code=P.PayCode
    WHERE RefDocId='<RefDocId>' And P.VType In ('ARRES','ADRES','AWRES')
    Order By P.Vno,P.SNo;



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Booking]  NOT present in visahl.sql dump (schema unknown)
-- Table [BookingPlanDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [BussSource]  NOT present in visahl.sql dump (schema unknown)
-- Table [GRPBookingDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [GUESTFOLIO]  NOT present in visahl.sql dump (schema unknown)
-- Table [MarketSeg]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [PlanMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RevMast]  NOT present in visahl.sql dump (schema unknown)
-- Table [Revmast]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomCat]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
-- Table [booking]  NOT present in visahl.sql dump (schema unknown)
