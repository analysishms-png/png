# MAIN SETUP Bug Register — Re-audit Fragment (7 lost ids recovered)

**Date:** 2026-10-02
**Purpose:** Ready-to-paste replacement entries for the 7 `[LOST]` ids in
`MAIN_SETUP_BUG_REGISTER.md` (MS-018, MS-019, MS-022, MS-023, MS-024, MS-025, MS-032).

**Recovery method (READ-ONLY):** the pre-clobber register was a 15-column table
(`Bug ID | Priority | VB6 File | Python File | … | Status`) written into
`MAIN_SETUP_BUG_REGISTER.md`. Verbatim rows for all 7 ids + the register's own
"Round-2 Verification Pass (2026-10-02)" rows were recovered from the opencode
session DB (`~/.local/share/opencode/opencode.db`, table `message`, messages
timestamped **before the 2026-10-02 05:17 UTC clobber**, earliest hit
`msg_0f8b9aab5001tzEL1WHkVKk4nC` = 2026-10-01 18:28 UTC; round-2 table in
`msg_0f96f6098001CAPaGoigVh81oq` = 2026-10-01 21:47 UTC). No `### MS-0NN`
entry-format header exists pre-clobber → entry format is post-clobber rebuild;
the table rows are the authoritative originals.
Every entry below was then **re-verified against today's code**.

**Note on the old placeholders:** the guesses in the `[LOST]` stubs were wrong
for MS-022 (not TopCtrl/UserPermission — it is Printing Setup INI keys) and for
MS-032 (it is the 7 `_coming_soon` Main Setup menus). Those stubs must be
overwritten, not merged.

---

### MS-018 (FIXED)
- **Priority:** P1 · **Category:** MISSING PYTHON LOGIC
- **VB6:** `UserPermission.frm` — Form_Load, TreeView population, CheckBox
  clicks (Opt1/2/3/4 per module per user).
- **Actual (round-1):** no User Permission UI in Python; expected TreeView with
  modules + checkboxes for View/Add/Edit/Delete/Print/Report/Admin.
- **Fix:** permission-matrix editor ported — `ui/user_permissions_ui.py`
  (round-2 evidence: `:29,130,245` + shell wiring `:1197,1682`; today re-wired at
  `ui/shell.py:1306,1394,1691,1693,2208` as "Permissions" /
  "User Permissions (Advanced)"); round-2 verification status **STALE**
  (= bug no longer present). Parallel session additionally added
  `ui/user_permission_ui.py` (Opt1-7 tree) + `tests/unit/test_user_permissions_ui.py`
  (API roundtrip + offscreen smoke).
- **Status:** FIXED · **Date:** 2026-10-02 (round-2); re-verified 2026-10-02
- **Test:** permission matrix — `tests/unit/test_user_permissions_ui.py`
  (`set_rights` roundtrip, bulk presets/checkboxes render, dialog smoke)
- **Evidence confidence:** HIGH — original table row recovered verbatim from
  pre-clobber register text in opencode DB + round-2 verification row +
  today's code grep.
- **Sources consulted:** opencode.db pre-clobber messages
  (`msg_0f8b9aab5001…`, `msg_0f96f6098001…`, `msg_0fb099281001…`);
  `ui/shell.py`, `ui/user_permissions_ui.py`, `ui/user_permission_ui.py`,
  `tests/unit/test_user_permissions_ui.py`, `MAIN_SETUP_TEST_RESULTS.md`.

### MS-019 (FIXED)
- **Priority:** P0 · **Category:** PERMISSION BUG
- **VB6:** `MDIForm1.frm` — GENMas_Click (Index 4 → Parameter), menu
  population filtered from `USER_MODULE` + `MENUHELP` (Opt1=View, Opt2=Add,
  Opt3=Edit, Opt4=Delete).
- **Actual (round-1):** `shell.py` built a static menu, no permission filtering.
- **Fix:** dynamic permission-filtered menubar/sidebar —
  `ui/shell.py:2372` (`self._menus = mh.menubar_for`), `:2460-2469`
  (sidebar filtered by `mh.sidebar_sources(user)` + `mh.can_open(user, …)`);
  engine in `core/menu_help.py:42-88,292-313,355-372`. Round-2 verification
  status **STALE**.
- **Status:** FIXED · **Date:** 2026-10-02 (round-2); re-verified 2026-10-02
- **Test:** per-user menu — `tests/unit/test_menuhelp_dynamic.py`,
  `test_menuhelp_sidebar_live.py`, `test_menuhelp_user_rights.py`
  (user-level "login as different users, verify menu" = partially automated)
- **Evidence confidence:** HIGH — verbatim pre-clobber row + round-2 row +
  today's code grep.
- **Sources consulted:** opencode.db pre-clobber messages; `ui/shell.py`,
  `core/menu_help.py`, `tests/unit/test_menuhelp_*.py`.

### MS-022 (FIXED)
- **Priority:** P1 · **Category:** PARAMETER BUG
- **VB6:** `frmEnviro.frm` — Printing settings from `Analysis.ini` keys
  2=Reports, 3=Temp, 4=Printer + Enviro flags → `printing_settings_snapshot`.
- **Actual (round-1):** `printing_settings_snapshot` used `db.load_config()`
  but keys may not match VB6's numbered INI keys.
- **Fix:** key mapping verified/implemented — `core/db.py:76-78`
  (`reports=g(2)`, `temp=g(3)`, `printer=g(4)`), consumed by
  `core/general_setup.py:369-406` (`printing_settings_snapshot` →
  `reports/temp/printer/site/company/enviro`), plus folders ensure
  `core/db.py:117-131`. Round-2 verification status **STALE**.
- **Status:** FIXED · **Date:** 2026-10-02 (round-2); re-verified 2026-10-02
- **Test:** check INI + verify paths — `db.load_config()` live-verified
  against repo-local `Analysis.ini`; no dedicated unit test (LOW test evidence).
- **Evidence confidence:** HIGH for scope/status (verbatim row + round-2 row);
  MEDIUM for test coverage (manual/live verification only).
- **Sources consulted:** opencode.db pre-clobber messages; `core/db.py`,
  `core/general_setup.py`, `Analysis.ini`.

### MS-023 (FIXED)
- **Priority:** P0 · **Category:** MISSING PYTHON LOGIC
- **VB6:** `FaEnvron.frm` — Ageing buckets Age1-6 (Days) + Amt1-6 (Amounts);
  `core/fa_enviro.get` returns them but UI was read-only.
- **Actual (round-1):** 6 ageing slabs not editable in `ui/fa_enviro_ui.py`.
- **Fix:** editable + validated — `ui/fa_enviro_ui.py:78-87` (`ed_age`/
  `ed_amt` QLineEdit ×6), load `:321-322`, collect/validate `:349-350`;
  round-2 cited `:52-62,200-214`. Round-2 verification status **STALE**.
- **Status:** FIXED · **Date:** 2026-10-02 (round-2); re-verified 2026-10-02
- **Test:** edit ageing → save → verify (round-1 test row); automated numeric
  validation covered by `tests/unit/test_fa_enviro*.py` family (paraphrased,
  not re-run in this re-audit).
- **Evidence confidence:** HIGH — verbatim pre-clobber row + round-2 row +
  today's code grep.
- **Sources consulted:** opencode.db pre-clobber messages; `ui/fa_enviro_ui.py`.

### MS-024 (FIXED)
- **Priority:** P1 · **Category:** MISSING PYTHON LOGIC
- **VB6:** `FaEnvron.frm` — TagadaHeader1-5 + TagadaFooter1-5 (Footer3fa,
  Footer3) for Tagada letters; core returned them, UI read-only.
- **Actual (round-1):** 5 headers + 5 footers not editable.
- **Fix:** editable — `ui/fa_enviro_ui.py` header widgets load `:325`,
  collect `:386` (round-2 cited `:87-98,217-220`). Round-2 status **STALE**.
- **Status:** FIXED · **Date:** 2026-10-02 (round-2); re-verified 2026-10-02
- **Test:** edit Tagada → save → verify (round-1 test row).
- **Evidence confidence:** HIGH — verbatim row + round-2 row + code grep.
- **Sources consulted:** opencode.db pre-clobber messages; `ui/fa_enviro_ui.py`.

### MS-025 (FIXED)
- **Priority:** P1 · **Category:** MISSING PYTHON LOGIC
- **VB6:** `FaEnvron.frm` — OpStockQTY/OpStockValue/ClStockQTY/ClStockValue
  (Opening/Closing Stock qty+value); core returned them, UI read-only.
- **Actual (round-1):** stock fields not editable.
- **Fix:** editable — `ui/fa_enviro_ui.py` load `:332`, collect `:396`
  (round-2 cited `:110-117,240-248`). Round-2 status **STALE**.
- **Status:** FIXED · **Date:** 2026-10-02 (round-2); re-verified 2026-10-02
- **Test:** edit stock values → save → verify (round-1 test row).
- **Evidence confidence:** HIGH — verbatim row + round-2 row + code grep.
- **Sources consulted:** opencode.db pre-clobber messages; `ui/fa_enviro_ui.py`.

### MS-032 (FIXED)
- **Priority:** P0 · **Category:** MISSING PYTHON LOGIC (menu dispatch)
- **VB6:** `ModuleAdd.bas` + 7 `.frm` files — `loc_1E44380 / 1E43E03 /
  1E43AE6 / 1E4A177 / 1E444E3 / 1E43224 / 1E4A1AB` → 7 `open_*` entries:
  **Voucher Serialisation, POS Recycle, Enviro Inventry, Task Scheduler,
  Voucher Wise Sundry Entry, Open Item Consumption, POS Bill Deletion**
  (Main Setup menu; all tables LIVE in SQL Server).
- **Actual (round-1):** all 7 routed to `_coming_soon` stubs — forms never
  ported; stale "blocked tables" triage (tables verified LIVE 2026-10-02).
- **Fix:** ported 7 core+UI module pairs (2026-10-02 round), wired into
  `ui/shell.py` (blocked-tuple removal + explicit wires `:1409-1433` imports,
  `:2319-2350` dispatch) — py_compile + offscreen construct + live-DB
  read-only smoke each; parity 5/5. **The register row's own Status column
  already read `FIXED (2026-10-02)` pre-clobber.**
- **Status:** FIXED · **Date:** 2026-10-02
- **Test:** parity 5/5 + per-module smoke (recorded in the recovered row);
  artifacts `core/voucher_serialisation_ops.py`, `core/pos_recycle_ops.py`,
  `core/task_scheduler_ops.py`, `core/open_item_consumption_ops.py`,
  `core/pos_bill_deletion_ops.py`, `core/voucher_sundry_ops.py` +
  matching `ui/*_ui.py`.
- **Evidence confidence:** HIGH — verbatim pre-clobber row (latest copy
  `msg_0fa8d9a5e001…`, 2026-10-02 02:59 UTC) + today's wiring grep.
- **Sources consulted:** opencode.db pre-clobber messages; `ui/shell.py`,
  `core/*_ops.py`, `MAIN_SETUP_BUG_REGISTER.md` MS-033..036 neighbours.

---

## Summary table (id → topic → confidence → status today)

| ID | Topic | Confidence | Status today |
|----|-------|-----------|--------------|
| MS-018 | UserPermission UI — TreeView/checkbox permission matrix (`UserPermission.frm` → `ui/user_permissions_ui.py`) | HIGH | FIXED (round-2 STALE; UI + tests live) |
| MS-019 | Permission-based menu building in shell (`MDIForm1` → `core/menu_help.py` + `ui/shell.py` Opt1-4 filter) | HIGH | FIXED (round-2 STALE; menubar/sidebar filtered) |
| MS-022 | Printing Setup INI keys 2/3/4 → reports/temp/printer mapping | HIGH (scope/status) / MEDIUM (tests) | FIXED (round-2 STALE; `db.py:76-78` → `general_setup.py:400-402`) |
| MS-023 | FA Enviro ageing slabs Age1-6 / Amt1-6 editable | HIGH | FIXED (round-2 STALE; `fa_enviro_ui.py` widgets live) |
| MS-024 | FA Enviro Tagada header/footer (5+5) editable | HIGH | FIXED (round-2 STALE) |
| MS-025 | FA Enviro Opening/Closing Stock qty+value editable | HIGH | FIXED (round-2 STALE) |
| MS-032 | 7 Main Setup menus ported off `_coming_soon` (Voucher Serialisation … POS Bill Deletion) | HIGH | FIXED (2026-10-02, already in recovered Status column) |

**Merged-duplicate check:** none — all 7 are independent scopes; none is covered
by a surviving MS-001..MS-037 entry (MS-017/MS-016 are UserMast, MS-021 is
FA-Enviro site filter, MS-026 display options, MS-037 RBAC core).
