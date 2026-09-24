# VB6 ↔ Python Side-by-Side Comparison Report

**Date:** 2026-09-24  
**Method:** 3 parallel domain agents (Frontend/Forms, Database, BAS modules)  
**Sources:** `FODER\*.frm` (321), `FODER\*.bas` (32) + root `HMS.bas` vs `HMS_py\core\*.py` (100), `HMS_py\ui\*.py` (82), `Report_Queries\*` (356), `moondata.sql` (274 CREATE TABLE), live DB Moondata2627  
**Priority rule:** DB-feasible + high business value first; BLOCKED tables documented, never invented.

---

## Executive Summary

| Layer | VB6 | Python | Status |
|-------|-----|--------|--------|
| **Frontend forms** | 321 `.frm` | 82 UI modules | 110 FULL · 124 PARTIAL · 10 WRONG · 71 CS · 5 MISSING |
| **Business logic** | 32 `.bas` (~5,860 funcs) | 100 core modules | ~290 PORTED · ~550 PARTIAL · ~5,020 MISSING (~14% fn coverage) |
| **Database tables** | 329 referenced | 179 referenced | 174 BOTH · 155 VB6_ONLY · 5 PY_ONLY |
| **Report queries** | 232 defs / 356 folders | 261 keys in reports.py | 230 name-matched · 333/421 live SQL PASS |

**Already DONE (prior waves):** Stock Transfer/Issue/Receipt/Register, Depart Master, eInvoice Config, Checkout Clearance, settle BillAmt, clearance wire, payment instruments, RoomOcc Type, DocId/CurrBal/LedgerLog, shell wiring (Year End, Permissions, HR, Banquet), BAS foundations (error_handling, validation, url_utils), reverse night audit, full POS sale save, GST TaxStru, LEDGERREF/TDS, NCat routing.

**BLOCKED (do NOT invent):** Banquet ops tables, MemberModule 0-row tables, Door Lock DLL, Touch POS, SMS HTTP gateway live API, e-Invoice IRN, Crystal print pipeline.

---

## 1. Frontend — VB6 Forms ↔ Python PyQt6 UI

### Status Totals (320 parseable forms)

| Status | Count | Meaning |
|--------|------:|---------|
| **FULL** | **110** | Dedicated Python UI with comparable fields/actions |
| **PARTIAL** | **124** | Shared/simplified screen vs rich VB6 form (or RO list only) |
| **WRONG_TARGET** | **10** | Menu opens wrong form — priority re-wires |
| **COMING_SOON** | **71** | DB-blocked or documented skip (mostly Members 19, FO 11) |
| **MISSING** | **5** | Splash/demo/orphan artifacts only |

### Per-Domain Breakdown

| Domain | n | FULL | PARTIAL | WRONG | CS | MISS |
|--------|--:|-----:|--------:|------:|---:|-----:|
| Front Office | 50 | 9 | 29 | 1 | 11 | 0 |
| Finance / FA | 39 | 20 | 10 | 3 | 6 | 0 |
| POS / Restaurant | 31 | 7 | 18 | 0 | 6 | 0 |
| Banquet / Hall | 22 | 6 | 11 | 1 | 4 | 0 |
| Members / Club | 30 | 5 | 4 | 2 | 19 | 0 |
| HR / Payroll | 12 | 10 | 1 | 0 | 1 | 0 |
| Housekeeping | 8 | 1 | 3 | 0 | 4 | 0 |
| EPABX / Comms | 14 | 8 | 4 | 0 | 2 | 0 |
| Reports / NA | 30 | 1 | 23 | 3 | 2 | 1 |
| System / Utility | 24 | 6 | 11 | 0 | 4 | 3 |
| Setup / Masters | 33 | 24 | 3 | 0 | 5 | 1 |
| Other | 27 | 13 | 7 | 0 | 7 | 0 |
| **TOTAL** | **320** | **110** | **124** | **10** | **71** | **5** |

### 10 WRONG_TARGET Re-wires (Priority)

| # | VB6 Form | Menu leaf currently opens | Should open |
|---|----------|---------------------------|-------------|
| 1 | FdRevCheckOut | open_checkout | reverse checkout flow |
| 2 | FaAdjustDel | open_fa_adjust | dedicated delete (or confirm dual-use) |
| 3 | FaCurrBalUpdate | open_trial_balance | balance rebuild UI |
| 4 | FaTDSChal | open_voucher_entry | TDS challan UI |
| 5 | fdAcPostChrg | open_nightaudit_reports | NA process runner |
| 6 | fdNDAcPostChrg | open_nightaudit_reports | posting utility |
| 7 | frmReNightAudit | reverse via reports menu | reverse_night_audit (core exists L489) |
| 8 | HallAcPostChrg | open_hall_booking | hall A/C posting |
| 9 | MembershipMast | open_member_billing | member master CRUD |
| 10 | SmartCardRegistration | open_smartcard | registration entry |

### Front Office Sample (50 forms → 9 FULL / 29 PARTIAL / 11 CS)

| VB6 Form | Python UI | open_* | Status | Gap |
|----------|-----------|--------|--------|-----|
| FdCheckOut | checkout_ui.py | open_checkout | PARTIAL | settle/clearance/instruments (partially fixed) |
| fdPaymentCharge | folio_ui.py | open_folio | PARTIAL | post-charges via folio RO |
| fdWalkInEntry | frontoffice.py | open_checkin | PARTIAL | Adult/ChkInTime (fixed this session) |
| FdLookUpRoom | fo_sub_forms_ui | open_room_lookup | FULL | — |
| fdRoomChange | fo_sub_forms_ui | open_room_change | FULL | — |
| GuestProfile | frontoffice.py | open_guestprof | PARTIAL | TB=77 vs shared screen |
| frmAdvanceDepDialog | — | Advance Deposit | CS | tables absent |
| FdRevCheckOut | checkout_ui | Check Out | WRONG | reverse not dedicated |

### Setup/Masters Sample (33 forms → 24 FULL — strongest domain)

CompMast, DepartMast, FrmRoomMast, FrmTaxStruMast, UserPermission, FrmWaiterMast, etc. all FULL with dedicated openers.

### HR/Payroll (12 → 10 FULL)

Attendance/Leave/Loan/Overtime/Salary all tabs in `hr_payroll_ui` — best-covered operations domain.

### MISSING (5)

`Form1`, `CsehDemoForm`, `FrmImage`, `frmWelcome` (splash/demo), `FrmFacilityMast` (orphan Form1).

---

## 2. Database — Tables / Columns / Queries / Connection

### 2a. Table Inventory

| Category | Count |
|----------|------:|
| **BOTH** (VB6 + Python) | **174** |
| **VB6_ONLY** | **155** (138 code/queries + 17 schema-only) |
| **PY_ONLY** | **5** (cateringbooking, einvoice, epabxcalls, members, revenuegroup) |
| moondata.sql CREATE TABLE | 274 |
| Python unique table tokens | 179 |
| VB6 union total | 329 |

**Highest-value VB6_ONLY gaps:** `expsheet`, `paymentreceive`, `transin/transout/transundetail/transdel`, `splitsale1/2`, `splitstock`, `pos_sbill`, `travel1/2`, `plantokendetails`, `smartcardtransaction`, `doorlockenviro`, `epabx_out`, `messaging`, `usermenu/usermodule`, `salarylog`, `membill1/2`, full Mem* ops family, `view*` views, `table_gstr2a`.

### 2b. Column / Schema Mismatches (resolved vs open)

| Area | Status |
|------|--------|
| QtyRec vs QtyRcp | **FIXED** (21 SQLs rewritten) |
| PayCharge 35-col instruments | **PARTIAL** — folio.py full; fo_ops.py SNo=1 still |
| SETTLEDATE/Bill_No stamp | **FIXED** |
| RoomOcc Type='I' | **FIXED** |
| Reverse UserChkOutDate | **FIXED** |
| Amend PlanDetails cascade | **FIXED** |
| FA DocId 21-char | **FIXED** |
| SUBGROUPCURRBAL/ACGROUPCURRBAL | **FIXED** |
| LedgerLog SeqNo | **IMPLEMENTED** |
| Cheque 3-col clear | **COVERED** |
| KOTLog audit | **IMPLEMENTED** |
| POS reprint NetAmt/DelFlag | **FIXED** |
| Purchase register PBPB | **PARTIAL** (GIN+POrder only) |
| Banquet/Member report table names | **MISMATCH** (Members/EPABXCalls/CateringBooking absent) |
| Opening stock STOP | re-verify |

### 2c. Report Query Coverage

| Metric | Covered | Missing/blocked |
|--------|--------:|----------------:|
| REPORTS_TXT defs (232) | **230** name-matched | 2 (index files) |
| Report_Queries folders (356) | **285** table-overlap | **70** no overlap |
| Live report SQL engine | **333 PASS** | **88 FAIL** |
| Report domains hard-missing | — | **6** (print pipeline, messaging, reverse-NA UI, Touch POS, multi-site transfer, FAFind UI) |
| Report domains blocked/unwired | — | **4** (Members ops, Banquet ops, EPABX calls, HR payroll wiring) |

**reports.py split:** FO 70 · Finance 54 · POS 54 · Inventory 33 · Tax 29 · General 19 · NA 2.

**70 no-overlap folders** are mostly: utility .bas, print/preview, messaging, NA reverse msgs, Touch POS, lock settings, config masters, unwired FO forms, Members facility.

### 2d. Connection / Config

| Aspect | VB6 | Python |
|--------|-----|--------|
| Config | `Analysis.ini` `[HMS]` keys 1–10 | same file + `HMS_ANALYSIS_INI` env |
| Live DB | root ini `KailashData2526` | package `Moondata2627` (wins) |
| Driver | OLE DB SQLOLEDB/SQLNCLI | pyodbc SQL Native Client 10.0 → SQL Server |
| Auth | SQL auth User/Password | Windows Trusted_Connection |
| Secondary | DAO Company.mdb / Fadata.mdb | none (SQL Server only) |
| Hardening | — | timeout, LOCK_TIMEOUT 5000, identifier whitelist, UPDLOCK next_vno |

### 2e. BLOCKED Census (live row probe)

| Table family | Live | Status |
|--------------|------|--------|
| MembershipRevMast / SmartCard* | 0 rows | 🚫 MemberModule |
| MemberFamily | 37 FK-only | ops dead |
| HallBill / CateringBook / EventMast | absent | 🚫 Banquet (use HallBook*) |
| TelCall / Reward / DoorLock / SMSLog / EInvoice etc. | absent | 🚫 SKIP (migration 001 not executed) |
| EPABX_OUT / EPABXCalls / Members / RevenueGroup | absent | BLOCKED |
| RoomBLockOut | empty | OOO blocked until seed |
| Site / DeliveryBoy / GroupProf | empty | degraded |
| eInvoiceEnviro | 1 row | ✅ FEASIBLE (done) |
| Stock / RQI/RQR / Depart / FOMBillDetails | live | ✅ P6 done |

---

## 3. BAS Modules ↔ Python Core (function-level)

### Module Summary

| .bas | #funcs | Ported | Partial | Missing | Python home |
|------|-------:|-------:|--------:|--------:|-------------|
| HMS.bas (menu/reports) | ~5433 handlers | menu registry | many leaves | ~5000 event tails | shell.py, menu.py, reports.py |
| FaLib.bas | 58 Proc_183_* | ~15 | ~3 | **~40** | fa_ledger_ops.py, fa_voucher.py |
| FaVoucher.bas | 8 | 5 | 0 | 3 (NCat print/dispatch partial) | fa_voucher.py, voucher_type.py |
| POSBillPrint.bas | 26 | 3 | 0 | **23** | pos_sales.py rate lookup only |
| SMSModule.bas | 19 | 6 | 0 | **13** | sms_enviro CRUD, sms_http partial |
| MobWebAPI.bas | 3 | 0 | 0 | **3** | **no real HTTP client** |
| mdlNightAudit.bas | 10 | 2 | 0 | 8* | nightaudit.py (*reverse NA now ported) |
| MemberModule.bas | 5 | 2 | 0 | 3 | member_billing.py |
| GridPrint.bas | 4 | 0 | 0 | **4** | NO_MODULE (CSV only) |
| ErrorHandlingModule | ~12 | 2 | 0 | 10 | error_handling.py |
| ValidationModule | ~8 | 2 | 0 | 6 | validation.py |
| Functions.bas (URL) | 2 | 2 | 0 | 0 | url_utils.py ✅ |
| DatabaseSecurityModule | ~6 | 2 | 0 | 4 | validation.sanitize/validate_sql |
| modLog | 3 | 1 | 0 | 2 | error_handling.log_trace |
| eInvoice.bas | auth+IRN | config | — | IRN live | einvoice.py config-only |
| ModuleDoorLock | DLL encode | sim mode | — | HW | godrej_locks.py |
| ModuleSmartCard | ±0x1B | CRUD | — | cipher | smartcard.py |
| mdlDataTransfer | multi-site sync | 0 | — | all | none |
| Hotlib/MainLib/TopBarLib | scattered | partial | — | tails | various |
| JSON/TmpTable | superseded | ✅ stdlib/list | — | — | OK |

**Overall function coverage est.: ~290 PORTED / ~550 PARTIAL / ~5,020 MISSING (~13.8%)** — dominated by HMS.bas event-handler tails and Crystal print layout procs.

### Critical Missing (implement next)

1. **MobWebAPI / real HTTP** — blocks SMS dispatch + eInvoice IRN  
2. **POSBillPrint** — 23 layout procs; all print buttons still stubs  
3. **GridPrint** — reptmp TEXTFILE spool / DOS printing  
4. **SMSModule HTTP dispatch** — queue-only today  
5. **FaLib ~40 Proc_183_*** — CurrBal chain partial; adj/report procs  
6. **ErrorHandling remainders** — StandardErrorHandler GUI hook, severity routing  
7. **Validation remainders** — SQL builders hardening  
8. **mdlDataTransfer** — multi-site sync  
9. **FAFind/FaRepView dedicated UI** — core find_voucher exists, no screen  

---

## 4. Implementation Priority (next waves)

### P9 — Frontend re-wires (10 WRONG_TARGET)
Reverse checkout, Delete Adjustment, CurrBal update, TDS Challan, NA process ×2, Reverse NA menu, Hall A/C, MembershipMast, SmartCard Registration.

### P10 — Print pipeline
POSBillPrint layouts → GridPrint spool → reports QPrinter/preview (replaces Crystal).

### P11 — HTTP foundation
MobWebAPI GET/POST (requests/urllib) → SMSModule dispatch → eInvoice IRN (config already live).

### P12 — PARTIAL deepening (highest business value)
- FO: FdCheckOut remaining, fdPaymentCharge post UI, GuestProfile 77-field form  
- POS: RSSaleBill TB=52 full entry, bill modification  
- Finance: FaSubGroup entry vs browser, FaVtype define  
- Reports: 88 failing SQLs (Finance balance ~22, FO Vdate ~20, POS KOTNo misc)

### P13 — FaLib depth
Resolve ~40 Proc_183_* bodies; full adj/pending/report coverage.

### P14 — DB migration review
Execute/edit `001_missing_tables.sql` for genuinely needed tables only; fix Python-only wrong table names (Members→MembershipMast, EPABXCalls→EPABX_*).

---

## 5. Artifacts

| Artifact | Path |
|----------|------|
| This report | `VB6_PYTHON_SIDE_BY_SIDE_REPORT.md` |
| Skill | `~/.claude/skills/vb6-python-compare/` + `~/.config/opencode/skills/vb6-python-compare/` |
| BAS foundations | `HMS_py\core\error_handling.py`, `validation.py`, `url_utils.py` |
| Priority plan (DB census) | `MODULE_FIX_PLANS\REMAINING_PRIORITY_PLAN.md` |
| Schema dump | `FODER\moondata.sql` (274 tables) |
| Report queries | `MODULE_FIX_PLANS\...\Report_Queries\` (356 folders) |

---

*Generated by 3-agent parallel comparison (frontend / database / BAS). Evidence line refs are live file:line.*
