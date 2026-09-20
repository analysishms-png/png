# ==========================================================
# Module: rRepReserv
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: PayCharge
-- --------------------------------------------
Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr) As LTAmount From PayCharge PP
    JOIN GuestFolio GF on PP.FolioNoDocId = GF.DocID
    Join GuestProf GP ON GF.GuestProf=GP.Code
    Where GP.Type<>'Foreign' AND and <Param> Or ChkOutDt Is Null);

-- --------------------------------------------
-- Query 2
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: PayCharge
-- --------------------------------------------
Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr) As LTAmount From PayCharge PP
    JOIN GuestFolio GF on PP.FolioNoDocId = GF.DocID
    Join GuestProf GP ON GF.GuestProf=GP.Code
    Where GP.Type<>'Foreign' AND <Param>;

-- --------------------------------------------
-- Query 3
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: PayCharge
-- --------------------------------------------
Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr) As LTAmount From PayCharge PP
    JOIN GuestFolio GF on PP.FolioNoDocId = GF.DocID
    Join GuestProf GP ON GF.GuestProf=GP.Code
    Where GP.Type='Foreign' AND and <Param> Or ChkOutDt Is Null);

-- --------------------------------------------
-- Query 4
-- Uses table: GuestFolio
-- Uses table: GuestProf
-- Uses table: PayCharge
-- --------------------------------------------
Select sum(pp.onAmt) As Billamount ,sum(pp.AmtDr) As LTAmount From PayCharge PP
    JOIN GuestFolio GF on PP.FolioNoDocId = GF.DocID
    Join GuestProf GP ON GF.GuestProf=GP.Code
    Where GP.Type='Foreign' AND <Param>;

-- --------------------------------------------
-- Query 5
-- Uses table: GuestFolio
-- --------------------------------------------
SELECT Count(*) FROM GuestFolio
    WHERE Docid='<Docid>' AND MFolioNo > 0;

-- --------------------------------------------
-- Query 6
-- Uses table: GuestFolio
-- --------------------------------------------
SELECT DocId, MFolioNoDocId,MFolioNo FROM GuestFolio
    WHERE Docid='<Docid>' AND MFolioNo > 0;

-- --------------------------------------------
-- Query 7
-- Uses table: GRPBookingDetails
-- --------------------------------------------
SELECT Count(*) FROM GRPBookingDetails
    WHERE BookingDocId='<BookingDocId>';

-- --------------------------------------------
-- Query 8
-- Uses table: Booking
-- Uses table: RoomCat
-- --------------------------------------------
SELECT RC.Name As RoomType, RoomDet, Adults, Childs , GR.Tarrif, IncTax,CAST('0.00' as FLOAT) As PlanTariff,GR.PLAN_PACKAGE,GR.REMARKS,Booking.RDisc,Booking.RSDisc,GR.NoDays FROM (GRPBookingDetails GR
    Left Join RoomCat RC on GR.RoomCat=RC.Code)
    Inner join Booking On gr.BookingDocid=Booking.docid
    WHERE BookingDocid='<BookingDocid>';

-- --------------------------------------------
-- Query 9
-- Uses table: PlanMast
-- Uses table: RoomCat
-- --------------------------------------------
SELECT RC.Name As RoomType,NoofRooms As RoomDet, Adult AS Adults,Child AS Childs ,B.RoomRate AS Tarrif, RRTaxInc AS IncTax,CAST(ISNULL(PM.Total,'0.00') AS FLOAT) As PlanTariff,'' as plan_package,'' as Remarks,B.RDisc,B.RSDisc,B.NoDays FROM (Booking B
    Left Join RoomCat RC on B.RoomCat=RC.Code)left
    join PlanMast PM on PM.Code=B.PackageCode
    WHERE Docid='<Docid>';

-- --------------------------------------------
-- Query 10
-- Uses table: PayCharge
-- --------------------------------------------
SELECT Count(*) FROM PayCharge
    WHERE RefDocId='<RefDocId>';

-- --------------------------------------------
-- Query 11
-- Uses table: PayCharge
-- --------------------------------------------
SELECT MAX(Vno) as Receipt , Max(Vdate) As PayDate , Sum(AmtCr) as Amount FROM PayCharge
    WHERE RefDocId='<RefDocId>';

-- --------------------------------------------
-- Query 12
-- Uses table: Booking
-- Uses table: RoomCat
-- --------------------------------------------
SELECT RC.Name As RoomType, RoomDet, Adults, Childs , GR.Tarrif, IncTax,CAST('0.00' as FLOAT) As PlanTariff,GR.PLAN_PACKAGE,GR.REMARKS,Booking.RDisc,Booking.RSDisc FROM (GRPBookingDetails GR
    Left Join RoomCat RC on GR.RoomCat=RC.Code)
    Inner join Booking On gr.BookingDocid=Booking.docid
    WHERE BookingDocid='<BookingDocid>';

-- --------------------------------------------
-- Query 13
-- Uses table: PlanMast
-- Uses table: RoomCat
-- --------------------------------------------
SELECT RC.Name As RoomType,NoofRooms As RoomDet, Adult AS Adults,Child AS Childs ,B.RoomRate AS Tarrif, RRTaxInc AS IncTax,CAST(ISNULL(PM.Total,'0.00') AS FLOAT) As PlanTariff,'' as plan_package,'' as Remarks,B.RDisc,B.RSDisc FROM (Booking B
    Left Join RoomCat RC on B.RoomCat=RC.Code)left
    join PlanMast PM on PM.Code=B.PackageCode
    WHERE Docid='<Docid>';

-- --------------------------------------------
-- Query 14
-- Uses table: GuestFolio
-- Uses table: PayCharge
-- --------------------------------------------
Update PayCharge
    set GuestProf=GF.GuestProf from GuestFolio GF
    Where FolioNoDocid=GF.Docid And ISNULL(PayCharge.FolioNoDocid,'')<>'';

-- --------------------------------------------
-- Query 15
-- Uses table: ROOMOCC
-- --------------------------------------------
sELECT COUNT(*) FROM ROOMOCC
    WHERE fOLIONO=<fOLIONO>;

-- --------------------------------------------
-- Query 16
-- Uses table: ROOMOCC
-- --------------------------------------------
sELECT COUNT(*) FROM ROOMOCC
    WHERE Docid='<Docid>';

-- --------------------------------------------
-- Query 17
-- Uses table: ROomOccDet
-- --------------------------------------------
sELECT COUNT(*) FROM ROomOccDet
    WHERE DocId='<DocId>';

-- --------------------------------------------
-- Query 18
-- Uses table: RoomOccDet
-- --------------------------------------------
sELECT COUNT(*) FROM RoomOccDet
    WHERE Docid='<Docid>';

-- --------------------------------------------
-- Query 19
-- Uses table: RoomOcc
-- --------------------------------------------
sELECT COUNT(*) FROM RoomOcc
    WHERE DOCID='<DOCID>';

-- --------------------------------------------
-- Query 20
-- Uses table: RoomOccDet
-- --------------------------------------------
sELECT COUNT(*) FROM RoomOccDet
    WHERE DOCID='<DOCID>';

-- --------------------------------------------
-- Query 21
-- Uses table: Country
-- Uses table: GuestFolioProfDetail
-- Uses table: GuestProf
-- --------------------------------------------
Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality From GuestFolioProfDetail GD
    Inner Join GuestProf GP On GD.GuestProf=GP.Code
    Left Join Country ON GP.Nationality=Country.Code
    Where GD.Docid='<Docid>' And GD.GuestProf<>'hh:nn:ss';

-- --------------------------------------------
-- Query 22
-- Uses table: PayCharge
-- --------------------------------------------
Select Distinct RelatedFoliono,VPrefix From PayCharge PC
    Where PC.FolionoDocid='<FolionoDocid>' And RelatedFoliono<><Param> And RelatedFoliono<>0;

-- --------------------------------------------
-- Query 23
-- Uses table: Country
-- Uses table: GuestFolioProfDetail
-- Uses table: GuestProf
-- --------------------------------------------
Select ConPrefix,GP.Name,Age,Case When IsNull(Country.Nationality,'')<>'' Then IsNull(Country.Nationality,'') Else IsNull(Country.Name,'') End Nationality From GuestFolioProfDetail GD
    Inner Join GuestProf GP On GD.GuestProf=GP.Code
    Left Join Country ON GP.Nationality=Country.Code
    Where GD.Docid='<Docid>' And GD.GuestProf<>'<Param>';

-- --------------------------------------------
-- Query 24
-- Uses table: RoomOccDet
-- --------------------------------------------
Select count(distinct foliono) as Cnt from RoomOccDet
    where ChkInDT between <Param> And <Param> and LogSite_Code='<LogSite_Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [Booking]  NOT present in visahl.sql dump (schema unknown)
-- Table [Country]  NOT present in visahl.sql dump (schema unknown)
-- Table [GRPBookingDetails]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolio]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestFolioProfDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestProf]  NOT present in visahl.sql dump (schema unknown)
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
-- Table [ROOMOCC]  NOT present in visahl.sql dump (schema unknown)
-- Table [ROomOccDet]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomCat]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOcc]  NOT present in visahl.sql dump (schema unknown)
-- Table [RoomOccDet]  NOT present in visahl.sql dump (schema unknown)
