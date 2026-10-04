# PARITY RECONCILIATION — VB6 ↔ Python

Regeneration of `VB6_VS_PYTHON_FILE_BY_FILE.txt` from live sources via
`python tools/vb6_py_file_parity.py` (tool repaired 2026-10-03: VB6 source
path now resolves `implemented/HMS_REVERSE_ENGINEERING/HMS/` after repo
restructure). Baseline snapshot preserved at
`VB6_VS_PYTHON_FILE_BY_FILE.baseline_20261003.txt`.

Loop (constitution §Migration Workflow):
READ PARITY → SELECT GAP → LOCATE VB6 SOURCE → LOCATE PYTHON TARGET →
COMPARE → SPECIFY → PLAN → TASKS → IMPLEMENT → TEST → VERIFY →
UPDATE STATUS → **REGENERATE PARITY** → SELECT NEXT GAP.

---

## Reconciliation 2026-10-03 — AUDIT PASS (independent 11-phase review)

Source of baseline: `*.baseline_20261003.txt` (1830 lines).
Current: regenerated 2026-10-03 16:02 during the audit, run 5× → identical
SHA256 `0BBD5EE7D4DF1D55CFC53C1E63B76A26E1EC6F1F0968DFAF7E3B5B30744EE39E`
(deterministic under a STABLE tree; see BUG-AUD-08 for concurrent-edit
episode). Commands:

```
PYTHONPATH="C:\...\PROJECT_REPAIR - Copy\HMS_py" python tools/vb6_py_file_parity.py
PYTHONPATH="C:\...\PROJECT_REPAIR - Copy\HMS_py" QT_QPA_PLATFORM=offscreen python -m pytest -q
```

### Reconciliation table (baseline → audit)

| Metric | Baseline | Audit now | Δ | Evidence / cause |
|---|---:|---:|---:|---|
| Forms total | 321 | 321 | 0 | canonical dir `implemented/HMS_REVERSE_ENGINEERING/HMS/` = 321 .frm |
| Forms MISSING | 3 | **0** | −3 | `dm_tree_ui.py`, `data_receiving_ui.py`, `pr_attend1_ui.py` + 3 Godrej/Cleaning UI files now exist |
| Forms COMING_SOON | 3 | **0** | −3 | same batch (file-existence reclass; see caveat §Status-vocab) |
| Forms REGISTRY_ONLY | 1 | 0 | −1 | Denomination → dedicated UI |
| Forms REGISTRY (wired, no dedicated file) | 178 | 168 | −10 | shared/simplified screens still carry VB6 children |
| Forms LIKELY (fuzzy match) | 48 | 45 | −3 | — |
| Forms PY_FILE (dedicated UI file) | 71 | **91** | +20 | D2 batch + Main Setup + reports batches |
| Forms SHELL / REPORT_VIEWER | 2 / 15 | 2 / 15 | 0 | — |
| **Forms VERIFIED (behavioral proof)** | 0 | **0** | 0 | no form carries VERIFIED status yet (§Status-vocab) |
| .bas FULL / PARTIAL | 23 / 9 | **26 / 6** | +3 / −3 | module batches migrated (incl. ModuleAdd.bas → `core/module_add.py`) |
| Python ui/*.py | 126 | 144 | +18 | tool Section E count (incl. `__init__`) |
| Python core/*.py | 146 | 175 | +29 | — |
| Python core top-level defs | 2217 | 2418 | +201 | — |
| Named procs ported / missing | 50 / 1015 | **170 / 895** | +120 / −120 | tool repaired: VB6 report procs port as `core/reports.py` **report-keys** (e.g. `ABCAnalysis`, `ArrDepReg`), name-match alone missed 120 (BUG-AUD-07); residual 895 = ~202 business/report + ~693 event-handler-named (see D5 caveat) |
| VB6-ONLY tables (PY never queries) | 48 | **25** | −23 | newer core modules cover 23 tables |
| BOTH-side live tables | 213 | 236 | +23 | — |
| PY-ONLY tables | 1 | 1 | 0 | `combopackhead` — **label false positive**, see BUG-AUD-02; DO NOT DELETE |
| ABSENT in live DB | 0 (bucket dead) | **210** (bucket repaired) | +210 | see BUG-AUD-04; incl. 4 critical app tables |
| VIEW (not base) / stopword noise | n/a | 8 / 38 | — | new split after tool repair |
| Missing business fns / event handlers | 396 / 619 | **202 / 693** | −194 / +74 | 113 report procs now credited as ports; `*_UnknownEvent_*` decompiler artifacts reclassed D5a→D5b (BUG-AUD-07) |
| Full-suite tests (fresh run) | 1062 claimed (TEST_RESULTS) | **1074 passed, 1 skipped, 0 failed** (270.33s) | +12 | fresh audit run; 0 FAILED/ERROR lines |
| Report definitions (`core/reports.py` keys) | 258 claimed by VB6 docs | 278 keys | +20 | definitions ≠ rendered/verified |
| VB6 modules / procs inventory | 32 / 2874 (1809 obf, 1065 named) | 32 / 2874 | 0 | matches baseline exactly |

Note: a stale report was committed at 2026-10-03 11:54 (PY_FILE 77, MISSING 1)
generated from pre-batch sources — superseded by this deterministic run
(BUG-AUD-05). Intermediate same-day values (77 in commit, 88 in prior JSON,
92 measured mid-refactor while another session was rewriting `ui/shell.py`)
are all superseded. **Authoritative = current report (PY_FILE 91) + this file.**

### Status vocabulary remap (allowed statuses only)

Tool vocabulary (`PY_FILE/REGISTRY/LIKELY/…`) is measurement, NOT verdict:

| Allowed status | Forms now | Meaning |
|---|---:|---|
| VERIFIED | **0** | behavioral + DB-state proof vs VB6 — none yet |
| MIGRATED | 0 | (reserved; use after partial behavioral pass) |
| PARTIAL | 91 | has dedicated UI file (tool PY_FILE) — file exists, behavior unverified |
| REGISTRY_ONLY | 168 | wired to shared/simplified opener only (tool REGISTRY) |
| COMING_SOON | 45 + blocked | fuzzy match (LIKELY) / documented-blocked leaves |
| REPORT_VIEWER | 15 | routed to reports engine |
| SHELL | 2 | MDI/shell forms |
| MISSING | 0 | — |

File existence ≠ migrated ≠ verified (constitution P6). Shell honestly blocks
`Godrej Locks` + `Item Issued On Cleaning` leaves via `_coming_soon()` spread
with dated 42S02 evidence (`ui/shell.py` ~L2064–2076, `_coming_soon` L1558).

---

## Deep-verification findings (bug register — audit findings)

### BUG-AUD-01 — Godrej/Cleaning UI files: success messaging vs absent tables (latent P6 risk)
Live DB probe (`live_db_probe`) → `departwiseitemissuelist`, `doorlockenviro`,
`godrejlockoperations`, `godrejlocksettings` all **ABSENT** (42S02).
- `ui/frm_godrej_lock_settings_ui.py` — save path try/except → honest
  `Failed to save settings:` dialog on 42S02; load falls back to defaults
  (L130–201). Menu leaf BLOCKED.
- `ui/frm_lock_godrej_settings_ui.py` — DB save try/except honest, BUT
  `_write_to_lock`/`_read_from_lock` are `Simulate …` stubs that show
  "Write operation completed" / "Data read from lock successfully" with
  fabricated values (L221–240). Menu leaf BLOCKED → unreachable via menu;
  module `main()` runnable standalone.
- `ui/frm_item_issued_on_cleaning_ui.py` — INSERT/SELECT try/except honest
  (L279–289), but `_edit_issue` is a stub: "Edit functionality … would be
  implemented here" (L306, TODO).
Status: **COMING_SOON/BLOCKED**, never VERIFIED until tables exist (schema
evidence required) or VB6-obsoleted with evidence.

### BUG-AUD-02 — `combopackhead` "Python-only" label is FALSE POSITIVE
VB6 references `ComboPackHead` (`HMS.bas:486092` `Ucase("ComboPackHead")`
table-filter list; `Transfer.frm:1710/1821`; real SQL on `ComboPackDetail`
`HMS.bas:~494839`). Live DB has `combopackhead` + `combopackdetail` (0 rows);
Python CRUD in `core/pos_masters.py` L668–817. Baseline D8 missed VB6 refs
because extraction scans SQL string-literals only, not `Ucase()` filters.
**Do not delete.**

### BUG-AUD-03 — form-vs-table conflation in prior "5 absent tables"
`ItemIssuedOnCleaning` is a **FORM name**; no `FROM/INTO/UPDATE
ItemIssuedOnCleaning` SQL exists in HMS.bas. True absent app tables = 4:
`departwiseitemissuelist` (VB6+PY both), `doorlockenviro` (VB6),
`godrejlockoperations` (PY), `godrejlocksettings` (PY).

### BUG-AUD-04 — audit-tool defect: ABSENT bucket was dead code (FIXED)
Old logic (`tools/vb6_py_file_parity.py`): `if t not in real: junk …` routed
every not-live table to C5 before the `absent` branch could fire → C4/C7
reported `n=0` forever while 206 real tokens (incl. the 4 tables above) sat
buried in a 214-token C5 soup (views + aliases + noise mixed).
Fix: `live_db_probe` now also returns live views; classification =
base→live buckets / view→C5 / stopword-noise→C6 / else→**C4 absent**.
After fix: C4 n=210 (contains all 4 tables with VB6/PY source attribution),
C5 views n=8, C6 noise n=38; report deterministic (hash above).
Known residual limitation: C4 still contains SQL aliases/typos/other-year-DB
tokens (no schema of the VB6-era DB available to disambiguate) — treat C4 as
"referenced but not in current DB", verify individually before acting.

### BUG-AUD-05 — stale report committed
Report committed 11:54 (PY_FILE 77) was generated from earlier sources than
the commit's contents; ui/core content is EOL-only-different from HEAD (54
files, 0 real diffs). Rule: regenerate parity **at commit time**, hash it in
the commit message.

### BUG-AUD-06 — no form has behavioral verification
91 PY_FILE + 168 REGISTRY entries are file/registry existence only.
Evidence of depth: `frm_item_issued_on_cleaning_ui.py:_edit_issue` stub and
Godrej simulate-stubs above survived multiple "green" sessions.

### BUG-AUD-07 — procedure name-match undercounted ports by 120 (FIXED)
VB6 report procs (`ABCAnalysis`, `ArrDepReg`, `BudgetAnalysis`,
`BillWiseAdjustmentReport`, …) are ported in Python as **dict keys of
`core/reports.py`**, not top-level functions; the tool only matched Python
defs → 113+ false "missing". Also `*_UnknownEvent_*N` decompiler artifacts
were misfiled into D5a (business) instead of D5b (events) because `EVT_RE`
anchored `UnknownEvent$`. Tool now credits report-keys (incl. modules with no
file-twin) and re-classes UnknownEvent → events.
Effect: ported 50→**170**, missing 1015→**895**, D5a 396→**202**,
D5b 619→**693**. Residual caveat: D5b still needs Section A-based functional
check (tool's own NOTE), and D5a's remaining 202 contain utility names
(`AddFile`, `Append`, …) that need individual disposition.

### BUG-AUD-08 — concurrent session editing the repo DURING the audit
2026-10-03 15:16–16:00: `ui/shell.py` + 13 ui / 6 core files were rewritten
by an external process while this audit ran — `shell.py` hash changed twice
within 25s, `_form_registry()` report-alias spread was actively refactored
(observed diff: 3 insertions/7 deletions around the `_open_report` spread).
This is what produced the transient PY_FILE=92 reading (mid-edit state);
after the tree settled (shell hash `A7F192D4…` at 16:00:08), 5 consecutive
regens returned the identical `0BBD5EE7…` report.
**Rule: regenerate parity only from a quiescent tree; record shell.py hash +
timestamp with every snapshot.** Coordinate sessions before the next loop —
concurrent writes to `ui/` invalidate measurement windows.

### BUG-AUD-09 — booking.insert_group_booking used invented columns (dead code)
Discovered 2026-10-03 (Phase 11 iteration 3): `core/booking.py::
insert_group_booking` INSERT targeted `DocId, Sno, RoomNo, GuestName, Adult,
Child, ...` — live `GrpBookingDetails` schema has **no such columns**
(BookingDocid/RoomDet/Adults/Childs; full 27-col probe) so any invocation
would fail invalid-column; grep showed **zero callers**. Consequence: Python
`booking.insert` wrote no G-rows at all → Python-created bookings were
invisible to the VB6 fdCheckIn arrivals anti-join (and any other G-join
report). Fixed same iteration: helper rewritten schema-faithful (20-col
INSERT incl. ArrDate/ArrTime/NoDays/DepDate) and wired into `booking.insert`
(VB6 live evidence: 19/19 bookings carry count==NoofRooms G-rows). Covered
by `tests/database/test_reservation_arrivals.py` (DB-state).

### BUG-AUD-10 — Python room-charge GST double-charged (5%/leg vs VB6 2.5%/leg)
Discovered 2026-10-03 (Phase 11 iteration 4, fdPostChrg): both
`core/nightaudit.py::GST_RATE` and `core/folio.py::GST_RATE` were `0.05`
per leg = 10% total tax on every room charge, while **live VB6-era
PayCharge rows carry `TaxPer = 2.5` with tax/base = 0.025 uniformly**
(400+ rows probed: 95.24 on 3809.52, 75.0 on 3000, ratio exactly 0.025;
the old folio.py comment "live #462: 3000 -> 75 + 75" itself described
2.5% while the code multiplied 0.05). Python-era rows (10-02, folio 462)
wrote 190.48 per leg on the same base = **2x over-charge already in
production data** (Vdate 10-02, FolioNoDocid='' rows — flagged for ops
review, not auto-modified). Fixed same iteration: both constants →
`0.025` with evidence comments; tax rows now also write `TaxPer=2.5` /
`OnAmt=base` (VB6 shape). Tests encoding the wrong rate updated with
evidence citations: `tests/unit/test_core_validation.py::
TestFolioRoomCharge` (3000 → 75+75), its two checkout-balance guards
(550 → 525), `tests/database/test_receive_payment.py` T8 (1.10 → 1.05).
Not touched (separate domains, no evidence gathered this iteration):
`banquet_ops.py` (tests already assert 2.5% via own logic),
`einvoice.py` (e-invoice 5%+5% constants).

### BUG-AUD-11 — Python RC/RoomOcc rows missing VB6 column shape
Discovered 2026-10-03 (Phase 11 iteration 4, fdPostChrg):
(a) `core/checkin.py::create_checkin` never wrote **`RoomOcc.RoomType`**
    (VB6 RoomOcc INSERTs at `fdWalkInEntry.frm:5663` and
    `HMS.bas:149593` include the column; every live VB6-created RoomOcc
    row carries `'RO'`). New Python check-ins left it NULL → downstream
    `PayCharge.RoomType` stamp came out blank.
(b) `core/nightaudit.py::post_room_charges_for_date` wrote RC/CGST/SGST
    rows with `GuestProf/RoomCat/RoomType/FolioNoDocid/PlanCode` all `''`,
    `Comments` empty, `TaxPer/OnAmt` 0 — vs VB6-era rows where all of
    these are populated (`Comments='Room Charge (Room No : 303)'`,
    `'CGST (SALES)(Room No : 303)'`, `'SGST (SALES)(Room No : 303)'`,
    OnAmt=base on all three rows, FolioNoDocid linked to GuestFolio.DocId).
Fixed same iteration: create_checkin derives RoomType from RoomMast.TYPE
on the existing RoomCat-derive query and stores it; engine INSERTs carry
the full VB6 shape (column lists proven by
`tests/database/test_fdpostchg_posting.py::test_row_shape_tax_and_comments`).
Legacy Python-era rows (FolioNoDocid='') remain in production history as
discovered evidence — not rewritten.

---

## Claims audit (Phase 9) — status UNVERIFIED

Historical claims kept intact (no deletion); discrepancy documented here:

| Source | Claim | Audit status |
|---|---|---|
| `TEST_RESULTS.md` (2026-10-03) | 1062 passed = suite green | **SUPERSEDED** — fresh audit run 1074 passed/1 skipped/0 failed; test-green ≠ parity (P6) |
| `MAIN_SETUP_VERIFICATION_FINDINGS.md` L265 | "All 8 Main Setup modules verified with 100% functional parity" | **UNVERIFIED** — no per-form VERIFIED evidence chain in report |
| `MIGRATION_COMPLETION_MATRIX.md` / `MIGRATION_STATUS.md` | per-form `✓ COMPLETE` rows | **UNVERIFIED** — tool gives no VERIFIED forms; existence-only |
| `MIGRATION_BASELINE.md` | "Foundation 100% COMPLETE", per-area % | **UNVERIFIED** — percentages lack dated evidence links |
| `MAIN_SETUP_IMPLEMENTATION_CHECKLIST.md` L4 | "Target: VERIFIED COMPLETE" | **UNVERIFIED (target ≠ achieved)** |
| `SESSION_HANDOFF.md` L43–46 | "3 COMING_SOON forms ab REAL" | **CONTRADICTED** — Godrej/ItemIssued tables still absent (BUG-AUD-01); menu leaves correctly BLOCKED |
| baseline report D8 | `combopackhead` Python-only | **REFUTED** (BUG-AUD-02) |
| prior "5 absent tables" | includes `ItemIssuedOnCleaning` | **REFUTED** (BUG-AUD-03) |

---

## Test evidence (Phase 7 — partial)

- Fresh full suite: **1074 passed, 1 skipped, 0 failed**, 270.33s, 7 warnings
  (`_audit_pytest_run.txt`), Python 3.14.4 / PyQt6 offscreen.
- Coverage shape: 96 test files / 1013 `def test_*` under `tests/` + 20 root
  `test_*.py` scripts. DB-state tests: `tests/database/*` (32 files) use a
  `db_transaction` fixture for save/verify (account posting, member delete
  guard, banquet write, POS delivery, taxstru roundtrip, reports engine…).
- Workflow-level coverage present for: check-in/out + roomocc cascade,
  balance-block checkout, night-audit uncharged gate, walk-in wizard,
  reservation creation, folio/active-folio. Full GUI end-to-end chain
  (LOGIN→…→NIGHT AUDIT with DB-state assertions) **not yet run as one flow**
  — remains open for Phase 11 loops.

## Reports / Printing / API inventory (Phase 3 evidence)

- Reports: `core/reports.py` = 278 report keys / 13 top-level defs; plus
  `core/fa_reports.py`, `core/report_params.py`, `ui/reports_ui.py`,
  `ui/nightaudit_reports_ui.py`.
- Printing: `core/print_engine.py` (235 ln, 3 cls/3 fn), `printersetup.py`
  (235, 1/13), `printformats.py` (74, 1/5), `printmast.py` (182, 1/12),
  `ui/print_preview.py`; `PRINTING_VERIFICATION.md` exists (status thin — 864 B).
- API: VB6 `MobWebAPI.bas` → `core/http_client.py` (GET/POST ports of
  Proc_344_0/1) + `core/sms_http.py` (SMS dispatch) + `core/einvoice.py`.
  No standalone HTTP service layer (matches VB6 client-side design).

## Spec Kit state (Phase 8)

Present: `.specify/` (integration=copilot, v1.1.1.dev0),
`specs/001-vb6-parity-baseline/spec.md` (Draft) + `checklists/requirements.md`,
`.specify/memory/constitution.md` (v1.0.0), templates/scripts/workflows,
speckit skills under `.github/skills/`.
**Missing: `plan.md` and `tasks.md` for feature 001** — spec exists, no
plan/tasks artifacts yet (setup-plan/setup-tasks scripts available).

## Standing rules

- Numbers are a BACKLOG, not final truth; regenerate after every major
  batch and record the delta here.
- A gap is never "complete" because code was added — only after the
  acceptance checklist (constitution §Migration Workflow & Quality Gates)
  and this reconciliation update.
- Baseline files are never overwritten without a dated copy.
- Tool vocabulary (PY_FILE/REGISTRY/LIKELY/…) is measurement; only
  MIGRATED/PARTIAL/VERIFIED/… verdicts count, and VERIFIED needs behavioral +
  DB-state evidence.

## Next gaps — priority order (Phase 11 loop)

1. **Coordinate first (BUG-AUD-08):** confirm no other session is writing
   `ui/` before each measurement; snapshot shell.py hash with each regen.
2. **VERIFIED=0** — highest-priority migration gap: pick top-traffic forms
   (Front Office walk-in/check-in/checkout, posting) → READ VB6 → behavioral
   parity spec → test with DB-state assertions → mark VERIFIED one at a time.
3. 4 absent app tables (BUG-AUD-01/03): decide schema-sourced CREATE (needs
   VB6-era DDL evidence) or documented obsolescence; keep leaves BLOCKED until then.
4. 25 VB6-only tables (Section C1) — per-table disposition evidence.
5. 202 named business/report procs + 693 event-handler names (Section D5;
   D5b via Section A functional check, not name match).
6. 168 REGISTRY_ONLY forms — shared-screen children lacking dedicated UIs.
7. Spec Kit: create plan.md/tasks.md for 001; wire parity evidence to checklist.

## Phase 11 loop log

### Iteration 1 — fdWalkInEntry (Walk In / Check In Entry) — 2026-10-03

**READ (VB6):** `HMS/fdWalkInEntry.frm` (21,740 lines decompiled; save chain
inside `TopCtrl1_UnknownEvent_15/16` — GuestProf/RoomOcc/PlanDetails/
GuestFolio/PayCharge inserts @L5462–7481; `RetriveRoomRate` @L12224; rail
handlers CmdVerifyMember/duplicatchkin/advanceEnt) + specs
`05_Front_Office/CHECKIN_FIELD_MAP.md` [VERIFIED-UI + VERIFIED-VB6] +
`FRONT_OFFICE_LIFECYCLE.md §2` (40-col GuestFolio / 33-col RoomOcc).

**MAP (gaps vs `core/checkin.py::create_checkin` + `ui/walkin_rack_ui.py::
WalkInEntryWindow`):**
- G1: GuestFolio missing left-zone cols Add1/Add2/Nationality/ArrFrom/
  Destination/TravelMode/Company/TravelAgent/Remark/RODisc — UI fields bhi
  absent the. (DB widths: City 6, Company/TA 8, Nationality 15, RODisc float.)
- G2: RoomOcc missing RoomCat/RoomRate/DepTime (DepTime hardcoded '10:00').
- G3: PlanDetails rows not written at check-in (VB6 FGrid3 loop; Python me
  PlanDetails sirf `fo_ops.room_change` me hai) — OPEN.
- G4: inline new-guest creation (VB6 `Insert Into GuestProf`) — Python only
  accepts existing profile code — OPEN.
- G5: rail actions Verify Member / ID-proof / Guest image / Advance dialog
  (Python: Profile/History/Duplicate only) — OPEN.
- G6: DGNationality "Nationality Not Defined!" validation — OPEN.

**SPECIFY+IMPLEMENT (iteration 1 = G1+G2 closed):**
- `create_checkin` +13 params → GuestFolio 16→26 cols, RoomOcc 31→33 cols;
  RoomCat blank → RoomMast derive (fo_ops.room_change pattern), DepTime
  blank → '10:00' (live default), RODisc float % (live 0/20).
- WalkInEntryWindow: 10 left-zone fields + Room Rate + Departure Time
  (QTimeEdit) with setMaxLength = DB widths (VB6 TextBox MaxLength se
  overflow 8152 bachav); `_checkin` wiring + `_review_text` extended.

**TEST:** `tests/database/test_walkin_parity.py` — 2 rollback-safe
DB-state tests (full-column write + RoomCat derive + FolioLog 'A' +
GuestFolioProfDetail link + staging cleanup + occupancy reject + auto-pick
+ DepTime default + name/arr>dep guards) + `test_wave_ui_forms.py::
test_walkin_checkin_passes_field_map_fields` (UI→core wiring proof).
Full suite **1077 passed, 1 skipped, 0 failed** (338.33s);
checkin regression subset 104+25 targeted green.

**VERIFY (BUG-AUD-08 discipline):** shell.py hash `A7F192D456C8481E`
(16:00:08) unchanged before/during/after parity regen → report 1966 lines,
SHA256 `EB23A76CC9FEDE7E…` (headline counts unchanged PY_FILE 91 / REGISTRY
168 / …; only walkin_rack_ui.py + checkin.py file rows moved).

**VERDICT:** fdWalkInEntry = **PARTIAL** (ledger row: TESTING) — G1/G2
field-map + occupancy parity done with behavioral + DB-state evidence;
G3–G6 keep it below VERIFIED (P6). Next iteration: **G3 PlanDetails at
check-in** (READ `RetriveRoomRate` + FGrid3 → PlanDetails INSERT path,
port with DB-state test), then G4.

### Iteration 2 — G3–G6 dispositions (evidence-based) — 2026-10-03

- **G3 PlanDetails NOT ported — documented, not silently dropped:**
  live DB `PlanDetails` = **0 rows**, no `PlanDetailsH` archive table;
  VB6 write path is conditional (FGrid3 plan-grid rows, `RetriveRoomRate`
  @fdWalkInEntry:12224) and paired with date-wipe
  (`Delete From PlanDetails where PlanAppDate=` — HMS.bas:943195/944015).
  Site does not exercise the plan-grid flow → port would be unvalidatable
  against live data. `fo_ops.room_change` already mirrors VB6's
  delete+copy PlanDetails semantics for room change. Risk if site starts
  using plans: plan-based posting will miss rows → re-open with live
  sample then.
- **G4 inline new GuestProf NOT auto-created on save — partially covered:**
  VB6 rail has a dedicated 'Guest Profile' button; Python equivalent
  `_act_profile` → `frontoffice.open_guestprof` opens the real guest
  master (create/update) and walk-in takes the resulting profile code.
  Auto-create-on-save with empty code = still open (documented).
- **G5 rail actions:** Advance Entry exists as separate Python form
  `ui/advance_deposit_ui.py` (VB6 frmAdvanceDepDialog equivalent);
  Verify Member (SmartCardRegistration check) + ID-proof/Guest image
  viewers NOT ported — open, low traffic.
- **G6 nationality:** VB6 is an EMPTY-check MsgBox
  ("Nationality Not Defined!" HMS.bas:44251, lookup-select branch), not a
  master-membership check — live DB has **no nationality master table**
  (only Country-ish masters; `%ational%` → 0 app tables). Python keeps
  nationality optional; no membership validation is possible. Documented,
  no code change (forcing required would deviate from VB6's conditional
  branch without stronger evidence).

**fdWalkInEntry stays PARTIAL** (G1+G2 closed this loop, G3–G6 documented
with evidence). Next form in loop: fdCheckIn (3-step shared-screen family)
or posting (fdPostChrg) per Next-gaps order 2.

### Iteration 3 — fdCheckIn (Look Up Reservation By Guest Name) — 2026-10-03

**READ (VB6):** `HMS/fdCheckIn.frm` full (15,872 B): Form_Load arrivals SQL —
Booking + RoomCat + RoomMast + GuestProf join, `Booking.CANCEL='N'` +
LogSite match + `GrpBookingDetails` per-SNO anti-join
(`NOT EXISTS (GuestFolio F WHERE F.BookingDocId=G.BookingDocid AND
F.BookingSno=G.Sno)`), ORDER BY GP.Name; controls TopCtrl1/CmdOK/Txt(0)/
DGHelp; CmdOK early-arrival warn ("Guest Arrived Before Arrival Date !"
&H24, No → abort) → `fdWalkInEntry.AdvType='CHK'` + SEARCHBACKPARENT
(GuestProf) prefill + no_Rooms copy → unload. Date param resolved via
`Proc_6_7_F25D88` (MainLib.bas:120 — SQL-literal formatter; source date
decompile-opaque).

**MAP (gaps vs Python):**
- W0: `LookupReservationWindow` (fd_forms_ui) listed **GuestFolio in-house
  folios** — wrong feature under the VB6 caption; no arrivals query, no
  OK button, no prefill path.
- W1: `booking.insert` wrote **no GrpBookingDetails rows** — VB6 live
  evidence 19/19 bookings have count == NoofRooms (singles included) →
  Python-created bookings invisible to the arrivals anti-join (VB6 fdCheckIn
  bhi same query use karta).
- W2: `insert_group_booking` used invented columns (`DocId/GuestName/Adult/
  Child` — live schema: `BookingDocid/RoomDet/Adults/Childs`, ArrDate absent)
  with **ZERO callers** → dead broken code (**BUG-AUD-09**).
- W3: `create_checkin` never wrote `GuestFolio.BookingSno` → per-SNO
  NOT EXISTS match kabhi nahi hota → booking arrivals me atki rehti
  (VB6 live: sno 1,2,3 filled on booking-driven folios).
- W4: date-param semantics opaque → documented deviation decision:
  Python `ArrDate <= business_date` (same-day + overdue superset; live
  evidence: 1 overdue un-checked-in booking exact-equality me invisible).

**SPECIFY+IMPLEMENT:**
- `core/booking.py::list_arrivals()` — VB6 Form_Load SQL ported (name_like
  filter + `OR F.BookingSno IS NULL` legacy-sno guard, documented);
  `insert_group_booking` rewritten schema-faithful (20-col INSERT incl.
  ArrDate/ArrTime/NoDays/DepDate copy); `insert()` now writes NoofRooms
  G-rows on the same connection (commit sequence atomic).
- `core/checkin.py::create_checkin` + `bookingsno` param — booking-driven
  auto = `MAX(BookingSno)+1` (VB6 live sequential 1,2,3; multi-room flow
  per-SNO exit), explicit caller override; walk-in (no booking) → NULL.
- `ui/fd_forms_ui.py::LookupReservationWindow` reworked — arrivals grid
  7 cols [Booking, Guest Name, GuestProf, Arrival, Days, Rooms, Room Type],
  Check In button → early-arrival warn (VB6 CmdOK &H24 retained) →
  `walkin_rack_ui.open_walkin_entry` prefill `txt_guestprof`+`txt_booking`
  → close self.

**TEST:** `tests/database/test_reservation_arrivals.py` — 3 rollback-safe
DB-state tests: (a) booking insert → per-room G-rows (count==NoofRooms,
BookingDocid/Sno1..N/ArrDate copy/Cancel 'N'/Adults/Childs/Tarrif/ArrTime
'10:00'); (b) arrivals lifecycle — same-day visible → sno1 check-in still
listed (sno2 pending) → auto-sno2 check-in → booking exits + GuestFolio
BookingSno stored [1,2]; (c) overdue present (documented superset) +
cancel='N' filter + name_like filter. Plus
`test_wave_ui_forms.py::test_lookup_reservation_arrivals_and_checkin_prefill`
(mocked arrivals row → 7-col grid → select → warn fired → walk-in prefill
captured). Full suite **1081 passed, 1 skipped, 0 failed** (462.37s).

**VERIFY (BUG-AUD-08 discipline):** shell.py hash `A7F192D456C8481E`
unchanged before/after run + regen. Parity regen: first attempt WITHOUT
`PYTHONPATH` env → "DB probe failed" + bogus 2198-line/481-absent report
(**discarded**); rerun with PYTHONPATH → report **1968 lines**, SHA256
`CD33D95CB4CEAD924…` — headline counts unchanged (PY_FILE 91 / REGISTRY 168
/ LIKELY 45 / REPORT_VIEWER 15 / SHELL 2; missing_evt 693 / missing_biz
202 = baseline).

**VERDICT:** fdCheckIn = **TESTING** (ledger row added) — arrivals lookup
behavioral + DB-state parity proven end-to-end (W0–W3 closed, W4 documented).
Open: VB6 date-param exact semantics (superset deviation documented), no_Rooms
multi-room copy into walk-in window, DGHelp context-help extras, per-keystroke
incremental name filter (Python: Search button/Enter). P6: not VERIFIED yet —
next: fdPostChrg posting/checkout loop, and/or GUI walk-through of the
lookup→walk-in prefill chain.

---

### Iteration 4 — fdPostChrg (Post Charges /Payments batch posting) — 2026-10-03

**READ (VB6):** `HMS/fdPostChrg.frm` full (699 lines): caption
"Post Charges /Payments"; `Txt(0)` "Date For" default = business-date memvar
(`MemVar_1F920EC`); `Cmd(0)` Exit, `Cmd(1)` "Post Charges" → `Proc_62_23`
pre-flight (rooms whose folio/mfolio has PayCharge rows `Bill_No <> ''` →
block with exact message *"There is some unsettled guest bill,\nFirst
Settle it then Process this operation"* + "Re-Check Room No : …") →
`TopCtrl1_UnknownEvent_16` gate (`RoomChrgPostingType = "While Printing
Bill"` → silent Exit) → eligibility (RoomOcc `ChkOutDate IS NULL AND
ChkInDate <= date`, site match, `DOCID NOT IN (SELECT FOLIONODOCID …
VTYPE='RC' AND Vdate=date)`) → per-room `lblDisplay` "Posting Charges For
Room : <RoomNo>" → `Hotlib.bas:114 Proc_96_4_1C1BDCC` (≈9000 lines,
decompile-garbled — **full source port infeasible; ported the observable
DB-state contract** instead) → second loop `Proc_96_23` plan charges +
`Proc_96_24` extra bed → "Posting Room Charges Completed". No confirm
dialog, no amount field (amount = RoomRate derived).

**Live evidence (probed this iteration):**
- Amount rule: `PayCharge.AmtDr == RoomOcc.RoomRate` — 100% correlation
  (incl. 3809.52 and 0.01 edges); `PlanAmt` does NOT drive amount.
- GST: VB6-era rows `TaxPer=2.5`, tax = base×0.025 uniformly (400+ rows)
  vs Python `GST_RATE=0.05`/leg → **BUG-AUD-10** (2x over-charge; the
  pre-existing "#462: 3000 → 75+75" comment itself described 2.5%).
- Row shape: VB6 rows populate GuestProf/RoomCat/RoomType='RO'/
  FolioNoDocid/PlanCode/Comments ('Room Charge (Room No : 303)',
  'CGST (SALES)(Room No : 303)', 'SGST (SALES)(Room No : 303)')/OnAmt=base
  on all three rows — Python-era rows blank all of it → **BUG-AUD-11**;
  root cause also upstream: `create_checkin` omitted `RoomOcc.RoomType`
  (VB6 `fdWalkInEntry.frm:5663` / `HMS.bas:149593` write it; every live
  VB6 RoomOcc row = 'RO').
- Dormancy (deferred branches, evidence-based): `Comp='Y'` never occurs
  (distinct=['']); in-house `ExtraBed>0` = 0; `EXTB` PayCharge rows ever
  = 0; `PlanCharge>0` rows ever = 0 (plan influence = PlanCode stamp on
  RC row + rate already inside RoomRate); Enviro `Checkout='Standard'`,
  `RoomRentBefChkOut='No'` → checkout-variation branch never triggers;
  `RoomChrgPostingType='Daily'` → gate passes.
- Guard fires live today: billed in-house rooms (folio 458/303, 459/304)
  — `billed_folios_for_date` returns them.

**MAP (gaps vs Python):**
- U0: `PostChrgWindow` was a **manual single-charge form** (room combo +
  amount box + paycode) — wrong feature under the VB6 caption; VB6
  fdPostChrg has no manual entry (that is fdPaymentCharge territory).
- U1: batch engine existed (`nightaudit.post_room_charges_for_date`)
  but lacked `progress` cb, `eligible` in result, own-connection explicit
  rollback, Comp filter.
- U2: engine row shape blank (BUG-AUD-11b) + GST 5% (BUG-AUD-10).
- U3: no billed-room guard function; no Enviro gate in UI.
- U4: `create_checkin` RoomType gap (BUG-AUD-11a).

**SPECIFY+IMPLEMENT (spec 002, 9 FRs/6 SCs):**
- `core/nightaudit.py`: `GST_RATE 0.05→0.025`; `get_inhouse_rooms` +
  PlanCode/GuestProf/RoomCat/RoomType select, `ISNULL(GF.Comp,'')<>'Y'`
  filter; `post_room_charges_for_date(..., progress=None)` → per-room
  `progress(done, total, roomno)` before each post, `eligible` in result,
  VB6-shape INSERTs (FolioNoDocid/GuestProf/RoomCat/RoomType/PlanCode/
  Comments/TaxPer 0|2.5/OnAmt=base), `except → own-cn rollback → raise`;
  **new `billed_folios_for_date(vdate)`** (VB6 Proc_62_23 join:
  PayCharge `Bill_No<>''` matched via `FolioNoDocid∈{GF.DocId,
  GF.MFolioNoDocid}` OR `PC.FolioNo=RO.FolioNo`).
- `core/folio.py`: manual `post_room_charge` same GST fix + TaxPer/OnAmt
  columns (PYT-guard stays here only — batch engine writes directly,
  VB6 has no PYT guard there).
- `core/checkin.py`: RoomType derive from RoomMast.TYPE (shared query
  with RoomCat) + RoomOcc INSERT column.
- `ui/posting_forms_ui.py::PostChrgWindow` rewritten: caption "Post
  Charges /Payments", Date For `QDateEdit` (calendar popup, default =
  parsed business date `%d/%b/%Y`, fallback today), Post Charges /
  Refresh / Exit, red-bold `lbl_display`, in-house grid (Room/Folio/
  Guest/Rate/Plan/Status: To post | Posted | Billed — settle first),
  `_post` order = **VB6 order: billed guard (exact message) → Enviro
  gate (info + no-op) → nothing-to-post pre-check (FR-006, no writes)
  → engine with progress cb (`QApplication.processEvents`) → "Posting
  Room Charges Completed" + FR-009 summary (Eligible/Posted/Already
  posted) → refresh**; failure → "Posting failed" + critical box.
  No confirm dialog (VB6 parity); manual amount UI removed (documented:
  belongs to fdPaymentCharge, out of spec 002 scope).

**TEST:** `tests/database/test_fdpostchg_posting.py` (6 rollback-safe
DB-state): exactly-once across 2 runs (per-folio 3 rows, run-2
`posted==0`, progress cb contract 0..n-1) · row shape + 2.5% tax +
Comments/`TaxPer=2.5`/`OnAmt=base`/GuestProf/RoomCat/RoomType='RO'/
FolioNoDocid/PlanCode/U_Name='PYADMIN'/FolioLog 'P' · own-connection
induced failure on 2nd PayCharge INSERT → RuntimeError + fresh-conn row
count unchanged (rollback proof) · exception propagates on fixture cn ·
billed guard negative (fresh check-in) + positive (Bill_No row insert) ·
`Comp='Y'` skip. Plus `test_wave_ui_forms.py::TestPostingFormsUi` +5
(caption/Date-For widgets + manual-entry widgets absent, enviro gate
blocks engine, billed guard exact message, nothing-to-post, success
progress label + summary). GST assertion updates: `TestFolioRoomCharge`
(75+75), checkout-balance guards (525), receive_payment T8 (1.05).
Targeted batch: **16 passed**. Full suite: **1097 passed, 1 skipped,
0 failed** (585.57s) — +11 from this iteration (6 DB + 5 UI), remaining
+5 attributed to the concurrent Main Setup session's test edits
(`test_plan_definition.py` touched 19:51:08 mid-run; not separable
without re-run).

**VERIFY (BUG-AUD-08 discipline):** shell.py hash at iteration start =
`A7F192D456C8481E` (iteration-3 baseline). Re-verified before regen →
**CHANGED to `7D535A25919C6B2D` (mtime 19:51:08)** — concurrent session
actively rewriting `ui/shell.py` + `core/enviro.py` + `core/general_setup.py`
+ `core/plan_definition.py` (Plan Master Enviro-switch wiring,
MS-038/Banquet registry imports) during this iteration's test run.
Per BUG-AUD-08 rule: **parity regen DEFERRED this iteration** (report
remains iteration-3 snapshot `CD33D95C…`; form-file inventory unaffected
by this iteration's changes — no files added/removed under
`implemented/HMS_REVERSE_ENGINEERING/HMS` or form-module set). Regen
from a quiescent tree in the next iteration.
**Regen completed 20:37:12** (same iteration, later): scan inputs
(`ui/*.py`, `core/*.py`, VB6 dir) stable since 19:51:08 (~46 min; only
`_qa\triage_*.py` scratch writes, not scan inputs) → regen run recorded
per BUG-AUD-08 discipline: shell hash `7D535A25919C6B2D` @19:51:08,
report `CD33D95CB4CEAD92` → **`B4BC7F3B70F7F8A4`** (2020 lines).
Section E totals: 321 .frm / 32 .bas; named 1065, ported **170**,
missing **895** (unchanged from BUG-AUD-07 fix baseline — this iteration
added no new top-level fn ports); ui 144 / core 175 files; form status
MISSING 0 / REGISTRY 168 / LIKELY 45 / PY_FILE 91 / SHELL 2 /
REPORT_VIEWER 15. Diff vs last git commit (HEAD predates the day's
Banquet/RS wave) shows REGISTRY→PY_FILE promotions for `hall_*_ui.py` /
`rs_payment_receive_ui.py` / `catering_booking_ui.py` /
`data_receiving_ui.py` files (created 14:18–15:28 by the concurrent
session) — attribute to that wave, not this iteration. Note: the tool
lists **fdPostChrg.frm = REGISTRY** ("Post Charges /Payments" via
shell.py registry) because file matching is stem-based and the window
class lives in `posting_forms_ui.py` without a `fd_post_chrg_ui.py` twin
— file-level classification only (BUG-AUD-06 caveat); the behavioral
VERIFIED verdict lives in the ledger + this log, not the tool.

**VERDICT:** fdPostChrg = **VERIFIED** (ledger row added) — every
user-visible VB6 behavior (batch posting for a date, billed guard exact
message, enviro gate, per-room progress label, completion + summary,
idempotent exactly-once, VB6 row shape, 2.5% tax) has behavioral +
DB-state evidence; BUG-AUD-10/11 fixed with live-evidence citations.
Documented dormant branches (cannot trigger on this deployment — live
evidence above): plan-package second loop (PlanCharge>0 = 0 rows ever),
extra-bed posting (ExtraBed>0/EXTB rows = 0 ever), checkout-variation
branch (Checkout='Standard', RoomRentBefChkOut='No'); guard per-room
"Re-Check Room No" exact list format documented (decompile ambiguity).
OPEN: live GUI walkthrough of the window (Phase 7 end-to-end), parity
regen deferred to next iteration (concurrent session), historical
Python-era double-tax rows (Vdate 10-02) flagged for ops — not rewritten.

### Iteration 5 — fdRoomChange (Room Change) — 2026-10-04

**READ (spec-kit):** `specs/003-fdroomchange-ui/` (spec, plan, research,
data-model, contracts, quickstart, tasks) — VB6 `fdRoomChange.frm` (7373-line
decompile) save path + validation strings evidenced in spec §1.

**MAP (P1 implemented in place):** one dialog `ui/fo_sub_forms_ui.py::`
`RoomChangeWindow` (L119) + `open_room_change` (L893); menu registry
`ui/shell.py:2686-2692`; toolbar `ui/frontoffice.py:1000` (selected-folio
prefill, no `QInputDialog`); legacy `_open_room_change` (called nonexistent
`checkin_mod.room_change`) removed + guarded by test; persistence only via
`core/fo_ops.py:85 room_change` (12 steps, single commit / rollback-on-error).

**DECISION — G1 `INTENTIONALLY DIFFERENT` (documented; owner 2026-10-04):**
VB6 nayi `RoomOcc` row me `Type=''` likhta hai (fdRoomChange.frm 3632);
Python `Type='I'` likhta hai (fo_ops INSERT literal). Readers
`ui/fo_sub_forms_ui.py:87` + `ui/dashboard.py:168` dono `Type='I'` par
filter karte hain → writer unchanged (core edit dashboards ko break karta).
Row-level semantics (`'I'` open vs VB6 `''` open, old `'C'` + `NewRoomNo` +
`Reason`) identical; literal-only delta. Follow-up: VB6-written `''` rows
Python readers ko nahi dikhti (research OG-8) — VB6 retire hone par revisit.

**EVIDENCE (2026-10-04, live env):**
- Unit gate `QT_QPA_PLATFORM=offscreen python -m pytest tests/unit/test_room_change_ui.py tests/unit/test_missing_logic_core.py -q` → **33 passed, exit 0** (18 UI incl. registry/toolbar/legacy wiring + 15 core incl. new G1 positional test `test_room_change_g1_type_decision`).
- DB-state gate `python -m pytest tests/database/test_room_change_parity.py -q` → **1 passed** on live DB (rollback-safe txn): new row `SNo=MAX+1`, `RoomNo=new`, `Type='I'`, `ChngDate` set; old row `Type='C'`+`NewRoomNo`+`Reason`+`ChkOutDate`; `RoomMast.RoomStat='D'`; row count old+1; `Type='I'` reader count finds new row; negatives (same-room / occupied / RoomMast-miss) raise with **zero partial rows**; GuestMessage/Booking/PlanDetails re-point asserted conditionally on pre-data.
- Validation strings byte-exact vs VB6 (spec §1.4 table ↔ contract C3.1-C3.8), save order preserved (research D7).
- **Core fix landed 2026-10-04 19:0x (coordinated with DB-001 session):** `fo_ops.room_change` step 7 ab DELETE se **pehle** PlanDetails snapshot leta hai (DELETE-ke-baad-SELECT hamesha 0 rows → plan loss), scope `DocId + Site_Code` DELETE ke saath aligned. Evidence: DB-001 `tests/database/test_roomchange_parity.py` **4/4 green** (12-step + atomic), full regression `tests/unit + tests/database` → **1019 passed, 1 skipped, 0 failed, exit 0**.

**VERDICT:** fdRoomChange = **PARTIAL** (ledger) — P1 parity core has
behavioral + DB-state evidence, but constitution VERIFIED requires the
remaining surfaces: OG-6 `UserPermission.ChangeRoomDtl` + `enviro` gating
(Form_Load frm 2881-2917 not ported anywhere in Python), OG-7 room-change
history/report rows (frm 6727-7094 — separate migration unit), OG-1..OG-5
P2 plan/package, rate/season, Remarks/Auth, Yes-No, EPABX-dial (spec §3.4
deferred). Spec-side P1 §5 gate (unit + live-DB) = met 2026-10-04.
