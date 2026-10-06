# Spec: Main Setup Top Menubar (VB6 MDIForm1 parity)

**Task ID**: UI-MS-TOPMENU
**Status**: ✅ IMPLEMENTED + VERIFIED (2026-10-05) — see §7 "Delivered"
**Date**: 2026-10-05

---

## 1. Target (from screenshot, OCR-verified)

Window title: `Moon and Mars Resorts { 2026-27 } - main setup`

Persistent **top** menubar, 9 items, left→right:

```
General Setup | Front Office | Point of Sale | Members Mgmt | Banquet
              | Inventory | HR/Payroll | Finance | Utility
```

Also visible: `Dark Mode` toggle, `Preview` button.

**User's own annotation on screenshot**: *"main setup — Top menubar se form kholo"*
→ Clicking a top-menubar item opens that module's forms. No separate
"Main Setup" modal window in the flow.

---

## 2. Source of truth (VB6)

**`FODER/MDIForm1.frm`** (510 KB) — VB6 MDI parent, holds the whole menu tree.

Top-level menus in VB6:

| Line | Caption |
|------|---------|
| 316 | `&Finance` |
| 494 | `&Main Setup` |
| 1511 | `House Keeping` |
| 2187 | `Night Audit` |
| 2322 | `HR/Payroll` |
| 2721 | `EXTRAs` |

The **9 target modules = sub-menus nested under `&Main Setup` (line 494)**:

| Line | Module | Items in VB6 |
|------|--------|--------------|
| 496 | General Setup | Tax Master, Tax Structure, Payment Type, Parameter, Revenue Group Setting, Printing Parameters, Printing Setup, Revenue Wise Budget Entry |
| 533 | Front Office | Country/State/City Master, Market Segment, Business Source, Guest Status, Charge Master, Fixed Charge, Package Master, Plan Master, Season Master, Room Features, Room Category, Room Master, Company Master, Forex Master, Guest History, Group Profile, Room Display |
| 617 | Point of Sale | Setup Outlet, Outlet Bill Sundry Setting, Server Master, Table Master, Item List, Menu Group, Menu Category, Menu Item, Menu Item Rate, Rate Group Master, Session Master, Open Item Consumption, Scheme Master, Happy Hours, Happy Hours [Free Items], Combo Pack, NC Type, Customer History, Delivery Boy |
| 698 | Members Mgmt | Category Master, Member Master, Corporate Member Master, Revenue Master, Facility Master, Category wise Revenue, Category wise Facility, Member Bill Sundry Setting, Environment Settings, Member Age Wise Revenue, Member Select Category |
| 745 | Banquet | Events, Venue Features, Venue Master, Menu Category, Item Group, Menu Item, Catalog Master, Banquet Bill Sundry Setting |
| 780 | Inventory | Party Master, Department, Item Group, Item Category, Item Entry, Consumption Master, Purchase Sundry Setting, … (read to line 834) |
| 834 | HR/Payroll | Designation Master, Category Master, Holiday Master, Employee Master, EPABX, Com Port Properties, Call Type Master, Extension Master, Call Codes Master, Call Control Master |
| 878 | `&Finance` | Group Accounts, Ledger Accounts, Narration Master, T.D.S. Category, FA Environment, Voucher Environment, Opening Balance Updation, Year End Updation, Current Balance Updation, Country Master, State Master, City Master, Delete Message, Account Merging, Voucher Serialisation |
| 945 | Utility | User Master, Permissions, Update Database Nulls, … |

> **Finance is BOTH a top-level VB6 menu (316) and a Main Setup submodule (878).**
> In the target screenshot it appears once, inside the 9-item row, positioned
> between `HR/Payroll` and `Utility`.
>
> ⚠️ **Do not confuse the two Finance blocks.** Line 316 is the *top-level*
> Finance menu (Transaction / Display / Reports → Voucher Entry, Balance Sheet,
> Day Book, …). Line 878 is the *Main Setup* Finance block (Group Accounts,
> Ledger Accounts, Narration Master, …). This spec is about **line 878**.
>
> **`EPABX` (line 853) is a LEAF under `HR/Payroll`, not a 10th module.**
> VB6 `&Main Setup` has exactly **9** sub-menus — matching the screenshot.
> Do not add a 10th top item. If the live DB also returns `Smart Card`, that is
> extra data, not screenshot/VB6 parity — leave it out of the fixed order.

**Extract any remaining leaf items for `Inventory` directly from
`FODER/MDIForm1.frm` lines 780–833.** Do not guess them.

---

## 3. Current Python state

Files:

- `HMS_py/ui/shell.py` (3902 lines) — main window
  - L988 `class MainSetupWorkbench(QDialog)` — modal, title `"Main Setup"`,
    opens from a button (`_open_main_setup`, L1855). Groups masters in a
    hand-written `groups = [...]` list (L1012+).
  - L3326 `self._menus = mh.menubar_for` — DB-driven dynamic menubar
  - L3412–3436 `self._side_buttons` — **sidebar** with `mod_target` property,
    9 module buttons (L3472 `self._side_buttons[:9]`)
  - L3672 `_on_module()` — on module click: `mb.clear()` then rebuild the
    `QMenuBar` from `self._menus(module, user)`; also rebuilds the
    purple module row (`_mod_lay`) and sub-row (`_sub_lay`)
  - L3817 `_add_item()` — recursive menu-item adder (handles `children`)
- `HMS_py/core/menu_help.py` — L450 `menubar_for_menuhelp()`,
  L565 `menubar_for()` (menuHelp tree → fallback `User_Module`)
- `HMS_py/core/menu.py` — `User_Module` fallback, same shape

Existing menu plumbing is **DB-driven and already VB6-shaped**. Reuse it —
do not hardcode a second copy of the tree.

---

## 4. What to build

### 4.1 Persistent top module menubar
- One **always-visible** `QMenuBar` on the main window showing exactly the
  9 modules in this order:
  `General Setup, Front Office, Point of Sale, Members Mgmt, Banquet, Inventory, HR/Payroll, Finance, Utility`
- Source the labels/order from VB6 / `menubar_for` data where available.
  Keep the literal order above — screenshot parity wins.
- Menus are **not** cleared on module click. Only their *content* changes.
- Respect user rights: a module the user cannot access must be hidden or
  disabled (match existing behaviour — see `menubar_for` restricted-user path,
  `HMS_py/core/menu_help.py` L576-587).

### 4.2 Direct form opening from menubar
- Clicking a **leaf** item (e.g. `General Setup → Country Master`) opens the
  form directly, using the existing registry `_form_registry()`
  (`HMS_py/ui/shell.py` L1230) and existing openers.
- Leaves that have no port yet: keep current behaviour (disabled /
  "Coming Soon"), do **not** crash.
- Remove the `mb.clear()` rebuild side effect so switching modules never
  destroys the top bar.

### 4.3 Window title
`Moon and Mars Resorts { 2026-27 } - main setup`

- Property name `{ 2026-27 }` and outlet name `Moon and Mars Resorts` should
  come from config/DB if such a source already exists
  (`shell.py` L3882 references `"Moon and Mars Resorts"` — check it).
  Do not add a new config key if one fits.
- If no source exists, hardcode once as a module constant and mark
  `# ponytail: no DB source for FY label; wire to config when available`.

### 4.4 `MainSetupWorkbench` (L988)
- Its job is now covered by the top menubar. **Remove the modal from the
  normal flow.** Delete the class only if nothing references it; otherwise
  keep it but stop routing the "Main Setup" button to it.
- `tests/` may reference it — grep `tests/` for `MainSetupWorkbench` before
  deleting.

---

## 5. Out of scope

- New VB6 forms being ported (leaf wiring only)
- `menuHelp` / `User_Module` **DB data or schema** changes
- `menu_help.py` logic rewrite — reuse `menubar_for` as-is
- Sidebar redesign (sidebar may stay; do not remove it in this task)
- Other top-level VB6 menus (House Keeping, Night Audit, EXTRAs) — separate task

---

## 6. Verification (must run before reporting `verified`)

```powershell
# from repo root
.\.venv\Scripts\python.exe -c "import HMS_py.ui.shell"   # import check
.\.venv\Scripts\python.exe -m ruff check HMS_py/ui/shell.py
.\.venv\Scripts\python.exe -m pytest HMS_py/tests -k "shell or menu" -q
```

Then launch the app and screenshot: the 9 items must be visible in a single
top row, and at least 2 leaf clicks must open real forms.

Report: `verified` / `partially_verified` / `not_verified` + the exact
commands you ran and their output.

---

## 7. Delivered (2026-10-05) — verdict `verified`

### Code (`HMS_py/ui/shell.py` only)

| Change | Where |
|---|---|
| `_MAIN_SETUP_MODULE` / `_MAIN_SETUP_TITLE` / `_TOP_MENU_ORDER` constants (order + labels only — leaves always come from DB) | ~L110 |
| `_build_top_menubar()` — query `mh.menubar_for("Main Setup", user)`, match canonical 9 case-insensitively, fallback = whatever DB returned (offline/restricted), wire leaves through existing `_add_item()` → `_opener()` → `_form_registry()` | ~L3680 |
| Called **once** from `MainWindow.__init__` | end of `__init__` |
| Title → `{name} { year } - main setup` | `__init__` |
| **Deleted** `mb.clear()` + full menubar rebuild from `_on_module()` | `_on_module` |
| `_open_main_setup()` modal → `QMessageBox` pointer to the top bar (class kept, `demo_entry.py` imports it) | ~L1855 |

### Tests

- `HMS_py/tests/test_main_setup_topmenubar.py` (new, 4 tests): exact 9-module
  order, title, survival of a sidebar click, disabled-no-crash leaf.
- `HMS_py/tests/unit/test_menuhelp_sidebar_live.py` — **changed**: it asserted
  the old contract (`menubar == mh.menubar_for(module)` after each sidebar
  click), i.e. the exact bug. Now asserts the persistent 9 survive every click.

### Exact verification output

```
=== 1) import
OK   (exit=0)

=== 2) ruff check HMS_py/ui/shell.py
Found 48 errors.          # identical to pre-change baseline (48); 0 added
[*] 15 fixable with the `--fix` option

=== 3) pytest HMS_py/tests -k "shell or menu" -q
55 passed, 1086 deselected in 4.55s      # baseline 51 passed; +4 new

=== 4) pytest HMS_py/tests/test_main_setup_topmenubar.py -q
4 passed

=== full suite HMS_py/tests -q
5 failed, 1135 passed, 1 skipped          # same 5 fail on stashed baseline
```

Full-suite failures are pre-existing and unrelated: 3 ×
`test_manual_pipeline` (`ModuleNotFoundError: No module named 'PIL'`), 2 ×
`test_account_posting` (DB data). Confirmed identical with the change stashed.

`ruff` was **not** in `.venv` (baseline: `No module named ruff`); installed
`ruff 0.16.10` into `.venv` to run the required command. Repo has no ruff
config, so `ruff check` runs an aggressive default ruleset — the 48 remaining
`shell.py` findings are all pre-existing and untouched (no unrelated cleanup).

### Runtime evidence (real DB, SA, `Moon and Mars Resorts`)

```
TITLE: Moon and Mars Resorts { 2026-27 } - main setup
TOP ORDER: ['General Setup', 'Front Office', 'Point of Sale', 'Members Mgmt',
            'Banquet', 'Inventory', 'HR/Payroll', 'Finance', 'Utility']
  General Setup  6 | Front Office 12 | Point of Sale 14 | Members Mgmt 4
  Banquet 8 | Inventory 9 | HR/Payroll 4 | Finance 11 | Utility 23 leaves
menubar geometry: 0 0 1366 19   → topmost row, full width, 188 distinct
                                   colors in the strip (labels really paint)

REAL LEAF CLICKS (action.trigger() → registry opener → modal form, no stub):
  'Party Master'        -> PartyMasterWindow  'Party Master (Suppliers)'
  'Department'          -> BaseMasterForm     'Department/Outlet Master (P2, F&B)'
  'Designation Master'  -> BaseMasterForm     'Designation Master (HR)'
  'Category  Master'    -> BaseMasterForm     'Employee Category Master'
PERSISTENT after sidebar click: True

result: forms_opened=4 persistent=True
```

Screenshots: `…\Temp\opencode\shots\topmenubar_01.png` (window),
`_02_banquet_open.png` (desktop, Banquet menu popped), `_03_menubar_only.png`.

### Spec-vs-VB6 discrepancies (unfixed — out of scope, needs a decision)

1. **`EPABX`** — VB6 `&Main Setup` has **10** direct children; the 10th is
   `EPABX` (`MDIForm1.frm:852`). The spec's 9 exclude it. Live DB agrees with
   VB6: `menubar_for('Main Setup','SA')` returns the 9 **+** `EPABX` **+**
   `Smart Card`. All extra groups are reachable via the sidebar; excluded from
   the top bar per spec. → If EPABX should be the 10th top item, add one
   constant.
2. **Finance leaves** — spec §4.2 lists `Transaction Entry / Cash Book /
   Bank Book / Reports`, but that text is the *separate top-level* `Finance`
   menu at `MDIForm1.frm:316`. The Main Setup `Finance` block is at `:877` and
   holds master screens. Left as-is (DB leaves untouched) → spec table needs a
   correction pass.
3. **`Preview` button** — not found anywhere in `shell.py`. `Dark Mode` exists.
4. **Case-sensitive group names** — DB returns `main setup` for the lower-case
   spelling with fewer merged leaves than `Main Setup`. Implementation queries
   `Main Setup`; add a DB-normalisation note if that split is unintended.
5. Sidebar click still rewrites the window title to `- <module>` (pre-existing
   breadcrumb behaviour, out of scope for this task).
---

## 7. Implementation result (2026-10-05)

**Status**: `verified` — done by @python

Changed: `HMS_py/ui/shell.py` (+66 / -8), `HMS_py/tests/test_main_setup_topmenubar.py` (new, 4 tests).
Also modified: `HMS_py/tests/unit/test_menuhelp_sidebar_live.py` — its old assertion
(`menubar == mh.menubar_for(module)` after every click) *was* the bug being removed;
now asserts the 9 top items survive module switches.

What landed:
- `_TOP_MENU_ORDER` + `_MAIN_SETUP_MODULE` / `_MAIN_SETUP_TITLE` constants (shell.py L116-126)
- `_build_top_menubar()` (shell.py L3676) — built once in `__init__`, ordered from DB groups
- `mb.clear()` + full rebuild removed from `_on_module()` (shell.py L3741)
- Window title → `{name} {{ {year} }} - main setup` (shell.py L3347)
- `_open_main_setup` no longer opens the modal — points the user at the top bar
- Labels+order fixed; **leaves always come from the DB** (`mh.menubar_for`), so there is
  no second hardcoded copy of the tree to drift.

### Verification (independently re-run by Leader)
| Command | Result |
|---|---|
| `python -c "import HMS_py.ui.shell"` | `IMPORT OK` |
| `ruff check HMS_py/ui/shell.py` | `Found 48 errors` |
| `ruff check <HEAD version of shell.py>` | `Found 48 errors` → **0 added** |
| `pytest HMS_py/tests -k "shell or menu" -q` | `55 passed, 1086 deselected` (baseline 51) |
| `pytest test_main_setup_topmenubar.py + test_menuhelp_sidebar_live.py` | `6 passed` |
| Live render (SA) | title `Moon and Mars Resorts { 2026-27 } - main setup`; menubar geom `0 0 1366 19` = topmost row; persistent after sidebar click = `True`; leaf clicks opened `PartyMasterWindow`, `BaseMasterForm` |

### Spec corrections made after implementation
- §2 Finance leaf list was wrong — it described the **top-level** Finance menu
  (`:316`) instead of Main Setup's Finance block (`:878`). Fixed in §2.
- `EPABX` (`:853`) is a **leaf under HR/Payroll**, not a 10th module. 9 stays.

### Still open (not fixed — needs a call)
1. **`MainSetupWorkbench` (shell.py L988) is now dead code** — ~180 lines of
   hand-written `groups = [...]` duplicating the DB tree. Still imported by
   `demo_entry.py`, which is the only reason it survived.
2. **Sidebar click rewrites the title** to `- <module>`, clobbering `- main setup`.
   Pre-existing, out of scope for this task.
3. **No `Preview` button** exists in `shell.py`. `Dark Mode` does. The screenshot's
   `Preview` may belong to a different window (`CD Preview` was OCR'd separately).
