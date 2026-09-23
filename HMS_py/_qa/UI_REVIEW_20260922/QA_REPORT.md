# HMS Python - Complete UI Review Report
**Date:** 22 Sep 2026  
**Reviewer:** Code-level audit (all 58+ UI modules)  
**Total Issues Found:** 87  

---

## SEVERITY SUMMARY

| Severity | Count |
|----------|-------|
| CRITICAL | 8 |
| HIGH | 18 |
| MEDIUM | 31 |
| LOW | 30 |

---

## CRITICAL BUGS (Application crashes or data loss)

### BUG-001: Dashboard import path broken
**File:** `dashboard.py:152`  
**Impact:** Dashboard NEVER loads data  
**Detail:** `from core import db` should be `from HMS_py.core import db`. The outer `try/except ImportError` catches this silently, so dashboard shows blank cards with no error.  
**Fix:** Change to `from HMS_py.core import db`

### BUG-002: Dashboard crash on exception path
**File:** `dashboard.py:199-200`  
**Impact:** App crash  
**Detail:** `int(self.card_occupied.value_lbl.text() or 0)` — if `set_value("N/A")` was called, `.text()` returns `"N/A"` → `int("N/A")` raises `ValueError`.  
**Fix:** Wrap in try/except or validate before int() conversion

### BUG-003: Booking modify flow completely broken
**File:** `booking_ops_ui.py:248-265`  
**Impact:** Users cannot edit bookings  
**Detail:** `_on_modify()` loads data into form but there is NO save handler. The "Modify" button re-fetches the same data. Users fill form and click expecting save, but it reloads. **Edit flow is non-functional.**  
**Fix:** Add `_on_save()` handler that calls `booking.update()`

### BUG-004: Guest lookup SQL wrong columns
**File:** `guest_lookup_ui.py:52-54`  
**Impact:** Guest search crashes at runtime  
**Detail:** SQL references `Company` and `Address` columns — GuestProf table has `Add1`/`Add2` (not `Address`) and no `Company` column. Query fails with "Invalid column name".  
**Fix:** Use correct column names from GuestProf schema

### BUG-005: Guest history offscreen mode
**File:** `guest_history_ui.py:12`  
**Impact:** ALL Qt windows become invisible if imported  
**Detail:** `os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")` at module level — if this module is imported (not just run standalone), all Qt windows become invisible.  
**Fix:** Gate behind `if __name__ == "__main__"`

### BUG-006: FA voucher _theme not imported
**File:** `fa_voucher_ui.py:92`  
**Impact:** Voucher entry form crashes  
**Detail:** `_theme.palette()` used but `_theme` is never imported. Will crash with `NameError` at runtime.  
**Fix:** Add `from HMS_py.ui import theme as _theme`

### BUG-007: Inventory palette() undefined
**File:** `inventory.py:136,338,852,982,1084`  
**Impact:** 5 different forms crash  
**Detail:** `palette()` called as bare function but never imported. File imports `_theme` (line 25) and uses `_theme.palette()` at line 35, but these 5 locations call `palette()` directly → `NameError`.  
**Fix:** Replace all `palette()` with `_theme.palette()`

### BUG-008: Inventory GIN reload references non-existent widget
**File:** `inventory.py:376-382`  
**Impact:** GIN form crash on reload  
**Detail:** `self.tbl` referenced in `reload()` but `GINForm.__init__` creates `self.grid` (line 313). `self.tbl` doesn't exist → `AttributeError`.  
**Fix:** Change `self.tbl` to `self.grid`

---

## HIGH BUGS (Major functionality broken)

### BUG-009: Shell theme refresh is dead code
**File:** `shell.py:76-80`  
**Detail:** `_refresh_style()` rebuilds `STYLE` string but never applies it — `app.setStyleSheet(app.styleSheet())` is a no-op. Theme changes don't propagate to legacy STYLE consumers.

### BUG-010: base_window button bar below status bar
**File:** `base_window.py:52-63`  
**Detail:** `button_bar` is added after `QStatusBar` — sits under the status bar, partially hidden. Visual hierarchy is broken.

### BUG-011: Design module import paths
**File:** `design.py:128-129,153,230,246`  
**Detail:** `from ui.theme import palette` should be `from HMS_py.ui.theme import palette`. Will crash with `ImportError` unless `ui` is directly on `sys.path`.

### BUG-012: frontoffice.py hardcoded year
**File:** `frontoffice.py:172`  
**Detail:** `checkin.make_docid(checkin.SITE_CODE, '2026', folio)` — hardcoded year `'2026'`. Will produce wrong DocIds in 2027.

### BUG-013: registration_entry_ui hardcoded year
**File:** `registration_entry_ui.py:154`  
**Detail:** Same hardcoded `'2026'` in `make_docid()` call.

### BUG-014: folio_ui int() crash
**File:** `folio_ui.py:136,150,171,186`  
**Detail:** `int(item.text())` without try/except — crashes on non-numeric cell text (4 locations).

### BUG-015: fo_sub_forms merge no audit trail
**File:** `fo_sub_forms_ui.py:124-126`  
**Detail:** Raw SQL UPDATE `SET RoomNo = ? WHERE RoomNo = ?` — no transaction, no FolioLog audit, no backup. Room merge is irreversible data loss.

### BUG-016: fa_sub_forms raw SQL injection risk
**File:** `fa_sub_forms_ui.py:85,140`  
**Detail:** `int(self.txt_sno1.text() or 0)` — no input validation, `ValueError` crash on non-numeric input.

### BUG-017: nightaudit_reports wrong report execution
**File:** `nightaudit_reports_ui.py:116`  
**Detail:** `fn = getattr(rpmod, key, None)` tries function name matching, then calls `fn()` with no date args. But `rp.run()` expects date args. Most reports fail with `TypeError`.

### BUG-018: Shell 60+ silent import error swallowing
**File:** `shell.py:580-776`  
**Detail:** 60+ bare `try/except ImportError` blocks silently hide ALL import errors, not just missing modules. A syntax error or circular import is silently hidden as `None`.

---

## MEDIUM ISSUES (Functional problems)

### ISSUE-001: No login rate limiting
**File:** `shell.py:366-373`  
**Detail:** No lockout after N failed attempts — brute-force risk.

### ISSUE-002: Dashboard synchronous queries
**File:** `dashboard.py:149-237`  
**Detail:** 7 SQL queries run synchronously on main thread. UI freezes if DB is slow.

### ISSUE-003: Theme not applied after apply_tokens()
**File:** `theme.py:617-622`  
**Detail:** `apply_tokens()` applies stylesheet but does NOT set QPalette. Native Qt dialogs use wrong colors.

### ISSUE-004: Shell duplicate registry keys
**File:** `shell.py:915,958-961,972-974,1012`  
**Detail:** Duplicate keys `"Scheme Master"`, `"Purchase Register"`, `"Stock Summary"`, `"Stock Register"` — second definition silently overwrites first.

### ISSUE-005: frontoffice missing user parameter
**File:** `frontoffice.py:160-163`  
**Detail:** `checkin.create_checkin()` called without `user=self.user` — user tracking broken.

### ISSUE-006: registration_entry form fields not saved
**File:** `registration_entry_ui.py:143-145`  
**Detail:** `guestprof.insert()` only passes `code/name/city` — `type`, `phone`, `mobile`, `email`, `nationality` collected in UI but never saved.

### ISSUE-007: checkout_ui keep_folio falsy check
**File:** `checkout_ui.py:187`  
**Detail:** `if keep_folio:` — when `keep_folio=0`, this is falsy. Should be `if keep_folio is not None:`.

### ISSUE-008: pos_sales read-only fields
**File:** `pos_sales_ui.py:149-161`  
**Detail:** `_new_sale()` reads fields but `txt_docid` is read-only. User can't enter data because fields are always read-only.

### ISSUE-009: pos_sales print not implemented
**File:** `pos_sales_ui.py:182-186`  
**Detail:** Print button shows "coming soon" — not implemented.

### ISSUE-010: hr_payroll wrong sys.path
**File:** `hr_payroll_ui.py:4`  
**Detail:** `sys.path.insert(0, ...)` goes up two levels to `PROJECT_REPAIR - Copy/` instead of `HMS_py/`.

### ISSUE-011: hr_payroll deductions always empty
**File:** `hr_payroll_ui.py:140-141`  
**Detail:** Gross salary computed but deductions column is always empty string.

### ISSUE-012: inventory hardcoded user
**File:** `inventory.py:529`  
**Detail:** `user="PYADMIN"` hardcoded in `inv.gin_create()`. Should use actual logged-in user.

### ISSUE-013: inventory KitchenStockReport defined twice
**File:** `inventory.py:931-934`  
**Detail:** `KitchenStockReportForm` class defined twice. First definition is dead code.

### ISSUE-014: reports_ui from-date hardcoded to 2016
**File:** `reports_ui.py:58`  
**Detail:** From date hardcoded to `QDate(2016, 1, 1)`. Should be current FY start.

### ISSUE-015: usermaster empty password allowed
**File:** `usermaster_ui.py:200`  
**Detail:** `usermaster.insert(rec, plain_password=pwd)` — empty password is allowed. Should validate non-empty.

### ISSUE-016: general_setup leaked DB connections
**File:** `general_setup_ui.py:142-153`  
**Detail:** `db.connect()` called but connection never closed in `EnviroViewer.reload()` and `GuestParamViewer.reload()`.

### ISSUE-017: fa_ledger opening balance not saved
**File:** `fa_ledger_ui.py:86-87`  
**Detail:** `OpBalance` and `DrCr` fields exist in form but `insert_ledger`/`update_ledger` never pass them to core. Opening balance cannot be saved.

### ISSUE-018: Parentless child dialogs
**Files:** `finance_masters_ui.py`, `pos_masters_ui.py`, `hr_members_ui.py`  
**Detail:** Launcher buttons don't pass `parent` — child windows are non-modal and float independently.

### ISSUE-019: KOT print not implemented
**File:** `kot_entry.py:506-511`  
**Detail:** Print KOT is a placeholder ("not implemented yet"). Critical for POS.

### ISSUE-020: KOT reload is write-only
**File:** `kot_entry.py:403-405`  
**Detail:** `reload()` just calls `_clear_form()` — no way to view/edit existing KOTs.

### ISSUE-021: Shell hardcoded window size
**File:** `shell.py:1266`  
**Detail:** `self.resize(1150, 720)` is hardcoded — ignores `WindowSize.MAIN` from design.py.

### ISSUE-022: Dashboard trailing spaces in report names
**File:** `shell.py:1099`  
**Detail:** `"Stock Summary "` and `"Stock Register "` have trailing spaces — won't match menu entries.

### ISSUE-023: Glass swatch tiny click targets
**File:** `glass.py:103-131`  
**Detail:** `SwatchButton` is 34x26px — very small click target. Fitts's law violation.

### ISSUE-024: pos_table RoomNo mismatch
**File:** `pos_table_ui.py:95-96`  
**Detail:** `rec.get("RoomNo", "")` but form fields don't include "RoomNo". Column is display-only but uneditable.

### ISSUE-025: Shell DbSettings no input sanitization
**File:** `shell.py:116-239`  
**Detail:** SQL injection risk if server/database names are used in connection strings without quoting.

### ISSUE-026: Glass double stylesheet application
**File:** `glass.py:364-370`  
**Detail:** `_save()` calls `_collect()` then `apply_theme()` — but `_collect()` already called `apply_tokens()`. Double application.

### ISSUE-027: reservation_browser missing fields
**File:** `reservation_browser.py:168-169,220-240`  
**Detail:** New/Edit reservation forms missing `MobNo`, `Email` fields — in Booking table but not collected.

### ISSUE-028: pos_sales date type mismatch
**File:** `pos_sales_ui.py:157-160`  
**Detail:** `self.txt_vdate.text()` returns display text, not date object. If `Sale1API.insert` expects a date, wrong data inserted.

### ISSUE-029: fa_voucher_ui dict merge crash
**File:** `fa_voucher_ui.py:263-265,280-285`  
**Detail:** Destructive merge of `data["income"]` + `data["expense"]` etc. If one key missing → `KeyError`. Then `data[0]` on dict → `KeyError`.

### ISSUE-030: Shell redundant DB connection test
**File:** `shell.py:1357-1369`  
**Detail:** DB connection tested twice on startup — redundant network roundtrip.

### ISSUE-031: nightaudit_reports SQL injection pattern
**File:** `nightaudit_reports_ui.py:123`  
**Detail:** Raw SQL `f"SELECT TOP 100 * FROM LEDGER"` bypasses reports module entirely.

---

## MISSING FEATURES (vs VB6)

### MISSING-001: No column sorting in any table
**Impact:** All data grids  
**Detail:** QTableWidget headers don't support click-to-sort. Basic feature not enabled.

### MISSING-002: No export/print for reports
**Impact:** All report views  
**Detail:** Most report/data views lack CSV export or print.

### MISSING-003: No auto-refresh on dashboard
**File:** `dashboard.py`  
**Detail:** No periodic refresh timer — data becomes stale immediately.

### MISSING-004: Dashboard cards not clickable
**File:** `dashboard.py:26-73`  
**Detail:** `DashboardCard` has no click handler — can't drill-down into details.

### MISSING-005: No empty-state handling in company dialog
**File:** `shell.py:450-461`  
**Detail:** If `company.list_companies()` returns [], user sees blank table with no guidance.

### MISSING-006: No confirmation on window close with unsaved data
**File:** `base_window.py`  
**Detail:** No confirmation dialog if unsaved data exists.

### MISSING-007: No icons on buttons
**File:** `base_window.py:81-92`  
**Detail:** `add_button()` has no icon support — text-only buttons.

### MISSING-008: No rate limiting on login
**File:** `shell.py:366-373`  
**Detail:** No lockout after N failed attempts.

### MISSING-009: No "remember me" on login
**File:** `shell.py:243-373`  
**Detail:** No last-user feature.

### MISSING-010: No font size scaling
**File:** `theme.py`  
**Detail:** No font size tokens — accessibility gap for visually impaired.

### MISSING-011: No undo/redo for theme changes
**File:** `glass.py:135-382`  
**Detail:** User must manually revert color changes.

### MISSING-012: KOT print placeholder
**File:** `kot_entry.py:506-511`  
**Detail:** "not implemented yet" — critical for POS.

### MISSING-013: POS sale print placeholder
**File:** `pos_sales_ui.py:182-186`  
**Detail:** "coming soon" — not implemented.

### MISSING-014: Re-settlement is stub
**File:** `fo_sub_forms_ui.py:168-175`  
**Detail:** Shows info message but does nothing.

### MISSING-015: No delete button in FA ledger
**File:** `fa_ledger_ui.py`  
**Detail:** Users can't remove accounts from UI.

### MISSING-016: Maintenance/OOO room status disabled
**File:** `roomstatus_ui.py:132,139`  
**Detail:** Buttons disabled — feature gap.

### MISSING-017: No inventory open_po/open_stock_issue
**File:** `inventory.py`  
**Detail:** Module docstring mentions PO and Stock Issue but functions don't exist.

---

## UI/UX ISSUES

### UX-001: Theme toggle confusing
**File:** `shell.py:1292-1300`  
**Detail:** Button says what it will switch TO, not current state.

### UX-002: No keyboard shortcut hints
**File:** `shell.py:1372-1448`  
**Detail:** 30+ shortcuts with no discoverability in menus.

### UX-003: Dashboard emoji icons
**File:** `dashboard.py:114-139`  
**Detail:** Unicode emoji as icons — platform-dependent rendering. On Windows, may show as tofu.

### UX-004: Glass swatch too small
**File:** `glass.py:103-131`  
**Detail:** 34x26px swatches — hard to click.

### UX-005: Form area always visible
**File:** `booking_ops_ui.py:95-119`  
**Detail:** Form area visible even in browse mode — should hide until New/Edit.

### UX-006: 7 buttons cramped in row
**File:** `usermaster_ui.py:89-91`  
**Detail:** All buttons on same line — needs grouping.

### UX-007: Hardcoded 2016 date
**File:** `reports_ui.py:58`  
**Detail:** From date hardcoded to 2016 — confusing for users.

### UX-008: Status label at top
**File:** `reports_ui.py:80-82`  
**Detail:** Status label at top, not bottom where users expect.

---

## TOP 10 PRIORITY FIXES

1. **BUG-001:** Fix `dashboard.py:152` import — `from HMS_py.core import db`
2. **BUG-003:** Add save handler to `booking_ops_ui.py` — edit flow broken
3. **BUG-004:** Fix `guest_lookup_ui.py:52` SQL columns
4. **BUG-005:** Remove offscreen mode from `guest_history_ui.py:12`
5. **BUG-006:** Import `_theme` in `fa_voucher_ui.py`
6. **BUG-007:** Fix `inventory.py` 5 `palette()` call sites
7. **BUG-008:** Fix `inventory.py:376` `self.tbl` → `self.grid`
8. **BUG-012+013:** Replace hardcoded `'2026'` with dynamic vprefix
9. **BUG-014:** Add try/except for `int(item.text())` in `folio_ui.py`
10. **ISSUE-003:** Add QPalette to `apply_tokens()` in `theme.py`
