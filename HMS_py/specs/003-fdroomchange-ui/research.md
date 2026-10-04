# Research: 003-fdroomchange-ui (fdRoomChange → Python P1)

**Phase 0 output** | **Date**: 2026-10-04 | **Spec**: [spec.md](./spec.md)

All unknowns flagged in the plan's Technical Context are resolved below.
Format: Decision → Rationale → Alternatives considered.

## D1 — G1: `RoomOcc.Type` value written by Python (spec §6.4, HIGH, "decide first")

**Decision (owner, 2026-10-04)**: `fo_ops.room_change` keeps writing
`Type='I'`. No core edit. The delta vs VB6 (`Type=''`, frm 3632) is
documented as **INTENTIONALLY DIFFERENT** in PARITY_RECONCILIATION.md.

**Rationale**: Python readers `ui/fo_sub_forms_ui.py:87` and
`ui/dashboard.py:168` both filter `Type='I'`. Changing the writer to `''`
would make every Python-written room change invisible to the room list and
the dashboard (Constitution VI: that would be a functional regression).
The row-level business semantics (old row `Type='C'` + `NewRoomNo` +
`Reason`; new row open) are identical to VB6; only the literal differs.

**Alternatives considered**:
- *VB6-faithful `''` + widen readers*: full literal parity, but touches
  `dashboard.py` counting behavior outside this feature's scope and inverts
  a query every in-house screen relies on. Rejected for P1; may be revisited
  when the VB6 app is retired (single-writer world).
- *Writer `'I'`, readers accept both*: fixes cross-visibility of VB6-written
  rows, but changes dashboard result sets mid-migration (new rows appear in
  counts). Deferred as a follow-up gap below.

**Consequence**: a Python-written row and a VB6-written row are found by
different filters. Decision test (spec §5.3): assert the Python writer emits
`Type='I'` and that both reader queries still locate the row.

## D2 — Decompiled P-code noise (spec §6.1, HIGH)

**Decision**: treat spec §1 SQL quoted from the decompiled `.frm` as
directional; implement only what the Python side actually executes (all
pre-checks already implemented with exact message strings). Any SQL whose
decompiled concatenation looks incoherent (frm 3505-3507 `EPABX_IN` splice,
frm 3664 `PlanDiscAppOn` garble) is NOT implemented in P1 — it belongs to
deferred P2/EPABX work, which must re-derive from the parallel copy
`implemented/HMS2526/.../fdRoomChange.frm` first.

**Rationale**: P1 writes only through `core/fo_ops.room_change`, whose SQL is
already live Python code, not decompiled text. The decompiler risk
therefore never reaches the P1 write path.

**Alternatives considered**: re-derive every mangled statement up front —
rejected as unbounded work for statements P1 does not execute.

## D3 — No form-level labels / derived `Txt` index map (spec §6.2, §6.3, MEDIUM)

**Decision**: stay-block captions are product copy, not VB6 artifacts; the
implemented labels (Folio, Guest, Current Room, Check-In, Change Date/Time,
Company, Room Type, Room Category, Rate Code, Adult, Children, No of Days,
Tariff) are stable. Weak indices 15 and 51 are not rendered as editable
fields (display-only Tariff covers them).

**Rationale**: Constitution IV requires behavioral fidelity, not label
byte-parity; the spec explicitly states "Product copy may differ from VB6;
behaviour will not."

**Alternatives considered**: none needed — no behavior depends on captions.

## D4 — Line-number drift between spec and current code (discovered 2026-10-04)

**Decision**: cite verified current anchors in all artifacts:

| Anchor | Spec said | Actual (2026-10-04) |
|---|---|---|
| `RoomChangeWindow` | `fo_sub_forms_ui.py:84-186` | `:119` (`_load_folio` `:229`, `_save` `:329`) |
| `open_room_change` | — | `fo_sub_forms_ui.py:893` |
| Menu registry | `shell.py:2210-2211` | `shell.py:2686-2692` |
| Toolbar handler | `frontoffice.py:826-859` | `_on_room_change` `:1000`, `btn_room` `:700`, connect `:813` |
| `fo_ops.room_change` | `fo_ops.py:85-265` | `:85` (unchanged) |
| Legacy `_open_room_change` | "delete or repoint" | already deleted; test `test_shell_legacy_open_room_change_removed` guards it |

**Rationale**: the codebase advanced after the spec was written (review round
RV-001 fixes: stale-stay clearing, DB-error containment, signal-before-reload,
session-user threading). Plans built on stale anchors would send tasks at
lines that no longer exist.

**Alternatives considered**: renumber spec §-level claims — out of scope
(spec is a frozen review artifact); drift is recorded here instead.

## D5 — Session user threading (spec §6.10, LOW)

**Decision**: implemented — `RoomChangeWindow(parent, user=...)`,
`open_room_change(parent, user=...)`; menu passes
`getattr(w, "user", None)` (shell.py:2689), toolbar passes `self.user`
(frontoffice.py:1006); fallback `fo_ops.USER`. No further work.

**Rationale**: RV-001 #1 fixed exactly the audit-column leak the spec feared
(PYADMIN/env landing in `U_Name`).

## D6 — Test strategy & live-DB availability (spec §5, §6.9, MEDIUM)

**Decision**: two layers.
1. Unit layer (exists, green): `tests/unit/test_room_change_ui.py` (19 tests,
   off-screen Qt, monkeypatched `fo_ops`/`db.query`) +
   `tests/unit/test_missing_logic_core.py` (13 tests). Gate command:
   `QT_QPA_PLATFORM=offscreen python -m pytest tests/unit/test_room_change_ui.py
   tests/unit/test_missing_logic_core.py -q` → **32 passed, exit 0** verified
   2026-10-04.
2. DB-state layer (to build): `tests/database/test_room_change_parity.py`
   following `tests/database/test_walkin_parity.py` style — real rows
   asserted (new `RoomOcc` `SNo=old+1` + `ChngDate`, old row `Type='C'` +
   `NewRoomNo` + `Reason`, `GuestMessage` re-point, `RoomMast RoomStat='D'`,
   `PlanDetails` re-point, `Booking.OccRoom`; negatives: occupied target and
   same-room leave zero partial rows). Must be skip-guarded on live-DB
   availability; when absent the feature reports `partially_verified` with
   the exact pytest command (spec §5 Quality Gate).

**Rationale**: Constitution VI requires behavioral verification; the unit
layer proves behavior wiring, only the DB layer proves persisted outcomes.

**Alternatives considered**: single mocked layer — rejected (Constitution VI:
test doubles alone are not completion).

## D7 — Validation-order hazard: same-room vs KOT check

**Decision**: keep the implemented order — RoomMast `'RO'` check → KOT
guard (only when old ≠ new) → same-room → tariff — which matches the
implemented flow and VB6 frm 3426/3442/3454 sequence. Covered by tests
`test_save_kot_pending_blocks`, `test_save_same_room_blocked`,
`test_save_tariff_zero_validation_error`.

**Rationale**: VB6 runs the KOT query before the same-room comparison at
save time (it is also re-checked on lookup confirm); the observable outcome
for every input class is identical because a same-room save never reaches
the KOT-guarded branch's abort differently (both abort before `BeginTrans`).

## Open Gaps (tracked, NOT dropped — spec §3.4/§6 + Constitution IX)

| # | Gap | Status |
|---|---|---|
| OG-1 | Plan/package re-selection (`FrPackage`, `FGrid3`, `PlanCalc='Yes'` grid) | P2 deferred |
| OG-2 | Rate/season recalculation (`SEASONMAST`/`RATELIST`, rate-code allowlist `1,2,3,4,5,M,W,P`, `Empty Rate table`) | P2 deferred |
| OG-3 | `Frmrate` Remarks/Authorization popup (`Txt(22)`/`Txt(23)`) | P2 deferred |
| OG-4 | `Inc. in Room Rate` Yes/No (`Txt(38)`) editable + `Apply Trarrif as per defined Condition?` | P2 deferred |
| OG-5 | EPABX Dial Facility prompt (`Do You Want to Open Dial Facility ?`); core writes audit rows unprompted — audit-only behavioral delta | P2 deferred, documented |
| OG-6 | `UserPermission.ChangeRoomDtl` + `enviro` flag gating (frm 2881-2917) — permission not enforced anywhere in Python | P2 deferred; needs `sys_config` pattern (tests/unit/test_user_permissions_ui.py) |
| OG-7 | Room-change history/report rows (frm 6727-7094) — Constitution IX report surface | Deferred with evidence; must be planned as its own migration unit before fdRoomChange can be marked VERIFIED |
| OG-8 | Cross-visibility: VB6-written `Type=''` rows invisible to Python readers (dashboard, room list) | Follow-up after D1; writer unchanged |
| OG-9 | Unknown prompt literal `MsgBox("P", &H24)` at frm 2799 | Must re-derive from second `.frm` copy before any use |
| OG-10 | Live DB availability for DB parity test | If unavailable → `partially_verified` + exact pytest command |
