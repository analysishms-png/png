# Data Model: 003-fdroomchange-ui (fdRoomChange P1)

**Phase 1 output** | **Date**: 2026-10-04 | **Spec**: [spec.md](./spec.md)
| **Plan**: [plan.md](./plan.md)

Read alongside [contracts/room-change-ui.md](./contracts/room-change-ui.md)
(behavioral contract) — this file owns structure, the contract owns behavior.

## Entities touched by one Room Change save

All tables are existing SQL Server schema (Constitution III — nothing
invented; no migrations).

### RoomOcc (central entity — one save = 1 insert + 2 updates)

| Field | Role in room change | Notes |
|---|---|---|
| DocId, Site_Code | join keys; open row = `DocId + ChkOutDate IS NULL + Site_Code` (`fo_ops.py:114-116`) | VB6 also filters `Type IS NULL/''` (frm 3505); Python does not — see research D1 |
| Sno | old row `SNo`; new row = `MAX(SNo)+1` (`fo_ops.py:144-146`) | identity of the pair |
| RoomNo | old row keeps old room; new row gets new room | |
| **Type** | new row `'I'` (**G1: VB6 writes `''` — INTENTIONALLY DIFFERENT, research D1**); old row → `'C'` | state discriminator read by `fo_sub_forms_ui.py:87`, `dashboard.py:168` |
| ChngDate, ChgTime | set on new row (VB6 frm 3632: `ChngDate = Date`) | FR-8: displayed value == stored value |
| NewRoomNo, Reason | written onto the **old** row with `Type='C'` (`fo_ops.py:175-183`) | Reason max 100 chars (VB6 `Txt(29)` MaxLength 100; core truncates) |
| RoomType, RoomCat, RateCode, RoomRate, RoomTarrif, Adult, Children, ChkInDate, ChkInTime, DepDate | copied from old row to new row (carry-over) | Adult/Rate re-validated pre-write (FR-3) |
| PlanCode, PlanAmt, IncInRate, PlanDisc, PlanDiscAmt, PlanDiscAppOn | updated on new row when a plan exists (`fo_ops.py:166-173`) | G3 `PlanDiscAppOn` covered by core already |
| RoDisc/RSDisc refresh on GuestFolio | G2 gap (spec §2.1) — **not** in core today | documented gap, P2 |

**State transition**: open row (`Type='I'`/`''`, `ChkOutDate IS NULL`)
--room_change--> closed (`Type='C'`, `NewRoomNo`, `Reason`, `ChkOutDate`)
+ new open row (`Type='I'`, `SNo+1`).

### RoomMast

- Validate: target room must exist with `Type='RO'` (`Re Select Room No`).
- Post-write: old room → `RoomStat='D'` (dirty) when old ≠ new
  (`fo_ops.py:197-202`).
- Read side: `free_rooms()` = `Type='RO'` minus any open `RoomOcc`.

### GuestFolio

- Read: folio no, guest name, BookingDocId by DocId
  (`open_folio_by_docid`/`open_folio_by_room`).
- Write: `Booking.OccRoom` re-point (`fo_ops.py:193-195`).
- G2 (`RoDisc`/`RSDisc` refresh): open gap.

### GuestMessage

- `RoomNo`/`RoomCat` re-pointed from old to new room by folio + old room
  (`fo_ops.py:185-191`).

### Booking

- `OccRoom = new_room` when a non-empty BookingDocId links the folio
  (`fo_ops.py:193-195`).

### PlanDetails

- Delete for DocId + re-insert with `RoomNo = new room`
  (`fo_ops.py:204-230`).
- G4: Python deletes all rows for DocId; VB6 scopes delete by
  `PlanAppDate` (frm 3721) — documented delta, same end state when one
  plan application is active. G5: VB6 re-inserts only when
  `PlanCalc='Yes'`; Python always re-inserts (spec §2.1).

### KOT (validation only — never written by this feature)

- Pre-check when old ≠ new: pending KOT count on old room
  (`Pending='Y'`, `roomtype='RO'`, not Void/NCKOT/DelFlag) → block save
  with `There is some KOT Pending for this Room.` Null-safe via `ISNULL`.

### EPABX_IN (feature-detected audit)

- Core inserts `CHKOT` + `CHKIN` rows when the table exists (SQL error 208
  → skipped, core still commits, `fo_ops.py:235-257`). No Dial Facility
  prompt in P1 (OG-5).

### Read-only context (stay block, one query — FR-1)

`RoomOcc` + `GuestFolio` + `SubGroup` (company name): RoomNo, ChkInDate,
ChkInTime, RoomType, RoomCat, RateCode, RoomRate, Adult, Children, DepDate,
Company/CompanyName. Computed: NoOfDays = DepDate − ChkInDate.

## UI form-state (RoomChangeWindow instance fields)

| Field | Meaning |
|---|---|
| `_docid` | resolved check-in DocId (set by `_load_folio`) |
| `_roomtype`, `_adult`, `_tariff` | validation inputs for FR-3 (from stay block) |
| `_change_date`, `_change_time` | FR-8: what's on screen is what's saved |
| `user` | audit user (`U_Name`), threaded from shell/toolbar, fallback `fo_ops.USER` |

## Validation rules (save-time, exact order — FR-3)

1. Reason non-empty (focus reason) → 2. RoomType non-empty → 3. New room
non-empty & ≠ `none found` → 4. Adult > 0 → 5. target in `RoomMast Type='RO'`
→ 6. no pending KOT on old room (old ≠ new) → 7. old ≠ new → 8. tariff > 0
→ 9. confirm prompt (FR-4) → persist.

Exact message strings live in the contract, not here.
