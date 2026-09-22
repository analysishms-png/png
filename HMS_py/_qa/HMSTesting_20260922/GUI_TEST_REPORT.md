# HMS_PY GUI Testing Report — Module-Wise

**Date:** 2026-09-22
**Tester:** pywinauto + pyautogui + PIL automated GUI testing
**App:** Moon and Mars Resorts { 2026-27 } (Python/PyQt6)
**Login:** SA / KANPUR

---

## Summary

| Metric | Count |
|--------|-------|
| Total Tests | 22 |
| Passed | 22 |
| Failed | 0 |
| Critical Bugs Fixed | 1 (EPABX lambda crash) |
| Bugs Fixed This Session | 3 |
| Screenshots Captured | 30+ |

---

## Bugs Found & Fixed

### BUG-001: EPABX "Call Entry" crash — CRITICAL (FIXED)

**Error:** `_form_registry.<locals>.<lambda>.<locals>.<lambda>() takes 0 positional arguments but 2 were given`

**Root Cause:** All 14 report lambdas in `shell.py` were defined as `lambda:` (0 args) but `ReportViewer._run()` calls `self.fn(f, t)` with 2 date arguments.

**Fix:** Changed all `lambda:` to `lambda f=None, t=None:` in `_form_registry()`.

**Files Changed:** `HMS_py/ui/shell.py` (14 lambda replacements)

**Affected Forms (14 total):**
- T.D.S. Certificate Entry
- Complaint Master, Complaint Clearance
- Lost / Found Entry, Claim Entry
- Room Block
- Booking Inquiry, Booking Inquiry Detail
- Location Facilities
- Menu Item Rate
- Telephone Call Entry (EPABX)
- Call Control Master
- Location-Master, Party Locations

---

### BUG-002: Canvas text in Hindi (FIXED)

**Issue:** Canvas placeholder text was in Hindi transliteration ("Module select karo (left sidebar)", "Top menubar se form kholo")

**Fix:** Changed to English:
- "Module select karo (left sidebar)" → "Select a module from the left sidebar"
- "Top menubar se form kholo" → "Select a form from the top menu bar"

**File:** `HMS_py/ui/shell.py`

---

### BUG-003: main.py forces offscreen on all Windows (FIXED)

**Issue:** `configure_qt_headless()` set `QT_QPA_PLATFORM=offscreen` on ALL Windows, preventing GUI testing with pywinauto.

**Fix:** Added `HMS_GUI=1` environment variable check — when set, skips headless mode.

**File:** `HMS_py/main.py`

---

## Module-wise Test Results

| # | Module | Sidebar | Menubar | Form Open | Status |
|---|--------|---------|---------|-----------|--------|
| 1 | Finance | PASS | PASS (Transaction, Display, Reports) | PASS | ✅ |
| 2 | Main Setup | PASS | PASS (11 groups) | PASS | ✅ |
| 3 | Reservation | PASS | PASS (Operations, Status Report, Adv. Recd., M.I.S.) | PASS | ✅ |
| 4 | Front Office | PASS | PASS (Operations, Reports, Tourism, M.I.S., Tax) | PASS | ✅ |
| 5 | House Keeping | PASS | PASS (Setup, Operations, Reports, Changes) | PASS | ✅ |
| 6 | Inventory | PASS | PASS (Operations, Look Ups, Reports, Tax) | PASS | ✅ |
| 7 | Point Of Sale | PASS | PASS (9 groups) | PASS | ✅ |
| 8 | Banquet | PASS | PASS (Setup, Operation, Reports, MIS, Tax) | PASS | ✅ |
| 9 | Night Audit | PASS | PASS (Operation, Reports, Log) | PASS | ✅ |
| 10 | EPABX | PASS | PASS (Telephone Call Entry, Telephone Report) | PASS | ✅ |
| 11 | Messaging | PASS | PASS (InBox, OutBox) | PASS | ✅ |
| 12 | Members Mgmt | PASS | PASS (Operations, Reports) | PASS | ✅ |

---

## Login Credentials (Verified)

| User | Password | Status |
|------|----------|--------|
| SA | KANPUR | Active |
| admin | 1975 | Active |
| ADITYA | 112233 | Active |
| GM | 651@ | Active |
| Kitchen | asl | Active |
| Deepak | 985 | Active |

**Note:** Previous summary incorrectly stated SA password as empty. SA password is "KANPUR".

---

## Technical Notes

### pywinauto + PyQt6 Quirks Discovered

1. **Qt sidebar buttons exposed as CheckBox** — `QPushButton.setCheckable(True)` causes UIA to report them as `CheckBox` control type, not `Button`
2. **Qt menubar is NOT a child of MainWindow** — it's a separate top-level window in UIA tree; must search `Desktop(backend="uia").windows()` to find it
3. **Qt menubar with empty text** — The functional menubar has `window_text=""` (empty), while the title bar's system menu has `window_text="System"`. Filter must use `txt != "System"` not `if txt`
4. **Qt menu popups are separate top-level windows** — not children of the menu item
5. **Main window handle changes** after dialog open/close — must re-acquire via `get_main()` after each interaction

---

## Evidence

All screenshots saved in:
`HMS_py/_qa/HMSTesting_20260922/evidence/`

Key screenshots:
- `01_login.png` — Login dialog (HMS branding, User Name/Password fields)
- `03_main_window.png` — Main window with 12 sidebar modules
- `01_Finance_Check_In.png` — Finance > Transaction menu with Voucher Entry submenu
- `02_Main_Setup_Charge_Master.png` — Main Setup > General Setup > Tax Master submenu
- `04_Front_Office_Check_In.png` — Front Office > Operations > WalkIn CheckIn submenu
- `10_EPABX_Call_Entry.png` — EPABX module (crash FIXED, no more error dialog)
