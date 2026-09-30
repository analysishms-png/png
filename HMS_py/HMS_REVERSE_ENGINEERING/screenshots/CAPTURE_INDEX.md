# GUI CAPTURE INDEX (Phase 7 — Pass 5 final)

Login: SA / ****** (masked) | Company via 'Company Details' grid | Date: 2026-09-28
Tools: hms_capture2.py + hms_capture3.py (open→poll→shot→safe-close pattern)
Audit trail: ../action_log.csv — **307 rows (241 with screenshot refs), Related SQL 307/307**
NO data saved anywhere; Night Audit engine never executed (blocklist enforced).

## Current totals (refreshed 2026-09-30)
- **309 PNGs** in this folder: **182 module-evidence** + 27 top-level `GUI_*` + 100 `_duplicates`
- 18 module folders, one per capture target; per-module manifest = `<module>/README.md`
  (file, size, state, evidence tag); naming convention = `SCREENSHOT_STANDARD.md` (spec §17)
- Per-module PNG counts: 05_Front_Office 37, 03_Finance 20, 08_POS 20, 02_Main_Setup 16,
  09_Banquet 15, 04_Reservation 12, 11_HR_Payroll 12, 01_Login_Security 11,
  06_House_Keeping 10, 07_Inventory 10, 10_Night_Audit 7, 13_Messaging 4,
  00_Project_Discovery 3, 12_EPABX/14_Members/15_Sales/16_Mall/EXTRAs 1 each
- B-series batch walks (menu-level) + C-series form captures cover all 15 menu modules;
  depth per module documented in each module's `screens/screens.md`

## Navigation architecture [VERIFIED-UI]
- Left strip (x 0–107): 11 module buttons (Finance, Main Setup, Reservation, Front Office,
  House Keeping, Inventory, Point Of Sale, Banquet, Night Audit, HR/Payroll, EXTRAs)
- Top bar (y 23–103): per-module menu buttons (owner-drawn TopBarLib; positions via dark-pixel runs)
- Slot-1 = double-click; child forms titled `<Module> > <Group> > <Screen>`

## Complete screen inventory captured (48 windows)

### Front Office (7)
WalkIn CheckIn (with control inventory below), Room Status, Expense Entry, Display Rack,
Bill Reprint + pass-2 set

### Reservation (4)
Reservation/Cancellation, Reservation With History, Look Up Rooms, Look Up Room types

### Night Audit (5) — REPORTS ONLY, audit engine NOT executed
GSTR-1, GSTR-2(3), GSTR-2(4A), GSTR-2(4B), Reconciliation (GSTR-2A)

### Finance (1) — Voucher Entry
### Main Setup (5) — Tax Master, Tax Structure, Payment Type, Parameter, Printing Parameters
### House Keeping (4) — Complaint Master, House Keeping Screen, Claim Entry, Complaint Clearance
### Inventory (1) — Indent (strip mapping overlap noted: HK/Inv slots interleave)
### Point Of Sale (5) — Payment Receive Entry, Sales Register, Stewardwise Sale, Table wise Sale
### Banquet (4) — Booking Inquiry, Banquet Booking, Catalog Selection, Chef Pre-Costing
### HR/Payroll (2) — Loan/Advance, Leave

## Key form: WalkIn CheckIn (C4_WalkInCheckIn_Form.png) [VERIFIED-UI]
Entry-point chooser with 6 actions:
- Guest Profile | Check In | Duplicate Last Check In
- Check In with Guest History | Advance Entry | Rooms Display
+ 48 text-edit controls on embedded panel(s) (guest fields — decompiled fdWalkInEntry /
fdCheckIn inserts me wahi columns: Name, Add1/2, City, Nationality, ArrFrom...)
VB6 mapping: fdWalkInEntry -> GuestFolio/RoomOcc inserts (FRONT_OFFICE_LIFECYCLE.md §2)

## Environment notes
- pywinauto UIA (64-bit) VB6 pe unreliable — win32 + pixel-analysis used
- MDI minimize-hone pe screenshots garbage — har step pe window-state verify
- HK/Inventory strip slots overlap — pass-4 me per-button verify
- Night Audit dropdown me audit engine items hain — NA_BLOCK list enforced (start/run/post)

## Pass 5 additions (2026-09-28)
- HK slot-1: **Complain Master**; HK slot-3: Complaint Clearance (dblclick)
- POS **9 slots** detected: slots 5–8 dblclick = **High Way point outlet**: Sale Bill Entry,
  Settlement Entry, POS Bill Reprint; slot-8 = **MOON TEA CAFE > Bill Lookup**
  (multiple outlets per POS module confirmed live!)
- Banquet 8 slots: slot-7 = **Bill Look Up**
- MenuHelp per-user analysis: 19_VB6_Logic/MENUHELP_PER_USER_ANALYSIS.md
  (69 users, SA=440 items vs kot=4; Flag E/R/N/V semantics decoded; trees exported)

## Remaining (pass 6)
- EXTRAs slot-1 abhi bhi no-window (single + dblclick) — in-app toolbar hoga; manual explore
- Setup slot-9 (dblclick nothing), FO/Res dropdown sub-items
- Banquet slots 5,6,8 (dblclick nothing this pass)

## Pass 4 additions (2026-09-28)
- **In Box** → 'Inbox' window (EXTRAs strip bottom button) [13_Messaging]
- **Property Status** → 'Property Status' window [00_Project_Discovery]
- Main Setup slots 7/8 (dblclick): **Utility > Menu Item Copy**, **Utility > Guest LookUp**
- Inventory slots 2–4: **Purchase Order, M.R. Entry, Purchase Bill**
- Finance slot-1 (dblclick): Voucher Entry; HR slot-1 (dblclick): Leave
- FO WalkIn CheckIn full control dump → 05_Front_Office/CHECKIN_FIELD_MAP.md
- SQL trace session documented → 20_SQL_Tracking/SQL_TRACKING_RESULTS.md (17,525 stmts,
  write-statement accounting: 40 = app startup normalization + staging cleanup, 0 business-data changes)
