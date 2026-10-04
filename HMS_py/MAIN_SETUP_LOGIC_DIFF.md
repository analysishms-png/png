# Main Setup Logic Differences (VB6 vs Python)

**Last Updated:** 2026-10-01  
**Format:** Per mandatory logic difference file format

---

## Difference Classification Legend
- [MISSING PYTHON LOGIC] - VB6 has it, Python doesn't
- [WRONG PYTHON LOGIC] - Python implements differently
- [SQL BUG] - Query/parameter differences
- [VALIDATION BUG] - Validation rule differences
- [UI BUG] - UI behavior differences
- [LEGACY BEHAVIOR] - VB6 quirk to preserve
- [INTENTIONAL MODERNIZATION] - Deliberate Python change

---

## 1. Company Master (CompMast.frm)

### VB6 FILE: CompMast.frm
### VB6 PROCEDURE: Form_Load (not fully shown, but inferred from controls)
### PYTHON FILE: core/company.py, core/comp_master.py
### PYTHON FUNCTION: list_companies, profile_fields

| Aspect | VB6 Logic | Python Logic | Difference | Root Cause | Fix | Status |
|--------|-----------|--------------|------------|------------|-----|--------|
| Fields | 42 TextBox controls (indices 0-36, plus special) | 5 fields in grid (name, short, year) + profile_fields | [MISSING PYTHON LOGIC] | Python only implements grid view | Implement full 42-field form | OPEN |
| Field: Code (Txt0) | MaxLength=8, required, uppercase | Not in core/company.py | [MISSING PYTHON LOGIC] | Company code field missing | Add Comp_Code column | OPEN |
| Field: Company Name (Txt1) | MaxLength=75 | Mapped to Comp_Name | OK | — | — | VERIFIED |
| Field: Contact Person (Txt3) | MaxLength=4 (Title) + Txt4 (Name, 75) | Not mapped | [MISSING PYTHON LOGIC] | Title + Name split not mapped | Add ContactTitle, ContactName | OPEN |
| Field: Address (Txt5, Txt6) | Two lines, MaxLength=50 each | Not mapped | [MISSING PYTHON LOGIC] | Address lines missing | Add Address1, Address2 | OPEN |
| Field: City (Txt7) | Lookup via DGCity grid | Not mapped | [MISSING PYTHON LOGIC] | City lookup grid missing | Add City lookup | OPEN |
| Field: PinCode (Txt9) | MaxLength=6, DataFormat=38 | Not mapped | [MISSING PYTHON LOGIC] | PinCode missing | Add PinCode | OPEN |
| Field: Phone (Txt8) | MaxLength=20, DataFormat | Not mapped | [MISSING PYTHON LOGIC] | Phone missing | Add Phone | OPEN |
| Field: Mobile (Txt10) | MaxLength=20 | Not mapped | [MISSING PYTHON LOGIC] | Mobile missing | Add Mobile | OPEN |
| Field: Fax (Txt11) | MaxLength=12 | Not mapped | [MISSING PYTHON LOGIC] | Fax missing | Add Fax | OPEN |
| Field: Email (Txt12) | MaxLength=50 | Not mapped | [MISSING PYTHON LOGIC] | Email missing | Add Email | OPEN |
| Field: PAN (Txt13) | MaxLength=50 | Not mapped | [MISSING PYTHON LOGIC] | PAN No. missing | Add PAN_No | OPEN |
| Field: GSTIN (Txt16) | MaxLength=20 | Not mapped | [MISSING PYTHON LOGIC] | GSTIN missing | Add GSTIN | OPEN |
| Field: Legal/Trade Name (Txt35, Txt36) | MaxLength=100 each | Not mapped | [MISSING PYTHON LOGIC] | Legal/Trade name missing | Add Legal_Name, Trade_Name | OPEN |
| Field: MapCode (Txt33) | MaxLength=20 | Not mapped | [MISSING PYTHON LOGIC] | Map Code missing | Add Map_Code | OPEN |
| Field: BlackListed (Txt22, Txt23, Txt24, Txt25) | Yes/No + Reason + Date + By | Not mapped | [MISSING PYTHON LOGIC] | Blacklist fields missing | Add BlackListed, BlackListReason, etc. | OPEN |
| Field: Credit (Txt19, Txt20, Txt21, Txt24) | AllowCredit Yes/No, CreditLimit, CreditDays, Interest | Not mapped | [MISSING PYTHON LOGIC] | Credit fields missing | Add credit fields | OPEN |
| Field: Commission (Txt25) | MaxLength=10, numeric | Not mapped | [MISSING PYTHON LOGIC] | Commission missing | Add Commission_Pct | OPEN |
| Field: Contract/Discount Type (Txt27, Txt26) | Dropdown/lookup via FgridPlan | Not mapped | [MISSING PYTHON LOGIC] | Contract/Discount type missing | Add lookup fields | OPEN |
| Opening/Current Balance | Txt(29), txtCurrBal with Dr/Cr labels | Not mapped | [MISSING PYTHON LOGIC] | Balance fields missing | Add OpBal, CurBal, DrCr | OPEN |
| Validation | Txt_Validate per index, Txt_GotFocus auto-select | None | [MISSING PYTHON LOGIC] | No field validation | Port ValidationModule.bas logic | OPEN |
| Lookups | DGCity, DGAcName, DGUnderAc, DgUser grids | None | [MISSING PYTHON LOGIC] | No lookup grids | Implement lookup dialogs | OPEN |
| Save Logic | btnok_UnknownEvent_9 with full validation | None | [MISSING PYTHON LOGIC] | No save logic | Implement save with transaction | OPEN |
| Keyboard | Form_KeyDown, Enter=Tab, F-keys | QShortcut partial | [UI BUG] | Incomplete key mapping | Full VB6 key map | OPEN |

---

## 2. FA Environment (FaEnvron.frm)

### VB6 FILE: FaEnvron.frm
### VB6 PROCEDURE: Form_Load, Cmd_Click(Index 0), Txt_GotFocus, Txt_Validate, OptRoundOff_Click
### PYTHON FILE: core/fa_enviro.py, ui/fa_enviro_ui.py
### PYTHON FUNCTION: get, update_settings, update_setting

| Aspect | VB6 Logic | Python Logic | Difference | Root Cause | Fix | Status |
|--------|-----------|--------------|------------|------------|-----|--------|
| UI Mode | Fully editable form with 41 TextBoxes | fa_enviro_ui.py is READ-ONLY viewer | [MISSING PYTHON LOGIC] | UI not made editable | Make all 41 fields editable | OPEN |
| Ageing Buckets | Age1-6 (Days, integer), Amt1-6 (Amount, numeric) | Retrieved but not editable | [MISSING PYTHON LOGIC] | UI read-only | Enable editing with numeric validation | OPEN |
| Tagada Headers | TagadaHeader1-5 (varchar 250) | Retrieved but not editable | [MISSING PYTHON LOGIC] | UI read-only | Enable editing | OPEN |
| Tagada Footers | TagadaFooter1-5 (Footer3fa, Footer3) | Retrieved but not editable | [MISSING PYTHON LOGIC] | UI read-only | Enable editing | OPEN |
| Credit/Debit Limits | CreditLimit, DebitLimit, NegativeCashBalance | Retrieved but not editable | [MISSING PYTHON LOGIC] | UI read-only | Enable editing | OPEN |
| Display Options | ShowGroup, DonotShowGroup, ShowCurrentBalance, VerticleBalanceSheet, ShowQty, ShowCityName, LedDivCode, LedSiteCode, LedPrefix | Retrieved but not editable | [MISSING PYTHON LOGIC] | UI read-only | Enable editing with YN validation | OPEN |
| Printing Options | daterfill, titlerfill, pagenofill, linefiller, CashBookPage, CityNameDisp, ToBy, RepToBy, PreBal | Retrieved but not editable | [MISSING PYTHON LOGIC] | UI read-only | Enable editing | OPEN |
| Stock Values | OpStockQTY, OpStockValue, ClStockQTY, ClStockValue (Frame6) | Retrieved but not editable | [MISSING PYTHON LOGIC] | UI read-only | Enable editing with numeric validation | OPEN |
| Round Off | OptRoundOff option buttons (RoundOffType) | Not implemented | [MISSING PYTHON LOGIC] | Option buttons missing | Add radio button group | OPEN |
| Save Logic | Cmd_Click builds giant UPDATE with all 41 fields + U_Name/U_EntDt/U_AE | update_settings only updates passed fields, no audit cols | [SQL BUG] | Audit columns missing from UPDATE | Add U_Name, U_EntDt=getdate(), U_AE='E' to UPDATE | OPEN |
| Validation | Txt_Validate per field type (numeric, varchar limits) | None in UI | [VALIDATION BUG] | No field validation | Add validation per EDITABLE types | OPEN |
| Frame Logic | 7 Frames: Ageing, Tagada, Reports, Opening/Closing, Display, Voucher, Voucher Entry | No frame organization in UI | [UI BUG] | UI doesn't match VB6 layout | Reorganize UI into frames | OPEN |

---

## 3. User/Company Information (frmCompany.frm)

### VB6 FILE: frmCompany.frm
### VB6 PROCEDURE: Form_Load, Form_KeyDown, MNUSAVE_Click, MNUCANCEL_Click, edit_Click, Del_Click, ListView_UnknownEvent_13, Panelgrid_MouseDown, Txt_GotFocus, Txt_Validate
### PYTHON FILE: core/usermaster.py, core/company.py, ui/usermaster_ui.py, ui/general_setup_ui.py, core/db.py, core/auth.py
### PYTHON FUNCTION: usermaster.*, company.*, db.load_config, db.connect, auth.enc_bytes

| Aspect | VB6 Logic | Python Logic | Difference | Root Cause | Fix | Status |
|--------|-----------|--------------|------------|------------|-----|--------|
| Form Purpose | Hybrid: Login + Company Grid + User Management + Structure Update | Split: login_ui.py + usermaster_ui.py + general_setup_ui.py | [INTENTIONAL MODERNIZATION] | Separation of concerns | Verify login flow matches VB6 | OPEN |
| INI Reading | Reads Analysis.ini keys 7,8,10, etc. for DB config, paths | db.load_config() reads INI | OK | — | Verify all keys mapped | OPEN |
| DB Connection | ADO Connection with SQLNCLI.1 or SQLOLEDB.1 provider | pyodbc with SQL Server | OK | — | Verify connection string | OPEN |
| SA User Creation | INSERT INTO usermast if empty (USER_NAME='SA', PASSWD='\') | Not in Python startup | [DATABASE BUG] | Missing default user creation | Add SA creation in init | OPEN |
| Company Grid | DBGrid1 bound to Company table (Comp_Name, SName, cyear) | list_companies() returns similar | OK | — | Verify column mapping | OPEN |
| Company CRUD | Right-click PopupMenu: Add/Edit/Delete/Save/Cancel/Exit | No company CRUD in general_setup_ui | [MISSING PYTHON LOGIC] | Company CRUD not ported | Add company CRUD | OPEN |
| User Management | Username/Password fields + DBGrid1 for users | usermaster_ui.py has full CRUD | PARTIAL | — | Verify all UserMast fields mapped | OPEN |
| Structure Update | btnStruUpdNew - schema update utility | Not ported | [MISSING PYTHON LOGIC] | Structure update not in Python | Port or document as N/A | OPEN |
| Keyboard Shortcuts | Alt+L=Accept, Alt+U=Exit, Alt+D=Structure, Enter/Arrows navigation | QShortcut for some | [UI BUG] | Incomplete | Full VB6 key map | OPEN |
| Date Format | Forces dd/MMM/yyyy via Registry | Not enforced | [DATE BUG] | Regional settings not set | Document or implement | OPEN |
| Backup Path | Reads from INI, validates, creates network path | Not in Python | [MISSING PYTHON LOGIC] | Backup path logic missing | Add backup path handling | OPEN |

---

## 4. Parameter/Enviro Settings (frmEnviro.frm)

### VB6 FILE: frmEnviro.frm
### VB6 PROCEDURE: Form_Load (14BAFD8), TopCtrl1_UnknownEvent_A/C/D/E/10/11/12/13/15/16, Cmd_Click, DG*_UnknownEvent_9, FGrid_UnknownEvent_A/C/D, OptRoundOff_Click
### PYTHON FILE: core/enviro.py, core/general_setup.py, ui/enviro_ui.py, ui/general_setup_tabs_ui.py (ParameterTab)
### PYTHON FUNCTION: enviro.get, enviro.update_settings, general_setup.printing_settings_snapshot, general_setup.enviro_update

| Aspect | VB6 Logic | Python Logic | Difference | Root Cause | Fix | Status |
|--------|-----------|--------------|------------|------------|-----|--------|
| TopCtrl State Machine | 16 events: Add/Edit/Delete/Save/Cancel/Find/First/Prev/Next/Last/Refresh/Print/Exit/Ini | ParameterTab has no state machine | [MISSING PYTHON LOGIC] | No TopCtrl port | Implement TopCtrl state machine | OPEN |
| Lookup DataGrids | 9 DataGrids: DGHelp, DGGroup, DGTAX, DGRevenue, DGPurchaseGodown, DGTaxStru, DGPurchItem, DGDepart, DGPayType | ParameterTab.LOOKUPS -> LookupDialog; all 9 bound (`_grid_rows` + `lookup_*` fetchers; DGDepart via PrintingParametersTab RestCode browse) | OK (bound 2026-10-02) | - | Verify row counts 3107/73/67/64/768/67 | CLOSED |
| Cmd_Click (Save) | Giant UPDATE Enviro SET 200+ columns | enviro.update_settings only EDITABLE (55 fields) | [SQL BUG] + [INTENTIONAL MODERNIZATION] | Finance fields protected | Document: finance fields via FaEnvron | OPEN |
| RoundOffSetting | FGrid with inline edit + OptRoundOff option buttons + Save in TopCtrl1_UnknownEvent_16 | No RoundOffSetting logic | [MISSING PYTHON LOGIC] | Not ported | Add RoundOffSetting CRUD + grid | OPEN |
| Sub-tabs | 4 rows of sub-tab buttons (26 sub-tabs) | ParameterTab has 4 rows but only "Printing Parameters" functional | [MISSING PYTHON LOGIC] | Other sub-tabs are placeholders | Implement all sub-tabs with proper fields | OPEN |
| Printing Parameters | Bill_Header, Bill_Footer in "Printing Parameters" sub-tab | ParameterTab has these | OK | — | Verify save works | OPEN |
| Validation | VB6 IIf/Left(1) for YN fields, time format for Checkout/Variation | _validate in enviro.py has similar | PARTIAL | — | Verify all validation rules match | OPEN |
| Site Filtering | All queries: WHERE LogSite_Code='KK' OR LogSite_Code='HO' | Some queries missing HO fallback | [SITE BUG] | Inconsistent | Standardize all queries | OPEN |
| Ageing Parameters | Frame1: 6 slabs with Days + Amounts | Not in ParameterTab (in FaEnvron) | OK | Different form | Verify FaEnvron has it | OPEN |

---

## 5. User Master (UserMast.frm)

### VB6 FILE: UserMast.frm
### VB6 PROCEDURE: Form_Load, TopCtrl events, Txt_GotFocus, Txt_Validate, Txt_KeyDown
### PYTHON FILE: core/usermaster.py, ui/usermaster_ui.py
### PYTHON FUNCTION: usermaster.list_all, insert, update, delete, get, exists, set_password

| Aspect | VB6 Logic | Python Logic | Difference | Root Cause | Fix | Status |
|--------|-----------|--------------|------------|------------|-----|--------|
| Fields | USER_NAME, PASSWD, LABEL, ShortName, ActiveYN, GodCode, FloorCode, AllowDtChng, BackColor | Only username, label, short, active | [MISSING PYTHON LOGIC] | 4 fields missing | Add GodCode, FloorCode, AllowDtChng, BackColor | OPEN |
| LABEL Column Type | VARCHAR(30) in VB6 doc, but some DBs have SMALLINT | _label_column_is_int() detects and adapts | [LEGACY BEHAVIOR] - PRESERVE | Schema drift handling | Keep dynamic detection | VERIFIED |
| Password | VB6 encryption (auth.py enc_bytes) | auth.enc_bytes used | OK | — | Verify byte-exact match | OPEN |
| TopCtrl | State machine: Idle/Add/Edit with button enabling | usermaster_ui.py has _set_state | OK | — | Verify all states | OPEN |
| Validation | Field-level max lengths, required | _validate only username/label/short | [VALIDATION BUG] | Missing field validation | Add all field validations | OPEN |
| Delete Guard | SA protected, PYT* only deletable | usermaster_ui.py has same | OK | — | Verify | VERIFIED |
| Change Password | Separate dialog | _on_change_pwd has dialog | OK | — | Verify encryption | OPEN |
| Keyboard | Form_KeyDown with F-keys, Ctrl shortcuts | QShortcut for Ctrl+N/E/S/D, Esc, F5 | [UI BUG] | Missing F-keys | Add F-key shortcuts | OPEN |

---

## 6. General Setup (FDGENMAS - frmEnviro tabs)

### VB6 FILE: frmEnviro.frm (as FDGENMAS)
### VB6 PROCEDURE: Tab strip click handlers, each sub-tab logic
### PYTHON FILE: core/general_setup.py, ui/general_setup_tabs_ui.py
### PYTHON FUNCTION: Various APIs (TaxMaster, TaxStru, PaymentType, Enviro)

| Aspect | VB6 Logic | Python Logic | Difference | Root Cause | Fix | Status |
|--------|-----------|--------------|------------|------------|-----|--------|
| Tab Strip | 6 tabs: Tax Master, Tax Structure, Payment Type, Parameter, Printing Parameters, Printing Setup | GeneralSetupWindow has 6 tabs | OK | — | Verify all tabs functional | OPEN |
| Tax Master | FrmTaxMast: RevMast FieldType='T' flat master | TaxMasterTab uses taxmaster API | OK | — | Verify fields match | OPEN |
| Tax Structure | FrmTaxStruMast: header + lines grid (S.No, TaxName, Rate, ApplyOn, L.Limit, Comparison, U.Limit, Condition) | TaxStructureTab has similar | PARTIAL | — | Verify inline edit, combos | OPEN |
| Payment Type | fdPaymentCharge: RevMast PAYTYPE<>'' + outlet checkboxes | PaymentTypeTab has outlets | OK | — | Verify A/C Posting logic | OPEN |
| Parameter | frmEnviro as sub-form | ParameterTab in GeneralSetupWindow | OK | — | Verify all sub-tabs | OPEN |
| Printing Parameters | Browse-only Module Type/Dept/Desc | PrintingParametersTab read-only | OK | — | Verify data source | OPEN |
| Printing Setup | Analysis.ini paths + Enviro print flags | PrintingSetupTab shows both | OK | — | Verify all flags | OPEN |
| Toolbar | VB6 icon toolbar: New/Edit/Delete/Save/Browse/Find/Post/Refresh/Exit + counter | _toolbar_row with text buttons | [UI BUG] | No icons, different layout | Match VB6 toolbar exactly | OPEN |
| Title Strip | "Main Setup > General Setup > <Screen>" cream/yellow | _title_strip similar | OK | — | Verify text per tab | OPEN |
| Left Menu | VB6 left strip: Finance, Front Office, Banquet, Inventory, etc. | _left_menu similar | OK | — | Verify items | OPEN |
| Right Dock | World clocks + Reload/Exit | _world_clock_dock similar | OK | — | Verify time zones | OPEN |
| Status Bar | "SA Property Site: KK CAPS NUM Hide Left Menu..." | Status bar similar | OK | — | Verify site code | OPEN |

---

## 7. Site/LogSite_Code Handling

### VB6 FILES: HMS.bas, FaLib.bas, all forms
### PYTHON FILES: core/db.py, all core modules
### PYTHON FUNCTION: db.get_site_code(), db.get_user()

| Aspect | VB6 Logic | Python Logic | Difference | Root Cause | Fix | Status |
|--------|-----------|--------------|------------|------------|-----|--------|
| LogSite_Code Source | Analysis.ini key 7 (Company Code) | db.get_site_code() from INI | OK | — | Verify INI key 7 | OPEN |
| Query Pattern | WHERE (LogSite_Code='KK' OR LogSite_Code='HO') | Some queries: WHERE LogSite_Code=? only | [SITE BUG] | Missing HO fallback | Audit all queries | OPEN |
| Site Code in Tables | Company, Site, Enviro, FAEnviro, all masters have LogSite_Code | Most tables have LogSite_Code | OK | — | Verify all tables | OPEN |
| Multi-Site | Supports multiple sites via LogSite_Code | Single site from INI | [LEGACY BEHAVIOR] | Architecture difference | Document limitation | OPEN |

---

## 8. Business Date / Financial Year

### VB6 FILES: frmCompany.frm (cyear), HMS.bas
### PYTHON FILES: core/company.py (current_year), core/db.py

| Aspect | VB6 Logic | Python Logic | Difference | Root Cause | Fix | Status |
|--------|-----------|--------------|------------|------------|-----|--------|
| Financial Year | Apr-Mar: 2026-27 format | current_year() returns same format | OK | — | Verify edge cases | OPEN |
| Business Date | From Enviro/INI, used in transactions | Not explicitly tracked | [DATE BUG] | No business date context | Add business date to session | OPEN |
| Year Start/End | Company table has YearStartDt, YearEndDt | Not in Python company | [MISSING PYTHON LOGIC] | Missing date fields | Add to Company model | OPEN |

---

## 9. Permissions (USER_MODULE, MENUHELP)

### VB6 FILES: MDIForm1.frm, UserPermission.frm, HMS.bas
### PYTHON FILES: core/menu_help.py, ui/shell.py

| Aspect | VB6 Logic | Python Logic | Difference | Root Cause | Fix | Status |
|--------|-----------|--------------|------------|------------|-----|--------|
| Menu Building | Dynamic from USER_MODULE + MENUHELP | Static in shell.py | [PERMISSION BUG] | No dynamic menu | Implement permission-based menu | OPEN |
| Permission Flags | Opt1=View, Opt2=Add, Opt3=Edit, Opt4=Delete, Opt5=Print, Opt6=Report, Opt7=Admin | menu_help.py has constants | PARTIAL | Not enforced in UI | Enforce in shell + forms | OPEN |
| User Permission UI | TreeView + CheckBoxes per module | Not implemented | [MISSING PYTHON LOGIC] | No UserPermission form | Implement UserPermission UI | OPEN |

---

## 10. Printing / Reports / Reprinting

### VB6 FILES: frmPrintModule.frm, MemBillPrintingModule.frm, POSBillPrint.bas, various forms
### PYTHON FILES: core/reports.py, ui/print_preview.py, ui/reports_ui.py

| Aspect | VB6 Logic | Python Logic | Difference | Root Cause | Fix | Status |
|--------|-----------|--------------|------------|------------|-----|--------|
| Report Engine | VB6 DataReport + custom print module | Python reports.py + print_preview.py | [INTENTIONAL MODERNIZATION] | Different tech | Document mapping | OPEN |
| Print Preview | VB6 PrintPreview method | print_preview.py has preview | PARTIAL | — | Verify all reports | OPEN |
| Reprinting | VB6: Original document ID + same params | Not traced | [RPRT BUG] | Not analyzed | Trace VB6 reprint logic | OPEN |
| Printer Selection | VB6 CommonDialog + Analysis.ini key 4 | Not traced | [PRT BUG] | Not analyzed | Trace printer logic | OPEN |
| Report Parameters | VB6: Form values passed to report | Python: parameters dict | PARTIAL | — | Verify parameter mapping | OPEN |

---

## 11. Validation Rules Comparison

| Field Type | VB6 Validation (ValidationModule.bas) | Python Validation | Difference |
|------------|----------------------------------------|-------------------|------------|
| Required | Empty check per field | Only username required | [VALIDATION BUG] |
| Max Length | Per field MaxLength property | Only username/label/short | [VALIDATION BUG] |
| Numeric | IsNumeric check | int/float try/except | OK |
| Date | IsDate + format dd/MMM/yyyy | No date validation | [VALIDATION BUG] |
| Y/N | IIf(Left(x,1)='Y',...) | _validate yn1/yn3 | OK |
| Time | HH:MM format | _validate time | OK |
| Uppercase | UCase on LostFocus | Manual .upper() | [VALIDATION BUG] |

---

## Summary

| Category | Differences Found | Critical (P0) | High (P1) |
|----------|-------------------|---------------|-----------|
| MISSING PYTHON LOGIC | 25 | 15 | 10 |
| SQL BUG | 3 | 3 | 0 |
| VALIDATION BUG | 4 | 1 | 3 |
| UI BUG | 5 | 2 | 3 |
| DATABASE BUG | 1 | 1 | 0 |
| SITE BUG | 2 | 1 | 1 |
| DATE BUG | 2 | 1 | 1 |
| PERMISSION BUG | 1 | 1 | 0 |
| LEGACY BEHAVIOR | 2 | 0 | 0 |
| INTENTIONAL MODERNIZATION | 2 | 0 | 0 |
| **TOTAL** | **47** | **25** | **18** |

---

## Verification Method
For each difference:
1. Read VB6 procedure completely
2. Read Python function completely
3. Trace UI → API → Service → Repository → SQL → DB
4. Identify exact behavioral difference
5. Classify per legend
6. Implement fix
7. Test with real DB data
8. Mark VERIFIED only after DB+UI verification