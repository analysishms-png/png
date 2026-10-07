# 04_Reservation — VB6 Logic

All line numbers refer to `HMS_REVERSE_ENGINEERING\EXTRAS.text` (decompiled VB6, 995,850 lines).
Object boundaries were derived from `'Object: <Name>'` markers in that file.

Evidence tags: `[VERIFIED-VB6]`, `[VERIFIED-SQL]`, `[INFERRED]`, `[UNKNOWN]`.

---

## 1. Menu registration engine — `Proc_165_0_14C1708` (ModuleAdd)

`Public Sub Proc_165_0_14C1708(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C)` —
EXTRAS.text **L475664–L475816**. `[VERIFIED-VB6]`

Arguments (mapped from call sites):

| Arg | Meaning | Example (L476211) |
|---|---|---|
| `arg_C` | caption / `MenuHelp.[OPTION]` | `"Reservation/Cancellation"` |
| `arg_10` | menu hex module code | `&HD` (=13, Reservation) |
| `arg_14` | node kind: 0=entry, 1=report, 2=dialog, 3=group, 4=module | `0` |
| `arg_18` | parent caption (empty = root) | `"Reservation Operations"` |
| `arg_1C` | (unused in observed calls) | `vbNullString` |
| `arg_20` | `MenuHelp.Menu_Index` (leaf order) | `0` |
| `arg_24` | outlet / permission code | `"ResOpEnt"` |
| `arg_28` | 0 = outlet-scoped lookup, else flat lookup | `1` |
| `arg_2C` | outlet code written to `OutletCode` | (same as `arg_24` in observed calls) |

Behaviour:

1. **Idempotency guard** — L475695–L475708:
   `Select * from UserModule where OutletCode='…' and [OPtion]=… and OPT1=…` → if `RecordCount > 0` the sub
   returns `0` and does nothing. `[VERIFIED-VB6]`
2. Second guard L475709–L475718: `Select Count(opt1) from UserModule Where OutletCode=… And OPT1=… And [Option]=…`
   → if `> 0`, return `0`. `[VERIFIED-VB6]`
3. Otherwise compute `OPT2/OPT3/OPT4` from `Max(optN)` aggregates (L475745, L475753, L475762, L475775) and a packed
   `Code` = `opt1*1000000 + opt2*10000 + opt3*100 + opt4` (L475793–L475801). `[VERIFIED-VB6]`
4. **Insert #1** L475803–L475806:
   `Insert Into UserModule (OPT1,OPT2,OPT3,OPT4,Code,[OPTION],PARAM_STR,flag,OutletCode) Values(…)`
   with `PARAM_STR = IIf(arg_14=0,"AEDP", IIf(arg_14=1,"***P",""))` and
   `flag = IIf(arg_14=0,"E", IIf(arg_14=1,"R", IIf(arg_14=3,"N", IIf(arg_14=4 And opt1<=&H2D,"N","V"))))`.
   `[VERIFIED-VB6]`
5. **Insert #2** L475808–L475812:
   `Insert Into MenuHelp (CompCode,UserName,OPT1,OPT2,OPT3,OPT4,Code,[OPTION],Menu_Index,PARAM_STR,Module_Name,flag,ShowInlist,OutletCode) Values(…,'SA',…)`
   → `UserName='SA'`, `ShowInlist='N'`. `[VERIFIED-VB6]`

**Key consequence:** `MenuHelp.[OPTION]` receives `arg_C` **verbatim**. The routine never reads the module-level
`var_124` that several call-sites assign immediately before the call — so caption-override attempts in the
Reservation block are inert. `[VERIFIED-VB6]` (no `var_124` reference inside L475664–L475816).

Tables written: `UserModule` (row count **450**), `MenuHelp` (row count **9212**). `[VERIFIED-SQL]`
(`18_Database\tables_rowcounts.txt`).

---

## 2. Module gating (per-user module string)

`MemVar_1F81228` holds the user's allowed-module character string.

| Module | Gate | Line |
|---|---|---|
| Reservation (hex `&HD`) | `InStr(2, MemVar_1F81228, "L", 0) <> 0` | EXTRAS.text **L476205** |
| House Keeping (hex `&HF`) | `InStr(2, MemVar_1F81228, "I", 0) <> 0` | **L476390** |
| Material Mgmt (hex `&H10`) | `InStr(2, MemVar_1F81228, "J", 0) <> 0` | **L476426** |
| Material Mgmt Setup (hex `&HC`) | `InStr(2, MemVar_1F81228, "J", 0) <> 0` | **L476079** |

`[VERIFIED-VB6]` Search starts at position 2 (first char is reserved / not tested).

---

## 3. Dispatch engine — `Proc_165_2_1E3A588(arg_C, arg_10)`

EXTRAS.text **L476999–L480832**. `[VERIFIED-VB6]`

* Menu click → `Proc_165_3_EEA710` (L480834) reads `MenuHelp.[Option]` for the clicked `Code`
  into `var_94`; the dispatch key is `var_188 = var_94`. `[VERIFIED-VB6]`
* Dispatch is a long `If var_188 = "<caption>"` chain; each branch does
  `Set var_90 = New <Form>` (or `Set var_90 = MemVar_xxxxxx`), assigns `.CAPTION = arg_10`, `Call var_90.Show`,
  then `GoTo loc_1E2A553`. `[VERIFIED-VB6]`
* Report branches additionally set `var_90.GRepFormName = "<ReportKey>"` before `.Show`.
* **Debug side-effect:** L477034 opens `C:\moduleFILE.TXT` `For Append` and writes a trace line every dispatch.
  `[VERIFIED-VB6]`

Because the key is the *stored* caption, any caption drift between registration and dispatch silently drops the
click (falls through the whole chain). This is the root cause of NK-1…NK-4 in `notes/notes.md`. `[INFERRED]`

---

## 4. Reservation / Cancellation — `RrRoomReservation` (L88969–L107257)

### 4.1 Screen-load lookups (all `[VERIFIED-VB6]`)

| Purpose | Line |
|---|---|
| Enviro flags: `Select NCUR,PlanCalc,RoomRateEditable,RoomIncTaxEditable,RoomServiceChargeEditable,PlanSelectionBasedOn,ReservationExpandOnSaveYN from enviro WHERE LOGSITE_CODE='…'` | L89344 |
| Corporate / Travel Agency parties: `Select SubCode as Code,Name From SubGroup where ActiveYN=1 and … CompanyType in ('Corporate','Travel Agency') …` | L89362 |
| Cities: `Select CITYCODE AS Code,CITYNAME AS Name From CITY …` | L89383 |
| Rate / tax structures: `Select Code,Name,Type as Flag,PayType,SaleRate,Cost From RevMast where … Fieldtype in ('P')` | L89402 |
| Employees: `SELECT Code,Name FROM Employee …` | L89407 |
| **Occupied rooms** `Select RoomOcc.DocId,RoomOcc.RoomNo,RoomOcc.FolioNo From RoomOcc WHERE … roomocc.type not in ('C','O') AND CHKOUTDATE IS NULL` | L89426 |
| Market segments: `Select CODE,NAME From MarketSeg WHERE Active<>'No'` | L89459 |
| Business sources: `Select CODE,NAME From BussSource WHERE Active<>'No'` | L89480 |
| Plans: `Select Code,Name,total,App_Date,RoomTaxStru From PlanMast where … ActiveYn='Yes' and App_date<=…` | L89488 |
| Rooms (with category + tax): `Select RoomMast.Code as SearchCode,RoomMast.Code as RoomNo,… From RoomMast Left Join RoomCat … Left Join Revmast …` | L89560 |
| Room categories: `Select Roomcat.Code,Roomcat.Name,Revmast.TaxStru as RoomTaxStru From RoomCat Left Join Revmast …` | L89580 / L89587 |
| Groups / guests: `Select Code,Name From GroupProf …`, `Select Code,Name From GuestProf …` | L89608 / L89627 |
| Existing bookings: `SELECT DocId AS SearchCode,Site_Code,LogSite_Code FROM Booking … ORDER BY BookNo` | L89636 |

Multi-site rule used everywhere: `(LOGSITE_CODE='…' OR LOGSITE_CODE='HO')`. `[VERIFIED-VB6]`

### 4.2 Cancellation flow

| Step | Line | SQL |
|---|---|---|
| Guard: un-cancelled booking exists | L89651 | `Select DocId From Booking Where … RoomType='RO' And OccRoom='…'` |
| Soft-cancel Booking | L89900 | `Proc_6_6_F208E4(…, "Update Booking Set Cancel='Y',CancelDate=")` |
| Soft-cancel group lines | L89908 | `"Update GrpBookingDetails Set Cancel='Y',CancelDate="` |
| Post refund/advance charge | L89963 | `Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,…,PayCode,PayType,BillAmount,AmtCr,…)` |
| Post contra side | L90019 | `Insert Into PayCharge (… AmtDr … FolioNo …)` |
| Read voucher numbering method | L90032 | `Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP …` |
| Bump serial | L90042 / L90084 | `Update Voucher_Prefix Set Start_Srl_No=… Where (SITE_CODE='…' AND LOGSITE_CODE='…')` |
| Write cancellation audit row | L90054 / L90333 | `Insert Into BookingCancelDetails (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,BookingDocID,Advance,CancelAmt,CancellationMode,U_Name,U_EntDt,U_AE,LogSite_Code) Values (…)` |
| SMS template | L90259 | `Select ReservationCancelMsg,SendingMessageText from SMSEnviro WHERE LOGSITE_CODE='…'` |
| Check whether guest already folio'd | L90303 | `Select count(*) from GuestFolio where BookingDocid='…'` |
| Check advances received | L90314 / L90323 | `Select Sum(AmtCr) from PayCharge where RefDocid='…'` |
| `Sorry! Guest Already Checked In.` | L90309 | — |
| Repeat cancel guard (2nd path) | L90371 / L90402 | `Update Booking Set Cancel='Y',CancelDate=…` |
| `Invalid Adv. Due Date` | L91830 | — |

### 4.3 Restore (un-cancel)

| Line | SQL |
|---|---|
| L90539 | `Update Booking Set Cancel='N',canceldate=NULL,CancelUName='' where Docid='…'` |
| L90543 | `Update GrpBookingDetails Set Cancel='N',canceldate=NULL,CancelUName='' where BookingDocid='…'` |
| L90548 | `Delete from BookingCancelDetails Where BookingDocId='…'` |

### 4.4 Hard delete

Guard queries first — L91404 `Select Count(*) from PayCharge where RefDocId='…'`, L91415
`Select Count(*) from GuestFolio where BookingDocId='…'` — then cascade (`[VERIFIED-VB6]`):

| Line | SQL |
|---|---|
| L91430 | `Delete From Booking Where Docid='…'` |
| L91431 | `Delete From GrpBookingDetails Where BookingDocid='…'` |
| L91432 | `Delete From BookingPlanDetails Where BookingDocid='…'` |
| L91433 | `Delete From BookingMore Where Docid='…'` |
| L91434 | `Delete From BookingCancelDetails Where BookingDocid='…'` |

Second cascade (browse/delete path) L91852, L91857, L91862, L91867 repeats the same 4 tables. `[VERIFIED-VB6]`

> **No FK enforcement exists** — `18_Database\foreign_keys.txt` is **0 bytes** (zero foreign keys in MOONData2627).
> `[VERIFIED-SQL]` Every cascade above is application-level only.

### 4.5 Un-verified / pending-verification booking list

| Line | SQL |
|---|---|
| L90592 | `SELECT Booking.DocId as SearchCode, Booking.BookNo, Booking.GuestName, CAST(Booking.VDate AS VARCHAR(11)) AS VDate, … booking.Cancel FROM Booking WHERE Verified='N' And (Booking.VDate between …)` |
| L91603 | same list but `Isnull(Booking.Verified,'')=''` and adds `IsNull(Booking.RefBookNo,'') Ref_BookingId` |

Two different emptiness tests for the same conceptual flag (`Verified='N'` vs `ISNULL(Verified,'')=''`) —
rows with `Verified='Y'` are excluded by both, rows with `Verified=NULL` only by the second. `[VERIFIED-VB6]`
See `notes/notes.md` NK-5.

### 4.6 Save path — order of writes

| Order | Line | SQL |
|---|---|---|
| 1 | **L91992** | `Insert Into Booking (Docid,Vtype,BookNo,Site_Code,Vprefix,Vdate,GroupCode,ArrDate,Arrtime,DepDate,DepTime,NoDays,RoomCat,RoomType,Roomno,[Adult],[Child],NoOfRooms,RateCode,RoomRate,remarks,[Authorization],Company,GuestProf,Travel…)` |
| 2 | L92013, L92029, L92046, L92063, L92080, L92097 (loop, up to 6) | `Insert Into BookingMore (Docid,Sno,Name,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values (…)` |
| 3 | **L100457** | `INSERT INTO GrpBookingDetails (BookingDocId,SNO,RoomDet,Adults,Childs,Tarrif,IncTax,ServiceChrg,LogSite_Code,RoomCat,Plan_Package,Remarks,RoomNo,RateCode,U_EntDt,U_AE,ArrDate,ArrTime,NoDays,DepDate,…)` |
| 4 | **L100546** | `INSERT INTO BookingPlanDetails (BookingDocId,SNO,Sno1,RevCode,ChrgCode,TaxInc,TaxStru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild,NoOfDays,PlanPer,App_Date,…)` |

`[VERIFIED-VB6]` — Booking **log** table `BookingLog` (row count 403) is **never referenced** inside the
`RrRoomReservation` object range; `[UNKNOWN]` which code populates it (probably the Front Office check-in path).

### 4.7 Validation messages emitted by `RrRoomReservation`

All `[VERIFIED-VB6]`, all inside object range L88969–L107257:

| Line | Message | Rule |
|---|---|---|
| L103221, 103332, 103369, 103404, 103455, 103500 | `InValid Date!` | date parse |
| L103591, L103604 | `InValid Days!` | NoDays > 0 |
| L103871 | `No of Rooms Booked are Less than Supplied Details !!` | header vs grid |
| L104162 | `Empty Rate table` | no tariff rows |
| L104416 | `Plan/PlanPkg is Not Defined!` | plan master missing |
| L104661 | `No Of Rooms Should Not be Zero.` | |
| L104690 | `Arr. Date Not Between (Date From To Date).` | |
| L104705 | `Arr. Time is reqiured Detail.` | typo is verbatim |
| L104747 | `Dep. Date Not Between (Date From To Date).` | |
| L104761 | `Dep. Time is reqiured Detail.` | |
| L104774 | `Room Category is reqiured Detail.` | |
| L104786 | `Adults Detail Should Not be Zero.` | |
| L104804 | `Tariff Should Not be Zero.` | |
| L104818 | `Inc. Tax is required Detail.` | |
| L104832 | `Ser. Chrg is required Detail.` | |
| L104880 | `Detailed Room/Adults/Childs information is not matched with Summerised.` | |
| L102576 | `Do you want to add discount as per company policy.` | Yes/No |
| L104021, 104058, 104345, 104383, 104438, 105060, 105098 | `Apply Tariff as per defined Condition?` | rate override confirm |
| L105149 | `PackageAmount` | confirm dialog caption |
| L105413, L105743 | `Want Include Child in Plan/Package Value?` | |
| L90974, 91010, 91032 | `Invalid Room Rate` | |
| L91019 | `Invalid Meal Charges` | |
| L91830 | `Invalid Adv. Due Date` | |
| L90309, L91503, L97102 | `Sorry! Guest Already Checked In.` | cancel blocked after check-in |
| L100210 | `Cancellations must be made at least 72 hours in advance.` | **printed to a file** (`Print 1, …`), not a MsgBox — see `notes/notes.md` NK-6 |

---

## 5. Room availability vs. block-out

`RoomBlockOut` overlap predicate used by the reservation screen:

```
… And RM.RoomCat='…' And RB.Type='O' And RM.Type='RO' And <date> Between RB.FromDate and RB.ToDate
```
EXTRAS.text **L97971**. `[VERIFIED-VB6]`

Block-out rows are written by House Keeping (`HHouseKeeping` L80755 / L80890, `HKRoomBlock` L831984),
so Reservation only *reads* them. `[VERIFIED-VB6]`

---

## 6. Reservation Status Screen — `FrmReservationStatus` (L586572–L587255)

Open + query performed by the dispatch branch L478873–L478877:
`Set var_90 = New FrmReservationStatus` → `.CAPTION = arg_10` → `.Show`. `[VERIFIED-VB6]`

SQL executed inside the object was **not** extracted in this pass — `[UNKNOWN]` pending a dedicated range grep.
(Estimatable: object span is only 684 lines, so the screen is a thin grid wrapper. `[INFERRED]`)

---

## 7. Advance Deposit — `frmAdvanceDepDialog` (L112652–L116647)

Two dispatch entries reach `MemVar_1F8254C`:

| Menu caption | Dispatch line | Extra properties |
|---|---|---|
| `Advance Deposit` | L477776–L477777 | none observed |
| `Advance Deposite` (misspelled) | L478903–L478909 | `OpenType = 1`, `OpenMode = 2`, `AdvType = "ADRES"` |

`[VERIFIED-VB6]` The misspelled caption is not registered under hex `&HD`; it is registered by another module
block. `[INFERRED]`

---

## 8. Look-up forms

| Form | Range | Dispatch |
|---|---|---|
| `resRoomType` | L137752–L139788 | L478885 `New resRoomType` (also reused for 23-Day Room Type Forecast, L479030) |
| `resRoomNo` | L136352–L137751 | L478891 `New resRoomNo` (also reused for 23-Day Room Availability Forecast, L479024) |

`[VERIFIED-VB6]` The two forecast menu items therefore open **data-entry look-up forms**, not the report viewer —
confirmed by the absence of any `GRepFormName` assignment on those branches.

---

## 9. Report wiring (Reservation)

See `reports\reports.md` for the full `.rpt` cross-reference. Dispatch facts only:

| Menu caption | Viewer | `GRepFormName` | Dispatch line |
|---|---|---|---|
| Confirmation Letters | `New rRepReserv` | `ConfirmLetter` | L478913–L478914 |
| Cancellation Letters | `New rRepReserv` | `CancellLetter` | L478920–L478921 |
| Registration Card | `New rRepReserv` | `RegistrationCard` | L478927–L478928 |
| Reservation Status | `New rFomRepView` | `ReservationStatus` | L478934–L478935 |
| Reservation Status Arrival | `New rFomRepView` | `ReservStatusArrival` | L478941–L478942 |
| Reservation Status In-House | `New rFomRepView` | `ReservStatusInHouse` | L478948–L478949 **(unreachable — caption never stored)** |
| Arrival List | `New rFomRepView` | `MovementList` | L478968–L478969 |
| Advance Recd. | `New rFomRepView` | `ResvAdvRecd` | L478996–L478997 |
| Advance Recd. Arrival | `New rFomRepView` | `ResvAdvRecdArr` | L479003–L479004 |
| Advance Recd. In-House | `New rFomRepView` | `ResvAdvRecdInHouse` | L479010–L479011 **(unreachable)** |
| 7-730 Days Forecast | `New rFomRepView` | `DaysForecastRep` | L479017–L479018 |
| Package Forecast | `New rFomRepView` | `PackageForecast` | L479038–L479039 |

All `[VERIFIED-VB6]`.

---

## 10. Sub-routines referenced from this module

| Symbol | Purpose | Evidence |
|---|---|---|
| `Proc_6_6_F208E4(a, b, sqlPrefix)` | appends `'<value>'` + executes, used for `Update Booking Set Cancel=…` | L89900, L90371, L90539 `[VERIFIED-VB6]` |
| `Proc_6_16_EA44E0` | builds a parameterised SQL fragment into a variable (used by registration) | L475695, L475701 `[VERIFIED-VB6]` |
| `Proc_6_38_E75F08` | increments Max(OPTn) | L475749 `[VERIFIED-VB6]` |
| `Proc_6_37_E618F4` | scalar reader (`Select max(...)`) | L725809 `[VERIFIED-VB6]` |
| `0.Method_TopCtrl1_UnknownEvent_160 / _C0 / _90` | decompiler-unresolved UI event helpers that take an SQL string | L91404, L91852, L90303 `[VERIFIED-VB6]` |

`[UNKNOWN]` The numeric `Method_*` names are decompiler artefacts, not real VB6 identifiers; original procedure
names are not recoverable from `EXTRAS.text`.
