# PHASE 4 — Consolidated Evidence Report

**Date:** 2026-09-23  
**Login:** SA / KANPUR · DB Localhost · Moondata2627 · Site Kanpur · Company KK  
**Plan executed:** PHASE 1 P0 → PHASE 2 SA/KANPUR E2E → PHASE 3 bug-fix loop → PHASE 4 regression + audits

---

## 1. Gate results (final)

| Gate | Tool / suite | Result |
|------|--------------|--------|
| Param audit | `tools/param_audit.py` | **0 mismatches** (was 30) |
| API audit | `tools/api_mismatch_audit.py` | **0 mismatches** |
| Registry audit | `tools/registry_audit.py` | **547 leaves · 375 LIVE · 172 SOON · 0 MISSING** |
| Full pytest (parent root) | `python -m pytest -q` | **199 passed** (179 package + 20 UI walkthroughs) |
| Core unit tests | `HMS_py/tests` only | **179 passed** |
| Workspace UI tests | `tests/test_ui_walkthroughs.py` | **20 passed** (incl. 8 AppearanceDialog; overflow closed) |
| Syntax | `python -m compileall` on edited modules | **exit 0** |
| FO flatten | `verify_flatten_fo.py` | **FLATTEN ASSERT OK** |
| Lockout persist | 5 fails → reload → still locked → success unlocks | **PASS** |

---

## 2. PHASE 1 — P0 crash fix
- `ui/base_master.py`: `QWidget` added to PyQt6.QtWidgets import (was NameError on every master form open).
- Verified: `CITY_OPEN_OK`.

## 3. PHASE 2 — SA/KANPUR E2E (evidence files)
- **PHASE2a_taxmaster_evidence.md** — Tax Master via Ctrl+Shift+T, live rows, no-save edit path.
- **PHASE2b_menu_evidence.md** — FO menu, state-master wrong-path bug, tax menu click flakiness, label/row-height/residual bugs logged.
- **PHASE2c_auth_evidence.md** — lockout unit+GUI verified; post-restart login → MainWindow `Moon and Mars Resorts { 2026-27 }` (hwnd 4002330). **Verdict PASS.**

## 4. PHASE 3 — UI / menu / param fixes

### 4a. UI / menu (shell + dialogs)
| Bug | Fix |
|-----|-----|
| BUG-HINT-LEAK | `shell.py` `_MODULE_HINTS` dict; `_on_module` uses per-module canvas hint instead of hardcoded Plan/City/Sundry text |
| BUG-FO-MENU-MISSING | `_inject_ported_extras()` injects Guest Profile / Check In into Front Office Operations (DB has no rows; non-FO modules pass through) |
| AppearanceDialog overflow | `ui/glass.py` resize(680,680) + setMinimumWidth(660) — workspace UI test now **passes** |
| Main Setup workbench gaps | Added City Master, Plan Master, Guest Profile, Check In to FO group (shell.py L558-562) |
| frontoffice docstring | Documents shell-side injection (DB has no Guest Profile leaf) |

### 4b. param_audit 30 → 0 (column-aligned SQL/param fixes)
| File | Function / table | Issue | Fix |
|------|------------------|-------|-----|
| checkin.py | GuestFolio | 13/14 markers | BookingDocId `''` → `?` (14/14) |
| fa_ledger_ops.py | ledgerlog | 25/27 | Added `user` (U_Name) + `vtime` (27) |
| facility_billing.py | FBill2 | 14/16 | Added `vdate` + `restcode` (16) |
| facility_billing.py | LocFac | 7/8 | VALUES `getdate(),?,?` → `?,getdate(),?,?` (U_Name/U_EntDt order) |
| facility_billing.py | SunFac | 21/20 | One extra `?` before `getdate` removed (20) |
| facility_billing.py | DenDetail | 11/10 | Removed extra `?` between getdates (10) |
| facility_billing.py | SunTranFacility | 19/20 | Added one `?` between getdates for U_Name (20) |
| guest_services.py | ComplaintDetail | 10/11 | Added `?` for U_Name (11) |
| guest_services.py | LostFoundDetail | 11/12 | Added `?` for U_Name (12) |
| guest_services.py | GuestWakeUp | 12/13 | Added `?` for U_Name (13) |
| hall_booking.py | HallBook | 31/33 | `...,0,0,?,?` → `?,?,?,?,?,?` (Advance/NetAmount as params) (33) |
| hall_booking.py | HallBook1 | 23/22 | VoidYN `''` moved; added Remarks param (23) |
| hall_booking.py | HallSale1 | 38/36 | Corrected NULL/'' literals + U_Name placement (37 markers, 37 params after audit) |
| hall_booking.py | HallStock | 30/29 + invalid `?='N'` | Rewrote VALUES: VoidYN `''`, DelFlag `'N'` literal; Remarks + U_Name as `?,?` (30/30) |
| hall_booking.py | PayChargeH | 49/43 | Rebuilt VALUES to match column list (43/43) |
| hall_booking.py | SunTranH | 21/20 | Same SunFac fix (20/20) |
| inventory.py | Stock | 23/22 | Removed extra `?` before first getdate (22) |
| member_billing.py | MemBill | 16/15 | Removed extra `?` between getdates (15) |
| nightaudit.py | PayCharge | 10/12 | Dropped literal `0, ""` params (FolioNo/RoomNo already literals) (10) |
| pos.py | KOT | 23/22 | Removed extra `?` after `'N'` (22) |
| pos_hall.py | HallPreCosting | 25/24 | Removed extra `?` after `'N'` (24) |
| pos_sales.py | PayCharge | 45/44 | Rebalanced markers around getdate (44/44) |
| purchase.py | Purch1 | 32/33 | Added missing `?` for U_Name before getdate (33) |
| room_occ.py | RoomOcc | 21/20 | Removed extra `?` for U_Name (20) |
| smartcard_ops.py | SmartCardLedger | 13/15 | Added 2 `?` between getdates (U_Name + Site) (15) |
| smartcard_ops.py | SmartCardReIssue | 10/11 | IssDate → getdate; added `?` for U_Name (11) |
| sms_comm.py | GuestReward | 10/11 | Added `?` for U_AE before final getdate (11) |
| sms_comm.py | AssignDelivery | 11/12 | Added `?` for U_AE before final getdate (12) |
| sms_comm.py | JobSchedule | 9/10 | Added `?` for U_Name before getdate (10) |
| taxstru.py | TaxStru insert L155 | 15/14 | Removed extra `?` after `'A'` (14) |
| taxstru.py | TaxStru update_structure L228 | 15/14 | Same fix (14) |

**Final param_audit: 0 mismatches.**

---

## 5. Known open bugs (updated after PHASE 5)

### Fixed in PHASE 5 (same day follow-up)
| ID | Fix |
|----|-----|
| BUG-FO-NEST (WalkIn/Bill Reprint) | `shell._flatten_fo_operations` — WalkIn CheckIn + Bill Reprint become leaves; Room Status / Expense Entry / Reverse Check Out etc. promoted to Operations siblings (matches `mdi_menu.json`). Assert: `verify_flatten_fo.py` FLATTEN ASSERT OK |
| BUG-LOCKOUT-NOT-PERSISTENT | `core/auth.py` persists attempts to `%TEMP%\hms_py_login_attempts.json`; reload on `_is_locked_out`. Unit proof: 5 fails → lockout → clear memory → reload still locked → success unlocks |
| mdi F&&B Cost Statement MISSING | `reports.VB6_CAPTION_ALIASES["F&&B Cost Statement"]="FBCostStatement"` + shell alias in `_open_report` list → registry opens report engine (was coming-soon) |

### Still open
| ID | Notes | Severity |
|----|-------|----------|
| BUG-STATE-MASTER-WRONG-PATH | Keyboard nav opens wrong form | Medium |
| BUG-TAXMENU-CLICK-FLAKY | Coordinate-based menu clicks flakiness (Ctrl+Shift+T works) | Medium |
| reportlab missing | PDF export falls back to .txt | Low (documented BLOCKED.md) |
| Group-title leaves in EXTRAs probe | Smart Card/SMS "Operations"/"Reports" are Module_Name titles not true leaves (registry probe: only 5 title-like soon rows; real leaf coverage 508 live) | Info |

### PHASE 5 coverage probe
- DB leaves vs registry: **live=508, true-soon≈0** (5 residual are group titles "Operations"/"Reports"/"Sstup").
- Sidebar modules: Finance, Main Setup, Reservation, Front Office, House Keeping, Inventory, POS, Banquet, Night Audit, EPABX, Messaging, Members Mgmt (ini key 9).
- Front Office Operations after flatten: Guest Profile, Check In, WalkIn CheckIn, Room Status, Expense Entry, Forex Receive Entry, Display Rack, House Keeping Screen, Travel Agency Posting, Bill Reprint, Reverse Check Out, Merge Room, Bill Re-Settlement, Reverse Room Merge, Plan Meal Tokens, GRC Printing, Blank GRC — all flat siblings.
- FO Reports group: 26 report leaves (all registry-wired via report engine / aliases).
- `menubar_for("Reports")` empty by design — Reports is a **group** under Front Office / Finance, not a sidebar root (flag=9). Reports still reachable via those modules.

---

## 6. How to re-run gates
```powershell
# From HMS_py package root (HMS_py\HMS_py)
python ..\tools\param_audit.py          # expect 0
python ..\tools\api_mismatch_audit.py   # expect 0
python ..\tools\registry_audit.py       # MISSING=0
python -m pytest -q                     # expect 179 passed (tests/)

# From parent (HMS_py)
python -m pytest "tests\test_ui_walkthroughs.py" -q   # expect 20 passed
```

---

## 7. Verdict
**PHASE 4 + PHASE 5 PASS** — all three audits clean, **199** tests green, AppearanceDialog overflow closed, param mismatches 30→0, FO Operations nesting flattened to mdi siblings, lockout survives restart, F&&B Cost Statement wired. Remaining: BUG-STATE-MASTER-WRONG-PATH, BUG-TAXMENU-CLICK-FLAKY (medium), reportlab PDF fallback (low).
