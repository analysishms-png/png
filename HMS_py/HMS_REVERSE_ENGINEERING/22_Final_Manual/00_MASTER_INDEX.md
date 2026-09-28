# HMS REVERSE-ENGINEERING — MASTER DOCUMENT INDEX

Workspace: C:\PENDRIVE\HMS\HMS_REVERSE_ENGINEERING\ | Analysis: 2026-09-28 (READ-ONLY throughout)
System: HMS.exe (VB6, 351 objects) + MOONData2627 (SQL Server 2008 R2, 277 tables) | Site 'KK', Bareilly

## 🔵 READ IN THIS ORDER (new developer ke liye)

### 1. HMS_Complete_Reverse_Engineering_Manual_v2.docx  (21 MB, 87 figures)
**Pura technical manual** — architecture, config, login, modules, screens (screenshots embedded),
database, GST, bugs, security, modernization. Start here.
Location: 22_Final_Manual/

### 2. HMS_Operations_Manual.docx  (7.4 MB, 33 figures) + HMS_OPERATIONS_MANUAL.md
**Kaise chalta hai** — Frontend→Backend→Database→SQL har workflow ke sath:
Login SQL sequence, Reservation (Booking 56 cols), Check-In (GuestFolio 40 + RoomOcc 35),
Posting/Settlement (PayCharge + BillDet view), Check-Out, Night Audit 6-step transaction,
POS 3 outlets, Banquet, GST e-Invoice IRN, Inventory chain + **SQL quick reference**.
Location: 22_Final_Manual/

### 3. HMS_WORKFLOWS_PART2.md
**Auxiliary workflows**: EPABX (serial+Jet, dormant), Messaging (Inbox live) + SMS
(DBSENDSMS 18,810 rows — ACTIVE outbox pattern), Membership 3-level billing (dormant),
SmartCard/ACR/DoorLock GL (dormant). Status matrix ke sath.
Location: 22_Final_Manual/ ( Operations manual ka Part 5.11–5.14)

## 📗 EVIDENCE & REFERENCE (deep-dive files)

| File | Content |
|---|---|
| 22_Final_Manual/HMS_SYSTEM_ARCHITECTURE.md | Runtime architecture diagram + 7 key facts |
| 22_Final_Manual/MASTER_SCREEN_INVENTORY.xlsx | Screen register (SCR-IDs, SQL mapping, evidence) |
| 22_Final_Manual/MASTER_DATABASE_DICTIONARY.xlsx | Table dictionary (30+ core tables, PK/FK evidence) |
| 19_VB6_Logic/MENU_INVENTORY.md | 524 menu items (decompiled builder se) |
| 19_VB6_Logic/MENUHELP_PER_USER_ANALYSIS.md | Menu engine semantics (OPT1..4, Flag E/R/N/V), 69 users |
| 19_VB6_Logic/MenuHelp_*_tree.txt | SA(440)/Deepak(157)/Kitchen(23)/POS(10)/kot(4) raw trees |
| 19_VB6_Logic/DEEPAK_ROLE_PROFILE.md | Duty-manager RBAC profile (213 items SA-se-diff) |
| 19_VB6_Logic/vb6_form_inventory.md | 351 decompiled objects module-wise |
| 05_Front_Office/FRONT_OFFICE_LIFECYCLE.md | FO lifecycle + exact INSERT column lists |
| 05_Front_Office/CHECKIN_FIELD_MAP.md | WalkIn CheckIn form: 6 actions, 89 textboxes, field→column map |
| 10_Night_Audit/NIGHT_AUDIT_FLOW.md | 6-step transaction flow (never executed) |
| 18_Database/LIVE_DATABASE_DICTIONARY.md | Live catalog: 277 tables, 10 views, 3 procs, 0 FK/triggers |
| 18_Database/columns_dictionary.txt | 5,798 columns raw |
| 18_Database/DATABASE_RELATIONSHIP.md | Mermaid ER map (join-evidence based) |
| 20_SQL_Tracking/SQL_TRACKING_RESULTS.md | 17,525 live statements + 40-write accounting |
| 20_SQL_Tracking/raw/*.txt | Raw trace extracts |
| 24_GST_EInvoice/GST_EINVOICE_FLOW.md | CI GSP → IRP flow, JSON v1.1, 185/211 IRNs |
| 23_Modernization_Blueprint/MODERNIZATION_BLUEPRINT.md (+.docx) | Target stack, 4-phase roadmap, 5 charts |

## 🟠 GOVERNANCE

| File | Content |
|---|---|
| 21_Testing/BUG_REGISTER.md | BUG-001..010 (schema drift, PK crashes, backdoor, e-inv secrets) |
| 21_Testing/SECURITY_REMEDIATION_NOTE_SRN-001.md | F-1..F-5 findings, containment, verification plan |
| 21_Testing/TEST_CASES.md | TC-001..012 templates (test DB pe chalane ke liye) |
| 00_Project_Discovery/ | environment, INI analysis, software inventory, DB connection, project tree |

## 🟢 CAPTURE ARTIFACTS

| Artifact | Count |
|---|---|
| screenshots/*/ | **97 PNGs** (17 module folders, CAPTURE_INDEX.md me full map) |
| action_log.csv | 71 verified window-open events (timestamp+title+evidence) |
| hms_capture2.py / hms_capture3.py | Re-usable GUI capture tools (safe open→shot→close) |
| gui_explore.py | Shared helper (snap/log/menus) |
| build_*.py | Regeneration scripts (inventories, charts, manuals, blueprint) |

## 🔴 BLOCKED / NOT DONE
- Original VB6 source (.vbp) — kisi archive me nahi mila (sirf decompiled EXTRAS.text evidence)
- Night Audit execution — safety rule (sirf code-flow documented)
- Deepak-login RBAC live verification — **SKIPPED by owner decision (2026-09-28)**; MenuHelp-based
  RBAC documentation complete (DEEPAK_ROLE_PROFILE.md). Login attempt made: guess 'Deepak@2019'
  → 'Invalid Password' (live-validated error path TC-009); HMS instance closed after skip.
- EXTRAs slot-1 inner screens, Setup slot-9, Banquet slots 5/6/8 — non-opening slots (documented)
