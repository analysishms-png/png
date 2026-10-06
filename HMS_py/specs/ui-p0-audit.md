# Phase 1 — P0 UI Reality Audit (RESEARCH ONLY)

- **Register audited**: `specs/ui-p0-bugs.md` (27 P0 rows, dated 2026-10-01).
- **Method**: each row re-verified against **live code** (PyQt6 port) and, where claimed VB6 parity issues exist, against decompiled VB6 sources under `implemented/HMS_REVERSE_ENGINEERING/HMS/`.
- **Status vocabulary**: `FIXED` / `OPEN` / `PARTIAL` / `STALE-INVALID`.
- **Evidence format**: every status carries `file:line` anchors. No application code was modified.

## Evidence limitations (record before reading counts)

1. Decompiled VB6 `.frm` files have their **design sections stripped** — control captions/sub-tab labels are not recoverable from source. `frmEnviro.frm` exposes only 9 Begin blocks (DataGrids); the "26 sub-tab" claim cannot be confirmed or denied from VB6 source.
2. Where design data was stripped from `.frm`, the decompiled **`HMS.exe` design blob** was used as alternate evidence (noted per row).
3. Label captions in `CompMast.frm` are likewise stripped → several VB6 TextBox descriptions in the register are unrecoverable names; field **counts and MaxLength/tab indices** remain verifiable.

## Summary counts (total 27)

| Status | Count | IDs |
|---|---|---|
| FIXED | 17 | P0-03, P0-04, P0-06, P0-07, P0-08, P0-09, P0-10, P0-11, P0-12, P0-13, P0-15, P0-16, P0-17, P0-20, P0-21, P0-23, P0-25 |
| PARTIAL | 9 | P0-01, P0-05, P0-14, P0-18, P0-19, P0-22, P0-24, P0-26, P0-27 |
| OPEN | 0 | — |
| STALE-INVALID | 1 | P0-02 |
| **Total** | **27** | |

**OPEN = 0.** All 9 PARTIAL rows are grouped by fix-category at the end (these drive Phase 2 research).

---

## Per-row audit

### Company Master (P0-01 … P0-04)

#### P0-01 — Company Master missing fields / field count — **PARTIAL** (delta: M)
- VB6 `CompMast.frm`: **41 TextBox blocks** (`Txt(0..36)` + `txtCurrBal` + 3 grid).
- Python `ui/comp_mast_form_ui.py`: only **35 `_row()` widgets** (`_row` defs :291-383) → **~6 fields short**.
- Confirmed missing by name: **Contract Type** = VB6 `Lbl(27)`/`Txt(27)` (MaxLength=20, tab=36). Zero occurrences of `ContractType`/`contract_type` in `ui/comp_mast_form_ui.py` **or** `core/comp_master.py`.
- Remaining unmapped VB6 indices: names unrecoverable (captions stripped) → count delta only, cannot enumerate precisely.
- Target: `ui/comp_mast_form_ui.py` form builder + `core/comp_master.py` `FIELDS` (:44-59).

#### P0-02 — Company Type editable when it should be auto — **STALE-INVALID**
- Code is already auto-generated and read-only: `core/comp_master.py:408-415` (`next_subcode`, required at :132); widget read-only `ui/comp_mast_form_ui.py:288-291`.
- Register claim no longer matches any state of the code.

#### P0-03 — Company Name maxlength/uppercase/required — **FIXED**
- `setMaxLength(LIMITS["name"])` `ui/comp_mast_form_ui.py:246-254`; `LIMITS["name"] = 75` `core/comp_master.py:33`; uppercase via `name_help` `core/comp_master.py:65-66`; required validation :445.

#### P0-04 — Company state/city text entry — **FIXED**
- `_pick_city` `ui/comp_mast_form_ui.py:497-506`, wired at :330-331, values collected in `_gather` :735-747.

---

### FA Environment (P0-05 … P0-14)

#### P0-05 — FA Enviro full editability / Save / Cancel / Exit — **PARTIAL** (delta: M)
- Layout is fully editable: `ui/fa_enviro_ui.py` — 10 `QGroupBox` (VB6 had 7 frames), 27 `QCheckBox`, ~59 controls vs **58 columns** in `core/fa_enviro.py` `EDITABLE` (:24-39).
- Save/Cancel/Exit present: `ui/fa_enviro_ui.py:295-308`; save path :370-475 → `core/fa_enviro.py` `update_settings` :140.
- **Missing piece**: Integrity control (see P0-14) and any cosmetic group ordering drift.

#### P0-06 — FA Enviro checkbox missing/disabled — **FIXED**
- All checkbox groups present and enabled: `ui/fa_enviro_ui.py:96-99`, `:156-160`, `:190-211`, `:238`.

#### P0-07 — FA Enviro “default search” fields — **FIXED**
- `chk_show_group` / `chk_dont_show_group` `ui/fa_enviro_ui.py:190-193`.

#### P0-08 — SeparatePage / PrintTo / PrintBy checkboxes — **FIXED**
- Register’s claim names are **absent from VB6 source too** (STALE claim names); actual VB6 columns map to:
  - `chk_cash_page` (“Separate Page for each day in Cash/Bank Book”) `ui/fa_enviro_ui.py:238`
  - `chk_rep_toby` `ui/fa_enviro_ui.py` (PrintTo/PrintBy group)
- Both editable, both in `EDITABLE` tuple.

#### P0-09 — “Cess/OD” enviro fields — **FIXED**
- Present within Voucher Entry / general groups: `ui/fa_enviro_ui.py:200-212`.

#### P0-10 — MustShow / MustNotShow checkboxes — **FIXED**
- Register’s claim names absent from VB6 too; mapped to `chk_show_group` / `chk_dont_show_group` `ui/fa_enviro_ui.py:190-193`.

#### P0-11 — Voucher Entry frame field count — **FIXED**
- Voucher Entry group `ui/fa_enviro_ui.py:200-212` = 6 checkboxes (VB6 frame content matches; the register’s “10 fields” count is not reproducible from either source — see limitations).
- **Column parity check**: VB6 `FaEnvron.frm` `btnok_Click` UPDATE column list (:2780-2790) matches `core/fa_enviro.py` `EDITABLE` (:24-39) exactly — **58 columns, 1:1**.

#### P0-12 — FA Enviro save drops columns — **FIXED**
- Same evidence as P0-11: `EDITABLE` tuple = VB6 UPDATE list; `update_settings` `core/fa_enviro.py:140` persists all of them.

#### P0-13 — OptRoundOff radios not wired — **FIXED** (claim location corrected: OptRoundOff lives in **Parameter** tab, not FA Environment)
- Radios Standard/Upper/Lower: `ui/general_setup_tabs_ui.py:1630-1655`; `_ro_toggled` :2155, `_set_ro_type` :2164, `_pick_roundoff` :2173, `_save_roundoff` :2271.

#### P0-14 — Integrity button missing — **PARTIAL** (delta: S)
- VB6 `FaEnvron.frm:1942` `Begin BtnEnh BtnIntegrity` (handler `BtnIntegrity_UnknownEvent_9` :2802) exists in source.
- Python exposes **DateLock / RunPIF as editable checkboxes instead** (`ui/fa_enviro_ui.py:198-199` comment) — no Integrity button, no integrity check run.

---

### Login / Password (P0-15 … P0-16, P0-22 … P0-23)

#### P0-15 — Login flow / company select — **FIXED**
- Flow: `main.py:47` → `shell.run_flow()` `ui/shell.py:3844-3853` → `LoginDialog` :531 → `CompanyDialog` :683 → `MainWindow` :3311.
- VB6 `frmPassword.frm` has only 2 controls (`CmdLogin`, `txtPassword`) — no on-screen keyboard control; register claim STALE.
- ⚠️ **Cleanup finding (not P0)**: duplicate dead `ui/login_ui.py:37` LoginDialog references `self.cb_company` never created (:201) → AttributeError if ever constructed; only imported by `debug_imports.py:22`.

#### P0-16 — Password masking — **FIXED**
- `EchoMode.Password` `ui/shell.py:601`.
- VB6 `frmPassword.frm` `txtPassword`: `PasswordChar="*"` and **no MaxLength** → register’s “MaxLength=8” claim is STALE vs VB6 source.
- Encryption is VB6-byte-exact: `core/auth.py` `encrypt`/`decrypt`/`enc_bytes` (:99-130), `check_login` :202 (seed cipher ord+27+SHIFT; `enc_bytes('', seed=65)` = `'\'` default SA).

#### P0-22 — User Master password field masking + maxlength — **PARTIAL** (delta: S)
- Masked: `ui/usermaster_ui.py:80` `edPass.setEchoMode(Password)`.
- Blank = keep-current behavior: :292-295; `insert(rec, plain_password=pwd)` :290; Change Password modal :342-388.
- **Missing**: `setMaxLength(usermaster.LIMITS["password"])` on `edPass` — every sibling field has its `setMaxLength` (:72-104), password alone doesn’t.

#### P0-23 — Change Password modal — **FIXED**
- New/confirm masked `ui/usermaster_ui.py:354` / :357; match check; `set_password` :383.
- (Cosmetic S-issue, not tracked as P0: modal `except` shows “DB error:” for a ValueError mismatch.)

---

### Grids / Context menus (P0-17)

#### P0-17 — Company grid right-click menu — **FIXED**
- `_grid_menu` `ui/shell.py:800`: Add/Edit/Delete/Save/Cancel/Exit with enable-state; wired :742-743; `_on_cell_double` :795; `_on_*` handlers :841-950; `reload` :774.

---

### General Setup (P0-18 … P0-21, P0-24)

#### P0-18 — General Setup toolbar icons/counter — **PARTIAL** (delta: M)
- `_toolbar_row` `ui/general_setup_tabs_ui.py:102-170` = **12 icon buttons** (`QStyle.standardIcon`, each with `objectName` + `accessibleName`, **no visible text**) + “Browse” + record counter :162-165.
- Register claims “16 buttons, text-only, no icons, no counter” → **counter + icon claims STALE**, but 12 ≠ 16 and **no Print / no Post** button.

#### P0-19 — General Setup sub-tab count vs functional handlers — **PARTIAL** (delta: L)
- Python `SUB_ROWS` `ui/general_setup_tabs_ui.py:1445-1454` = **19 sub-tabs, all functional**: `_show_page` :2145, generic pages :1697-1712, `PAGE_FIELDS` ~:1955-1990.
- Register claims **26** → 7 unaccounted. VB6 `frmEnviro.frm` sub-tab captions stripped → **count unverifiable from source** (needs `HMS.exe` design blob extraction, out of scope for this audit).
- Register claim “only Printing works” is **disproven** — all 19 dispatch.

#### P0-20 — FomBillCopies / bill copy fields — **FIXED**
- `FomBillCopies` in `PAGE_FIELDS` ~`ui/general_setup_tabs_ui.py:1989`; core `general_setup.py` `roundoff_count` :1097 / `roundoff_list` :1103.

#### P0-21 — RoundOffSetting radio trio + grid sync — **FIXED**
- Roundoff grid `ui/general_setup_tabs_ui.py:2256-2264`; `_save_roundoff` :2271; `core/general_setup.py` `save_roundoff_setting` :1144 / `upsert_roundoff_setting` :1157; persistence `sys_config.py:166` / :174 / :210.

#### P0-24 — Setup toolbar print/post — **PARTIAL** (delta: S)
- Same `_toolbar_row` as P0-18: 12 named buttons (icon-only), **no Post**, no Print.

---

### F-keys (P0-25 … P0-27)

#### P0-25 — Enter→Tab app-wide — **FIXED**
- `_Vb6KeyMapFilter` `ui/shell.py:188`; spec comment :127-150 (Enter→Tab for QLineEdit without `returnPressed`, read-only text edits; `_busy` re-entrancy guard :193; `_yield_existing_shortcut` :204); dispatch ~:225-273 / :337-341.
- Installed app-wide: `install_vb6_keymap(app)` `ui/shell.py:373`, called from `run_flow` :3847 and shot mode :3870.
- Register anchor “No app-wide Enter→Tab event filter found” → **STALE**.

#### P0-26 — F2 Edit conflict / dispatch — **PARTIAL** (delta: S-M)
- Global map: `_VB6_FKEY_HANDLES` `ui/shell.py:154` → F2 = `("_on_edit",)`.
- Works on forms defining `_on_edit`: `ui/base_master.py:900`, `ui/shell.py:856`, usermaster, inventory, taxstru, hall_* etc.
- **Gaps**:
  1. `ui/general_setup_tabs_ui.py` defines `_edit` (:3237) / `_delete` (:3269), **not** `_on_edit`/`_on_delete`; its toolbar buttons have empty text → caption fallback in dispatch also fails → **F2/F3 do nothing on General Setup**.
  2. **Real conflict with `ui/base_master.py:106-107`**: `QShortcut(F2)` **and** `QShortcut(F4)` both bound to `_pick` on `LookupEdit` — keymap’s `_yield_existing_shortcut` correctly yields → **F2 opens the lookup picker, not Edit**, on every BaseMaster form.
  - Recommended non-breaking delta: remove the F2 bind at `ui/base_master.py:107` (F4 already does the same pick). One line.

#### P0-27 — F3 Delete dispatch — **PARTIAL** (delta: S)
- `_VB6_FKEY_HANDLES` `ui/shell.py:155` → F3 = `("_on_delete",)`; `_on_delete` exists `ui/base_master.py:999` and siblings.
- Same dispatch gap as P0-26: `MainWindow` `ui/shell.py:3311` has **no** `_on_edit`/`_on_delete`; General Setup uses `_edit`/`_delete` names → F3 inert there.

---

## Fix-category grouping (all PARTIAL rows; OPEN = none)

| Fix-category | IDs | Delta | Summary of concrete fix |
|---|---|---|---|
| **A. Missing Company Master field(s)** | P0-01 | M | Add Contract Type (VB6 `Txt(27)` max=20 tab=36) + locate ~5 remaining unmapped VB6 TextBox indices; extend `_row` list + `core/comp_master.py` `FIELDS`/`LIMITS`. |
| **B. Missing FA Enviro control (Integrity)** | P0-05, P0-14 | M, S | Port VB6 `BtnIntegrity` (`FaEnvron.frm:1942`) as a button running the integrity check; today DateLock/RunPIF are plain editable checkboxes. |
| **C. Toolbar completeness (icon row)** | P0-18, P0-24 | M, S | Add missing Print (and Post, if VB6 had it) to `_toolbar_row` in `general_setup_tabs_ui.py`; 12 → 16 buttons to match register. |
| **D. Sub-tab inventory verification** | P0-19 | L | Reconcile 19 Python sub-tabs vs 26 claimed: extract design data from `HMS.exe` blob (VB6 `.frm` captions stripped). |
| **E. Password field MaxLength** | P0-22 | S | One line: `edPass.setMaxLength(usermaster.LIMITS["password"])` in `ui/usermaster_ui.py`. |
| **F. Global F-key dispatch hardening** | P0-26, P0-27 | S-M | (1) Remove F2→`_pick` at `ui/base_master.py:107`; (2) teach dispatcher `_edit`/`_delete` aliases (or rename General Setup methods to `_on_edit`/`_on_delete`); (3) add `_on_edit`/`_on_delete` to `MainWindow`. |

Phase 2 research (`specs/ui-p0-research.md`) covers categories A–F plus the two cross-cutting UI recipes (grid context menu enable-state, radio/grid sync) implied by B/C.

## Blockers

- **D** cannot be fully closed from VB6 `.frm` sources alone (design sections stripped) → needs `HMS.exe` design-blob tooling or original `.frx` assets.
- **A** residual ~5 field *names* unrecoverable from stripped labels; only count/MaxLength/tab-index deltas are provable.

## Verification status: **partially_verified**

- Statuses for all 27 rows verified against live code with `file:line` anchors; VB6-side claims verified against decompiled sources where present.
- Not fully verified: VB6 sub-tab count (D) and unmapped Company Master field names (A) — both blocked on stripped design data as above.
