-- =====================================================================
-- 04_Reservation — SQL executed by the VB6 code
-- Source: HMS_REVERSE_ENGINEERING\EXTRAS.text (decompiled VB6)
-- Each statement carries the EXTRAS.text line number where it is built.
-- Object scope: RrRoomReservation L88969-L107257 (plus dispatch L476999+).
--
-- EVIDENCE TAGS
--   [VERIFIED-VB6]  statement text appears verbatim in EXTRAS.text at the
--                   cited line ( VB6 string concatenation shown as ... )
--   [VERIFIED-SQL]  object/column/rowcount confirmed in 18_Database extracts
--   [INFERRED]      reconstructed from surrounding code
--   [UNKNOWN]       not located in this pass
--
-- NO statement in this file has been executed against MOONData2627.
-- READ-ONLY documentation.
--
-- NOTE ON EXECUTION STYLE: the VB6 client concatenates user input directly
-- into these strings (classic SQL-injection surface). No parameterised
-- queries are used anywhere in this object range. [VERIFIED-VB6]
-- =====================================================================


-- ---------------------------------------------------------------------
-- 1. SCREEN LOAD — look-up fill (RrRoomReservation)
-- ---------------------------------------------------------------------

-- EXTRAS.text L89344 [VERIFIED-VB6]  -> enviro (Enviro table, 1 row)
SELECT NCUR, PlanCalc, RoomRateEditable, RoomIncTaxEditable,
       RoomServiceChargeEditable, PlanSelectionBasedOn, ReservationExpandOnSaveYN
  FROM enviro
 WHERE LOGSITE_CODE = '<MemVar_1F81078>';

-- EXTRAS.text L89362 [VERIFIED-VB6]  -> SubGroup (3238 rows)
SELECT SubCode AS Code, Name
  FROM SubGroup
 WHERE ActiveYN = 1
   AND (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO')
   AND (CompanyType IN ('Corporate','Travel Agency')
        OR CompanyType IN (SELECT Code FROM memcatmast WHERE LOGSITE_CODE = '<site>'));

-- EXTRAS.text L89383 [VERIFIED-VB6]  -> City (466 rows)
SELECT CITYCODE AS Code, CITYNAME AS Name
  FROM CITY
 WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO')
 ORDER BY CITYName;

-- EXTRAS.text L89402 [VERIFIED-VB6]  -> RevMast (174 rows)
SELECT Code, Name, Type AS Flag, PayType, SaleRate, Cost
  FROM RevMast
 WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO')
   AND Fieldtype IN ('P')
 ORDER BY NAME;

-- EXTRAS.text L89407 [VERIFIED-VB6]  -> Employee (140 rows)
SELECT Code, Name
  FROM Employee
 WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO')
 ORDER BY Name;

-- EXTRAS.text L89426 [VERIFIED-VB6]  -> RoomOcc (11464 rows)  "occupied now"
SELECT RoomOcc.DocId AS Code, RoomOcc.RoomNo, RoomOcc.FolioNo
  FROM RoomOcc
 WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO')
   AND roomocc.type NOT IN ('C','O')
   AND CHKOUTDATE IS NULL;

-- EXTRAS.text L89459 [VERIFIED-VB6]  -> MarketSeg (10 rows)
SELECT CODE, NAME FROM MarketSeg
 WHERE Active <> 'No'
   AND (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO')
 ORDER BY Name;

-- EXTRAS.text L89480 [VERIFIED-VB6]  -> BussSource (6 rows)
SELECT CODE, NAME FROM BussSource
 WHERE Active <> 'No'
   AND (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO')
 ORDER BY Name;

-- EXTRAS.text L89488 [VERIFIED-VB6]  -> PlanMast (9 rows)
SELECT Code, Name, total, App_Date, RoomTaxStru
  FROM PlanMast
 WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO')
   AND ActiveYn = 'Yes'
   AND App_date <= '<today>';

-- EXTRAS.text L89519 / L89540 [VERIFIED-VB6]  -> travel-agency / corporate pickers
SELECT SubCode, Name FROM Subgroup
 WHERE ActiveYN = 1
   AND (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO')
   AND CompanyType LIKE ('Travel Agency')
 ORDER BY Name;
-- L89540: same with CompanyType LIKE ('Corporate')

-- EXTRAS.text L89560 [VERIFIED-VB6]  -> RoomMast (86 rows) + RoomCat (2) + RevMast (174)
SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot,
       RoomMast.RoomCat, Revmast.TaxStru AS RoomTaxStru
  FROM RoomMast
  LEFT JOIN RoomCat ON RoomCat.Code   = RoomMast.RoomCat
  LEFT JOIN Revmast ON RoomCat.Revcode = Revmast.Code
 WHERE (RoomMast.LOGSITE_CODE = '<site>' OR RoomMast.LOGSITE_CODE = 'HO');

-- EXTRAS.text L89580 / L89587 [VERIFIED-VB6]  -> RoomCat picker
SELECT Roomcat.Code, Roomcat.Name, Revmast.TaxStru AS RoomTaxStru
  FROM RoomCat LEFT JOIN Revmast ON RoomCat.Revcode = Revmast.Code
 WHERE (RoomCat.LOGSITE_CODE = '<site>' OR RoomCat.LOGSITE_CODE = 'HO');
-- L89587 variant aliases Code AS SearchCode

-- EXTRAS.text L89608 / L89627 [VERIFIED-VB6]  -> GroupProf / GuestProf (7804 rows)
SELECT Code, Name FROM GroupProf
 WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO') ORDER BY Name;
SELECT Code, Name FROM GuestProf
 WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO') ORDER BY Name;

-- EXTRAS.text L89632 [VERIFIED-VB6]
SELECT NCUR FROM enviro WHERE LogSite_Code = '<site>';

-- EXTRAS.text L89636 [VERIFIED-VB6]  -> booking picker
SELECT DocId AS SearchCode, Site_Code, LogSite_Code
  FROM Booking
 WHERE LOGSITE_CODE = '<site>'
 ORDER BY BookNo;

-- EXTRAS.text L89651 [VERIFIED-VB6]  -> cancellation guard
SELECT DocId
  FROM Booking
 WHERE (LOGSITE_CODE = '<site>' OR LOGSITE_CODE = 'HO')
   AND RoomType = 'RO'
   AND OccRoom = '<room>';


-- ---------------------------------------------------------------------
-- 2. SAVE (add / edit reservation)
-- ---------------------------------------------------------------------

-- EXTRAS.text L91992 [VERIFIED-VB6]
-- Booking (62 cols — PK = DocId + LogSite_Code [VERIFIED-SQL indexes_pks])
INSERT INTO Booking
  (Docid, Vtype, BookNo, Site_Code, Vprefix, Vdate, GroupCode,
   ArrDate, Arrtime, DepDate, DepTime, NoDays, RoomCat, RoomType, Roomno,
   [Adult], [Child], NoOfRooms, RateCode, RoomRate, remarks, [Authorization],
   Company, GuestProf, Travel ... )
VALUES ('...');

-- EXTRAS.text L92013 / L92029 / L92046 / L92063 / L92080 / L92097  [VERIFIED-VB6]
-- executed up to 6 times from one save (secondary names / contact rows)
INSERT INTO BookingMore (Docid, Sno, Name, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code)
VALUES ('...','...','...','...','...','...','...','...');

-- EXTRAS.text L100457 [VERIFIED-VB6]
INSERT INTO GrpBookingDetails
  (BookingDocId, SNO, RoomDet, Adults, Childs, Tarrif, IncTax, ServiceChrg,
   LogSite_Code, RoomCat, Plan_Package, Remarks, RoomNo, RateCode,
   U_EntDt, U_AE, ArrDate, ArrTime, NoDays, DepDate, ...)
VALUES ('...');

-- EXTRAS.text L100546 [VERIFIED-VB6]
INSERT INTO BookingPlanDetails
  (BookingDocId, SNO, Sno1, RevCode, ChrgCode, TaxInc, TaxStru, PrintOption,
   PostingMethod, ChargeType, FlatRate, Adult, Child, ExtraAdult, ExtraChild,
   NoOfDays, PlanPer, App_Date, ...)
VALUES ('...');

-- Voucher serial allocation, executed around every voucher write
-- EXTRAS.text L90032 / L90074 / L90353 [VERIFIED-VB6]
SELECT VT.Number_Method, VP.V_Type, VP.Date_From, VP.Prefix, VP.Start_Srl_No
  FROM Voucher_Type VT
  INNER JOIN Voucher_Prefix VP
         ON VT.V_Type  = VP.V_Type
        AND VT.SITE_CODE = VP.SITE_CODE
        AND VT.LOGSITE_CODE = VP.LOGSITE_CODE
 WHERE (VP.SITE_CODE = '<site>' AND VP.LOGSITE_CODE = '<site>');

-- EXTRAS.text L90042 / L90084 / L90364 [VERIFIED-VB6]
UPDATE Voucher_Prefix
   SET Start_Srl_No = <n>
 WHERE (SITE_CODE = '<site>' AND LOGSITE_CODE = '<site>');

-- EXTRAS.text L91603 / L91838 [VERIFIED-VB6]  -> SMS template for reservation
SELECT ReservationMsg, SendingMessageText
  FROM SMSEnviro
 WHERE LOGSITE_CODE = '<site>';


-- ---------------------------------------------------------------------
-- 3. CANCEL (soft)
-- ---------------------------------------------------------------------

-- EXTRAS.text L89900 / L90371 / L90402 / L98936  [VERIFIED-VB6]
-- built by Proc_6_6_F208E4(prefix, auditDate, "Update Booking Set Cancel='Y',CancelDate=")
UPDATE Booking
   SET Cancel = 'Y', CancelDate = <auditDate> [, CancelUName = <user>]
 WHERE DocId = '<docid>';

-- EXTRAS.text L89908 / L90379 / L90410  [VERIFIED-VB6]
UPDATE GrpBookingDetails
   SET Cancel = 'Y', CancelDate = <auditDate>
 WHERE BookingDocid = '<docid>';

-- EXTRAS.text L90054 / L90333  [VERIFIED-VB6]  -> BookingCancelDetails (149 rows, 15 cols)
INSERT INTO BookingCancelDetails
  (DocId, SNo, Vtype, VNo, Site_Code, VPrefix, Vdate,
   BookingDocID, Advance, CancelAmt, CancellationMode,
   U_Name, U_EntDt, U_AE, LogSite_Code)
VALUES ('...');

-- EXTRAS.text L90303 [VERIFIED-VB6]  -> "already checked in?" blocker
SELECT count(*) FROM GuestFolio WHERE BookingDocid = '<docid>';

-- EXTRAS.text L90314 / L90323 [VERIFIED-VB6]  -> advance already received?
SELECT Sum(AmtCr) FROM PayCharge WHERE RefDocid = '<docid>';

-- EXTRAS.text L90259 [VERIFIED-VB6]  -> cancellation SMS
SELECT ReservationCancelMsg, SendingMessageText
  FROM SMSEnviro
 WHERE LOGSITE_CODE = '<site>';


-- ---------------------------------------------------------------------
-- 4. RESTORE (un-cancel)
-- ---------------------------------------------------------------------

-- EXTRAS.text L90539 [VERIFIED-VB6]
UPDATE Booking
   SET Cancel = 'N', canceldate = NULL, CancelUName = ''
 WHERE Docid = '<docid>';

-- EXTRAS.text L90543 [VERIFIED-VB6]
UPDATE GrpBookingDetails
   SET Cancel = 'N', canceldate = NULL, CancelUName = ''
 WHERE BookingDocid = '<docid>';

-- EXTRAS.text L90548 [VERIFIED-VB6]
DELETE FROM BookingCancelDetails WHERE BookingDocId = '<docid>';


-- ---------------------------------------------------------------------
-- 5. HARD DELETE (cascade — application-managed, NO FKs exist)
-- ---------------------------------------------------------------------
-- 18_Database\foreign_keys.txt is 0 bytes: 0 declared foreign keys
-- in MOONData2627. [VERIFIED-SQL]

-- EXTRAS.text L91404 [VERIFIED-VB6] precondition 1
SELECT Count(*) FROM PayCharge  WHERE RefDocId = '<docid>';
-- EXTRAS.text L91415 [VERIFIED-VB6] precondition 2
SELECT Count(*) FROM GuestFolio WHERE BookingDocId = '<docid>';

-- EXTRAS.text L91430-L91434 [VERIFIED-VB6] cascade #1
DELETE FROM Booking              WHERE Docid        = '<docid>';
DELETE FROM GrpBookingDetails    WHERE BookingDocid = '<docid>';
DELETE FROM BookingPlanDetails   WHERE BookingDocid = '<docid>';
DELETE FROM BookingMore          WHERE Docid        = '<docid>';
DELETE FROM BookingCancelDetails WHERE BookingDocid = '<docid>';

-- EXTRAS.text L91852 / L91857 / L91862 / L91867 [VERIFIED-VB6] cascade #2 (browse path)
DELETE FROM Booking              WHERE Docid        = '<docid>';
DELETE FROM GrpBookingDetails    WHERE BookingDocid = '<docid>';
DELETE FROM BookingPlanDetails   WHERE BookingDocid = '<docid>';
DELETE FROM BookingMore          WHERE Docid        = '<docid>';


-- ---------------------------------------------------------------------
-- 6. PENDING / UNVERIFIED BOOKING LISTS
-- ---------------------------------------------------------------------

-- EXTRAS.text L90592 [VERIFIED-VB6]
SELECT Booking.DocId AS SearchCode, Booking.BookNo, Booking.GuestName,
       CAST(Booking.VDate AS VARCHAR(11))  AS VDate,
       CAST(Booking.ArrDate AS VARCHAR(11)) AS [ArrDate],
       Booking.ArrTime,
       CAST(Booking.DepDate AS VARCHAR(11)) AS DepDate,
       Booking.DepTime, Booking.RoomNo, booking.Cancel
  FROM Booking
 WHERE Verified = 'N'
   AND (Booking.VDate BETWEEN <from> AND <to>);

-- EXTRAS.text L91603 [VERIFIED-VB6]  — NOTE: different emptiness predicate
SELECT Booking.DocId AS SearchCode, Booking.BookNo, Booking.GuestName,
       CAST(Booking.VDate AS VARCHAR(11))  AS VDate,
       CAST(Booking.ArrDate AS VARCHAR(11)) AS [ArrDate],
       Booking.ArrTime,
       CAST(Booking.DepDate AS VARCHAR(11)) AS DepDate,
       Booking.DepTime, Booking.RoomNo, booking.Cancel,
       IsNull(Booking.RefBookNo,'') Ref_BookingId
  FROM Booking
 WHERE Isnull(Booking.Verified,'') = ''
   AND (Booking.VDate BETWEEN <from> AND <to>);

-- EXTRAS.text L91494-L91495 [VERIFIED-VB6]  "orphan" booking check
SELECT Count(*) FROM Booking
 WHERE BOOKING.CANCEL = 'N'
   AND BOOKING.LOGSITE_CODE = '<site>'
   AND ((SELECT Count(Distinct Sno) FROM GrpBookingDetails
          WHERE NOT EXISTS (SELECT Distinct IsNull(BookingDocid,'') AS BookingDocId,
                                   BookingSno AS Sno
                              FROM GuestFolio
                             WHERE GrpBookingDetails.BookingDocId = GuestFolio.BookingDocId
                               AND GrpBookingDetails.Sno          = GuestFolio.BookingSno)
            AND IsNull(Cancel,'') <> 'Y'
            AND GrpBookingDetails.BookingDocid = Booking.DocId) > 0
        OR ((SELECT Count(*) FROM GrpBookingDetails
              WHERE GrpBookingDetails.BookingDocid = Booking.DocId) = 0
         AND (SELECT Count(*) FROM GuestFolio
              WHERE GuestFolio.BookingDocId = Booking.DocId) = 0))
   AND DocId = '<docid>';


-- ---------------------------------------------------------------------
-- 7. PAYMENT / ADVANCE POSTING (reservation side)
-- ---------------------------------------------------------------------

-- EXTRAS.text L89963 [VERIFIED-VB6]  credit side
INSERT INTO PayCharge
  (DocId, SNo, Vtype, VNo, Site_Code, VPrefix, Vdate, Vtime, GuestProf,
   EmpCode, CompCode, Comments, PayCode, PayType, BillAmount, AmtCr, TipAmt,
   RoomCat, RoomType, RoomNo, CardNo, CardHolder, ChqNo, ChqDate, ExpDate,
   U_Name, U_EntDt, U_AE, RestCode, ContraDocID, LogSite_Code)
VALUES ('...');

-- EXTRAS.text L90019 [VERIFIED-VB6]  debit side (adds FolioNo)
INSERT INTO PayCharge
  (DocId, SNo, Vtype, VNo, Site_Code, VPrefix, Vdate, VTime, GuestProf,
   EmpCode, CompCode, Comments, PayCode, PayType, BillAmount, AmtDr, TipAmt,
   RoomCat, RoomType, RoomNo, FolioNo, CardNo, CardHolder, ChqNo, ChqDate,
   ExpDate, U_Name, U_EntDt, U_AE, RestCode, ContraDocID, LogSite_Code)
VALUES ('...');


-- ---------------------------------------------------------------------
-- 8. ROOM BLOCK-OUT READ (block rows are WRITTEN by 06_House_Keeping)
-- ---------------------------------------------------------------------

-- EXTRAS.text L97971 [VERIFIED-VB6]  availability overlap test
SELECT ...
  FROM RoomMast RM
  JOIN RoomBlockOut RB ON ...
 WHERE RM.RoomCat = '<cat>'
   AND RB.Type = 'O'
   AND RM.Type = 'RO'
   AND <stayDate> BETWEEN RB.FromDate AND RB.ToDate;


-- ---------------------------------------------------------------------
-- 9. MENU / PERMISSION TABLES written by the module loader
-- ---------------------------------------------------------------------
-- EXTRAS.text L475803 [VERIFIED-VB6]
INSERT INTO UserModule
  (OPT1, OPT2, OPT3, OPT4, Code, [OPTION], PARAM_STR, flag, OutletCode)
VALUES (<opt1>, <opt2>, <opt3>, <opt4>, <code>, '<caption>', '<AEDP|***P|>', '<E|R|N|V>', '<outlet>');

-- EXTRAS.text L475808-L475812 [VERIFIED-VB6]
INSERT INTO MenuHelp
  (CompCode, UserName, OPT1, OPT2, OPT3, OPT4, Code, [OPTION],
   Menu_Index, PARAM_STR, Module_Name, flag, ShowInlist, OutletCode)
VALUES ('<comp>', 'SA', <opt1>, <opt2>, <opt3>, <opt4>, <code>,
        '<caption>', <menuIndex>, '<param>', '<outlet>', '<flag>', 'N', '<outlet>');

-- EXTRAS.text L475695-L475703 [VERIFIED-VB6] idempotency guards
SELECT * FROM UserModule
 WHERE OutletCode = '<outlet>' AND [OPtion] = <caption> AND OPT1 = <opt1>;
SELECT Count(opt1) FROM UserModule
 WHERE OutletCode = '<outlet>' AND OPT1 = <opt1> AND [Option] = <caption>;

-- Row counts [VERIFIED-SQL 18_Database\tables_rowcounts.txt]
--   UserModule = 450     MenuHelp = 9212     menuHelp1 = 1234


-- ---------------------------------------------------------------------
-- 10. VIEWS exposed to this module
-- ---------------------------------------------------------------------
-- ViewBooking   [VERIFIED-SQL 18_Database\view_proc_definitions.txt L28]
--   Booking B LEFT JOIN GrpBookingDetails G ON B.DocId = G.BookingDocid
--   WHERE B.Cancel <> 'Y' AND ISNull(G.Cancel,'') <> 'Y'
--   -- coalesce rule: group-line values win over header values for
--      ArrDate/ArrTime/DepDate/DepTime/NoDays/RoomNo/RateCode/Cancel/
--      RRTAXINC/ADULT/CHILD/ROOMRATE/ROOMCAT/NoOfRooms
--   -- NOTE: G.Sno is selected but not part of a GROUP BY with aggregates
--      elsewhere; TOP 100 PERCENT + ORDER BY in a view is non-deterministic
--      in SQL Server. [VERIFIED-SQL]
--
-- ViewSubgroup   [VERIFIED-SQL 18_Database\view_proc_definitions.txt L54]
--   SubGroup LEFT JOIN ACGROUP LEFT JOIN City  (used by party pickers)
