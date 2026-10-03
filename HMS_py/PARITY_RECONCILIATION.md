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

## Reconciliation 2026-10-03 (baseline → regenerated)

Source of baseline: pasted parity report / `*.baseline_20261003.txt`.
Regenerated after D2-form batch + Main Setup audit fixes.

| Metric | Baseline | Regenerated | Δ | Evidence / cause |
|---|---:|---:|---:|---|
| Forms MISSING | 3 | 1 | −2 | `ui/dm_tree_ui.py`, `ui/pr_attend1_ui.py` ported (DMTree, PrAttend1) |
| Forms COMING_SOON | 3 | 1 | −2 | Item Issued On Cleaning + Godrej Locks ab registry-wired (BUG-MS-08 imports theek kiye) |
| Forms REGISTRY_ONLY | 1 | 0 | −1 | Denomination ab dedicated UI par |
| Forms REGISTRY | 178 | 177 | −1 | shared-screen rebalance |
| Forms PY_FILE (dedicated UI) | 71 | 77 | +6 | naye dedicated UI files |
| .bas FULL | 23 | 26 | +3 | module batches migrate hue |
| .bas PARTIAL | 9 | 6 | −3 | inhi ka upgrade |
| Python ui/*.py | 126 | 134 | +8 | — |
| Python core/*.py | 146 | 170 | +24 | — |
| Python core defs | 2217 | 2359 | +142 | — |
| VB6-ONLY tables (PY missing) | 48 | **25** | −23 | naye core modules ne23 tables cover ki |
| BOTH-side tables | 213 | 236 | +23 | — |
| PY-ONLY tables | 1 | 1 | 0 | `combopackhead` — investigation pending (§16 spec) |
| Named procs missing | 1015 | 1015 | 0 | obfuscated-proc gap — table-level coverage se track hota hai |

## Standing rules

- Numbers are a BACKLOG, not final truth; regenerate after every major
  batch and record the delta here.
- A gap is never "complete" because code was added — only after the
  acceptance checklist (constitution §Migration Workflow & Quality Gates)
  and this reconciliation update.
- Baseline files are never overwritten without a dated copy.

## Next gaps (from regenerated report)

1. 1 remaining MISSING form + 1 COMING_SOON (see regenerated Section A).
2. 25 VB6-only tables (Section C1) — investigate individually per spec §17.
3. 396 named business/report procs +619 event handlers (Section D5) —
   event handlers usually map to button callbacks; verify via Section A.
