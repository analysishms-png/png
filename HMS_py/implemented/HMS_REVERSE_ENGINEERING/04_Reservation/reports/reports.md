# 04_Reservation — Reports

## Report engine (how a menu click becomes a printed report)

1. Menu click → `Proc_165_2_1E3A588` (EXTRAS.text L476999) resolves `MenuHelp.[OPTION]`
   into `var_188` (L480834 `Proc_165_3_EEA710`). `[VERIFIED-VB6]`
2. A dispatch branch sets `var_90.GRepFormName = "<ReportKey>"` and calls `.Show`. `[VERIFIED-VB6]`
3. Inside the viewer form:
   `CreateFieldDefFile(<recordset>, MemVar_1F810B4 & "\" & <name> & ".ttx")`
   then `0.Method_arg_1C(MemVar_1F810B4 & "\" & <name> & ".RPT", ...)`
   — EXTRAS.text **L663351–L663352** (`rFomRepView` object, range L661020–L724969) and the identical
   pattern at **L120779–L120781** (`rRepHousePreview`), **L166066–L166067** (`rRepReserv`). `[VERIFIED-VB6]`
4. `MemVar_1F810B4` = report folder = **INI `Analysis.ini` key 2**:
   `C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\implemented\HMS2526\Reports` `[VERIFIED-CONFIG]`
5. Engine = Crystal Reports ActiveX (Seagate CR 7/8 era) per `17_Reports\REPORTS_ANALYSIS.md` `[VERIFIED-CONFIG]`

Folder inventory `[VERIFIED-SQL/CONFIG]`: **566 files** = **371 `.rpt`** + **194 `.ttx`** (+ others).

---

## A. Reports reachable from menu hex D (Reservation)

| # | Menu caption | Viewer form | `GRepFormName` | EXTRAS.text dispatch | `.rpt` present in `Reports\`? | `.ttx` present? |
|---|---|---|---|---|---|---|
| 1 | Confirmation Letters | `New rRepReserv` | `ConfirmLetter` | L478913–L478914 | ✅ `ConfirmLetter.rpt` | ❌ |
| 2 | Cancellation Letters | `New rRepReserv` | `CancellLetter` | L478920–L478921 | ✅ `CancellLetter.rpt` | ✅ `CancellLetter.ttx` |
| 3 | Registration Card | `New rRepReserv` | `RegistrationCard` | L478927–L478928 | ❌ **MISSING** (closest: `RegistrCard.rpt`) | ❌ (closest: `RegistrCard.ttx`) |
| 4 | Reservation Status | `New rFomRepView` | `ReservationStatus` | L478934–L478935 | ❌ **MISSING** (closest: `ReservStatus.rpt`) | ❌ (closest: `ReservStatus.ttx`) |
| 5 | Reservation Status Arrival | `New rFomRepView` | `ReservStatusArrival` | L478941–L478942 | ❌ **MISSING** | ❌ |
| 6 | *(caption stored as duplicate of #5)* | — | handler `ReservStatusInHouse` exists at L478948–L478949 | unreachable | ❌ | ❌ |
| 7 | Arrival List | `New rFomRepView` | `MovementList` | L478968–L478969 | ✅ `MovementList.rpt` | ✅ `MovementList.ttx` |
| 8 | Advance Recd. | `New rFomRepView` | `ResvAdvRecd` | L478996–L478997 | ❌ **MISSING** (closest: `AdvanceRecd.rpt`) | ❌ (closest: `AdvanceRecd.ttx`) |
| 9 | Advance Recd. Arrival | `New rFomRepView` | `ResvAdvRecdArr` | L479003–L479004 | ❌ **MISSING** | ❌ |
| 10 | *(caption stored as duplicate of #9)* | — | handler `ResvAdvRecdInHouse` L479009–L479011 | unreachable | ❌ | ❌ |
| 11 | M.I.S. (stored) / `7-730 Days Forecast` (handler) | `New rFomRepView` | `DaysForecastRep` | L479017–L479018 | ✅ `DaysForecastRep.rpt` | ❌ |
| 12 | Package Forecast | `New rFomRepView` | `PackageForecast` | L479038–L479039 | ✅ `PackageForecast.rpt` | ❌ |
| 13 | 23 Day Room Availability Forecast | `New resRoomNo` | *(none — opens a grid form)* | L479023–L479024 | n/a (not a Crystal report) | n/a |
| 14 | 23 Day Room Type Availability Forecast | `New resRoomType` | *(none — opens a grid form)* | L479029–L479030 | n/a | n/a |

**"❌ MISSING" = no file of that exact base name exists in `<HMS2526>\Reports\`.** `[VERIFIED-CONFIG]`
Whether the viewer applies a name translation before opening is `[UNKNOWN]` — the `var_88`/`global_84`
substitution seen at L663351 / L166066 is a decompiler-local variable whose assignment was not traced in
this pass. `[INFERRED]` most likely the viewer opens `<GRepFormName>.RPT` verbatim, so rows 3,4,5,8,9 would
fail at run time with a file-not-found error.

---

## B. Report files that clearly belong to this module (by name)

Present in `Reports\` `[VERIFIED-CONFIG]`:

| File | `.ttx` field stub | Likely menu source |
|---|---|---|
| `ConfirmLetter.rpt` | — | Confirmation Letters |
| `CancellLetter.rpt` / `.ttx` | ✅ | Cancellation Letters |
| `RegistrCard.rpt` / `.ttx` | ✅ | Registration Card (name ≠ `RegistrationCard`) |
| `ReservStatus.rpt` / `.ttx` | ✅ | Reservation Status family (name ≠ `ReservationStatus`) |
| `Reservation.ttx` | ✅ | reservation detail data source |
| `BookingDetail.rpt` | — | reservation detail |
| `BOOKINGPrint.rpt`, `WinBOOKINGPrint.rpt` | — | booking print |
| `RoomReservationDetail.rpt` / `.ttx` | ✅ | room-wise reservation detail |
| `MovementList.rpt` / `.ttx` | ✅ | Arrival List |
| `AdvanceRecd.rpt` / `.ttx` | ✅ | Advance Recd. family |
| `Advance Reciept Reservation.rpt` / `ADVANCE RECIEPT RESERVATION.ttx` | ✅ | advance receipt print |
| `Advance Reciept.rpt` / `ADVANCE RECIEPT.ttx` | ✅ | generic advance receipt |
| `DaysForecastRep.rpt` | — | 7-730 Days Forecast |
| `PackageForecast.rpt` | — | Package Forecast |
| `Day23RoomAvail.rpt` / `.ttx` | ✅ | 23 Day Room Availability (opened by `resRoomNo`, not by CR — see §A row 13) |
| `Day23RoomType.rpt` | — | 23 Day Room Type |
| `GuestObservation.rpt` | — | `[INFERRED]` guest remarks / history |
| `ArrDepReg.rpt` (registered by Front Office, `GRepFormName = "ArrDepReg"` L478443) | — | arrival/departure register |

### `.ttx` data sources confirmed for this module

`AdvanceRecd.ttx` fields `[VERIFIED-CONFIG]`:
`mLine, GuestName, Confirm, ArrDate, EntDate, Amount, Type, Narration, Due, Mark`

`ReservStatus.ttx` fields `[VERIFIED-CONFIG]`:
`mLine, GuestName, BookNo, PayType, ArrDate, DepReq, Comment1, Adult, Mark`

Both are flat single-recordset stubs → Crystal reads from a runtime recordset, not directly from SQL.
`[VERIFIED-CONFIG]`

---

## C. Reports referenced by other menus but pointing at Reservation data

| `GRepFormName` | Dispatch | Viewer | File |
|---|---|---|---|
| `RoomInventory` | L478748–L478750 | `rFomRepView` | ✅ `RoomInventory.rpt` |
| `GuestInHouse` | L478755–L478757 | `rFomRepView` | ✅ `GuestInHouse.rpt` |
| `InsHouseCount` | L478741–L478743 (also L478418–L478422 with trailing-space guard) | `rFomRepView` | ✅ `InsHouseCount.rpt` |
| `ArrivalDepList` | L478769–L478771 | `rFomRepView` | `[UNKNOWN]` — no exact-name file found |
| `MovementList` | L478961–L478962, L478968–L478969 | `rFomRepView` | ✅ `MovementList.rpt` |

These belong to Front Office / Night Audit menus; listed here because they consume `Booking`/`ViewBooking`.
`[VERIFIED-VB6]`

---

## D. Print-format override

`PrintFormats` table — 39 code references, per-form print-format overrides
(`17_Reports\REPORTS_ANALYSIS.md`). `[VERIFIED-CONFIG]` Which rows apply to Reservation screens is
`[UNKNOWN]` in this pass.

---

## E. Findings / defects (report-specific)

| ID | Finding | Evidence |
|---|---|---|
| R-1 | `RegistrationCard` key has no matching `.rpt`; `RegistrCard.rpt` exists instead | folder listing `[VERIFIED-CONFIG]` + L478928 `[VERIFIED-VB6]` |
| R-2 | `ReservationStatus` / `ReservStatusArrival` / `ReservStatusInHouse` keys have no matching `.rpt`; only `ReservStatus.rpt` exists | folder listing + L478935/L478942/L478949 |
| R-3 | `ResvAdvRecd` / `ResvAdvRecdArr` / `ResvAdvRecdInHouse` keys have no matching `.rpt`; only `AdvanceRecd.rpt` exists | folder listing + L478997/L479004/L479011 |
| R-4 | `ReservStatusInHouse` / `ResvAdvRecdInHouse` are unreachable from the menu (duplicate captions stored) | L476235/L476236, L476246/L476247 vs L478947, L479009 |
| R-5 | Menu caption `M.I.S.` vs dispatcher key `7-730 Days Forecast` — mismatch | registration L476252 vs dispatch L479016 |
| R-6 | `ConfirmLetter`, `DaysForecastRep`, `PackageForecast` have no `.ttx`; `CreateFieldDefFile` will attempt to write one at run time | folder listing + L166066 pattern |

Cross-reference: `17_Reports\REPORTS_ANALYSIS.md` (524 files counted in the earlier pass; 566 files now
counted — the folder has grown since that document was written). `[VERIFIED-CONFIG]`
