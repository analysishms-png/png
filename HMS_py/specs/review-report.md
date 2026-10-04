# Review Report — Room Change UI (RV-001)

**Date:** 2026-10-04
**Reviewer:** @reviewer (Code Reviewer / QA)
**Mode:** Balanced (AST-assisted full diff review)
**Branch:** `pr/demo-entry-vb6-parity` · Baseline: `3a62803..26726c5`
**Verdict:** **APPROVE WITH FIXES**
**Verification status:** `partially_verified`

---

## 1. Scope

| File | Change |
|---|---|
| `ui/fo_sub_forms_ui.py` | `RoomChangeWindow` rewrite: `_fill_stay`, `_save` (VB6 pre-checks), `room_changed` signal, `user` param on `open_room_change` |
| `ui/frontoffice.py` | `_on_room_change` opens P1 dialog, prefill + auto-load + signal → reload |
| `ui/shell.py` | Deleted legacy `_open_room_change` + `checkin_mod` import; registry unchanged |
| `tests/unit/test_room_change_ui.py` | New — 15 tests (offscreen) |

Reference: `specs/003-fdroomchange-ui/spec.md` (FR-1..FR-8, §1.4, §1.6, G1-G10, §5 test plan),
`core/fo_ops.py:85-265` (`room_change` contract), VB6 `implemented/HMS_REVERSE_ENGINEERING/HMS/fdRoomChange.frm:3385-3468`.

Method: `git diff` + AST-level semantic diff (isolated real logic changes from ruff-format churn),
VB6 source cross-check for every pre-check string/order, test execution.

---

## 2. Findings

| # | Severity | File:line | Issue | Fix |
|---|----------|-----------|-------|-----|
| 1 | **MEDIUM** | `ui/shell.py:2687` | Menu-path registry lambda calls `open_room_change(w)` **without session user** → `fo_ops.USER` (`PYADMIN`/`HMS_USER` env) is written to audit columns instead of the logged-in user. Shell has `self.user` (540/676/691) and every sibling opener passes it (`fo.open_checkin(w, user=w.user)` etc., 1952-2043). Spec §6.10 unknown → now confirmed possible. | `lambda w: fosub_ui.open_room_change(w, user=getattr(w, "user", None))` |
| 2 | **MEDIUM** | `ui/fo_sub_forms_ui.py:237-258` | Partial-load stale state: `open_folio_by_docid` (55-67) matches **any** GuestFolio row; if no open RoomOcc (`rows` empty at 244-254), `_docid`/folio/guest labels update (241-243) but `_roomtype/_adult/_tariff/lbl_oldroom` keep the **previous folio's** values and save is still enabled (258). Validations + confirm dialog then run on stale data (core backstops with `ValueError` "open RoomOcc row nahi mila" → no wrong write, but misleading UX). | On `not rows`: `btn_save.setEnabled(False)`, reset stay block (`_roomtype=_adult=_tariff=""`, labels → "-"), show "Koi in-house guest nahi mila". |
| 3 | **MEDIUM** | `ui/fo_sub_forms_ui.py:371-372`, `ui/frontoffice.py:1011-1012` | `room_changed.emit()` runs **after** unguarded `_load_folio()` → DB hiccup on post-save reload = signal never emitted → frontoffice grid stale despite successful write. Same unguarded path: auto `btn_load.click()` (1011) fires **before** `connect` (1012) → a load exception also skips the connection. No `try/except` around `_load_folio` DB calls; no `excepthook` installed anywhere. | Emit before reload (or `try/finally`); `connect` before `click()`; wrap `_load_folio` DB section in `try/except` with user message. |
| 4 | **MEDIUM** | `tests/unit/test_room_change_ui.py` (happy path) | **Emitter contract untested**: no assertion that `room_changed` is emitted with `{docid, old_room, new_room, folio}` on success — deleting line 372 would not fail any test (wiring test only exercises the frontoffice side). | Record the signal in `test_save_happy_path` (e.g. `QSignalSpy`/list append) and assert payload. |
| 5 | LOW | `ui/fo_sub_forms_ui.py:294,303` | Strings `"Reason is a required field."` / `"Room No is a required field."` not attested: VB6 shows focus+abort only (frm 3389-3391, 3412-3414; `Proc_6_27` body not in this .frm); spec §1.4 lists no message. Room-No failure also skips VB6's `Txt_GotFocus(0)`. Added messages are a sensible UX improvement. | Keep, but record as approved G-delta in spec §1.4. |
| 6 | LOW | `ui/fo_sub_forms_ui.py:320-323` | KOT guard uses `ISNULL(VoidYN,'N')<>'Y'` etc. vs VB6 strict `VoidYN='N' AND NCKOT<>'Y'` (frm 3442-3445) → NULL rows counted in Python, excluded in VB6. Fail-safe direction (blocks more, never fewer). Comment already documents intent. | Accept; note in spec. |
| 7 | LOW | `ui/fo_sub_forms_ui.py:194` | `txt_reason` missing `setMaxLength(100)` (VB6 MaxLength 100); core truncates `[:100]` silently at write. | `self.txt_reason.setMaxLength(100)` |
| 8 | LOW | `ui/fo_sub_forms_ui.py:314` | `"Re Select Room No"` shown with `information` icon; VB6 uses flags `0` (no icon). Text exact ✓. | Cosmetic, optional. |
| 9 | LOW | `ui/frontoffice.py:1006` | Method-level import without failure guard (shell pattern: `if fosub_ui else _coming_soon`). | Optional guard for consistency. |
| 10 | LOW | `ui/frontoffice.py:1009` | `_rc_win` overwritten on each open → multiple modeless Room Change windows can pile up. | Optional: focus existing window if alive. |
| 11 | LOW | `ui/shell.py` (whole file) | Formatter churn: 2352 changed lines for a ~40-line deletion (also frontoffice +358/-178, fo_sub +439/-139) — diff unreviewable, revert-unfriendly. **AST diff verified zero hidden logic changes** (shell: only `checkin_mod` import + `_open_room_change` deletion). | Next time: separate format commits. |
| 12 | LOW | scope | `.claude/plan/fdpostchg-room-posting-parity.md` committed in same commit — out of stated scope (docs only). | Informational. |
| 13 | LOW | spec §5 | `tests/database/test_room_change_parity.py` (DB-state parity) not created — spec allows deferring "when a live DB is available". | Create when DB available. |

**No Critical or High findings.** No security issues (see §3).

---

## 3. Category Assessment

| Category | Status | Notes |
|---|---|---|
| **Security** | ✅ PASS | All new SQL parameterized (`?`); zero f-string/format SQL (grep verified). No secrets. User input reaches DB only via bound params. Core validates room occupancy before write. No auth delta vs sibling menu entries. |
| **Correctness / parity** | ⚠️ PASS with findings | Validation **order matches VB6 exactly** (frm 3385-3468): Reason → RoomType → RoomNo → Adult>0 → RoomMast `Re Select Room No` → KOT (only if old≠new) → same-room → tariff → confirm → `fo_ops.room_change`. All core strings match (`Adult should not be zero.`, `Tariff should be greater than zero.`, `There is some KOT Pending for this Room.`, `Re Select Room No`, title `Validation Error`). FR-8 kwargs (`change_date/change_time/user`) verified. G1 untouched (deferred — allowed). G6 UI-side enforced ✓, G7 UI-side enforced ✓. |
| **Error handling** | ⚠️ FINDING #3 | `_save` correctly catches `ValueError` → user message, `Exception` → "DB error" ✓. `_load_folio` has **no** try/except and is called programmatically (auto-click + post-save) → unhandled slot exception. |
| **Performance** | ✅ PASS | One combined stay query (FR-1, LEFT JOINs), no N+1; `free_rooms` refilled per load (small set). |
| **Accessibility** | ✅ N/A–PASS | Desktop Qt; focus set to reason on validation failure; messages use standard modal boxes. |
| **Testing** | ⚠️ PASS with gap #4 | 15 tests: validation order (exact trigger strings), all 8 pre-checks + order, happy path asserts exact `room_change` kwargs and **zero-write on every validation failure**, FR-8 screen-time passthrough, core error surfacing, no-legacy-dialog AST check, registry + frontoffice wiring (`user="T1"` threaded, QInputDialog absent). Gap: emitter payload untested (#4), DB parity test deferred (#13). |
| **Standards** | ⚠️ findings #7, #11 | Naming/structure consistent; no dead code left (legacy `_open_room_change` fully removed, no residual refs outside scratch dirs); formatter churn (#11). |

## 4. Verification executed

| Check | Result |
|---|---|
| `python -m pytest tests/unit/test_room_change_ui.py -q` | **15 passed** (1.26s, offscreen) |
| `python -m pytest tests/unit/test_missing_logic_core.py -q` (spec §5 gate) | **14 passed** |
| `python -m py_compile` on 3 UI files | OK |
| AST semantic diff (3 files) | Only intended changes; shell = deletion only |
| VB6 cross-check (frm 3385-3468) | Order + strings match |
| Not run | Live-DB parity test, manual GUI run (out of reviewer scope) → `partially_verified` |

## 5. Delegation plan

Route to the Python/PyQt subagent for HMS_py (no `@frontend-*` matches this stack), priority order:

1. **#1** registry user threading — one line, audit-trail correctness.
2. **#3** emit/connect ordering + `_load_folio` error handling — prevents silent stale grids.
3. **#2** partial-load stale-state guard — prevents misleading validations/confirm.
4. **#4** emitter assertion in happy-path test — locks the frontoffice contract.
5. Backlog: #7 (`setMaxLength`), #5/#6 spec-delta documentation, #10, #9, #13.

**Do NOT touch:** `core/fo_ops.py` contract, G1 decision (deferred), spec strings that already match VB6.

**Re-review status:** required after #1-#4 (short re-check of the 4 files + test run). Everything else can ship as follow-up.
