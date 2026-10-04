# MAIN SETUP — VB6 vs Python Comparison

**Date:** 2026-10-01 (round 1); **2026-10-02 (round 2 — dispatcher-stub compare loop)**  
**Analyst:** Kiro (senior VB6-to-Python migration engineer)  
**Loop pass:** Complete (compare → debug → implement → test → re-compare)

---

## 1. VB6 Files Analyzed

| File | Type | Purpose |
|------|------|---------|
| MDIForm1.frm | Form | Main MDI shell — complete menu hierarchy for all Main Setup sub-groups |
| HMS.bas | Module | Menu click handlers, form instantiation, report GRepFormName wiring |
| FrmTaxMast.frm | Form | Tax Master — RevMast FieldType='T' CRUD |
| FrmPayTypeMast.frm | Form | Payment Type Master — RevMast PAYTYPE CRUD |
| SundryMast.frm | Form | Sundry Master — SundryMast CRUD |
| DepartMast.frm | Form | Department Master — Depart + RevMast dual insert |
| OutLetMast.frm | Form | Outlet Master — 50+ fields, FGrid tax grid |
| UserMast.frm | Form | User Master — UserMast + user1 + user2 + menuhelp1 cascade |
| UserPermission.frm | Form | User Permissions — MenuHelp grid, Copy User function |
| FrmRoomMast.frm | Form | Room Master — composite PK, rate grid |
| FrmRoomCatMast.frm | Form | Room Category Master — composite PK, rate matrix |
| frmEnviro.frm | Form | Parameter Settings — 221+ Enviro column UPDATE |
| frmCompany.frm | Form | Company/Login — virtual keyboard, CompInfo frame |
| MainLib.bas | Module | Shared Proc_6_108 (dependency check), Proc_6_45 (code prefix) |
| ValidationModule.bas | Module | Required field messages, duplicate field checks |
| ErrorHandlingModule.bas | Module | Standard error handler, RollbackTrans pattern |

---

## 2. Python Files Analyzed

### Core (backend business logic)
| Python File | VB6 Equivalent |
|-------------|----------------|
| core/taxmaster.py | FrmTaxMast.frm |
| core/paymenttype.py | FrmPayTypeMast.frm |
| core/sundry.py | SundryMast.frm |
| core/depart.py | DepartMast.frm |
| core/usermaster.py | UserMast.frm |
| core/enviro.py | frmEnviro.frm |
| core/roommaster.py | FrmRoomMast.frm |
| core/roomcategory.py | FrmRoomCatMast.frm |
| core/seasonmaster.py | frmSeasonMast.frm |
| core/packagemaster.py | FrmPackageMast.frm |
| core/plans.py | FrmPlanPackMast.frm |
| core/taxstru.py | FrmTaxStruMast.frm |
| core/marketsegment.py | FrmMarketSeg.frm |
| core/businesssource.py | FrmBusinessSrc.frm |
| core/gueststatus.py | FrmGuestStat.frm |
| core/forexmaster.py | FrmForeignExMast.frm |
| core/narr.py | FaNarrMast.frm |
| core/unit.py | frmUnitMast.frm |
| core/acgroup.py | FaSubGroup.frm |
| core/ledger.py | FaVrEnt.frm (ledger accounts) |
| core/menu_help.py | UserPermission.frm |

### UI (frontend dialogs)
| Python File | VB6 Equivalent |
|-------------|----------------|
| ui/usermaster_ui.py | UserMast.frm |
| ui/user_permissions_ui.py | UserPermission.frm |
| ui/general_setup_ui.py | frmEnviro.frm (Parameter), General Setup misc |
| ui/general_setup_tabs_ui.py | FDGENMAS 6-tab window |
| ui/finance_masters_ui.py | Tax/PayType/MarketSeg/BusSource/GuestStatus/Forex/Ledger |
| ui/enviro_ui.py | frmEnviro.frm |
| ui/shell.py | MDIForm1.frm (form registry + MainSetupWorkbench) |

---

## 3. UI Comparison

### VB6 Control Pattern → Python Equivalent

| VB6 Control | Python Equivalent | Notes |
|-------------|-------------------|-------|
| MainCtrl TopCtrl1 | QHBoxLayout with QPushButtons | Add/Edit/Delete/Save/Cancel/Find/Print/Navigate |
| TextBox Txt(n) | QLineEdit | MaxLength enforced via setMaxLength() |
| DataGrid DGHelp | QTableWidget (hidden lookup) | Popup search grid |
| MSFlexGrid FGPoint | QTableWidget | Floating coord-based popup |
| Frame FrmList/ListView | QMenu or QDialog | Dropdown list selector |
| Label LblUser/LblLDt | QLabel (audit display) | "Created By / Modified By: user date" |
| Label LblDefine | QLabel | "System Defined" / "User Defined" |
| Label LblFormCaption | QDialog.setWindowTitle() | Form title bar |
| MDIChild = True | QDialog(parent).exec() | Modal child window pattern |
| CommonDialog CDLG | QColorDialog / QFileDialog | Colour picker / file browser |
| PasswordChar="#" | setEchoMode(Password) | Password masking |

### Matched Behaviors
- ✅ TopCtrl1 state machine → Python Add/Edit/Idle state machine
- ✅ Form_Resize → QDialog.resize() with fixed/minimum sizes
- ✅ Form_Unload → dialog.reject() / accept()
- ✅ Form_QueryUnload check → closeEvent override
- ✅ DGHelp search popup → QTableWidget in floating dialog
- ✅ LblUser/LblLDt audit trail display → QLabel updated after reload

### Differences (fixed in this pass)
- ❌→✅ EnviroViewer was read-only — now full edit (BUG-006)
- ❌→✅ PrintingSetupTab used DoubleClicked triggers — now NoEditTriggers (browse-only, per VB6 frmMod_Print)

---

## 4. Event Handler Comparison

| VB6 Event | Python Equivalent | Match? |
|-----------|-------------------|--------|
| TopCtrl1_UnknownEvent_A (ADD) | _on_new() | ✅ |
| TopCtrl1_UnknownEvent_B (CANCEL) | _on_cancel() | ✅ |
| TopCtrl1_UnknownEvent_C (DELETE) | _on_delete() | ✅ (BUG-002,003,007,008 fixed) |
| TopCtrl1_UnknownEvent_D (EDIT) | _on_edit() | ✅ |
| TopCtrl1_UnknownEvent_E (EXIT) | reject() | ✅ |
| TopCtrl1_UnknownEvent_F (FIND) | search popup | ✅ |
| TopCtrl1_UnknownEvent_10-13 (Navigate) | tbl.selectRow() | ✅ |
| TopCtrl1_UnknownEvent_14 (PRINT) | print_fn callback | ✅ (Crystal .RPT → text preview) |
| TopCtrl1_UnknownEvent_15 (REFRESH) | reload() | ✅ |
| TopCtrl1_UnknownEvent_16 (SAVE) | _on_save() | ✅ (BUG-001,002,009 fixed) |
| Txt_GotFocus | edField.setFocus() + selectAll | ✅ |
| Txt_KeyPress Y/N | QLineEdit.textChanged + validation | ✅ |
| Txt_Validate | _on_save() pre-validation | ✅ |
| DGHelp_UnknownEvent_9 (grid select) | cellDoubleClicked | ✅ |
| ListView_UnknownEvent_13 | currentRowChanged | ✅ |
| Form_KeyDown F1/Esc | QShortcut | ✅ |

---

## 5. Validation Comparison

| VB6 Validation | Python Equivalent | Match? |
|----------------|-------------------|--------|
| Name required: Proc_183_19 | `if not rec.get('name')` | ✅ |
| Code required | `if not rec.get('code')` | ✅ |
| Duplicate Name: SELECT Count(*) | _dup_name_count() | ✅ |
| Duplicate ShortName | _dup_short_count() | ✅ |
| SysYN='Y' blocks delete/edit | `raise ValueError("SYSTEM ENTRY CAN'T BE DELETED")` | ✅ |
| Dependency check Proc_6_108 | db.query(COUNT(*) from related table) | ✅ |
| Password confirm match (UserMast TXT[2]==TXT[3]) | ed_conf == ed_new check | ✅ |
| Old password verify on edit | edit password dialog | ✅ |
| Kitchen type requires Printer | `if rt in ('Kitchen','Staff Kitchen') and not printer` | ✅ |
| Ledger A/C required (PayType) | except Company/Staff/Member | ✅ |
| Y/N field KeyPress | edAllowDtChng.setMaxLength(1) | ✅ |

---

## 6. SQL Comparison

### SELECT Pattern
| VB6 | Python | Match? |
|-----|--------|--------|
| `WHERE (LOGSITE_CODE='x' OR LOGSITE_CODE='HO')` | `SITE_FILTER = "(LogSite_Code = ? OR LogSite_Code = 'HO')"` | ✅ All masters |
| `ORDER BY Name` | `ORDER BY Name` | ✅ |
| Complex JOIN (taxmaster) | LEFT JOIN SubGroup × 3 + LEFT JOIN SundryMast | ✅ |

### INSERT Audit Fields
| VB6 | Python | Match? |
|-----|--------|--------|
| `U_Name = MemVar_1F920C8` | `U_Name = USER` | ✅ |
| `U_EntDt = Date()` | `U_EntDt = getdate()` | ✅ |
| `U_AE = 'A'` on Add | `'A'` hardcoded | ✅ |
| `U_AE = 'E'` on Edit | `'E'` hardcoded | ✅ |
| `Site_Code = MemVar_1F92070` | `Site_Code = SITE_CODE` | ✅ |
| `LogSite_Code = MemVar_1F92078` | `LogSite_Code = SITE_CODE` | ✅ |

### Auto-Code Generation
| VB6 | Python | Match? |
|-----|--------|--------|
| `ISNULL(Max(CAST(SUBSTRING(Code,3,4) AS INT)),0)+1` | `taxmaster.next_code()` | ✅ |
| `ISNULL(Max(...),1)+1` (PayType default 1) | `paymenttype.next_code()` | ✅ |
| `ISNULL(Max(...),1)+1` (SundryMast) | `sundry._auto_next_code()` | ✅ |
| Prefix = `Left$(site, 2)` | `SITE_CODE[:2]` | ✅ |

### DELETE Cascade
| VB6 | Python | Match? |
|-----|--------|--------|
| UserMast: DELETE user1, user2, menuhelp1, userMAST | Fixed BUG-003 | ✅ |
| DepartMast: DELETE Depart + DELETE RevMast | Fixed BUG-002 | ✅ |
| FrmTaxMast: DELETE RevMast (single table) | `taxmaster.delete()` | ✅ |
| FrmPayTypeMast: DELETE RevMast + DELETE DepartPay | `paymenttype.delete()` | ✅ |
| SundryMast: DELETE SundryMast + RevMast.Sundry check | Fixed BUG-001 | ✅ |

---

## 7. Business Logic Comparison

| VB6 Logic | Python Implementation | Match? |
|-----------|----------------------|--------|
| SysYN='Y' system-defined protection | All masters check SysYN | ✅ |
| Multi-site (LogSite_Code + 'HO') | SITE_FILTER in all list/get/search | ✅ (BUG-001 fixed) |
| Department → RevMast dual insert | BUG-009 fixed | ✅ |
| Enviro single-row UPDATE | enviro.update_settings() | ✅ |
| AllowDtChng flag on User | BUG-004 fixed | ✅ |
| RBAC guard (SA cannot be deleted) | usermaster_ui._on_delete() | ✅ (BUG-005 fixed) |
| Room → RoomOcc dependency check | BUG-007 fixed | ✅ |
| RoomCat → RoomMast dependency check | BUG-008 fixed | ✅ |
| Delete-then-insert pattern (Sundry) | sundry.insert() DELETE existing then INSERT | ✅ |
| Transaction with RollbackTrans | BeginTrans/CommitTrans in all CRUD ops | ✅ |

---

## 8. Report / Print Comparison

| VB6 Report | Python Equivalent | Match? |
|------------|-------------------|--------|
| TaxMast.RPT + TaxMast.ttx | print_preview text report via taxmaster.print_rows() | ✅ |
| PayTypeMast.RPT | print_preview via paymenttype.print_rows() | ✅ |
| SundryMast.RPT | print_preview via sundry list | ✅ |
| Department.RPT | print_preview via depart.list_all() | ✅ |
| UserMast.RPT | print_preview via usermaster.list_all() | ✅ |
| Crystal Reports engine | Python text-based print_preview (no .RPT engine) | ⚠️ Documented difference |

**Note:** Crystal Reports (.RPT) is a Windows-only OCX — Python port uses house-standard `print_preview.py` text layout. Format differs but data content is equivalent.

---

## 9. Permissions Comparison

| VB6 | Python | Match? |
|-----|--------|--------|
| SA user delete blocked | usermaster_ui._on_delete SA check | ✅ |
| Current user cannot delete self | self.current_user check | ✅ |
| SysYN='Y' blocks delete/edit | _check_sysyn() in all masters | ✅ |
| MenuHelp per-user security | menu_help.py + user_permissions_ui.py | ✅ |

---

## 10. Remaining Known Differences (not bugs — documented design decisions)

| Item | VB6 | Python | Decision |
|------|-----|--------|----------|
| Crystal Reports | .RPT OCX engine | Text print preview | Windows-only OCX → not portable |
| Enviro finance A/C cols | frmEnviro editable | Read-only (FA Environment) | GL integrity — documented in enviro.py |
| Data Transfer / Data Transfer (POS) | Transfer.frm (Jet `.mdb` file exchange: `Template.mdb`, `C:\TEMPZZZZ.MDB`, ODBC `HotelTrans`) | allowlisted inactive | Non-SQL-Server file protocol → not portable |
| Rate Group Master | Dispatcher caption-only (ModuleAdd loc_1E43168, no `New`/`Show`, GoTo fall-through) | allowlisted inactive | Dead leaf in VB6 |
| Sale MIS Customized | No dispatcher case; `UTL_Click(&HE)` empty (MDIForm1.frm:4170-4172); menu `Visible=0` (:988) | allowlisted inactive | Dead leaf in VB6 |
| Data Recieving | No dispatcher case; `UTL_Click(&H13)`→FrmDataRecieving but menu `Visible=0` (~:1004) | allowlisted inactive | Dead leaf in VB6 (UI exists, unreachable) |
| Recharge/Refund Entry | SCRD dispatch dead (`SCRD_Click` = Exit Sub, MDIForm1.frm:10754) | wired to `sct.open_card_recharge` (round-5 extras dialog = real target) | VB6 caption merged recharge+refund |
| Cash Card Transaction / Collection Summary reports | No dispatcher case | wired to report catalog keys | Report destinations confirmed by name |
| Guest BirthDates / Anniversary | `New frmWelcome` (loc_1E44517) — Special Occasions GuestProf popup | `util_ui.open_special_occasions` (ported round 2) | Was wrongly report-wired earlier; fixed |
| Year End (full chain) | frmYearEnd.frm | year_end_ui.py (preflight only) | Full chain requires FY close audit |
| VB6 virtual keyboard | BtnEnh1 array (50 keys) | Standard system keyboard | Touch screen feature not in scope |
| World clock (MDI right panel) | LblTimeIndia/Canada/etc. | Not implemented | Cosmetic, no business logic |

**Round-2 note:** Voucher Serialisation and POS Bill Deletion (previously listed as `_coming_soon`) are now **ported** — see section 11.

---

## 11. Round 2 (2026-10-02) — Main Setup dispatcher-stub compare loop

Every `_coming_soon` leaf under `&Main Setup` was compared against its VB6 dispatch target
(`ModuleAdd.bas Proc_165_2_1E4B100` registrations + static `MDIForm1.frm` `UTL_Click`/`SCRD_Click`).
Dispatcher leaf semantics: `var_188` = menu caption for numeric Code; **no case → falls through = dead**.

### 11a. Leaves PORTED (new Python module pairs, wired into `ui/shell.py`)

| Leaf | VB6 form / dispatch loc | Python core | Python UI | Opener |
|------|------------------------|-------------|-----------|--------|
| Voucher Serialisation | FrmSerialiseVr (loc_1E44380) | core/voucher_serialisation_ops.py | ui/voucher_serialisation_ui.py | `open_voucher_serialisation(parent, user)` |
| POS Recycle | FrmPOSRecycleData (loc_1E43E03, `MemVar_1F920B8=1` gate) | core/pos_recycle_ops.py | ui/pos_recycle_ui.py | `open_pos_recycle(parent, user)` |
| Enviro Inventry | frmPurEnviro (loc_1E43AE6) | core/purchase_enviro_ops.py | ui/purchase_enviro_ui.py | `open_purchase_enviro(parent, user)` |
| Task Scheduler | FrmJobScheduler (loc_1E4A177) | core/task_scheduler_ops.py | ui/task_scheduler_ui.py | `open_task_scheduler(parent)` |
| Voucher Wise Sundry Entry | VoucherSundrySetting (loc_1E444E3) | core/voucher_sundry_ops.py | ui/voucher_sundry_ui.py | `open_voucher_sundry_entry(parent, user)` |
| Open Item Consumption | FrmConsumMast9999 (loc_1E43224, undated `FinItem+RestCode` key) | core/open_item_consumption_ops.py | ui/open_item_consumption_ui.py | `open_open_item_consumption(parent, user)` |
| POS Bill Deletion | FrmPOSBillDeletion (loc_1E4A1AB) | core/pos_bill_deletion_ops.py | ui/pos_bill_deletion_ui.py | `open_pos_bill_deletion(parent, user)` |

### 11b. Leaves re-wired (existing targets)

| Leaf | Evidence | New wiring |
|------|----------|------------|
| Guest BirthDates / Anniversary | loc_1E44517 → `New frmWelcome` (GuestProf prev/next popup, NOT a report) | `ui/utility_forms_ui.SpecialOccasionsDialog` / `open_special_occasions` (ported this round) |
| PLU File (W.Scale) | loc_1E43DB4 → `rPOSRepView` `GRepFormName="PLUFile"` | `_open_report("PLU File")` |
| Cash Card Transaction Report | no dispatcher case; report by name | `_open_report("Cash/Card Transaction Report")` |
| Cash Card Collection Summary | no dispatcher case; report by name | `_open_report("Cash/Card Collection Summary")` |
| Recharge/Refund Entry | `SCRD_Click` = Exit Sub (dead) | `sct.open_card_recharge` (round-5 extras dialog) |

### 11c. Leaves allowlisted inactive (dead in VB6 / non-portable)

`Rate Group Master`, `Sale MIS Customized`, `Data Recieving`, `Data Transfer`, `Data Transfer (POS)` —
evidence in `tests/unit/test_mainsetup_registry_parity.py` `ALLOWED_INACTIVE` (dead-in-VB6 dispatch /
menu `Visible=0` / Jet `.mdb` file exchange). `Member Bill Sundry Setting` carried over from round 1.

### 11d. Verification

- `tests/unit/test_mainsetup_registry_parity.py`: **5/5 passed** (every Main Setup leaf either wired
  to a real target or allowlisted with VB6 evidence). Test guard fixed this round
  (`_COMING_SOON_QUALNAME_SUFFIX` + `endswith`, was broken exact-match).
- Full suite: **907 passed, 1 skipped** in 101.27s.
- Each port: `py_compile` OK, offscreen construct+close OK, read-only live-DB smoke OK (Moondata2627).

---

## 12. Round 3 (2026-10-02) — waves 1-3 closeout (schema, sweep, master forms)

### 12a. Structure Update (VB6 `btnStruUpdNew`, Alt+D) → Schema Upgrade (safe subset)

- **VB6 chain:** `frmCompany.frm:2735-2837` → 22 Execute DDL (`:2773-2831`) →
  `Proc_96_94_1F2C2C8` ensure-schema (`Hotlib.bas:40649-41388`; templates
  `MainLib.bas:6314-6427`). Chain B = 47 auto login-normalization writes at
  company select.
- **Python (new):** `core/schema_upgrade.py` — **630 idempotent statements**
  (573 ensure-column, 20 create-table, 17 create-PK, 15 add-column, 4 view
  drop/create, 1 guarded drop-PK), import-time `guard_audit()` 630/630
  (guarded-drop allowlist = 3), `plan()` + `run(confirm_token)`.
  `ui/schema_upgrade_ui.py` — admin-gated dialog (supervisor/SA via
  `core/permission.role_of`), SQL preview, confirm, result table.
  Wired: `ui/shell.py::_db_update` (Database Update button, :914).
- **Excluded by user decision (2026-10-02):** irreversible one-time block
  (DROP COLUMN kdate, `SerialKeyNo=''`, DF drop, Company add Comp_Id),
  the 47 login-normalization writes, VB6 `End` app-kill, any auto-run.
- **Chain B divergences fixed** in `core/folio.py::run_startup_normalization`:
  `AND FOM IS NULL` guard (loc_195AE9D), PlanMast `LEFT JOIN RoomCat →
  RevMast` + fill-only guard (loc_195AC15), RoomOcc fill-only guard
  (loc_195AC36), `Depart.KOTAtNightAudit` Enviro-derived + `OutletYN='Y'`
  (loc_195AE65-75, parameterized site).

### 12b. Site-filter sweep (MS-020) + MS-021 correction

- 118 bare `LogSite_Code = ?` candidates classified against VB6 line-by-line:
  **7 fixed** (forex_txn:66, pos_advance:88, pos_display:52, excise_gate_pass:85,
  nightaudit:59, checkout:342, plan_definition:39), **100 kept** (VB6
  site-only/txn-scoped), **3 uncertain kept** (exact VB6 twins site-only:
  excise_gate_pass:54/62, travel_post:88), 5 excluded-file rows classified.
- **MS-021 correction:** earlier register claim "VB6 consistently uses
  OR-HO" was overstated — Enviro: 622 site-scoped reads vs 2 with HO.
  Sweep rule is now per-query exact-VB6-evidence.

### 12c. Waves 1-2 (master forms / infra) — see register for entries

- CompMast 43-col form + search + 4 DG lookups (MS-001..004, MS-027);
  FA Enviro 22 widgets + 42-col harvest + no-audit UPDATE parity
  (MS-005/006/007/026); VB6 keymap filter + grid context menu
  (MS-009/011/030); SA bootstrap + UserMast validation (MS-010/017);
  General Setup nav/lookups/roundoff/radios (MS-012/014/015/028/029);
  UserMast GodCode/FloorCode/BackColor/AllowDtChng (MS-016);
  rights model `a/e/d/p/u` → `core/permission.py` (MS-037).

### 12d. Verification

- Parity: `tests/unit/test_mainsetup_registry_parity.py` 5/5.
- Full suite (all `tests/`): **1033 passed, 1 skipped, 0 failed**
  (2 pre-existing `datetime.utcnow` warnings), 134.94s.
- Register: `MAIN_SETUP_BUG_REGISTER.md` MS-001..MS-037 rebuilt after
  parallel-session overwrite (reconstruction notice at top).

---

*End of VB6 vs Python Comparison.*
