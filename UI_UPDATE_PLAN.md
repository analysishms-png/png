# HMS_py UI UPDATE PLAN
## Based on VB6 Analysis (FODER/ forms) & Modern PyQt6 Implementation

---

## 1. VB6 MENU STRUCTURE ANALYSIS (from MDIForm1.frm & User_Module table)

### 1.1 Sidebar Roots (flag=9) - 23 modules
| Code | Display Name | srno | Status |
|------|--------------|------|--------|
| FA | Finance | 1 | ✅ Partial |
| Mast | Main Setup | 42 | ✅ Complete |
| SCRD | - | 185 | ❌ Skip |
| Reserv | Reservation | 188 | ✅ |
| FrontDesk | Front Office | 216 | ✅ |
| HouseKeeping | House Keeping | 287 | ⚠️ Partial |
| Purchase | Inventory | 309 | ⚠️ Partial |
| Restaurant | Point Of Sale | 353 | ✅ |
| Banquet | Banquet | 411 | ✅ |
| NightAudit | Night Audit | 450 | ✅ |
| PayRoll | HR/Payroll | 484 | ✅ |
| Telephone | EPABX | 502 | ⚠️ Partial |
| Message | Messaging | 506 | ❌ Skip |
| Member | Members Mgmt | 509 | ✅ |
| SMS | SMS | 532 | ⚠️ Partial |
| MallManage | Mall Mgmt | 538 | ❌ Skip |
| Odc | Outdoor Banquet | 549 | ❌ Skip |
| EXTR | EXTRAs | 586 | ⚠️ Partial |
| DirectSale | Direct Sale | 617 | ❌ Skip |
| mnuWindow | Windows | 619 | ❌ System |
| mnuExit | Exit | 623 | ❌ System |
| UTLL | Sale Bill Modification | 624 | ❌ Skip |
| GridPopUp | PlanPopup | 625 | ❌ Skip |
| mnuMdI | MDI | 628 | ❌ System |

---

## 2. CURRENT PYTHON UI STATUS

### 2.1 Implemented UI Modules (34 files in HMS_py/ui/)
| UI File | VB6 Module | Status |
|---------|------------|--------|
| shell.py | Main flow (Login→Company→Main) | ✅ Complete |
| base_master.py | Master form engine | ✅ Complete |
| p2_masters.py | Main Setup masters | ✅ Complete |
| general_setup_ui.py | General Setup | ✅ Complete |
| frontoffice.py | Front Office | ✅ Complete |
| reservation_browser.py | Reservation | ✅ Complete |
| folio_ui.py | Folio/Check-Out | ✅ Complete |
| pos_masters_ui.py | POS Masters | ✅ Complete |
| pos_na.py | POS/NA | ✅ Complete |
| pos_sales_ui.py | POS Sales | ✅ Complete |
| pos_stock_ui.py | POS Stock | ✅ Complete |
| pos_delivery_ui.py | POS Delivery | ✅ Complete |
| pos_happy_ui.py | POS Happy Hours | ✅ Complete |
| pos_table_ui.py | POS Table | ✅ Complete |
| pos_packing_ui.py | POS Packing | ✅ Complete |
| banquet_masters_ui.py | Banquet Masters | ✅ Complete |
| hall_booking_ui.py | Hall Booking | ✅ Complete |
| hr_members_ui.py | HR/Members | ✅ Complete |
| hr_payroll_ui.py | HR Payroll | ✅ Complete |
| member_billing_ui.py | Member Billing | ✅ Complete |
| guest_services_ui.py | Guest Services | ✅ Complete |
| facility_billing_ui.py | Facility Billing | ✅ Complete |
| booking_ops_ui.py | Booking Operations | ✅ Complete |
| expense_ui.py | Expense Entry | ✅ Complete |
| roomstatus_ui.py | Room Status | ✅ Complete |
| plan_master.py | Plan Master | ✅ Complete |
| kot_entry.py | KOT Entry | ✅ Complete |
| taxstru_ui.py | Tax Structure | ✅ Complete |
| inventory.py | Inventory | ✅ Complete |
| scheme_tds_ui.py | Scheme/TDS | ✅ Complete |
| reports_ui.py | Reports Center | ✅ Complete |
| fa_ledger_ui.py | Finance Ledger | ✅ Complete |
| sys_config_ui.py | System Config | ✅ Complete |
| usermaster_ui.py | User Master | ✅ Complete |

---

## 3. MODULE-BY-MODULE VB6→PYTHON MAPPING & GAPS

### 3.1 MAIN SETUP (Mast - srno 42) ✅ COMPLETE
**VB6 Forms (FODER/):**
- FrmControlPanel.frm → general_setup_ui.py (RoomFeature, GodownMast, VoucherCat)
- FrmRoomCatMast.frm → p2_masters.open_roomcategory
- FrmRoomMast.frm → p2_masters.open_roommaster
- FrmSeasonMast.frm → p2_masters.open_seasonmaster
- FrmPackageMast.frm → p2_masters.open_packagemaster
- CompMast.frm / FrmCompany.frm → p2_masters.open_companymaster
- DepartMast.frm → p2_masters.open_depart
- FrmVenueMast.frm → p2_masters.open_venue
- FrmVoucher.frm / FaVtype.frm → general_setup_ui.open_vouchertype
- FrmEnviro.frm → enviro_ui.open_enviro
- FrmGuestParamMast.frm → general_setup_ui.open_guestparam
- FrmPrintModule.frm → general_setup_ui.open_printing
- SundryMast.frm → p2_masters.open_sundry
- FaNarrMast.frm → p2_masters.open_narr
- FrmChargeMast.frm → p2_masters.open_fixcharge
- frmUnitMast.frm → p2_masters.open_unit
- FrmItemMast.frm → p2_masters.open_item
- Country/State/City masters → p2_masters (Country, State, City, Area)

**Current Implementation:** All masters present in p2_masters.py + general_setup_ui.py + shell.py registry
**Gaps:** None - fully implemented

---

### 3.2 FRONT OFFICE (FrontDesk - srno 216) ✅ COMPLETE
**VB6 Forms:**
- fdCheckIn.frm → frontoffice.open_checkin
- FdCheckOut.frm → checkout_ui.open_checkout
- fdDisplayFolio.frm → folio_ui.open_folio
- FdRoomDisplay.frm → roomstatus_ui.open_roomstatus
- FrmGuestProf.frm (GuestProfile.frm) → frontoffice.open_guestprof
- FrmRoomMast.frm → p2_masters.open_roommaster
- FrmReservationStatus.frm → reports_ui (Reservation Status)
- RrRoomReservation.frm → reservation_browser.ReservationBrowser
- FrmAdvanceDepDialog.frm → Not needed (merged into checkin)
- FrmWalkInEntry.frm → Walk-in in checkin

**Current Implementation:** All operational screens present
**Gaps:** None - fully implemented

---

### 3.3 RESERVATION (Reserv - srno 188) ✅ COMPLETE
**VB6 Forms:**
- RrRoomReservation.frm → reservation_browser.ReservationBrowser
- FrmReservationStatus.frm → reports_ui (Reservation Status Arrival/InHouse)

**Current Implementation:** Complete

---

### 3.4 POINT OF SALE (Restaurant - srno 353) ✅ COMPLETE
**VB6 Forms (FODER/):**
- pPBill.frm / pPOrder.frm / RSSaleBill.frm → pos_sales_ui.open_pos_sales
- RsKOTEntry.frm / RsTouchScreenKOTEntry.frm → kot_entry.open_kot_entry
- RsPOSDisplay.frm / RsTouchScreenSaleBill.frm → pos_sales_ui (display)
- FrmConsumMast.frm / FrmConsumMast9999.frm → pos_masters_ui (Consumption Master)
- FrmItemCatMast.frm / FrmItemGroupMast.frm → pos_masters_ui (Item Category/Group)
- frmComboMast.frm → pos_masters_ui (Combo Pack)
- pHappyHours.frm / NewHappyHours.frm → pos_happy_ui.open_pos_happy
- FrmDeliveryBoyMast.frm → pos_delivery_ui / pos_masters_ui
- FrmSessionMast.frm → pos_masters_ui (Session Master)
- SchemeMast.frm → scheme_tds_ui.open_scheme
- SmartCard*.frm → Not implemented (no tables)
- FrmPOSBillModification*.frm → Not needed (covered by folio)

**Current Implementation:** All present
**Gaps:** None - fully implemented

---

### 3.5 BANQUET (Banquet - srno 411) ✅ COMPLETE
**VB6 Forms:**
- HallBooking.frm → hall_booking_ui.open_hall_booking
- HallBill.frm / HallBillEstimate.frm → booking_ops_ui (facility billing)
- HallChefPreCosting.frm → Not ported (no tables)
- HallMenuCatalog.frm / HallMenuItemEntry.frm → banquet_masters_ui (Catalog Master)
- FrmVenueMast.frm / FrmVenueFeat.frm → p2_masters / banquet_masters_ui
- HallItemGroupMast.frm → banquet_masters_ui (Item Group)
- HallSundry.frm → banquet_masters_ui (Banquet Bill Sundry)
- HallAdvanceDepDialog.frm → Not needed (merged into hall_booking)

**Current Implementation:** All present
**Gaps:** None - fully implemented

---

### 3.6 INVENTORY (Purchase - srno 309) ⚠️ PARTIAL
**VB6 Forms:**
- FrmItemMast.frm / FrmItemMastRaw.frm → p2_masters.open_item
- FrmItemGroupMast.frm / FrmItemGroupMastRaw.frm → pos_masters_ui (Item Group/Category)
- FrmItemCatMast.frm / FrmItemCatRaw.frm → pos_masters_ui (Item Category)
- FrmChargeMast.frm (Fixed Charge) → p2_masters.open_fixcharge
- PIndent.frm → inventory.open_indent_ui
- FrmOPStock.frm → inventory (Opening Stock)
- FrmGodown.frm → general_setup_ui.open_godown
- FrmStockTransfer.frm → inventory.open_stock_transfer
- FrmPurEnviro.frm → general_setup_ui (Enviro Inventry)
- FrmConsumMast.frm → pos_masters_ui (Consumption Master)
- FrmLocationMast.frm → inventory (Location Master = Godown)

**Current Implementation:**
- ✅ Item Master, Item Group/Category, Godown/Location
- ✅ Indent, Stock Transfer, Opening Stock
- ❌ Purchase Order, Purchase Bill, GRN/Receipt
- ❌ Requisition Slip
- ❌ Kitchen Closing Stock
- ❌ Excise Invoice/Gate Pass

**Gap Analysis:** Only basic masters + indent + transfer implemented. Missing full procurement cycle.

---

### 3.7 NIGHT AUDIT (NightAudit - srno 450) ✅ COMPLETE
**VB6 Forms:**
- frmReNightAudit.frm → Night Audit Log (reports_ui)
- NightAuditLR_Click → FOM reports (Occupancy, VAT, Material)
- NightAuditoR_Click → Guest Ledger, Posting Charge, Re-posting, Control Panel

**Current Implementation:** Night audit reports in reports_ui + nightaudit.py core
**Gaps:** None - reports cover VB6 reports

---

### 3.8 HR/PAYROLL (PayRoll - srno 484) ✅ COMPLETE
**VB6 Forms (FODER/):**
- PrCategoryMast.frm → hr_members_ui / hr_payroll_ui (Category Master)
- PrDesigMast.frm → hr_members_ui (Designation Master)
- PrEmployee.frm → hr_payroll_ui (Employee Master)
- prHoliday.frm → hr_members_ui (Holiday Master)
- prSalCreate.frm → hr_payroll_ui (Salary Creation)
- PrLeavench.frm / prOverTime.frm / PrLoan.frm → Not ported (no tables)
- prAttend.frm → Not ported (no tables)

**Current Implementation:** Masters present in hr_members_ui.py + hr_payroll_ui.py
**Gaps:** Payroll processing (salary creation, leave, overtime, loan) - marked as "Phase P8" (no tables)

---

### 3.9 MEMBERS MGMT (Member - srno 509) ✅ COMPLETE
**VB6 Forms:**
- MembershipMast.frm / MemCatMast.frm → hr_members_ui (Category, Member Master)
- MemFacilityMast.frm / memCategoryFacilities.frm → hr_members_ui (Facility Master)
- MemFacilityEntry.frm / MemVisitEntry.frm → member_billing_ui / guest_services_ui
- MemPaymentReceive.frm / MemBillPrintingModule.frm → member_billing_ui
- MemRenewalEntry.frm → member_billing_ui
- MemberModule.bas → members_masters.py core

**Current Implementation:** Complete

---

### 3.10 EPABX/TELEPHONE (Telephone - srno 502) ⚠️ PARTIAL
**VB6 Forms:**
- TelCallEntry.frm → Not implemented (no tables)
- TelCallTypeMast.frm / TelCallCodeMast.frm / TelExtensionMast.frm → Not in current UI
- TelCallControlMast.frm → Not implemented

**Gap Analysis:** EPABX masters exist in core (epabx_masters.py) but no UI in shell.py registry
**Action:** Add to shell.py registry if tables exist

---

### 3.11 SMS (SMS - srno 532) ❌ SKIP
**VB6 Forms:**
- FrmSmsCenterSettings.frm / FrmSMSEnviro.frm / FrmSMSMultiType.frm
- No SMS tables in database - VB6 used external gateway

**Action:** Skip - document as external dependency

---

### 3.12 EXTRA/UTILITY (EXTR - srno 586, UTLL - srno 624)
**VB6 Forms:**
- FrmControlPanel.frm (srno 4-5 in NightAuditoR) → general_setup_ui
- FrmUserPaymentCollection.frm → Not ported
- VoucherSundrySetting.frm → Not ported
- AccountMerg.frm → Not ported (no tables)
- Sale Bill Modification → Not ported
- Backup Data → Not ported (manual)

**Action:** Document as "no tables" or "manual process"

---

## 4. SHELL.PY REGISTRY UPDATE REQUIRED

### 4.1 Missing Menu Registrations in shell.py _form_registry()

Need to verify these are registered in shell.py:

| VB6 Menu Item | Python Module | Registry Key | Status |
|---------------|---------------|--------------|--------|
| HR/Payroll → Designation Master | hr_members_ui | "Designation" | ✅ |
| HR/Payroll → Category Master | hr_members_ui | "Category  Master" | ✅ |
| HR/Payroll → Holiday Master | hr_members_ui | "Holiday Master" | ✅ |
| HR/Payroll → Employee Master | hr_members_ui | "Employee Master" | ✅ |
| Members Mgmt → Category Master | hr_members_ui | "Category Master" | ✅ |
| Members Mgmt → Member Master | hr_members_ui | "Member Master" | ❌ Missing |
| Members Mgmt → Corporate Member | hr_members_ui | "Corporate Member Master" | ❌ Missing |
| Members Mgmt → Revenue Master | hr_members_ui | "Revenue Master" | ✅ |
| Members Mgmt → Facility Master | hr_members_ui | "Facility Master" | ✅ |
| Inventory → Party Master | pos_masters_ui | "Party Master" | ✅ |
| Inventory → Department | p2_masters | "Department/Outlet" | ✅ |
| Inventory → Item Group | pos_masters_ui | "Item Group" | ✅ |
| Inventory → Item Category | pos_masters_ui | "Item Category" | ✅ |
| Inventory → Item Entry | p2_masters | "Item Master" | ✅ |
| Inventory → Consumption Master | pos_masters_ui | "Consumption Master" | ❌ Missing |
| Inventory → Purchase Sundry | Not ported | "Purchase Sundry Setting" | ❌ Skip |
| Inventory → Location Master | general_setup_ui | "Godown Master" | ✅ |
| Inventory → Opening Stock | inventory | "Opening Stock" | ❌ Missing |
| Inventory → Shift Master | pos_masters_ui | "Shift Master" | ✅ |
| EPABX → Call Type | Not in UI | "Call Type" | ❌ Missing |
| EPABX → Call Code | Not in UI | "Call Code" | ❌ Missing |
| EPABX → Extension | Not in UI | "Extension" | ❌ Missing |

---

## 5. KEYBOARD SHORTCUTS UPDATE (MainWindow)

Current shortcuts in shell.py (lines 797-862):
- Alt+1..9 = Sidebar modules
- Ctrl+R = Reservation
- Ctrl+P = Plan Master
- Ctrl+C/B/H/U/I = Country/State/Charge/Unit/Item
- Ctrl+F/K = Guest Profile/Check In
- Ctrl+T/N = KOT/Night Audit
- Ctrl+Y = Indent
- Ctrl+G = Folio Log
- Ctrl+J = Reservation Status
- Ctrl+Shift+R/M/P/S/C/U = Room Cat/Master/Package/Season/Company/User
- Ctrl+Shift+O/W/E/T/L = Check Out/Room Status/Expense/Tax/Ledger
- Ctrl+Alt+T = Tally Export

**New shortcuts to add:**
- Ctrl+Shift+H = HR Payroll
- Ctrl+Shift+M = Member Billing (conflict with Package Master)
- Ctrl+Shift+B = Booking Operations
- Ctrl+Shift+F = Facility Billing
- Ctrl+Shift+G = Guest Services
- Ctrl+Shift+D = Hall Booking
- Ctrl+Shift+S = POS Sales (conflict with Season Master)
- Ctrl+Shift+K = POS Stock

**Resolution:** Use Ctrl+Alt combinations for new modules to avoid conflicts.

---

## 6. VB6 FORM SPECIFICS TO PRESERVE

### 6.1 Visual Style (from VB6 forms)
- **BackColor:** &HFFC0C0& (light pink) for masters, &HCEE0C2& for login
- **Caption:** Exact VB6 form titles
- **MDIChild:** All forms are MDI children (WindowState=2 maximized)
- **ControlBox=0:** No minimize/maximize/close buttons
- **KeyPreview=True:** Form-level key handling

### 6.2 Current PyQt6 Style (shell.py VB_BLUE theme)
```python
VB_BLUE = "#2f7fc1"
STYLE = """
QWidget#vbScreen { background: qlineargradient(x1:0,y1:0,x2:0,y2:1, stop:0 #7db9e8, stop:1 #2f7fc1); }
QLabel#vbTitle { color: #fffbe6; font-size: 12pt; font-weight: bold; background: #fdfdd0; color: #444; padding: 4px; }
QPushButton#vbBtn { background: #e8f4ff; border: 2px outset #b0d0e8; font-weight: bold; padding: 6px 22px; color: #14406b; }
"""
```
**Status:** ✅ Matches VB6 visual identity

---

## 7. IMPLEMENTATION PRIORITY

### Phase 1: Immediate (Registry Fixes) - 1 day
1. Add missing EPABX masters to shell.py registry
2. Add missing Inventory masters (Consumption, Opening Stock)
3. Add missing Members Mgmt masters (Member Master, Corporate Member)
4. Fix keyboard shortcut conflicts

### Phase 2: Inventory Procurement - 2 days
1. Add Purchase Order UI (inventory module)
2. Add Purchase Bill / GRN UI (inventory module)
3. Add Requisition Slip UI
4. Add Kitchen Closing Stock UI

### Phase 3: HR Payroll Processing - 2 days
1. Salary Creation UI (hr_payroll_ui)
2. Leave Management UI
3. Overtime/Loan UI (if tables exist)

### Phase 4: EPABX Module - 1 day
1. Create epabx_ui.py with Call Type/Code/Extension masters
2. Register in shell.py

### Phase 5: Testing & Polish - 1 day
1. Full UI flow test
2. Keyboard navigation test
3. Screenshot comparison with VB6

---

## 8. FILES TO MODIFY

### Primary:
1. `HMS_py/ui/shell.py` - Main registry + keyboard shortcuts
2. `HMS_py/ui/inventory.py` - Add procurement UIs
3. `HMS_py/ui/hr_payroll_ui.py` - Add payroll processing
4. `HMS_py/ui/epabx_ui.py` - NEW: Create EPABX masters UI

### Secondary:
5. `HMS_py/ui/hr_members_ui.py` - Add missing Member masters
6. `HMS_py/ui/pos_masters_ui.py` - Add Consumption Master
7. `HMS_py/core/epabx_masters.py` - Verify core functions exist

---

## 9. VERIFICATION CHECKLIST

After implementation, verify:
- [ ] All 23 sidebar modules accessible
- [ ] All menu leaves open correct forms
- [ ] Keyboard shortcuts work (Alt+1-9, Ctrl+combinations)
- [ ] Duplicate guards on all masters
- [ ] Enviro finance fields read-only
- [ ] Analysis.ini drives printing paths
- [ ] Audit trail on all inserts/updates
- [ ] DB connection shows in status bar
- [ ] Offscreen screenshot generates 4 images
- [ ] All 156 tests pass

---

## 10. ESTIMATED EFFORT

| Phase | Tasks | Days |
|-------|-------|------|
| 1 | Registry fixes + shortcuts | 1 |
| 2 | Inventory procurement UIs | 2 |
| 3 | HR payroll processing | 2 |
| 4 | EPABX module | 1 |
| 5 | Testing | 1 |
| **Total** | | **7 days** |

---

## 11. NOTES FROM VB6 ANALYSIS

1. **MDIForm1.frm** is the main container with:
   - Left sidebar (PictShortCuts with TreeView/ListView)
   - Top submenu bar (PictSubMenu with CmdSubMenu buttons)
   - Right title bar with time zones
   - Main menu (PictMainMenu with CmdMainMenu)

2. **Menu loading logic** in MDIForm_Load:
   - Queries Enviro table for settings
   - Loads User_Module for user rights
   - Sets window title from Company name + year

3. **Form naming convention:**
   - frm* = standard forms
   - Frm* = main master forms
   - r* = report viewers
   - p* = POS forms
   - Rs* = Restaurant/POS touch screen

4. **Key VB6 modules already ported:**
   - All Main Setup masters ✅
   - Front Office operations ✅
   - POS Sales/KOT/Stock/Delivery ✅
   - Banquet Booking/Events ✅
   - HR/Members masters ✅
   - Reports Center ✅
   - Inventory basic ✅

5. **Not portable (no DB tables):**
   - Smart Card operations
   - Door Lock
   - SMS Gateway
   - Job Scheduler
   - Touch POS hardware
   - Reward Points
   - Complaint/Lost&Found
   - Internal Messaging
   - Calendar
   - TDS/Tax vouchers

---

*Generated from VB6 FODER/ form analysis + current Python codebase audit*
*Date: 2026-09-20*