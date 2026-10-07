# GUI CAPTURE INDEX (Phase 7 — Pass 5 final, regenerated 2026-09-29)

Login: SA / ****** (masked) | Company via 'Company Details' grid | Date: 2026-09-28
Tools: hms_capture2.py + hms_capture3.py (open–poll–shot–safe-close pattern)
Audit trail: ../action_log.csv — **71 verified window-open events**
**Coverage: 180 unique PNGs across 18 folders** (276 captured, 96 byte-identical
duplicates archived → `screenshots/_duplicates/` with `MANIFEST.md`; nothing deleted).
NO data saved anywhere; Night Audit engine never executed (blocklist enforced).

## Navigation architecture [VERIFIED-UI]
- Left strip (x 0–107): **11 module buttons** (Finance, Main Setup, Reservation,
  Front Office, House Keeping, Inventory, Point Of Sale, Banquet, Night Audit,
  HR/Payroll, EXTRAs)
- **4 INI modules have NO strip button** — EPABX, Members, Sale & Marketing, Mall
  Management. INI key 9 menu list has 15 entries; reachable via MDI menu bar
  (HMENU + WM_COMMAND). `hms_capture2.py` now falls back to the menu (Phase 0 fix).
- Top bar (y 23–103): per-module menu buttons (owner-drawn TopBarLib; positions via
  dark-pixel runs)
- Slot-1 = double-click; child forms titled `<Module> > <Group> > <Screen>`

## Screenshot coverage by module folder

| Folder | Unique PNGs | Notes |
|---|---:|---|
| 00_Project_Discovery | 3 | Main MDI, Property Status |
| 01_Login_Security | 11 | login, invalid-user msgbox, company grid, RBAC error |
| 02_Main_Setup | 14 | Tax/Param/Payment/Printing masters + Utility |
| 03_Finance | 20 | Voucher/Expense entry + 16 report screens |
| 04_Reservation | 12 | Res/Cancel, History, LookUp Rooms/Types, Status |
| 05_Front_Office | 37 | WalkIn CheckIn + Room Status/Expense/Rack/Reprint/… |
| 06_House_Keeping | 10 | 6 screens (**+4 recovered from 07_Inventory**) |
| 07_Inventory | 10 | Indent, Purchase, MR Entry |
| 08_POS | 20 | 4 reports + 8 MIS + High Way point/MOON TEA outlets |
| 09_Banquet | 15 | Booking, Catalog, Pre-Cost + 9 reports |
| 10_Night_Audit | 7 | GSTR-1/2/2A/2B/4A/4B, Reconciliation (reports only) |
| 11_HR_Payroll | 12 | Loan/Leave + 8 reports |
| 12_EPABX | 1 | **menu-tab only — screen not opened (Phase 4)** |
| 13_Messaging | 4 | Inbox, SMS API setup |
| 14_Members_Management | 1 | **menu-tab only — screen not opened (Phase 4)** |
| 15_Sales_Marketing | 1 | **menu-tab only — screen not opened (Phase 4)** |
| 16_Mall_Management | 1 | **menu-tab only — screen not opened (Phase 4)** |
| EXTRAs | 1 | module row only (slot-1 no-window, pass-6 open) |
| **Total** | **180** | archived duplicates: +96 in `_duplicates/` |

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
### House Keeping (6) — Complaint Master, House Keeping Screen, Claim Entry, Complaint
Clearance (+2 variants; folder repaired 2026-09-29)
### Inventory (3) — Indent, Purchase Entry, MR Entry
### Point Of Sale (5) — Payment Receive Entry, Sales Register, Stewardwise Sale, Table wise Sale
### Banquet (4) — Booking Inquiry, Banquet Booking, Catalog Selection, Chef Pre-Costing
### HR/Payroll (2) — Loan/Advance, Leave

## Key form: WalkIn CheckIn (C4_WalkInCheckIn_Form.png) [VERIFIED-UI]
Entry-point chooser with 6 actions:
- Guest Profile | Check In | Duplicate Last Check In
- Check In with Guest History | Advance Entry | Rooms Display
+ 48 text-edit controls on embedded panel(s) (guest fields — decompiled fdWalkInEntry /
fdCheckIn inserts me wahi columns: Name, Add1/2, City, Nationality, ArrFrom…)
VB6 mapping: fdWalkInEntry → GuestFolio/RoomOcc inserts (FRONT_OFFICE_LIFECYCLE.md §2)

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

## Phase 1 hygiene pass (2026-09-29)
- 4 House Keeping captures recovered from `07_Inventory/` → `06_House_Keeping/`
  (capture tool had mapped HK slots to the Inventory folder)
- 96 byte-identical duplicate PNGs archived → `screenshots/_duplicates/<orig folder>/`
  with `screenshots/_duplicates/MANIFEST.md` (group-wise md5 evidence)
- This index regenerated: previous version claimed "97 PNGs total" (actual 276)

## Remaining (pass 6 → Phase 4)
- **Zero-coverage modules:** EPABX, Members, Sales & Marketing, Mall Management —
  reach via MDI menu (new fallback in `hms_capture2.py:click_module()`)
- EXTRAs slot-1 abhi bhi no-window (single + dblclick) — in-app toolbar hoga; manual explore
- Setup slot-9 (dblclick nothing), FO/Res dropdown sub-items
- Banquet slots 5,6,8 (dblclick nothing this pass)
