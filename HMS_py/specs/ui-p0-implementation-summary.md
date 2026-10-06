# UI P0 — Implementation Summary (shell.py MainWindow overhaul)

Companion to `specs/ui-p0-bugs.md` (register), `specs/ui-p0-audit.md`
(Phase 1 audit), `specs/ui-p0-research.md` (Phase 2 recipes).
This file is the **fix-agent deliverable** for the DS-001 shell round.

**Scope of this round:** `HMS_py/ui/shell.py` `MainWindow` — the VB6
MDIForm1 shell frame (DS-001) plus the persistent "&Main Setup" top
menubar (UI-MS-TOPMENU). No other form was touched; the P0 PARTIAL
categories A–F in `specs/ui-p0-audit.md` remain the next wave (see
"Out of scope" below).

---

## 1. Layout truth (live EnumChildWindows probe)

VB6 MDIForm1 is a fixed 4-column frame, NOT a responsive grid:

| Band | VB6 control | Fixed size | Python widget |
|---|---|---|---|
| Top band | PictSubMenu | 80px high | `QFrame#vbTopBand` (`shell.py:3649`) |
| Sub-bar | menubar strip | 40px high | `QMenuBar#vbSubBar` in band (`shell.py:3992`) |
| Left rail | PictMainMenu | 107px wide | `QFrame#vbRail` (`shell.py:4043`) |
| Client | MDI client | stretches | `QLabel` canvas (stretch=1) |
| Right sidebar | PictTitleBar | 120px wide | `QFrame#vbSidebar` (`shell.py:3716`) |
| Status bar | sbar panels | 27px high | `QStatusBar` (`shell.py:3742`) |

Window: `1280x688` initial, minimum `1180x666` (VB6 client 1280x649
+ Windows chrome). Opens maximised (VB6 behaviour), skipped under
offscreen/CI and after an explicit user resize.

## 2. What changed (`HMS_py/ui/shell.py`)

**Shell frame (DS-001)**
- Left rail projects the DB module list onto the **11 VB6 rail
  captions** (`_RAIL_ORDER :222`); legacy roots (EPABX, Messaging,
  Members Mgmt), duplicate captions, and unknown names are
  structurally unreachable (`_build_rail :4043`). Rail buttons are
  fixed `107x43`, checkable, focusable, accessible-named.
- Rail footer: **In Box (25px) / Property Status (31px)** — measured
  probe heights (`_RAIL_FOOTER :237`, `_build_rail_footer :4075`);
  inert until the forms behind them are ported.
- Right sidebar: date button + **6 country clocks** (India, Canada,
  Italy, London, Japan, Australia — `_SIDEBAR_CLOCKS :239`), Reload
  (rebuilds rail, keeps selection — `_reload_rail :4103`), Exit.
- Status bar: user / Property Site / S/w Dt. / CAPS / NUM panels +
  DB server widget, plus **Hide Left Menu / Hide Right Menu / Full
  Screen** toggles (`toggle_left/right/fullscreen :4158-4174`;
  Full Screen = VB6 `WindowState=3` maximise, not borderless).
- One 1s `QTimer` drives date, clocks and CAPS/NUM latch state via
  `ctypes.user32.GetKeyState` (`_tick :4134`, `_key_latched :390`);
  non-Windows hosts keep static text.
- Purple module-row/sub-row bars (`mod_row`, `sub_row`, `_mod_lay`,
  `_sub_lay`, `_mod_buttons`, `_on_group`, `_clear_lay`) **deleted**
  — VB6 MDIForm1 has no such rows. No live code referenced them
  (only the frozen `_audit_shell_v1.py` snapshot keeps the old layout).
- `VB_SHELL_QSS :244` — Win95/VB6 chrome stylesheet (rail teal
  `#54a0a0`, sidebar `#c0c0c0` bevels, band `#0000c0` rule); the
  one F5-on-`#c0c0c0` separator is `#000000` for WCAG 1.4.11.

**Top menubar (UI-MS-TOPMENU)**
- VB6 `MDIForm1.frm:494` "&Main Setup" → persistent 9-sub-menu bar
  (`_TOP_MENU_ORDER :127`): General Setup, Front Office, Point of
  Sale, Members Mgmt, Banquet, Inventory, HR/Payroll, Finance,
  Utility. Leaves still come from `mh.menubar_for` (DB), never a
  hardcoded copy.
- `menuBar()` deliberately shadows `QMainWindow.menuBar()`
  (`shell.py:3983`) so the sub-bar lives inside the fixed 80px band
  instead of the window's own menu area.
- Module click no longer `clear()`s/rebuilds the bar — it only
  rewrites crumb/canvas/title (`_on_module :4194`).
- Window title gains the `- main setup` suffix (screenshot parity).

**Routing guards (VB6-evidence re-wires)**
- P1-A: `"Item List"` → `p2.open_item` (frmItem, `MDIForm1.frm:636`,
  `:9926-9927`); was `pm.open_itemcat` (Item Category) — two
  captions opened one dialog.
- P1-B: Banquet / Outdoor Banquet parents dispatch `Menu Category` /
  `Item Group` / `Menu Item` to the Hall openers (HallM 3/4/5,
  HallEnt(5), OdcEnt(5) — `MDIForm1.frm:5455/5464/5473/2059/2063`);
  POS/Inventory subtrees keep status-quo (`_hall_opener :1455`).
- P2-A: `User Permissions (Advanced)` wrapped in `_rbac_guard("u")`
  (VB6 leaf `Visible=0`, `MDIForm1.frm:1056-1059`).
- P2-B: `MainSetupWorkbench` filters its dialog surface through
  `mh.can_open` (Flag V = hidden), same as menubar/sidebar.

## 3. Test coverage

| File | Tests | Covers |
|---|---|---|
| `tests/test_vb6_shell_frame.py` (new) | 25 | rail whitelist/order/geometry, footer heights, band/rail/sidebar/status fixed geometry, sidebar clocks, status panels/toggles, hide-left/right/fullscreen, reload-keeps-selection, inert footer, removed purple rows |
| `tests/test_main_setup_topmenubar.py` (new) | 4 | 9 modules in order, window title, bar survives module click, leaf-without-opener disabled-not-crashing |
| `tests/unit/test_mainsetup_p1a_p1b_routing.py` (new) | 8 | Item List → frmItem, Menu Category stays POS, Banquet Hall dispatch, status-quo fallbacks, lazy hall import |
| `tests/unit/test_menuhelp_sidebar_live.py` (updated) | — | top bar persistence assertion + formatting |

Targeted run: **36 passed** (12.67s, offscreen, single process).

## 4. Verification

- `ast.parse HMS_py/ui/shell.py` — OK.
- `ruff --select F821,E9,F601,F811,F841` on `HMS_py/ui/shell.py` —
  violation set **identical to HEAD** (6 pre-existing F601 alias-dict
  repeats; zero new). Whole-tree `HMS_py/core HMS_py/ui` count
  unchanged at 110 (all pre-existing).
- Full suite: `QT_QPA_PLATFORM=offscreen python -m pytest -q -p
  no:cacheprovider` — see SESSION_HANDOFF.md §"Test state" for the
  recorded result of this round.

## 5. Regression fix carried in this round (fdpostchg G1)

First full-suite run after the shell round went red: 2 failed
/ 1168 passed — `tests/database/test_account_posting.py::
test_account_posting_daily_range` and `::test_account_posting_
summary_mode` raised `PostingBlockedError` (unsettled guest
bill, rooms 303/304). Cause: the uncommitted fdpostchg parity
work (G1, `.claude/plan/fdpostchg-room-posting-parity.md`)
added the engine-level billed-folio hard stop to
`core/nightaudit.py::post_room_charges_for_date`; the shared
test DB holds stale open folios (ChkOutDate IS NULL, billed
rows) that the guard correctly blocks at any future date.
The two tests exercise the `account_posting` driver (mode /
dates / progress), not the guard, so they now monkeypatch
`na.billed_folios_for_date` to `[]` — the established pattern
of every engine test in `test_fdpostchg_posting.py`. The
guard itself stays covered by
`test_fdpostchg_posting.py::test_billed_folios_guard`
(fails-on-revert, plan §6 T1). Live-DB data untouched (real
hotel data). After fix: account_posting 5/5, database+unit
1039 passed / 1 skipped.

## 6. Out of scope (next wave, per ui-p0-audit.md)

Categories A–F: Company Master Contract Type field (A), FA Enviro
Integrity button (B), General Setup toolbar Print/Post (C), sub-tab
inventory reconciliation vs `HMS.exe` design blob (D), User Master
password `setMaxLength` one-liner (E), F-key dispatch hardening —
remove `base_master.py:107` F2→`_pick`, `_edit`/`_delete` aliases,
`MainWindow._on_edit`/`_on_delete` (F). Password-storage hardening
(F §pbkdf2) is a separate money/security path with its own migration
plan in `specs/ui-p0-research.md`.
