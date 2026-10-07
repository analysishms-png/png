# HMS REVERSE-ENGINEERING — CHANGELOG

## 2026-09-29

### Files Created
- `02_Main_Setup/module_manual.md` — Company config, financial year, room master, user setup
- `03_Finance/module_manual.md` — Voucher types, ledger, day-end, GL integration
- `04_Reservation/module_manual.md` — Booking form (56 cols), cancellation, no-show, walk-in
- `06_House_Keeping/module_manual.md` — Room status, occupancy, cleaning, maintenance
- `07_Inventory/module_manual.md` — Item master, purchase, issue, stock, supplier
- `08_POS/module_manual.md` — 3 outlets, KOT, settlement, daily sales
- `09_Banquet/module_manual.md` — Hall booking, event, catering, billing
- `11_HR_Payroll/module_manual.md` — Employee, attendance, leave, salary, PF/ESI
- `12_EPABX/module_manual.md` — Serial+Jet integration, call logging, dormant status
- `13_Messaging/module_manual.md` — Inbox (live), SMS outbox (DBSENDSMS 18,810 rows)
- `14_Members_Management/module_manual.md` — 3-level billing, membership cards, dormant
- `15_Sales_Marketing/module_manual.md` — Lead, follow-up, campaign, target
- `16_Mall_Management/module_manual.md` — Tenant, lease, rent, maintenance billing
- `17_Reports/REPORTS_DEEP_CATALOG.md` — 524 reports ka full catalog with parameters
- `17_Reports/REPORTS_QUICK_REFERENCE.md` — Report ID → name → table mapping
- `20_SQL_Tracking/SQL_DEEP_MAPPING.md` — Table-wise SQL operation mapping (INSERT/UPDATE/DELETE)
- `20_SQL_Tracking/SQL_QUICK_REFERENCE.md` — Common queries for investigation
- `21_Testing/BUG_DEEP_ANALYSIS.md` — Root-cause analysis for BUG-001..010
- `21_Testing/DOCUMENTATION_VALIDATION.md` — Doc accuracy checklist vs live DB
- `21_Testing/VALIDATION_CHECKLIST.md` — Step-by-step validation process

### Files Modified
- `README.md` — Updated status, folder map, new files list, blocked items
- `22_Final_Manual/00_MASTER_INDEX.md` — Added module manuals section, new evidence files, updated governance table

### Key Findings
- 14 module manuals complete — har module ka screen/SQL/field-map documentation ready
- SQL deep mapping se table-wise INSERT/UPDATE/DELETE pattern clear ho gaya
- Reports catalog me 524 reports ka full parameter mapping done
- Bug deep analysis se BUG-001..010 ka root cause documented
- Documentation validation checklist se doc-vs-DB accuracy track hoti hai

---

## 2026-09-28

### Files Created
- `00_Project_Discovery/` — Environment, software inventory, INI analysis, DB connection, project tree
- `01_Login_Security/LOGIN_FLOW.md` — Login SQL sequence, user validation, MenuHelp engine
- `05_Front_Office/FRONT_OFFICE_LIFECYCLE.md` — Full FO lifecycle with exact SQL
- `05_Front_Office/CHECKIN_FIELD_MAP.md` — WalkIn CheckIn: 6 actions, 89 textboxes, field→column map
- `10_Night_Audit/NIGHT_AUDIT_FLOW.md` — 6-step transaction flow (code-only, never executed)
- `17_Reports/REPORTS_ANALYSIS.md` — 524 report files inventoried, key mappings
- `18_Database/DATABASE_INVENTORY.md` — Full database inventory
- `18_Database/DATABASE_RELATIONSHIP.md` — Mermaid ER map
- `18_Database/LIVE_DATABASE_DICTIONARY.md` — Live catalog: 277 tables, 10 views, 3 procs
- `18_Database/columns_dictionary.txt` — 5,798 columns raw
- `19_VB6_Logic/vb6_form_inventory.md` — 351 decompiled objects
- `19_VB6_Logic/MENU_INVENTORY.md` — 524 menu items
- `19_VB6_Logic/MENUHELP_PER_USER_ANALYSIS.md` — Menu engine semantics, 69 users
- `19_VB6_Logic/DEEPAK_ROLE_PROFILE.md` — Duty-manager RBAC profile
- `20_SQL_Tracking/SQL_TRACKING_RESULTS.md` — 17,525 live statements + 40-write accounting
- `21_Testing/BUG_REGISTER.md` — BUG-001..010
- `21_Testing/TEST_CASES.md` — TC-001..012
- `21_Testing/SECURITY_REMEDIATION_NOTE_SRN-001.md` — F-1..F-5 findings
- `22_Final_Manual/HMS_Complete_Reverse_Engineering_Manual.docx` — Full technical manual
- `22_Final_Manual/HMS_Complete_Reverse_Engineering_Manual_v2.docx` — 21 MB, 87 figures
- `22_Final_Manual/HMS_Operations_Manual.docx` — 7.4 MB, 33 figures
- `22_Final_Manual/HMS_OPERATIONS_MANUAL.md` — Operations manual markdown
- `22_Final_Manual/HMS_WORKFLOWS_PART2.md` — Auxiliary workflows
- `22_Final_Manual/HMS_SYSTEM_ARCHITECTURE.md` — Runtime architecture
- `22_Final_Manual/MASTER_SCREEN_INVENTORY.xlsx` — Screen register
- `22_Final_Manual/MASTER_DATABASE_DICTIONARY.xlsx` — Table dictionary
- `22_Final_Manual/00_MASTER_INDEX.md` — Master document index
- `23_Modernization_Blueprint/MODERNIZATION_BLUEPRINT.md` — Target stack, 4-phase roadmap
- `23_Modernization_Blueprint/HMS_Modernization_Blueprint.docx` — With embedded charts
- `23_Modernization_Blueprint/PHASE_A_TASK_LIST.md` — 33 tasks, 6-week timeline
- `24_GST_EInvoice/GST_EINVOICE_FLOW.md` — GSP/IRP integration deep-dive
- `README.md` — Initial workspace readme
- `build_inventories.py` — Inventory regeneration script
- `build_manual.py` / `build_manual_v2.py` — Manual generation scripts
- `build_ops_manual.py` — Operations manual builder
- `build_final_report_docx.py` — Final report builder
- `hms_capture.py` / `hms_capture2.py` / `hms_capture3.py` — GUI capture tools
- `gui_explore.py` — Shared GUI helper

### Key Findings
- HMS.exe = VB6, 351 objects, 524 menu items, 69 users
- Database: MOONData2627, SQL Server 2008 R2, 277 tables, 10 views, 3 procs, 0 FK/triggers
- Login: MenuHelp table-driven RBAC (OPT1..4, Flag E/R/N/V)
- Reservation: Booking table 56 columns; Check-In: GuestFolio 40 + RoomOcc 35
- Night Audit: 6-step transaction (never executed — safety rule)
- POS: 3 outlets, KOT-based, settlement via PayCharge + BillDet view
- GST: GSP → IRP flow, JSON v1.1, 185/211 IRNs
- SMS: DBSENDSMS table 18,810 rows — ACTIVE outbox pattern
- EPABX: Serial+Jet integration, dormant
- Membership: 3-level billing, dormant
- Bugs: 10 registered (schema drift, PK crashes, backdoor, e-inv secrets)
- Screenshots: 97 PNGs captured across 17 module folders
- Original VB6 source: NOT FOUND (only decompiled EXTRAS.text evidence)

---

## Version History

| Version | Date | Milestone |
|---|---|---|
| v1.0 | 2026-09-28 | Initial discovery, code analysis, database inventory, GUI capture, manuals, blueprint |
| v1.1 | 2026-09-29 | 14 module manuals, SQL deep mapping, reports catalog, bug deep analysis, validation docs |
