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

**Already DONE (prior waves):** Stock Transfer/Issue/Receipt/Register, Depart Master, eInvoice Config, Checkout Clearance, settle BillAmt, clearance wire, payment instruments, RoomOcc Type, DocId/CurrBal/LedgerLog, shell wiring (Year End, Permissions, HR, Banquet), BAS foundations (error_handling, validation, url_utils), reverse night audit, full POS sale save, GST TaxStru, LEDGERREF/TDS, NCat routing, HTTP client (http_client.py), SMS queue dispatch, print_preview.py.

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

### 10 WRONG_TARGET Re-wires (Priority P9)

| # | VB6 Form | Menu leaf currently opens | Should open |
|---|----------|---------------------------|-------------|
| 1 | FdRevCheckOut | open_checkout | reverse checkout flow |
| 2 | FaAdjustDel | open_fa_adjust | dedicated delete |
| 3 | FaCurrBalUpdate | open_trial_balance | balance rebuild UI |
| 4 | FaTDSChal | open_voucher_entry | TDS challan UI |
| 5 | fdAcPostChrg | open_nightaudit_reports | NA process runner |
| 6 | fdNDAcPostChrg | open_nightaudit_reports | posting utility |
| 7 | frmReNightAudit | reverse via reports menu | reverse_night_audit (core exists) |
| 8 | HallAcPostChrg | open_hall_booking | hall A/C posting |
| 9 | MembershipMast | open_member_billing | member master CRUD |
| 10 | SmartCardRegistration | open_smartcard | registration entry |

### Key observations
- **124 PARTIAL** dominates: shared screens (`open_folio`, `open_checkout`, `open_hall_booking`, `open_reports`) vs 1:1 VB6 forms
- **Strong domains:** Setup/Masters 24 FULL, HR 10 FULL, Finance 20 FULL
- **Weak:** Members 19 CS (0-row tables), FO 29 PARTIAL
- **5 MISSING:** Form1, CsehDemoForm, FrmImage, frmWelcome, FrmFacilityMast (artifacts)

---

## 2. Database — Tables / Columns / Queries / Connection

### 2a. Table Inventory

| Category | Count |
|----------|------:|
| **BOTH** (VB6 + Python) | **174** |
| **VB6_ONLY** | **155** |
| **PY_ONLY** | **5** (cateringbooking, einvoice, epabxcalls, members, revenuegroup) |
| moondata.sql CREATE TABLE | 274 |
| Python unique table tokens | 179 |
| VB6 union total | 329 |

**Highest-value VB6_ONLY gaps:** expsheet, paymentreceive, transin/transout/transundetail/transdel, splitsale1/2, splitstock, pos_sbill, travel1/2, plantokendetails, smartcardtransaction, doorlockenviro, epabx_out, messaging, usermenu/usermodule, salarylog, membill1/2, Mem* family, view* views, table_gstr2a.

### 2b. Column / Schema Status

| Area | Status |
|------|--------|
| QtyRec vs QtyRcp | **FIXED** |
| PayCharge 35-col instruments | **PARTIAL** — folio.py full; fo_ops.py SNo=1 |
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
| Purchase register PBPB | **PARTIAL** |
| Banquet/Member report table names | **MISMATCH** (absent tables) |

### 2c. Report Query Coverage

| Metric | Covered | Missing/blocked |
|--------|--------:|----------------:|
| REPORTS_TXT defs (232) | **230** name-matched | 2 |
| Report_Queries folders (356) | **285** table-overlap | **70** no overlap |
| Live report SQL engine | **333 PASS** | **88 FAIL** |
| Hard-missing domains | — | **6** (print, messaging, reverse-NA UI, Touch POS, transfer, FAFind UI) |
| Blocked/unwired domains | — | **4** (Members, Banquet, EPABX, HR payroll) |

### 2d. Connection / Config

| Aspect | VB6 | Python |
|--------|-----|--------|
| Config | `Analysis.ini` keys 1–10 | same + `HMS_ANALYSIS_INI` env |
| Live DB | root `KailashData2526` | package `Moondata2627` (wins) |
| Driver | OLE DB SQLOLEDB/SQLNCLI | pyodbc Native Client 10.0 |
| Auth | SQL auth | Windows Trusted_Connection |
| Hardening | — | timeout, LOCK_TIMEOUT, whitelist, UPDLOCK next_vno |

### 2e. BLOCKED Census

| Table family | Live | Status |
|--------------|------|--------|
| MembershipRevMast / SmartCard* | 0 rows | 🚫 MemberModule |
| HallBill / CateringBook / EventMast | absent | 🚫 Banquet (use HallBook*) |
| TelCall / Reward / DoorLock / SMSLog | absent | 🚫 SKIP |
| EPABX_OUT / EPABXCalls / Members / RevenueGroup | absent | BLOCKED |
| RoomBLockOut / Site / DeliveryBoy / GroupProf | empty | degraded |
| eInvoiceEnviro / Stock / RQI/RQR / Depart / FOMBillDetails | live | ✅ done |

---

## 3. BAS Modules ↔ Python Core

### Module Summary

| .bas | #funcs | Ported | Partial | Missing | Python home |
|------|-------:|-------:|--------:|--------:|-------------|
| HMS.bas | ~5433 | menu registry | many leaves | ~5000 tails | shell.py, menu.py, reports.py |
| FaLib.bas | 58 | ~15 | ~3 | **~40** | fa_ledger_ops, fa_voucher |
| FaVoucher.bas | 8 | 5 | 0 | 3 | fa_voucher, voucher_type |
| POSBillPrint.bas | 26 | 3 | 0 | **23** | pos_sales rate only |
| SMSModule.bas | 19 | 6+dispatch | 0 | ~10 | sms_enviro, sms_http |
| MobWebAPI.bas | 3 | **3** | 0 | 0 | **http_client.py ✅** |
| mdlNightAudit.bas | 10 | 3 (incl reverse) | 0 | 7 | nightaudit.py |
| MemberModule.bas | 5 | 2 | 0 | 3 | member_billing |
| GridPrint.bas | 4 | 0 | 0 | **4** | print_preview partial |
| ErrorHandlingModule | ~12 | 3 | 0 | 9 | error_handling.py |
| ValidationModule | ~8 | 4 | 0 | 4 | validation.py |
| Functions.bas (URL) | 2 | 2 | 0 | 0 | url_utils.py ✅ |
| DatabaseSecurityModule | ~6 | 2 | 0 | 4 | sanitize/validate_sql |
| eInvoice.bas | config+send | 2 | 0 | live IRN | einvoice.py |
| ModuleDoorLock / SmartCard | DLL/cipher | sim/CRUD | — | HW | godrej_locks, smartcard |
| mdlDataTransfer | sync | 0 | — | all | none |

**Overall function coverage est.: ~290 PORTED / ~550 PARTIAL / ~5,020 MISSING (~13.8%)**

### Critical Remaining Missing
1. POSBillPrint 23 layouts (print_preview foundation exists — wire remaining buttons)
2. GridPrint full reptmp spool
3. FaLib ~40 Proc_183_*
4. SMS live gateway credentials
5. eInvoice live IRN credentials
6. mdlDataTransfer multi-site
7. FAFind/FaRepView dedicated UI
8. HMS.bas event-handler tails (long tail)

---

## 4. Implementation Priority

| Wave | Work | Status |
|------|------|--------|
| **P9** | 10 WRONG_TARGET re-wires | pending (agent failed network) |
| **P10** | Print pipeline (print_preview + buttons) | **partial DONE** (print_preview.py + some buttons) |
| **P11** | HTTP + SMS dispatch | **DONE** (http_client, send_queued_sms, einvoice_send) |
| **P12** | Report SQL + PARTIAL deepening | pending (agent failed network) |
| **P13** | FaLib depth | pending |
| **P14** | DB migration review | pending |

---

## 5. Artifacts

| Artifact | Path |
|----------|------|
| This report | `VB6_PYTHON_SIDE_BY_SIDE_REPORT.md` |
| HTTP client | `HMS_py\core\http_client.py` |
| SMS dispatch | `HMS_py\core\sms_http.py` (send_queued_sms) |
| Print preview | `HMS_py\ui\print_preview.py` |
| BAS foundations | `error_handling.py`, `validation.py`, `url_utils.py` |
| Schema dump | `FODER\moondata.sql` (274 tables) |

---

*Generated by 3-agent parallel comparison. Updated with P10/P11 implementation status.*
