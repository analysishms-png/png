# MIGRATION_MASTER_BUG_REGISTER

VB6 → Python migration loop ka central bug register (master prompt ke anusar).
Har bug: ID, module, VB6/Python source, expected vs current, root cause, fix,
files, test, status.

## Main Setup live-verification batch — 2026-10-03

Evidence: offscreen login (SA / Kanpur creds) → Main Setup module → 11 groups
→ 95 leaf screens captured in `_ui_shots/mainsetup/` (montages in
`_ui_shots/montages/`), triage JSON `_ui_shots/mainsetup/_triage_g*.json`,
drivers `_shot_mainsetup.py`, `_probe_ms_bugs.py`.

| ID | Screen / Leaf | VB6 source | Expected (VB6) | Current (was) | Root cause | Fix | Files | Test | Status |
|---|---|---|---|---|---|---|---|---|---|
| BUG-MS-01 | Utility → Menu Item Copy | frmMenuItemCopy.frm | dialog khulta hai, outlet-to-outlet copy | menu click par kuch nahi hota (dead click) | `open_menu_item_copy()` dialog banata tha par `dlg.exec()`/`show()` hi nahi tha — return value bhi ignore hoti | `dlg.exec()` end me (baaki openers wahi pattern) | HMS_py/ui/pos_masters_ui.py | probe: dialog opens; tests/unit/test_main_setup_desktop_ui.py + test_wrong_target_wiring.py | VERIFIED |
| BUG-MS-02 | EPABX → Call Control Master (+ sabhi `_open_fv_list` leaves: T.D.S. Certificate Entry, Cheque registers, Complaint/Lost&Found, Booking Inquiry, Location Facilities, Telephone Call Entry, Location-Master, Party Locations) | TelCallControlMast.frm | viewer window dikhti hai | dead click | `_open_fv_list()` `ReportViewer` bana kar return karta tha; registry lambdas return value ignore karti hain → kabhi show hi nahi hota | `v.exec()` (VB6 forms modal the) + return v | HMS_py/ui/shell.py | probe: ReportViewer opens; same tests | VERIFIED |
| BUG-MS-03 | Utility → Guest LookUp | GuestLookUp (GuestProf) | list turant bhari dikhe (guests exist) | hamesha khaali (0 rows) | query `ISNULL(Phone,'')` — GuestProf me `Phone` column hi nahi hai (asli: PhoneNo/MobileNo) → SQL error, aur `_load_data` exception chup-chaap swallow karta tha | PhoneNo use kiya + print on failure | HMS_py/ui/guest_lookup_ui.py | probe: 7215 guests loaded; desktop-surface test | VERIFIED |
| BUG-MS-04 | Members Mgmt → Environment Settings | MemberEnviro.frm | MemEnviro settings dikhein | 0 setting(s) loaded | `get_memenviro()` `WHERE Site_Code='KK'` — legacy row ka `Site_Code=''` → 0 rows. VB6 `select * from MemEnviro` (bina filter) padhta tha (HMS.bas evidence) | site-filter miss par `SELECT TOP 1 * FROM MemEnviro` fallback | HMS_py/core/member_billing.py | probe: 6 settings loaded | VERIFIED |
| BUG-MS-05 | Inventory → Opening Stock | FrmOPStock.frm | ItemMast items load hon (3292) | "0 items loaded" | filter `ISNULL(ActiveYN,'Y')='Y'` par ItemMast me `ActiveYN='Yes'` stored hai (3281 rows) → 0 matches | `ISNULL(ActiveYN,'Yes') IN ('', 'Y', 'Yes')` (blank = active, VB6 semantics) | HMS_py/ui/misc_sub_forms_ui.py | probe: 3292 rows | VERIFIED |
| BUG-MS-06 | (repo integrity) parallel "desktop-contract" pass ne 3 working files ko stub/fake-data shims se replace kar diya tha | — | real implementations bane rahein | `guest_lookup_ui.py` (233→56 lines, fake query), `misc_sub_forms_ui.py` (885→80, "Compatibility shim" dialogs), `member_billing.py` (194→55, static fake dict, `list_all()` → []) | unknown parallel agent; master prompt ke against (no fake data / no rewrites) | HEAD se restore (stubs backed up in `_stubs_backup_20261003/`) + MS-03/04/05 re-applied | 3 files | tests: test_main_setup_desktop_ui + test_wrong_target_wiring (101 total) pass | VERIFIED — dobara stub hone par yahi restore karo |

### Screens verified OK (screenshot audit)
Tax Master (Browse 1/9, saari columns bhari — pehle wala sort-bug fix chalu),
Tax Structure (31 structures, lines grid), Payment Type, Parameter/Enviro
(87 settings), Printing Parameters, Market Segment, Business Source, Charge
Master, Room/City/State/Country/Unit/Narration/TDS/Ledger/Group masters,
Voucher Environment (171 types), User Master (68), Task Scheduler, POS
masters, HR masters, etc. — 95/95 leaves open hote hain (4 dead-click the,
ab fix).

### Data-empty (DB me rows hi nahi — code sahi, "expected empty")
Holiday (0), GuestStat (0), RoomFeature (0), ComboPackHead/Detail (0),
SmartCardMaster (0), CatalogMast (0), VenueFeatures (0), GuestParam (0),
DeliveryBoy (0), TelCallType (0), HappyHours (0) — ye screens VB6 me bhi
is data par khaali dikhtin.

### Open / next
- Plan Master: browse label 0/0 vs list 9 rows (show-time fill ka timing ya
  counter bug — confirm karna baaki; layout bhi squeeze hai).
- Group Accounts / User Master screenshots me 1/3 aur 1 row dikhe the —
  probe par 73/68 rows aate hain (mid-fill capture artifact); recapture with
  longer wait.
- Purchase Sundry Setting ki window title "Outlet Bill Sundry Setting" hai
  (VB6: OutLetSundry/DepartSundry reuse — verify caption).
- Login screen cream-on-white labels + sidebar lowercase module names
  (VB6: "Finance"/"Main Setup" title case) — cosmetic parity.
- Parameter (Enviro) table stretch nahi + dark-on-dark text.
- Open Item Consumption left grid columns squeezed (headers truncated).
