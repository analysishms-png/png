# 04_Reservation — Screen Inventory

Menu hex code **D** (`&HD`), 25 menu rows.
Menu source: `19_VB6_Logic\menu_tree_raw.txt` L169–L193.
Registration source: `EXTRAS.text` `Proc_165_0_14C1708` calls, L476207–L476503 region (Reservation block L476205–L476259).
Dispatch source: `EXTRAS.text` `Proc_165_2_1E3A588(arg_C, arg_10)` L476999–L480832.

Evidence tags: `[VERIFIED-VB6]` = line-cited decompiled source; `[VERIFIED-SQL]` = DB extract;
`[INFERRED]` = reasoned from surrounding code; `[UNKNOWN]` = not determinable from available artefacts.

## A. Group headers (no screen)

| # | menu_tree line | Caption | Type | OutletCode | Registration line |
|---|---|---|---|---|---|
| 1 | L169 | Reservation | 4 (module) | `Reserv` | EXTRAS.text L476207 |
| 2 | L170 | Reservation Operations | 3 (group) | `ResOpEnt` | L476209 |
| 3 | L180 | Reservation Status Report | 3 (group) | `ReservationEnt` | L476229 |
| 4 | L185 | Advance Recd. Report | 3 (group) | `ReservationEnt` | L476240 |
| 5 | L189 | M.I.S. | 3 (group) | `ReservationEnt` | L476249 |

`[VERIFIED-VB6]` module gate: `If (InStr(2, MemVar_1F81228, "L", 0) <> 0) Then` (EXTRAS.text L476205) — the whole Reservation
block is registered only when the user's module string contains `L`.

## B. Reservation Operations children (type 0 = entry screen / dialog)

| menu_tree | Caption (as registered) | Idx | Registration | Dispatch handler | Target |
|---|---|---|---|---|---|
| L171 | Reservation/Cancellation | 0 | L476211 | EXTRAS.text L478867 | `Set var_90 = MemVar_1F824E8` → `RrRoomReservation`-family form `[INFERRED]` |
| L172 | Look Up Room types | 2 | L476213 | L478885 | `New resRoomType` (object `resRoomType` EXTRAS.text L137752–L139788) |
| L173 | Look Up Rooms | 3 | L476215 | L478891 | `New resRoomNo` (object `resRoomNo` L136352–L137751) |
| L174 | Reservation with History | 4 | L476217 | L478897 | `Set var_90 = MemVar_1F826B0` (`RrRoomReservation` variant) `[INFERRED]` |
| L175 | Advance Deposit | 5 | L476219 | L477776 | `Set var_90 = MemVar_1F8254C` → `frmAdvanceDepDialog` `[INFERRED]` |
| L176 | Confirmation Letters | 6 | L476221 | L478912–L478914 | `New rRepReserv`, `GRepFormName = "ConfirmLetter"` |
| L177 | Cancellation Letters | 7 | L476223 | L478919–L478921 | `New rRepReserv`, `GRepFormName = "CancellLetter"` |
| L178 | Registration Card | 8 | L476225 | L478926–L478928 | `New rRepReserv`, `GRepFormName = "RegistrationCard"` |
| L179 | Reservation Status Screen | 9 | L476227 | L478873–L478874 | `New FrmReservationStatus` (object L586572–L587255) |

Index **1** is never registered in this group (indices jump 0 → 2) `[VERIFIED-VB6]` — see `notes/notes.md` NK-1.

Main reservation entry form (menu item "Reservation/Cancellation"):
`RrRoomReservation`, EXTRAS.text object range **L88969–L107257** `[VERIFIED-VB6]`.

## C. Reservation Status Report children (type 1 = report)

| menu_tree | Caption as stored | Registration | Dispatch | Viewer + `GRepFormName` |
|---|---|---|---|---|
| L181 | Reservation Status | L476231 | L478933–L478935 | `New rFomRepView` → `"ReservationStatus"` |
| L182 | Reservation Status Arrival | L476233 | L478940–L478942 | `New rFomRepView` → `"ReservStatusArrival"` |
| L183 | Reservation Status Arrival *(duplicate)* | L476236 | — | no dispatch branch matches the 2nd row's intended caption |
| L184 | Arrival List | L476238 | L478967–L478969 | `New rFomRepView` → `"MovementList"` |

Immediately before the duplicate call the code does `var_124 = "Reservation Status In-House"` (EXTRAS.text **L476235**),
and a handler for `"Reservation Status In-House"` exists at **L478947** (`GRepFormName = "ReservStatusInHouse"`, L478949).
`Proc_165_0_14C1708` stores `arg_C` (the literal first argument) into `MenuHelp.[OPTION]` (L475808–L475812) and never
references `var_124` — so the stored caption is the duplicate literal. Result: the In-House report is registered as a
duplicate of the Arrival row. `[VERIFIED-VB6]` + `[INFERRED]` intent.

## D. Advance Recd. Report children (type 1 = report)

| menu_tree | Caption as stored | Registration | Dispatch | Viewer + `GRepFormName` |
|---|---|---|---|---|
| L186 | Advance Recd. | L476242 | L478995–L478997 | `New rFomRepView` → `"ResvAdvRecd"` |
| L187 | Advance Recd. Arrival | L476244 | L479002–L479004 | `New rFomRepView` → `"ResvAdvRecdArr"` |
| L188 | Advance Recd. Arrival *(duplicate)* | L476247 | — | handler `"Advance Recd. In-House"` at L479009 (`GRepFormName = "ResvAdvRecdInHouse"` L479011) is unreachable |

`var_124 = "Advance Recd. In-House"` set at EXTRAS.text **L476246**, immediately before the duplicate call.
Same defect pattern as section C. `[VERIFIED-VB6]`

## E. M.I.S. children (type 0)

| menu_tree | Caption as stored | Registration | Dispatch | Target |
|---|---|---|---|---|
| L190 | M.I.S. | L476252 (`var_124 = "7-730 Days Forecast"` at L476251) | L479016–L479018 | `New rFomRepView` → `"DaysForecastRep"` |
| L191 | 23 Day Room Availability Forecast | L476254 | L479023–L479024 | `New resRoomNo` |
| L192 | 23 Day Room Type Availability Forecast | L476256 | L479029–L479030 | `New resRoomType` |
| L193 | Package Forecast | L476258 | L479035–L479039 | `New rFomRepView` → `"PackageForecast"` |

The `var_124 = "7-730 Days Forecast"` override (L476251) is consumed only if `Proc_165_0_14C1708` reads that global;
the decompiled call passes the literal `"M.I.S."`. The stored caption is therefore `M.I.S.` `[VERIFIED-VB6]`;
the intended caption `7-730 Days Forecast` **is** matched by a dispatch branch at L479016 → report key `DaysForecastRep`
`[INFERRED]`. Confirmed defect: report key mismatch (menu stores `M.I.S.`, dispatcher wants `7-730 Days Forecast`).
See `notes/notes.md` NK-2.

## F. Report-viewer forms used by this module

| Form | Object range in EXTRAS.text | Used for |
|---|---|---|
| `rRepReserv` | L165804–L177652 | Confirmation / Cancellation letters, Registration Card |
| `rFomRepView` | generic (module `Front Office`) | Reservation Status, Advance Recd., M.I.S., Movement List |
| `FrmReservationStatus` | L586572–L587255 | Reservation Status **screen** (not a report) |
| `resRoomNo` | L136352–L137751 | Look Up Rooms + 23 Day Room Availability Forecast |
| `resRoomType` | L137752–L139788 | Look Up Room types + 23 Day Room Type Forecast |

`[VERIFIED-VB6]` all ranges from `C:\Users\LENOVO\AppData\Local\Temp\opencode\objects.txt` (built by scanning
`EXTRAS.text` for `'Object: <Name>'` markers).

## G. Related objects present in EXTRAS.text but NOT reachable from menu hex D

| Object | EXTRAS.text range | Reached from | Note |
|---|---|---|---|
| `frmAdvanceDepDialog` | L112652–L116647 | dispatch `"Advance Deposit"` L477776 via `MemVar_1F8254C` | `[INFERRED]` same singleton |
| `rsAdvanceDepDialog` | L193185–L197044 | POS (hex `&H11`) | `[INFERRED]` |
| `rrsAdvanceDepDialog` | L269981–L273688 | POS touch-screen | `[INFERRED]` |
| `RrLookUpGuest` | L145611–L145990 | `[UNKNOWN]` | not matched by any `var_188` branch found |
| `resGroup` | L177653–L179641 | dispatch `"Add/Edit/Delete Group With Reservation"` L478879 (`MemVar_1F824FC`) | caption not in menu hex D |
| `FdLookUpRoom` / `FdLookUpRoomNo` | L192539–L193184 / L201207–L202382 | Front Office menu | shared look-ups |

## H. Screenshot evidence

Live captures are stored at `HMS_REVERSE_ENGINEERING\screenshots\04_Reservation\` — **12 PNGs** (do not copy here):

| File | Content |
|---|---|
| `03-Reservation_MenuTab.png` | MDI menu tab for Reservation |
| `B032_Menu_20260928_195548.png` | menu tree capture |
| `B062_ReservationCancellation_20260928_204838.png` | Reservation/Cancellation screen |
| `B063_ResWithHistory_20260928_205029.png` | Reservation with History |
| `B064_LookUpRooms_20260928_205145.png` | Look Up Rooms |
| `B065_ResStatusScreen_20260928_205343.png` | Reservation Status Screen |
| `C2_Reservation__Operations__Reservation.png` | Reservation/Cancellation (C2 pass) |
| `C2_Reservation__Operations__Look_Up_Roo.png` | Look Up Rooms (C2 pass) |
| `C3_02_Reservation__Operations__Look_Up.png` | Look Up (C3 pass) |
| `C3_03_Reservation__Operations__Look_Up.png` | Look Up (C3 pass) |
| `C3_04_Reservation__Operations__Reserva.png` | Reservation (C3 pass) |
| `C3_S1_Reservation__Operations__Reserva.png` | Reservation (C3 S1) |

No capture exists for: Confirmation/Cancellation Letters, Registration Card, Advance Deposit dialog,
Reservation Status Report / Arrival / Arrival List, any M.I.S. forecast `[UNKNOWN — un-captured]`.
