# VB6 Shell Frame — Design Spec (Phase 1, DS-001)

**Status**: DESIGN ONLY — no application code written. Phase 2 = @python.
**Date**: 2026-10-05
**Verification**: `partially_verified` — geometry + all *declared* colors are
exact and double-sourced; rendered `BtnEnh` chrome colors need the §12 probe.

---

## 0. Evidence & provenance (read this before you touch a number)

Three independent sources were reconciled. They agree **exactly**, so the numbers
below are measured, not eyeballed.

| # | Source | Gives us |
|---|---|---|
| A | `FODER/MDIForm1.frm` — design-time control geometry + color literals | exact twips + exact BGR |
| B | `MODULE_FIX_PLANS/vb6-shell-parity.md` §1 — Win32 `EnumChildWindows` rects | exact device px |
| C | `HMS_py/ui/theme.py:56-71` — `"VB6 shell chrome — production screenshots se pixel-sampled"` | exact rendered hex |

### 0.1 THE DPI TRAP — read this first

The parity spec's rects were captured on a **144 DPI (150 % scaled) display**.
Every measured value is **1.5 ×** the DPI-independent logical pixel.

Conversion: **VB6 twips ÷ 15 = logical px** (1 px = 15 twips at 96 DPI).
Cross-check, all exact:

| Control | `.frm` twips | ÷15 = logical | ×1.5 = device | parity spec says | match |
|---|---|---|---|---|---|
| `PictMainMenu` W | 1605 | 107.0 | 160.5 | **161** | ✓ |
| `CmdMainMenu` H | 650 | 43.33 | 65.0 | **65** | ✓ |
| 11 × rail | — | 476.7 | 715 | 155→**870** | ✓ |
| `PictSubMenu` H | 1200 | 80.0 | 120 | 35→**155** | ✓ |
| `PictTitleBar` W | 1800 | 120.0 | 180 | **180** | ✓ |
| clock btn | 1875×675 | 125×45 | 187.5×67.5 | **188×68** | ✓ |
| `LblCalender` | 1800×675 | 120×45 | 180×67.5 | **180×68** | ✓ |

> **⚠️ @python: use the logical-px column. Do NOT paste `161`, `65`, `120`,
> `41` from the parity spec into Qt — they are 144 DPI device pixels and will
> be 50 % too wide on a normal display.** Qt already handles DPI scaling; give
> it logical px and stop thinking about it.

### 0.2 Correction to a premise in the brief

The brief said *"VB6 defaults are olive/`&HC0FFC0` per `frmCompany.frm`"*.
`frmCompany.frm` is a **child dialog**, not the shell. `MDIForm1.frm` contains
**no olive** — every literal in it is white, black, red, navy or pale yellow.
`&HC0FFC0` decodes to `#C0FFC0` but it lives in the company dialog and has **no
bearing on the shell frame**. The shell palette is §2. Do not import olive.

### 0.3 VB6 colour-literal decoding

VB6 `.frm` colours are `&H00BBGGRR`. Decoded values used below:
`&HAFFFFF`→`#FFFFA0` · `&HFFFFFF`→`#FFFFFF` · `&HC00000`→`#0000C0` ·
`&HFF0000`→`#FF0000` · `&HCEE0C2`→`#C2E0CE` (child form, unused)

`&H8000000n` = Win32 **system colour** index *n*; those are theme-dependent and
this design **hardcodes hex instead** so parity does not depend on the user's
OS theme.

---

## 1. Frame tree

```
MainWindow(QMainWindow)
└─ central QWidget ─ QVBoxLayout(root)  spacing=0  margins=0,0,0,0
   ├─ top_band   QFrame  fixedHeight=80        §4   ← VB6 PictSubMenu
   │    └─ QHBoxLayout  margins=0  spacing=8
   │        ├─ menuBar (9 modules, stretch=1)            ← VB6 CmdSubMenu
   │        └─ lbl_company  (fixed, right)               ← VB6 LblCompany
   ├─ body       QHBoxLayout  spacing=0  margins=0,0,0,0
   │    ├─ rail      QFrame  fixedWidth=107      §5   ← VB6 PictMainMenu
   │    ├─ client    stretch=1                         ← VB6 MDIClient
   │    └─ sidebar   QFrame  fixedWidth=120      §7   ← VB6 PictTitleBar
   └─ statusBar()  fixedHeight=27                     §8   ← VB6 sbar
```

---

## 2. Palette — exact hex

**Provenance:** `SRC-A` = `MDIForm1.frm` literal · `SRC-C` = `theme.py`
pixel-sampled · `SRC-W` = Win95/98 "Windows Standard" scheme constant.

| Token | Hex | Provenance | Used for |
|---|---|---|---|
| `client_bg` | `#FFFFA0` | SRC-A `MDIForm1.frm:3` | MDI client behind child forms |
| `band_bg` | `#FFFFFF` | SRC-A `:50` `PictSubMenu.BackColor` | top band |
| `band_accent` | `#0000C0` | SRC-A `:51,:61` `ForeColor`/`FillColor` | company label underline rule |
| `band_text` | `#C00000` | §4.2 | company label text |
| `rail_bg` | `#FFFFFF` | SRC-A `:196` **and** SRC-C `strip_bg` ✓ | rail column |
| `sidebar_bg` | `#FFFFFF` | SRC-A `:95` | right sidebar |
| `rail_face` | `#54a0a0` | SRC-C `strip_face` | rail button |
| `rail_face_hover` | `#6ab2b2` | SRC-C `strip_face_hover` | rail hover |
| `rail_face_active` | `#2e6b6b` | SRC-C `strip_checked` | rail **active** |
| `rail_border` | `#0b3d3d` | SRC-C `strip_border` | rail button border |
| `rail_highlight` | `#cfe0e0` | SRC-C `:58` comment | rail inset top edge |
| `rail_dark` | `#003232` | SRC-C `:58` comment | rail pressed inset |
| `chrome_face` | `#c0c0c0` | SRC-W COLOR_BTNFACE | sidebar / status buttons |
| `chrome_hi` | `#ffffff` | SRC-W COLOR_BTNHILIGHT | 3D top/left edge |
| `chrome_lo` | `#808080` | SRC-W COLOR_3DSHADOW | 3D bottom/right edge |
| `chrome_dk` | `#000000` | SRC-W COLOR_3DDKSHADOW | 3D outer edge |
| `text` | `#000000` | SRC-W COLOR_BTNTEXT | all button text |
| `sb_bg` | `#c0c0c0` | SRC-W COLOR_3DFACE | status bar |
| `sb_sep` | `#000000` | §8.3 | panel separators |
| `focus_ring` | `#000000` | §11.2 | keyboard focus ring |

### 2.1 Text colours are **dark**, deliberately

Source C records `strip_text: #ffffff`. **That fails WCAG AA.** Measured:

| Pair | Ratio | AA (4.5:1 normal) |
|---|---|---|
| `#ffffff` on `#54a0a0` (rail, live VB6) | **3.04 : 1** | ❌ FAIL |
| `#000000` on `#54a0a0` | **6.91 : 1** | ✅ PASS |
| `#000000` on `#6ab2b2` (hover) | **8.62 : 1** | ✅ PASS |
| `#ffffff` on `#2e6b6b` (active) | **6.12 : 1** | ✅ PASS |
| `#000000` on `#2e6b6b` | 3.43 : 1 | ❌ |
| `#000000` on `#c0c0c0` (status) | **11.54 : 1** | ✅ PASS |

Rail buttons are Tahoma 8 pt = **small text**, so 4.5:1 is mandatory.
Decision: **inactive rail buttons get black text; the active button inverts to
white text** (darker face + inverted text is also the correct "selected" read).
The existing "active = yellow text" idea is dropped — yellow only passes on the
dark active face and fails everywhere else.

---

## 3. Window title & sizing

- Title: keep the already-shipped `{name} {{ {year} }} - <module>` format
  (`main-setup-top-menubar.md` §4.3). Do not regress it.
- `resize(1150, 720)` → `resize(1280, 688)` (VB6's true logical size).
- `setMinimumSize(1180, 666)` — derived, see §9.
- `setWindowState(Qt.WindowMaximized)` on show. VB6 `MDIForm1.frm:4`
  `WindowState = 2` (maximized).

---

## 4. Top band — the banner / sub-bar question

### 4.1 Decision: **co-locate, never resize** (not overlay, not push-down)

The `.frm` settles this. `CmdSubMenu` (`:66-73`) and `LblCompany` (`:74-92`)
are **both `Left = 0, Top = 0`** inside the same `PictSubMenu`. They occupy the
same slot, so VB6's "swap" is a **visibility toggle inside one fixed-size
PictureBox**, never a layout event. The band is `Height = 1200` twips = 80 px
**whether a module is selected or not**.

So the faithful + simplest port is:

> One fixed 80 px band. Two children side by side. The band **never changes
> height**, so the client area never moves. Selecting a rail module changes the
> menu bar's *contents* (already shipped) — it does not touch geometry.

**No swap logic is needed at all.** That is the point.

### 4.2 Contents

| Element | Spec | Source |
|---|---|---|
| band | `QFrame` `fixedHeight=80`, bg `#FFFFFF`, 1px bottom border `#c0c0c0` | `:50` |
| menu bar | `self.menuBar()` — **keep the existing `_build_top_menubar()` + `_TOP_MENU_ORDER` exactly as shipped.** Do not rebuild it. | `main-setup-top-menubar.md` §7 |
| menu bar height | `setFixedHeight(40)`, vertically centred in the band. **Items must NOT be fixed 136 px** — use flexible width, `padding: 0 14px`, `min-width 96px`. At VB6's 1280 px the 9 items naturally land on ~130 px ≈ VB6's 136. Below that they compress instead of clipping. | `:70-71` `2040×600` twips |
| `lbl_company` | right-aligned, vertically centred, Tahoma 12 pt **bold**, colour `#C00000`, text `{name} { {year} }`. Author value was Tahoma 18 pt (`:84-88`) — dropped to 12 pt because the band is now shared with the 9-item menu bar. | `:74-92` |
| underline rule | 1 px `#0000C0` line under `lbl_company`, width = label width | `:61` |

### 4.3 Do NOT add a banner image

VB6's `ImgLogo` / `DealerLogo` are `Image` controls inside `PictTitleBar` (the
**right sidebar**, `:172-185`), not the top band. There is no bitmap in the top
band — it is white with red text. Do not invent a logo strip; there is no
source asset to match.

### 4.4 Retire the two purple rows

`mod_row` (`vbModRow`, 15 horizontal modules) and `sub_row` (`vbSubRow`) have
**no VB6 counterpart**. `mod_row` is precisely the S-1 anti-pattern (a second
copy of the module list, contradicting the rail). Delete both:

| Item | Action | Reason |
|---|---|---|
| `mod_row`, `_mod_lay`, `_mod_buttons` | **delete** | duplicates the rail (S-1) |
| `sub_row`, `_sub_lay`, `_sub_buttons` | **delete** | its role (groups of the active module) is already served by the QMenu rebuilt in `_on_module` (`shell.py:3776`) |
| `_clear_lay()` (`:3813`) | keep if `_on_module` still uses it | |
| `VB_BLUE` (`:130`), `STYLE` (`:131`) | keep — used by dialogs | not shell chrome |

> Test guard: `HMS_py/tests` reference only `_side_buttons`, `_on_sidebar_click`,
> `mod_target`, `sidebar_sources` (see `test_ui_walkthroughs.py:338`,
> `test_menuhelp_sidebar_live.py:51,58,81`). **None touch `mod_row`/`sub_row`**,
> so deleting them is safe. Grep again before you commit.

---

## 5. Left rail (S-1, S-5)

### 5.1 Geometry

| Property | Value |
|---|---|
| container | `QFrame` `setFixedWidth(107)`, bg `#FFFFFF`, `objectName="vbRail"` |
| layout | `QVBoxLayout` — `setContentsMargins(0,0,0,0)`, `setSpacing(0)` |
| button | `setFixedHeight(43)`, `setFixedWidth(107)`, `QPushButton` checkable |
| spacing | **0** — VB6 tiles contiguously. Measured: 11 × 65 device = 715 = exact rail span 155→870. No gaps. |
| order | 11 modules, then divider, then 2 footer buttons |

Current code is `setFixedWidth(116)`, margins `(4,8,4,8)`, spacing `6`,
`setMinimumHeight(44)` — **change all four**.

### 5.2 Order & captions (Title Case, S-5)

```python
_RAIL_ORDER = (
    "Finance", "Main Setup", "Reservation", "Front Office", "House Keeping",
    "Inventory", "Point Of Sale", "Banquet", "Night Audit", "HR/Payroll",
    "EXTRAs",
)
_RAIL_FOOTER = ("In Box", "Property Status")   # see §5.6 open question
```

### 5.3 Build rule — whitelist projection, NOT a pass-through

This is the whole S-1 fix. It keeps the list DB-driven while making the stray
modules structurally impossible:

```python
def _build_rail(self, sources) -> list[QPushButton]:
    """Project DB modules onto the VB6 canonical order.

    sources = mh.sidebar_sources(user), already filtered by mh.can_open().
    NOT a pass-through: anything outside _RAIL_ORDER never renders, so the
    duplicate `front office` and the stray EPABX / Messaging / Members Mgmt
    roots from the User_Module legacy merge are dropped structurally.
    """
    by_norm = {}                                   # dedupe: keep first
    for m in sources:
        by_norm.setdefault(_norm_caption(m["name"]), m)
    picked = [by_norm[n] for n in (_norm_caption(c) for c in _RAIL_ORDER)
              if n in by_norm]
```

- Hardcodes **labels + order only**. Leaves and permissions stay in the DB
  (`mh.can_open`, `mh.menubar_for`) — no second copy of the tree.
- `EPABX` never appears: it is not in `_RAIL_ORDER`, and it stays reachable as an
  `HR/Payroll` leaf via `mh.menubar_for("HR/Payroll", user)`.
- `setAccessibleName(caption)`, `setAccessibleDescription("Module <caption>")`,
  `setProperty("mod_target", m["name"])` — **keep** `mod_target` and
  `_side_buttons`; the tests need them.
- Connect `clicked` → existing `_on_module(m, btn)` (`:3776`). Keep
  `_on_sidebar_click(mod_target, btn)` (`:3755`) alive for the same reason.

### 5.4 Button states (QSS-ready, §13)

| State | Face | Text | Notes |
|---|---|---|---|
| normal | `#54a0a0` | `#000000` | + 1px `#0b3d3d`, 1px `#cfe0e0` inset top |
| hover | `#6ab2b2` | `#000000` | |
| **active / checked** | `#2e6b6b` | `#ffffff` | the one selected module |
| pressed | `#2e6b6b` | `#ffffff` | + 1px `#003232` inset |
| disabled | `#8fb0b0` | `#4a5a5a` | module user cannot open |
| focus | — | — | 2px `#000000` inner ring, offset 1px (§11.2) |

Active button also gets a **3 px `#0000C0` left accent bar** (decorative, not
the only indicator — the face colour change carries the state too).

### 5.5 Fonts

VB6 default = `MS Shell Dlg 2` (Win95/98). In Qt use **Tahoma 8 pt**
(`setFont(QFont("Tahoma", 8))` on the rail). Tab characters fall back to a
sans on most Linux/Windows Qt builds; Tahoma is present on the target Windows
box. `setWordWrap(False)`, `setFlat(False)`.

### 5.6 Rail footer + the one open question

Measured `In Box` (0,995)-(161,1033) and `Property Status` (0,1029)-(161,1076)
fall **outside** the rail container (155–870) and **overlap the status bar**
(968–1009). The `.frm` instead puts `LblMgs` (`:218`, 113×25) and `LblStatus`
(`:225`, 107×31) in the rail's footer slot.

**Decision (default):** render both as rail-footer buttons, same 107×43
geometry, after a 6 px gap and a 1 px `#c0c0c0` divider, pushed to the bottom
with `addStretch()` above. That follows the brief and the `.frm`.

**Open question for the §12 probe:** if the probe shows these two painted in the
status-bar band rather than the rail, move them — they are isolated in the
`_RAIL_FOOTER` constant, so it is a one-line change. **Do not block Phase 2 on
this.**

---

## 6. Banner swap (S-2) — covered by §4

S-2 ("missing top banner 1920×120") = §4's fixed 80 px band. **Closed by §4.1.**
No separate banner widget; the band *is* the banner.

---

## 7. Right sidebar (S-3)

### 7.1 Geometry

| Property | Value | Source |
|---|---|---|
| container | `QFrame` `setFixedWidth(120)`, bg `#FFFFFF`, `objectName="vbSidebar"` | `:95` `PictTitleBar` 1800 twips |
| layout | `QVBoxLayout` margins `0,0,0,0`, **spacing 1** | measured 6×68=408 in 417 → ~1 logical px |
| clock buttons | `setFixedSize(120, 45)` (full column width) | `:109-150` 1875×675 |
| date button | `setFixedSize(120, 45)` | `:151` `LblCalender` 1800×675 |
| bottom row | 2 × `setFixedSize(58, 32)`, spacing 4 | `:158-171` 900×480 twips = 60×32 |

> **Deliberate deviation:** VB6's clock buttons are 1875 twips wide inside an
> 1800-twip column — they **overflow by 5 px**. That is a VB6 layout bug, not a
> design intent. Spec full column width (120). Recorded so a future reviewer
> doesn't "fix" it back.

### 7.2 Contents, top → bottom (order from ascending `.frm` `Top`)

| # | Control | Caption | Source `Top` |
|---|---|---|---|
| 1 | `date_btn` | `05/Oct/2026` | 1890 |
| 2 | clock | `India` + time | 2550 |
| 3 | clock | `Canada` + time | 3165 |
| 4 | clock | `Italy` + time | 3780 |
| 5 | clock | `London` + time | 4380 |
| 6 | clock | `Japan` + time | 4980 |
| 7 | clock | `Australia` + time | 5595 |
| 8 | `reload_btn` | `Reload` | 6240 |
| 9 | `exit_btn` | `Exit` | 6240 |

Country names are the VB6 **control names** (`LblTimeIndia`, `LblTimeCanada`,
`LblTimeItaly`, `LblTimeLondon`, `LblTimeJapan`, `LblTimeAustralia`) — captions
are assigned at runtime, so these are the source of truth for the labels.

> The measured y-coords in parity §1.3 (`Exit` at y=779, overlapping the last
> clock) contradict the `.frm` (Exit shares `Top = 6240` with `Reload`). The
> `.frm` wins: **Reload and Exit are a bottom row, not overlapping.** The
> parity doc's 1.3 block is the unreliable one.

### 7.3 Sidebar button styling

Same as status-bar chrome (§8.2): `chrome_face #c0c0c0`, 3D outset
`#ffffff`/`#c0c0c0` with `#808080`/`#000000` shadow, text `#000000` (11.54:1).
Caption centred, Tahoma 8 pt, `setFlat(False)`.

- Clock text format: `India` on line 1, `9:09:08 PM` on line 2 →
  `"<Country>\n<h:mm:ss> AM/PM>"`. VB6 uses 12-hour with leading zeros on the
  hour (`12:39:08 AM`); keep it.
- **`Exit` placement**: bottom row, **right** cell (`Reload` left, `Exit`
  right — matches `Left=0` / `Left=900` at `:158,:165`).
- `exit_btn` is not styled red. VB6 chrome is uniform; a red Exit would be a
  deliberate deviation with no source. Keep it uniform.
- Clocks + date are **display-only**: `setFocusPolicy(Qt.FocusPolicy.NoFocus)`
  (a11y — non-interactive content must stay out of the tab order). `Reload` and
  `Exit` are `StrongFocus`.
- `date_btn` is focusable (VB6 `BtnEnh` = clickable). Click = no-op for now:
  `# ponytail: no calendar widget exists; wire to QDateEdit when one does`

---

## 8. Status bar (S-4, S-6)

### 8.1 Geometry & the 7 VB6 panels

| Property | Value | Source |
|---|---|---|
| height | `sb.setFixedHeight(27)` | `sbar.Height = 400` twips (runtime, `:3093` `loc_1425006`) ÷15 = 26.7 |
| bg | `#c0c0c0` | Win95 COLOR_3DFACE |
| sizing grip | `sb.setSizeGripEnabled(False)` — VB6 has none | |
| layout | `sb.addWidget(label, stretch=1)` per panel, padding `0 10px` | |

Replaces the current `sb.addWidget(QLabel(...))` block at `shell.py:3525-3546`.

| # | Panel | Text | Width | Focusable |
|---|---|---|---|---|
| 1 | user | `SA` | 44 | no |
| 2 | site | `Property Site : MMR. S/w` | **stretch 1** | no |
| 3 | clock | `Dt. : 05/Oct/2026 21:04:35` | 210 | no |
| 4 | caps | `CAPS` | 48 | no |
| 5 | num | `NUM` | 44 | no |
| 6 | toggle | `Hide Left Menu` | 132 | **yes** |
| 7 | toggle | `Hide Right Menu` | 138 | **yes** |
| 8 | toggle | `Full Screen` | 104 | **yes** |

Panels 1–5 are `QLabel`; 6–8 are checkable `QPushButton` with
`setFocusPolicy(StrongFocus)`, `setFlat(True)`, `setCursor(Qt.PointingHandCursor)`.

### 8.2 Where the Python `DB:` panel goes

**Answer: `sb.addPermanentWidget()` — the right end, outside the 8 VB6 panels.**

Current code already does this (`:3542`) and it is correct. Reasons:

1. Qt permanent widgets are **outside** the stretch/stacking used by normal
   status items, so the 8 panels keep exact widths and left-alignment at every
   window size. A 9th normal widget would absorb the panel-2 stretch and shift
   everything.
2. VB6 has no DB panel, so there is no parity cost.
3. `DB: OFFLINE (…)` is a long error string; as a permanent widget it can
   elide without breaking layout.

`DB: DESKTOP-7P5A55R / MOONData2627` — keep the existing format verbatim.
Panels 1–8 get `border-left: 1px solid #000000`; the permanent widget gets
`border-left` too, so all nine read as one bar.

### 8.3 Separators

`border-left: 1px solid #000000` on every panel after the first.
Win95 uses a 1 px `#808080` groove, but `#808080` on `#c0c0c0` is only **2.17:1**
and these separators carry panel **grouping** (WCAG 1.4.11 non-text contrast,
3:1 required). Black is 11.54:1 and is indistinguishable from the groove at
1 px on a 1920 px bar.

### 8.4 The 3 toggles (S-6) — must be *working*

| Panel | Behaviour | State |
|---|---|---|
| `Hide Left Menu` | `rail.setVisible(not checked)` — checkable, `setAutoExclusive(False)` | unchecked |
| `Hide Right Menu` | `sidebar.setVisible(not checked)` | unchecked |
| `Full Screen` | `showFullScreen()` / `showNormal()` — connect `toggled` | unchecked |

Add `setToolTip` on each. `Hide Left Menu` / `Hide Right Menu` also get
`QShortcut`s only if VB6 had them — it did not, so **Tab + Enter/Space is the
whole interaction model** (§11).

### 8.5 The one timer

VB6 has `Timer1 Interval = 1000` (`:242`) driving the clocks. Use **one**
`QTimer(1000)` in Python driving:

- panel 3 (`Dt. : …`) and the 6 sidebar clocks;
- `CAPS` / `NUM` state.

```python
# ponytail: ctypes is stdlib; caps/num are read-only displays, not controls.
# If GetKeyState misbeheads on a locked-down box, fall back to click-to-toggle.
import ctypes
_get_key_state = ctypes.windll.user32.GetKeyState
def _key_on(vk: int) -> bool:  # VK_CAPITAL=0x14, VK_NUMLOCK=0x90
    return bool(_get_key_state(vk) & 1)
```

---

## 9. Responsive / minimum size

VB6 is fixed 1944×1032 device = **1296×688 logical**, always maximized.

```
setMinimumSize(1180, 666)
```

**Derivation of 666:** band 80 + status 27 = 107 chrome. Rail needs
13 buttons × 43 (11 modules + 2 footer) = 559. `107 + 559 = 666`. Exact.

| Below the min | What happens |
|---|---|
| width < 1180 | client area shrinks; rail 107 and sidebar 120 are fixed |
| width < 960 | sub-bar menu items compress to `min-width 96` then elide to `…` |
| height < 666 | Qt refuses to shrink further (minimum enforced) |

**Not clipped, ever:** the 11 rail buttons. They are `setFixedHeight(43)` and the
window will not go below the height that fits them. The rail's `addStretch()`
absorbs all surplus height — there is no `Qt.ScrollArea`, because VB6 has none
and a scrolling rail would be a parity regression.

Keep `resizeEvent` (`:3744`) for the `AuroraCanvas` resize — but see §10.

---

## 10. `AuroraCanvas` — must not show through

`shell.py:3407-3410` puts an animated gradient `AuroraCanvas` behind
everything. VB6 has flat chrome and **no** gradient anywhere in the shell
(`PictSubMenu`, `PictMainMenu`, `PictTitleBar` are all `BackColor = &HFFFFFF`).

Set the band, rail, sidebar and status bar to **opaque** backgrounds in QSS. If
`AuroraCanvas` is not visible through any of them, keep the canvas (it is used
by dialogs and `theme.py`); if it bleeds, drop it from `MainWindow` only.

Do **not** delete `AuroraCanvas` — `theme.py` and the dialogs depend on it.

---

## 11. Accessibility (WCAG 2.2 AA)

### 11.1 Focus order

Explicit, with `QWidget.setTabOrder()`:

```
1. rail button 1   Finance          (first widget to receive focus on show)
2. … 11 rail modules
13. rail footer ×2 In Box, Property Status
15. sub-bar menu bar (9 modules, arrow keys within)
16. client area (child forms / MDI children take focus normally)
17. sidebar: date_btn, Reload, Exit   ← clocks are NoFocus
19. status bar: Hide Left Menu, Hide Right Menu, Full Screen
```

This matches the brief's `rail → sub-bar → client → status bar`, with the
sidebar inserted after the client (it is a sibling of the client, and its
interactive controls come after the client in reading order).

Set initial focus to rail button 1 in `showEvent`.
Qt `QStatusBar` is focus-proxy-based; give each toggle an explicit
`setFocusPolicy(StrongFocus)` and verify the order live, because
`QStatusBar` re-parents its children.

### 11.2 Keyboard activation

`QPushButton` already gives **Tab** to reach, **Space**/**Enter** to activate.
Nothing extra is needed — but two settings are mandatory:

```python
for b in rail_buttons + footer_buttons:
    b.setAutoDefault(False)      # stop Enter firing an unintended default button
    b.setDefault(False)
    b.setFocusPolicy(Qt.FocusPolicy.StrongFocus)
```

Rail buttons are `setCheckable(True)`, so **Space** toggles the module —
matches VB6's checkable `BtnEnh` rail and is desirable here.

`_enter_as_tab` (`:244`) makes Enter = Tab **inside `QLineEdit`s only**
(documented at `:163-167`). It does **not** affect buttons. Do not change it.

### 11.3 Focus indicator — WCAG 2.2 SC 2.4.11 / 1.4.11

Qt's default focus rect is a 1 px dotted line that fails on the teal face.
Replace it:

| Element | Indicator | Ratio vs face |
|---|---|---|
| rail button | 2 px `#000000` inner ring, 1 px outset | 6.91:1 / 3.43:1 ✓ |
| sidebar + status buttons | 1 px `#000000` inner ring | 11.54:1 ✓ |
| sub-bar menu item | 1 px `#000000` underline (2 px on `:active`) | ✓ |

Do **not** rely on colour alone for the active rail button — the face change
(`#54a0a0`→`#2e6b6b`), the text inversion (black→white) **and** the 3 px accent
bar all change together, so the state survives greyscale and CVD.

### 11.4 Contrast summary — §2.1 table is the authority

All text ≥ 4.5:1. All component boundaries and focus indicators ≥ 3:1. The one
rejected pair (`#ffffff` on `#54a0a0`, 3.04:1) is called out so it is not
"restored" later.

### 11.5 Accessible names

| Element | `accessibleName` |
|---|---|
| rail button | `Finance`, … (the VB6 caption, not the DB spelling) |
| sub-bar item | the module name from `_TOP_MENU_ORDER` |
| clock | `<Country> clock, <time>` — **still NoFocus**, name is for the virtual buffer |
| status toggle | `Hide Left Menu`, `Hide Right Menu`, `Full Screen` — **plus `setAccessibleDescription`** saying the current state, e.g. `"Left menu visible"` |
| `date_btn` | `Current date, 05 October 2026` |

---

## 12. Mandatory pre-Phase-2 probe (@python runs this)

The one thing the `.frm` cannot tell us: `BtnEnh` is an **ActiveX control** and
its rendered chrome lives in `sysdm.ocx` / `MDIForm1.ctx`, not in the `.frm`.
`theme.py`'s pixel-sampled hexes are trusted but unconfirmed for this session.
**Run this before writing QSS.** It touches no application code.

```powershell
# VB6 shell colour probe - run with HMS.exe open (maximized), then compare
# every R: value against the expected column. Tolerance +/- 6 per channel.
Add-Type -AssemblyName System.Drawing, System.Windows.Forms
$h = (Get-Process HMS -ErrorAction Stop | Where-Object MainWindowHandle |
      Select-Object -First 1).MainWindowHandle
Add-Type @'
using System; using System.Runtime.InteropServices;
public class W {
  [DllImport("user32.dll")] public static extern bool GetWindowRect(IntPtr h, out R r);
  [DllImport("user32.dll")] public static extern bool GetClientRect(IntPtr h, out R r);
  [DllImport("user32.dll")] public static extern bool ClientToScreen(IntPtr h, ref P p);
  [StructLayout(LayoutKind.Sequential)] public struct R { public int L,T,Rt,B; }
  [StructLayout(LayoutKind.Sequential)] public struct P { public int X,Y; }
}
'@
$r = New-Object W+R; [void][W]::GetClientRect($h, [ref]$r)
$p = New-Object W+P; [void][W]::ClientToScreen($h, [ref]$p)
$bmp = New-Object System.Drawing.Bitmap ($r.Rt), ($r.B)
$g   = [System.Drawing.Graphics]::FromImage($bmp)
$g.CopyFromScreen($p.X, $p.Y, 0, 0, $bmp.Size)
$cx  = $r.Rt / 1280.0        # device px -> VB6 logical px scale
function Probe($lx, $ly, $what, $expect) {
  $x = [int]($lx * $cx); $y = [int]($ly * $cx)
  $c = $bmp.GetPixel($x, $y)
  $got = '#{0:x2}{1:x2}{2:x2}' -f $c.R, $c.G, $c.B
  $ok  = 'MISMATCH'
  if ($expect) {
    $e = $expect.TrimStart('#')
    $d = @(0,1,2 | ForEach-Object {
      [Math]::Abs(([Convert]::ToInt32($got.Substring(1+$_*2,2),16)) -
                  ([Convert]::ToInt32($e.Substring(1+$_*2,2),16))) })
    if (($d | Measure-Object -Maximum).Maximum -le 6) { $ok = 'ok' }
  }
  "{0,-26} {1}  expect {2}  {3}" -f $what, $got, $expect, $ok
}
# name              VB6 logical x,y        expected
Probe  20  70  'top band bg'          '#ffffff'
Probe  640 70  'band centre'          '#ffffff'
Probe  30  110 'rail btn 1 face'      '#54a0a0'
Probe  30  153 'rail btn 2 face'      '#54a0a0'
Probe  30  240 'rail btn 6 face'      '#54a0a0'
Probe  10  110 'rail column bg'       '#ffffff'
Probe 1230 300 'sidebar bg'           '#ffffff'
Probe 1230 330 'clock btn face'       '#c0c0c0'
Probe 1230 600 'exit btn face'        '#c0c0c0'
Probe 640  672 'status bar bg'        '#c0c0c0'
Probe 640  674 'status bar sep'       '#000000'
Probe 640  400 'client bg'            '#ffffa0'
Probe  30  153 'rail btn 2 text px'   ''        # sample the glyph, expect dark
$bmp.Dispose()
```

**Pass condition:** every `expect` column matches, OR the mismatch is explained
by the active window being a child form covering the client (then re-probe with
no child form open).

**If `rail btn face` ≠ `#54a0a0`:** trust the probe, not `theme.py`, and update
§2 **and** `theme.py:66-71` together. If `sidebar`/`status` ≠ `#c0c0c0`, the
machine is on the modern (non-classic) Windows theme — the spec hardcodes
`#c0c0c0` deliberately so parity is theme-independent. **Do not switch to
`GetSysColor()`.**

**Also record from the probe run:** do `In Box` / `Property Status` paint in the
rail column or in the status-bar band? This resolves §5.6. Then **stop** — do
not go pixel-hunting beyond these 13 samples.

**Screenshot reference set.** `C:\Users\LENOVO\AppData\Local\Temp\opencode` holds
**17** PNGs, of which these are the ones that matter for the two open questions —
consult them *before* running the probe, and treat them as authoritative for
placement (not colour, which the probe owns):

| File | Resolves |
|---|---|
| `vb6_status.png`, `vb6_statusbar.png` | §8 panel widths, `BtnEnh` status chrome, §5.6 |
| `vb6_menubar.png` | §4.2 sub-bar item sizing |
| `vb6_10_mdi.png` | §10 — whether `AuroraCanvas` shows through the shell |
| `vb6_leftrail.png`, `vb6_rightbar.png`, `vb6_subbar.png` | §5, §7, §4 geometry confirmation |
| `py_01.png` | current Python state, for before/after |

> **Note for whoever reads this next:** the design agent could not visually
> inspect any screenshot — the runtime returns
> `Cannot read image (this model does not support image input)`. That was
> confirmed by a direct read attempt on 2026-10-05, not assumed. Hence §12's
> probe rather than pixel-peeping. **You, as a human or a vision-capable agent,
> can read these directly and should, before trusting any hex in §2.**

---

## 13. QSS (copy-paste ready)

```python
# Applies to MainWindow only. Object names are new; nothing else keys off them.
VB_SHELL_QSS = """
QFrame#vbRail     { background: #ffffff; }
QFrame#vbSidebar  { background: #ffffff; }
QFrame#vbTopBand  { background: #ffffff; border-bottom: 1px solid #c0c0c0; }

QLabel#vbCompany  { color: #c00000; font-family: Tahoma; font-size: 12pt;
                    font-weight: bold; background: transparent; }

/* ---- left rail ---- */
QPushButton[vbRole="rail"] {
    background: #54a0a0; color: #000000;
    border: 1px solid #0b3d3d;
    font-family: Tahoma; font-size: 8pt;
}
QPushButton[vbRole="rail"]:hover        { background: #6ab2b2; }
QPushButton[vbRole="rail"]:checked,
QPushButton[vbRole="rail"]:pressed      { background: #2e6b6b; color: #ffffff; }
QPushButton[vbRole="rail"]:disabled      { background: #8fb0b0; color: #4a5a5a; }
QPushButton[vbRole="rail"]:focus         { border: 2px solid #000000; }

/* 3px active accent bar, left edge (drawn by a sibling QFrame, not QSS) */

/* ---- right sidebar + status bar chrome ---- */
QPushButton[vbRole="chrome"] {
    background: #c0c0c0; color: #000000;
    border-top: 1px solid #ffffff; border-left: 1px solid #ffffff;
    border-right: 1px solid #808080; border-bottom: 1px solid #000000;
    font-family: Tahoma; font-size: 8pt;
}
QPushButton[vbRole="chrome"]:focus { border: 1px solid #000000; }

/* ---- sub-bar (persistent 9-item menu bar) ---- */
QMenuBar#vbSubBar { background: #ffffff; }
QMenuBar#vbSubBar QMenuBarItem { padding: 0 14px; min-width: 96px;
    background: #c0c0c0; color: #000000; border: 1px solid #808080; }
QMenuBar#vbSubBar QMenuBarItem:selected { background: #2e6b6b; color: #ffffff; }
QMenuBar#vbSubBar QMenuBarItem:pressed  { background: #2e6b6b; color: #ffffff; }

/* ---- status bar ---- */
QStatusBar               { background: #c0c0c0; }
QStatusBar QLabel        { color: #000000; font-family: Tahoma; font-size: 8pt;
                           border-left: 1px solid #000000; padding: 0 10px; }
QStatusBar QPushButton   { color: #000000; font-family: Tahoma; font-size: 8pt;
                           background: #c0c0c0; border: none;
                           border-left: 1px solid #000000; padding: 0 10px; }
QStatusBar QPushButton:checked { background: #2e6b6b; color: #ffffff; }
QStatusBar QPushButton:focus   { border: 1px solid #000000; }
"""

self.setStyleSheet(VB_SHELL_QSS)     # MainWindow scope - dialogs unaffected
```

Set `self.menuBar().setObjectName("vbSubBar")` and `setFixedHeight(40)`.

Active accent bar: add a `QFrame` sibling 3 px wide, `#0000C0`, `setVisible()`
toggled with the button's `toggled` signal — or use a QSS `border-left` on
`:checked` instead if you prefer zero extra widgets:
`QPushButton[vbRole="rail"]:checked { border-left: 3px solid #0000c0; }`
**Prefer the QSS border** — one rule, no sibling widget.

---

## 14. S-1 … S-7 coverage

| ID | Delta | Where addressed | Status |
|---|---|---|---|
| **S-1** | vertical rail of 11, not a horizontal bar of 15 | §5.1 geometry, §5.2 order, §5.3 whitelist projection (kills duplicate `front office` + `EPABX` + `Messaging`), §4.4 deletes `mod_row` | ✅ addressed |
| **S-2** | missing top banner 1920×120 | §4 fixed 80 px band (1280×80 logical — the parity spec's 1920×120 is the 144 DPI device size, §0.1) | ✅ addressed |
| **S-3** | missing right sidebar | §7 geometry, §7.2 contents + order, §7.3 styling | ✅ addressed |
| **S-4** | status bar differs | §8.1 eight panels, §8.2 `DB:` → `addPermanentWidget`, §8.3 separators | ✅ addressed |
| **S-5** | lowercase vs Title Case | §5.2 `_RAIL_ORDER` renders the canonical Title-Case caption regardless of DB spelling (§5.3 matches case-insensitively) | ✅ addressed |
| **S-6** | 3 missing toggles | §8.4 working `Hide Left Menu` / `Hide Right Menu` / `Full Screen`, keyboard-reachable §11 | ✅ addressed |
| **S-7** | Main Setup 9-module sub-bar | §4.2 — **already shipped and tested; do not touch `_build_top_menubar()` / `_TOP_MENU_ORDER`.** Only restyled + repositioned. | ✅ kept as-is |

---

## 15. Out of scope (explicit)

| Item | Reason |
|---|---|
| Child form contents inside the client | brief says out of scope |
| `menuHelp` / `User_Module` schema or data | brief; §5.3 keeps all leaves DB-driven |
| `PictShortCuts` (TreeView + ListView + MSHFlexGrid, `:11-48`) | VB6 shortcuts panel, 211 logical px wide — **not present** in any of the 17 reference screenshots, so there is no rendered target to design against. Toggled at runtime by `ShowShortCutsBar` (`:10993`). **Confirmed out of scope 2026-10-05** (leader decision): revisit only once a screenshot of it with `ShowShortCutsBar` enabled exists. |
| `PictMainMenu`/`LblMgsInfo` hidden controls | `Visible = 0` in source; nothing to reproduce |
| Clock timezones (India / Canada / Italy / London / Japan / Australia) | real tz conversion is a data task; Phase 2 renders placeholder times from one `QTimer`. Wire `zoneinfo` when the tz list is agreed. |
| `MainSetupWorkbench` dead code (~180 lines) | pre-existing, flagged in `main-setup-top-menubar.md` §7; unrelated to the shell frame |
| New dependencies | **none.** PyQt6 + stdlib only. §8.5 uses `ctypes` (stdlib) for `GetKeyState`. |

---

## 16. Definition of done for Phase 2

1. §12 probe run, output pasted into `specs/implementation-summary.md`.
2. Frame renders: rail 107 / band 80 / sidebar 120 / status 27; no
   `mod_row`, no `sub_row`.
3. Rail shows exactly the 11 canonical captions + 2 footer; **no** duplicate
   `front office`, **no** `EPABX`, **no** `Messaging`.
4. Clicking each rail module does **not** change the band height (assert
   `band.height()` before/after).
5. All 3 status toggles work and are reachable by Tab alone.
6. `window.setMinimumSize(1180, 666)` holds.
7. `pytest HMS_py/tests -k "shell or menu" -q` ≥ the current **55 passed**;
   full suite no worse than the current **5 failed / 1135 passed** (5 are
   pre-existing: 3 × `test_manual_pipeline` missing PIL, 2 ×
   `test_account_posting` DB data).
8. `import HMS_py.ui.shell` clean; `ruff` delta on `shell.py` = 0 new.
9. Dark Mode toggle (`_toggle_theme`, `:3749`) either keeps working **or** is
   explicitly retired with a `ponytail:` comment. VB6 has no dark mode, so
   retiring it is acceptable — leaving it half-working is not.