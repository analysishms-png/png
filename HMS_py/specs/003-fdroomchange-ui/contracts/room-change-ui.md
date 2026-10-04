# Contract: Room Change UI (P1)

**Phase 1 output** | **Date**: 2026-10-04 | **Spec**: [spec.md](./spec.md)
| **Data model**: [../data-model.md](../data-model.md)

Interface type: **desktop UI contract** (Qt dialog) + the core service
signature it is the sole caller of. Enforced by
`tests/unit/test_room_change_ui.py` (19 tests) and
`tests/unit/test_missing_logic_core.py` (13 tests) — test names per clause.

## C1. Entry points (exactly one dialog)

| # | Interface | Contract | Test |
|---|---|---|---|
| C1.1 | Menu `shell.py` registry | `"Room Change"` → `fosub_ui.open_room_change(w, user=getattr(w,"user",None))`; `_coming_soon` only when import failed | `test_registry_room_change_is_real_p1_dialog` |
| C1.2 | Toolbar `frontoffice.py` | `btn_room` → `_on_room_change`: requires selected folio (else `Pehle folio select karo`), opens dialog, prefills DocId, auto-loads, reloads grid on `room_changed`. **No `QInputDialog`** | `test_frontoffice_toolbar_opens_window_not_qinputdialog` |
| C1.3 | Legacy `shell.py::_open_room_change` | Must not exist | `test_shell_legacy_open_room_change_removed` |

## C2. Locate (FR-1, FR-7)

| # | Contract | Test |
|---|---|---|
| C2.1 | Empty search → warning `Room No ya DocId likho`, **no DB call** | `test_load_folio_empty_input_skips_db` |
| C2.2 | Resolve DocId first, then room; neither → `Koi in-house guest nahi mila`, save stays disabled | `test_load_folio_not_found_keeps_save_disabled` |
| C2.3 | DocId resolved but no open `RoomOcc` → clear stale stay block, save disabled, info shown | `test_load_folio_partial_no_open_roomocc_clears_stale_state` |
| C2.4 | DB failure → `DB error: <e>`, state cleared, save disabled, **no exception escapes** | `test_load_folio_db_error_no_raise_clears_and_disables_save` |
| C2.5 | Stay block populated from a single `RoomOcc` query; free-room combo refreshed; save enabled | `test_happy_path_stay_block_and_change_datetime` |
| C2.6 | Save disabled until a successful load; empty combo shows `none found` | `test_save_disabled_until_load_and_none_found` |

## C3. Save validation (FR-3) — exact VB6 strings, in order

| # | Condition | Message (exact) | Test |
|---|---|---|---|
| C3.1 | Reason empty | `Reason is a required field.` (warning, focus reason) | `test_save_empty_reason_vb6_msg` |
| C3.2 | Room type empty | `Room Type is a required field.` (critical) | `test_save_room_type_required` |
| C3.3 | New room empty/`none found` | `Room No is a required field.` | `test_save_new_room_required` |
| C3.4 | Adult ≤ 0 | `Adult should not be zero.` (critical) | `test_save_adult_zero_vb6_msg` |
| C3.5 | Target not `RoomMast Type='RO'` | `Re Select Room No` (information) | `test_save_room_not_ro_re_select` |
| C3.6 | Pending KOT on old room (old ≠ new) | `There is some KOT Pending for this Room.` (critical) | `test_save_kot_pending_blocks` |
| C3.7 | old == new | `New room aur current room same hai` | `test_save_same_room_blocked` |
| C3.8 | Tariff ≤ 0 | title `Validation Error`, text `Tariff should be greater than zero.` | `test_save_tariff_zero_validation_error` |
| C3.9 | All pass → confirm `Guest ko <old> -> <new> shift karein?`; No aborts with zero writes | (FR-4) |

Every C3 abort must occur **before** `fo_ops.room_change` is called
(monkeypatched recorder asserted in tests).

## C4. Persist (FR-5, FR-8)

| # | Contract | Test |
|---|---|---|
| C4.1 | Sole write path `fo_ops.room_change(docid, new_room, reason, change_date=<displayed>, change_time=<displayed>, user=<session>)` — no SQL for writes in the UI | `test_happy_path_stay_block_and_change_datetime` |
| C4.2 | `ValueError` from core → warning with core message; other exceptions → `DB error: <e>` | core tests + C2.4 pattern |
| C4.3 | Success → info `Room changed to <new>` + `Old room <old> dirty marked.`, `room_changed` emitted **before** post-save reload, then FR-1 reload by DocId | `test_save_emits_even_if_post_save_reload_fails` |
| C4.4 | All UI inputs parameter-bound; no user-supplied SQL (FR-6) | code review + all query tests |

## C5. Core contract (`core/fo_ops.room_change`, unchanged in P1)

```python
room_change(docid, new_room, reason="", change_date=None, change_time="",
            user=USER, site=SITE_CODE, cn=None, commit=True) -> dict
# returns {"new_sno", "folio", "old_room", "new_room", "affected", "epabx_audited"}
# raises ValueError: docid/new-room missing, no open row, same room,
#                   room missing, room occupied
```

Behavioral assertions (existing core tests): guest moves (one new open row,
old row `Type='C'`), occupied target rejected, same room rejected — all with
**zero partial writes** on rejection.

**G1 decision assertion** (research D1): Python-written new row carries
`Type='I'`, and reader queries at `fo_sub_forms_ui.py:87` /
`dashboard.py:168` still locate it.

## C6. Non-goals (deferred, see research.md Open Gaps)

Plan/package UI, rate/season recalculation, Remarks/Authorization, Yes/No
`Inc. in Room Rate`, EPABX dial prompt, permission gating, history/report
rows — none of these are part of this contract.
