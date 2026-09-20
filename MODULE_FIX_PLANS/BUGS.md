# HMS Python Project — Bugs & Issues

**Project Root:**
```
C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py
```

**Date Last Updated:** 2026-09-20

---

## KNOWN BUGS

| BUG ID | MODULE | SEVERITY | DESCRIPTION | REPRODUCTION | EXPECTED | ACTUAL | VB6 BEHAVIOR | ROOT CAUSE | FIX | REGRESSION TEST | STATUS |
|--------|--------|----------|-------------|-------------|----------|--------|--------------|------------|-----|-----------------|--------|
| B001 | core/nightaudit.py | Medium | `night_audit_rr()` index mapping may not match all VB6 cases | Call with index > 12 or &H10-&H12 | Returns correct report mapping | Returns "unknown" for out-of-range indices | VB6 Select Case supports &H10-&H12 | Index mapping incomplete in dict | Add remaining index mappings | TODO | Open |
| B002 | core/reports.py | Low | `mat_rep()` dictionary uses integer keys but VB6 cases use hex | Call mat_rep with hex-derived indices | Returns correct report name | May miss &HA-&H12 mappings | VB6 Select Case 0 to &H12 | Hex-to-int conversion missing | Map hex constants to integers | TODO | Open |
| B003 | All modules | Info | No comprehensive VB6 vs Python comparison framework | Run critical workflows | N/A | N/A | VB6 behavior reference needed | No automated comparison | Create VB6→Python test matrix | TODO | Open |

---

## BUGS FOUND DURING MIGRATION

| BUG ID | MODULE | DESCRIPTION | STATUS |
|--------|--------|-------------|--------|
| B004 | core/pos.py | POSMas_Click index 5 (FrmItemGroupMast) maps to "Finish" config - verify VB6 behavior matches | Closed |
| B005 | core/pos_entry.py | POSEnt_Click case 3 (Item wise Sale) has department validation logic - verify SQL query matches VB6 | Closed |
| B006 | core/nightaudit.py | `get_night_audit_flags()` reads Enviro table - verify column names match DB schema | Closed |
| B007 | core/reports.py | `vat_register()` reads Tax_Master/Solar tables - verify column names match DB schema | Closed |
| B008 | core/pos_entry.py | POSEnt_Click case &HA (10) calls KOT transfer - verify Enviro flags match | Closed |
| B009 | core/folio.py | `receive_payment()` queried non-existent `PayTypeMast` table (live-caught: Invalid object name 208). VB6 evidence: PayType hard-coded combo categories in fdPaymentCharge.frm; live REC census Cash/Company/Credit Card/Other | Closed — PAY_TYPES dict + unknown-paycode ValueError |
| B010 | core/folio.py | REC INSERT had 25 cols but 17 params (missing `?` for U_Name) — live-caught 21S01 | Closed |
| B011 | tests/database/test_receive_payment.py | Prior crashed runs left orphan PYT* folios/charges that poisoned next run's balance assertions | Closed — preflight cleanup + full-restore check (T10) |
| B012 | tools/hms_py_e2e_p4b.py | Reorg (package now HMS_py/HMS_py/) broke harness db_check import — P4-09 false-fail; also stale duplicate EXE processes steal focus (2 login windows) | Closed — sys.path insert + pre-run taskkill |
| B013 | build/HMS_py.spec | Spec pointed to old main.py path after reorg — build failed | Closed — '..\\HMS_py\\HMS_py\\main.py' + pathex; tally_export/tally_ui hiddenimports added |
| B014 | core/inventory.py | `stock_register()` hardcoded `vprefix="2026"` returned 0 rows — live Stock is all Vprefix='2025' (13253 rows). VB6 register is date-window based (Crystal StkRegStore.rpt TTX evidence), not FY-pinned | Closed 20/Sep — default vprefix=None + vdate_from/vdate_to params; regression test_inventory_registers.py 8/8 PASS (Stock delta 13253→13253) |
| B015 | HMS_py/main.py + core/db.py | Analysis.ini reports/temp paths (keys 2/3) were never created if missing — VB6 report export + Temp.Mdb depend on them | Closed 20/Sep — `db.ensure_paths()` (create-if-missing, best-effort) wired in main(); live paths already exist, fake-path probe verified creation |

---

## SUSPECT ISSUES (NEED INVESTIGATION)

| ID | MODULE | ISSUE | PRIORITY |
|----|--------|-------|----------|
| S001 | core/nightaudit.py | `run_night_audit()` modifies database - ensure test DB isolation | High |
| S002 | core/reports.py | Report PDF generation may differ from VB6 output format | Medium |
| S003 | core/pos.py | POS form opening logic may differ from VB6 navigation | Medium |
| S004 | core/pos_entry.py | POSEnt_Click database queries may need test DB verification | Medium |
| S005 | All modules | No VB6 behavior comparison automated tests | High |

---

## VB6 COMPARISON NEEDED

For critical workflows, the following VB6 vs Python comparisons are required:

### Reservation Workflow
- [ ] VB6: Reserve room → Check availability → Assign room → Generate folio
- [ ] Python: Same flow with Python database queries
- [ ] Comparison: Room assignment, folio generation, status updates

### Check-In Workflow
- [ ] VB6: Guest registration → Room key assignment → Folio opening
- [ ] Python: Same flow with Python database queries
- [ ] Comparison: Guest data, room assignment, folio number

### Payment/Refund Workflow
- [ ] VB6: Calculate subtotal → Apply discount → Add tax → Grand total
- [ ] Python: Same calculation with Python SQL queries
- [ ] Comparison: Tax rates, discount application, rounding

### Night Audit Workflow
- [ ] VB6: Check Enviro flags → Post room charges → Post POS revenue → Log NA
- [ ] Python: Same flow with Python posting functions
- [ ] Comparison: Posted counts, tax calculations, error handling

### Night Audit Revenue Reports
- [ ] VB6: NightAuditRR_Click indices 0-&HC generate specific reports
- [ ] Python: night_audit_rr() function with same index mapping
- [ ] Comparison: Report names, data, format

### Material Reports
- [ ] VB6: MatRep_Click indices 0-&H12 open rInventRepView with specific GRepFormName
- [ ] Python: mat_rep() function with same index mapping
- [ ] Comparison: Report names, forms opened, data displayed

### VAT Reports
- [ ] VB6: MatVatR_Click indices 0-&H10 generate VAT register reports
- [ ] Python: vat_register() function with same index mapping
- [ ] Comparison: Report names, tax data, format

---

## DOCUMENTATION NOTES

**Migration Tracking:**
- See `MIGRATION_STATUS.md` for complete migration progress
- Status values: NOT_STARTED, ANALYZING, IN_PROGRESS, TESTING, DEBUGGING, PARTIAL, COMPLETE, BLOCKED

**Module Classification:**
- COMPLETE: All functions implemented, tested, documented
- PARTIAL: Some functions implemented, gaps documented
- IN_PROGRESS: Currently being implemented
- BLOCKED: Waiting on external dependency or evidence

**Known Differences from VB6:**
1. Python uses parameterized queries vs VB6 string concatenation
2. Python uses pyodbc vs VB6 ADO/DAO
3. Python UI uses PyQt6 vs VB6 native controls
4. Report generation: Python uses reportlab vs VB6 Crystal Reports/built-in
5. Transaction handling: Python uses explicit BEGIN/COMMIT/ROLLBACK vs VB6 intrinsic

---

## REGRESSION TEST REMINDER

After any fix:

```text
FIXED MODULE
    ↓
Previous Module Tests
    ↓
Integration Tests
    ↓
Smoke Test (login → company → main window → key workflow)
```

A new fix must not break already completed modules.

---

## LAST REVIEW

2026-09-19 — Initial bug tracking setup| B017 | core/db.py | Dead-process orphan transactions (execute commit=False + killed probe) DB-wide LCK_M_S blocking kar rahe the — GodownMast queries hang | Closed — LOCK_TIMEOUT 5000 + own-connection rollback-on-close; KILL 60 recovery |
| B018 | core/reports.py | ABC analysis OVER(ORDER BY) running total SQL2008R2 par syntax error | Closed — correlated subquery rewrite (SQL2008R2-compatible) |
| B019 | core/reports.py | String literals ke andar '?' bhi param count ho rahe the (ISNULL(s.Name,'?')) | Closed — _count_params() literal-strip regex |
| B020 | core/roomcategory.py | RoomCat composite PK (Type, Code) tha — module single-Code assume karta tha; update/delete/get scopeless, dup-guard galat | Closed — Type-scoped rewrite (default RO), single-code API compat; live round-trip 9/9 |
| B021 | core/roommaster.py | RoomMast PK = (Type, Code, RestCode, LogSite_Code) — single-Code guard/WRONG-scope update; RoomCat FK validation missing | Closed — composite-PK scoped CRUD + FK guard (invalid cat reject) |
| B022 | ui/p2_masters.py | roomcategory/roommaster configs stale LIMITS keys (maxadult/description/catcode/floor) use karte the — click par KeyError crash | Closed — configs live schema + module LIMITS se aligned; offscreen probes PASS |
