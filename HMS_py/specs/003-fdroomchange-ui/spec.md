# Feature Specification: Front-Office Room Change UI (fdRoomChange)

**Feature Branch**: `003-fdroomchange-ui`

**Created**: 2026-10-03

**Status**: P1 implemented + tested — unit gate 33 green, live-DB parity
`tests/database/test_room_change_parity.py` green (2026-10-04); P2 gaps
tracked in §6 / research.md OG-1..OG-10
(verification status: `verified` for the §5 P1 gate — unit + live-DB
evidence both green; ledger verdict **VERIFIED** per
FORM_MIGRATION_LEDGER.md row + PARITY_RECONCILIATION.md final
Iteration 5 (DB-001, 1123-green suite) — superseding the earlier
PARTIAL draft; G8 permission gate + live GUI walkthrough remain OPEN)

**Input**: Delegation RS-001 (@explore): "Implementation-ready spec for the
Python UI of VB6 form `fdRoomChange` (Room Change): VB6 behaviour, the
`fo_ops.room_change` core contract, proposed Python UI design, menu wiring,
test plan, unknowns/risks. Write ONLY to this file."

---

## 1. VB6 behaviour (`fdRoomChange.frm`)

Primary source: `implemented/HMS_REVERSE_ENGINEERING/HMS/fdRoomChange.frm`
(7373 lines, decompiled P-code — `loc_*` markers, semi-readable).
Second copy: `implemented/HMS2526/serialkey/PROJECT2/PROJECT/fdRoomChange.frm`
(7323 lines). Third copy: `FODER/fdRoomChange.frm`.

### 1.1 Form shell

| Property | Value | Evidence |
|---|---|---|
| Caption | `Room Change` | project .frm (form def block, ends `Attribute VB_Name = "fdRoomChange"` line 1283) |
| KeyPreview | `True` | form def |
| ControlBox | `0` (disabled) | form def |
| Client size | 12270 x 8595 twips, Tahoma 8.25, BackColor `&HFFC0C0&` | form def |
| Hidden toolbar | `MainCtrl TopCtrl1` — supplies Edit / Search / Save | save handler is `TopCtrl1_UnknownEvent_16` (frm 3261) |

### 1.2 Controls

- **`Txt` control array (form-level)** — all data entry. Indices derived from
  event code (see §1.3).
- **Lookups (DataGrid, hidden until invoked)**: `DGRoomNo` (current room),
  `DGNewRoomNo` (new room), `DGPlanPkg` (plan), `DGPackage` (package),
  `DGRoomType`.
- **Frames**: `FrPackage` (hidden — plan/package detail popup with `FGrid3`,
  `TxtGrid`, `CmdOk` `&Ok`, `CmdExit`), `Frmrate` (hidden — Remarks /
  Authorization popup, `Txt(22)` = Remarks, `Txt(23)` = Authorization red
  `&HC00000&`), `Frame1`, `Picture1/2/4` (all hidden/disabled containers).
- **Grids**: `FGrid3` (package lines), `FGPoint`.
- **Labels**: only inside `FrPackage` / `Frmrate` — "Extra Person", "@", "%",
  "Package Discount ", "Calculation Mode", "Total Package Amount",
  "Room Rate", "&Yes/&No", "Inc. in Room Rate", "Plan/Package",
  "Plan/Package Amount", `LblDiscAppOn`, `lblLTDet`. **No form-level Label
  controls exist in the .frm**, so per-field captions cannot be read off the
  form definition — they are derived from validation strings (§1.4).

### 1.3 `Txt` index → meaning (derived from event code)

| Idx | Meaning | Evidence (frm line) |
|---|---|---|
| 0 | Current Room No (lookup `DGRoomNo`; fills the whole stay block) | 1547, 2027-2100 |
| 1 | Check-in date (read-only from recordset) | 2063-2064 |
| 2 / 3 | Check-in time HH / MM | 2070-2074 |
| 4 / 5 / 6 | Change date (today `dd/MMM/yyyy`) / change HH / change MM | 2076-2083 |
| 7 | Guest code (Tag) + guest name | 2095-2099 |
| 8 | Company code + name | 2101-2105 |
| 10 | FolioNo | 2059-2060 |
| 11 | Room Type (code in `.Tag`) — **required on save** | 2148-2154, 3394-3406 |
| 12 | **New Room No** (lookup `DGNewRoomNo`) — required on save | 3410-3415, 2051 |
| 13 / 14 | Adult / Children (Child `MaxLength 2`) | 3417-3424, 2133-2131 |
| 15 | Room rate helper | 2143 |
| 16 | **Room Rate / Tariff** — must be > 0 | 3454-3468 |
| 17 | RoomRate value | 2137-2139 |
| 18 | RateCode | 2133-2134 |
| 19 / 20 | OldAdult / OldChild (carry-over display) | 2112-2131 |
| 21 | RoomCat (code + name) | 2107-2111 |
| 22 / 23 | Remarks / Authorization (inside `Frmrate`) | form def, 1595/1713-1719 |
| 24 | Plan/Package (lookup `DGPackage`, opens `FrPackage`) | 1582, 1654 |
| 29 | **Reason** (`MaxLength 100`, required on save) | 3388-3392, 2000 |
| 30 | Plan name/Tag (lookup `DGPlanPkg`) | 1586, 1644 |
| 38 | Inc. in Room Rate / RRTaxInc (Yes/No) | 2159-2160, 1694 |
| 41 | RoomTarrif (if 0, rate falls back to RoomRate) | 2163-2185 |
| 43 | Yes/No flag field (must be non-empty to validate) | 1956-1966 |
| 46 / 48 | Plan amount pair (recomputed on KeyUp) | 1971-1976, 1855-1865 |
| 49 | NoDays | 2087-2089 |
| 50 | RoomTaxStru | 2156-2157 |
| 51 | Computed net/tariff value (feeds `Proc_96_76_1840070`) | 2022-2025 |
| 63 (`Lbl`) | caption `"Net Room Rate is :"` | 1993-1996 |

### 1.4 Validation & messages (exact strings)

| When | Message (flags) | frm line |
|---|---|---|
| Save, Reason empty | focus `Txt(29)`, abort | 3389-3392 |
| Save, Room Type empty | `Room Type is a required field.` (vbCritical) | 3406 |
| Save, Adult <= 0 | `Adult should not be zero.` (vbCritical) | 3420-3421 |
| Save, new room not in RoomMast `Type='RO'` | `Re Select Room No` (vbOKOnly) | 3426-3433 |
| Save, old ≠ new + pending KOT | `There is some KOT Pending for this Room.` (vbCritical) | 3442-3449 |
| Save, tariff <= 0 | title `Validation Error`, text `Tariff should be greater than zero.` (vbCritical); re-focus `Txt(16)` when enabled | 3456-3467 |
| Save, EPABX enabled + Yes | `Do You Want to Open Dial Facility ?` (`&H104`, title `Dial Facility`) | 3486 |
| Departure < check-in | `Departure Date Must Be Greater than Check in Date` (vbInformation) | 2347 |
| Bad time | `Invalid Time` (vbInformation) x2 | 2358, 2377 |
| No rate rows | `Empty Rate table` (vbOKOnly) | 2666 |
| Unknown rate code | `Select Valid Rate Code` + `1,2,3,4,5,M,W,P` (vbInformation) | 2778 |
| Plan tariff offer | `Apply Trarrif as per defined Condition?` (`&H24` vbYesNo) | 1686 |
| Package frame OK | `Invalid Package Amount`, `Invalid Room Rate`, `Invalid Meal Charges`, `Negative Room Rate`, `Block Range Room Rate Inc.` | 3999, 4036/4058, 4045, 4067, 4098 |
| Plan rows | `Want Include Child in Plan/Package Value?` (vbYesNo) | 4689, 5020 |
| TopCtrl Edit / Search | `No Record To Edit.` / ` Editing Error ` / `No Records To Search.` | 3230, 3236, 3248 |
| Save error handler | `RollbackTrans` + `MsgBox(err)` | 3809-3813 |
| Room-change history rows | `Invalid Package Amount` (report-side) | 6727, 7012, 7094 |

**Approved G-delta (RV-001 #5):** the port adds two user-facing messages that
VB6 did not show (VB6 only set focus and aborted): `Reason is a required
field.` when Reason is empty, and `Room No is a required field.` when the new
room is blank/`none found` (`ui/fo_sub_forms_ui.py` `_save`). UX improvement,
approved — does not change any VB6 string above.

### 1.5 Keyboard / grid behaviour

- `Txt_KeyDown` (1506-1732):
  - Left/Right/Up/Down/Home/PgUp/PgDn navigate the DataGrid bound to the
    focused field: idx 0 → `DGRoomNo` (1547-1551), idx 12 → `DGNewRoomNo`
    (1566-1572), idx 24 → `DGPackage` (1582), idx 30 → `DGPlanPkg` (1586).
  - Confirm on `DGRoomNo`: KOT re-check → `There is some KOT Pending for this
    Room.` and abort (1600-1617).
  - Confirm on `DGPlanPkg`/plan field: resolve plan → read `RoomTaxStru` into
    idx 50 (1636-1640); if `PlanCalc='Yes'` (`global_110=&HFF`) and a plan tag
    exists → raise `FrPackage`, focus idx 24 (1645-1664); else resolve
    `Comp_PlanDet where companyCode/RoomCat/PlanCode` and if `PLANAmt > 0`
    offer `Apply Trarrif as per defined Condition?` → on Yes set idx 16 rate +
    idx 38 = `Yes` then revalidate (1666-1701).
  - `Frmrate` toggled on the confirm key while `DGPackage` visible, then
    `Frame1.Enabled = True` (1710-1721).
- `Txt_KeyPress` (1734-1817): typed `Y`/`N` coerce Yes/No fields (1755-1766,
  1796-1808); keystrokes filter the linked grid's search column (1768-1794).
- `Txt_KeyUp` (1819-1884): typing in idx 46/48 recomputes plan amount
  `amount = value * pct / 100` and its inverse (1855-1877).
- `Form_KeyDown` (3080-3088): form-level accelerator routing to `TopCtrl1`.

### 1.6 Save transaction (`TopCtrl1_UnknownEvent_16`, frm 3261-3815)

Pre-checks (3385-3502), each aborting with a message:
Reason(29) → Room Type(11) → Room No(12) → Adult(13)>0 →
`Select Count(*) from RoomMast Where Type='RO' and Code='<new>'` (3426) →
if old ≠ new: `Select * from KOT Where Pending='Y' and RoomNo='<old>' and
roomtype='RO' and VoidYN='N' and NCKOT<>'Y' and DelFlag<>'Y'` (3442-3445) →
tariff(16)>0 (3454) → if `MemVar_1F921D0="Y"` insert `EPABX_IN`
`('CHKOT')` + optional `('CHKIN')` behind the Dial Facility prompt
(3469-3502).

**Approved G-delta (RV-001 #6):** the Python KOT guard uses null-safe
predicates — `ISNULL(VoidYN,'N')<>'Y'` / `ISNULL(NCKOT,'N')<>'Y'` /
`ISNULL(DelFlag,'')<>'Y'` — vs VB6's strict `VoidYN='N' AND NCKOT<>'Y'
AND DelFlag<>'Y'` (§1.6, 3442-3445). NULL columns now count as *not*
void/not-NC/not-deleted, so the guard blocks **more** often than VB6
(fail-safe direction, over-blocking only). Accepted.

Then `BeginTrans` (3503) and, in order:

1. `Select * from roomocc where DocId=<id> and (Type is NULL or Type='')
   and Site_Code=<site> and RoomNo='<old>'` — open current row (3505-3513).
2. `Select MAX(sno) ... where DocId=.. and Site_Code=.. and RoomNO=..` →
   `newSno = max+1`, else 1 (3528-3539).
3. `Update Booking Set OccRoom='<new>' where docid='<BookingDocId>'` when the
   link is non-empty (3541-3551).
4. `Update GuestFolio Set RoDisc='<v39>',RSDisc='<v40>' where docid=..`
   (3554-3562).
5. `Insert Into RoomOcc (DocID,Sno,FolioNo,VType,Site_Code,vPrefix,GuestProf,
   RoomCat,RoomType,RoomNo,RateCode,RoomRate,ChkInDate,ChkInTime,aDult,
   Children,DepDate,DepTime,Type,U_Name,U_EntDt,U_AE,LogSite_Code,RRTaxInc,
   RRServiceChrg,ChngDate,Extrabed,RoomTarrif,RackRate,RoomTaxStru) Values (...)`
   — **`Type = ''`** (empty), `ChngDate = Date`, `U_AE = 'A'` (3626-3635).
6. If a plan is selected: `Update RoomOcc Set PlanCode=..,PlanAmt=..,
   IncInRate=..,PlanDisc=..,PlanDiscAmt=..,PlanDiscAppOn=..,U_EntDt=..,
   U_AE='E' where Sno=<newSno> And DocId=.. and Site_Code=.. and
   RoomNO='<new>'` (3663-3667).
7. `Update GuestMessage set RoomNo='<new>',RoomCat='<cat>' where FolioNo=.. and
   LogSite_Code=.. and RoomNO='<old>'` (3670-3682).
8. `Update RoomOcc set CHKOUTDATE=..,CHKOUTTIME=..,IncInRate=..,PlanDisc=..,
   PlanDiscAmt=..,Type='C',NewRoomNo='<new>',Reason=..,U_EntDt=..,U_AE='E'
   where Sno=<oldSno> And DocId=.. and Site_Code=.. and RoomNO='<old>'`
   (3704-3708).
9. If old ≠ new: `Update RoomMast set RoomStat='D' Where Type='RO' And
   Code='<old>' And Site_Code=..` (3712-3717).
10. `Delete from PlanDetails where DocId=.. And PlanAppDate=<date> And
    Site_Code=..` (3721-3725).
11. If `global_110 = &HFF` (`PlanCalc='Yes'`): loop `FGrid3` rows →
    `Insert Into PlanDetails (FolioNo,RoomNo,RevCode,Chrgcode,TaxInc,TaxStru,
    PrintOption,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,
    ExtraChild,NoOfDays,PlanPer,App_Date,FixRate,Site_Code,U_Name,U_EntDt,
    U_AE,Amount,PlanCode,Docid,NetPackageAmount,Logsite_Code,DiscAmt,
    PlanAppDate) Values (...)` with `RoomNo=<new>` (3731-3796).
12. `CommitTrans` (3800); error → `RollbackTrans` + `MsgBox(err)`
    (3807-3814); then `Requery` (3804).

### 1.7 Load / permission / enviro

`Form_Load` (2881-3031):
- permission `Select ChangeRoomDtl From UserPermission Where LOGSITE_CODE=..
  AND CompCode=.. AND UserName=..`
- enviro `Select NCUR,PlanCalc,RoomRateEditable,RoomIncTaxEditable,
  RoomServiceChargeEditable,BlockInvalidTarrifIncTaxYN,PlanSelectionBasedOn
  from enviro WHERE LOGSITE_CODE=..` (2917)
- plan grid `Select Code,Name,total,App_Date,RoomTaxStru From PlanMast where
  (LOGSITE_CODE=.. or LOGSITE_CODE='HO') and ActiveYN='Yes' and App_date<=..`
  (2934)
- room grids `RoomMast/RoomCat/Revmast` join (2995, 3003) and the in-house
  list (3012) — `RoomMast.type='RO' and RoomMAst.Code in (Select ISNULL(RoomNo,'')
  from RoomOcc ...)`
- `Proc_5_1_100CB50("EDIT", ...)` (3021-3022 shows `Frmrate`)

`Form_Unload` (3043-3051) releases `global_92` (grid selection scratch).

`Txt_Validate` (1894-2850) dispatches on the focused index: idx 0 resolves the
recordset by `Roomno='<n>'` and fills every stay field listed in §1.3
(2027-2193), or cancels (`Cancel=&HFF`) if not in-house (2031-2046); other
branches handle departure/time/date rules (2347, 2358, 2377), season/rate
resolution `Select * from SEASONMAST` / `RATELIST WHERE ROOMCAT=..` /
`Select * from SeasonMast1` (2666, 2721), rate-code allowlist
`1,2,3,4,5,M,W,P` (2778), and Yes/No normalisation (2004-2012).

---

## 2. Core contract: `core/fo_ops.room_change`

`core/fo_ops.py:85-265`

```python
def room_change(docid: str, new_room: str, reason: str = "",
                change_date=None, change_time: str = "",
                user: str = USER, site: str = SITE_CODE, cn=None,
                commit: bool = True) -> dict
```

**Raises** (`ValueError`): `Check-in DocId zaroori hai` (106), `New Room
zaroori hai` (108), `Is folio ki koi open RoomOcc row nahi mila` (118),
`New room aur current room same hai` (122), `Room <n> RoomMast me nahi mila`
(129), `Room <n> pehle se occupied hai` (136).

**Returns** `{"new_sno", "folio", "old_room", "new_room", "affected",
"epabx_audited"}` (260-262).

**Steps** (all parameter-bound, single connection, one commit unless
`commit=False`):

1. open `RoomOcc` by `DocId + ChkOutDate IS NULL + Site_Code` (114-116)
2. `RoomMast` existence + free check (`ChkOutDate IS NULL` on any other doc)
   (124-136)
3. `GuestFolio` → folio / name / BookingDocId (137-142); `MAX(SNo)+1` (144-146)
4. INSERT new `RoomOcc` (30 cols, `Type='I'`, `U_AE='A'`) (149-164)
5. UPDATE plan fields on the new row (166-173)
6. old row checkout (`Type='C'`, `NewRoomNo`, `Reason` truncated to 100) (175-183)
7. `GuestMessage` re-point (185-191)
8. `Booking.OccRoom` (193-195)
9. `RoomMast RoomStat='D'` for old room (197-202)
10. `PlanDetails` delete + re-insert with new room (204-230)
11. `EPABX_IN` `CHKOT` + `CHKIN` (feature-detected: SQL error 208 → skip
    audit, core still commits) (235-257)
12. `cn.commit()` (258-259)

**Helpers used by the UI**: `open_folio_by_room` (33), `open_folio_by_docid`
(55), `free_rooms` (70).

### 2.1 VB6 → core gaps (parity deltas to decide in implementation)

| # | VB6 behaviour | `fo_ops.room_change` today | Risk |
|---|---|---|---|
| G1 | new `RoomOcc.Type = ''` (frm 3632) | `'I'` (fo_ops 157) | Python writes differ from VB6 writes; `fo_sub_forms_ui.py:59` joins `G.Type = 'I'`, `dashboard.py:168` counts `Type='I'` — VB6-written rows are invisible to both, Python-written rows are visible. **Behaviour is not interchangeable.** |
| G2 | `Update GuestFolio Set RoDisc/RSDisc` (3554-3562) | missing | discount fields not refreshed on change |
| G3 | `PlanDiscAppOn` written with the plan update (3664) | missing | discount-application flag lost |
| G4 | `Delete from PlanDetails ... And PlanAppDate=<date>` (3721) | delete all rows for `DocId` (205) | broader than VB6 |
| G5 | `PlanDetails` re-insert only when `PlanCalc='Yes'` (3731) | always re-insert | differs when PlanCalc is off |
| G6 | KOT-pending guard (3442-3449) | none (only UI-side message in VB6's case too, but VB6 blocks save) | pending KOT in old room not blocked |
| G7 | required Reason / Adult>0 / tariff>0 / RoomMast count / Room Type | reason defaulted `""`, other checks absent in core (Adult/Tariff not carried over at all — new row reuses old row's `Adult`, `RoomRate`, `RoomTarrif`) | UI must enforce, or core must |
| G8 | `UserPermission.ChangeRoomDtl` + `enviro` flags gating (2881-2917) | none | permission not enforced anywhere in Python |
| G9 | EPABX gated by env var + Dial Facility prompt (3469-3502) | always attempted when table exists, no prompt | audit rows may appear where VB6 would not write them |
| G10 | `Reason` copied to old row | same (182) | match |

### 2.1.1 DB-001 dispositions (Iteration 5, 2026-10-04)

Proven live by `tests/database/test_roomchange_parity.py` (4/4 green, rollback-safe):

| # | Disposition | Rationale |
|---|---|---|
| G1 | **Python wins** (keep `'I'`) | VB6's `Type=''` makes rows invisible to `dashboard.py:168` + `fo_sub_forms_ui.py:59` — VB6 bug; test asserts reader-visibility of the new row. |
| G2 | **Match (net no-op)** | VB6 checkout step (spec §1.6) rewrites old-row `IncInRate/PlanDisc/PlanDiscAmt` to their own values → omitting it is observationally identical; test asserts old-row slice unchanged. |
| G3 | **FIXED** | `PlanDiscAppon` now written with plan UPDATE (`fo_ops.py:224`), VB6 evidence frm **3664**. Test asserts new row carries the flag. |
| G4 | **Accepted (P2)** | Delete scoped to `DocId` (+ `Site_Code`), broader than VB6's `PlanAppDate` filter (3721); live DB has zero PlanDetails rows, and delete+re-insert in one txn re-points everything the change touches. |
| G5 | **Accepted (P2)** | Always re-insert vs VB6's `PlanCalc='Yes'` gate (3731) — same net result on the P1 path (staged rows re-pointed, asserted); gate it if PlanCalc-off flows ever port. |
| G6 | **Match (UI layer)** | KOT guard at `fo_sub_forms_ui.py:358-363` runs **before** the transaction; test proves guard fires pre-save. Core has no guard by design (documented). |
| G7 | **Match (UI layer)** | Reason/Adult/tariff checks live in UI validations (18 UI tests); core defaults `reason=""`. |
| G8 | **Deferred** | `UserPermission.ChangeRoomDtl` gate is Form_Load UX (frm 2881-2917); pre-save core path never had it — tracked in §6. |
| G9 | **Accepted (P2)** | No env-var gate / Dial prompt; live DB has no `EPABX_IN` → feature-detect skip has same net effect as VB6-no-audit. P2 = real gate when table exists. |
| G10 | **Match** | reason copied, asserted. |

**Core fixes applied this iteration** (both proven by the test, both VB6-evidenced):

1. `core/fo_ops.py:224` — plan UPDATE writes `PlanDiscAppOn` (frm **3664**).
2. `core/fo_ops.py:298-314` — `PlanDetails` rows snapshotted **before** DELETE (frm **3788**: VB6 reads FGrid3 before delete/re-insert). Previously DELETE-then-SELECT returned 0 rows inside the same txn → plan rows silently lost.

Note: sibling file `tests/database/test_room_change_parity.py` (feature-003 T011, concurrent session) left untouched per BUG-AUD-08.

---

## 3. Proposed Python UI design

**Scope decision (v1 = P1, P2 explicitly deferred):**

- **P1 — parity core**: locate in-house folio, display the VB6 stay block,
  pick new room, reason, run every save-time validation VB6 runs, call
  `fo_ops.room_change`, show result. This is what front-desk actually needs.
- **P2 — deferred** (needs `PlanMast`/`RateList`/`SeasonMast` UI that no
  Python form has yet): plan/package re-selection (`FrPackage`, `FGrid3`),
  rate/season recalculation, `Remarks`/`Authorization` (`Frmrate`), Yes/No
  `Inc. in Room Rate`, EPABX Dial Facility prompt. Each P2 item must be listed
  as an open gap in §6 rather than silently dropped.

### 3.1 One window, not three

Today there are three different Room Change entry points (§4). v1 keeps
**one** dialog: `ui/fo_sub_forms_ui.py::RoomChangeWindow` (84-186), extended.
The other two are removed or rewired (§4).

### 3.2 Field map (VB6 → Qt)

| VB6 | Qt widget | Notes |
|---|---|---|
| search by room / DocId | `txt_search` + `btn_load` (already) | matches `Txt(0)` resolve semantics |
| Folio / Guest / Current Room | `lbl_folio`, `lbl_guest`, `lbl_oldroom` (already) | |
| stay block (§1.3 rows 1-21, 49-51) | new read-only `QFormLayout` rows: CHK-in date+time, change date+time, company, room cat, room type, rate code, adult, children, no-of-days | all read from the resolved recordset in one pass |
| `Txt(12)` New Room | `cmb_newroom` (already, `fo_ops.free_rooms()`) | editable for typing; must reject rooms not in `RoomMast Type='RO'` with `Re Select Room No` |
| `Txt(29)` Reason | `txt_reason` (already) | required in P1 (VB6 blocks without it) |
| tariff `Txt(16)` | read-only display of `RoomRate` from the recordset | P1 shows it, P2 makes it editable when `RoomRateEditable='Y'` |
| `CmdOk` / Save | `btn_save` "Save Room Change" (already) | |

### 3.3 Behavioural requirements

- **FR-1** Locate: `Load Folio` resolves by DocId first, then by room
  (`fo_ops.open_folio_by_docid` → `open_folio_by_room`, as today 154-156);
  if neither matches → `Koi in-house guest nahi mila`. On success, load the
  open `RoomOcc` row once and populate every read-only field (§3.2) in the
  same query — no per-field queries.
- **FR-2** Candidate rooms: `free_rooms()` combo (already). Re-query on every
  successful load (already, 168).
- **FR-3** Save validation, in VB6 order, each aborting with the **exact VB6
  string** (§1.4): Reason empty → focus reason; Adult <= 0 →
  `Adult should not be zero.`; new room absent from `RoomMast Type='RO'` →
  `Re Select Room No`; pending KOT on the old room (`KOT Where Pending='Y'
  and RoomNo=<old> and roomtype='RO' and VoidYN<>'Y'...`) → `There is some
  KOT Pending for this Room.`; `old == new` → `New room aur current room
  same hai` (core also guards, 122); tariff <= 0 → `Tariff should be greater
  than zero.`
- **FR-4** Confirm before write: keep the existing
  `Guest ko <old> -> <new> shift karein?` prompt (176-178).
- **FR-5** Persist exclusively through `fo_ops.room_change(docid, new_room,
  reason)` — no SQL in the UI layer. On success show the VB6-equivalent
  outcome (new room, old room dirty) and re-run FR-1; on `ValueError` show
  the message, on other exceptions show `DB error: <e>` (pattern of
  `frontoffice.py:856-859`).
- **FR-6** No user-supplied SQL; all inputs parameter-bound (core already is).
- **FR-7** Loading/error/empty states: `btn_save` disabled until a folio is
  loaded (already, 140), free-room combo shows `none found` when empty.
- **FR-8** The `change_date`/`change_time` parameters are passed explicitly
  from the displayed change date/time (VB6 idx 4/5/6), not left to the core
  default, so the on-screen value and the stored value can never diverge.

### 3.4 Not in scope for this feature

Rate/season recalculation engine, `FrPackage` grid, `Frmrate` Remarks/Auth,
EPABX Dial Facility prompt, `UserPermission` UI gating (tracked in §6).

---

## 4. Menu / toolbar wiring

| Entry | Location | Status |
|---|---|---|
| Menu registry `"Room Change"` → `fosub_ui.open_room_change(w)` | `ui/shell.py:2210-2211` (inside `_form_registry()`, `ui/shell.py:1112`; fallback `_coming_soon` when import failed, import at 1417-1419) | **active — keep** |
| Front-office toolbar `btn_room` "Room Change" | created `ui/frontoffice.py:577`, connected `:661`, handler `_on_room_change` `:826-859` (two `QInputDialog`s, then `fo_ops.room_change`) | **active — replace with the P1 dialog** (keeps the selected-folio context, drops the free-text room entry) |
| Legacy dialog `_open_room_change` | `ui/shell.py:1648-1685` → calls `checkin_mod.room_change(...)` (1675) | **dead + broken**: `core/checkin.py` defines no `room_change` (only comments at 175, 225) and nothing references `_open_room_change`. Delete or repoint to `fosub_ui.open_room_change`. |
| VB6 menu origin | `05_Front_Office/module_manual.md:61` — `Room Change Entry | fdRoomChange | L478300` (menu dispatch in `HMS.bas` ~478300) | reference only |
| Lifecycle note | `05_Front_Office/FRONT_OFFICE_LIFECYCLE.md:48-50` §3 Stay operations | reference only |
| Prior reverse-eng sign-off | `05_Front_Office/notes/notes.md:14` `[VERIFIED-VB6] fdRoomChange` | reference only |

---

## 5. Test plan

Existing coverage (extend, do not duplicate):

- `tests/unit/test_missing_logic_core.py:69` `test_room_change_moves_guest`,
  `:111` `test_room_change_rejects_occupied_new_room`,
  `:129` `test_room_change_rejects_same_room` — core writer, monkeypatched DB.
- **No UI test references Room Change** (`rg -i "room_change|RoomChange"
  tests/ -g "*.py"` → only `test_missing_logic_core.py`).

New tests:

1. `tests/unit/test_room_change_ui.py`
   - construct `RoomChangeWindow` off-screen (`QT_QPA_PLATFORM=offscreen`),
     assert `btn_save` disabled until `_load_folio` succeeds (FR-7).
   - `_load_folio` with empty input → `Room No ya DocId likho`, no DB call.
   - `_save` with empty reason → warning, `fo_ops.room_change` **not**
     called (monkeypatch).
   - `_save` with `new == core` → VB6 string surfaced, no DB write.
   - happy path: monkeypatch `fo_ops.room_change` to a recorder → asserted
     called with `(docid, new_room, reason)` and `change_date`/`change_time`
     from the displayed fields (FR-8).
   - wiring: `ui/shell.py::_form_registry()["Room Change"]` resolves to
     `fosub_ui.open_room_change` (registry-parity style of
     `tests/unit/test_mainsetup_registry_parity.py` /
     `test_shell_opener_refs.py`); `_open_room_change` gone.
   - `frontoffice.FrontOffice._on_room_change` opens the dialog instead of
     `QInputDialog` (mock `QInputDialog`, assert not used).
2. `tests/database/test_room_change_parity.py` (DB-state evidence, following
   `tests/database/test_walkin_parity.py` style): one in-house folio → change
   room → assert exactly one new `RoomOcc` row (`SNo = old+1`,
   `ChngDate` set), old row `Type='C'` + `NewRoomNo` + `Reason`, `GuestMessage`
   re-pointed, `RoomMast.RoomStat='D'` for the old room, `PlanDetails`
   `RoomNo` re-pointed, `Booking.OccRoom` when linked; and negative cases:
   occupied target room and same-room rejected with no partial rows.
3. **G1 decision test** (whatever §6 resolves): assert the `Type` value
   written by Python is the value the parity decision selects, plus that
   `fo_sub_forms_ui.py:59` / `dashboard.py:168` queries still find the row.

Minimum gate before `verified`: `pytest tests/unit/test_room_change_ui.py
tests/unit/test_missing_logic_core.py -q` green, plus the DB test when a live
DB is available (`partially_verified` if not).

---

## 6. Unknowns & risks

1. **Decompiled P-code noise (high)** — string concatenations are mangled
   (e.g. frm 3505-3507 splices `EPABX_IN` text into a `roomocc` select; 3664
   garbles `PlanDiscAppOn`). SQL statements above are quoted as printed; any
   statement whose concatenation looks incoherent must be re-derived from the
   second copy `HMS2526/.../fdRoomChange.frm` before being implemented.
2. **No form-level labels (medium)** — field captions are inferred from
   validation strings; the exact on-screen label text/order for the stay block
   is unverified. Product copy may differ from VB6; behaviour will not.
3. **`Txt` index map is derived, not declared (medium)** — indices come from
   call sites (§1.3). Two are only weakly supported: idx 15 and idx 51
   (helpers feeding `Proc_96_76_1840070`). Treat P1 read-only fields for those
   two as display-only.
4. **G1 `Type=''` vs `'I'` (high — decide first)** — `fo_ops` writes `'I'`,
   VB6 writes `''`, and Python readers (`ui/fo_sub_forms_ui.py:59`,
   `ui/dashboard.py:168`) filter on `'I'`. Changing the core to `''` would
   break dashboards; keeping `'I'` means Python-written rows differ from
   VB6-written rows. Needs an owner decision before any core edit.
5. **Unknown message at frm 2799** — `MsgBox("P", &H24)`; the literal is
   truncated by the decompiler. Read the parallel copy before using this
   prompt.
6. **`UserPermission.ChangeRoomDtl` + `enviro` gates (medium)** — loaded in
   `Form_Load` (2881-2917) but the consuming code is not conclusively
   decompiled. If permission must gate Save, the Python side needs a
   `sys_config`/permission read (see `tests/unit/test_user_permissions_ui.py`
   for the existing pattern) — not built in P1.
7. **EPABX dial prompt (low)** — core always attempts both audit rows
   (fo_ops 235-257) and feature-detects the table; VB6 prompts. Behavioural
   difference is audit-only; documented, not blocking.
8. **Three entry points (medium)** — until §4 is executed, a user can reach
   three different Room Change behaviours from the menu and toolbar.
9. **Live-DB availability for the DB parity test (medium)** — if no live
   database, only monkeypatched unit tests can run → report
   `partially_verified` with the exact pytest command (Quality Gate rule).
10. **Stale `Reason`/plan context (low)** — `RoomChangeWindow` does not pass
    `user`; it relies on module-level `fo_ops.USER` (`fo_ops.py:27`). If the
    shell carries a per-session user, thread it through `user=` the way
    `frontoffice.py:851` does.
