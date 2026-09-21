# Glass UI Update — v2 (2026-09-21)

User request: web research karo, UI bugs fix karo, **glassmorphism** style,
**user-defined colors**, modern software jaisa look.

## Kya bana (research → design → implement)

Research basis: uxpilot.ai glassmorphism guide + dark/light mode best practices.
Key rules jo implement kiye:
- Frosted glass = **semi-transparent tint + subtle border + depth** (QSS blur nahi karta,
  isliye tint+layer approach)
- Glass ke peeche **depth** chahiye → aurora blobs backdrop
- Dark mode me **lighter text + colored rims**, light mode me **pale tint + dark text**
- Readability > effect: har surface pe text contrast token-driven

## Naye features

1. **Theme engine v2** (`HMS_py/ui/theme.py`)
   - Token-based dynamic QSS builder — colors sirf ek jagah define hote hain
   - 6 presets: Ocean Frost (default), Midnight Glass, Emerald Breeze,
     Sunset Amber, Rose Quartz, Graphite Pro
   - **User-defined colors**: accent, background, surface, text, dim text,
     header gradient, 4 aurora blob colors, glass opacity (10–92%),
     corner radius (2–18px)
   - **QSettings persistence** (`HMS_py/appearance`) — app restart pe bhi yaad rehta hai
   - Dark/light derived tokens auto-generate hote hain (borders, tints, shadows)

2. **Glass widgets** (`HMS_py/ui/glass.py`)
   - `AuroraCanvas`: 5 soft radial-gradient blobs wala cached backdrop
     (sirf resize pe repaint — performance safe)
   - `AppearanceDialog`: **🎨 Appearance** button se khulta hai
     - Preset picker + apply
     - 10 color swatches (native QColorDialog)
     - Glass opacity + radius sliders
     - **Live preview** — change karte hi poora app naya roop le leta hai
     - Cancel = saved state restore, Save = QSettings persist, Reset = default

3. **MainWindow** — aurora backdrop, glass sidebar (active accent), Appearance button,
   theme toggle jo saved tokens respect karta hai

## Bugs fix kiye

| # | Bug | Fix |
|---|-----|-----|
| 1 | `QColor("#111111")` hardcoded table text 31 files me — dark mode pe **text invisible** | Theme-aware `palette()["text"]` (bulk script se) |
| 2 | `folio_ui.py` `DARK = QColor("#111111")` + stale `STYLE` import | Theme import + `apply_theme` |
| 3 | `base_window.py` `QColor("#e0e0e0")` + hardcoded GroupBox purple | Token-based |
| 4 | shell.py me 65 hardcoded colors (login/company/db dialogs purple gradients) | Sab token-driven |
| 5 | `run_flow()` `apply_theme(app, "dark")` force — user light preset save kare to bhi dark khulta | Saved tokens load |
| 6 | Status bar clock static (`datetime.now()` once) | QTimer 1s live tick |
| 7 | Screenshot mode `findChildren(QPushButton)[1]` — naye buttons add hone pe index shift/crash | `self._side_buttons[0]` |
| 8 | QSS rule order: `QWidget{transparent}` QDialog bg override karke **black window** (offscreen) | Universal rule pehle, window bg baad me |
| 9 | Theme toggle button label hardcoded "Dark Mode" + checked=True | current_theme() driven |

## Files touched

- `HMS_py/ui/theme.py` — poora rewrite (glass engine)
- `HMS_py/ui/glass.py` — **naya** (AuroraCanvas + AppearanceDialog)
- `HMS_py/ui/shell.py` — glass migration + bug fixes
- `HMS_py/ui/folio_ui.py`, `base_window.py` — theme-aware
- 31 UI files — table text colors theme-aware (bulk)
- `tools/_theme_fix_tables.py`, `tools/_theme_fix_imports.py` — one-shot scripts (idempotent)

## Verification

- ✅ `py_compile` all UI files
- ✅ 137 unit tests pass
- ✅ `test_ui_modules.py` (saare UI forms dark theme pe instantiate) pass
- ✅ Offscreen screenshots: light + dark login/company/main/module
- ✅ Presets roundtrip + QSettings save/load/reset

## Update 4 — KOT/table-map sync + status reset + CI tests

1. **KOT state label**: Add/Edit = accent tint, Idle = neutral status tint
   (pehle static glass bar thi)
2. **POS Table map**: Status column cells tinted — Active=success,
   Inactive=neutral, Blocked=danger (title-case UI keys)
3. **REAL BUG FIX** (`HMS_py/core/pos_table.py`): UI `list_all/get/insert/
   update/delete` call karta tha jo module-level exist nahi karte —
   Table screen pe pehla click hi AttributeError deta. Ab module-level
   CRUD wrappers hain (RoomMast Type='TB' via roommaster), Title-case
   UI keys ke saath
4. **Appearance dialog**: status hues ke liye "Reset hues" button —
   explicit tokens prune hote hain taki mode-switch par fresh default
   derive ho (seeded swatches + preset-preserve bhi prune-aware)
5. **CI tests**: teeno walkthrough scripts ek pytest file me —
   `tests/test_ui_walkthroughs.py` (20 tests, offscreen, DB-free,
   fake menu/room/table data). Root `pytest.ini` me `tests/` path +
   markers registered. Full suite: **157 passed**

## Status colors — user-editable (update 3)

Appearance dialog me ab **4 status hue swatches** bhi hain
(success/warning/danger/neutral). User hue choose karta hai —
bg tint, text variant, on-* label colors automatically derive hote
hain (mode ke hisab se). Preset switch karne par user ke status hues
preserve rehte hain. Derivation:

- light mode: `bg = mix(base, white, 0.86)`, `text = mix(base, black, 0.70)`
- dark mode: `bg = mix(base, #101020, 0.78)`, `text = mix(base, white, 0.62)`
- `on_*`: accent luminance se contrast-safe (WCAG)

## Status colors — accent theme sync (update 2)

Room Status, Expense, KOT ke semantic colors ab hardcoded nahi —
`theme.status_colors()` se mode-adaptive palette aati hai:

- **Keys**: `success/warning/danger/neutral` + `*_bg` (soft cell tint,
  QColor-safe hex) + `*_text` (readable text) + `on_*` (button label,
  contrast-safe)
- Light presets: pale tint + dark text (`#dcf0ea`/`#065f46` Vacant)
- Dark presets: glassy dark tint + light text (`#213b32`/`#a7f3d0`)
- Migrated: `roomstatus_ui.py` (room rack cells + HK buttons + summary
  labels), `expense_ui.py` (Dr/Cr buttons + balance bar + charge rows),
  `kot_entry.py` (state bar)
- WCAG: on_* colors contrast-checked (dark text on light accents)

## User kaise colors badalta hai

App kholo → top-right **🎨 Appearance** → preset chuno ya apne colors pick karo →
Save. Dark/Light toggle bhi wahin hai.
