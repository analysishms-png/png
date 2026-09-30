# FRONT OFFICE LIFECYCLE  [VERIFIED-VB6]

Source: decompiled HMS.exe (EXTRAS.text). Forms: fdWalkInEntry, fdCheckIn, fdRoomOcc,
fdDisplayFolio(Summ), fdPostChrg, fdNDAcPostChrg, fdAcPostChrg, fdPaymentCharge,
fdRoomChange, fdCheckOut, FdGrpCheckOut, FdRevCheckOut, FdReSetlement, fdAmendEntry,
InHouseGuestFolio + supporting masters (RrRoomReservation etc.).

## Complete lifecycle (as implemented)

Login → business date (Enviro.ncur per LogSite_Code)
→ Reservation (Booking) → Arrival/Walk-in → Check-In (RoomOcc+GuestFolio)
→ Stay (Room Change / Rate Change / Plan Change / Amend) → Posting (PayCharge)
→ Advance/Payment → Discount → Folio view → Check-Out (CHKOUTDATE)
→ Settlement → Invoice/Bill (Crystal .rpt) → Night Audit (date roll)

## 1. Reservation (RrRoomReservation → table Booking)
[VERIFIED-VB6] Insert (line 91992, addr 197998F):
`Insert Into Booking (Docid,Vtype,BookNo,Site_Code,Vprefix,Vdate,GroupCode,ArrDate,Arrtime,
 DepDate,DepTime,NoDays,RoomCat,RoomType,Roomno,[Adult],[Child],NoOfRooms,RateCode,RoomRate,
 remarks,[Authorization],Company,GuestProf,TravelAgency,BussSource,MarketSeg,ArrFrom,
 Destination,BookedBy,ResMode,ResStatus,TravelMode,SplitFolio,DepositeReq,Guarantee,Cancel,
 GuestName,U_Name,U_EntDt,U_AE,OccRoom,PackageCode,LogSite_Code,MobNo,Faxno,Email,OtherCont,
 RRTaxInc,RRServiceChrg,RDisc,RSDisc,AdvDueDate,RefCode,BookStatus,RefBookNo) Values (...)`
- Additional guests: `Insert Into BookingMore (Docid,Sno,Name,...)`
- Cancellation: `Insert Into BookingCancelDetails (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,
  BookingDocID,Advance,CancelAmt,CancellationMode,U_Name,U_EntDt,U_AE,LogSite_Code)`
- Group bookings: GrpBookingDetails (43 refs).

## 2. Check-In (fdCheckIn) — two-step insert [VERIFIED-VB6]
Step 1 GuestFolio header (line 942575, addr 1F75C2D):
`Insert Into GuestFolio (Docid,Vtype,FolioNo,Site_Code,Vprefix,Vdate,GuestProf,Name,Add1,Add2,
 City,NoDays,SplitFolio,Remarks,RefBookNo,Authorisation,Company,TravelAgent,PurVisit,
 Nationality,ArrFrom,Destination,TravelMode,TclFac,Remark,RoDisc,RSDisc,BookingDocId,
 U_Name,U_EntDt,U_AE,GroupCode,MarketSeg,BussSource,DepDate,mfolioNo,[Comp],MFolioNoDocid,
 LOGSITE_CODE,BookingSno) Values (...)`
Step 2 RoomOcc per room (line 942284, addr 1F73B16):
`Insert Into RoomOcc (DocID,Sno,FolioNo,VType,Site_Code,vPrefix,GuestProf,RoomCat,RoomType,
 RoomNo,RateCode,RoomRate,ChkInDate,ChkInTime,aDult,Children,DepDate,DepTime,Type,
 U_Name,U_EntDt,U_AE,Plancode,PlanAmt,IncInRate,LOGSITE_CODE,PlanDisc,PlanDiscAmt,
 PlanDiscAppOn,RRTaxInc,RRServiceChrg,ChngDate,RoomTarrif,RackRate,RoomTaxStru) Values (...)`
- Guest profile link: `Insert Into GuestFolioProfDetail (Docid,GuestProf,mProf,U_AE,U_EntDt,
  U_Name,Site_Code,LogSite_Code)`
- Walk-in variant (line 149589): same RoomOcc columns minus plan fields (update path below).
- Plan update after entry: `Update RoomOcc Set PlanCode='<c>',PlanAmt=<a>,IncInRate='<y>',
  PlanDisc=<d>,PlanDiscAmt=<da>,PlanDiscAppOn='<on>',U_EntDt=<now>,U_AE='E'
  where Sno=<sno> And DocId='<id>' and Site_Code='<site>' and RoomNO='<room>'`

## 3. Stay operations
- Room change: RoomOcc update + `Update GuestMessage set RoomNo='<new>',RoomCat='<c>'
  where FolioNo=<f> ... and RoomNO='<old>'` (line ~149680).
- Date amendment (fdAmendEntry): `Insert into GuestFolioAmend (FolioNo,Site_Code,GuestProf,
  RoomNo,OldDepDate,OldDepTime,DepDate,DepTime,U_Name,U_EntDt,U_AE,LogSite_Code)` +
  `Update GuestFolio Set DepDate=<new>` (lines 146328/146334).
- Folio/room merge: `UPDATE GuestFolio SET mFolioNoDocId='<target>',mFolioNo=<no>` (line 437902).
- Discount: fields RoDisc/RSDisc on GuestFolio (update `GuestFolio Set RoDisc='` at 149517).

## 4. Posting charges (fdPostChrg / fdNDAcPostChrg)
- Charge rows → PayCharge table. Column evidence from Reports/BillPrint.ttx + code:
  DocId,SNo,Vtype,VNo,Vdate,VTime,GuestProf,CompCode,Comments,PayCode,PayType,AmtCr,AmtDr,
  TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,BookNo,
  U_Name,U_EntDt,U_AE,RestCode,BillAmount,ContraDocID,TaxPer,OnAmt,Split,Bill_No,MarkEntry,
  ModeSet,SettleDate,PlanCode,RelatedFolioNo,RefDocId,Remarks,AU_Name,AU_EntDt,LogSite_Code
- History: PayChargeH; audit: PayChargeLog.
- Revenue heads: RevMast (CODE, ACCODE etc.); departments: Depart.

## 5. Payment/Settlement
- Payments stored on PayCharge with PayCode/PayType, AmtCr (payment) vs AmtDr (charge).
- Settlement screen: FdReSetlement; un-settled bills: FrmUnSettledBillsInfo,
  DelBillUnsetBill report; cancelled bills: CancelBillDet report + TempPosDel staging.

## 6. Check-Out [VERIFIED-VB6]
`Update RoomOcc set CHKOUTDATE=<d>,CHKOUTTIME='<t>',IncInRate='<y>',PlanDisc=<d>,PlanDiscAmt=<a>`
(line 149667) → folio settled → bill print (BillPrint.rpt) → Night Audit later flips
RoomMast.roomStat='D' for dirty rooms (rooms with type not in ('C','O')).

## 7. Business rules observed
- DocId pattern: varchar(21) = site-prefix + Vtype + serial (Voucher_Prefix/LASTVOU managed).
- Every write carries U_AE ('A'/'E'/'D'), U_Name, U_EntDt → full audit trail columns.
- Multi-site: LogSite_Code filters every query (session MemVar_1F81078).
- Guest status via GUESTSTAT; guest type GuestProfFor; IDs in Image\IdProof\.
- Bill formats: BillPrint.rpt, BillTokenPrint.rpt, BOOKINGPrint.rpt, Advance Reciept.rpt.
