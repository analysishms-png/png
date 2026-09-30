# 05_Front_Office — VB6 Logic Map

All line refs: `EXTRAS.text` (identical in ORIG/COPY), `[VERIFIED-VB6]`.

## 1. Entry points

| Handler / site | Lines | Role |
|---|---|---|
| MDI caption dispatcher, chain A | 477776–478348 | `If (var_188 = "…") Then New <form>` |
| MDI caption dispatcher, chain B | 480210–480459 | `Loop Until (var_188 = "…")` + `New <form>` |
| FO instance block | 5230–5304, 6131, 5256, 5288 | preload `fdWalkInEntry`,`InHouseGuestFolio`,`FdReSetlement`,`FdRevCheckOut`,`FdLookUpRoomNo`,`FdRoomDisplay` |
| Check-in engine | 942575 / 942284 / 948057 / 948591 / 949612 | GuestFolio+RoomOcc inserts, `fdCheckIn` body |
| Reservation insert | 91992 (`addr 197998F`) | `Insert Into Booking …` |
| Reservation form | 165594 / 165605 | `New RrRoomReservation`, `fdWalkInEntry` from reservation flow |
| Stay ops | 146328 / 146334 / 149517 / 149589 / 149667 / 149680 | amend, discount, walk-in update, check-out, room-change msg |
| Merge | 437902 | `UPDATE GuestFolio SET mFolioNoDocId=…` |

## 2. Form inventory (instantiation counts)

| Form | Count | First lines | Purpose |
|---|---|---|---|
| `fdWalkInEntry` | 7 | 5230, 165605, 477786, 478237, 478259, 948057 | walk-in check-in (also "last guest" mode) |
| `fdPaymentCharge` | 8 | 131442, 131747, 161786, 278849, 284450, 478289 | post charges/payments |
| `fdDisplayFolio` | 4 | 131457, 153955, 201549, 478295 | folio view (+`fdDisplayFolioSumm` 131608) |
| `fdCheckIn` | 3 | 478243, 948591, 949612 | reservation-based check-in |
| `InHouseGuestFolio` | 3 | 5238, 478277, 480384 | in-house lookup / Room Status view |
| `FdRevCheckOut` | 3 | 5288, 477792, 480396 | reverse check-out |
| `fdAcPostChrg` | 3 | 106, 480260, 480420 | A/C charge posting (NA Process target) |
| `fdPostChrg` | 2 | 77, 480211 | charges posting (NA Charges Posting target) |
| `fdNDAcPostChrg` | 2 | 114, 477245 | night-dispatch A/C posting |
| `FdCheckOut` | 2 | 131593, 478343 | check-out |
| `fdRoomChange` | 2 | 131642, 478301 | room change |
| `fdAmendEntry` | 2 | 131656, 478307 | amend stay |
| `FdReSetlement` | 2 | 5304, 477804 | bill re-settlement (`ParentForm="Check Out"`) |
| `FdGrpdetCheckOut` | 2 | 131555/131557 | group check-out |
| `FdLookUpRoomNo` | 2 | 5256, 478712 | room look-up by no |
| `RrRoomReservation` | 1 | 165594 | reservation entry |
| `HWIHistory` | 1 | 478253 | walk-in history check-in |
| `FrmMergeCharge` / `FrmRevMergeCharge` | 1 ea | 477798 / 477811 | merge / reverse merge |
| `FrmExpense` | 1 | 478313 | expense entry |
| `FrmGrcBlank` | 1 | 478319 | blank GRC |
| `FrmHouGuestMsg` | 1 | 478325 | in-house guest message |
| `FrmGuestWakeUp` | 1 | 478331 | wake-up calls (shared EPABX) |
| `FrmForExRec` | 1 | 478337 | forex receive |
| `frmFomB` | 1 | 478391 | bill reprint host |
| `FdRoomDisplay` | 2 | 6131, 477729 | room display / rack |
| `FdLookUpRoom` | 1 | 478266 | room look-up |
| `fdRoomOcc` | 1 | 666062 | room-occ utility |
| `fdPrintScreen` | 1 | 131495 | print helper |

## 3. Parameterised instances (behaviour switches)

- `fdWalkInEntry.FrmOpenType = "Last Guest"` (L478261) → duplicate-last-checkin mode.
- `FdReSetlement.ParentForm = "Check Out"` (L477805) → settlement context.
- `InHouseGuestFolio.PGuestName / .PRoomNo` (L478278–478279, 480386–480387) → pre-filtered lookup.
- `Guest BirthDates/Anniversary` → `frmWelcome` (L478231) — welcome screen repurposed for CRM dates.

## 4. Dead arms / defects (dispatch-level)

| Caption | Lines | State |
|---|---|---|
| Advance Deposit | 477776–477784 | caption + goto only → **no form** |
| Check In Group With Reservation | 478248–478251 | **no form** |
| Change Guest Information | 478284–478287 | **no form** |
| WalkIn CheckIn | 477785 + 478236 | **duplicate** in both chains |
| Reverse Check Out | 477791 + 480396 | duplicate (`Reverse check-out` caption differs in case) |

## 5. Transaction discipline

- Check-in: two sequential `Insert` calls in the same ADO transaction
  (header `GuestFolio` @942575 then rows `RoomOcc` @942284) `[VERIFIED-VB6]`.
- Every statement appends `U_Name, U_EntDt, U_AE, LogSite_Code, Site_Code`.
- `DocId` serial: `Voucher_Prefix`/`LASTVOU` — no `NoLock` observed on FO serial reads
  (contrast: POS SMS `Max(VNo)+1` @626947 uses NoLock) `[INFERRED]`.
- Night Audit wraps the date-roll in `BeginTrans/CommitTrans/RollbackTrans`
  (`NIGHT_AUDIT_FLOW.md`, module 10) — FO itself relies on per-form ADO transactions.

## 6. Shared code with other modules

- `FrmGuestWakeUp` ↔ 12_EPABX wake-up.
- `HHouseKeeping` (builder L201) ↔ 06_House_Keeping.
- `rFomRepView` report viewer ↔ 17_Reports (also used by 10_Night_Audit).
- `fdAcPostChrg`/`fdNDAcPostChrg` ↔ 10_Night_Audit `Account Posting`.
