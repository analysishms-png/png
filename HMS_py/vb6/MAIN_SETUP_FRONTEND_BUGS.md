# Main Setup Frontend Bugs

**Last Updated:** 2026-10-01  
**Scope:** UI/UX differences between VB6 forms and Python PyQt6 windows

---

## Bug Format
| Field | Description |
|-------|-------------|
| Screen | VB6 Form / Python Window |
| Control | VB6 Control / Python Widget |
| VB6 Behavior | Expected from VB6 |
| Python Behavior | Current implementation |
| Root Cause | Why it differs |
| Fix Required | What to change |
| Priority | P0=Critical, P1=High, P2=Medium |

---

## 1. Company Master (CompMast.frm → Missing Python Form)

| Screen | Control | VB6 Behavior | Python Behavior | Root Cause | Fix Required | Priority |
|--------|---------|--------------|-----------------|------------|--------------|----------|
| Company Master | Entire Form | Full MDI child form with 42 fields, 4 frames, 5 grids, 2 picture boxes | Only grid view in general_setup_ui.py (company list) | No detail form ported | Create CompanyMasterForm with all 42 fields | P0 |
| Company Master | Txt(0) Code | MaxLength=8, uppercase, required, TabIndex=0 | N/A | Missing field | Add code field with validation | P0 |
| Company Master | Txt(1) Company Name | MaxLength=75, TabIndex=1 | Mapped in grid only | Incomplete | Add to detail form | P0 |
| Company Master | Txt(3) Contact Title | MaxLength=4, default "Mr.", TabIndex=8 | Missing | Not ported | Add ContactTitle combobox | P1 |
| Company Master | Txt(4) Contact Name | MaxLength=75, TabIndex=9 | Missing | Not ported | Add ContactName field | P1 |
| Company Master | Txt(5,6) Address 1/2 | MaxLength=50 each, TabIndex=10,11 | Missing | Not ported | Add Address1, Address2 | P1 |
| Company Master | Txt(7) City | Lookup via DGCity grid, TabIndex=12 | Missing lookup | No lookup grid | Implement City lookup dialog | P0 |
| Company Master | Txt(9) PinCode | MaxLength=6, DataFormat=38, TabIndex=14 | Missing | Not ported | Add PinCode with numeric validation | P1 |
| Company Master | Txt(8,10,11) Phone/Mobile/Fax | MaxLength=20/20/12, DataFormat, TabIndex=13,15,16 | Missing | Not ported | Add Phone, Mobile, Fax | P1 |
| Company Master | Txt(12) Email | MaxLength=50, TabIndex=17 | Missing | Not ported | Add Email with validation | P1 |
| Company Master | Txt(13) PAN No | MaxLength=50, TabIndex=18 | Missing | Not ported | Add PAN_No field | P1 |
| Company Master | Txt(16) GSTIN | MaxLength=20, TabIndex=20 | Missing | Not ported | Add GSTIN field | P1 |
| Company Master | Txt(35,36) Legal/Trade Name | MaxLength=100, TabIndex=22,23 | Missing | Not ported | Add Legal_Name, Trade_Name | P1 |
| Company Master | Txt(33) Map Code | MaxLength=20, TabIndex=6 | Missing | Not ported | Add Map_Code | P1 |
| Company Master | Txt(19,31,32,25) BlackList | Yes/No + Reason + Date + By, Frame FrmList | Missing | Not ported | Add BlackList frame with lookup | P1 |
| Company Master | Txt(23,24,21,20) Credit | AllowCredit YN, Limit, Days, Interest | Missing | Not ported | Add Credit frame | P1 |
| Company Master | Txt(28) Commission | Numeric, right-align, MaxLength=10 | Missing | Not ported | Add Commission_Pct | P1 |
| Company Master | Txt(27,26) Contract/Discount Type | Lookup via FgridPlan grid | Missing | Not ported | Add ContractType, DiscountType lookups | P1 |
| Company Master | txtCurrBal, Txt(29) OpBal | With Dr/Cr labels (LblCurBalType, LblOpBalType) | Missing | Not ported | Add Opening/Current Balance with DrCr | P1 |
| Company Master | FGrid | Account grid with columns | Missing | Not ported | Implement account grid | P1 |
| Company Master | FgridPlan | Plan grid (hidden) | Missing | Not ported | Implement if needed | P2 |
| Company Master | FGridIncl | Inclusion grid | Missing | Not ported | Implement if needed | P2 |
| Company Master | Picture1, Picture2 | Logo images | Missing | Not ported | Add picture boxes | P2 |
| Company Master | LblLDt, LblUser | Last update timestamp + user | Missing | Not ported | Add audit display | P1 |
| Company Master | Keyboard | Enter=Tab, F2=Edit, F3=Delete, F5=Refresh, Esc=Cancel | Only QShortcut for some | Incomplete key map | Full VB6 key mapping | P1 |

---

## 2. FA Environment (FaEnvron.frm → fa_enviro_ui.py)

| Screen | Control | VB6 Behavior | Python Behavior | Root Cause | Fix Required | Priority |
|--------|---------|--------------|-----------------|------------|--------------|----------|
| FA Environment | Entire Form | 7 Frames, 41 editable TextBoxes, OptionButton array, Save/Cancel/Integrity buttons | READ-ONLY viewer (fa_enviro_ui.py) | UI not made editable | Convert to editable form | P0 |
| FA Environment | Frame1 (Ageing) | Age1-6 (Days), Amt1-6 (Amounts) - 12 fields with labels "Slab 1-6", "Days", "Amount" | Retrieved but read-only | UI read-only | Enable editing with numeric validation | P0 |
| FA Environment | Frame2 (Tagada) | TagadaHeader1-5, TagadaFooter1-5 (Footer3fa, Footer3) - 10 fields | Retrieved but read-only | UI read-only | Enable editing | P0 |
| FA Environment | Frame3 (Reports) | SeparatePage Cash/Bank (YN), Print To/By (YN) - 2 fields | Retrieved but read-only | UI read-only | Enable YN validation | P0 |
| FA Environment | Frame4 (Display) | 8 fields: VerticleBS, ShowDivCode, ShowVrPrefix, ShowSiteCode, ShowBalance, ShowMonthly, ShowCityName, ToBy | Retrieved but read-only | UI read-only | Enable YN validation | P0 |
| FA Environment | Frame5 (Voucher) | 2 fields: MustShow/MustNotShow A/C Groups (YN) | Retrieved but read-only | UI read-only | Enable YN validation | P0 |
| FA Environment | Frame6 (Voucher Entry) | 10 fields: LimitCheck Cr/Dr, WarnNegCash, ShowCity, ShowLedgerBal, EnableFilter, ShowGroupAddr, OnlineAdj, UseToBy, PostDatedChq, EnableDateWise | Retrieved but read-only | UI read-only | Enable YN validation | P0 |
| FA Environment | Frame7 (Opening/Closing Stock) | OpStockQTY, OpStockValue, ClStockQTY, ClStockValue - 4 fields with labels OpenQty/CloseQty, Value | Retrieved but read-only | UI read-only | Enable numeric validation | P0 |
| FA Environment | OptRoundOff | OptionButton array for RoundOffType (Round/Truncate/etc.) | Not implemented | Missing control | Add radio button group | P0 |
| FA Environment | btnok/btncancel/BtnIntegrity | Save, Cancel, Integrity Check buttons | Only Close button | Missing buttons | Add Save/Cancel/Integrity | P0 |
| FA Environment | Keyboard | Enter=Tab, F-keys for actions | Only F5/Close | Incomplete | Full key mapping | P1 |
| FA Environment | Layout | Frames arranged in specific positions (Left=60, Top=570 etc.) | Single table layout | Layout not matched | Recreate VB6 frame layout | P1 |

---

## 3. User/Company Information (frmCompany.frm → login_ui.py + usermaster_ui.py + general_setup_ui.py)

| Screen | Control | VB6 Behavior | Python Behavior | Root Cause | Fix Required | Priority |
|--------|---------|--------------|-----------------|------------|--------------|----------|
| User Information | Form Layout | Hybrid: Login (left) + Company Grid (right) + Keyboard (bottom) | Split into 3 separate windows | Intentional split | Verify login flow matches VB6 | P0 |
| User Information | txt(0) Username | MaxLength=8, TabIndex=0 | login_ui.py has username | OK | Verify | P1 |
| User Information | txt(1) Password | PasswordChar=*, MaxLength=8, TabIndex=1 | login_ui.py has password | OK | Verify encryption | P0 |
| User Information | DBGrid1 Company Grid | Bound to Company, shows Comp_Name, SName, cyear | list_companies() grid | OK | Verify columns | P1 |
| User Information | Frame1 (Keyboard) | 50 BtnEnh buttons for virtual keyboard | ChkKeyboard button only | Virtual keyboard not ported | Add virtual keyboard or remove | P2 |
| User Information | btnapplyNew | "Accept" - login | login_ui.py login button | OK | Verify | P1 |
| User Information | btnexitNew | "Exit" - close | login_ui.py exit | OK | Verify | P1 |
| User Information | btnStruUpdNew | "Structure Update" - schema utility | Not in Python | Not ported | Document or implement | P2 |
| User Information | POPUP Menu | Right-click on grid: Add/Edit/Delete/Save/Cancel/Exit | No context menu | Missing | Add context menu to company grid | P0 |
| User Information | ListView | Hidden, shows on right-click | Not in Python | Missing | Implement if needed | P2 |
| User Information | Company Info Frame | Labels: Company Name, Short Name, Address, City, Pin, Phone, Fax, LST, CST, Date, Prev/Curr Year, Site Name/Code, Key Number | general_setup_ui.py doesn't show this | Missing detail view | Add company detail panel | P1 |
| User Information | Keyboard Shortcuts | Alt+L=Accept, Alt+U=Exit, Alt+D=Structure, Ctrl+arrows | QShortcut partial | Incomplete | Full key map | P1 |
| User Information | Date Format | Forces dd/MMM/yyyy via Registry on load | Not enforced | Regional settings | Document or implement | P1 |

---

## 4. Parameter/Enviro (frmEnviro.frm → ParameterTab in general_setup_tabs_ui.py)

| Screen | Control | VB6 Behavior | Python Behavior | Root Cause | Fix Required | Priority |
|--------|---------|--------------|-----------------|------------|--------------|----------|
| Parameter | TopCtrl Toolbar | 16 icon buttons: Add/Edit/Delete/Save/Cancel/Find/First/Prev/Next/Last/Refresh/Print/Exit + "Browse 1/N" counter | _toolbar_row has text buttons only, no icons, no browse counter | Toolbar not matched | Recreate VB6 toolbar exactly | P0 |
| Parameter | Tab Strip | 4 rows of sub-tab buttons (26 sub-tabs), VB6 style gradient buttons | 4 rows created but only "Printing Parameters" functional | Sub-tabs not implemented | Implement all 26 sub-tabs | P0 |
| Parameter | Sub-tab: Printing Parameters | Bill Header, Bill Footer in styled card | ParameterTab has this | OK | Verify styling | P1 |
| Parameter | Sub-tab: Instructions (F.P.) | FPInstruction1-12 fields | Placeholder with QLineEdit | Not implemented | Add 12 instruction fields | P1 |
| Parameter | Sub-tab: Guest Charges (Split) | SplitYN, Split fields | Placeholder | Not implemented | Add Split fields | P1 |
| Parameter | Sub-tab: Display | DisplayRackRow, DisplayRackCol, DisplayRackFontSize, DisplayPort, DisplayMode, menuX/Y/DISP, ShowTitleBar, ShowMenuBar, ShowSubMenuBar, ShowShortCutsBar | Placeholder | Not implemented | Add Display fields | P1 |
| Parameter | Sub-tab: Order Booking | BookingSlipFooter1/2, ReservationExpandOnSaveYN, etc. | Placeholder | Not implemented | Add Order Booking fields | P1 |
| Parameter | Sub-tab: SMS Parameters | SMSMessaging, SMSOption, MobileNo, MobileSet, SMSMessage, MobileInfoMandatoryYN, CoversMandatory, MobileNoMandatory, PANNOMandatoryYN | Placeholder | Not implemented | Add SMS fields | P1 |
| Parameter | Sub-tab: Smart Card | SMARTCARDRECIEPTPrintingDW | Placeholder | Not implemented | Add Smart Card field | P1 |
| Parameter | Sub-tab: Settings | Editopen, AcFieldAlterable, AddModifyEntryInBackDate, PlanSelectionBasedOn, PlanTariffNarration, GuestChargesDeleteLog, FOMBillReprintAutoRefresh, UserWiseShowOutletYN | Placeholder | Not implemented | Add Settings fields | P1 |
| Parameter | Sub-tab: Instructions (Res.) | ResInstruction1-12 | Placeholder | Not implemented | Add Res Instruction fields | P1 |
| Parameter | Sub-tab: Posting Parameters | Postingtype, CalcMethod, NCUR, Rate1-5, DefCompGroup, DefaultCrAc, DefaultDrAc | Placeholder | Not implemented | Add Posting fields | P1 |
| Parameter | Sub-tab: Outlet Parameters | KOTOutletSelection, OutDoorCatering, CatalogLimit, OutDoorSaleAC, IndoorSaleAC, OutDoorPartyAC, IndoorPartyAC, DummyTravelAc, CashCardDebit/Credit/SecurityAc, OrderBookingPrintType, BillPrintingSummerised, PurchaseGodown, RptCashierSettlementAllUser, POSSaleBillEditLog, GuestChargesDeleteLog | Placeholder | Not implemented | Add Outlet fields | P1 |
| Parameter | Sub-tab: Banquet Parameters | OutDoorCatering, BanquetKitchen, HallDiscAC, HallRoundOff | Placeholder | Not implemented | Add Banquet fields | P1 |
| Parameter | Sub-tab: KOT Parameters | KOTPrinting, KOTPrintEdited, KOTHeader1-4, TaxSummary, TOKENPrint, KOTOutletSelection, AutoPrintKOTYN, FreeItemInKOT, POSSaleBillModification, POSSaleBillEditLog, ReprintingOnSaleBillYN, HideSettledBillsOnSaleBillYN | Placeholder | Not implemented | Add KOT fields | P1 |
| Parameter | Sub-tab: Round Off Setting | FomBillCopies, NCKOTPercentage, RoundOffSetting grid | Placeholder | Not implemented | Add Round Off fields + grid | P0 |
| Parameter | Sub-tab: HR/Payroll | GAppCompYear, GMonthConsidered, GWorkingDaysInAMonth, GDaysSalary, AttendType, PF_LIMIT, PF_EMPLOYEE, PF_EMPLOYER, ESI_LIMIT, ESIBasic/DA/HRA/Convey/Other/LTA | Placeholder | Not implemented | Add HR fields (READ-ONLY per design) | P1 |
| Parameter | Sub-tab: Check Out | Checkout, CheckoutVar, Variation, VariationBefore, RoomCheckOutClearanceYN, RoomCheckInClearanceYN, AllowRoomSettlement, SplitYN, PostComplimentaryBills, PostNilLT, AllowBillOnHoldSettlement, PostRoomDiscSeparately, IncCashPurchInFOCC, RoomRentBefChkOut, RoomRentChkOutPost | Placeholder | Not implemented | Add Check Out fields | P1 |
| Parameter | Sub-tab: General Parameters | GRCMandatory, RoomRateEditable, RoomIncTaxEditable, RoomServiceChargeEditable, CreditCardInfoMandatoryYN, ArrDateTimeEdit, ReservationExpandOnSaveYN, IncReservationInBlankGRC, SeperateReservationLetterAsPerStatusYN, NewTarrifForOldGuest, BlockInvalidTarrifIncTaxYN, ResInstruction1-12, FPInstruction1-12, PlanTariffNarration | Placeholder | Not implemented | Add General fields | P1 |
| Parameter | Sub-tab: Printing Parameters | Module Type, Department Name, Module Description (browse-only) | PrintingParametersTab has this | OK | Verify | P1 |
| Parameter | Sub-tab: Rate Types | RcptPrinting, ReservationPrinting, RateEditableInPO, RateEditableInStockIssue, BarCodeFeatureInPurchase, SmartCardItem, ExciseInvoiceTaxStru, PurchaseTaxVAT, SaleTaxVAT, AddModifyEntryInBackDate, ExpMfdDateInMR | Placeholder | Not implemented | Add Rate Types fields | P1 |
| Parameter | Lookup DataGrids | 9 grids: DGHelp, DGGroup, DGTAX, DGRevenue, DGPurchaseGodown, DGTaxStru, DGPurchItem, DGDepart, DGPayType | LookupDialog + ParameterTab.LOOKUPS — all 9 bound (DGHelp/DGGroup/DGRevenue/DGPurchaseGodown/DGPurchItem via `_grid_rows`, DGDepart via RestCode browse) | Bound 2026-10-02 | Verify row counts + save | P1 |
| Parameter | RoundOffSetting Grid | FGrid with inline edit, OptRoundOff option buttons | Not implemented | Missing | Add RoundOffSetting grid | P0 |
| Parameter | Title Strip | "Main Setup > General Setup > Parameter" cream/yellow | _title_strip used | OK | Verify text | P1 |
| Parameter | Left Menu | Module strip: Finance, Front Office, Banquet, Inventory, Housekeeping, etc. | _left_menu similar | OK | Verify items | P1 |
| Parameter | Right Dock | World clocks (India, Canada, Italy, London, Japan, Australia) + Reload/Exit | _world_clock_dock similar | OK | Verify time zones | P1 |
| Parameter | Status Bar | "SA Property Site: KK CAPS NUM Hide Left Menu Hide Right Menu Full Screen" | Status bar similar | OK | Verify site code | P1 |

---

## 5. User Master (UserMast.frm → usermaster_ui.py)

| Screen | Control | VB6 Behavior | Python Behavior | Root Cause | Fix Required | Priority |
|--------|---------|--------------|-----------------|------------|--------------|----------|
| User Master | TopCtrl Toolbar | State machine: Idle/Add/Edit with button enable/disable | _set_state implements this | OK | Verify all states | P1 |
| User Master | Username field | MaxLength=10, Uppercase stored, PK not editable in Edit | usermaster_ui.py has this | OK | Verify | P1 |
| User Master | LABEL field | MaxLength=30, VARCHAR or SMALLINT handling | usermaster_ui.py has this | OK | Verify dynamic type handling | P1 |
| User Master | ShortName field | MaxLength=10 | usermaster_ui.py has this | OK | Verify | P1 |
| User Master | Password field | EchoMode=Password, blank=keep current in Edit | usermaster_ui.py has this | OK | Verify encryption | P0 |
| User Master | Active field | MaxLength=1, Y/N | usermaster_ui.py has this | OK | Verify | P1 |
| User Master | Missing Fields | GodCode(6), FloorCode(6), AllowDtChng(1), BackColor(int) | Not in UI | Missing fields | Add 4 missing fields | P1 |
| User Master | Grid Columns | Username, Full Name, Short Name, Active, Last Edit | Same | OK | Verify | P1 |
| User Master | Delete Guard | SA protected, PYT* only | Same | OK | Verify | P1 |
| User Master | Change Password | Modal dialog with New/Confirm | _on_change_pwd has this | OK | Verify encryption | P0 |
| User Master | Keyboard | Ctrl+N/E/S/D, Esc, F5, F-keys | QShortcut for Ctrl+N/E/S/D, Esc, F5 | Missing F-keys | Add F-key shortcuts | P1 |

---

## 6. General Setup Main Window (FDGENMAS → GeneralSetupWindow)

| Screen | Control | VB6 Behavior | Python Behavior | Root Cause | Fix Required | Priority |
|--------|---------|--------------|-----------------|------------|--------------|----------|
| General Setup | Top Tab Strip | 6 tabs: Tax Master, Tax Structure, Payment Type, Parameter, Printing Parameters, Printing Setup - VB6 gradient style | GeneralSetupWindow has 6 tabs with VB_TAB_STYLES | OK | Verify styling matches screenshot | P1 |
| General Setup | Toolbar | Icon buttons: New/Edit/Delete/Save/Browse(first/prev/next/last)/Find/Post/Refresh/Exit + "Browse 1/N" | _toolbar_row has text buttons, no icons, no browse navigation | Toolbar incomplete | Recreate VB6 toolbar with icons | P0 |
| General Setup | Title Strip | "Main Setup > General Setup > <Screen>" cream/yellow, 46px height | _title_strip similar | OK | Verify per-tab text | P1 |
| General Setup | Left Menu | 13 modules: Finance, Front Office, Banquet, Inventory, Housekeeping, Payroll, EPABX, Membership, Admin, Utilities, Extras, Help, Exit | _left_menu has similar | OK | Verify all modules | P1 |
| General Setup | Right Dock | Date + 6 world clocks + Reload/Exit | _world_clock_dock similar | OK | Verify time zones | P1 |
| General Setup | Status Bar | User, Site, CAPS, NUM, Hide menus, Full Screen | Status bar similar | OK | Verify site code | P1 |
| General Setup | Window Size | 1440x860, maximized to desktop | Screen-fit with min(1440, scr.width-20) | OK | Verify on different screens | P1 |

---

## 7. Keyboard Shortcuts - Global Mapping

| VB6 Key | VB6 Action | Python Current | Python Required | Priority |
|---------|------------|----------------|-----------------|----------|
| Enter | Tab to next control | Default Qt behavior | Override to Tab | P0 |
| Esc | Cancel current operation | QShortcut(Escape) → _on_cancel/_exit | OK | P1 |
| F2 | Edit selected record | Not mapped | QShortcut(F2) → _on_edit | P0 |
| F3 | Delete selected record | Not mapped | QShortcut(F3) → _on_delete | P0 |
| F4 | Find/Search | Not mapped | QShortcut(F4) → find dialog | P1 |
| F5 | Refresh/Reload | QShortcut(F5) → reload | OK | P1 |
| F6 | First record | Not mapped | QShortcut(F6) → first record | P1 |
| F7 | Previous record | Not mapped | QShortcut(F7) → prev record | P1 |
| F8 | Next record | Not mapped | QShortcut(F8) → next record | P1 |
| F9 | Last record | Not mapped | QShortcut(F9) → last record | P1 |
| F10 | Print | Not mapped | QShortcut(F10) → print | P1 |
| F11 | Preview | Not mapped | QShortcut(F11) → preview | P1 |
| F12 | Exit | Not mapped | QShortcut(F12) → exit | P1 |
| Ctrl+N | New/Add | QShortcut(Ctrl+N) → _on_new | OK | P1 |
| Ctrl+E | Edit | QShortcut(Ctrl+E) → _on_edit | OK | P1 |
| Ctrl+S | Save | QShortcut(Ctrl+S) → _on_save | OK | P1 |
| Ctrl+D | Delete | QShortcut(Ctrl+D) → _on_delete | OK | P1 |
| Alt+L | Accept/Login | Not mapped | QShortcut(Alt+L) → accept | P1 |
| Alt+U | Exit | Not mapped | QShortcut(Alt+U) → exit | P1 |
| Alt+D | Structure Update | Not mapped | QShortcut(Alt+D) → structure update | P2 |

---

## 8. Visual/Styling Differences

| Aspect | VB6 | Python | Fix Required | Priority |
|--------|-----|--------|--------------|----------|
| Form Background | &HFFC0C0 (light blue) | #d4d0c8 (cream) | Match VB6 color | P1 |
| Control Colors | ForeColor &HC00000 (dark blue) | #000080 (navy) | Match VB6 color | P1 |
| Font | Arial 9.75pt | Arial 10pt | Match font size | P1 |
| Grid Style | MSHFlexGrid/MSFlexGrid flat | QTableWidget with alternating rows | Style to match | P1 |
| Button Style | BtnEnh with 3D outset/inset | Custom CSS with outset/inset | OK | P1 |
| Label Style | AutoSize, Transparent back | Similar | OK | P1 |
| Frame Style | Flat, colored caption | QGroupBox | Style to match | P1 |
| Tab Style | Gradient purple-blue, active=teal | VB_TAB_STYLES similar | Verify match | P1 |

---

## Summary

| Category | Count | P0 | P1 | P2 |
|----------|-------|----|----|----|
| Missing Forms/Controls | 35 | 8 | 20 | 7 |
| Incomplete Sub-tabs | 25 | 1 | 24 | 0 |
| Keyboard Shortcuts | 20 | 6 | 12 | 2 |
| Lookup Grids/Dialogs | 18 | 6 | 12 | 0 |
| Visual/Styling | 8 | 0 | 8 | 0 |
| Toolbar/Menu | 4 | 2 | 2 | 0 |
| **TOTAL** | **110** | **23** | **78** | **9** |

---

## Verification Checklist per Screen
- [ ] All VB6 controls mapped to Python widgets
- [ ] Tab order matches VB6 TabIndex
- [ ] Field max lengths enforced
- [ ] Validation messages match VB6
- [ ] Keyboard shortcuts work identically
- [ ] Right-click context menus work
- [ ] Lookup dialogs return correct values
- [ ] Save/Cancel/Delete workflows match
- [ ] Audit fields display (Last Update, User)
- [ ] Window size/position behavior matches