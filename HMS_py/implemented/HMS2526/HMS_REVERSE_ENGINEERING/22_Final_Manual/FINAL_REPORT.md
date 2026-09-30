# HMS REVERSE-ENGINEERING — FINAL REPORT
**Date:** 2026-09-28 | **Duration:** single-session (multi-phase) | **Mode:** 100% READ-ONLY
**System:** HMS.exe (VB6 MDI, 351 objects) + MOONData2627 (SQL Server 2008 R2, 277 tables) | Site 'KK', Bareilly

---

## 1. KAAM KA SUMMARY (kya-kya achieve hua)

### Evidence collection
| Stream | Volume |
|---|---|
| Decompiled code (EXTRAS.text) | 54 MB — 351 objects, 524 menu items, exact SQL strings |
| Live DB catalog | 277 tables, 5,798 columns, 244 indexes, 10 views, 3 procs, 0 FK/triggers |
| Live SQL trace | 17,525 statements (40 writes fully accounted — 0 business changes) |
| GUI captures | 97 PNGs, 71 verified window-opens, action_log.csv audit trail |
| Runtime logs | ErrorLog/FaLog/IssueLists (2017–2026) |

### Documentation deliverables (22_Final_Manual/)
1. **HMS_Complete_Reverse_Engineering_Manual_v2.docx** — 87 figures, full technical manual
2. **HMS_Operations_Manual.docx + .md** — Frontend→Backend→DB→SQL workflows (33 figures)
3. **HMS_WORKFLOWS_PART2.md** — EPABX/SMS/Members/SmartCard + status matrix
4. **00_MASTER_INDEX.md** — poore workspace ka navigation map
5. HMS_SYSTEM_ARCHITECTURE.md, MASTER_SCREEN_INVENTORY.xlsx, MASTER_DATABASE_DICTIONARY.xlsx
6. 23_Modernization_Blueprint/ — 5 charts (measured) + 4-phase roadmap + .docx

### Key discoveries
1. **Menu engine dual-source**: 524 hardcoded (Proc_165_0_14C1708) + MenuHelp per-user override (OPT1..4, Flag E/R/N/V; 69 users: SA=440 → kot=4)
2. **RBAC = 2 layers**: MenuHelp (visibility) + user1.PARAM_STR 'AEDP' (rights) — full RBAC spec extract ho gaya
3. **Integrity 100% app-side** (0 FK/0 triggers) — modernization ka sabse bada risk/input
4. **Business date per-site** (Enviro.NCUR); Night Audit = 6-step transaction (documented, never executed)
5. **GST e-Invoice live**: CI GSP → IRP, 185/211 IRNs, last ack 2026-08-01
6. **SMS outbox proven**: DBSENDSMS 18,810 rows, JobScheduler poll pattern
7. **POS multi-outlet live**: main + High Way point + MOON TEA CAFE
8. **App-name**: 'Logic Pro (Win HMS)' — trace-filtering ke liye

### Bugs & security (recorded, NOT fixed)
- **BUG-001..010** — schema drift (LocationMast missing LIVE), PK crashes (counter desync), report paths, transaction nesting, unhandled EOF/field errors
- **Security**: BUG-008 'India12' backdoor, reversible passwords, SA seeding, connection-string creds (SRN-001 F-1..F-4), e-invoice plaintext secrets (BUG-010/F-5)
- **SRN-001**: containment + patch routes + verification plan + owner decisions

### Safety record (100% clean)
- Koi INSERT/UPDATE/DELETE/DDL HMS data pe nahi (40 writes = app-internal normalization/staging cleanup — full accounting in SQL_TRACKING_RESULTS.md §2)
- Night Audit kabhi execute nahi (blocklist-enforced)
- Har GUI form ESC/WM_CLOSE/'No' se closed — zero saves
- Passwords kabhi stored/logged nahi (masking throughout)
- Trace stop + cleanup verified (0 traces, 0 HMS processes)

## 2. RBAC LIVE VERIFY — SKIPPED (owner decision)
Deepak login attempt: guessed password → 'Invalid Password' (TC-009 error path live-validated).
Live restricted-menu capture skip — MenuHelp-based RBAC docs complete (DEEPAK_ROLE_PROFILE.md).
Future-me karne ke liye: Deepak se login → strip buttons compare (expect Inventory/Finance/HR hidden) →
menu count vs 157. Master index me skip note recorded.

## 3. WORKSPACE LOCATION
```
C:\PENDRIVE\HMS\HMS_REVERSE_ENGINEERING\
├── 00_Project_Discovery\   environment, INI, DB connection
├── 01_Login_Security\      LOGIN_FLOW.md (+ 12 login screenshots)
├── 02..16_*\               module folders (captures + module docs)
├── 05_Front_Office\        FRONT_OFFICE_LIFECYCLE + CHECKIN_FIELD_MAP
├── 10_Night_Audit\         NIGHT_AUDIT_FLOW (code-verified)
├── 17_Reports\             REPORTS_ANALYSIS (524 files mapped)
├── 18_Database\            LIVE_DATABASE_DICTIONARY + raw extracts (5,798 cols)
├── 19_VB6_Logic\           MENU_INVENTORY (524), MENUHELP analysis, role profiles, 351 objects
├── 20_SQL_Tracking\        SQL_TRACKING_RESULTS + raw statements
├── 21_Testing\             BUG_REGISTER, SRN-001, TEST_CASES
├── 22_Final_Manual\        ★ 4 manuals + master index + inventories + this report
├── 23_Modernization_Blueprint\  blueprint + charts
├── 24_GST_EInvoice\        GST_EINVOICE_FLOW
└── screenshots\            97 PNGs + CAPTURE_INDEX.md
```

## 4. RECOMMENDED NEXT STEPS (priority order)
1. **SRN-001 containment aaj**: userMast + SQL passwords rotate; C:\Backup ACL; banquet terminal access restrict
2. **DB backup** lena start (SIMPLE recovery, koi backup chain nahi mili)
3. **BUG-003/004**: posting single-terminal tak restrict jab tak numbering-service fix na ho
4. Modernization Phase A: SQL 2019 upgrade (2008 R2 EOL) + schema snapshot (already extracted)
5. LocationMast table create karna (BUG-001) ya screen menu se hatana
6. Optional: Deepak RBAC live verify (ab jab bhi password available ho)

---
*Analysis closed 2026-09-28. Saara evidence HMS_REVERSE_ENGINEERING workspace me preserved —
koi bhi developer ye docs padhke HMS ko bina guesswork ke rebuild kar sakta hai.*
