# Phase 2 — Targeted Qt/PyQt6 Research for P0 PARTIAL Categories

Companion to `specs/ui-p0-audit.md`. Covers **only** the fix-categories Phase 1 found `OPEN/PARTIAL` (OPEN = 0; 9 PARTIAL rows → 8 categories A–H).
Each category: **Problem → Recipe → Minimal code → Gotchas → Sources**. Research only — no application code touched.

---

## A. Missing Company Master field(s) — P0-01 *(deltas: data/field wiring, not Qt)*

**Problem.** Python form has 35 rows vs VB6 41 TextBox blocks; Contract Type (VB6 `Txt(27)`, MaxLength=20, tab=36) confirmed absent from `ui/comp_mast_form_ui.py` and `core/comp_master.py`.

**Recipe.** Field-add recipe used by every existing row (no new Qt machinery):
1. Add key to `core/comp_master.py` `FIELDS` (:44-59) + `LIMITS` entry (`"contract_type": 20`).
2. Add one `_row(...)` line in `ui/comp_mast_form_ui.py` with `setMaxLength` from `LIMITS`, following sibling pattern :72-104 style.
3. Add value to `validate_company`/`save_company` mapping (`core/comp_master.py:436+`).

**Minimal code.**
```python
# core/comp_master.py — LIMITS
"contract_type": 20,
# ui/comp_mast_form_ui.py — one more _row, same helper as siblings
self.edContractType = self._row("Contract Type", tab=36, max_len=self.LIMITS["contract_type"])
```

**Gotchas.**
- Enum-like field (VB6 likely a combo) → prefer editable QComboBox, see category **H**.
- Remaining ~5 unmapped VB6 TextBox names are unrecoverable (labels stripped) — resolve count via `HMS.exe` design blob before adding guessed fields.

**Sources.**
- Qt text-field basics: https://doc.qt.io/qt-6/qlineedit.html

---

## B. FA Enviro Integrity button — P0-05, P0-14

**Problem.** VB6 `BtnIntegrity` (`FaEnvron.frm:1942`, handler :2802) not ported; Python shows DateLock/RunPIF as editable checkboxes instead of a run-integrity action.

**Recipe.** One `QPushButton` in the FA Enviro action row next to Save/Cancel (`ui/fa_enviro_ui.py:295-308`), same `QStyle.standardIcon` style as other toolbars; handler calls the existing integrity routine (port of `BtnIntegrity_UnknownEvent_9`) and **disables itself while running**.

**Minimal code.**
```python
from PyQt6.QtWidgets import QPushButton
from PyQt6.QtGui import QKeySequence

btnIntegrity = QPushButton("Integrity Check")
btnIntegrity.setAccessibleName("Run data integrity check")
btnIntegrity.setIcon(self.style().standardIcon(QStyle.StandardPixmap.SP_DialogApplyButton))
btnIntegrity.clicked.connect(self._run_integrity)
btnIntegrity.setEnabled(not self._saving)   # same enable-state pattern as Save/Cancel
```

**Gotchas.**
- Long-running check → disable button + guard re-entrancy (same `_busy` idiom as the keymap filter, `ui/shell.py:193`).
- Keep DateLock/RunPIF checkboxes — they are legit editable columns; don’t remove.

**Sources.**
- Icons/standard pixmaps: https://doc.qt.io/qt-6/qstyle.html
- Button enable state: https://doc.qt.io/qt-6/qabstractbutton.html

---

## C. Toolbar completeness (icon row, counter, Print/Post) — P0-18, P0-24

**Problem.** `_toolbar_row` (`ui/general_setup_tabs_ui.py:102-170`) has 12 icon buttons + Browse + counter; register expects 16 incl. Print/Post.

**Recipe.** Append the missing buttons to the existing tuple loop — the row already does everything right (`QStyle.standardIcon`, `objectName`, `accessibleName`, textless). Counter already exists (:162-165).

**Minimal code.**
```python
# inside the existing button-spec tuple in _toolbar_row:
("on_print",  QStyle.StandardPixmap.SP_Printer,      "Print",  "Print"),
("on_post",   QStyle.StandardPixmap.SP_DialogApplyButton, "Post", "Post"),
```

**Gotchas.**
- Textless icon buttons must keep **both** `setToolTip` and `setAccessibleName` (see category F).
- Don’t add visible text — the F-key dispatcher (`ui/shell.py:171-176`) relies on `objectName`/`accessibleName`/text for caption matching; empty `text` already broke F2/F3 here (P0-26 gap).
- Print on a workbench likely means `QPrinter`/`QTextDocument.print_(...)` — confirm scope with user before wiring.

**Sources.**
- QStyle standard pixmaps: https://doc.qt.io/qt-6/qstyle.html
- Accessibility for QWidget apps: https://doc.qt.io/QT-6/accessible-qwidget.html

---

## D. Sub-tab inventory reconciliation — P0-19 *(process, not Qt)*

**Problem.** 19 Python sub-tabs (`SUB_ROWS` `ui/general_setup_tabs_ui.py:1445-1454`) vs register’s 26; VB6 `.frm` captions stripped → unverifiable from source.

**Recipe.** Extract control design data from the `HMS.exe` binary blob (same technique already used for CompMast evidence), diff tab captions against `SUB_ROWS`, then either add missing `_show_page` cases or mark register rows stale.

**Minimal code.** *(tooling, one-off — run outside app)*
```python
# strings-style extraction of frmEnviro tab captions from the exe, then diff:
#   vb6_captions - {r[1] for r in SUB_ROWS}  -> missing tabs
```

**Gotchas.**
- All 19 existing tabs dispatch (`_show_page` :2145) — do not “fix” the disproven “only Printing works” claim.
- Gate: don’t add empty tab stubs; each new tab needs `PAGE_FIELDS` entries or it renders blank.

**Sources.**
- Qt tab widget (for reference when adding): https://doc.qt.io/qt-6/qtabwidget.html

---

## E. Password QLineEdit: masking + MaxLength — P0-16, P0-22

**Problem.** `edPass` masked (`EchoMode.Password`) but lacks `setMaxLength`; register also claims VB6 MaxLength=8 for login (stale — VB6 source has none).

**Recipe.** Qt6 has **no public `setEchoCharacter`** — masking is only `setEchoMode(QLineEdit.EchoMode.Password)`; length cap is `setMaxLength`. Both are plain properties.

**Minimal code.**
```python
from PyQt6.QtWidgets import QLineEdit

edPass = QLineEdit()
edPass.setEchoMode(QLineEdit.EchoMode.Password)
edPass.setMaxLength(usermaster.LIMITS["password"])   # the actual missing line
```

**Gotchas.**
- `setEchoMode` on a **disabled** read-only field still masks — good for stored-password display.
- Qt6 `setEchoMode(Password)` shows no echo character (VB6 showed `*`); if pixel-parity matters, QSS `lineedit { ... }` cannot change it — accept the platform look or use a reveal-toggle button (👁) instead.
- `Password` mode still allows copy; if that’s undesired, also `edPass.setEchoMode(QLineEdit.EchoMode.PasswordEchoOnEdit)` or clear `setDragEnabled(False)`.

**Sources.**
- QLineEdit (`setEchoMode`, `setMaxLength`, `EchoMode` enum): https://doc.qt.io/qt-6/qlineedit.html

---

## F. Blank=unchanged password + storage hardening — P0-22, P0-23

**Problem.** Current scheme is the VB6 byte cipher (`core/auth.py` `encrypt`/`decrypt`/`enc_bytes` :99-130 — reversible, seed=ord+27+SHIFT). UI correctly treats blank as “keep existing” (`ui/usermaster_ui.py:292-295`) but storage should move off reversible cipher.

**Recipe (staged, DB-compatible).**
1. UI stays as-is: blank ⇒ don’t call `set_password`.
2. New-style hashes stored with a **prefix marker** so old rows still verify: verify path = `if stored.startswith("$pbkdf2$"): pbkdf2_check else: legacy decrypt-check` → `check_login` (`core/auth.py:202`) unchanged for old rows.
3. Re-encrypt to new hash lazily on next successful login.
4. Optional: API/key material (not user passwords) goes to Windows DPAPI via the already-proven spike in `docs/DPAPI_SECRET_STORAGE_SPIKE.md` (`pywin32` 312, `CryptProtectData` round-trip OK; `core/channel/config.py` `_protect`/`_unprotect` `D`/`X` marker scheme).

**Minimal code.**
```python
import hashlib, os
def hash_pw(pw: str) -> str:
    salt = os.urandom(16)
    dk = hashlib.pbkdf2_hmac("sha256", pw.encode(), salt, 600_000)
    return f"$pbkdf2$600000${salt.hex()}${dk.hex()}"

def check_pw(pw: str, stored: str) -> bool:
    if stored.startswith("$pbkdf2$"):
        _, it, salt, dk = stored.split("$")
        return hashlib.pbkdf2_hmac("sha256", pw.encode(), bytes.fromhex(salt), int(it)).hex() == dk
    return auth.decrypt(stored) == pw          # legacy VB6-cipher row
```

**Gotchas.**
- OWASP: PBKDF2-HMAC-SHA256 **600,000** iterations (2024+); Argon2id/scrypt preferred if a dependency is acceptable — stdlib PBKDF2 needs **no new dep** (ladder rung 4).
- Keep VB6 cipher functions until all rows migrated; the default SA seed cipher (`enc_bytes('', seed=65)` = `'\'`) has special-cased behavior in `check_login`.
- Migration is a **money/security path** → dual-verify + one small `test_*.py` covering: legacy row, new row, blank-password-keeps-old, wrong password.
- DPAPI is machine+user scoped — DB copied to another box won’t decrypt (spike caveat); fine for channel secrets, wrong for portable user auth (hash instead).

**Sources.**
- OWASP Password Storage Cheat Sheet: https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html
- Python stdlib scrypt: https://docs.python.org/3/library/hashlib.html#hashlib.scrypt
- keyring (Windows Credential Locker backend): https://github.com/jaraco/keyring/
- pyca/bcrypt note (72-byte limit): https://github.com/pyca/bcrypt/

---

## G. App-wide Enter→Tab filter — P0-25

**Problem.** Already implemented (`_Vb6KeyMapFilter` `ui/shell.py:188`); this entry documents the Qt mechanics + edge cases so the fix survives review.

**Recipe.** Install one event filter on the **QApplication**; handle `QEvent.KeyPress` for `Qt.Key_Return`/`Key_Enter` only when the focus widget is a `QLineEdit`/`QPlainTextEdit` **without** a `returnPressed` connection and not read-only → call `focusNextPrevChild(True)`.

**Minimal code.** *(canonical minimal pattern; our filter at `ui/shell.py:188` is the hardened version)*
```python
class EnterToTab(QObject):
    def eventFilter(self, obj, ev):
        if (ev.type() == QEvent.Type.KeyPress
                and ev.key() in (Qt.Key.Key_Return, Qt.Key.Key_Enter)
                and isinstance(obj, QLineEdit)
                and not obj.isReadOnly()):
            obj.focusNextPrevChild(True)
            return True
        return False

app.installEventFilter(EnterToTab(app))
```

**Gotchas.**
- **Don’t steal Enter from buttons/combos/dialog defaults** — filter must check focus-widget type (QAbstractButton already consumes Enter as click).
- Don’t fire when the widget has a `returnPressed` signal connected (e.g. search boxes) — check connections or a per-widget opt-out flag.
- Text areas: decide multiline vs single-line explicitly (`QPlainTextEdit` should usually keep Enter).
- Re-entrancy: guard with a busy flag (already `_busy` `ui/shell.py:193`).

**Sources.**
- StackOverflow moving focus with Enter: https://stackoverflow.com/questions/62422643/moving-focus-to-next-qlineedit-using-enter
- Qt forum Enter→focus pattern: https://forum.qt.io/topic/29455/set-focus-to-another-qlineedit-by-pressing-the-enter-key-or-by-using-arrow-keys

---

## H1. Global F-key dispatch + shortcut coexistence — P0-26, P0-27

**Problem.** `_VB6_FKEY_HANDLES` (`ui/shell.py:154-155`) works via dispatch, but (a) `ui/base_master.py:106-107` registers **local** `QShortcut(F2)`/`QShortcut(F4)` → `_pick` that win over the global map, and (b) General Setup names methods `_edit`/`_delete` not `_on_edit`/`_on_delete` → F2/F3 inert there.

**Recipe (Qt shortcut semantics).**
- Qt resolves shortcuts by **context** (`Qt.ShortcutContext.WindowShortcut` default): a `QShortcut` on the focused window fires before app-wide eventFilter logic.
- Order of precedence for a keypress: focus widget `keyPressEvent` → widget `ShortcutOverride` event → window shortcuts → app filter.
- Two ways to make global F2 win: **(1)** remove the redundant local F2 bind (F4 already does `_pick`), or **(2)** have the local shortcut accept `QEvent.ShortcutOverride` only when it should win.

**Minimal code.**
```python
# Fix (1) — delete this line in ui/base_master.py:107 (F4 at :106 already picks):
#   QShortcut(QKeySequence(Qt.Key.Key_F2), self, activated=self._pick, context=Qt.ShortcutContext.WidgetShortcut)

# Fix (2) — dispatcher alias so General Setup F2/F3 work:
_METHOD_ALIASES = {"_on_edit": "_edit", "_on_delete": "_delete"}   # checked before dispatch miss
```

**Gotchas.**
- `QShortcut` with `WidgetShortcut` context fires only when that widget has focus — often the real source of “works sometimes”.
- **ShortcutOverride pattern**: focus widget receives `QEvent.ShortcutOverride`; if it accepts (`event.accept()`), the key becomes a normal `KeyPress` and shortcuts don’t fire — use when a text field must keep F2 as typing.
- Don’t register two `QShortcut`s for the same key in the same window — last-registered wins nondeterministically across Qt versions.
- Verify `MainWindow` (`ui/shell.py:3311`) gains `_on_edit`/`_on_delete` or the alias map covers it.

**Sources.**
- Qt wiki — ShortcutOverride: https://wiki.qt.io/ShortcutOverride
- QShortcut context: https://doc.qt.io/qt-6/qshortcut.html

---

## H2. Icon-only buttons: accessible name + caption dispatch — P0-18, P0-24 (shared with C)

**Problem.** Textless icon buttons give screen readers / automation nothing to name, and the F-key dispatcher’s caption fallback finds empty `text`.

**Recipe.** Qt maps accessibility name from (in order): visible text → `accessibleName` → `toolTip`. Set **all three consistently**; keep `objectName` stable for tests.

**Minimal code.**
```python
b = QPushButton()
b.setIcon(style.standardIcon(QStyle.StandardPixmap.SP_DialogSaveButton))
b.setText("")                                   # stays icon-only visually
b.setAccessibleName("Save")                     # screen readers + automation
b.setToolTip("Save (F6)")                       # hover hint, also a11y fallback
b.setObjectName("btn_save")
```

**Gotchas.**
- `setWindowTitle`/`objectName` do **not** become accessible names (confirmed behavior) — must use `setAccessibleName`.
- Tooltips alone are insufficient a11y (no hover on touch); `accessibleName` is the Qt equivalent of `aria-label`.
- Dispatcher should prefer `accessibleName` when `text` is empty — current gap named in P0-26.

**Sources.**
- Accessible name for icon-only QPushButton: https://stackoverflow.com/questions/18730537/how-do-i-set-the-accessibility-name-for-a-qpushbutton-that-just-has-an-icon
- Qt accessibility docs: https://doc.qt.io/qt-6/qaccessible.html · https://doc.qt.io/QT-6/accessible-qwidget.html

---

## I. QTableWidget custom context menu with edit-mode enable state — P0-17 *(already FIXED; recipe kept for parity)*

**Problem/Recipe.** Right-click menu on the company grid with actions enabled only when a valid cell + edit state allows it (pattern behind `_grid_menu` `ui/shell.py:800`).

**Minimal code.**
```python
grid.setContextMenuPolicy(Qt.ContextMenuPolicy.CustomContextMenu)

def open_menu(pos: QPoint):
    idx = grid.indexAt(pos)                     # must null-check; crashes otherwise
    menu = QMenu(grid)
    add = menu.addAction("Add"); edit = menu.addAction("Edit"); delete = menu.addAction("Delete")
    ok = idx.isValid() and not self._saving
    edit.setEnabled(ok); delete.setEnabled(ok)
    chosen = menu.exec(grid.viewport().mapToGlobal(pos))   # viewport mapping!
    if chosen is edit and idx.isValid():
        self._on_edit(idx.row())

grid.customContextMenuRequested.connect(open_menu)
```

**Gotchas.**
- `customContextMenuRequested` coordinates are relative to the **viewport** for QAbstractScrollArea subclasses → `viewport().mapToGlobal(pos)`.
- `itemAt(pos)` returns `None` outside cells → guard before use (known crash from forum reports).
- Build the menu **fresh each time** (don’t re-connect lambdas to long-lived actions — duplicate-connection bug returns the last-connected action repeatedly).
- `action.setEnabled(...)` per-invocation is the correct enable-state mechanism (better than `QAction` + `setContextMenuItemActionProperty`).

**Sources.**
- PyQt context-menu handling wiki: https://wiki.python.org/moin/PyQt/Handling%20context%20menus
- QTableWidget right-click pattern: https://forum.qt.io/topic/94905/simpliest-way-for-creating-contextmenu-for-qtablewidget-cells
- QAction enable/`data()` pitfalls (PyQt6): https://stackoverflow.com/questions/72822872/python-pyqt6-contextmenuevent-strange-behavior-i-dont-understand

---

## J. QButtonGroup radio trio + browse-grid sync (RoundOff) — P0-21 *(already FIXED; recipe kept for parity)*

**Problem/Recipe.** Three exclusive radios (Standard/Upper/Lower) must stay in sync with a row-selected grid without recursive signal loops (`_ro_toggled` `ui/general_setup_tabs_ui.py:2155`, `_pick_roundoff` :2173).

**Minimal code.**
```python
grp = QButtonGroup(self)
grp.setExclusive(True)                          # default true; be explicit
for i, rb in enumerate((rbStandard, rbUpper, rbLower)):
    grp.addButton(rb, i)

def on_grid_row_selected(row: int):
    with QSignalBlocker(rbUpper):               # no re-entry into _ro_toggled
        rbUpper.setChecked(True)

grp.buttonClicked.connect(lambda btn, row=row: self._save_roundoff(btn.text()))
```

**Gotchas.**
- Exclusive group must have **one button initially checked** or it starts with none (Qt docs).
- Use **`QSignalBlocker`** (RAII, exception-safe) instead of manual `blockSignals(True)/(False)` pairs when setting state programmatically from the grid sync.
- `QButtonGroup` emits `buttonClicked(QAbstractButton*)` even for programmatic `click()` — if you `setChecked()` (not `click()`), `buttonClicked` does **not** fire, only `buttonToggled` — pick the signal matching user-intent vs state-change.
- User cannot uncheck the checked radio by clicking it — for a 3-way setting that’s correct.

**Sources.**
- QButtonGroup (exclusive semantics, signals): https://doc.qt.io/qt-6/qbuttongroup.html
- QSignalBlocker: https://doc.qt.io/qt-6/qsignalblocker.html
- Preventing unwanted radio toggles (design discussion): https://forum.qt.io/topic/15259/solved-preventing-a-qradiobutton-from-toggling

---

## K. Editable lookup field (Contract Type / City) — P0-01 *(shared with A)*

**Problem.** Contract Type / City fields must accept pick-from-list (VB6 combo behavior) **and** free text up to MaxLength.

**Recipe.** Editable `QComboBox` with embedded `QCompleter` — Qt’s native “combo + autocomplete” (no custom widget).

**Minimal code.**
```python
from PyQt6.QtWidgets import QComboBox
from PyQt6.QtCore import Qt

cb = QComboBox()
cb.setEditable(True)
cb.setInsertPolicy(QComboBox.InsertPolicy.NoInsert)     # don't pollute list with typos
cb.addItems(["FOOD", "SERVICES", "TRADING"])           # enum values
cb.setCurrentText("")
cb.setMaxLength(20)                                    # applies to embedded lineEdit
cb.completer().setCompletionMode(QCompleter.CompletionMode.PopupCompletion)
cb.completer().setCaseSensitivity(Qt.CaseSensitivity.CaseInsensitive)

# validation: value is cb.currentText().strip() — free text allowed if business rule needs it
```

**Gotchas.**
- `setMaxLength`/`setValidator` on an editable combo act on the **embedded line edit** (`cb.lineEdit()`).
- Setting `setEditable(False)` later **removes** validator+completer (Qt docs) — configure after `setEditable(True)`.
- `setCompleter(nullptr-ish)` disables autocomplete; default editable combo already has a case-insensitive inline completer.
- If the list must come from DB and update often, rebuild with `cb.model().setStringList(...)` rather than `clear()+addItems` (keeps completer model alive).
- `NoInsert` avoids the classic bug where typed text silently appends to the pick list.

**Sources.**
- QComboBox (editable, completer, insert policy, validator): https://doc.qt.io/qt-6/qcombobox.html
- QCompleter (modes, filterMode, case sensitivity): https://doc.qt.io/qt-6.8/qcompleter.html
- Qt Completer example: https://doc.qt.io/qt-6/qtwidgets-tools-completer-example.html
- PyQt6 substring-autocomplete patterns: https://stackoverflow.com/questions/74189826/how-to-achieve-autocomplete-on-a-substring-of-qlineedit-in-pyqt6

---

## Category ↔ ID cross-reference

| Category | Fix-category (audit) | P0 IDs | Status driver |
|---|---|---|---|
| A Missing fields | A | P0-01 | PARTIAL |
| B Integrity button | B | P0-05, P0-14 | PARTIAL |
| C Toolbar Print/Post | C | P0-18, P0-24 | PARTIAL |
| D Sub-tab reconciliation | D | P0-19 | PARTIAL |
| E Password MaxLength | E | P0-16, P0-22 | PARTIAL (P0-16 fixed) |
| F Password storage | E/F | P0-22, P0-23 | PARTIAL / hardening |
| G Enter→Tab | — | P0-25 | FIXED (reference) |
| H1 F-key dispatch | F | P0-26, P0-27 | PARTIAL |
| H2 Icon a11y names | C/F | P0-18, P0-26 | PARTIAL |
| I Grid context menu | — | P0-17 | FIXED (reference) |
| J Radio+grid sync | — | P0-21 | FIXED (reference) |
| K Lookup combo | A | P0-01 | PARTIAL |
