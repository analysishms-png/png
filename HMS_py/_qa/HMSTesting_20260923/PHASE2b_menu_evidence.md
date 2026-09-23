# PHASE 2b/2c Evidence — Menu bugs + Front Office (2026-09-23)

## General Setup top menu (Main Setup module)
Visible:
- Tax Master >
  - Tax Master
  - Tax Structure
  - Payment Type
  - Parameter
  - Revenue Group Setting
- Printing Parameters >

### BUG-GENMENU-MISSING
Hint text on Main Setup page: "(ported: Plan/City/Sundry/Narration/Venue/Department)"
NOT present anywhere in General Setup menu tree:
- Plan Master
- City Master (City Master is under Front Office top menu, not General Setup)
- Sundry
- Narration
- Venue
- Department
Root cause candidates: menu.py menubar_for (DB User_Module flags) vs shell.py L966-1052 registry entries; flat groups list L556-582 may not wire these.

### BUG-STATE-MASTER-WRONG-PATH
Keyboard nav (click General Setup, Down, Right, Down, Enter) opened **State Master (P2-c)** instead of Tax Master.
Implies first submenu action after open may be mis-ordered OR Down selected wrong parent item.
Mouse path: General Setup → Tax Master submenu → leaf Tax Master sometimes only highlights/closes without firing (click 410,126 failed once).

### BUG-TAXMENU-CLICK-FLAKY
Coordinate click on Tax Master leaf closed menu without opening form (twice). Ctrl+Shift+T reliably opened Tax Master.

## Front Office top menu (while Main Setup module active)
Visible items:
- Country Master
- State Master
- City Master
- Market Segment >
- Room Features >
- Room Display

### BUG-FO-MENU-MISMATCH (CONFIRMED after Front Office sidebar active)
Top menus when Front Office selected: Operations | Reports | Tourism Forms | M.I.S. | Tax Reports.
Operations dropdown (popup hwnd 7869282, 281x152 + submenu 4131598):
- WalkIn Checkin >
- Travel Agency Posting
- Bill Reprint >
- Reverse Check Out (OCR: "Reservation Reverse Check Out")
- Merge Room
- Bill Re-Settlement
- Reverse Room Merge
- Plan Meal Tokens
- GRC Printing
Reports dropdown (popup hwnd 15927152, 750x1065):
- Guest In House, House Keeping Report, Arrival & Departure List, Charge Payment Detail,
  Payments By Cashier, Cashier Report, Settlement Report, Cancel Bill Details,
  Room Change History, Arrival And Departure Register, ...
NO "Guest Profile" leaf in Operations or Reports.

DB User_Module probe (probe_fo_menu.py):
- Module_Name='Front Office' srno 51-70: only masters (Country/State/City/Market Segment/
  Room Features/Room Display flag=1; others flag=0). NO Guest Profile row.
- Module_Name='Operations' has WalkIn CheckIn (code FDOMenu) but NO Guest Profile.
- shell.py registry has "Guest Profile" -> fo.open_guestprof (L915) + Ctrl+F (L1569).
- frontoffice.py docstring claims menu leaves 'Guest Profile' / 'Check In' — NOT true for DB menu.

### PASS: Guest Profile via Ctrl+F (not via menu)
- Ctrl+F on Front Office main window opened: Guest Profile (P4-a) - hwnd 15796080, PID 10900
- List cols: Code | Name | Add1 | City | Phone | Mobile
- Record Details: Code (KK###### blank=auto)*, Name*, Address, City Code, Type (India/Foreign),
  Phone, Mobile, Email, Nationality
- Buttons: New/Ctrl+N, Edit/Ctrl+E, Delete, Save, Cancel/Esc, Exit; State: Idle
- Form engine works; menu wiring missing (BUG-FO-MENU-MISMATCH)

### BUG-HINT-LEAK
Front Office canvas still shows Main Setup hint:
"(ported: Plan/City/Sundry/Narration/Venue/Department)"
shell.py L1714 hardcodes this hint for all modules in _on_module.

### PASS: Country Master open
- Clicked Front Office → Country Master
- Window: Country Master (P2-c) - hwnd 3541774 PID 10900
- List columns: Code | Nationality; row KK... visible
- Record Details: Code*, Name*, ShortName, Type (India/Foreign), Nationality
- Buttons New/Edit/Delete/Save/Cancel/Exit present; State: Idle
- Form engine works for non-Tax masters too

## Next
- PHASE 2c: invalid login (wrong password) + lockout message (GUI restart)
- PHASE 3: param_audit 30 mismatches, menu wiring fix (Guest Profile into Operations DB row or flat group)
