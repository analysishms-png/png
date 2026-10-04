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

| BUG-MS-07 | Front Office → Plan Master (+ Package Master) | FrmPlanPackMast.frm | Browse counter `1/9` | `Browse 0/0` jabki list me 9 rows | `PackageMasterForm.reload()` base `BaseMasterForm.reload()` override karta tha aur `_update_browse()` kabhi call nahi karta — label construction-time `0/0` hi reh jaata tha | reload() ke end me `self._update_browse()` | HMS_py/ui/p2_masters.py | probe: Plan `Browse 1/9`; Package (0 rows) `0/0` sahi; test_package_plan_parity + wrong_target_wiring + desktop_ui = 54 pass | VERIFIED |
| BUG-MS-08 | (registry crash) parallel D2-batch wiring | FrmItemIssuedOnCleaning.frm / frmLockGodrejSettings.frm | registry opens | `_form_registry()` NameError → poori registry (738 entries) crash + 11 tests fail | naye leaves (`Item Issued On Cleaning`, `Godrej Locks`) registry me wire hue par imports add nahi hue the (`frm_item_issued_on_cleaning_ui`, `frm_lock_godrej_settings_ui`) | try/except imports add kiye (wave-import pattern) | HMS_py/ui/shell.py | `_form_registry()` OK (738) + 54 tests pass | VERIFIED |

### Open / next
- Group Accounts / User Master screenshots me 1/3 aur 1 row dikhe the —
  recapture (1.5s wait) par 73/68 rows + correct browse → mid-fill capture
  artifact tha, app bug NAHI (screenshot wait 450ms → 1500ms badha).
- Plan Master layout squeeze (top grids + list ek window me) — cosmetic.
- Purchase Sundry Setting ki window title "Outlet Bill Sundry Setting" hai
  (VB6: OutLetSundry/DepartSundry reuse — verify caption).
- Login screen cream-on-white labels + sidebar lowercase module names
  (VB6: "Finance"/"Main Setup" title case) — cosmetic parity.
- Parameter (Enviro) table stretch nahi + dark-on-dark text.
- Open Item Consumption left grid columns squeezed (headers truncated).

| BUG-MS-09 | Reports Center > [Main Setup] Printing Setup / Parameters | VB6 printing setup report | 1 row (paths + Enviro flags) | 0 rows, SQL 42S02 | report SQL ne dbo.load_config() reference kiya jo DB me exist nahi karta; run() ne Invalid object name swallow karke empty dikha diya | config values db.load_config() (Analysis.ini) se literal SQL me inline (_printing_setup_sql) | core/reports.py | live: 1 row dikhta hai; shell: 1 row | VERIFIED |
| BUG-MS-10 | Main Setup > General Setup > Printing Setup caption | VB6 caption se printing setup khulta | Reports Center khulta tha | reports-alias spread ({cap: _open_report}) ne explicit open_printing handler ko override kar diya | explicit override badi ke baad: Printing Setup/Parameters -> gs.open_printing | ui/shell.py | restart regression: viewer khulta hai | VERIFIED |

| BUG-FO-01 | front office > Operations > Room Status | VB6 frmRoomStatus | real room status screen | Reports Center khulta tha (report alias had override ho gayi thi) | shell.py dict literal: **({cap:_open_report}) block explicit keys ko override kar raha tha | alias spreads literal ke top par hoist, explicit keys ab win karte hain | ui/shell.py | restart regression: Room Status / Housekeeping - HMS_py khulta hai, 28 rooms grid | VERIFIED |
| BUG-FO-02 | front office > Operations > Expense Entry | VB6 frmPostExpenses / folio charges grid | active folio list + folio charges grid + balance bar | error banner "Invalid column name 'Amount' (42S22)" | list_folio_charges SELECT ne PayCharge.Amount aur PayCharge.TaxAmt maange, dono columns live DB me exist nahi karte | VB6 parity SQL: CASE WHEN AmtCr<>0 THEN AmtCr ELSE AmtDr END AS Amount, TaxCondAmt AS TaxAmt | core/expenseentry.py | app restart regression: error gaya, folio bar (Dr/Cr/Balance) + charges grid headers render; direct call list_folio_charges(459) = 0 rows, no exception | VERIFIED |

## Registry sweep batch (745 captions) - 2026-10-03

Root-caused and fixed every EXCEPTION-class crash (8 -> 0) plus the dominant
`currentRowChanged` crash. Sweep: 745 captions, OK 596 -> **614**, ERROR_BOX
103 -> **92**, EXCEPTION 8 -> **0**, NOTHING 37 -> 38.

| ID | Screen / Leaf | VB6 source | Expected (VB6) | Current (was) | Root cause | Fix | Files | Test | Status |
|---|---|---|---|---|---|---|---|---|---|
| BUG-FO-03 | front office > Operations > Check Out, Reverse Check Out, Checkout, Check Out Clearance Screen (+1) | VB6 frmCheckOut / reverse check-out | folio grid + charge/balance detail | process died with native abort `0xC0000409` (invisible crash, no dialog) | do layers: (1) `QTableWidget.currentRowChanged` Qt4 ka signal hai, PyQt6 me exist nahi karta -> `AttributeError` on connect; (2) fix ke baad crash gaya `currentCellChanged` par - wo **4** args (row,col,prevRow,prevCol) bhejta hai, lambda me 5 the -> `TypeError` slot ke andar, PyQt6 unhandled slot exception ko `qFatal`/abort bana deta hai | `currentRowChanged` hata kar `currentCellChanged` se 4-arg adapter lambda (`lambda row,_col,_prev,_prevcol: self._on_active_row(row)`) | ui/checkout_ui.py | `_qa/registry_one.py` per caption: Check Out / Reverse Check Out / Checkout / Check Out Clearance Screen - chaaron OK, exit 0, koi error-box nahi | VERIFIED |
| BUG-FI-01 | Finance/Inventory > Ledger Adjustment | VB6 ledger adjustment form | window khulti hai | `__init__` poora chal jata tha (72 accounts + 100 rows load) par `show()` par hard abort `0xC0000409` | `FaAdjustWindow.resizeEvent` me central widget ki `setMinimumWidth/Height(self.width()/height())` set ki thi - resize->layout->resize feedback loop stack overflow | minimum-size assignments remove; `resizeEvent` ab sirf `super()` karta hai | ui/fa_sub_forms_ui.py | `_qa/triage_ledger_adjust.py` + `_qa/registry_one.py "Ledger Adjustment"`: window opens, exit 0 | VERIFIED |
| BUG-RP-01 | Reports Center - 13 zero-arg report captions (Complaint Master, Complaint Clearance, Lost / Found Entry, Room Block, Party Locations, Telephone Call Entry, Booking Inquiry, Booking Inquiry Detail, Claim Entry, Location Facilities, Location-Master, T.D.S Certificate Entry, Call Control Master) | VB6 report forms | report viewer rows dikhein | `TypeError: <lambda>() takes 0 positional arguments but 2 were given` | `ReportViewer._run()` har callable ko `fn(frm, to)` deta tha, par registry me bahut se report lambda zero-arg hain | `ReportViewer._accepts_dates()` - `inspect.signature` se positional count dekhte hue zero-arg callable ko `fn()` bulao, date-aware ko `fn(f,t)` | ui/fa_voucher_ui.py | 13/13 captions individually verified; koi arity TypeError nahi | VERIFIED |
| BUG-RP-02 | Reports Center > Location-Master | VB6 location master list | columns Code/Name/ShortName | `AttributeError: 'pyodbc.Row' object has no attribute 'keys'` | `ReportViewer._fill()` `data[0].keys()` maangta tha; ye caption raw `db.query()` rows deta hai (pyodbc.Row), jo `.keys()` support nahi karte (named-tuple cursor chahiye) | `ReportViewer._as_dicts()` - mapping rows as-is, non-mapping rows ko column-name attributes se dict me convert | ui/fa_voucher_ui.py | `_qa/registry_one.py "Location-Master"`: "Location Master - HMS_py" khulti hai, exit 0 | VERIFIED |
| BUG-UI-01 | front office > FOM Bill Reprint | VB6 FOM bill reprint | reprint window khulti hai | `NameError: name 'make_vb6_header' is not defined`, phir `QDateEdit` bhi missing | `fo_sub_forms_ui.py` ne dono use kiye the par imports nahi the (silent - sirf is leaf par hit karta hai) | missing imports add: `ui.desktop_style.make_vb6_header` + `QDateEdit, QCheckBox, QTextEdit, QSpinBox, QDateTimeEdit, QDate` | ui/fo_sub_forms_ui.py | `_qa/registry_one.py "Bill Reprint"`: "FOM Bill Reprint - HMS_py" khulti hai, exit 0; `_qa/undefined_names.py` = 0 | VERIFIED |
| BUG-UI-02 | Main Setup > Reports (`reports_ui.py`) | - | report dialog | latent `NameError: QLineEdit` | import list me `QLineEdit` missing tha | import add | ui/reports_ui.py | `_qa/undefined_names.py` = 0 (repo-wide sweep of all 130 ui modules) | VERIFIED |
| BUG-UI-03 | Main Setup > User Permissions (`user_permission_ui.py`) | - | permission dialog | latent `NameError: QComboBox` | import list me `QComboBox` missing tha | import add | ui/user_permission_ui.py | `_qa/undefined_names.py` = 0 | VERIFIED |
| BUG-UI-04 | Utility > Tally Export(XML) | VB6 tally XML export | tally export window | `AttributeError: module 'tally_export_ui' has no attribute 'open_tally'` | module me sirf `open_tally_export()` define tha, par `shell.py` ke dono call sites `open_tally()` maante hain; koi caller `open_tally_export` use nahi karta tha | function `open_tally` rename + `open_tally_export = open_tally` backward alias | ui/tally_export_ui.py | `_qa/registry_one.py "Tally Export(XML)"`: "Tally Export (XML)" khulta hai, exit 0 | VERIFIED |
| (harness-only, product theek) | Reports Center > Image | VB6 frmImage | file-picker | sweep me `ValueError: not enough values to unpack (expected 2, got 0)` | QA harness ne `QFileDialog.getOpenFileName` ko `""` return karwaya tha, par API 2-tuple (`(path, filter)`) leti hai; `registry_one.py` me patch hi nahi tha -> real modal dialog hang | harness dono scripts me `("", "")` return karwata hai + QInputDialog stubs; product code unchanged (cancel path sahi se `None` return karta hai) | _qa/registry_full_sweep.py, _qa/registry_one.py | `_qa/registry_one.py "Image"`: exit 0, cancel path clean | VERIFIED |

### BUG-FO-02 positive-data closure (was: 0 rows, no positive assertion)
`list_folio_charges('459')` ab **3 rows** deta hai (VB6 parity SQL verified):
`KKRMCH 3809.52 dr`, `KKCGSS 95.24 dr`, vtype `RC`, docid `DKKRC    2026     612`.
`folio_balance('459')` -> charges_dr 4000.00, payments_cr 0.00, balance 4000.00.
Isse `CASE WHEN AmtCr<>0 THEN AmtCr ELSE AmtDr END AS Amount` mapping
positive-data par confirmed hai.

### BUG-FO-02 se bachi hui asli class (92 captions, abhi open)
Sab `ERROR_BOX` abhi bhi SQL `42S22 Invalid column name` hain - Python reports
VB6-era logical column names use karte hain (`Vdate`, `Item`, `Vtype`,
`RoomRevenue`, `PassportNo`, `KOTNo`, `Party`, `Covers`, `Discount`, `Status`,
`ItemGroup`, `TableNo`, `PlanCode`, `ActiveYN`, ...) jabki live SQL Server
tables me `V_Date`, `Emp_Code`, `LogSite_Code`, `KOT_No` jaise columns hain.
Example proof: `Attend` live columns = `V_Prefix, V_Date, Emp_Code, FirstShift,
SecondShift, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code` - par
`AttendanceRep` SQL `Vdate` maangta hai.
30 distinct missing-column groups; exact caption->key->SQL->error mapping
`_qa/sql_worklist.py` ne `qa_evidence/reports/SQL_FIX_WORKLIST.md` me likha hai.
5 captions ka report key resolve nahi hua (DUELIST, Non Transaction Report,
Tagada Letter Settings, Tax Structure List, Due List Creditor OverLay) -
ye alag se trace karne hain. `ABC  Analysis` alag: `HYT00 query timeout`.
