# 05_Front_Office — Module Manual

Spec: PROMT.txt §13 (module structure) + **§14 (Front Office must be analyzed deeply — HIGHEST PRIORITY)**.
Evidence tags: `[VERIFIED-VB6]` = decompiled EXTRAS.text, `[VERIFIED-SQL]` = DB read, `[VERIFIED-UI]` = live GUI capture, `[INFERRED]`, `[UNKNOWN]`.

Companion deep docs (this folder, root level):
- `FRONT_OFFICE_LIFECYCLE.md` — full reservation→checkout→settlement SQL lifecycle
- `CHECKIN_FIELD_MAP.md` — WalkIn CheckIn field-level UI→DB map

---

## 1. Purpose

Front Office is the operational heart of HMS: reservation → arrival → check-in → stay →
posting → payment → settlement → check-out → invoice, feeding Night Audit's date roll.
It owns the guest folio (`GuestFolio`), the room-state table (`RoomOcc`) and the charge
ledger (`PayCharge`).

DB evidence `[VERIFIED-SQL]`: `GuestFolio` 11043 rows, `RoomOcc` 11464, `PayCharge` 28550,
`GuestProf` 7804, `Booking` 25, `BookingCancelDetails` 149, `GrpBookingDetails` 56,
`GuestFolioAmend` 167, `GuestFolioProfDetail` 747, `PayChargeH` 11567, `PayChargeLog` 253.

## 2. Menu Structure

Three surfaces (see `19_VB6_Logic/MENUHELP_PER_USER_ANALYSIS.md`):

| Surface | FO representation |
|---|---|
| Strip tab (`Analysis.ini` key `9=`) | `&Front Office` = 5th of 15 tab names |
| Builder menu (`menu_tree_raw.txt`, hex `E`) | root caption **`Front Desk`** (L194, type=4) + 65 rows |
| Runtime menu (`MenuHelp`, user SA, `OPT1=14`) | root **`Front Office`** (tree L141) + 62 rows |

**Naming drift**: builder calls the module *Front Desk*, runtime calls it *Front Office* `[VERIFIED-VB6]`.

Runtime groups (`OPT2`): `Operations`(13 leaves) / `Reports`(21) / `Tourism Forms`(10) /
`M.I.S.`(13) / `Tax Reports`(2) — full row list: `screens/screens.md`.
Builder groups: `Front Desk Operations`(12) / `Reports`(31) / `Tourism Forms`(10) / `M.I.S.`(9+3 stray).

Drift highlights `[VERIFIED-VB6]`:
- Runtime-only group `Tax Reports` (FOM Tax Detail, Tax Wise Charge Detail) — absent from builder hex `E`.
- Builder-only ops rows: `Forex Receive Entry`, `House Keeping Screen`, `Travel Agency Posting`
  (present in `menu_tree_raw` L199/L201/L202, absent from `MenuHelp` OPT1=14 for user SA).

## 3. Screens

Dispatch is a single giant `If (var_188 = "<caption>") Then … New <form>` chain in the MDI
handler (region L477776–L478348) plus a second `Loop Until` chain (L480210–L480459).

| Menu caption | Form | Line | Note |
|---|---|---|---|
| WalkIn CheckIn | `fdWalkInEntry` | L477785 **and** L478236 | **duplicate arm** (same caption twice) |
| Check In Entry | `fdCheckIn` | L478242 | |
| Check In Group With Reservation | — | L478248 | **DEAD ARM** (caption+goto only) |
| Check In With Walk In History | `HWIHistory` | L478252 | |
| Duplicate Last Guest Check In | `fdWalkInEntry` + `FrmOpenType="Last Guest"` | L478258 | parameterised re-use |
| Look-up Room | `FdLookUpRoom` | L478265 | |
| Look-up Guest by Name or Room | `InHouseGuestFolio` (+ 2× `InputBox`) | L478271 | prompts name/room first |
| Change Guest Information | — | L478284 | **DEAD ARM** |
| Post Charges/Payments | `fdPaymentCharge` | L478288 | 8 instantiations DB-wide |
| Display Folio | `fdDisplayFolio` | L478294 | 4 instantiations |
| Room Change Entry | `fdRoomChange` | L478300 | |
| Amend Stay | `fdAmendEntry` | L478306 | |
| Expense Entry | `FrmExpense` | L478312 | |
| Blank GRC | `FrmGrcBlank` | L478318 | |
| In House Guest Message | `FrmHouGuestMsg` | L478324 | |
| Register Wake up Calls | `FrmGuestWakeUp` | L478330 | shared with EPABX |
| Forex Receive Entry | `FrmForExRec` | L478336 | |
| Check-out/reverse check-out | `FdCheckOut` | L478342 | |
| Advance Deposit | — | L477776 | **DEAD ARM** (op exists in check-in form though) |
| Reverse Check Out | `FdRevCheckOut` | L477791 | also L480396 via `Reverse check-out` |
| Merge Room | `FrmMergeCharge` | L477797 | |
| Bill Re-Settlement | `FdReSetlement` (+`ParentForm="Check Out"`) | L477803 | |
| Reverse Room Merge | `FrmRevMergeCharge` | L477810 | |
| Room Display | `FdRoomDisplay` | L477728 | |
| Room Status | `InHouseGuestFolio` (+`PGuestName`,`PRoomNo`) | L480384 | status = folio view |
| Bill Reprint | `frmFomB` | L480391 | |
| Charges Posting | `fdPostChrg` | L480211 | also `fdAcPostChrg` (A/C) L477244 |

Full screen inventory with runtime rows: `screens/screens.md`.
Form instantiation counts `[VERIFIED-VB6]`: `fdWalkInEntry`×7, `fdPaymentCharge`×8,
`fdDisplayFolio`×4, `fdCheckIn`×3, `InHouseGuestFolio`×3, `FdRevCheckOut`×3, `fdAcPostChrg`×3.

## 4. Masters

FO-relevant masters live in **02_Main_Setup** (dispatch L477632–L477686):
`Charge Master`(FrmChargeMast), `Plan/Package Master`(FrmPlanPackMast), `Season Master`,
`Room Features`, `Room Category`(FrmRoomCatMast), `Room Master`(FrmRoomMast),
`Company Master`(CompMast), `Forex Master`, `Guest Profile`(GuestProfile),
`Group Profile`(GroupProfile), plus `Market Segment`, `Business Source`, `Guest Status`.

This module *consumes* those masters; it defines none of its own `[VERIFIED-VB6]`.

## 5. Transactions

| Transaction | Table write | Evidence |
|---|---|---|
| Reservation | `Insert Into Booking (…)` 54 cols | EXTRAS L91992 `[VERIFIED-VB6]` |
| Extra guests | `Insert Into BookingMore` | L91992+ |
| Reservation cancel | `Insert Into BookingCancelDetails` 13 cols | L91992+ |
| Group booking | `GrpBookingDetails` (43 refs) | `[VERIFIED-VB6]` |
| Check-in step 1 | `Insert Into GuestFolio (…)` 42 cols | L942575 `[VERIFIED-VB6]` |
| Check-in step 2 | `Insert Into RoomOcc (…)` 34 cols | L942284 `[VERIFIED-VB6]` |
| Guest-prof link | `Insert Into GuestFolioProfDetail` | L942575+ |
| Stay amendment | `Insert into GuestFolioAmend` + `Update GuestFolio Set DepDate` | L146328/146334 |
| Charges | `PayCharge` rows (+`PayChargeH` history, `PayChargeLog` audit) | §4 of lifecycle doc |
| Check-out | `Update RoomOcc set CHKOUTDATE=…,CHKOUTTIME=…` | L149667 |

Row counts `[VERIFIED-SQL]`: Booking 25 / BookingCancelDetails 149 / GuestFolio 11043 /
RoomOcc 11464 / PayCharge 28550. `BookingMore` = **0 rows** (feature unused).

## 6. Operations

- **Room change**: `RoomOcc` update + `Update GuestMessage set RoomNo=… where FolioNo=…` (L~149680).
- **Folio/room merge**: `UPDATE GuestFolio SET mFolioNoDocId=…, mFolioNo=…` (L437902).
- **Discount**: `RoDisc`/`RSDisc` on GuestFolio (update at L149517).
- **Plan update post-entry**: `Update RoomOcc Set PlanCode=…,PlanAmt=…,IncInRate=…` where Sno/DocId/Site/Room.
- **Room Status view**: `InHouseGuestFolio` with `PGuestName`/`PRoomNo` params (L480384).
- **Look-up guest**: two `InputBox` prompts → `InHouseGuestFolio` (L478271–478282).

## 7. Reports

Runtime `Reports` group (21 leaves) + `Tourism Forms` (10) + `Tax Reports` (2) + `M.I.S.` (13)
= **46 report leaves**; nearly all dispatch to the generic Crystal viewer `rFomRepView`
(caption → `GRepFormName` pattern, e.g. Settlement Report → `"SettleRep"` L480402).
Detail + `.rpt` names: `reports/reports.md`.

## 8. Permissions

Menu rows carry flag `E` (executable) / `R` (report) / `N` (node) per `MenuHelp` row
(`Name|OPT1|OPT2|OPT3|OPT4|Flag`). User-level access = `MenuHelp` filtered by `UserName`
(root query at `EXTRAS.text` L8279). FO rows visible to `SA` = 63 (this tree).
Per-user differential evidence: `19_VB6_Logic/Deepak_missing_from_SA.txt` (non-admin view).
No separate FO permission table exists — permissions are menu-row visibility `[INFERRED]`.

## 9. Business Rules

From `FRONT_OFFICE_LIFECYCLE.md` §7 `[VERIFIED-VB6]`:
- DocId = `<Site><Vtype><serial>` via `Voucher_Prefix`/`LASTVOU` (varchar 21).
- Every write carries `U_AE`('A'/'E'/'D'), `U_Name`, `U_EntDt` → full audit trail.
- Multi-site: `LogSite_Code` filters every query (session `MemVar_1F81078`); DB has 1 site (`Enviro`=1 row).
- Check-in is a **two-table atomic pair**: `GuestFolio` header then `RoomOcc` per room.
- Check-out = `RoomOcc.CHKOUTDATE` set; room becomes Dirty at Night Audit (`RoomMast.roomStat='D'`).
- Guest status via `GUESTSTAT` (table **0 rows** — feature dormant), guest type `GuestProfFor`.
- `NoDays = DateDiff(d, ChkInDate, DepDate+1)` recomputed at audit (nights recount).
- Live DB `GuestStat`=0, `GuestMessage`=0, `BookingMore`=0 → three dormant sub-features.

## 10. VB6 Logic

- MDI caption dispatcher: L477776–L478348 (`If`-chain) + L480210–L480459 (`Loop Until` chain)
  — **two dispatch chains overlap for the same captions** (`WalkIn CheckIn`, `Reverse Check Out`).
- Core forms: `fdWalkInEntry`, `fdCheckIn`, `fdPaymentCharge`, `fdDisplayFolio`, `fdPostChrg`,
  `fdNDAcPostChrg`/`fdAcPostChrg`, `fdRoomChange`, `fdAmendEntry`, `FdCheckOut`, `FdGrpdetCheckOut`,
  `FdRevCheckOut`, `FdReSetlement`, `FrmMergeCharge`, `FrmRevMergeCharge`, `InHouseGuestFolio`,
  `FdRoomDisplay`, `FdLookUpRoom`, `RrRoomReservation`, `HWIHistory`, `FrmExpense`, `FrmGrcBlank`,
  `FrmHouGuestMsg`, `FrmGuestWakeUp`, `FrmForExRec`, `frmFomB`.
- Handlers: `NightAuditoR_Click` etc. live in the MDI module shared with 10_Night_Audit.
- Deep dive: `logic/vb6_logic.md`.

## 11. SQL Logic

Verbatim statement inventory (INSERT/UPDATE/DELETE with column lists + line numbers):
`sql/queries.sql`; interpretation + data observations: `sql/sql_notes.md`.
All statements recovered from VB6 string literals (no DB execution) `[VERIFIED-VB6]`.
DB-side artifacts: **3 utility SPs** exist (`GetFieldNameAs`, `GetFieldNameAsStr`, `Proc_WebService`) but the app never calls them (0 refs / 0 `EXEC` in the 995,855-line listing) → all DB access is inline VB6 SQL; **0 FKs** / 0 triggers
(`18_Database/foreign_keys.txt` = 0 bytes, `view_proc_definitions.txt` has views only).

## 12. Tables

Owned/primary: `Booking`, `BookingMore`, `BookingCancelDetails`, `GrpBookingDetails`,
`GuestFolio`, `GuestFolioProfDetail`, `GuestFolioAmend`, `RoomOcc`, `PayCharge`.
Shared: `RoomMast`, `RoomCat`, `GuestProf`, `SubGroup`(Company), `RevMast`, `Depart`,
`Enviro`, `GuestMessage`, `VOUCHER_PREFIX`, `PayChargeH`, `PayChargeLog`.
Counts in §1 and §5. Full dictionary: `18_Database/columns_dictionary.txt`.

## 13. Fields

Check-in header (42 cols) and per-room (34 col) lists — verbatim:
`FRONT_OFFICE_LIFECYCLE.md` §2. UI→column mapping (48 measured edits → DB columns):
`CHECKIN_FIELD_MAP.md` §4.

## 14. Workflow

Spec §14's 17-step lifecycle, as implemented:

```
Login → Business Date (Enviro.ncur)
→ Reservation (Booking / BookingMore / GrpBookingDetails)
→ Arrival / Walk-in → Check-In (GuestFolio + RoomOcc)  [two-step insert]
→ Stay (Room Change / Rate Plan Change / Amend / Merge / Discount)
→ Posting (fdPostChrg → PayCharge) → Advance/Payment (fdPaymentCharge)
→ Folio view (fdDisplayFolio / InHouseGuestFolio)
→ Check-Out (RoomOcc.CHKOUTDATE) → Re-print (frmFomB)
→ Settlement (FdReSetlement) → Invoice (BillPrint.rpt …)
→ Night Audit (10_Night_Audit: date roll + room status roll)
```

Mermaid: `flowcharts/workflow.mmd`. Map for all 17 spec rows (incl. No-Show, Refund,
Transfer which map to `[INFERRED]`/dead arms): `notes/notes.md` §Spec-14-coverage.

## 15. Screenshots

37 PNGs in `screenshots/05_Front_Office/` (root capture store) — manifest, per-screen
mapping and coverage gaps: `screenshots/README.md` `[VERIFIED-UI]`.
Key captures: `C4_WalkInCheckIn_Form.png` (form control dump basis), `B034`, `C3_S1`,
`B033` (Operations dropdown), `B040` (Bill Reprint), `B041` (Reverse Check Out).

## 16. Test Cases

Read-only QA script (no Save/Delete/Post — see §17): `notes/notes.md` §QA-checklist,
covers strip-tab reachability, menu expansion, dead-arm visibility, report viewers.

## 17. Known Issues

| # | Issue | Evidence |
|---|---|---|
| 1 | `Check In Group With Reservation` menu row → **dead arm** (no form) | L478248–478251 |
| 2 | `Change Guest Information` menu row → **dead arm** | L478284–478287 |
| 3 | `Advance Deposit` dispatch → **dead arm** (form reached only from inside check-in) | L477776 |
| 4 | `WalkIn CheckIn` dispatched **twice** in two chains (L477785 + L478236) | duplicate-arm |
| 5 | Builder root `Front Desk` ≠ runtime root `Front Office` | menu_tree L194 vs MenuHelp L141 |
| 6 | `Forex Receive Entry`/`House Keeping Screen`/`Travel Agency Posting` in builder, absent from SA runtime menu | MenuHelp OPT1=14 |
| 7 | Runtime-only `Tax Reports` group absent from builder hex `E` | MenuHelp L198–200 |
| 8 | `GuestStat`, `GuestMessage`, `BookingMore` = 0 rows (dormant features) | `[VERIFIED-SQL]` |
| 9 | `Room Status` opens guest-folio viewer, not a dedicated status screen | L480384 |

## 18. Migration Notes

- Port the **two-step check-in** as one DB transaction (header + rows) — same invariant as VB6.
- Keep `DocId` serial generation on `VOUCHER_PREFIX` (single writer — VB6 uses no NoLock here).
- Preserve audit columns (`U_AE/U_Name/U_EntDt/LogSite_Code`) on every write; the modern port's
  `action_log.csv` already models this pattern.
- `GUESTSTAT`/`GuestMessage`/`BookingMore` can be deferred (0 rows ⇒ no production dependency).
- Both dispatch chains must be unified into one caption→handler table (fixes dead arms by
  explicit "not implemented" mapping rather than silent no-op).
- Reports: reuse generic viewer pattern (`rFomRepView` + `GRepFormName`) → one report host + params.
