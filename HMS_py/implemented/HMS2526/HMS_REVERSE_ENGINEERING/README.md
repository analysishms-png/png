# HMS REVERSE-ENGINEERING WORKSPACE

Generated: 2026-09-28. Analysis mode: READ-ONLY. No HMS data/binary modified. No credentials stored.

## Status summary
- Environment discovery: DONE (00_Project_Discovery)
- Code evidence: decompiled HMS.exe available as EXTRAS.text (54 MB) — 351 objects extracted (19_VB6_Logic)
- Original VB6 source: NOT FOUND anywhere (HMS.rar/HMSGST.rar/Temp.rar verified = EXE/mdb only) → BLOCKED
- Live SQL Server metadata: DONE (2026-09-28) — MOONData2627 ONLINE; 277 tables, 10 views,
  3 procs, 0 triggers, 0 FKs extracted read-only (18_Database/LIVE_DATABASE_DICTIONARY.md)
- Login/Security: DOCUMENTED from code (01_Login_Security)
- Front Office lifecycle: DOCUMENTED with exact SQL (05_Front_Office)
- Night Audit: DOCUMENTED from code; NOT executed (10_Night_Audit)
- Reports: 524 files inventoried, key mappings done (17_Reports)
- Bugs: 9 registered from logs+code (21_Testing/BUG_REGISTER.md)
- Excel inventories + Word manual: GENERATED (22_Final_Manual)
- Runtime GUI exploration/screenshots: NOT PERFORMED (requires user credentials + working DB) → next phase

## Folder map
00_Project_Discovery/  environment, software inventory, INI, DB connection, project tree
01_Login_Security/     LOGIN_FLOW.md
02_Main_Setup .. 16_Mall_Management/  (module folders created; deep-dives pending GUI phase)
05_Front_Office/       FRONT_OFFICE_LIFECYCLE.md (deep)
10_Night_Audit/        NIGHT_AUDIT_FLOW.md (deep)
17_Reports/            REPORTS_ANALYSIS.md
18_Database/           DATABASE_INVENTORY.md, DATABASE_RELATIONSHIP.md
19_VB6_Logic/          vb6_form_inventory.md (351 objects)
20_SQL_Tracking/       (SQL evidence embedded in module docs; profiler pass pending DB)
21_Testing/            BUG_REGISTER.md, TEST_CASES.md
22_Final_Manual/       HMS_Complete_Reverse_Engineering_Manual.docx,
                       HMS_SYSTEM_ARCHITECTURE.md, MASTER_SCREEN_INVENTORY.xlsx,
                       MASTER_DATABASE_DICTIONARY.xlsx
23_Modernization_Blueprint/  MODERNIZATION_BLUEPRINT.md,
                       HMS_Modernization_Blueprint.docx (charts embedded),
                       charts/chart1..5.png (measured-data charts), build scripts
24_GST_EInvoice/       GST_EINVOICE_FLOW.md (GSP/IRP integration deep-dive)
build_inventories.py / build_manual.py   regeneration scripts

## To continue (needs user input)
1. GUI exploration with HMS credentials at runtime → screenshots per standard (DB now live).
2. Provide HMS app credentials at runtime → GUI exploration with screenshots per standard.
3. Locate original VB6 source (any machine with the .vbp project) → direct code mapping.
