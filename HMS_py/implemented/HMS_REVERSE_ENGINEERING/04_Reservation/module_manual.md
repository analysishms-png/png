# MODULE NAME — 04_Reservation (Reservation)

Evidence tags used throughout: `[VERIFIED-VB6]`, `[VERIFIED-SQL]`, `[VERIFIED-UI]`,
`[VERIFIED-CONFIG]`, `[INFERRED]`, `[UNKNOWN]`.
Line citations without a path refer to `HMS_REVERSE_ENGINEERING\EXTRAS.text`.
`menu_tree_raw.txt` = `HMS_REVERSE_ENGINEERING\19_VB6_Logic\menu_tree_raw.txt`.

---

## 1. Purpose

Create, amend, cancel, restore and delete room reservations; hold advance deposits; print
confirmation / cancellation letters and registration cards; publish reservation status,
arrival and advance-receipt reports; and publish occupancy forecasts.

Covers menu module **hex `0xD` = 13**, 25 registered menu items, group code `Reserv`.
`[VERIFIED-VB6]`

Primary data objects: `Booking` (header) + `GrpBookingDetails` (per-room lines) +
`BookingPlanDetails` (per-day plan/charge lines) + `BookingMore` (extra guest names) +
`BookingCancelDetails` (cancel audit) + `PayCharge` (advance posting) +
`RoomBlockOut` (read-only availability blocks owned by House Keeping).
`[VERIFIED-SQL]`

---

## 2. Menu Structure

Source: `menu_tree_raw.txt` **L169–L193** `[VERIFIED-VB6]`.

```
D|4||Reservation                                   (L169, module header)
├─ Reservation Operations  (D|3, L170)
│  ├─ Reservation/Cancellation            L171
│  ├─ Look Up Room types                  L172
│  ├─ Look Up Rooms                       L173
│  ├─ Reservation with History            L174
│  ├─ Advance Deposit                     L175
│  ├─ Confirmation Letters                L176
│  ├─ Cancellation Letters                L177
│  ├─ Registration Card                   L178
│  └─ Reservation Status Screen           L179
├─ Reservation Status Report  (D|3, L180)
│  ├─ Reservation Status                  L181
│  ├─ Reservation Status Arrival          L182
│  ├─ Reservation Status Arrival  (dup)   L183
│  └─ Arrival List                        L184
├─ Advance Recd. Report  (D|3, L185)
│  ├─ Advance Recd.                       L186
│  ├─ Advance Recd. Arrival               L187
│  └─ Advance Recd. Arrival  (dup)        L188
└─ M.I.S.  (D|3, L189)
   ├─ M.I.S.                              L190
   ├─ 23 Day Room Availability Forecast   L191
   ├─ 23 Day Room Type Availability Forecast L192
   └─ Package Forecast                    L193
```

Registration calls (EXTRAS.text) `[VERIFIED-VB6]`:
module `("Reservation", &HD, 4, …, "Reserv")` **L476207**; group **L476209**;
items **L476211, L476213, L476215, L476217, L476219, L476221, L476223, L476225, L476227**;
status group **L476229**, items **L476231/476233/476236/476238**;
advance group **L476240**, items **L476242/476244/476247**;
M.I.S. group **L476249**, items **L476252/476254/476256/476258**.

Menu storage: `MenuHelp` (9212 rows) + `UserModule` (450 rows) `[VERIFIED-SQL]`.
Menu code packing: `Code = Opt1*1000000 + Opt2*10000 + Opt3*100 + Opt4` **L475793–L475801**
`[VERIFIED-VB6]`.
Menu rebuild parses `MDIForm1.frm` for `Begin VB.Menu` lines and rewrites `menuHelp`,
`menuHelp1`, `User_Module`, `User1` for `UserName='SA'` inside a transaction
(**L6241–L6247, L6255**) `[VERIFIED-VB6]`.

---

## 3. Screens

Full table with dispatch lines, object ranges and screenshot cross-references:
`04_Reservation\screens\screens.md` `[VERIFIED-VB6]`.

| Screen | Form object | EXTRAS.text object range |
|---|---|---|
| Reservation / Cancellation | `RrRoomReservation` | L88969–L107257 |
| Advance Deposit (dialog) | `frmAdvanceDepDialog` | L112652–L116647 |
| Advance Deposit (secondary) | `rsAdvanceDepDialog` | L193185–L197044 |
| Advance Deposit (read/reprint) | `rrsAdvanceDepDialog` | L269981–L273688 |
| Look Up Rooms | `resRoomNo` | L136352–L137751 |
| Look Up Room types | `resRoomType` | L137752–L139788 |
| Look Up Guest | `RrLookUpGuest` | L145611–L145990 |
| Group maintenance | `resGroup` | L177653–L179641 |
| Reservation Status Screen | `FrmReservationStatus` | L586572–L587255 |
| Report viewer (status/advance) | `rFomRepView` | L661020–L724969 |
| Report viewer (letters/cards) | `rRepReserv` | L165804–L177653 |
| Room picker helper | `FdLookUpRoom` | L192539–L193184 |
| Room-no picker helper | `FdLookUpRoomNo` | L201207–L202382 |

---

## 4. Masters

No master is **owned** by this module. It reads (and joins on) these masters:

| Master | Table | Evidence |
|---|---|---|
| Room / room type / category | `RoomMast` (24 cols, PK `Type,Code,RestCode,LogSite_Code`), `RoomCat` (21 cols) | `[VERIFIED-SQL]` |
| Guest profile | `GuestProf` (7804 rows) | `[VERIFIED-SQL]` |
| Plan / package | `Plan1`, `PlanMast` | `[VERIFIED-SQL]` |
| Rate list, season, room discount | `RateList`, `SeasonMast`, `RoomDiscount` | `[VERIFIED-SQL]` |
| Company / travel / source / market | `Groupprof`, `Busssource`, `Marketseg`, `Subgroup`, `City`, `State`, `Country` | `[VERIFIED-SQL]` |
| Tax structure | `TaxStru`, `TaxStru2` | `[VERIFIED-SQL]` |
| Fixed charge, voucher prefix | `FixedCharge`, `Voucher_Prefix` | `[VERIFIED-SQL]` |
| Site / enviro / SMS | `Site`, `Enviro` (222 cols), `SMSEnviro`, `FAEnviro`, `MemEnviro` | `[VERIFIED-SQL]` |
| Colour legend | `DispColor` | `[VERIFIED-SQL]` |

Referenced by name in `04_Reservation\sql\queries.sql` citations `[VERIFIED-SQL]`.

---

## 5. Transactions

| Transaction | Direction | Tables written | Evidence |
|---|---|---|---|
| Save / new reservation | INSERT | `Booking`, `BookingMore` (≤6), `GrpBookingDetails`, `BookingPlanDetails` | L91992, L92013…L92097, L100457, L100546 `[VERIFIED-VB6]` |
| Amend reservation | UPDATE | `Booking`, `GrpBookingDetails`, `BookingPlanDetails` | L91993/L91995 region `[VERIFIED-VB6]` |
| Cancel (soft) | UPDATE + INSERT | `Booking.Cancel='Y'`, `GrpBookingDetails.Cancel='Y'`, `BookingCancelDetails`, `PayCharge`, `SMSEnviro` | L89900, L89908, L90054, L89963, L90259 `[VERIFIED-VB6]` |
| Restore | UPDATE + DELETE | `Booking.Cancel='N'`, `GrpBookingDetails.Cancel='N'`, `DELETE BookingCancelDetails` | L90539, L90543, L90548 `[VERIFIED-VB6]` |
| Hard delete (cascade) | DELETE | `PayCharge`/`GuestFolio` guarded, then `Booking`, `GrpBookingDetails`, `BookingPlanDetails`, `BookingMore`, `BookingCancelDetails` | L91404, L91415, L91430–L91434 `[VERIFIED-VB6]` |
| Advance deposit | INSERT | `PayCharge` + `Booking.DepositeReq` | `04_Reservation\sql\queries.sql` `[VERIFIED-SQL]` |
| Voucher serial allocation | UPDATE | `Voucher_Prefix.Start_Srl_No` | L90042 `[VERIFIED-VB6]` |
| Availability read | SELECT | `RoomBlockOut` (Type `O` overlap) | L97971 `[VERIFIED-VB6]` |

**No transaction wrapper was observed** around the 4-table save. `[UNKNOWN]`

---

## 6. Operations

| Op | Trigger | Notes |
|---|---|---|
| Add | `Reservation/Cancellation` → New | fills header + room grid; voucher from `Voucher_Prefix` |
| Edit | same screen, existing `DocId` | re-writes plan lines per day |
| Delete | same screen | cascade delete, guarded by `PayCharge`/`GuestFolio` counts (L91404/L91415) `[VERIFIED-VB6]` |
| Cancel | same screen | soft flag + audit row + advance refund + SMS `[VERIFIED-VB6]` |
| Restore | `Reservation with History` | reverses the soft cancel `[VERIFIED-VB6]` |
| Look up | `Look Up Rooms` / `Look Up Room types` / `Look Up Guest` | read-only pickers |
| Group handling | `Add/Edit/Delete Group With Reservation` → `resGroup` | dispatch L478879 `[VERIFIED-VB6]` |
| Advance | `Advance Deposit` → `MemVar_1F8254C` (L477776); route `OpenType=1/OpenMode=2/AdvType="ADRES"` (L478903–L478904) `[VERIFIED-VB6]` | |

`BookingMore` supplies up to **6** additional-name slots (`Sno` 1..6). `[VERIFIED-SQL]`

---

## 7. Reports

Full mapping in `04_Reservation\reports\reports.md`. Summary:

| Menu | Viewer | `GRepFormName` | Dispatch |
|---|---|---|---|
| Confirmation Letters | `rRepReserv` | `ConfirmLetter` | L478913–L478914 |
| Cancellation Letters | `rRepReserv` | `CancellLetter` | L478920–L478921 |
| Registration Card | `rRepReserv` | `RegistrationCard` | L478927–L478928 |
| Reservation Status | `rFomRepView` | `ReservationStatus` | L478934–L478935 |
| Reservation Status Arrival | `rFomRepView` | `ReservStatusArrival` | L478941–L478942 |
| Arrival List | `rFomRepView` | `MovementList` | L478968–L478969 |
| Advance Recd. | `rFomRepView` | `ResvAdvRecd` | L478996–L478997 |
| Advance Recd. Arrival | `rFomRepView` | `ResvAdvRecdArr` | L479003–L479004 |
| 7-730 Days Forecast (stored as `M.I.S.`) | `rFomRepView` | `DaysForecastRep` | L479017–L479018 |
| Package Forecast | `rFomRepView` | `PackageForecast` | L479038–L479039 |

Engine: Crystal Reports. Viewer opens `ReportPath & "\" & <name> & ".ttx"` then
`… & ".RPT"` (**L663351–L663352**, **L166066–L166067**, **L120779–L120781**).
`ReportPath` = `Analysis.ini` key `2` = `<HMS2526>\Reports` (566 files: 371 `.rpt`, 194 `.ttx`).
`[VERIFIED-VB6]` + `[VERIFIED-CONFIG]`

`.ttx` stubs present for `ReservStatus.ttx`, `AdvanceRecd.ttx`, `MovementList.ttx`,
`RegistrCard.ttx`, `CancellLetter.ttx`, `Reservation.ttx`, `RoomReservationDetail.ttx`,
`Day23RoomAvail.ttx`, `ADVANCE RECIEPT RESERVATION.ttx`. `[VERIFIED-CONFIG]`

---

## 8. Permissions

Two independent mechanisms:

**(a) Menu visibility — `menuHelp` / `menuHelp1` / `User_Module` / `User1` / `User2`**

Build query (**L3636**) `[VERIFIED-VB6]`:
```sql
SELECT * FROM MENUHELP
 WHERE Flag <> 'V'
   AND USERNAME   = '<logged in user>'
   AND CompCode   = '<company>'
   AND [Option]  <> '-'
   AND ShowInList = 'Y'
 ORDER BY OPT1, OPT2, OPT3, OPT4
```
Registration writes `UserName='SA'` and `ShowInList='N'` (**L475808–L475812**) `[VERIFIED-VB6]`;
rows are copied to other companies preserving `ShowInList`/`Flag` (**L6725–L6729**).
`Flag` values observed: `E` = entry form, `R` = report, `N`, `V` = module/group row,
`D` = disposable, `-` = separator (**L3651, L6578, L6582**). `[VERIFIED-VB6]`

Module gating at registration, by literal presence in `MemVar_1F81228`
(`InStr(2, …, "<char>", 0)`):
Reservation = **`"L"`** (L476205), House Keeping = **`"I"`** (L476390),
Material Mgmt = **`"J"`** (L476426), Material Setup hex `&HC` = **`"J"`** (L476079).
`[VERIFIED-VB6]`

**(b) Action permissions — `UserPermission` (76 rows)**

Columns include `CancelReservation`, `CancelGuestBill`, `ChangeRoomDtl`,
`DeleteGuestCharges`, `ChangeGuestCharges`, `ChangeGuestProfile`, `FOMDiscountAllowUpto`,
`RefundCashCardAmt`, plus `CompCode`/`UserName`/`LogSite_Code`/`Site_Code`. `[VERIFIED-SQL]`

**`CancelReservation` and `FOMDiscountAllowUpto` occur exactly once in the whole decompile —
their DDL definition only (L264821, L264820) — and are never SELECTed.** `[VERIFIED-VB6]`
By contrast `ChangeRoomDtl` (8 refs), `DeleteGuestCharges` (12), `ChangeGuestCharges` (10),
`CancelGuestBill` (8) are actively read — but from Front Office/POS objects, not Reservation.
`[VERIFIED-VB6]`

→ **Cancelling a reservation is not permission-gated.** `[VERIFIED-VB6]`

Login/user tables: `UserMast` (70 rows; `USER_NAME`, `PASSWD`, `GodCode`, `FloorCode`,
`AllowDtChng`, `ActiveYN`). `[VERIFIED-SQL]` — no credentials are recorded anywhere in this
document set.

---

## 9. Business Rules

| # | Rule | Evidence |
|---|---|---|
| BR-1 | Guest already checked-in ⇒ cannot cancel: `MsgBox "Sorry! Guest Already Checked In."` | L90309, L91503, L97102 `[VERIFIED-VB6]` |
| BR-2 | Invalid room rate ⇒ blocked | L90974, L91010, L91032 `[VERIFIED-VB6]` |
| BR-3 | Invalid meal charges ⇒ blocked | L91019 `[VERIFIED-VB6]` |
| BR-4 | Invalid advance due date ⇒ blocked | L91830 `[VERIFIED-VB6]` |
| BR-5 | Arrival date outside selected report range ⇒ `Arr. Date Not Between (Date From To Date).` | L104690 `[VERIFIED-VB6]` |
| BR-6 | Departure date outside range ⇒ `Dep. Date Not Between …` | L104747 `[VERIFIED-VB6]` |
| BR-7 | Header validation block: `InValid Date!`, `InValid Days!`, `Empty Rate table`, `Plan is Not Defined!`, `PlanPkg is Not Defined!`, `No Of Rooms Should Not be Zero.` | L103221–L105743 `[VERIFIED-VB6]` |
| BR-8 | Cancellation policy text “Cancellations must be made at least 72 hours in advance.” | L100210 `[VERIFIED-VB6]` — **emitted with `Print #`, never `MsgBox`, and never compared against `ArrDate`** ⇒ informational only `[VERIFIED-VB6]` |
| BR-9 | Availability excludes rooms with `RoomBlockOut.Type='O'` overlapping the stay | L97971 `[VERIFIED-VB6]` |
| BR-10 | Only `Verified='N'` (or `Verified IS NULL`) bookings are offered as pending | L90592 / L91603 `[VERIFIED-VB6]` — two different predicates, see NK-5 |
| BR-11 | Cancel always stamps `CancelUName`; delete guarded by `PayCharge`/`GuestFolio` presence | L91404, L91415 `[VERIFIED-VB6]` |
| BR-12 | Voucher serial comes from `Voucher_Prefix.Start_Srl_No` and is incremented | L90042 `[VERIFIED-VB6]` |
| BR-13 | Cancellation posts an advance refund into `PayCharge` and triggers an `SMSEnviro` template | L89963, L90259 `[VERIFIED-VB6]` |
| BR-14 | Multi-site rule: every statement filters `Site_Code`/`LogSite_Code` | `04_Reservation\sql\queries.sql` `[VERIFIED-SQL]` |

---

## 10. VB6 Logic

Detailed in `04_Reservation\logic\vb6_logic.md`. Core:

* **Registrar** `Proc_165_0_14C1708` **L475664–L475816** — idempotency guard on existing
  `UserModule` row (L475695, L475701); computes `Max(optN)` ladder (L475721–L475775);
  packs `Code` (L475793–L475801); inserts `UserModule` (L475803–L475806) and
  `MenuHelp` (L475808–L475812). **`arg_C` (the literal caption) is what gets stored;
  `var_124` is never read by this procedure.** `[VERIFIED-VB6]`
* **Dispatcher** `Proc_165_2_1E3A588(arg_C, arg_10)` **L476999–L480832**, key from
  `Proc_165_3_EEA710` **L480834**. Writes a debug trace to `C:\moduleFILE.TXT`
  For Append (L477034). `[VERIFIED-VB6]`
* **Registration block** `Proc_165_1_1EF3904` **L475818–L476997**.
* **Save cascade** — see §5.
* **Cancel/restore/delete** — see §5.
* **Report wiring** — see §7.
* No `Param`-bound SQL anywhere in the object. `[VERIFIED-VB6]`

---

## 11. SQL Logic

All statements extracted line-by-line in `04_Reservation\sql\queries.sql`;
interpretation and column inventory in `04_Reservation\sql\sql_notes.md`.

Shape of every statement:
* built by string concatenation, no `?` placeholders, no `Command` parameters `[VERIFIED-VB6]`
* always qualified with `Site_Code` / `LogSite_Code` `[VERIFIED-SQL]`
* `DELETE` cascades performed by the client because **there are zero declared foreign keys**
  (`foreign_keys.txt` = 0 bytes) `[VERIFIED-SQL]`
* views consumed: `ViewBooking` (definition L28 of `view_proc_definitions.txt`),
  `RoomOccDet` (L25), `ViewSubgroup` (L54) `[VERIFIED-SQL]`

---

## 12. Tables

| Table | Rows | PK | Role |
|---|---|---|---|
| `Booking` | 25 | `DocId,LogSite_Code` | reservation header |
| `GrpBookingDetails` | 56 | `BookingDocid,Sno` | one row per room |
| `BookingPlanDetails` | 0 | `BookingDocId,Sno,Sno1,Chrgcode` | per-day plan/charge |
| `BookingMore` | 0 | `DocId,Sno` | up to 6 extra names |
| `BookingCancelDetails` | 149 | — | cancel audit |
| `BookingLog` | 403 | — | `[UNKNOWN]` producer |
| `BookingInquiry` | 0 | — | enquiry staging |
| `BookingDetail` | 0 | — | detail staging |
| `PayCharge` | — | `DocId,SNo` | advance / refunds |
| `GuestFolio` | 11043 | `DocId` | posted folios (delete guard) |
| `GuestProf` | 7804 | `Code` | guest master |
| `RoomOcc` / `RoomOccDet` | — | `DocId,SNo` | occupancy (view) |
| `RoomMast` | — | `Type,Code,RestCode,LogSite_Code` | rooms |
| `RoomBlockOut` | 1 | `RoomCode,FromDate,VTime` | OOO blocks (written by 06) |
| `Voucher_Prefix` | — | — | serial allocation |
| `MenuHelp` | 9212 | — | menu registry |
| `UserModule` | 450 | — | registered menu items |

All row counts `[VERIFIED-SQL tables_rowcounts.txt]`; all PKs `[VERIFIED-SQL indexes_pks.txt]`.

---

## 13. Fields

`Booking` — **62 columns** `[VERIFIED-SQL columns_dictionary.txt]`:
`DocId, Vtype, BookNo, Site_Code, Vprefix, VDate, GroupCode, ArrDate, ArrTime, DepDate,
DepTime, NoDays, RoomCat, RoomType, RoomNo, Adult, Child, NoofRooms, RateCode, RoomRate,
Remarks, Authorization, Company, GuestProf, TravelAgency, BussSource, MarketSeg, ArrFrom,
Destination, BookedBy, ResMode, TravelMode, SplitFolio, DepositeReq, Guarantee, CardNo,
ExpDate, CancelDate, Cancel, GuestName, U_Name, U_EntDt, U_AE, OccRoom, PackageCode,
LogSite_Code, MobNo, Email, FaxNo, OtherCont, RRTaxInc, RDisc, RSDisc, AdvDueDate,
RRServiceChrg, ResStatus, MyRectNo, RefCode, BookStatus, Verified, CancelUName, RefBookNo`

`GrpBookingDetails` — **27 columns**:
`BookingDocid, Sno, RoomDet, Adults, Childs, Tarrif, IncTax, LogSite_Code, U_EntDt, U_AE,
RoomCat, Plan_Package, Remarks, ServiceChrg, RoomNo, RateCode, ArrDate, ArrTime, NoDays,
DepDate, Cancel, CancelDate, Site_Code, U_Name, DepTime, RoomTaxStru, CancelUName`

`BookingPlanDetails` — **39 columns**: `BookingDocId, Sno, Sno1, Revcode, Chrgcode, TaxInc,
TaxStru, PrintOption, PostingMethod, ChargeType, FlatRate, Adult, Child, ExtraAdult,
ExtraChild, NoOfDays, PlanPer, App_Date, Site_Code, U_Name, U_EntDt, U_AE, Amount, PlanCode,
PlanPkgMode, RPackageAmt, NetPackageAmount, LogSite_Code, PlanDiscPer, PlanDiscAmt,
PlanDiscAppOn, IncInRoomRate, RoomRate, NetRoomRate, Comment1, Comment2, DiscAmt, NetAmt,
FixRate`

`BookingMore` — **8 columns**: `DocId, Sno, Name, Site_Code, U_Name, U_EntDt, U_AE,
LogSite_Code`

`BookingCancelDetails` — **15 columns**: `DocId, VNo, SNo, VType, VPrefix, VDate, Site_Code,
BookingDocId, Advance, CancelAmt, CancellationMode, LogSite_Code, U_Name, U_EntDT, U_AE`

Notable: `Verified varchar(1) DEFAULT ''` `[VERIFIED-SQL]`; `Cancel varchar(1)`;
`Site_Code`/`LogSite_Code` present on every table.

---

## 14. Workflow

Mermaid diagram: `04_Reservation\flowcharts\workflow.mmd`.

```
menu click → MenuHelp.Option lookup → dispatch chain
  → entry form (RrRoomReservation) ── save cascade
       → Booking → BookingMore → GrpBookingDetails → BookingPlanDetails
       → Voucher_Prefix serial bump
  → cancel → Booking/GrpBookingDetails flag + BookingCancelDetails + PayCharge + SMS
  → restore → reverse flags + delete audit row
  → delete → guards → 5-table cascade
  → report  → rFomRepView/rRepReserv → ReportPath\GRepFormName.ttx + .RPT
availability ← RoomBlockOut (written by 06_House_Keeping)
```

---

## 15. Screenshots

12 PNGs in `screenshots\04_Reservation\` `[VERIFIED-CONFIG]`:

`03-Reservation_MenuTab.png`, `B032_Menu_*.png`, `B062_ReservationCancellation_*.png`,
`B063_ResWithHistory_*.png`, `B064_LookUpRooms_*.png`, `B065_ResStatusScreen_*.png`,
`C2_Reservation__Operations__Look_Up_Roo.png`, `C2_Reservation__Operations__Reservation.png`,
`C3_02_Reservation__Operations__Look_Up.png`, `C3_03_Reservation__Operations__Look_Up.png`,
`C3_04_Reservation__Operations__Reserva.png`, `C3_S1_Reservation__Operations__Reserva.png`

`04_Reservation\screenshots\README.md` is a pointer only — images are never duplicated.

Not captured `[UNKNOWN]`: Look Up Room types, Advance Deposit, all 6 letter/card/status reports,
all 3 advance-receipt reports, all M.I.S. forecasts.

---

## 16. Test Cases

| ID | Scenario | Steps | Expected | Evidence for expectation |
|---|---|---|---|---|
| TC-R-01 | Create reservation, happy path | New → fill header + ≥1 room → Save | 4 rows written; `Booking` count +1; voucher serial incremented | L91992/L92013/L100457/L100546/L90042 `[VERIFIED-VB6]` |
| TC-R-02 | Zero rooms | New → leave room grid empty → Save | Blocked with `No Of Rooms Should Not be Zero.` | L103221–L105743 `[VERIFIED-VB6]` |
| TC-R-03 | Empty rate table | New → no rate → Save | Blocked `Empty Rate table` | same range `[VERIFIED-VB6]` |
| TC-R-04 | Cancel a checked-in booking | History → cancel a booking whose `RoomOcc` is live | `MsgBox "Sorry! Guest Already Checked In."`; no `Cancel='Y'` | L90309 `[VERIFIED-VB6]` |
| TC-R-05 | Cancel a pending booking | History → cancel | `Booking.Cancel='Y'`, `GrpBookingDetails.Cancel='Y'`, new `BookingCancelDetails` row, `PayCharge` refund, SMS row | L89900/L89908/L90054/L89963/L90259 `[VERIFIED-VB6]` |
| TC-R-06 | Restore | History → restore | `Cancel='N'` both tables; audit row deleted | L90539/L90543/L90548 `[VERIFIED-VB6]` |
| TC-R-07 | Hard delete with posted folio | delete a `DocId` that has `GuestFolio` rows | Delete refused | L91415 `[VERIFIED-VB6]` |
| TC-R-08 | Blocked-room availability | pick a room with `RoomBlockOut` type `O` overlapping stay | room not offered | L97971 `[VERIFIED-VB6]` |
| TC-R-09 | Bad date range report | Reservation Status with `ArrDate` outside From/To | `Arr. Date Not Between (Date From To Date).` | L104690 `[VERIFIED-VB6]` |
| TC-R-10 | Report file resolution | run Confirmation Letters | `<HMS2526>\Reports\ConfirmLetter.rpt` opens | folder listing + L478914 `[VERIFIED-CONFIG]`+`[VERIFIED-VB6]` |
| TC-R-11 | Report missing file | run Registration Card | expected failure: `RegistrationCard.rpt` absent (only `RegistrCard.rpt`) | folder listing `[VERIFIED-CONFIG]` |
| TC-R-12 | Duplicate menu caption | open Reservation Status Report group | two identical `Reservation Status Arrival` items; no In-House item | `menu_tree_raw.txt` L182/L183 `[VERIFIED-VB6]` |
| TC-R-13 | M.I.S. first item | click `M.I.S.` leaf under `M.I.S.` group | expected: nothing happens (key mismatch `M.I.S.` vs `7-730 Days Forecast`) | L476252 vs L479016 `[VERIFIED-VB6]` |
| TC-R-14 | Permission gate | attempt to cancel as a non-`SA` user | **no permission check occurs** — cancellation proceeds | `CancelReservation` never SELECTed `[VERIFIED-VB6]` |
| TC-R-15 | Menu visibility | log in as a user whose `menuHelp.ShowInList='N'` for an item | item hidden | L3636 `[VERIFIED-VB6]` |
| TC-R-16 | 72-hour rule | cancel 10 hours before arrival | cancellation still succeeds (rule not enforced) | L100210 is `Print #`, no date comparison `[VERIFIED-VB6]` |

---

## 17. Known Issues

Full detail in `04_Reservation\notes\notes.md`.

| ID | Severity | Issue |
|---|---|---|
| NK-1 | Cosmetic | `Reservation Operations` registers leaf indices `0,2,3,4,5,6,7,8,9` — index 1 never registered (L476211→L476213) |
| NK-2 | **High** | Duplicate captions `Reservation Status Arrival` ×2 and `Advance Recd. Arrival` ×2 ⇒ `ReservStatusInHouse` (L478947) and `ResvAdvRecdInHouse` (L479009) unreachable |
| NK-3 | **High** | `M.I.S.` caption ≠ `7-730 Days Forecast` dispatch key ⇒ first M.I.S. item dead; also duplicates its own group header |
| NK-4 | **High** | `RegistrationCard`, `ReservationStatus`, `ReservStatusArrival`, `ResvAdvRecd`, `ResvAdvRecdArr` report keys have **no matching `.rpt`** in `Reports\` |
| NK-5 | Medium | Two `Verified` predicates: `Verified='N'` (L90592) vs `Isnull(Verified,'')=''` (L91603) |
| NK-6 | Medium | 72-hour cancellation policy written via `Print #` (L100210), never enforced |
| NK-7 | **Critical** | No SQL parameterisation; no observed transaction around the 4-table save; **0 declared FKs** ⇒ orphan rows possible |
| NK-8 | Low | `RoomBlockOut` has 1 row database-wide ⇒ availability block check is effectively inert |
| NK-9 | Low | `BookingPlanDetails`=0 and `BookingMore`=0 while `Booking`=25 |
| NK-10 | Low | `BookingCancelDetails`=149 vs `Booking`=25 (124 orphaned cancel audits) |
| NK-11 | Low | Trailing-space/double-space duplicate dispatch branches prove `menuHelp.[Option]` values drifted across builds |
| NK-12 | Medium | Dispatcher appends a trace to `C:\moduleFILE.TXT` on **every** menu click (L477034) |
| NK-13 | Medium | `UserPermission.CancelReservation` / `FOMDiscountAllowUpto` defined but never read ⇒ reservation cancel is ungated |

---

## 18. Migration Notes

1. **Re-key the menu.** Replace the caption-driven dispatcher with an explicit route table.
   The registrar stores the literal caption (`arg_C`) and ignores the intended name
   (`var_124`) — this single bug produces NK-2 and NK-3. In the port, store a stable
   `route_id` and never derive it from display text. `[VERIFIED-VB6]`
2. **Fix the report key names** before porting, or map them explicitly:
   `RegistrationCard`→`RegistrCard`, `ReservationStatus`→`ReservStatus`,
   `ReservStatusArrival`/`ReservStatusInHouse`→`ReservStatus` variants,
   `ResvAdvRecd*`→`AdvanceRecd`. Confirm with a runtime trace first. `[INFERRED]`
3. **Introduce real FKs and a transaction.** `foreign_keys.txt` is empty; the client performs a
   5-table cascade by hand with no observed `BeginTrans`. The port must wrap
   `Booking` → `BookingMore` → `GrpBookingDetails` → `BookingPlanDetails` → `BookingCancelDetails`
   in one transaction and declare FKs. `[VERIFIED-SQL]` + `[VERIFIED-VB6]`
4. **Parameterise every statement.** All 673 extracted reservation SQL lines are concatenated.
   `[VERIFIED-SQL]`
5. **Unify the `Verified` predicate** (NK-5) — decide whether `NULL` means pending or not, and
   add a `NOT NULL`/`CHECK` constraint.
6. **Enforce or delete the 72-hour rule.** Today it is a log line. Decide the product rule,
   then implement it as a real validation with a user-visible message.
7. **Gate cancellation.** Wire `UserPermission.CancelReservation` (currently dead) or drop it.
8. **Move report file naming to config.** Reports live in `<HMS2526>\Reports` (INI key 2) with
   371 `.rpt` + 194 `.ttx`; the port should resolve report templates from a table, not from
   string concatenation of a menu caption. `[VERIFIED-CONFIG]`
9. **Retire `C:\moduleFILE.TXT`** logging (L477034). `[VERIFIED-VB6]`
10. **Data cleanup before cutover:**
    * `BookingCancelDetails` 149 vs `Booking` 25 — 124 orphans `[VERIFIED-SQL]`
    * `BookingPlanDetails`/`BookingMore` empty while code always writes them `[VERIFIED-SQL]`
    * `RoomBlockOut` single row — verify whether OOO blocking ever ran `[VERIFIED-SQL]`
    * `BookingLog` 403 rows with `[UNKNOWN]` producer — identify or drop
11. **PyQt6 port shape:** one `ReservationForm` (header + room grid + plan grid), one
    `ReservationHistoryForm`, three pickers (`rooms`, `room types`, `guest`), one dialog for
    advance deposit, and a report viewer that takes `{template, params}` instead of a caption.
    `[INFERRED]`
12. **Do not store or log passwords.** `UserMast.PASSWD` exists; the port must hash it and it
    must never appear in this documentation set. `[VERIFIED-SQL]`
