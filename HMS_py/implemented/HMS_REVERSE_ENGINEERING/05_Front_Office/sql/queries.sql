-- 05_Front_Office — SQL statement inventory
-- Source: verbatim VB6 string literals in EXTRAS.text (line numbers cited).
-- Evidence: [VERIFIED-VB6] = recovered from decompiled code; NONE executed.
-- Read-only rule: these are documentation artefacts only.

-- ============================================================
-- 1. RESERVATION (RrRoomReservation)                 [L91992]
-- ============================================================
INSERT INTO Booking (Docid,Vtype,BookNo,Site_Code,Vprefix,Vdate,GroupCode,ArrDate,Arrtime,
 DepDate,DepTime,NoDays,RoomCat,RoomType,Roomno,[Adult],[Child],NoOfRooms,RateCode,RoomRate,
 remarks,[Authorization],Company,GuestProf,TravelAgency,BussSource,MarketSeg,ArrFrom,
 Destination,BookedBy,ResMode,ResStatus,TravelMode,SplitFolio,DepositeReq,Guarantee,Cancel,
 GuestName,U_Name,U_EntDt,U_AE,OccRoom,PackageCode,LogSite_Code,MobNo,Faxno,Email,OtherCont,
 RRTaxInc,RRServiceChrg,RDisc,RSDisc,AdvDueDate,RefCode,BookStatus,RefBookNo) VALUES (...);

INSERT INTO BookingMore (Docid,Sno,Name,...) VALUES (...);   -- extra guests; table has 0 rows

INSERT INTO BookingCancelDetails (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,
 BookingDocID,Advance,CancelAmt,CancellationMode,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES (...);
-- data: Booking 25, BookingCancelDetails 149, BookingMore 0, GrpBookingDetails 56  [VERIFIED-SQL]

-- ============================================================
-- 2. CHECK-IN (fdCheckIn / fdWalkInEntry)     [L942575 / L942284]
-- ============================================================
-- step 1: folio header
INSERT INTO GuestFolio (Docid,Vtype,FolioNo,Site_Code,Vprefix,Vdate,GuestProf,Name,Add1,Add2,
 City,NoDays,SplitFolio,Remarks,RefBookNo,Authorisation,Company,TravelAgent,PurVisit,
 Nationality,ArrFrom,Destination,TravelMode,TclFac,Remark,RoDisc,RSDisc,BookingDocId,
 U_Name,U_EntDt,U_AE,GroupCode,MarketSeg,BussSource,DepDate,mfolioNo,[Comp],MFolioNoDocid,
 LOGSITE_CODE,BookingSno) VALUES (...);

-- step 2: one row per room
INSERT INTO RoomOcc (DocID,Sno,FolioNo,VType,Site_Code,vPrefix,GuestProf,RoomCat,RoomType,
 RoomNo,RateCode,RoomRate,ChkInDate,ChkInTime,aDult,Children,DepDate,DepTime,Type,
 U_Name,U_EntDt,U_AE,Plancode,PlanAmt,IncInRate,LOGSITE_CODE,PlanDisc,PlanDiscAmt,
 PlanDiscAppOn,RRTaxInc,RRServiceChrg,ChngDate,RoomTarrif,RackRate,RoomTaxStru) VALUES (...);

INSERT INTO GuestFolioProfDetail (Docid,GuestProf,mProf,U_AE,U_EntDt,U_Name,Site_Code,
 LogSite_Code) VALUES (...);

-- staging cleanup observed on open/close (CHECKIN_FIELD_MAP §5):
DELETE FROM GuestFolioProfDetail WHERE Docid='';

-- data: GuestFolio 11043, RoomOcc 11464, GuestFolioProfDetail 747  [VERIFIED-SQL]

-- ============================================================
-- 3. STAY OPERATIONS
-- ============================================================
-- plan assignment after entry (walk-in variant, L149589 region):
UPDATE RoomOcc SET PlanCode='<c>',PlanAmt=<a>,IncInRate='<y>',PlanDisc=<d>,PlanDiscAmt=<da>,
 PlanDiscAppOn='<on>',U_EntDt=<now>,U_AE='E'
 WHERE Sno=<sno> AND DocId='<id>' AND Site_Code='<site>' AND RoomNO='<room>';

-- room change also re-points messages (L~149680):
UPDATE GuestMessage SET RoomNo='<new>',RoomCat='<c>'
 WHERE FolioNo=<f> AND RoomNO='<old>';
-- data: GuestMessage 0 rows (dormant)  [VERIFIED-SQL]

-- amend stay (L146328 / L146334):
INSERT INTO GuestFolioAmend (FolioNo,Site_Code,GuestProf,RoomNo,OldDepDate,OldDepTime,
 DepDate,DepTime,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES (...);
UPDATE GuestFolio SET DepDate=<new> WHERE ...;
-- data: GuestFolioAmend 167  [VERIFIED-SQL]

-- folio/room merge (L437902):
UPDATE GuestFolio SET mFolioNoDocId='<target>', mFolioNo=<no> WHERE ...;

-- discount fields (L149517 region):
UPDATE GuestFolio SET RoDisc='...' , RSDisc=... WHERE ...;

-- ============================================================
-- 4. CHECK-OUT                                     [L149667]
-- ============================================================
UPDATE RoomOcc SET CHKOUTDATE=<d>, CHKOUTTIME='<t>', IncInRate='<y>',
 PlanDisc=<d>, PlanDiscAmt=<a> WHERE ...;

-- ============================================================
-- 5. READS RECOVERED FROM CODE / REPORTS
-- ============================================================
-- look-up guest (InputBox-driven, InHouseGuestFolio):
SELECT ... FROM GuestFolio ... WHERE Name LIKE '%<partial>%' OR RoomNo='<n>';

-- Room Status view = InHouseGuestFolio pre-filtered by PGuestName/PRoomNo (L480384)

-- settlement report host: rFomRepView.GRepFormName='SettleRep' (L480402)  [VERIFIED-VB6]

-- ============================================================
-- 6. NIGHT AUDIT TOUCHES (cross-module, see 10_Night_Audit)
-- ============================================================
-- room status roll reads FO tables then updates RoomMast:
--   SELECT RoomMast.Code ... FROM RoomMast RIGHT JOIN RoomOcc ... LEFT JOIN GuestFolio ...
--   WHERE roomocc.type NOT IN ('C','O') AND ROOMMAST.TYPE='RO' ...
-- due-out extension:
--   SELECT DocId,Depdate,VDate AS ChkInDate,NoDays FROM GuestFolio
--    WHERE Docid IN (SELECT DocId FROM RoomOcc WHERE chkoutdate IS NULL);
--   UPDATE RoomOcc SET Depdate=<new>,U_EntDt=<now>,U_AE='E' WHERE Docid='<id>';
--   UPDATE GuestFolio SET nodays=<diff>,Depdate=<new> WHERE Docid='<id>';

-- ============================================================
-- NOT IDENTIFIED (spec §11): SP/proc-side logic for FO —
-- DB has 3 utility SPs (never called by the app); no FKs. Report SQL lives inside
-- .rpt definitions (17_Reports/REPORTS_DEEP_CATALOG.md).
-- ============================================================
