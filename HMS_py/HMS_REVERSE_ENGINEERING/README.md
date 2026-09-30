# HMS REVERSE-ENGINEERING WORKSPACE

Generated: 2026-09-28. Analysis mode: READ-ONLY. No HMS data/binary modified. No credentials stored.

## Status summary
- Environment discovery: DONE (00_Project_Discovery)
- Code evidence: decompiled HMS.exe as `HMS.bas` / `EXTRAS.text` (54 MB, 995,855 lines) —
  351 objects, 11,084 named procs, full dispatch/menu/SQL census extracted (19_VB6_Logic)
- Original VB6 source: NOT FOUND anywhere (HMS.rar/HMSGST.rar/Temp.rar verified = EXE/mdb only) → BLOCKED
- Live SQL Server metadata: DONE (2026-09-28) — MOONData2627 ONLINE; 277 tables, 10 views,
  3 utility SPs (never called by app), 0 triggers, 0 FKs extracted read-only
  (18_Database/LIVE_DATABASE_DICTIONARY.md)
- Login/Security: DOCUMENTED from code (01_Login_Security)
- All 15 module folders: COMPLETE — 7 subfolders + 18-section `module_manual.md` each
  (02_Main_Setup … 16_Mall_Management; verified 15/15)
- Front Office: lifecycle + dispatch chains + dead-arm analysis (05_Front_Office)
- Night Audit: workflow, gate helpers, phases A–D documented; NOT executed (10_Night_Audit)
- Reports: 524 files inventoried, key mappings done (17_Reports)
- Bugs: 9+ registered incl. hardcoded backdoors (21_Testing/BUG_REGISTER.md)
- Excel inventories + Word manual: GENERATED (22_Final_Manual)
- Runtime GUI exploration: PERFORMED — 309 PNGs in `screenshots/<module>/` (single source),
  captured to `MODULE_SCREEN_OPERATION_STATE.png` standard (SCREENSHOT_STANDARD.md)
- Action log: 307 rows, Related SQL column 100% populated (307/307) per spec §11
- Spec artifacts: HMS_BAS_LOGIC.md (§9), SCREENSHOT_STANDARD.md (§17),
  FE_BE_DB_MAPPING.md (§19), DATABASE_RELATIONSHIP.md (§12) written

## Folder map
00_Project_Discovery/  environment, software inventory, INI, DB connection, project tree
01_Login_Security/     LOGIN_FLOW.md
02_Main_Setup .. 16_Mall_Management/  15/15 modules COMPLETE (7 subfolders + module_manual.md each)
05_Front_Office/       FRONT_OFFICE_LIFECYCLE.md, CHECKIN_FIELD_MAP.md + full module set
10_Night_Audit/        NIGHT_AUDIT_FLOW.md + full module set
17_Reports/            REPORTS_ANALYSIS.md, REPORTS_QUICK_REFERENCE.md, REPORTS_TXT/ (233 extracts)
18_Database/           DATABASE_RELATIONSHIP.md, LIVE_DATABASE_DICTIONARY.md, raw extracts
19_VB6_Logic/          HMS_BAS_LOGIC.md, FE_BE_DB_MAPPING.md, menu tree/census files,
                       vb6_form_inventory.md (351 objects)
20_SQL_Tracking/       SQL evidence embedded in module docs; profiler pass pending DB
21_Testing/            BUG_REGISTER.md, TEST_CASES.md, BUG_DEEP_ANALYSIS.md
22_Final_Manual/       HMS_Complete_Reverse_Engineering_Manual_v2.docx (21 MB),
                       MASTER_INDEX / MASTER_SCREEN_INVENTORY.xlsx / MASTER_DATABASE_DICTIONARY.xlsx
23_Modernization_Blueprint/  MODERNIZATION_BLUEPRINT.md + docx (charts embedded)
24_GST_EInvoice/       GST_EINVOICE_FLOW.md (GSP/IRP integration deep-dive)
screenshots/           309 PNGs, one folder per module (single source of truth)
SCREENSHOT_STANDARD.md capture convention + spec-name mapping
action_log.csv         307 GUI actions with Screen/Action/Related Code/Related SQL
build_inventories.py / build_manual*.py   regeneration scripts

## Remaining / next phase
1. Locate original VB6 source (any machine with the .vbp project) → direct code mapping.
2. Optional: DB profiler pass in 20_SQL_Tracking to capture runtime statements for
   report viewers (SQL currently embedded in .rpt files).
