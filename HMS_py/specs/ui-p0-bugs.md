# UI P0 Bug Backlog — Extracted from MAIN_SETUP_FRONTEND_BUGS.md

**Source**: `MAIN_SETUP_FRONTEND_BUGS.md` (dated 2026-10-01), all rows marked `P0`.
**Scope decision (user, 2026-10-04)**: fix P0 ONLY. P1/P2 out of scope this round.
**Register staleness warning**: docs may claim "Missing" for things already built.
Every row MUST be re-audited against live code before any fix work starts.

## Register line references (source file line numbers)

| ID | Screen | Row (line) | Summary |
|----|--------|-----------|---------|
| P0-01 | Company Master | 25 | Entire form: 42 fields, 4 frames, 5 grids, 2 picture boxes |
| P0-02 | Company Master | 26 | Txt(0) Code: MaxLength=8, uppercase, required, TabIndex=0 |
| P0-03 | Company Master | 27 | Txt(1) Company Name: MaxLength=75, TabIndex=1 |
| P0-04 | Company Master | 31 | Txt(7) City lookup via DGCity grid |
| P0-05 | FA Environment | 57 | Entire form editable (7 frames, 41 TextBoxes, OptionButtons, Save/Cancel/Integrity) |
| P0-06 | FA Environment | 58 | Frame1 Ageing: Age1-6 / Amt1-6 editable |
| P0-07 | FA Environment | 59 | Frame2 Tagada: TagadaHeader1-5 / Footer1-5 editable |
| P0-08 | FA Environment | 60 | Frame3 Reports: SeparatePage, PrintTo/By YN |
| P0-09 | FA Environment | 61 | Frame4 Display: 8 fields |
| P0-10 | FA Environment | 62 | Frame5 Voucher: MustShow/MustNotShow YN |
| P0-11 | FA Environment | 63 | Frame6 Voucher Entry: 10 fields |
| P0-12 | FA Environment | 64 | Frame7 Stock: Op/Cl Qty + Value |
| P0-13 | FA Environment | 65 | OptRoundOff option button group |
| P0-14 | FA Environment | 66 | Save / Cancel / Integrity buttons |
| P0-15 | User Information | 76 | Login+Company Grid+Keyboard layout (verify flow) |
| P0-16 | User Information | 78 | Password field: PasswordChar=*, MaxLength=8, verify encryption |
| P0-17 | User Information | 84 | Right-click context menu on company grid (Add/Edit/Delete/Save/Cancel/Exit) |
| P0-18 | Parameter | 96 | TopCtrl toolbar: 16 icon buttons + Browse 1/N counter |
| P0-19 | Parameter | 97 | Tab strip: 26 sub-tabs, all functional (only "Printing Parameters" works) |
| P0-20 | Parameter | 111 | Round Off Setting sub-tab: FomBillCopies, NCKOTPercentage, RoundOff grid |
| P0-21 | Parameter | 118 | RoundOffSetting FGrid inline edit + OptRoundOff buttons |
| P0-22 | User Master | 134 | Password: EchoMode=Password, blank=keep-current in Edit, verify encryption |
| P0-23 | User Master | 139 | Change Password modal (New/Confirm), verify encryption |
| P0-24 | General Setup | 149 | Toolbar: icon buttons New/Edit/Delete/Save/Browse/Find/Post/Refresh/Exit + Browse 1/N |
| P0-25 | Keyboard (global) | 162 | Enter = Tab to next control (app-wide) |
| P0-26 | Keyboard (global) | 164 | F2 = Edit selected record |
| P0-27 | Keyboard (global) | 165 | F3 = Delete selected record |

## Known code anchors (verified 2026-10-04 by leader)

- `ui/comp_mast_form_ui.py` — `CompMastForm(QDialog)` EXISTS (6 tabs: company/address/tax/finance/opening, `_pick_city`, `_pick_group`, `_save`, `_delete`). Register row P0-01..04 likely STALE — must verify field coverage instead of rebuilding.
- `ui/fa_enviro_ui.py` (18.2 KB) — EXISTS; register claims read-only. Verify current editability.
- `ui/general_setup_tabs_ui.py` (135.9 KB) — `ParameterTab` + toolbar row; has F4/F6-F9 shortcuts at :3057-3068 but no F2/F3.
- `ui/base_master.py` — base master class with `Ctrl+N/E/D/S`, `F5`, `Esc`, and **F2/F4 bound to `_pick` inside a picker dialog (lines 106-107)** → F2=Edit global mapping MUST NOT break picker dialogs.
- `ui/general_setup_ui.py` — company list grid (candidate for P0-17 context menu).
- `ui/usermaster_ui.py` — has `_on_change_pwd`; verify blank-password-keeps-current.
- `ui/login_ui.py` — verify password encryption (P0-16).
- No app-wide Enter→Tab event filter found anywhere → P0-25 confirmed OPEN.

## Global constraints for all fixes

1. PyQt6 — full enum names only (`Qt.Key.Key_Return`, not `Qt.Key_Return`).
2. Full test suite must stay green:
   `QT_QPA_PLATFORM=offscreen python -m pytest -q -p no:cacheprovider`
   (baseline 2026-10-04: **1117 passed, 1 skipped, 0 failed**).
3. Ruff clean on touched files.
4. No new dependencies.
5. VB6 parity is the design authority — VB6 sources under `HMS_py` ancestors /
   `implemented/HMS_REVERSE_ENGINEERING`, binary `HMS.exe` available for evidence.
6. NEVER edit `main.py`, `start_hms.py` entry wiring without checking shell registry (`ui/shell.py`).

## Deliverable files (shared-artifact contract)

| File | Written by | Read by |
|------|-----------|---------|
| `specs/ui-p0-bugs.md` (this) | @leader | all agents |
| `specs/ui-p0-audit.md` | audit agent | @leader, fix agents |
| `specs/ui-p0-research.md` | research agent | fix agents |
| `specs/ui-p0-implementation-summary.md` | fix agents | @leader, reviewer |
