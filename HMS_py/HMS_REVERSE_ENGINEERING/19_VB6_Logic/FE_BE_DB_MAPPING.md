# Frontend → Backend → Database → SQL Server Mapping (Spec §19)

Chain model required by spec: `FRONTEND → BUSINESS LOGIC → DATABASE ACCESS → SQL SERVER`.
For each screen: **Frontend** (VB6 form/control) · **Backend** (Sub/Function) · **Database**
(table/view/SP) · **SQL** (actual statement, line = `EXTRAS.text` line) · **Output** (screen/report/result).

Evidence: `[VERIFIED-VB6]` line refs · `[VERIFIED-SQL]` row counts · `[VERIFIED-UI]` captures.
**0 called stored procedures / 0 functions / 0 FKs DB-wide** (3 utility SPs exist: `GetFieldNameAs`, `GetFieldNameAsStr`, `Proc_WebService` — 0 refs in code) → every backend hop is inline VB6 SQL
(`18_Database/foreign_keys.txt` = 0 bytes).

## Legend
FE = frontend form · BE = backend handler · DB = table(s) · Out = output.
Line numbers: `EXTRAS.text`.

---

## 05_Front_Office

| Screen | FE (VB6) | BE (Sub/Function) | DB | SQL (line) | Out |
|---|---|---|---|---|---|
| WalkIn CheckIn | `fdWalkInEntry` (L477785/L478236) | check-in save | `GuestFolio`, `RoomOcc`, `GuestFolioProfDetail` | `Insert Into GuestFolio(42 cols)` L942575; `Insert Into RoomOcc(34 cols)` L942284 | in-house folio grid `[VERIFIED-UI]` C4 |
| Check In Entry | `fdCheckIn` (L478243) | reservation check-in | same as above | same pair, plus Booking read | folio opened |
| Reservation entry | `RrRoomReservation` (L165594) | reservation save | `Booking`, `BookingMore`, `BookingCancelDetails` | `Insert Into Booking(54 cols)` L91992 | `BOOKINGPrint.rpt` |
| Display Folio | `fdDisplayFolio` (L478295) | folio query | `GuestFolio`, `RoomOcc`, `PayCharge` | SELECT (folio load) | folio grid |
| Room Status | `InHouseGuestFolio` +`PRoomNo` (L480384) | in-house query | `GuestFolio`, `RoomOcc`, `RoomMast` | SELECT in-house join | status list |
| Post Charges/Payments | `fdPaymentCharge` (L478289) | charge save | `PayCharge` (+`PayChargeH/Log`) | insert cols (lifecycle §4) | folio refreshed |
| Charges Posting (NA menu) | `fdPostChrg` (L480211) | posting | `PayCharge` | insert | folio |
| Room Change Entry | `fdRoomChange` (L478301) | room change | `RoomOcc`, `GuestMessage` | `Update GuestMessage set RoomNo=…` ~L149680 | room view |
| Amend Stay | `fdAmendEntry` (L478307) | amend | `GuestFolioAmend`, `GuestFolio` | insert+update L146328/146334 | folio |
| Check-out | `FdCheckOut` (L478343) | checkout | `RoomOcc` | `Update RoomOcc set CHKOUTDATE=…` L149667 | bill |
| Reverse Check Out | `FdRevCheckOut` (L477792/480396) | reverse | `RoomOcc` | UPDATE (checkout fields cleared) `[INFERRED]` | room back in-house |
| Bill Re-Settlement | `FdReSetlement` (L477803, `ParentForm="Check Out"`) | settle | `PayCharge`, `PayChargeH` | payment rows | settlement slip |
| Merge Room | `FrmMergeCharge` (L477797) | merge | `GuestFolio` | `Update GuestFolio Set mFolioNoDocId=…` L437902 | combined folio |
| Bill Reprint | `frmFomB` (L478391) | reprint | `PayCharge` (read) | report SELECT | `BillPrint.rpt` |
| Expense Entry | `FrmExpense` (L478313) | expense save | `ExpSheet` | insert | expense voucher |
| Blank GRC | `FrmGrcBlank` (L478319) | GRC form | guest-registration-card tables | report SELECT | GRC print |

## 10_Night_Audit

| Screen | FE | BE | DB | SQL (line) | Out |
|---|---|---|---|---|---|
| Night Audit Process | menu gate (L480406) → `fdAcPostChrg` | `mdlNightAudit` (~L228700–228950) | `Enviro`, `RevMast`, `ExpSheet`, `Ledger`, `RoomMast`, `RoomOcc`, `GuestFolio`, `NightAuditLog`, `Depart`, split tables, `VOUCHER_PREFIX` | phases A–D (`10_Night_Audit/sql/queries.sql`) | date rolled `[VERIFIED-SQL]` NightAuditLog 134 |
| pre-run gate | MDI handler `NightAuditoR_Click` L61 | `Proc_96_46_10187AC`/`Proc_96_45_11033E4` | `Enviro` | `Select KOTAtNightAudit,POSBillAtNightAudit from Enviro…` L90/L480407 | proceed/block |
| Reverse Night Audit | `frmReNightAudit` (L480425) | form body | `NightAuditLog` (+likely RoomOcc/GuestFolio/Enviro) | **SQL NOT YET IDENTIFIED** | date restored |
| Charges Posting | `fdPostChrg` (L480211) | posting | `PayCharge` | insert | folio |
| Account Posting | `fdNDAcPostChrg` (L477244) | A/C posting | `Ledger`, `RevMast` | voucher insert | ledger |
| Guest Audit Ledger | `rFomRepView` (L477118) | report viewer | `Ledger`, `GuestFolio` | report SELECT | Crystal report |
| GSTR-1/2 family | `rFomRepView` (L477174–477202) | report viewer | POS/tax tables | SQL inside `.rpt` | GST report `[VERIFIED-UI]` 5 PNGs |
| Upload Process | `FrmUploadProcess` (L477209) | upload | GST staging | `[UNKNOWN]` body | portal upload |
| Night Audit Log | `rFomRepView` (L477111) | report viewer | `NightAuditLog` | SELECT | audit history |

## 02_Main_Setup (masters)

| Screen | FE | BE | DB | SQL (line) | Out |
|---|---|---|---|---|---|
| Room Master | `FrmRoomMast` (L477662) | master save | `RoomMast` (86 rows) | insert/update | room list |
| Room Category | `FrmRoomCatMast` (L477656) | master save | `RoomCat` (2 rows) | insert/update | categories |
| Company Master | `CompMast` (L477668) | master save | `SubGroup` (3238) | insert/update | companies |
| Charge Master | `FrmChargeMast` (L477632) | master save | `RevMast` (174) | insert/update | charge heads |
| Plan/Package Master | `FrmPlanPackMast` (L477638) | master save | plan tables | insert/update | plans |
| Guest Profile | `GuestProfile` (L477680) | profile save | `GuestProf` (7804) | insert/update | profiles |
| User Master | `UserMast` (L477187) | user save | `usermast` | `select * from usermast order by user_name` L9885 | user list |
| Permissions | `UserPermission` (L477193) | flag save | `UserPermission` (PK CompCode+UserName+LogSite_Code) | `SELECT DeleteGuestCharges FROM UserPermission …` L158198 | rights UI |
| Parameter (Enviro) | `frmEnviro` (L477584) | config | `Enviro` (1 row) | `Update Enviro set SundryPassword=…` L190439 | config UI |

## 04_Reservation / 03_Finance (sample)

| Screen | FE | BE | DB | SQL (line) | Out |
|---|---|---|---|---|---|
| Voucher Entry | `FaVrEnt` (L477250) | voucher save | `Ledger`, `VOUCHER_PREFIX` | voucher insert | day book |
| Adjustment Entry | `FaAdjust` (L477257) | adjust | `Ledger` | contra rows | ledger |
| Bank Reconciliation | `FaChqClear` (L477271) | recon | cheque tables | update | recon report |
| Day Book | `FaReports` (L477376) | report viewer | `Ledger` | report SELECT | `FaReports` output |
| Balance Sheet / P&L / Trial Balance | `FaMagic` (L477292–477364) | magic renderer | `Ledger`, groups | aggregate SELECTs | financial statements |
| Ageing Analysis | `FaReports` (L477139/477148) | report | outstanding | report SELECT | ageing report |

## 07_Inventory / 08_POS (sample)

| Screen | FE | BE | DB | SQL (line) | Out |
|---|---|---|---|---|---|
| Purchase Order | `pPOrder` (L479113) | PO save | stock/purchase tables | insert | PO print |
| M.R. Entry | `pMREntry` (L479119) | goods receipt | stock | insert/update | MR print |
| Purchase Bill | `pPBill` (L479125) | bill save | purchase + `Ledger` | insert | bill print |
| Stock Summary | `rInventRepView` (L479213) | report viewer | stock tables | report SELECT | stock report |
| LOT Entry (KOT) | `RsKOTEntry` (L479273) | KOT save | KOT tables | insert | KOT slip |
| Payment Receive | `RsPaymentReceice` (L479410) | payment | `PayCharge` (POS VType) | insert | receipt |
| Memo Reprint | `POSBillReprint` (L479306) | reprint | POS bill tables | SELECT | bill reprint |
| Display Table | `RsTouchDisplayTB` (L479314) | floor view | table state | SELECT | table map `[VERIFIED-UI]` |

## 06_House_Keeping / 09_Banquet (sample)

| Screen | FE | BE | DB | SQL (line) | Out |
|---|---|---|---|---|---|
| House Keeping Screen | `HHouseKeeping` (L479076) | status view/update | `RoomMast.roomStat` | SELECT/UPDATE room status | HK board |
| Complaint Clearance | `FrmComplaintClearing` (L478693) | clear | complaint tables | update | complaint list |
| Lost / Found Entry | `FrmLostFound` (L478699) | entry | lost/found tables | insert | entry list |
| Banquet Booking | `HallBooking` (L479756) | booking save | hall booking tables | insert | booking chart |
| Banquet Billing | `HallBill` (L479778) | bill save | hall bill tables | insert | bill print |
| Banquet Settlement / Advance | `HallAdvanceDepDialog` (L479785/479816) | advance | advance tables | insert | receipt |
| Venue Availability / Booking Chart | `BanqAvailability` (L479792/479795) | availability | hall/booking | SELECT (start-date check L418160) | chart |
| Catalog Selection | `CateringBooking` (L479764) | catering | menu catalog | SELECT | selection |
| Chef Pre-Costing | `HallChefPreCosting` (L479771) | costing | cost tables | insert/update | costing sheet |
| Banquet reports | `rHallRepView` (L479827+) | report viewer | hall tables | report SELECT | registers |

## 11_HR_Payroll (from `11_HR_Payroll/logic/vb6_logic.md`)

| Screen | FE | BE | DB | SQL/line | Out |
|---|---|---|---|---|---|
| Attendance | `prAttend`/`PrAttend1` via `PayOpr_Click` idx 0/1 (L4313) | attendance save | attendance tables | insert | attendance |
| Loan/Advance | `PrLoan` (idx 2) | loan save | loan tables | insert | loan ledger |
| Over Time | `prOverTime` (idx 3) | OT save | OT tables | insert | OT register |
| Leave Encashment | `PrLeavench` (idx 4) | encash | leave tables | insert | encashment |
| Salary Creation | `prSalCreate` (idx 5) | payroll run | salary tables | bulk insert | pay register |
| Pay Slip / registers | `rRepPayRoll`, `PayrollReg`… via `PayRep_Click` (L4425) | report viewer | payroll tables | report SELECT | payslips |
| Masters | `PrDesigMast`, `PrCategoryMast`, `prHoliday`, `PrEmployee` via `PRM_Click` (L1123) | master save | HR masters | insert/update | master lists |

## 12_EPABX / 13_Messaging / 14_Members / 15_Sales / 16_Mall

| Screen | FE | BE | DB | SQL (line) | Out |
|---|---|---|---|---|---|
| EPABX Call Codes browse/save | `TelCallCode` form | save = delete-then-insert | `TelCallCode`, `TelCallType` | `Select TCC.*, TCT.CallType FROM TelCallCode …` L219461; `Delete From TelCallCode Where STDCode=…` L219330 | browse grid |
| EPABX call report | `rRepTelPreview` (L478411) | report viewer | `TelCall*` | report SELECT | call report |
| SMS Inbox/Outbox | `Inbox`/`Outbox` via `mnuMSG_Click` L7875 | dispatch loop | `DBSendSMS` | `Select * from DBSENDSMS Where ISNULL(SENDTF,'')<>'TRUE'` L7832 | inbox grid |
| SMS send queue | `SMSGEN_Click` L1335 / `SMSSEND_Click` L1363 | enqueue/send | `DBSendSMS` (18810 rows) | `Select IsNull(Max(VNo),0)+1 From DBSendSMS With (NoLock) Where VType=…` L626947 (dup **without** NoLock L629716) | SMS register |
| Guest message | `FrmHouGuestMsg` (L478325) | message save | `GuestMessage` (0 rows) | `Delete From GuestMessage Where DocID=…` L87786; enquiry join L87877 | message grid |
| Member visit entry | member ops (dispatch L480484–480589) | visit save | `MemVisitEntry` (0) | `Insert into MemVisitEntry(…)` L859311 | visit log |
| Member billing | member billing ops | bill save | `MemBill`/`MemBill1`/`MemBill2` (0/0/0) | inserts L861812/L861855/L861897 | member bill |
| Member Category/Member Master | `MemCatMast` (L480489–480490) | master save | member masters | insert/update | master list |
| Facility Master (Mall) | `memFacilityMast` + `FrmFacilityMast` (L480501+480504) | master save | `FacilityMast` | next-code A L932867 / B L932876; insert L932924; **delete L932516** | facility list |
| Mall facility bill | Mall ops (L480784–480820) | bill save | `FacilityBill1/2` (0 rows), `SunTranFacility` | insert + location fix-up L10924; totals L670777–670790 | bill/register |
| SMS setup screens | `FrmSmsCenterSettings`/`FrmSMSEnviro`/`FrmSMSMultiType` (forms) | config save | `SMSEnviro` (1 row — value never dumped) | config SQL `[INFERRED]` | setup UI |

## Gaps / NOT YET IDENTIFIED (spec §11 honesty)

| Item | Status |
|---|---|
| Reverse Night Audit UPDATE/DELETE | SQL NOT YET IDENTIFIED — trace `frmReNightAudit` (test DB only) |
| GSTR/Tally report queries | inside `.rpt` binaries — `17_Reports/REPORTS_DEEP_CATALOG.md` |
| `FrmUploadProcess` body | SQL NOT YET IDENTIFIED |
| Tourism Forms outputs | `.rpt` wrappers |
| Display Rack query | SQL NOT YET IDENTIFIED (capture + tracking pending) |
| Travel Agency Posting | builder-only row, form path not traced |
| Stored procedures / functions / triggers | 3 utility SPs exist (`GetFieldNameAs`, `GetFieldNameAsStr`, `Proc_WebService`) but **0 app references**; 0 functions, 0 triggers, 0 FKs (`[VERIFIED-SQL]`) |
| No Show / Refund screens (spec §14 rows) | no dedicated caption found → `[UNKNOWN]`/`[INFERRED]` (05 notes) |

## Maintenance

When a new screen is traced, add its row to the module's table here **and** the module
`screens/screens.md`; keep line refs in `EXTRAS.text` numbering (add +0 vs `HMS.bas` header).
