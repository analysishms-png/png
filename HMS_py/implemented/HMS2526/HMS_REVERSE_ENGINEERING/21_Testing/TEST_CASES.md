# HMS QA TEST CASES (templates — NOT executed) 

Safety: no destructive tests were run against production data. Cases below are prepared for
execution later against a TEST copy of MOONData2627 only.

## TC-001 | Reservation | Create booking (Positive)
Precondition: valid user (AEDP rights), free room category, business date open.
Steps: Reservation -> New -> guest/room/rate -> Save.
Expected: Booking row created (DocId pattern <site><Vtype><serial>), ResStatus set,
BookingMore rows for extra guests; confirmation letter printable.
DB Impact: INSERT Booking (+BookingMore). Status: NOT EXECUTED (needs test DB).

## TC-002 | Reservation | Cancel booking (Negative/Flow)
Steps: open existing booking -> Cancel -> capture CancelAmt + CancellationMode.
Expected: BookingCancelDetails row inserted; Booking status Cancel; advance refund flow offered.
DB Impact: INSERT BookingCancelDetails; UPDATE Booking.

## TC-003 | Check-In | Walk-in without reservation (Positive)
Steps: Front Office -> Walk-in -> guest, room, plan -> Save.
Expected: GuestFolio + RoomOcc rows (chkoutdate NULL), RoomMast status occupied.
DB Impact: INSERT GuestFolio/RoomOcc/GuestFolioProfDetail.

## TC-004 | Check-In | Double allocation (Negative)
Steps: two check-ins to the same room same dates.
Expected: application blocks (RoomOcc uniqueness check); no partial rows left.
DB Impact: none if blocked. Watch for orphan GuestFolio rows (BUG-009 class).

## TC-005 | Posting | Charge then payment (Positive)
Steps: post restaurant charge to folio; then settle cash payment.
Expected: PayCharge AmtDr row (PayCode=revenue) + AmtCr row (PayType=Cash), Bill_No issued.
DB Impact: INSERT PayCharge x2 (+PayChargeLog).

## TC-006 | Posting | Duplicate-key regression (Bug regression)
Precondition: two terminals posting simultaneously.
Expected (after fix): no aaaaaPayCharge_PK violation (BUG-003); currently KNOWN to fail.

## TC-007 | Check-Out | Settlement & bill print (Positive)
Steps: check-out -> settle -> print BillPrint.rpt.
Expected: RoomOcc CHKOUTDATE/TIME set; bill totals = sum(AmtDr)-sum(AmtCr); GST rows correct.

## TC-008 | Night Audit | Roll on clean data (Positive) — TEST DB ONLY
Precondition: all KOT/POS bills settled (Enviro flags Yes), test copy database.
Expected: revenue posted to Ledger; dirty rooms roomStat='D'; due-outs extended;
Enviro.ncur +1; NightAuditLog row; tokens reset; split staging cleared.
Rollback check: on forced error, ncur unchanged and no partial postings.

## TC-009 | Login | Inactive user (Negative)
Steps: set ActiveYN='N' for a test user; attempt login.
Expected: "This User Is Not Currently Active".

## TC-010 | Login | Hardcoded backdoor (Security regression)
Steps: enter 'India12' in Banquet availability login.
Expected (after fix): rejected. Currently KNOWN to pass (BUG-008).

## TC-011 | Reports | Report path drift (Negative)
Steps: rename a .rpt in Reports\; run its menu item.
Expected: clear error; currently raw Crystal "File not found" (BUG-005).

## TC-012 | Permissions | AEDP enforcement
Steps: strip 'D' right for a form in user1; open that form with that user.
Expected: Delete disabled/hidden; server-side evidence: PARAM_STR parsing in code.
