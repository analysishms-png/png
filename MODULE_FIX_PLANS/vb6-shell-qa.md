# VB6 Shell — QA Report (DS-002)

**Verdict: FAIL ❌**

Numeric + code-only QA. No `.png` file was read. Ground truth is
`specs/implementation-summary.md` §5a (`EnumChildWindows`) plus
`FODER/MDIForm1.frm` source. Settled decisions — palette direction, fixed 80px
band, rail order, DPI conversion — were **not** re-litigated; they were only
checked for internal consistency.

---

## Verdict table

| # | Check | Verdict |
|---|-------|---------|
| 1 | Frame + band + rail + sidebar + status geometry | **PASS** |
| 2 | Rail contents, sizes, spacing, footer | **PASS** |
| 3 | Band invariance on module switch | **PASS** |
| 4 | Documented deviations vs real source | **FAIL** |
| 5 | Accessibility (focus order, focus ring, keyboard) | **FAIL** |
| 6 | Status-bar panels, toggles, `DB:` | **FAIL** |
| 7 | Test integrity vs 9 DoD | **PASS** |
| 8 | Regression: Main Setup 9-module sub-bar | **PASS** |

---

## What I re-ran

| Check | Command / method | Result |
|---|---|---|
| Frame suite | `pytest HMS_py/tests/test_vb6_shell_frame.py -q` | 23 passed, 1.55s |
| Shell+menu slice | `pytest HMS_py/tests -k "shell or menu" -q` | 79 passed |
| Full suite | `pytest HMS_py/tests -q` | 2 failed, 1168 passed, 1 skipped, 161s |
| S-7 regression | `pytest test_main_setup_topmenubar.py test_menuhelp_sidebar_live.py` | 6 passed |
| Import | `python -c "import HMS_py.ui.shell"` | ok |
| Lint | `ruff check HMS_py/ui/shell.py` | 47 (HEAD 48 — net −1) ✅ |
| Lint (new test) | `ruff check HMS_py/tests/test_vb6_shell_frame.py` | clean |
| Geometry / rail / focus / status / reload | 4 custom offscreen numeric probes | see below |
| `theme.py:66-71` | `git diff --stat HEAD` | empty → untouched ✅ |

## Accepted as-is (report evidence, not independently re-probed)

- §5a `EnumChildWindows` inventory. Authoritative per brief; no image read.
- `theme.py:66-71` untouched — **verified** via git (empty diff).
- All 5 corrections in §3 — spot-checked, **all legitimate**:
  footer `107×25`/`107×31`; bottom row `60×32`; clock `120×45` kept (explicit
  §7.1 deviation); sub-bar flexible (explicit §4.2 deviation); `666` min-height
  surplus. Each correctly cites the overriding spec clause rather than silently
  ignoring the probe.

---

## Fail findings

### F1 — BLOCKER · `HMS_py/ui/shell.py:3808-3812` + `4119`
**Alt+1..Alt+11 hard-crashes the process after one `Reload` click.**

`__init__` builds one `QShortcut` per rail button, each with a Python lambda
closing over the *wrapper*:

```python
for i, b in enumerate(self._side_buttons):
    b.setToolTip(f"{b.property('mod_target')}  —  Alt+{i + 1}")
    QShortcut(QKeySequence(f"Alt+{i + 1}"), self, activated=lambda bb=b: bb.click())
```

`_reload_rail` (`shell.py:4100-4119`) calls `b.deleteLater()` on every old
button (`shell.py:4119`). The `QShortcut` objects are parented to `self`, so they
survive — still pointing at freed C++ objects.

Reproduction (offscreen probe, exit code `-1073740791` = `0xC0000409`):

```
launch → click Reload → sendPostedEvents(DeferredDelete) → QShortcut.activated.emit()
C old button DEAD: wrapped C/C++ object of type QPushButton has been deleted
D calling the stale Alt+1 lambda (bound to the deleted button)...
<process aborts — no output, native abort, not a Python exception>
```

Two consequences: (a) any `Alt+N` after `Reload` kills the app; (b) the freshly
rebuilt buttons get the new tooltips but **no** shortcuts, since only the tooltip
is re-set in `_reload_rail`. The tooltip actively advertises the crashing key.

Note the button is only *pending* delete until the event loop drains, which is
why existing tests miss this. Fix: rebuild the shortcuts inside `_reload_rail`
(`deleteLater()` the old `QShortcut`s too), or bind the lambda to
`self._side_buttons[i]` instead of the captured wrapper.

### F2 — HIGH · `HMS_py/ui/shell.py:4167-4170`
**`Full Screen` does the wrong thing; the cited justification does not exist.**

```python
def toggle_fullscreen(self):
    # VB6 MenuCaption-sbar toggles `Me.WindowState = 3` (vbMaximized),
    # not a true borderless full screen.
    self.showMaximized() if not self.isMaximized() else self.showNormal()
```

VB6 `FODER/MDIForm1.frm:8605` `sbar_UnknownEvent_9(Index)`:

| VB6 Index | VB6 action | shell.py |
|---|---|---|
| 6 | `PictMainMenu.Visible = False` (left rail) | `toggle_left` — matches ✅ |
| 7 | `PictTitleBar.Visible = False` (right sidebar) | `toggle_right` — matches ✅ |
| 8 | `PictMainMenu` **+** `PictSubMenu` **+** `PictTitleBar` `.Visible = False` — hides band + rail + sidebar | `toggle_fullscreen` — **maximizes instead** ❌ |

Probe: after click → `band=True rail=True sidebar=True maximized=True` →
`matches VB6 index 8? False`.

The deviation's rationale is fabricated. `git grep WindowState` over
`MDIForm1.frm` returns only `2` and `var_E4`; `MDIForm1.frm:6177-6178` sets
`var_E4 = 2`. There is no `WindowState = 3` anywhere. Separately, VB6
`vbMaximized = 3` would be right but `3` is not what the file does — and index 8
is a **visibility** handler, not a window-state handler at all. §5 deviation 5 and
the in-code comment are both wrong. Spec §8.3 wants toggling, which means
repeated clicks hide then re-show.

### F3 — MEDIUM · `HMS_py/ui/shell.py:3755-3778`
**Status panel order is inverted.**

Actual add order: user (`3750`), site (`3751`), dt (`3754`), then the toggle loop
(`3755-3776`), then `CAPS` (`3777`), `NUM` (`3778`), then `DB:` permanent
(`3788`).

Spec §8.1 and VB6 agree on `user, site, dt, CAPS, NUM, HideLeft, HideRight,
FullScreen`. Proof: VB6 panels 6/7/8 are the toggles, so with 1-based indices
`Panels(4)` and `Panels(5)` — CAPS and NUM — necessarily precede them. §4 of the
implementation summary asserts the correct order while the code does the
opposite. Fix: move the `3755-3776` block below `3778`.

### F4 — MEDIUM · `HMS_py/ui/shell.py:3798-3805`
**Tab order deviates from spec §11.1 and changes after `Reload`.**

The explicit chain only covers rail → date/Reload/Exit → toggles. The rail footer
(`In Box`, `Property Status`), the menubar and the theme button are **omitted**,
so Qt falls back to creation order. Measured live order from rail button 1:

```
 1-11  rail (Finance … EXTRAs)
12     05/Oct/2026          <- spec §11.1 wants #17
13     Reload               <- #18
14     Exit                 <- #19
15     Hide Left Menu       <- #20
16     Hide Right Menu      <- #21
17     Full Screen          <- #22
18     In Box               <- spec §11.1 wants #12
19     Property Status      <- spec §11.1 wants #13
20     QMenuBar             <- spec §11.1 wants #15
21     Light Mode           <- not in spec at all
22     Finance              <- wraps back into the rail
```

Two defects: the order is inverted versus §11.1, and the rail is visited **twice**
per cycle. §11.1 explicitly warned to *"verify the order live, because
`QStatusBar` re-parents its children"* — that verification was not done. After a
`Reload` the order mutates again (rail → menubar → theme → date), because the new
buttons are not in the explicit chain. Every widget is reachable, so this is not
a trap, hence MEDIUM not HIGH.

### F5 — MEDIUM · `HMS_py/ui/shell.py:341-348` (`VB_SHELL_QSS`)
**Panel separators use the exact colour pair §8.3 rejected as failing WCAG.**

Spec §13 mandates `border-left: 1px solid #000000` on status panels; §8.3
explicitly rejected `#808080` on `#c0c0c0` as the separator colour, giving its own
measured `2.17:1` against the required `3:1` (WCAG 1.4.11). The QSS ships the
rejected pair anyway, as an all-round border:

```css
QLabel[vbRole="panel"]  { background:#c0c0c0; border:1px solid #808080; }
QFrame[vbRole="chrome"] { background:#c0c0c0; border:1px solid #808080; }
QFrame#vbSidebar        { background:#c0c0c0; border-left:1px solid #808080; }
```

Confirmed `#808080` on `#c0c0c0` = **2.17:1** < 3:1. Also borders all four sides,
so panel 1 gets a border too, which §13 says to skip. Undocumented in §5.

---

## Undocumented deviations (LOW — visual only, contrast still passes)

Not gating on their own; §5 should list them so the deviation record is honest.

| Item | Spec | Implemented | Contrast |
|---|---|---|---|
| `QLabel#vbCompany` | `#C00000` | `#000000` | 21:1 ✅ |
| `QFrame#vbTopBand` border-bottom | `1px solid #c0c0c0` | `2px solid #0000c0` | 12.45:1 ✅ |
| `QFrame#vbSidebar` bg | `#FFFFFF` | `#c0c0c0` | 11.54:1 ✅ |

Focus rings (§11.3 wants black, spec sizes) also deviate, all ≥3:1 so no a11y fail:

| Selector | Spec §11.3 | Implemented |
|---|---|---|
| `[vbRole="rail"]:focus` | `2px solid #000000` + white outline | `1px dotted #000000` |
| `[vbRole="chrome"]:focus` | `1px solid #000000` | `2px solid #0000c0` |
| `[vbRole="toggle"]:focus` | `1px solid #000000` | `2px dotted #0000c0` |
| `vbSubBar::item:focus` | — | `1px dotted #0000c0` |

---

## Verified PASS detail

**Check 1 — geometry.** Exact match, no ±1px drift:

```
window 1280x688 | band 1280x80 | rail 107x581 | client 1053x581
sidebar 120x581 | status 1280x27 | menubar 40 high
107 + 1053 + 120 = 1280    80 + 581 + 27 = 688
```

**Check 2 — rail.** All 11 captions, exact order and case (`Finance`, `Main
Setup`, `Reservation`, `Front Office`, `House Keeping`, `Inventory`,
`Point Of Sale`, `Banquet`, `Night Audit`, `HR/Payroll`, `EXTRAs`), each
`107x43`, margins/spacing `0`, footer `In Box` / `Property Status` at
`107x25` / `107x31`. Legacy `EPABX` / `Messaging` / `Members Mgmt` and the
duplicate `front office` are structurally unreachable. Existing tests only cover
4 of the 11 captions — the custom probe supplied the rest.

**Check 3 — band invariance.** `band h/y` identical across all 11 module clicks;
`client` geometry unchanged; `mod_row` / `sub_row` absent; menubar never rebuilt
(`_build_top_menubar()` runs once, `_on_module` writes only crumb + canvas).

**Check 6 (partial) — everything except order and separators.** `sizeGripEnabled
= False`, height `27`, 5 `QLabel` panels + 3 checkable toggles + `DB:` via
`addPermanentWidget`, DB excluded from the stretching chain, all 3 toggles
`StrongFocus` with tooltip + `accessibleName` + `accessibleDescription`, CAPS/NUM
polled through `_key_latched`.

**Check 4 (partial) — deviations 1-4 sound.** Deviation 4 (`menuBar()`
override) is the one carrying real Qt risk, and it holds:

```
QMenuBar instances in window: 1   (objectName=vbSubBar, parent=QFrame,
                                  visible=True, native=False)
menuBar() is _menubar: True       (super().menuBar() never reached)
QMenu popups reachable: ['General Setup','Front Office','Point of Sale']
```

No stray native menu bar is created, so `QMainWindow`'s hidden menu area never
comes into play. 8 existing tests depend on `win.menuBar().actions()` and all
still pass. Keep it.

**Check 7 — DoD.** Import clean, ruff net −1, `test_theme_toggle_flips_mode`
present and green, `showEvent` offscreen/CI guard honoured. Both reported
full-suite failures are **pre-existing and unrelated**:
`test_account_posting_daily_range` and `test_account_posting_summary_mode` fail
with `PostingBlockedError` raised at `HMS_py/core/nightaudit.py:543`; that test
imports only `HMS_py.core.*` and never touches `ui.shell`. They come from the
uncommitted `folio.py` (+1087) / `nightaudit.py` (+1010) work in the tree.

**Check 8 — S-7 no regression.** `_TOP_MENU_ORDER` returns all 9 modules in
order, survives a module click, `windowTitle()` matches, disabled-leaf click is
safe. 6 dedicated tests pass. `_TOP_MENU_ORDER` / `_build_top_menubar` show as
`+` in `git diff HEAD` because they belong to a *different* uncommitted task
(`MODULE_FIX_PLANS/main-setup-top-menubar.md`), so they cannot be proven
untouched by git — verified behaviourally instead.

---

## DoD status

| # | Item | Status |
|---|------|--------|
| 1 | No out-of-scope feature added | ✅ |
| 2 | Rail = 11 canonical captions | ✅ |
| 3 | Rail 107x43, 0 margins/spacing | ✅ |
| 4 | Band fixed 80px, full geometry exact | ✅ |
| 5 | `focusPolicy` + focus rings present | ✅ (order wrong → F4) |
| 6 | 8 panels + black 1px separators + `DB:` | ⚠️ order wrong (F3), separators `#808080` (F5) |
| 7 | 3 toggles wired | ⚠️ 2 correct, Full Screen wrong (F2) |
| 8 | No regression | ✅ |
| 9 | Docs + tests updated | ✅ |

## Fix order for Phase 2

1. **F1** — Alt+N crash. Blocker; reproducible in 2 user actions.
2. **F2** — make `Full Screen` toggle band+rail+sidebar visibility; delete the
   `WindowState = 3` comment and §5 deviation 5, or replace it with the real
   `MDIForm1.frm:8605` citation.
3. **F3** — move the toggle loop below `CAPS`/`NUM` (`shell.py:3755-3776` → after `3778`).
4. **F4** — extend the §11.1 chain to include the footer buttons, menubar and
   theme button; re-assert it inside `_reload_rail`.
5. **F5** — `border-left: 1px solid #000000` on panels/chrome/sidebar.
6. Add the LOW items to §5 so the deviation record matches the code.