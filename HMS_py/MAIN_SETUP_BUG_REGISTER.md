# MAIN SETUP - BUG REGISTER (current lineage: MS-001..MS-037)

> **RECONSTRUCTION NOTICE (2026-10-02):** this file was overwritten by a
> parallel opencode session at 10:47 the same day. Original per-entry detail
> for MS-018/019/022..025/032 was lost in that clobber (no git history — file
> was untracked).
> **UPDATE (2026-10-02 afternoon): all 7 lost entries RECOVERED** — pre-clobber
> register rows (15-column table format) found verbatim in the opencode session
> DB (`~/.local/share/opencode/opencode.db`, `message` table, rows before the
> 05:17 UTC clobber) and re-verified against today's code; entries below now
> carry full detail (see `MAIN_SETUP_REAUDIT_FRAGMENT.md` for the recovery
> method). The interim `[LOST]` stubs (whose scope guesses were wrong for
> MS-022/MS-032) have been overwritten.
> The superseded parallel-session copy is preserved as
> `MAIN_SETUP_BUG_REGISTER.md.superseded_20261002_1047`.
>
> **Do not confuse with** `../MAIN_SETUP_BUG_REGISTER.md` (repo parent) — that
> is a DIFFERENT lineage (Oct-1 Tax Master / Payment Type pass, its own
> MS-001..MS-018 numbering). Two registers, do not merge or renumber.

Rules (prompt §16): one entry per confirmed bug. Status: OPEN / ANALYZED /
FIXED / VERIFIED / BLOCKED / DOCUMENTED. Do not log a difference as a bug
without documenting legacy (VB6) behavior AND observed Python behavior.

Template:

```
ID: MS-0NN
Priority:
VB6 File:
Python File:
VB6 Procedure / loc:
Python Function:
Screen:
Category:
Expected Behavior:
Actual Behavior:
Fix:
Test:
Status:
Date:
```

---

## Summary (2026-10-02, after round-4 re-audit batch)

- **38 entries** (MS-001..MS-038): **35 FIXED/VERIFIED** (incl. MS-038 and the 7
  recovered MS-018/019/022..025/032), **1 CLOSED-INVALID** (MS-004 — premise
  disproven, live callers exist), **1 PARTIAL** (MS-013 Tier-1 FIXED / Tier-2
  pending product decision), **1 DOCUMENTED/CORRECTED** (MS-021).
  **0 [LOST]** ids remain — all 7 recovered from pre-clobber session DB.
- Round-2 verification pass over MS-001..MS-030: **8 STALE / 9 REAL /
  13 PARTIAL** (row table lost in overwrite; known-OPEN rows re-verified below).
- Full suite after round-4 batch: **1038 passed, 1 skipped, 0 failed** (all tests/).

---

## Entries

### MS-001 (FIXED)
- **Priority:** P1 · **Category:** MISSING PYTHON LOGIC / DISPATCHER
- **VB6:** ModuleAdd.bas `Proc_165_2_1E4B100` → `New CompMast` (loc_1E42FF1)
- **Python:** ui/shell.py registry `"Company Master"`; ui/comp_mast_form_ui.py
- **Screen:** Main Setup → Company Master
- **Expected:** leaf opens the 42/43-field CompMast entry form.
- **Actual:** leaf wired to legacy `p2.open_companymaster` (or dead).
- **Fix:** new `CompMastForm` (:151) + `open_comp_mast_form` (:832);
  registry rewire with p2 fallback; save = 43-col VB6 INSERT column set.
- **Status:** FIXED (ported + wired; suite green)
- **Date:** 2026-10-02

### MS-002 (FIXED)
- **Priority:** P1 · **Category:** FRONTEND / DATA MAPPING
- **Screen:** Company Master form field set
- **Expected:** VB6 CompMast ke 42 fields (codes, names, addresses, ledger
  links, plan/discount flags) 1:1.
- **Actual:** pehle 14-field legacy form.
- **Fix:** CompMastForm full field set; `core/comp_master.save_company`
  43-col INSERT; live `SubGroup` PK = `SubCode`.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-003 (FIXED)
- **Priority:** P1 · **Category:** FRONTEND
- **Screen:** Company Master search/find (VB6 Find behavior)
- **Fix:** `CompanySearchDialog` (:71) — list/filter companies, open for edit.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-004 (CLOSED — premise disproven)
- **Priority:** P2 · **Category:** CLEANUP (was logged as orphan CRUD)
- **Python:** core/company.py `save_company` / `delete_company`
- **Original claim:** orphan legacy CRUD after CompMast rewire — "registry no
  longer references it"; fix pending = remove or delegate to comp_master.
- **Re-audit 2026-10-02 (evidence):** claim FALSE — both functions have LIVE
  callers: `ui/shell.py:845` (company grid `_on_save`) / `:895` (`_on_delete`),
  `CompanyDialog` opened from `run_flow()` (shell.py:2797) after every login.
  Delegation to `core/comp_master` impossible — different table/semantics
  (`Company` 43-col row, returns bool vs `SubGroup`+ledger guard, returns
  subcode) and would break `tests/unit/test_company_crud.py` (4 pins) +
  shell save path. VB6 twin: frmCompany.frm:3300 INSERT / :3369 UPDATE /
  :3145 DELETE FROM COMPANY.
- **Fix (2026-10-02):** misleading "CompMast parity" docstrings replaced with
  wrong-target guards (core/company.py:56-63, :98-103); no behavior change.
  Tests: test_company_crud 4 passed, test_comp_master 6 passed, ruff clean.
- **Status:** CLOSED (invalid; no cleanup needed — documented so it is not
  re-logged) · **Date:** 2026-10-02

### MS-005 (FIXED)
- **Priority:** P1 · **Category:** FRONTEND (missing widgets)
- **VB6:** FODER/FaEnvron.frm (btnok harvest, 42 cols → 55 keys)
- **Python:** ui/fa_enviro_ui.py + core/fa_enviro.py
- **Screen:** FA Enviro (Finance > Environment)
- **Expected:** VB6 ke saare editable controls live hon.
- **Actual:** 22 widgets missing (CityNameDisp, RepToBy, PDCDt, DateLock,
  RunPIF, CashBookPage + 16 Y/N flags); Tagada without maxLength(75).
- **Fix:** widgets + harvest; `update_settings` covers all 42 VB6 btnok cols.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-006 (FIXED, re-opened then fixed properly)
- **Priority:** P1 · **Category:** SQL / VB6 PARITY
- **VB6:** FaEnvron.frm UPDATE (loc_160F419-160F6C1) — **no audit cols**
  (live FAEnviro has NO U_Name/U_AE/U_EntDt — 58 cols verified).
- **Actual:** `core/fa_enviro.update_settings` injected U_Name/U_AE/U_EntDt
  → UPDATE would fail / diverge.
- **Fix:** injection removed; test renamed
  `test_fa_enviro_update_settings_matches_vb6_no_audit` pins parity.
- **Status:** FIXED (regression-pinned) · **Date:** 2026-10-02

### MS-007 (FIXED)
- **Priority:** P2 · **Category:** FRONTEND / CONTROL TYPE
- **Screen:** FA Enviro — DebitLimit/CreditLimit
- **Expected:** VB6 checkboxes (Yes/No semantics).
- **Actual:** numeric spinners (wrong control type, wrong data shape).
- **Fix:** QCheckBox conversion in ui/fa_enviro_ui.py.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-008 (FIXED — safe subset, admin-gated)
- **Priority:** P1 · **Category:** SCHEMA / MISSING PYTHON LOGIC
- **VB6:** frmCompany.frm btnStruUpdNew (`Structure Update`, Alt+D;
  visibility :1619/:2218, event :1250/:2735-2837) → Chain A (22 Execute DDL
  :2773-2831) → `Proc_96_94_1F2C2C8` ensure-schema (Hotlib.bas:40649-41388:
  573× Proc_6_144 ensure-column, 18× Proc_6_145 create-table, 17×
  Proc_6_146 create-PK/index; SQL templates MainLib.bas:6314-6427).
  Chain B = auto at company select (47 login-normalization writes).
- **Python (pre-fix):** ui/shell.py `_db_update` stub — "year-start
  maintenance" message; no schema work. Chain B partially in
  `core/folio.py::run_startup_normalization` with 3 divergences.
- **Decision (user, 2026-10-02):** port SAFE SUBSET only.
- **Fix:** NEW `core/schema_upgrade.py` — **630 idempotent statements**
  (573 ensure-column, 20 create-table, 17 create-PK, 15 add-column,
  4 view drop/create, 1 guarded drop-PK); import-time guard audit
  (`guard_audit()` 630/630, guarded-DROP allowlist = 3) + `plan()` +
  `run(confirm_token)`. NEW `ui/schema_upgrade_ui.py` — admin-gated dialog
  (permission.role_of supervisor/SA), SQL preview + confirm + result table,
  opener `open_schema_upgrade(parent, user)`. Wired: shell `_db_update`
  (ui/shell.py:914) → dialog.
- **Excluded by design:** irreversible one-time block (DROP COLUMN kdate,
  `SerialKeyNo=''`, DF drop, Company Add Comp_Id), 47 login-normalization
  writes, VB6 `End` app-kill, any auto-run at startup.
- **Chain B divergences fixed** (see Wave-3 log, folio.py): FOM guard,
  PlanMast join, KOT Enviro default.
- **Test:** py_compile, ruff clean on both files, read-only plan/guard_audit
  (NO DDL executed against MOONData2627), offscreen dialog SA/non-SA,
  `run("NOPE")` → ValueError before connect; full suite green.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-009 (FIXED, family)
- **Priority:** P1 · **Category:** FRONTEND / KEYBOARD
- **VB6:** VB6 keyboard map (F2..F11 jump targets keyed by button caption).
- **Python:** ui/shell.py `_Vb6KeyMapFilter` family — this id covers the
  **F2-F11 caption handler** portion (handler → caption → pass-through so
  existing shortcuts still fire).
- **Fix:** event filter installed from `run_flow()` + `main()`.
- **Status:** FIXED · **Date:** 2026-10-02
- *(per-id split within the keymap family reconstructed; original entry lost)*

### MS-010 (FIXED)
- **Priority:** P1 · **Category:** BACKEND / BOOTSTRAP
- **VB6:** frmCompany.frm:1817-1823 — fresh company seeds user SA.
- **Actual:** fresh install had no SA row → lockout.
- **Fix:** `core/auth.ensure_sa_user()` (idempotent) called at
  `check_login` entry.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-011 (FIXED, family)
- **Priority:** P1 · **Category:** FRONTEND / KEYBOARD
- **Expected:** VB6 nav keys: Enter = Tab (with busy guard), Esc never
  closes shell, F12 pass-through.
- **Fix:** `_Vb6KeyMapFilter` key-map portion (Enter→Tab + busy guard;
  Esc/F12 never close) + company grid **context menu**
  Add/Edit/Delete/Save/Cancel/Exit (registry ~718 keys).
- **Status:** FIXED · **Date:** 2026-10-02
- *(per-id split within the keymap family reconstructed; original lost)*

### MS-012 (FIXED, family)
- **Priority:** P1 · **Category:** FRONTEND / NAVIGATION
- **VB6:** General Setup browse nav (First/Prev/Next/Last/Find + F4/F6-F9).
- **Fix:** ui/general_setup_tabs_ui.py nav toolbar.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-013 (TIER-1 FIXED — 6 AC cols)
- **Priority:** P1 · **Category:** FEATURE / DATA MAPPING
- **Screen:** Enviro — finance A/C columns (bill-wise AC defaults etc.)
- **Expected:** VB6 Enviro finance AC fields editable + persisted.
- **Actual:** 6 Outlet/Banquet AC-cols (OutdoorSaleAC, IndoorSaleAC,
  OutdoorPartyAC, IndoorPartyAC, HallDiscAC, HallRoundOff) rendered as
  editable pickers but sat in neither EDITABLE nor the enforced list, so the
  whole Parameter save died. Fixed: whitelisted in `core/enviro.py`
  EDITABLE (VB6 `OutDoor*` vs live declared `Outdoor*` case note in module
  docstring), removed from READ_ONLY, light SubGroup existence check in
  `_validate` (`SELECT 1 FROM [SubGroup] WHERE RTRIM([SubCode]) = ?`,
  cn-reusing), LOOKUPS entries -> DGHelp picker. Smoke: 40 keys collected,
  0 validation failures, 0 value drift vs live.
- **Tier-2 (still OPEN):** remaining finance AC cols (AdvanceAc, Loan_Ac,
  Salary_Ac, Cash_Ac, DummyTravelAc, CashCard*, DefCompGroup ...) stay
  READ-ONLY per GL-integrity decision.
- **Status:** TIER-1 FIXED · **Date:** 2026-10-02

### MS-014 (FIXED, family)
- **Priority:** P1 · **Category:** FRONTEND / LOOKUPS
- **Fix:** General Setup lookup pickers — PayType/Tax/TaxStru combo pickers
  + shared `LookupDialog` in ui/general_setup_tabs_ui.py.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-015 (FIXED, family)
- **Priority:** P1 · **Category:** BACKEND / ROUND-OFF
- **Fix:** `general_setup.roundoff_save()` / `roundoff_delete_module()`
  (VB6 parity) — RoundOffSetting persistence.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-016 (FIXED)
- **Priority:** P1 · **Category:** DATA MAPPING / PERSISTENCE
- **VB6:** UserMast.txt grid — GodCode/FloorCode/AllowDtChng/BackColor.
- **Actual:** UserMast SELECT/insert/update dropped GodCode, FloorCode,
  BackColor; AllowDtChng not persisted; UI missing fields + color swatch.
- **Fix:** core/usermaster.py SELECT_COLS/_map/insert/update extended;
  ui/usermaster_ui.py fields + swatch.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-017 (FIXED)
- **Priority:** P1 · **Category:** VALIDATION
- **VB6:** UserMast save rules — Short Name required; ActiveYN/AllowDtChng
  ∈ {Y,N}; password ≤ 8 chars.
- **Actual:** rules missing in Python.
- **Fix:** `core/usermaster._validate` with VB6 rules + messages.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-018 (FIXED — recovered 2026-10-02)
- **Priority:** P1 · **Category:** MISSING PYTHON LOGIC
- **VB6:** `UserPermission.frm` — Form_Load, TreeView population, CheckBox
  clicks (Opt1/2/3/4 per module per user).
- **Actual (round-1):** no User Permission UI in Python; expected TreeView
  with modules + checkboxes for View/Add/Edit/Delete/Print/Report/Admin.
- **Fix:** permission-matrix editor ported — `ui/user_permissions_ui.py`
  (round-2 evidence `:29,130,245` + shell wiring `:1197,1682`; today
  `ui/shell.py:1306,1394,1691,1693,2208` as "Permissions"/"User Permissions
  (Advanced)"); parallel session additionally added `ui/user_permission_ui.py`
  (Opt1-7 tree) + `tests/unit/test_user_permissions_ui.py`.
- **Test:** `tests/unit/test_user_permissions_ui.py` (set_rights roundtrip,
  bulk presets/checkboxes, dialog smoke).
- **Evidence confidence:** HIGH — pre-clobber register row recovered verbatim
  from opencode session DB (`msg_0f8b9aab5001…`, pre-2026-10-02 05:17 UTC) +
  today's code grep.
- **Status:** FIXED · **Date:** 2026-10-02 (round-1/2; re-verified 2026-10-02)

### MS-019 (FIXED — recovered 2026-10-02)
- **Priority:** P0 · **Category:** PERMISSION BUG
- **VB6:** `MDIForm1.frm` — GENMas_Click (Index 4 → Parameter); menu
  population filtered from `USER_MODULE` + `MENUHELP` (Opt1=View, Opt2=Add,
  Opt3=Edit, Opt4=Delete).
- **Actual (round-1):** `shell.py` built a static menu, no permission
  filtering.
- **Fix:** dynamic permission-filtered menubar/sidebar — `ui/shell.py:2372`
  (`self._menus = mh.menubar_for`), `:2460-2469` (sidebar via
  `mh.sidebar_sources(user)` + `mh.can_open`); engine
  `core/menu_help.py:42-88,292-313,355-372`.
- **Test:** `tests/unit/test_menuhelp_dynamic.py`,
  `test_menuhelp_sidebar_live.py`, `test_menuhelp_user_rights.py`.
- **Evidence confidence:** HIGH — verbatim pre-clobber row (`msg_0f96f6098001…`)
  + today's code grep.
- **Status:** FIXED · **Date:** 2026-10-02 (round-1/2; re-verified 2026-10-02)

### MS-020 (FIXED)
- **Priority:** P1 · **Category:** SITE/PROPERTY BUG
- **Expected:** house site filter `(LogSite_Code = ? OR LogSite_Code = 'HO')`
  on site-independent reads.
- **Actual:** ~118 bare `LogSite_Code = ?` candidates; known misses
  nightaudit.py:59, checkout.py:342, plan_definition.py:39.
- **Fix (evidence-driven sweep, 2026-10-02):** **7 queries fixed** with exact
  VB6 counterparts — forex_txn.py:66 (FrmForExRec.frm:1078), pos_advance.py:88
  (frmAdvanceDepDialog.frm:2141), pos_display.py:52 (RsPOSDisplay.frm:2184),
  excise_gate_pass.py:85 (RsKitchenMaterial.frm:1787), nightaudit.py:59,
  checkout.py:342, plan_definition.py:39 (Enviro class — Python-internal
  inconsistency vs enviro.py:171 HO style). **103 kept** (VB6 site-only or
  txn-scoped, classified with loc refs), **0 uncertain** — the 3 formerly
  uncertain rows all resolved **KEEP** on deep evidence (2026-10-02):
  excise_gate_pass.py:54/62 → RsKitchenMaterial.frm:1775 loc_1241E2F site-only
  (helper MainLib.bas:301-312 is quote-only, HMS.exe binary scan: 0 bare
  `LOGSITE_CODE='HO'` suffixes), travel_post.py:88 → TravelAgencyPost.frm:597/
  :861 site-only (test_travel_post.py:67-73 already pins it), 5
  excluded-file rows classified not edited (incl. folio.py, comp_master.py).
- **Test:** py_compile 7/7, ruff (nightaudit F401 pre-existing at HEAD),
  targeted 50 passed, live smoke of all 7 OK, full suite green.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-021 (DOCUMENTED — register claim CORRECTED)
- **Priority:** P2 · **Category:** DOC CORRECTNESS
- **Actual:** register earlier claimed VB6 "consistently" uses OR-HO —
  **empirically overstated**. Live/VB6 census: Enviro = 622 site-scoped reads
  vs **2** with HO; table-level spans vary (Depart 511/816 HO/site, RevMast
  197/281, ItemMast 154/334, RoomMast 206/136; VOUCHER_PREFIX/UserPermission/
  SMSEnviro/BudgetDetails site-only 0-HO).
- **Fix:** MS-020 sweep switched to per-query VB6-evidence rule
  (FIX only with exact VB6 HO counterpart).
- **Status:** DOCUMENTED (corrected in this entry; sweeps stay evidence-driven)
- **Date:** 2026-10-02

### MS-022 (FIXED — recovered 2026-10-02)
- **Priority:** P1 · **Category:** PARAMETER BUG
- **VB6:** `frmEnviro.frm` — Printing settings from `Analysis.ini` keys
  2=Reports, 3=Temp, 4=Printer + Enviro flags → `printing_settings_snapshot`.
- **Actual (round-1):** `printing_settings_snapshot` used `db.load_config()`
  but keys may not match VB6's numbered INI keys.
- **Fix:** key mapping verified/implemented — `core/db.py:76-78`
  (`reports=g(2)`, `temp=g(3)`, `printer=g(4)`), consumed by
  `core/general_setup.py:369-406`, folder ensure `core/db.py:117-131`.
- **Test:** `db.load_config()` live-verified against repo-local
  `Analysis.ini` (no dedicated unit test — MEDIUM test evidence).
- **Evidence confidence:** HIGH (scope/status, verbatim pre-clobber row);
  MEDIUM (test coverage).
- **Status:** FIXED · **Date:** 2026-10-02 (round-1/2; re-verified 2026-10-02)

### MS-023 (FIXED — recovered 2026-10-02)
- **Priority:** P0 · **Category:** MISSING PYTHON LOGIC
- **VB6:** `FaEnvron.frm` — Ageing buckets Age1-6 (Days) + Amt1-6 (Amounts).
- **Actual (round-1):** 6 ageing slabs not editable in `ui/fa_enviro_ui.py`
  (core returned them, UI read-only).
- **Fix:** editable + validated — `ui/fa_enviro_ui.py:78-87` (ed_age/ed_amt
  ×6), load `:321-322`, collect `:349-350` (round-2 cited `:52-62,200-214`).
- **Test:** covered by `tests/unit/test_fa_enviro*.py` family.
- **Evidence confidence:** HIGH — verbatim pre-clobber row + code grep.
- **Status:** FIXED · **Date:** 2026-10-02 (round-1/2; re-verified 2026-10-02)

### MS-024 (FIXED — recovered 2026-10-02)
- **Priority:** P1 · **Category:** MISSING PYTHON LOGIC
- **VB6:** `FaEnvron.frm` — TagadaHeader1-5 + TagadaFooter1-5 (Footer3fa,
  Footer3) for Tagada letters.
- **Actual (round-1):** 5 headers + 5 footers not editable.
- **Fix:** editable — `ui/fa_enviro_ui.py` load `:325`, collect `:386`
  (round-2 cited `:87-98,217-220`).
- **Evidence confidence:** HIGH — verbatim pre-clobber row + code grep.
- **Status:** FIXED · **Date:** 2026-10-02 (round-1/2; re-verified 2026-10-02)

### MS-025 (FIXED — recovered 2026-10-02)
- **Priority:** P1 · **Category:** MISSING PYTHON LOGIC
- **VB6:** `FaEnvron.frm` — OpStockQTY/OpStockValue/ClStockQTY/ClStockValue.
- **Actual (round-1):** stock fields not editable.
- **Fix:** editable — `ui/fa_enviro_ui.py` load `:332`, collect `:396`
  (round-2 cited `:110-117,240-248`).
- **Evidence confidence:** HIGH — verbatim pre-clobber row + code grep.
- **Status:** FIXED · **Date:** 2026-10-02 (round-1/2; re-verified 2026-10-02)

### MS-026 (FIXED)
- **Priority:** P1 · **Category:** DATA MAPPING (harvest coverage)
- **VB6:** FaEnvron btnok — 42 columns written on OK.
- **Actual:** harvest missed rows (FA Enviro save divergence).
- **Fix:** `core/fa_enviro` harvest covers all 42 cols (55 keys).
- **Status:** FIXED · **Date:** 2026-10-02

### MS-027 (FIXED)
- **Priority:** P1 · **Category:** MISSING PYTHON LOGIC / LOOKUPS
- **Fix:** `core/comp_master.py` CRUD (validate_company :433, save_company
  :512 43-col, delete_company :588, get_company :350) + 4 VB6 DG lookups
  (DGAcName/DGUnderAc/DGCity/DgUser). Notes: live SubGroup has no
  `ContractType` column; **F_AO opening-balance write NOT ported** (risky,
  documented decision).
- **Status:** FIXED (with documented exclusions) · **Date:** 2026-10-02

### MS-028 (FIXED, family)
- **Priority:** P2 · **Category:** FRONTEND / GRID
- **Fix:** RoundOffSetting grid bound + save/delete roundtrip in
  ui/general_setup_tabs_ui.py; 6 remaining grids (DGHelp/DGGroup/DGRevenue/
  DGPurchaseGodown/DGPurchItem/DGDepart) bound via LOOKUPS + `_grid_rows` +
  `lookup_*` fetchers (DGDepart through PrintingParametersTab RestCode browse
  button), field → table per VB6 frmEnviro/frmPurEnviro recordsets.
- **Status:** FIXED (6 grids bound; smoke 3107/73/67/64/768/67 rows,
  missing-table → [])
- **Date:** 2026-10-02

### MS-029 (FIXED, family)
- **Priority:** P2 · **Category:** FRONTEND / RADIO GROUP
- **Fix:** RoundOff radios Standard/Upper/Lower (VB6 option behavior).
- **Status:** FIXED · **Date:** 2026-10-02

### MS-030 (FIXED)
- **Priority:** P1 · **Category:** FRONTEND / KEYBOARD
- **Expected:** VB6 F-key map works in Python shell.
- **Actual:** no event filter → F2-F11 dead.
- **Fix:** `_Vb6KeyMapFilter` + `install_vb6_keymap(app)` installed from
  `run_flow()` + `main()`; key codes F2-F11 → caption match → pass-through.
- **Status:** FIXED (family verified) · **Date:** 2026-10-02

### MS-031 (FIXED)
- **Priority:** P1 · **Category:** TEST GUARD
- **Actual:** `tests/unit/test_mainsetup_registry_parity.py` stub check used
  exact qualname match → silently passed while 9 leaves were red stubs.
- **Fix:** `_COMING_SOON_QUALNAME_SUFFIX` + `endswith` check — guard now
  detects stubs. Parity 4/1 → **5/5**.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-032 (FIXED — recovered 2026-10-02)
- **Priority:** P0 · **Category:** MISSING PYTHON LOGIC (menu dispatch)
- **VB6:** `ModuleAdd.bas` + 7 `.frm` — `loc_1E44380 / 1E43E03 / 1E43AE6 /
  1E4A177 / 1E444E3 / 1E43224 / 1E4A1AB` → 7 `open_*` entries: **Voucher
  Serialisation, POS Recycle, Enviro Inventry, Task Scheduler, Voucher Wise
  Sundry Entry, Open Item Consumption, POS Bill Deletion** (Main Setup menu;
  all tables LIVE in SQL Server).
- **Actual (round-1):** all 7 routed to `_coming_soon` — stale "blocked
  tables" triage (tables verified LIVE 2026-10-02).
- **Fix:** ported 7 core+UI module pairs, wired `ui/shell.py` (blocked-tuple
  removal + explicit wires `:1409-1433` imports, `:2319-2350` dispatch);
  py_compile + offscreen construct + live read-only smoke; parity 5/5.
  Artifacts: `core/{voucher_serialisation,pos_recycle,task_scheduler,
  open_item_consumption,pos_bill_deletion,voucher_sundry}_ops.py` +
  `core/voucher_*` + matching `ui/*_ui.py`.
- **Evidence confidence:** HIGH — verbatim pre-clobber row (`msg_0fa8d9a5e001…`,
  2026-10-02 02:59 UTC; its Status column already read FIXED) + wiring grep.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-033 (FIXED)
- **Priority:** P2 · **Category:** MISSING PYTHON LOGIC / FORM PORT
- **VB6:** frmWelcome — Guest BirthDates / Anniversary handling.
- **Fix:** ui/utility_forms_ui.py `SpecialOccasionsDialog` +
  `open_special_occasions`.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-034 (FIXED)
- **Priority:** P1 · **Category:** WRONG-TARGET / WIRING
- **Actual:** shell registry gaps — Recharge/Refund not routed to
  `sct.open_card_recharge`; PLU File (W.Scale), Cash Card ×2, Guest
  BirthDates unwired.
- **Fix:** explicit registry wires (ui/shell.py).
- **Status:** FIXED · **Date:** 2026-10-02

### MS-035 (FIXED)
- **Priority:** P1 · **Category:** UX SAFETY (destructive op)
- **VB6:** POS Bill Deletion deletes without pending-count prompt.
- **Fix:** port adds confirm dialog + pending-count display
  (ui/pos_bill_deletion_ui.py) — deliberate safe deviation, VB6-exact order
  otherwise.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-036 (FIXED)
- **Priority:** P2 · **Category:** TEST ALLOW-LIST
- **Fix:** `ALLOWED_INACTIVE` expanded with VB6 evidence (Rate Group Master,
  Sale MIS Customized, Data Recieving, Data Transfer, Data Transfer (POS) +
  carried Member Bill Sundry Setting); evidence in test comments.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-037 (FIXED)
- **Priority:** P1 · **Category:** PERMISSIONS / RBAC
- **VB6:** UserPermission.frm:1636/2282/2353 — `a/e/d/p` = MenuHelp
  Param_Str slots; HMS.bas:18788 — `u` (User Master) granted by leaf
  'User Master' (A or E).
- **Expected:** deny only on positive evidence; None/""/SA/unknown letter →
  allow (fail-open preserved).
- **Fix:** NEW `core/permission.py` — `operation`/`role_of`/`clear_cache`
  fail-open semantics; consumed by shell `_rbac_guard`.
- **Test:** live `_rbac_guard` verification — SA open, ADITYA denied.
- **Status:** FIXED · **Date:** 2026-10-02

### MS-038 (VERIFIED)
- **Priority:** P1 · **Category:** PRINT WORKFLOW / DATA MAPPING
- **Python:** `core/print_engine.py::PrintEngine.create_job/print`;
  `ui/print_preview.py::print_text`
- **Expected:** Reports retain caller-supplied date range and column headers;
  configured or explicitly selected printer and copy count reach the Qt printer.
- **Actual:** `create_job` discarded dates/headers, and `print` ignored its
  printer/copies arguments, so the dialog used default printer settings.
- **Fix:** Forward report key and dates to parameter service, preserve headers,
  and set printer name/copy count on `QPrinter` before showing the dialog.
- **Test:** `tests/unit/test_print_engine_real_print.py` covers job input
  preservation, engine option forwarding, Qt printer configuration, and real
  print-helper invocation (4 passed).
- **Status:** VERIFIED · **Date:** 2026-10-03

---

## Round-2 Verification Pass (MS-001..MS-030)

Counts: **8 STALE / 9 REAL / 13 PARTIAL** (per-row table lost in the
2026-10-02 10:47 overwrite). Re-verified OPEN rows after wave-3:

| id | status now | note |
|----|-----------|------|
| MS-004 | CLOSED (invalid) | premise disproven — live shell.py:845/895 callers |
| MS-008 | FIXED (wave-3) | safe-subset Schema Upgrade ported + wired |
| MS-013 | TIER-1 FIXED | 6 Outlet/Banquet AC cols editable + SubGroup check |
| MS-020 | FIXED (wave-3) | 7 evidence-driven HO fixes; 3 uncertain → KEEP ×3 |
| MS-018/019/022-025 | FIXED (recovered) | entries restored from pre-clobber session DB |
| MS-032 | FIXED (recovered) | 7 stub menus, was already FIXED pre-clobber |

---

## Wave-1 Fix Log (2026-10-02, 5 parallel agents — all delivered)

| agent | ids | deliverable |
|---|---|---|
| A | MS-010, MS-017 | core/auth.ensure_sa_user (frmCompany.frm:1817-1823); usermaster._validate VB6 rules |
| B | MS-001..004, MS-027 | ui/comp_mast_form_ui.py + core/comp_master.py; 4 DG lookups; registry rewire |
| C | MS-030, MS-009, MS-011 | _Vb6KeyMapFilter + install_vb6_keymap; company grid context menu |
| D | MS-012, MS-014, MS-015, MS-028, MS-029 | general_setup_tabs nav toolbar, lookup pickers, roundoff ops/grid, radios |
| E | MS-005, MS-007, MS-026 | ui/fa_enviro_ui.py 22 widgets; 42-col harvest; Tagada maxLength; limit checkboxes |

Parity test after wiring: 5/5. Integration suite: 907 passed/1 skipped.

## Wave-2 Log (2026-10-02)

- **MS-016** UserMast GodCode/FloorCode/BackColor/AllowDtChng persisted + UI.
- **MS-037** core/permission.py + _rbac_guard consume (live SA/ADITYA check).
- **MS-008 research** (explore agent) — chain A/B inventory, live schema
  facts (FAEnviro 58 cols, no audit cols; SubGroup PK=SubCode), safe-subset
  spec → user decision "Port safe subset".
- **MS-006** re-opened and fixed properly (no-audit parity test).
- **FIELD_TYPES breakage** in ui/general_setup_tabs_ui.py fixed (locals
  `FIELD_TYPES.get`/`FIELD_MAXLEN.get` + QSpinBox/QDoubleSpinBox import) —
  test_general_setup_tabs.py 19/19.

## Wave-3 Log (2026-10-02, this session)

1. **MS-008 safe subset** ported: core/schema_upgrade.py (630 statements,
   guard_audit 630/630, guarded-drop allowlist) + ui/schema_upgrade_ui.py
   (admin-gated preview/confirm/results) + shell `_db_update` wired
   (ui/shell.py:914). No DDL executed during verification.
2. **MS-020 sweep**: 7 fixes / 100 kept / 3 uncertain / 5 excluded rows,
   all with VB6 loc evidence; live smoke of 7 OK.
3. **MS-021 corrected**: "VB6 consistently uses OR-HO" overstated —
   per-query evidence rule adopted.
4. **Chain-B folio divergences fixed** (core/folio.py::run_startup_normalization):
   - guestprof_fom: added VB6 `AND FOM IS NULL` guard (frmCompany.frm:2476 /
     loc_195AE9D) — earlier version flipped FOM=0 rows to 1.
   - planmast_taxstru: wrong `INNER JOIN RevMast ON Code=Code` → VB6
     `LEFT JOIN RoomCat LEFT JOIN RevMast` + `WHERE ISNULL=''` fill-only
     guard (loc_195AC15).
   - roomocc_taxstru: added VB6 fill-only guard (loc_195AC36).
   - depart_kot_na: default `'No'` → VB6 Enviro-derived subselect +
     `OutletYN='Y'` (loc_195AE65-75); statements normalized to
     (name, sql, params) tuples with parameterized site.
5. **core/__init__.py repaired** (parallel-session artifact): import block
   named 7 non-existent flat `channel_*` modules (real layout:
   core/channel/ package), duplicate `travel_post`, non-existent
   `auth.dec_bytes` export → fixed; package imports again.
6. **Deliverable clobber handled**: register/status/test-results overwritten
   by parallel session 10:47-10:48 → superseded copies preserved as
   `*.superseded_20261002_1047`; register rebuilt (this file), status +
   test-results rebuilt with current data.
7. **Full suite**: 1033 passed / 1 skipped / 0 failed (entire tests/).

## Wave-4 Log (2026-10-02 afternoon, round-4 "continue with all" batch)

1. **menu_help Opt5-7 regression** (parallel session 11:46) root-caused +
   fixed: invalid columns → silent `rows=[]` → 0 rows/user; `_load_user`
   restored to Opt1-4 (456 SA rows), `get_permissions` fallback hardened vs
   Code-as-Opt5 false positive. VB6 proof: no Opt5 anywhere in HMS tree.
2. **[LOST] recovery**: all 7 entries recovered verbatim from pre-clobber
   opencode session DB (`MAIN_SETUP_REAUDIT_FRAGMENT.md` documents method).
3. **MS-004 re-audit**: premise disproven (live callers) → CLOSED + docstring
   wrong-target guards (core/company.py:56-63, :98-103).
4. **MS-020 verdicts**: 3 uncertain rows → KEEP ×3 with VB6 loc + HMS.exe
   binary evidence (no code changes).
5. **MS-028 grids**: 6 unbound grids bound via LOOKUPS/_grid_rows +
   lookup_* fetchers (row counts in MS-028); 3 `core/enviro.py` type fixes
   (CatalogLimit yn3, KitchenStockReport str, SmartCardItem str — these were
   aborting every Parameter save with ValueError).
6. **MS-013 Tier-1**: 6 AC cols → EDITABLE + SubGroup existence check +
   READ_ONLY de-dup (register entry updated by fix agent).
7. **Parallel-session breakage triage**: stray `PYEOF` in ui/fa_voucher_ui.py
   (heredoc artifact, 14:17) + invalid `setTabOrder(..., focusNextChild())`
   call — both fixed (2-line diff), unblocking 65 collection errors + 1
   TypeError; menu_help/shell.py mid-run edits re-verified green on re-run.
8. **Research deliverables**: MS-013 (0 live-schema gaps; Tier-2 decision
   options) + Data Transfer (protocol mapped; recommendation = SQL-native,
   networked-vs-air-gapped decision gate) — both in Open items.

---

## Round-5 (2026-10-03) — VB6 dispatcher + Enviro-write audit

Method: re-extracted the Main Setup menu tree and the per-index `New <Form>`
dispatch straight from `MDIForm1.frm` (authoritative, 135 leaves / 106 visible),
then diffed every leaf against `_form_registry()`. Result: **wiring already
complete (105/106** — the 1 gap is the `-` separator row, never clickable).
So the remaining risk was *logic*, not menu. Two real defects found by reading
the VB6 dispatch + `frmEnviro` save chain against the Python code.

### MS-037 (FIXED) — "Plan Master" leaf ignored `Enviro.PlanMastType`
- **Priority:** P1 · **Category:** BUSINESS LOGIC BUG / NAVIGATION BUG
- **VB6:** `MDIForm1.frm:7281-7300` (`Mas` index 12) is **not** a dedicated form.
  `loc_132BBD4` reads `Select PlanMastType from Enviro where logsite_code='<site>'`;
  `loc_132BC3B` `If var_D4.Value = "Advanced"` → `New FrmPackageMast`
  (`MyType = "Plan"`), `Else` → `New FrmPlanPackMast`.
- **Actual (Python):** `"Plan Master"` was hard-wired to `p2.open_planmaster`
  (the FrmPackageMast/MyType="Plan" form) for every configuration.
  `core/plan_definition.mode_is_standard()` existed and was unit-tested but had
  **zero callers** — dead code, so the branch never ran.
- **Impact:** any site with `PlanMastType <> 'Advanced'` opened the wrong master
  (wrong table/grid/tariff editor). Config-dependent, so invisible on the live
  KK site (`PlanMastType='Advanced'`) — which is why tests stayed green.
- **Fix:** `ui/shell.py:1079` `_open_plan_master(parent, p2, fm)` reproduces the
  VB6 branch; registry `"Plan Master"` now routes through it
  (`ui/shell.py:1796`). `'Advanced'` → `p2.open_planmaster`, else →
  `fm.open_plan_definition` (FrmPlanPackMast). Enviro read failure fails over to
  the Advanced form = exact prior behaviour.
- **Test:** `test_plan_master_dispatch_routes_by_enviro` (5 mode values + the
  unreadable-Enviro failover).
- **Status:** FIXED · **Date:** 2026-10-03

### MS-038 (FIXED) — Parameter screen silently discarded 3 VB6-written switches
- **Priority:** P1 · **Category:** FRONTEND BUG / DATA MAPPING BUG (silent)
- **VB6:** `frmEnviro.frm` `Cmd_Click` writes all three in its UPDATE SET chain —
  `PlanMastType` (`loc_1CB268B`/`loc_1CB26B1`), `PlanSelectionBasedOn` +
  `PlanCalc` (`loc_1CB2801`), `PlanTariffNarration` (`loc_1CB2CCF`); all three
  are in the Enviro INSERT column list (`loc_1CAF654`) and each has a bound edit
  control (`loc_1DE1F76`, `loc_1DE1510`).
- **Actual (Python):** `ui/general_setup_tabs_ui.py:1990-1996` renders
  `PlanMastType`/`PlanCalc`/`PlanSelectionBasedOn` in the **HR/Payroll** group,
  but `_save_enviro` (`:2303`) filters on `core/enviro.EDITABLE`, which did not
  contain them → all three were **dropped on Save with only a count in the
  message** ("N setting(s) READ-ONLY hain"), never naming the field. They were
  also mis-filed in `general_setup.ENVIRO_FINANCE_FIELDS` (a GL/AC-code set) and
  absent from `ENVIRO_EDITABLE_FIELDS`, so `enviro_update()` rejected them too.
- **Impact:** silent data loss on a live config screen; the values are real and
  populated (`PlanMastType='Advanced'`, `PlanCalc='No'`,
  `PlanSelectionBasedOn='Room Category'`). Also made MS-037 unreachable — the
  switch that picks the Plan Master form could not be changed from the UI.
- **Fix:** added `PlanMastType`/`PlanCalc`/`PlanSelectionBasedOn` to
  `core/enviro.EDITABLE` (`core/enviro.py:175`) and to
  `general_setup.ENVIRO_EDITABLE_FIELDS`; removed `PlanMastType`, `PlanCalc`,
  `PlanTariffNarration`, `AttendType` from `ENVIRO_FINANCE_FIELDS` (they are
  plan/HR operational flags, **not** finance AC codes). Type spec `"str"`, not
  `yn3` — VB6 wraps these in `Proc_6_38_E68A98` (string escape) with **no**
  Yes/No check, so no enum rule was invented.
- **DB verification:** write `PlanMastType='Standard'`,`PlanCalc='Yes'`,
  `PlanSelectionBasedOn='Room Type'` → 1 row affected, all 3 read back, then
  `ROLLBACK` → live values restored byte-identical. GL guard re-checked:
  `Cash_Ac` still rejected.
- **Test:** `test_plan_switches_are_enviro_editable` (allowlists + validation +
  finance-set removal + `Cash_Ac`/`DiscountAc`/`RoundOffAc` still protected).
- **Status:** FIXED · **Date:** 2026-10-03

### MS-039 (FIXED) — `mode_is_standard` WHERE diverged from VB6
- **Priority:** P2 · **Category:** SQL BUG (latent, multi-site)
- **VB6:** `where logsite_code='<site>'` — **no** `'HO'` union.
- **Actual:** used `WHERE LogSite_Code = ? OR LogSite_Code = 'HO'`, unlike VB6.
- **Impact:** on a multi-site install an HO-level `PlanMastType` could win
  (`rows[0]`) and pick the wrong Plan Master form. Single-row on live KK, so no
  current data impact — fixed to stay faithful and future-proof.
- **Fix:** `core/plan_definition.plan_master_mode()` (new) uses the VB6-exact
  WHERE; `mode_is_standard()` now delegates to it.
- **Test:** `test_plan_master_mode_uses_vb6_where_clause` asserts no `'HO'` in
  the emitted SQL.
- **Status:** FIXED · **Date:** 2026-10-03

### Regression (round-5)
- `tests/unit/test_plan_definition.py`: **11 passed** (5 new).
- Main Setup-scoped selection (`-k "main_setup or mainsetup or plan or enviro or
  registry or menu or setup or tax or general"`): **212 passed, 0 failed**.
- Full suite: **1091 passed / 6 failed**. All 6 are **pre-existing and outside
  Main Setup** — proven by re-running with this round's files stashed:
  - 3 × `test_manual_pipeline.py` — `ModuleNotFoundError: No module named 'PIL'`
    (environment: Pillow not installed).
  - 2 × `test_core_validation.py::TestCheckoutBalanceGuard` — real SQL defect in
    `core/folio.py:222` (`post_room_charge`): "SQL contains 16 parameter markers,
    but 17 parameters were supplied". `folio.py` was already dirty in the
    working tree from a prior session; **not** touched by this round and still
    fails with these files stashed. Front Office scope — left for the FO round.
  - 1 × `test_fdpostchg_posting.py::test_row_shape_tax_and_comments` — passes in
    isolation, order-dependent flake.

---

## Open items (authoritative)

1. **MS-013 Tier-2** — remaining Enviro finance AC columns (AdvanceAc,
   Loan_Ac, Salary_Ac, DummyTravelAc, CashCard*, DefCompGroup …, ~21 cols):
   product decision needed — expose (VB6 parity, GL-risk) vs show read-only
   (≈0.3 d, zero GL risk). No schema change needed (live Enviro 222 cols,
   VB6 diff = 0 missing). P1. Tier-1 (6 Outlet/Banquet AC cols) FIXED 2026-10-02.
2. **Data Transfer / Data Transfer (POS)** — Jet `.mdb` protocol product
   decision. Research complete 2026-10-02: recommendation = SQL Server-native
   transfer (drop `.mdb`), gated on "are field sites networked to HO SQL
   Server?"; if air-gapped, swap carrier (.mdb → BCP/CSV/zip) keeping VB6
   workflow; optional read-only .mdb importer hedge for mixed rollout.
   Registry: 4 `_coming_soon` leaves + MS-036 allowlist (do not unwire
   without porting).

## Closed this round (2026-10-02 round-4 batch)

- **MS-004** — CLOSED (premise disproven; docstring wrong-target guards added).
- **MS-018/019/022..025/032** — all 7 [LOST] recovered (HIGH confidence,
  verbatim pre-clobber rows + code re-verification); 0 [LOST] remain.
- **MS-020** — 3 uncertain rows resolved KEEP (VB6 + HMS.exe binary evidence);
  tally now 7 fixed / 103 kept / 0 uncertain.
- **MS-028** — 6 formerly-unbound general-setup grids bound (DGHelp 3107,
  DGGroup 73, DGRevenue 67, DGPurchaseGodown 64, DGpurchitem 768, DGDepart 67
  rows; missing-table → []).
- **MS-013 Tier-1** — 6 AC cols whitelisted + SubGroup existence check; save
  path 40 keys / 0 validation failures (was: whole save died).
