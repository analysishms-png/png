# MAIN SETUP — IMPLEMENTATION STATUS

**Date:** 2026-10-02 · **Lineage:** MS-001..MS-037 (rounds 1–3, waves 1–3)

> **RECONSTRUCTION NOTE:** this file was overwritten by a parallel opencode
> session at 10:47–10:48 on 2026-10-02. Rebuilt the same day with CURRENT
> status. The overwritten copy is preserved as
> `MAIN_SETUP_IMPLEMENTATION_STATUS.md.superseded_20261002_1047` — read only
> for structure; its "COMPLETE / 39 checks" claims are stale.

Sources: `MAIN_SETUP_BUG_REGISTER.md` (authoritative), comparison §11,
`SESSION_HANDOFF.md` round-2 section. Test evidence: `MAIN_SETUP_TEST_RESULTS.md`.

---

## 1. Main Setup compare-loop status — ALL dispatcher-stub leaves closed

Every `_coming_soon` leaf under `&Main Setup` traced to its VB6 dispatch
target (`ModuleAdd.bas Proc_165_2_1E4B100` / `MDIForm1.frm` UTL/SCRD) and
either ported, re-wired, or allowlisted with evidence (comparison §11).

### 1a. Ported (7 new module pairs, wired into `ui/shell.py` — paths per COMPARISON §11a)

| Leaf | VB6 form (loc) | Python core / UI |
|---|---|---|
| Voucher Serialisation | FrmSerialiseVr (1E44380) | core/voucher_serialisation_ops.py · ui/voucher_serialisation_ui.py |
| POS Recycle | FrmPOSRecycleData (1E43E03) | core/pos_recycle_ops.py · ui/pos_recycle_ui.py |
| Enviro Inventry | frmPurEnviro (1E43AE6) | core/purchase_enviro_ops.py · ui/purchase_enviro_ui.py |
| Task Scheduler | FrmJobScheduler (1E4A177) | core/task_scheduler_ops.py · ui/task_scheduler_ui.py |
| Voucher Wise Sundry Entry | VoucherSundrySetting (1E444E3) | core/voucher_sundry_ops.py · ui/voucher_sundry_ui.py |
| Open Item Consumption | FrmConsumMast9999 (1E43224) | core/open_item_consumption_ops.py · ui/open_item_consumption_ui.py |
| POS Bill Deletion | FrmPOSBillDeletion (1E4A1AB) | core/pos_bill_deletion_ops.py · ui/pos_bill_deletion_ui.py |

### 1b. Re-wired / special

- **frmWelcome → SpecialOccasions** (Guest BirthDates/Anniversary): `ui/utility_forms_ui.py`
  `SpecialOccasionsDialog` + `open_special_occasions` (MS-033).
- **Facility Sundry** earlier wire: `ui/fd_forms_ui.py` + registry
  "Facility Sundry Setting" (carried from earlier round).
- Re-wires: PLU File (W.Scale), Cash Card ×2, Recharge/Refund →
  `sct.open_card_recharge` (MS-034).
- Allowlisted inactive with VB6 evidence (MS-036): Rate Group Master, Sale MIS
  Customized, Data Recieving, Data Transfer, Data Transfer (POS),
  Member Bill Sundry Setting.

## 2. Wave-1 (5 parallel agents) — FIXED

| Agent | IDs | Deliverable |
|---|---|---|
| A | MS-010, MS-017 | `core/auth.ensure_sa_user`; `core/usermaster._validate` VB6 rules |
| B | MS-001..004, MS-027 | `ui/comp_mast_form_ui.py` + `core/comp_master.py` (43-col save, 4 DG lookups, registry rewire) |
| C | MS-030, MS-009, MS-011 | `_Vb6KeyMapFilter` + `install_vb6_keymap`; company grid context menu |
| D | MS-012, MS-014, MS-015, MS-028, MS-029 | general_setup_tabs nav toolbar, lookup pickers, roundoff ops/grid, radios |
| E | MS-005, MS-007, MS-026 | `ui/fa_enviro_ui.py` 22 widgets; 42-col harvest; limit checkboxes |

Post-wiring parity **5/5**; suite **907/1**.

## 3. Wave-2 — FIXED

- **MS-016** UserMast GodCode/FloorCode/BackColor/AllowDtChng persisted + UI.
- **MS-037** `core/permission.py` + shell `_rbac_guard` consumption (live SA
  open / ADITYA denied).
- **MS-006** re-opened and fixed properly (no-audit parity regression test).
- **MS-008 research** (explore agent): chain A/B inventory, live schema facts,
  safe-subset spec → user decision "port safe subset".
- FIELD_TYPES breakage in `ui/general_setup_tabs_ui.py` fixed →
  `test_general_setup_tabs.py` 19/19.

## 4. Wave-3 — FIXED

- **MS-008 (implementation):** safe-subset schema upgrade —
  `core/schema_upgrade.py` (630 idempotent statements, `guard_audit()` 630/630,
  guarded-DROP allowlist 3) + `ui/schema_upgrade_ui.py` (admin-gated
  preview/confirm/results) wired to shell `_db_update` (`ui/shell.py:914`).
  No DDL executed during verification.
- **MS-020:** 7 evidence-driven HO site-filter fixes (forex_txn, pos_advance,
  pos_display, excise_gate_pass, nightaudit, checkout, plan_definition);
  100 kept / 3 uncertain / 5 excluded rows classified with VB6 loc refs.
- **MS-021:** register claim corrected ("VB6 consistently uses OR-HO" was
  overstated) → per-query evidence rule adopted.
- **Folio Chain-B (MS-008 Chain B):** 3 divergences fixed in
  `core/folio.py::run_startup_normalization` (FOM NULL guard, PlanMast
  LEFT-JOIN fill-only, KOT Enviro-derived default) + normalized tuples.
- **`core/__init__.py` repaired:** parallel-session artifact (non-existent
  flat `channel_*` modules, duplicate `travel_post`, `auth.dec_bytes`).

## 5. Test status

**FINAL: 1033 passed, 1 skipped, 0 failed, 2 warnings (pre-existing utcnow
deprecation, `ui/general_setup_tabs_ui.py:217`) — 134.94s**, entire `tests/`
tree via `QT_QPA_PLATFORM=offscreen python -m pytest -q -p no:cacheprovider`.
Suite evolution: 873/1 → 907/1 → 918/1 (+10 errors mid wave-2) → 1033/1/0.

## 6. Open items (mirrors register)

1. [CLOSED 2026-10-02 r4] **MS-004** — premise disproven (live callers
   ui/shell.py:845/895; different table/semantics from comp_master);
   docstring wrong-target guards added, 10 tests pass.
2. **MS-013 Tier-2** — remaining Enviro finance A/C columns (AdvanceAc,
   Loan_Ac, Salary_Ac, Cash_Ac, CashCard*, ~21 cols): product decision
   pending (P1) — expose (VB6 parity) vs read-only display (zero GL risk);
   0 live-schema gaps (Enviro 222 cols), no ALTER needed. Tier-1 fixed
   2026-10-02 (6 Outlet/Banquet AC cols editable + SubGroup existence check;
   save smoke 40 keys / 0 failures / 0 drift).
3. [RECOVERED 2026-10-02 r4] **MS-018/019/022–025/032** — all 7 entries
   restored verbatim from pre-clobber opencode session DB + re-verified
   (register Wave-4 log; MAIN_SETUP_REAUDIT_FRAGMENT.md method). 0 [LOST].
4. **Data Transfer / Data Transfer (POS)** — Jet `.mdb` protocol product
   decision; research complete: recommendation = SQL Server-native transfer,
   gate = field sites networked to HO SQL Server? (air-gapped → BCP/CSV/zip
   carrier, same VB6 workflow; optional read-only .mdb importer hedge).
5. **[RESOLVED 2026-10-02] 6 general-setup grids** — DGHelp/DGGroup/DGRevenue/
   DGPurchaseGodown/DGPurchItem/DGDepart now bound in
   `ui/general_setup_tabs_ui.py` (`LOOKUPS` + `_grid_rows` + `lookup_*`
   fetchers; DGDepart via `PrintingParametersTab` RestCode browse). Smoke row
   counts: 3107/73/67/64/768/67; missing table → `[]` (graceful).
6. [RESOLVED 2026-10-02 r4] **3 uncertain MS-020 rows** — all KEEP with VB6
   loc + HMS.exe binary evidence; tally 7 fixed / 103 kept / 0 uncertain.
7. **Crystal .RPT layouts** — app-wide stub; Python uses text reports (no
   Crystal parity).

## 7. Files created / modified this lineage (grouped by wave)

**New — wave-1:** `core/comp_master.py`, `ui/comp_mast_form_ui.py`,
`ui/fa_enviro_ui.py`, `ui/general_setup_tabs_ui.py`,
`ui/voucher_serialisation_ui.py`, `ui/pos_recycle_ui.py`,
`ui/purchase_enviro_ui.py`, `ui/task_scheduler_ui.py`,
`ui/voucher_sundry_ui.py`, `ui/open_item_consumption_ui.py`,
`ui/pos_bill_deletion_ui.py` (+ their `core/*_ops.py` counterparts),
`ui/utility_forms_ui.py` (SpecialOccasions).

**New — wave-2/3:** `core/permission.py` (MS-037),
`core/schema_upgrade.py` + `ui/schema_upgrade_ui.py` (MS-008).

**Modified:** `ui/shell.py` (registry wires, keymap, `_db_update`, `_rbac_guard`),
`core/usermaster.py`, `core/auth.py`, `core/fa_enviro.py`, `core/folio.py`,
`core/__init__.py` (wave-3 repair), and MS-020 sweep: `core/nightaudit.py`,
`core/checkout.py`, `core/plan_definition.py`, `core/forex_txn.py`,
`core/pos_advance.py`, `core/pos_display.py`, `core/excise_gate_pass.py`.
