# MODERNIZATION — PHASE A (FOUNDATION) DETAILED TASK LIST

| | |
|---|---|
| **Derived from** | MODERNIZATION_BLUEPRINT.md §4 Phase A + §8 Immediate Next Steps + SRN-001 §4/§5 + FINAL_REPORT §4 |
| **Duration** | 4–6 weeks (team of 2–3; ~55–70 person-days) |
| **Goal** | Foundation ready: modern SQL Server + backup discipline + schema project + auth service v1 + CI/test rig — **bina kisi business logic change** |
| **Status** | READY — not started |
| **Date** | 2026-09-28 |

> Rule (blueprint se): business rules 1:1 preserved. Phase A me **koi app-behavior change nahi** —
> HMS.exe as-is chalega, sirf uska platform aur governance modernize hoga.

---

## EXIT CRITERIA (Phase A → Phase B gate)

1. MOONData2627 SQL Server 2019+ pe restored; HMS.exe (VB6) uske against verified chal raha
2. Daily backup chain ACTIVE + restore-tested (ek successful test restore documented)
3. DB project (schema snapshot 1:1, 277 tables) repo me; weekly drift-check passing
4. Auth service v1 live (bcrypt store, lockout, AEDP claims) + wrapper-gate pilot ≥1 terminal
5. CI/CD pipeline green: DB deploy → TEST DB → smoke checks
6. TC-001..012 baseline results recorded (known-fail BUGs documented as baseline)
7. SRN-001 containment items 4.1(1–4) done + signed off
8. Night Audit production pe kabhi nahi chalaya gaya is phase me

---

## WA0 — GOVERNANCE & SIGN-OFF (Week 0–1)

| ID | Task | Details | Deliverable | Est | Dep |
|---|---|---|---|---|---|
| A-01 | Owner sign-off pack | Blueprint §8 ke 4 decisions: (1) target stack + budget, (2) SRN-001 §6 ke 4 decisions (containment approve, short-term route, structural schedule, vendor-record ya nahi), (3) sister DBs scope, (4) PII masking policy test DB ke liye | Signed DECISIONS_PHASE_A.md | 1d | — |
| A-02 | Kickoff + RACI + comms | Roles: owner (decisions), DBA/IT (server, ACL, logins), dev (project/auth/CI), vendor contact person (warranty note) | RACI table is doc me update | 0.5d | A-01 |
| A-03 | Execution workspace | `HMS_REVERSE_ENGINEERING/25_Phase_A_Execution/` banao: DECISIONS_PHASE_A.md, run logs, baseline results folder | Folder structure | 0.5d | — |
| A-04 | Issue register seed | BUG-001..010 + SRN-001 F-1..F-5 ko execution tracker me import; Phase A me fix hone wale mark karo (sirf BUG-003/004 mitigation-design, baaki record) | ISSUES.csv | 0.5d | A-03 |

## WA1 — SECURITY CONTAINMENT (SRN-001 §4.1) — Week 1, sabse pehle

| ID | Task | Details | Deliverable | Est | Dep |
|---|---|---|---|---|---|
| A-05 | userMast password rotation | Sab users ke passwords rotate (owner out-of-band communicate kare). Procedure: app se change (login form) — DB me direct update NAHI (PASSWD obfuscation app-managed hai). SA pehle. | Rotation checklist w/ sign-offs | 1d | A-01 |
| A-06 | SQL login rotation | HMS ke SQL logins rotate; pehle `sys.server_principals` inventory (read-only, owner approval) | Login inventory + rotated creds (vault me, not docs) | 1d | A-01 |
| A-07 | Backup + DB file ACL | `C:\Backup` (INI key 5) + koi bhi .mdf/.bak copy → IT-only ACL; current ACL screenshot before/after | ACL evidence | 0.5d | A-01 |
| A-08 | Banquet terminal restriction | Operational: banquet terminal pe direct HMS access restrict; banquet ops main MDI login se. India12 path ab reachable nahi (F-1 containment) | Terminal access list | 0.5d | A-01 |
| A-09 | Weekly UserMast diff job | Read-only scheduled script: `SELECT USER_NAME, LABEL FROM UserMast` weekly snapshot + diff alert (naya SA-type row detection) | job script + first snapshot | 0.5d | A-03 |
| A-10 | Short-term route decision implement | SRN-001 §4.2: vendor patch / specialist binary patch / **wrapper gate (A-25, recommended)** — owner A-01 me decide karega; is task me decision execute karna | Chosen route started | 0.5d | A-01, A-25 |

## WA2 — BACKUP DISCIPLINE + SQL SERVER 2019+ UPGRADE (Weeks 1–3)

| ID | Task | Details | Deliverable | Est | Dep |
|---|---|---|---|---|---|
| A-11 | Instance baseline (read-only) | Current: version/edition/patch, compat levels, logins/roles, jobs, linked servers, sister DBs list. sqlcmd scripts (`-E`, Windows auth) | INSTANCE_BASELINE.md | 0.5d | A-03 |
| A-12 | Deprecation/compat scan | Deprecated-features DMV + 3 procs/10 views T-SQL parity check (2008 R2 → 2019); SQLNCLI.1 provider availability note (HMS isko use karta hai) | COMPAT_REPORT.md | 1d | A-11 |
| A-13 | **Backup discipline start (URGENT)** | Abhi SIMPLE recovery + koi chain nahi. Daily FULL+DIFF MOONData2627 (sister DBs A-01 decision), retention plan, `RESTORE VERIFYONLY` weekly | Backup job + first week of backups | 1d | A-11 |
| A-14 | Upgrade path decision | **Side-by-side recommended** (new server/instance, restore .bak) vs in-place. Target host sizing (277 tables, ~small footprint) | Decision note | 0.5d | A-01 |
| A-15 | Staging restore + HMS smoke | .bak → staging instance; HMS.exe connection test matrix: SQLNCLI.1 vs MSOLEDBSQL; login (SA post-rotation), company select, module open | STAGING_SMOKE_LOG.md | 1d | A-05, A-06, A-13 |
| A-16 | Production upgrade execute | Side-by-side: restore MOONData2627 + attach side stores (DMEPABX.mdb etc. Jet files copy decision A-01); **compat level 100 pe hi rakho** (raise alag task, risk kam) | Cutover runbook + executed | 1d | A-14, A-15 |
| A-17 | Post-upgrade validation | Row-count diff vs `18_Database/tables_rowcounts.txt` (277), views/procs def diff, login smoke, NightAuditLog last-row unchanged, trace se 1 read-session compare | UPGRADE_VALIDATION.md | 1d | A-16 |
| A-18 | Sister DBs upgrade | BareillyClub, GrandOrientData2425, KrishnaPalaceData2627 — same pattern, A-01 scope ke hisab se | Restored/scheduled | 1d | A-16 |

## WA3 — DB PROJECT + SCHEMA SNAPSHOT 1:1 (Weeks 2–4)

| ID | Task | Details | Deliverable | Est | Dep |
|---|---|---|---|---|---|
| A-19 | DB project seed | SSDT `sqlproj` (ya scripts repo): baseline DACPAC schema-only from upgraded DB; verify vs `18_Database/` extracts (5,798 cols, 244 indexes, 10 views, 3 procs) | Repo + baseline build green | 2d | A-16 |
| A-20 | Drift-check job | Weekly schema-compare (DACPAC vs live) → report; live me koi manual change aaye to alert (abhi koi change control nahi hai) | Drift script + first report | 1d | A-19 |
| A-21 | **App-side integrity rules doc** | 0 FK/0 triggers — saara integrity VB6 me hai. Top-15 tables (chart1: Depart, PayCharge, GuestFolio, GuestProf, RevMast…) ke liye app-enforced rules document karo: sources = columns_dictionary, CHECKIN_FIELD_MAP, FRONT_OFFICE_LIFECYCLE, trace evidence | INTEGRITY_RULES.md (per-table) | 3d | A-19 |
| A-22 | FK add-back analysis | Report-only: kaunse FKs NOCHECK/deferred me add ho sakte hain (apply NAHI karna — app behavior change ho sakta hai) | FK_ANALYSIS.md | 1d | A-21 |
| A-23 | Cleanup candidates register | 0-row staging: TempPosDel, SplitSale1/2, TOKEN, GuestMessage — migrate-but-optional mark; koi delete nahi | CLEANUP_REGISTER.md | 0.5d | A-19 |
| A-24 | Numbering service design | BUG-003/004 root fix ka design: Voucher_Prefix/LASTVOU client-side counters → centralized numbering service (sequence/atomic upsert). **Design only** — build Phase B/C me | NUMBERING_DESIGN.md | 1.5d | A-21 |

## WA4 — AUTH SERVICE v1 (SRN-001 §4.3) — Weeks 3–6

| ID | Task | Details | Deliverable | Est | Dep |
|---|---|---|---|---|---|
| A-25 | Auth service spec | bcrypt/argon2id, per-user salt, lockout (5 fails), complexity; **user1.PARAM_STR 'AEDP' → claims mapping**; MenuHelp visibility model (OPT1..4, Flag E/R/N/V, 69 users) as authorization source; U_Name audit preserved (F-1 ka real fix: session bina named user na bane) | AUTH_SPEC.md | 1.5d | A-01 |
| A-26 | Auth service build v1 | FastAPI/.NET skeleton: login, verify, claims issue; userMast sync job; **hash migration = on first login force reset** (reversible PASSWD se decrypt karke hash NAHI banate — reset se clean break); secrets vault me creds | Auth svc + sync job | 4d | A-25 |
| A-27 | Wrapper gate pilot | Thin launcher: auth service se verify → HMS.exe launch; HMS.exe direct execution ACL-block; pilot 1–2 terminals (banquet terminal included — India12 reachability zero) | Pilot terminal + runbook | 2d | A-26 |
| A-28 | V1–V5 verification | SRN-001 §5: V1 backdoor dead (test copy), V2 U_Name audit intact, V3 hash unrecoverable, V4 SA seed flagged, V5 backup creds clean — **sab TEST copy pe, production read-only** | VERIFICATION_RESULTS.md | 1d | A-26, A-15 |

## WA5 — CI/CD + TEST RIG + PHASE-B PREP (Weeks 3–6)

| ID | Task | Details | Deliverable | Est | Dep |
|---|---|---|---|---|---|
| A-29 | TEST DB auto-refresh | Nightly restore: production .bak → SHUDHA_TEST/TestDstDB (instance pe already hain); PII masking decision (GuestProf — A-01) | Refresh job + run log | 1.5d | A-13 |
| A-30 | TC baseline run | TEST_CASES.md TC-001..012 test DB pe execute; expected baseline: TC-006 fail (BUG-003), TC-010 fail (BUG-008 until A-27), baaki pass/fail record | BASELINE_RESULTS.md | 1.5d | A-29 |
| A-31 | CI pipeline | Repo pipeline: DB project build → deploy TEST → smoke SQL (row counts, view defs) → artifacts versioned; auth service build + tests | Green pipeline | 2d | A-19, A-26 |
| A-32 | Dual-run harness prep | Read-only comparison queries: PayCharge totals, BillDet sums, NightAuditLog — VB6 output vs future service output side-by-side. Phase B ka acceptance engine yahi hai | DUAL_RUN_HARNESS.md + queries | 1.5d | A-21 |
| A-33 | Front Office spec freeze start | Blueprint §8 item 4: CHECKIN_FIELD_MAP + FRONT_OFFICE_LIFECYCLE + 55 VB6 forms evidence → field-level signed spec (Phase B pilot ka input) | FO_SPEC v0.9 | 3d | A-03 |

---

## TIMELINE (6-week view)

```
Week:        1        2        3        4        5        6
WA0 gov    [A-01..04]
WA1 sec    [A-05..10]
WA2 sql    [A-11..13][A-14..16][A-17..18]
WA3 db               [A-19..20][A-21..22][A-23..24]
WA4 auth                         [A-25][A-26....][A-27..28]
WA5 cicd                         [A-29..30][A-31....][A-32..33]
EXIT GATE                                              [review]
```

Critical path: **A-01 → A-05 → A-15 → A-16 → A-19 → A-21 → A-32** (upgrade aur schema project
sab kuch gate karte hain). Auth service A-26 parallel build ho sakta hai A-16 ke baad.

## PHASE-A RISKS (blueprint §6 se Phase-A-relevant)

| Risk | Mitigation |
|---|---|
| SQLNCLI.1 (legacy provider) 2019 pe missing | A-15 me matrix; fallback MSOLEDBSQL install + HMS connection-string test (read-only INI change with owner approval) |
| Upgrade ke baad HMS behavior drift | A-17 validation = row counts + view defs + 1 traced session compare (trace technique 20_SQL_Tracking se) |
| Password rotation se staff lockout | A-05 out-of-band comms + SA fallback verified pehle; seeding logic (F-3) ka dhyan — empty-table restore pe SA re-appear hota hai |
| Test DB me production PII | A-29 masking decision; ACL test server pe bhi |
| Owner decisions late | A-01 blocking — Week 1 me close karo, warna WA1/WA2 ruk jayenge |

## EXPLICITLY NOT IN PHASE A (safety)

- Koi HMS.exe binary patch (sirf wrapper gate — binary untouched)
- Koi schema change production me (compat 100 stay; FK add-back = report only)
- Night Audit execution — kabhi nahi, TEST DB pe hi (TC-008)
- Koi Jet .mdb migration — sirf copy/attach decision
- Crystal Reports replacement — Phase D

## EVIDENCE / TOOLING REUSE

| Need | Source |
|---|---|
| Table/columns/indexes extracts | 18_Database/ (columns_dictionary 5,798; indexes_pks 244; views_procs) |
| Row-count baseline | 18_Database/tables_rowcounts.txt (277 tables) |
| SQL execution | sqlcmd `/c/Program Files/Microsoft SQL Server/100/Tools/Binn/SQLCMD.EXE -E` (Windows auth) |
| Trace technique | 20_SQL_Tracking/trace_start.sql (app-name filter 'Logic Pro (Win HMS)') |
| Test case definitions | 21_Testing/TEST_CASES.md |
| Security spec | 21_Testing/SECURITY_REMEDIATION_NOTE_SRN-001.md §4.3/§5 |
| Login/AEDP semantics | 01_Login_Security/LOGIN_FLOW.md + 19_VB6_Logic/MENUHELP_PER_USER_ANALYSIS.md |
| Field-level FO evidence | 05_Front_Office/CHECKIN_FIELD_MAP.md + FRONT_OFFICE_LIFECYCLE.md |
