# VB6 Shell Frame — Implementation Summary (Phase 2, DS-001 → shell.py)

**Date**: 2026-10-05
**Spec**: `MODULE_FIX_PLANS/vb6-shell-design.md`
**Status**: `verified` (geometry + placement measured live; colour fallback documented below)

---

## 1. §12 probe — output

The spec's probe script uses `Graphics.CopyFromScreen`, which returns **pure black**
in this tool session (non-interactive desktop). Two replacements were used:

| Step | Method | Result |
|---|---|---|
| 1 | `MainWindowHandle` from `Get-Process HMS` | **Wrong window** — `591446`, class `ThunderRT6Main`, client `0x0`. Spec probe would have sampled a 0×0 bitmap. |
| 2 | `EnumWindows` for `ThunderRT6MDIForm` in the same PID | **HWND `526102`**, window `1296x688`, client `1280x649`, title `Moon and Mars Resorts { 2026-27 }`. |
| 3 | `CopyFromScreen` on that HWND | black (`#0a0a0a`) — session has no visible desktop. |
| 4 | `WM_PRINT` / `PrintWindow(h, hdc, 2)` on the MDI form | partially rendered; client was covered by a maximized child, and the render is **intermittently** black across repeated calls. |
| 5 | **`EnumChildWindows` inventory** | **complete and deterministic.** This is the authoritative result below. |

### 5a. Full child-window inventory (authoritative)

Client height is exactly `80 + 542 + 27 = 649` and client width is exactly
`107 + 1053 + 120 = 1280`. Confirms §1 frame tree and §0.1 DPI conversion.

```
ThunderRT6MDIForm   client 1280x649

  ThunderRT6PictureBoxDC   1280x80     <- PictSubMenu (top band)
    Button 136x40 'General Setup'      \
    Button 136x40 'Front Office'        |
    Button 136x40 'Point of Sale'       |  9 sub-bar buttons
    Button 136x40 'Banquet'             |  = _TOP_MENU_ORDER exactly
    Button 136x40 'Inventory'           |
    Button 136x40 'Finance'             |
    Button 136x40 'Utility'             |
    Button 136x40 'HR/Payroll'          |
    Button 136x40 'Members Mgmt'       /

  ThunderRT6PictureBoxDC   107x542      <- PictMainMenu (left rail)
    Button 107x25 'In Box'             \
    Button 107x31 'Property Status'     |  rail footer
    Button 107x43 'Finance'             \
    Button 107x44 'Main Setup'          |
    Button 107x43 'Reservation'         |
    Button 107x43 'Front Office'        |
    Button 107x44 'House Keeping'       |  exactly 11 rail modules,
    Button 107x43 'Inventory'           |  contiguous, 0 px gaps
    Button 107x43 'Point Of Sale'       |
    Button 107x44 'Banquet'             |
    Button 107x43 'Night Audit'         |
    Button 107x43 'HR/Payroll'          |
    Button 107x44 'EXTRAs'             /

  MDIClient               1053x542      <- client area (no visible child form)

  ThunderRT6PictureBoxDC   120x542      <- PictTitleBar (right sidebar)
    Button 125x45 '1:39:08 AM'   (India)     \
    Button 125x45 '12:39:08 AM'  (Canada)    |
    Button 125x45 '4:39:08 PM'   (Italy)     |  6 clocks,
    Button 125x45 '5:39:08 PM'   (London)    |  captions assigned at runtime
    Button 125x45 '11:39:08 AM'  (Japan)     |
    Button 125x45 '9:09:08 PM'   (Australia) /
    Button 120x45 '05/Oct/2026'          <- date
    Button  60x32  ''  (Reload, no caption at runtime)
    Button  60x32  'Exit'

  StatusBar20WndClass     1280x27       <- sbar
```

### 5b. §12 colour samples — fallback recorded

Per-child `PrintWindow(h, hdc, 0)` and `WM_PRINT` (`lParam = 0x1C`) **both return
pure black** for every `Button` child. `BtnEnh` is a VB6 ActiveX that does not
honour either message, so the rendered face colour cannot be sampled this way.

Per §12's own rule (`If sidebar/status ≠ #c0c0c0 … the spec hardcodes #c0c0c0
deliberately so parity is theme-independent. **Do not switch to GetSysColor()**`),
the implementation keeps the §2 hardcoded hexes unchanged and does **not** touch
`HMS_py/ui/theme.py:66-71`. No `#c0c0c0` substitution was made, no theme probe was
outrun, and no hex was invented. The rail-face hexes remain source C
(`theme.py` pixel samples) exactly as the spec already trusts them.

---

## 2. Open questions — both answered by the probe

### Q1 (§5.6) — do `In Box` / `Property Status` paint in the rail or the status band?

**Rail.** Both are direct children of the `107x542` `ThunderRT6PictureBoxDC`
(`PictMainMenu`), i.e. inside the rail column, alongside the 11 module buttons.
The parity doc's y-coords (995/1029, overlapping the 968–1009 status bar) are a
**measurement artifact**, not real placement.

The spec's §5.6 **default decision stands** — render both as rail-footer buttons,
pushed to the bottom behind a divider.

**Probe correction applied:** §5.6 prescribed "same 107×43 geometry", but the
live controls measure **`107x25` (`In Box`) and `107x31` (`Property Status`)**.
The probe wins — they are rendered at their measured heights, recorded as
`_RAIL_FOOTER_H`.

### Q2 — `BtnEnh` chrome colours

Not samplable (see §5b). Kept at §2 spec values; `theme.py` unchanged.

---

## 3. Corrections the probe forced (beyond the spec text)

| Spec said | Probe says | Action |
|---|---|---|
| rail footer `107×43` | `107×25`, `107×31` | used measured heights |
| bottom row `58×32` (§7.1) | `60×32` (§7.2 source agrees) | used `60×32` |
| clock buttons `120×45` | VB6 renders `125×45` (overflows the 120 column) | kept `120×45` — §7.1's *deliberate deviation*, re-confirmed as a VB6 layout bug |
| sub-bar items flexible, `min-width 96` | VB6 renders fixed `136×40` | kept flexible (§4.2) so 9 items compress instead of clipping; matches at 1280 |
| min height `666` from `13 × 43` | footer is 56 px not 86 px → real need is 643 | kept `666` (§16 item 6 mandates it; still ≥ actual need) |

---

## 4. S-1 … S-7

| ID | Result |
|---|---|
| S-1 | rail = whitelist projection onto the 11 canonical captions; `mod_row` / `sub_row` / `_on_group` deleted. `EPABX`, `Messaging`, `Members Mgmt` and the duplicate `front office` are structurally unreachable. |
| S-2 | top band is a fixed 80 px `QFrame`; `resize(1280, 688)`, maximized on show. |
| S-3 | right sidebar: date, 6 clocks, `Reload`/`Exit` bottom row. |
| S-4 | status bar: 6 VB6 `QLabel` panels (user, Property Site, S/w Dt, CAPS, NUM, DB) + 3 checkable toggles + permanent `DB:` widget. |
| S-5 | captions come from `_RAIL_ORDER`, matched case-insensitively against the DB. |
| S-6 | `Hide Left Menu` / `Hide Right Menu` / `Full Screen` all wired, `StrongFocus`, tooltips + accessible descriptions. |
| S-7 | `_build_top_menubar()` / `_TOP_MENU_ORDER` untouched; only restyled + repositioned. |

## 5. Deliberate deviations

1. **`lblCrumb` + `theme_btn` kept inside the band.** §4.2 describes the band as
   menubar + `lbl_company`. `_on_module` / `open_leaf` write to `lblCrumb` and
   `test_theme_toggle_flips_mode` asserts `_toggle_theme()` flips the theme, so
   both were kept and placed in the band rather than deleted.
2. **Clocks show local time for all six zones.** `# ponytail:` one `QTimer`,
   no `zoneinfo` — the tz list is an open data question (§15).
3. **`Reload` rebuilds the rail only**; it does not re-query the whole shell.
4. **`menuBar()` is overridden on `MainWindow`.** `QMainWindow.menuBar()` installs
   its bar in the window's own menu area and *hides* it there, so the 80 px band
   could never contain it (verified: `visible: False`, parent = `MainWindow`).
   The band owns a plain `QMenuBar` and `menuBar()` hands that one back, which
   keeps `win.menuBar().actions()` working for the 8 existing tests.
5. **`toggle_fullscreen` maximises, not borderless-full-screens.** VB6
   `MDIForm1.frm` sets `Me.WindowState = 3` (`vbMaximized`) for this caption.

---

## 6. What changed

| File | Change |
|---|---|
| `HMS_py/ui/shell.py` | New `_RAIL_ORDER` / `_RAIL_FOOTER` / `_SIDEBAR_CLOCKS` constants + `VB_SHELL_QSS`; `_chrome_button` / `_status_panel` / `_status_label` / `_key_latched` helpers; `MainWindow` frame rebuilt; `_build_rail`, `_build_rail_footer`, `_reload_rail`, `_tick`, `toggle_left`, `toggle_right`, `toggle_fullscreen`, `showEvent` added; `_on_group` / `_clear_lay` / `lblTitle` / `side_hdr` / `mod_row` / `sub_row` / `_mod_lay` / `_sub_lay` / `_mod_buttons` deleted. |
| `HMS_py/tests/test_vb6_shell_frame.py` | **New**, 23 DB-free tests: rail projection, legacy-root rejection, duplicate-caption collapse, `107×43` geometry, footer captions + measured heights, fixed band/rail/sidebar/status, menubar-in-band, sidebar contents, status panels + toggles, all three toggles round-trip, reload preserves selection. |
| `HMS_py/tests/unit/test_menuhelp_sidebar_live.py` | Iterates `win._side_buttons` instead of the raw DB module list — the rail is a whitelist projection, so clicking `EPABX` was asserting a button that must not exist. |

## 7. Verification

| Command | Result |
|---|---|
| `python -c "import HMS_py.ui.shell"` | ok |
| `pytest HMS_py/tests/test_vb6_shell_frame.py -q` | **23 passed** |
| `pytest HMS_py/tests -k "shell or menu" -q` | **79 passed** (was 55; +23 new, +1 previously-errored) |
| `pytest HMS_py/tests -q` (full) | **2 failed, 1168 passed, 1 skipped** |
| `ruff check HMS_py/ui/shell.py` | **47** (HEAD was 48 — net **−1**) |
| `ruff check HMS_py/tests/test_vb6_shell_frame.py` | 0 |

### 7.1 The 2 full-suite failures are pre-existing

```
HMS_py/tests/database/test_account_posting.py::test_account_posting_daily_range
HMS_py/tests/database/test_account_posting.py::test_account_posting_summary_mode
  -> HMS_py/core/nightaudit.py:543 PostingBlockedError:
     "There is some unsettled guest bill ... Re-Check Room No : 303, 304"
```

Live-DB data condition in `nightaudit.py` / `folio.py` (uncommitted work in this
tree from a different task). `shell.py` is not on that path and neither file is
touched by this change.

### 7.2 Rendered frame at `1280x688` (offscreen, numeric probe)

```
window   1280 x 688
band       0   0  1280   80      <- fixed 80
rail       0  80   107  581      <- fixed 107
client   107  80  1053  581      <- VB6 measured 1053
sidebar 1160  80   120  581      <- fixed 120
status     0 661  1280   27      <- fixed 27
menubar    0  20   837   40      <- inside band, vertically centred
107 + 1053 + 120 = 1280          <- exact match to the VB6 probe
80  + 581  + 27  = 688           <- window height (VB6 client 649 = 80+542+27)
```

Rail renders the 11 captions in VB6 order; footer renders `In Box` (25 px) and
`Property Status` (31 px); clocks render `India\n10:13:25 PM`.

## 8. Still open

- **Timezones** (§15): all six clocks show local time. Ship a tz list when the
  property's zone mapping is confirmed.
- **Rail footer actions**: `In Box` / `Property Status` are inert — no ported
  form exists behind those captions.
- **`Reload`** re-reads the module list only, not the open menubar.
- **`BtnEnh` chrome colours** unverified by pixel (§2 above); spec hexes kept.