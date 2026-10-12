# MAIN SETUP — TEST RESULTS (compare-loop evidence log)

**Date:** 2026-10-02 · **Scope:** Main Setup compare→debug→test→verify loop
(MS-001..MS-037, waves 1–3)

> **RECONSTRUCTION NOTE:** this file was overwritten by a parallel opencode
> session at 10:47–10:48 on 2026-10-02 (stale 39-check
> `verify_main_setup.py` content). Rebuilt the same day with CURRENT evidence.
> The overwritten copy is preserved as
> `MAIN_SETUP_TEST_RESULTS.md.superseded_20261002_1047` — read only for
> structure, its claims are stale.

Authoritative sources: `MAIN_SETUP_BUG_REGISTER.md` (MS-001..037 + wave logs),
`MAIN_SETUP_VB6_VS_PYTHON_COMPARISON.md` §11 (round-2 tables),
`SESSION_HANDOFF.md` round-2 section.

---

## 1. Suite evolution (entire `tests/` tree)

| Stage | Result | Note |
|---|---|---|
| Baseline before round-2 | **873 passed, 1 skipped** | pre-dispatcher-loop |
| After 7 dispatcher ports | **907 passed, 1 skipped** (101.27s) | round-2 complete |
| Mid wave-2 | **918 passed, 1 skipped, 10 errors** | `general_setup_tabs` FIELD_TYPES breakage (QSpinBox import / `FIELD_TYPES.get`) |
| **FINAL (post wave-3)** | **1033 passed, 1 skipped, 0 failed, 2 warnings — 134.94s** | warnings = pre-existing `datetime.utcnow` deprecation in `ui/general_setup_tabs_ui.py:217` |
| Mid 2026-10-02 round-3 | 5 failed, 1033 passed, 1 skipped — 452.75s | parallel session's `core/menu_help.py` Opt5-7 regression (§5) + transient DB deadlock; transient trio also seen in an earlier racy run |
| **AUTHORITATIVE (2026-10-02 ~13:47)** | **1038 passed, 1 skipped, 0 failed — 59.42s, exit=0** | 1038 = 1033 + 5 new `tests/database/test_main_setup_isolation.py` (parallel session); after menu_help Opt5-7 fix (§5) |
| **AUTHORITATIVE round-4 (2026-10-02 ~15:4x)** | **1038 passed, 1 skipped, 0 failed — 65.24s, exit=0** | after round-4 batch (§6): [LOST] recovery, MS-004/MS-020 close-outs, 6 grids bound, MS-013 Tier-1, fa_voucher PYEOF+setTabOrder fixes |

Final command: `QT_QPA_PLATFORM=offscreen python -m pytest -q -p no:cacheprovider`
(run over the entire `tests/` tree).

## 2. Verification tables

### 2.1 Dispatcher-stub parity (MS-031 guard fix)

| Test | Result | Note |
|---|---|---|
| `tests/unit/test_mainsetup_registry_parity.py` | **5/5** | after MS-031 fix (`_COMING_SOON_QUALNAME_SUFFIX` + `endswith` guard); before fix: 4/1 with 9 red leaves silently passing |

Every Main Setup leaf is either wired to a real target or allowlisted with
VB6 evidence (`ALLOWED_INACTIVE`, MS-036).

### 2.2 General Setup tabs (wave-2 FIELD_TYPES fix)

| Test | Result |
|---|---|
| `tests/unit/test_general_setup_tabs.py` | **19/19** (after `FIELD_TYPES.get`/`FIELD_MAXLEN.get` locals + QSpinBox/QDoubleSpinBox import fix) |

### 2.3 FA Enviro (MS-005/006/007/026)

| Test | Result | Note |
|---|---|---|
| `tests/unit/test_fa_enviro_parity.py` | green | incl. `test_fa_enviro_update_settings_matches_vb6_no_audit` — MS-006 pins NO audit columns (live FAEnviro has no U_Name/U_AE/U_EntDt; 58 cols) |

### 2.4 MS-016 / MS-017 usermaster (wave-2 targeted run)

Targeted wave-2 run: **26 passed** — usermaster persistence/validation tests
(MS-016 GodCode/FloorCode/BackColor/AllowDtChng; MS-017 `_validate` VB6
rules) + wrong-target wiring (19) + general setup tabs.

### 2.5 MS-037 RBAC (`core/permission.py`)

Live `_rbac_guard` check: **SA open, ADITYA denied** — fail-open semantics
preserved (deny only on positive evidence).

### 2.6 MS-008 schema upgrade (safe subset)

| Check | Result |
|---|---|
| `py_compile` + `ruff` on `core/schema_upgrade.py`, `ui/schema_upgrade_ui.py` | clean |
| Read-only `plan()` | **630 statements** (573 ensure-column, 20 create-table, 17 create-PK, 15 add-column, 4 view drop/create, 1 guarded drop-PK) |
| `guard_audit()` | **630/630 guarded**, violations `[]`, guarded-DROP allowlist = 3 |
| Offscreen dialog (SA) | preview **157,007 chars**, Run enabled |
| Offscreen dialog (non-SA) | "Only Supervisor is Authorised.", Run disabled |
| `run("NOPE")` | `ValueError` raised **before any DB connect** |
| DDL against MOONData2627 | **none executed** (verification read-only) |

### 2.7 MS-020 site/HO query sweep

| Check | Result |
|---|---|
| `py_compile` | **7/7** fixed files |
| Targeted `pytest -k "nightaudit or plan_definition or checkout or forex or pos_advance or pos_display or excise"` | **50 passed** |
| Live smoke of all 7 fixed queries | OK — forex.currencies=0, rev_pay_codes=167, nightaudit flags, clearance='No', mode_is_standard=False, excise items=500, godowns=64, `_TABLES_SQL` rows=58 |

Sweep totals: 7 fixed / 100 kept (VB6 site-only or txn-scoped) / 3 uncertain
kept / 5 excluded-file rows classified (see register MS-020).

### 2.8 folio Chain-B fixes

| Check | Result |
|---|---|
| `py_compile` on `core/folio.py` | clean |
| `pytest tests/unit/test_nightaudit_laravel_parity.py tests/unit/test_nightaudit_fixtures.py` | **10 passed** |
| References to `run_startup_normalization` in tests | none (no test coverage — verified by search) |

## 3. Lint (ruff 0.15.10)

| File | Result |
|---|---|
| `core/schema_upgrade.py`, `ui/schema_upgrade_ui.py` (new) | **All checks passed** |
| `ui/shell.py` | 30 findings (was 47 at HEAD — pre-existing style E402/E702/F401/E731) |
| `core/folio.py` | E741 — pre-existing at HEAD |
| `core/nightaudit.py` | F401 — pre-existing at HEAD |

## 4. Suite-instability note (wave-3 + round-3)

Intermittent intermediate failures in `tests/unit/test_bas_module_ports.py`
and `tests/unit/test_wrong_target_wiring.py` during wave-3 were traced to a
**concurrent parallel session mid-writing `core/__init__.py`** (transient
ImportError for `voucher_type_ops` / `channel_config`), NOT test flakiness.

Round-3 (2026-10-02) saw three more non-code failure classes, all cleared:

| Class | Symptoms | Cause | Resolution |
|---|---|---|---|
| menu_help Opt5-7 | 5 failed: `test_collect_logic_live` (FO counts 0), `test_user_permissions_ui` ×2, `test_wave_c_gstr2` ×2 | parallel session's `core/menu_help.py` added `Opt5, Opt6, Opt7` to `_cols`; live MenuHelp has no such cols → 42S22 → `except: rows=[]` → empty menus (§5) | fixed in `menu_help.py` (§5) |
| shell.py mid-run edit | 3 failed: coming_soon resolver, general_setup parity (missing `Payment Receive Entry (POS)`), wrong_target `[Corporate Member Master]` | parallel session wrote `ui/shell.py` at 13:37 while/around the suite ran; assertions evaluated a half-written registry | all **65/4 files pass** on re-run against final tree (13:46) |
| DB contention | 2 failed: `test_currbal_rebuild` ×2 (`40001` deadlock 1205, `42000` lock timeout 1222) | parallel session's app/tests hammering MOONData2627 (suite 452.75s vs normal ~60s) | pass on re-run; contention, not code |

Standalone crash note: `tests/unit/test_user_permissions_ui.py` aborts with
exit -1073740791 (0xC0000409) when run alone (no QApplication); it runs and
passes inside the full suite — pre-existing, not a regression.

## 5. menu_help Opt5-7 regression (2026-10-02, fixed)

**Blast radius:** parallel session rewrote `core/menu_help.py` adding
`Opt5, Opt6, Opt7` to `_load_user`'s `_cols` (line 47). Live `MenuHelp` has
19 columns ending at `OutletCode` — no Opt5-7. Every query branch raised
`42S22 Invalid column name 'Opt5'`, swallowed by `except: rows = []`, so
`_load_user` returned **0 rows for every user** (silent — no error surfaced).
Downstream: empty menus, FO collect counts all 0, RBAC menubar leaves
unresolvable, User Permission UI tests failing.

**Evidence:**
- `menu_help._load_user("SA")` = 0 rows → after fix **456 rows** (sample `Order Booking`).
- `collect_logic.collect("04_FrontOffice")` counts: `reports: 33` restored (was 0).
- VB6 `UserPermission.frm` uses **only Opt1–Opt4 + Param_Str**; `rg "Opt5"` over
  the whole VB6 tree = **no matches** (Opt5-7 are schema-divergent invention).

**Fixes (2 edits, keeps parallel session's new features):**
1. `_load_user._cols` → back to `Opt1..Opt4, Code` (the mapping loop already
   read exactly those 9 positions).
2. `get_permissions` fallback: flag `have_opt57` so the Opt1-4 fallback path no
   longer maps `r[8]=Code` as Opt5 (Code=`"1"` would have false-positived
   Opt5=`Y`). `get/set_permissions` already had try/fallback; only
   `_load_user` lacked one.

**Verification:** trio run `user_permissions_ui + wave_c_gstr2 +
collect_logic_live` → pass individually; full suite → **1038 passed,
1 skipped, exit=0**.

## 6. Round-4 batch verification (2026-10-02 afternoon, "CONTINUE WITH ALL")

Six parallel work packages; per-package evidence:

| Package | Verification | Result |
|---|---|---|
| [LOST] re-audit (MS-018/019/022-025/032) | recovered verbatim pre-clobber rows (opencode session DB) + re-verified vs today's code | **7/7 recovered, HIGH confidence, 0 [LOST] left** (method: `MAIN_SETUP_REAUDIT_FRAGMENT.md`) |
| MS-004 cleanup | evidence audit → premise disproven (live callers `shell.py:845/895`; `Company` vs `SubGroup` semantics) | CLOSED; docstring guards; `test_company_crud` 4 + `test_comp_master` 6 passed; ruff clean |
| MS-020 uncertain ×3 | VB6 loc twins + HMS.exe binary scan (0 bare `LOGSITE_CODE='HO'` suffixes) + helper analysis (`MainLib.bas:301-312` quote-only) | **KEEP ×3, no code change**; tally 7 fixed / 103 kept / **0 uncertain** |
| 6 grids bound (MS-028) | smoke row counts: DGHelp 3107, DGGroup 73, DGRevenue 67, DGPurchaseGodown 64, DGpurchitem 768, DGDepart 67; missing-table → `[]`; ruff 85→85 | bound + 3 `core/enviro.py` type fixes (CatalogLimit/KitchenStockReport/SmartCardItem — were aborting every save); save-path 34 keys 0 failures 0 drift |
| MS-013 Tier-1 (6 AC cols) | EDITABLE + SubGroup existence check (`SELECT 1 FROM [SubGroup] WHERE RTRIM([SubCode]) = ?`); save smoke **40 keys / 0 validation failures / 0 value drift**; sanity `HallDiscAC='KKDISC'` accept, `'ZZNOSUCH9'` reject | TIER-1 FIXED; targeted run 26 passed (test_general_setup_tabs + registry_parity + fa_enviro_parity); Tier-2 remains product decision |
| Parallel-session breakage triage | stray `PYEOF` at `ui/fa_voucher_ui.py:128` (heredoc artifact → 65 collection errors) + `setTabOrder(..., focusNextChild())` at `:124` (TypeError) | both removed (2-line diff); `test_ui_modules_parity` 5 passed; registry run 24 passed |

**Round-4 final full run:** `QT_QPA_PLATFORM=offscreen python -m pytest -q
-p no:cacheprovider` → **1038 passed, 1 skipped, 0 failed — 65.24s, exit=0**
(§1 table row "AUTHORITATIVE round-4").
