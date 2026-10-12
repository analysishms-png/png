# Screenshot Evidence Manifest

Offscreen (`QT_QPA_PLATFORM=offscreen`) visual sign-off for the recently fixed UI bugs.
Captured 2026-10-08 ~21:14 by harness `qa_evidence\shot_evidence.py` (copied from temp; rerun: `python qa_evidence\shot_evidence.py` with workdir = repo root). App code untouched — READ-ONLY held.

## Screenshots

| File | Size | Target form (constructor) | Fixed bug (source:line) | Notes |
|---|---|---|---|---|
| `01_plan_master.png` | 45,278 B | `PlanMasterForm()` — `ui/p2_masters.py:1083` | BUG-PM-01 layout squeeze — `ui/p2_masters.py:933` | plan_table min-height 120 + token_table min-height 100 visible; list shows fake plan rows (Browse 1/3) |
| `02_sidebar_crumbs.png` | 44,109 B | `MainWindow("SA", {...})` — `ui/shell.py` | BUG-A3 display-only `_label_for` title-case — `ui/shell.py:4366` + `ui/sidebar_buttons.py:115` | Breadcrumb reads **"Main Setup"** (title-cased, not lowercase) while sidebar buttons keep native casing; window title `Moon and Mars { 2026-27 } - Main Setup` |
| `03_open_item_consumption.png` | 49,502 B | `OpenItemConsumptionWindow(parent, user="SA")` — `ui/open_item_consumption_ui.py:93` | BUG-LIC-05 left grid squeeze — `ui/open_item_consumption_ui.py:141` | Recipe grid columns all visible (FinItem→App Date) with 3 fake rows |
| `04_enviro.png` | 71,310 B | `EnviroScreen(parent)` — `ui/enviro_ui.py:59` | BUG-ENV-04 table stretch + dark-on-dark text — `ui/enviro_ui.py:111` | Light row backgrounds, readable text, scrollable Setting/Value/Type columns |

All 4 files > 10 KB and visually verified: text renders (no tofu), layouts intact.

## Capture method

- Single script run: `python shot_evidence.py` (workdir = repo root).
- Captures 01/03/04 in the parent process; spawns `python shot_evidence.py --mainwindow` child subprocess for 02 (isolates a MainWindow 0xC0000409 crash risk; `show()` mode worked this run — no `noshow` fallback needed).
- Each capture: `resize(1400,900)` → `show()` → `processEvents` pump 200ms × up to 8 → `grab().save()` until >10 KB.

### Harness-only monkeypatches (repo files untouched — DB is offline)

- `QMessageBox.critical/warning/information` → no-op returns `QMessageBox.Ok` (forms pop modals on DB failure → would block offscreen forever).
- `packagemaster.list_all` → 3 fake plan rows (CP1/DL1/…) for capture 01.
- `oic.list_finish_items` / `list_raw_items` / `list_recipes` → fake recipes (Chicken Biryani etc.) for capture 03.
- `enviro.get` → `dict.fromkeys(enviro.EDITABLE, "1")` for capture 04.
- Child (02) only: `db.connect` → raises `OSError` (status bar shows `DB: OFFLINE (screenshot harness)`), plus `mh.sidebar_sources` (9 entries), `mh.can_open`, `mh.menubar_for`, `core_menu.menubar_for/sidebar_modules/roots` stubs.

### Font fix (root cause of earlier tofu captures)

`ui/shell.py:24-25` sets `QT_QPA_FONTDIR` to `<repo>\fonts` (arial/segoeui) **only at shell import — after QApplication/font-DB init**, so fresh processes cached an empty font DB (0 families → □ glyphs). Fix applied in the harness only: `os.environ.setdefault("QT_QPA_FONTDIR", <repo>\fonts)` before `QApplication(...)`. Result: font DB reports `['Arial', 'Segoe UI']`, all captures render text.

## Verification status

**verified** — all 4 PNGs >10 KB, visually inspected, text + fixed layouts confirmed; capture ran green end-to-end (`OK` for every grab, no SMALL/failures).

Known non-blocking quirks (noted, not debugged, per instructions):
- OIC capture shows `Applicable Date` prefilled `08-10-2026` (today) and outlet `-` — expected with stubbed data.
- Enviro capture title bar is empty (window title not set by `EnviroScreen` when shown standalone).
- `QA_DarkAudit.py` and other QA scripts live outside `ui/` scope; untouched.
