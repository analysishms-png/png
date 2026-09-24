# VB6 ↔ Python Side-by-Side Comparison Report

**Date:** 2026-09-23  
**Method:** 5 parallel domain agents (FO, Finance, POS/Inventory, BAS modules, Reports/Misc)  
**Sources:** `FODER\*.frm` (321), `FODER\*.bas` (32), `HMS.bas` vs `HMS_py\core\*.py` (92), `ui\*.py` (66)  
**Priority rule:** DB-feasible + high business value first; BLOCKED tables documented, not invented.

---

## Summary

| Domain | Critical Gaps | High Gaps | Medium | Status |
|--------|--------------|-----------|--------|--------|
| Front Office | 5 P0 | 6 P1 | 2 P2 | Comparing |
| Finance/FA | 5 Critical | 6 High | 4 Medium | Comparing |
| POS/Inventory | 5 Critical | 4 High | 3 Medium | Comparing |
| BAS Modules | 6 Critical | 5 High | 4 Medium | Comparing |
| Reports/HR/Members/Banquet | 4 Critical | 5 High | 4 Medium | Comparing |
| **TOTAL** | **25** | **26** | **19** | — |

**Already DONE (P6 wave):** Stock Transfer, Stock Issue/Receipt, Stock Register, Depart Master, eInvoice Config, Checkout Clearance screen.

**BLOCKED (DB tables missing — do NOT invent):** Banquet ops (HallBill/HallBill/CateringBook/EventMast), MemberModule (MembershipRevMast/SmartCard* 0 rows), Door Lock (btlock57L.DLL), Touch POS, SMS HTTP gateway, e-Invoice IRN generation (needs live API creds).

---

## 1. Front Office (FO)

### P0 — Must Fix

| # | VB6 Evidence | Feature | Python Status | Implementation |
|---|-------------|---------|---------------|----------------|
| FO-1 | FdCheckOut.frm:1314,1722 | First Print Bill gate + stamp `PayCharge.Bill_No`/`SETTLEDATE` | `settle_folio` never stamps Bill_No | Add Bill_No/SETTLEDATE stamping in `folio.settle_folio` |
| FO-2 | FdCheckOut.frm:3465-3482 | Checkout clearance hard-block (`Enviro.RoomCheckOutClearanceYN`) | `check_clearance()` defined but never called | Call in `do_checkout` when flag='Yes' |
| FO-3 | fdPaymentCharge.frm:4467 | 35-col payment insert: CardNo, ChqNo, ChqDate, BatchNo, TxnNo, ExpDate, TipAmt, per-folio SNo | Missing all instrument cols; SNo=1 hardcoded | Fix `receive_payment`: instrument fields + SNo=MAX+1 |
| FO-4 | fdAmendEntry.frm:968-1127 | Departure date guards + cascade `PlanDetails.NoofDays`, `RoomOcc.DepDate` | No validations; only GuestFolio.DepDate updated | Add guards + cascade updates |
| FO-5 | FdCheckOut.frm settle flow | `settle_folio` BillAmt = actual bill (SUM AmtDr), not balance | BillAmt = bal (≈0 always) | BillAmt=SUM(AmtDr), SettAmt=settled |

### P1 — High Value

| # | VB6 | Feature | Python Status |
|---|-----|---------|---------------|
| FO-6 | checkin.py:181-188 vs dashboard:168 | RoomOcc `Type='I'` on insert | Type omitted → guest name never shows |
| FO-7 | fdWalkInEntry.frm:12668 | Walk-in grid validation (dates, tariff, rate codes, adults) | create_checkin hardcodes Adult=1, ChkInTime='10:00' |
| FO-8 | FdRevCheckOut.frm:1482 | Reverse clears UserChkOutDate + group members | UserChkOutDate never touched; group not reopened |
| FO-9 | fdAmendEntry:974 | dep < current/check-in blocked | No validation |
| FO-10 | HKRoomBlock.frm:1221 | RoomBlockOut OOO insert | roomstatus only has Clean/Dirty |
| FO-11 | front_office_dashboard:669 | Departures grid Room column | Shows city, not RoomNo |
| FO-12 | front_office_dashboard:703 | Cancelled bookings in arrivals | Cancel filter only on one branch |

### FO Logic Bugs

| Area | VB6 | Python | Fix |
|------|-----|--------|-----|
| Checkout composition | settle + RoomOcc close + Bill_No stamp in one flow | Split-brain: folio_ui._settle only settles; checkout_ui only checkout | Compose in single tx |
| Clearance wiring | Hard block when pending | check_clearance never called | Wire into do_checkout |
| RoomOcc Type | Occupancy via ChkOutDate IS NULL | dashboard joins Type='I', checkin omits Type | Standardize Type='I' on insert |
| EPABX_IN | Optional audit | fo_ops.room_change unconditionally queries missing EPABX_IN | Feature-detect / optional |
| settle mode | Enviro Strict/Standard | settle_folio always hard-blocks non-zero | Read Enviro mode |
| Payment SNo | Per-folio sequence | SNo=1 hardcoded | MAX(SNo)+1 |

---

## 2. Finance / FA

### Critical

| # | VB6 | Feature | Python Status |
|---|-----|---------|---------------|
| FA-1 | FaLib Proc_183_0 | CurrBal: delta in SUBGROUPCURRBAL + walk ACGROUP.MAINGRCODE ancestors → ACGROUPCURRBAL | `_update_currbal` writes non-existent `LedgerCurrBal` (try/except pass) |
| FA-2 | FaVrEnt:13333 + FaLib Proc_183_15/16 | DocId = `"D"+Site(2)+V_Type(5)+Prefix(5)+V_No(8)` (21 chars) | `_make_docid` = `{vtype}{prefix}{vno:04d}` — incompatible |
| FA-3 | FaVrEnt:14140-14146 | LedgerLog/LedgerMLog SeqNo=Max+1 row-copy | `_log_voucher` wrong schema → no audit |
| FA-4 | FaVrEnt:14006,13957 | LEDGERREF pending + LEDGERADJ + AgRefNo on post | IMPLEMENTED — `fa_voucher._create_ledgerref` / `_write_ledgeradj` / Ledger AgRefNo insert (fa_voucher.py:150-165,297-338); LEDGERADJ cascade on delete (fa_voucher.py:477-486) |
| FA-5 | FaVrEnt TDS frame | TDS calc ONAMT*TDS/100, LEDGERTDS row, auto contra-voucher | IMPLEMENTED — `fa_tds_ops.tds_amt` (fa_tds_ops.py:212-215); `fa_voucher._post_line_tds` posts TDS Vr.Type contra + LEDGERTDS (fa_voucher.py:341-400); narration-hack removed |

### High

| # | VB6 | Feature | Python Status |
|---|-----|---------|---------------|
| FA-6 | FaVoucher.bas Proc_7_* | NCat-based voucher routing + privilege gate | IMPLEMENTED (routing) — `voucher_type.get_ncat`/`list_entry_types` (voucher_type.py:196-216); `fa_reports.route_voucher` NCat via Voucher_Type (fa_reports.py:808-835); UI combo loads DB (fa_voucher_ui.py:54-64). Privilege gate still open |
| FA-7 | FaVoucher.bas Proc_7_2/7_4 | Voucher print (Crystal) | No print path |
| FA-8 | FaVrEnt FindMove + FAFind | Find/navigate/edit voucher | IMPLEMENTED (core) — `get_voucher` / `find_voucher` / `edit_voucher` (fa_voucher.py:538-660); dedicated find/edit UI not added |
| FA-9 | FaTDSChal.frm | TDS challan entry UI | core CRUD only, menu opens voucher entry |
| FA-10 | FaTDSCertificate | Certificate gen from LEDGERTDS | `tds_detail()` AttributeError (missing fn) |
| FA-11 | FaCurrBalUpdate | Full rebuild zero-then-recompute | Partial; menu opens trial balance viewer |
| FA-12 | FaAdjust pending query | HAVING MAX(AmtCr) > SUM(Adj.cr) + over-adjust guard | IMPLEMENTED — `adj_pending` / `pending_adjustments` / over-adj guard in `ledgeradj_insert` (fa_ledger_ops.py:89-154); FaAdjustWindow surfaces ValueError (fa_sub_forms_ui.py:81-99) |
| FA-13 | delete_voucher | Also delete TDSDocId contra LEDGER rows | Leaves orphan TDS voucher |
| FA-14 | ContraSub per-line | Multi-line contra pairing | Only filled when len==2 |

### FA Logic Bugs

| Area | VB6 | Python | Fix |
|------|-----|--------|-----|
| P&L sign | Revenue Cr−Dr | `_ledger_by_date_range` uses dr-cr for all natures | Apply L,R → cr−dr |
| Cheque clear | Chq_No + Chq_Date + Clg_Date (3 cols) | Only Clg_Date / missing Chq_Date | Write all 3 |
| Menu wiring | Distinct forms per leaf | Adj/Delete→voucher entry; TDSChal→voucher entry; Year End→trial bal; Permissions→UserMaster | Remap shell leaves |
| Voucher types | Load from Voucher_Type NCat | Was hardcoded ["JV","HPOST","F_AO"] | IMPLEMENTED — `voucher_type.list_entry_types` + fa_voucher_ui.py:54-64 |
| next_vno site | Filter Site+LogSite | Was site-blind | IMPLEMENTED — `next_vno` / `_prefix_for` Site_Code filters (fa_voucher.py:29-69) |
| Prefix missing | Raise / manual method | Silent FY-string fallback | Raise if no row |

---

## 3. POS / Inventory

### Critical

| # | VB6 | Feature | Python Status |
|---|-----|---------|---------------|
| PI-1 | inventory.stock_issue | Single-tx: Stock insert + Indent1 ClearYN | Split-conn: Stock rolled back, ClearYN committed → **data loss** |
| PI-2 | RSSaleBill save | Sale1+Sale2+SunTran+PayCharge + Stock QtyIss + KOT close | Manual save: Sale1 header only |
| PI-3 | FrmPOSBillDeletion | Reverse Sale2/SunTran/PayCharge/Stock/KOT | `DELETE Sale1` only → orphans |
| PI-4 | pPBill.frm TaxStru | Slab GST CGST/SGST/IGST + service + roundoff | All hard-coded 0 |
| PI-5 | PIndent.frm | Indent1 line grid | Header only; INDENT1API has no UI caller |

### High

| # | VB6 | Feature | Python Status |
|---|-----|---------|---------------|
| PI-6 | requisition_slip_ui:152 | Department on Indent header | Selects `i1.Department` (missing col) → load always fails |
| PI-7 | purchase totals | Taxable=total, NetAmt=total+tax | Taxable=total-tax (wrong), NetAmt=total |
| PI-8 | Gin/POrder delete | Row-wise (DocId,Sno) match | Cartesian IN() cross-pair |
| PI-9 | FrmOPStock | VType='STOP', site from ini, dup guard | VType='OPN', Site='001' hardcoded |
| PI-10 | RsKOTEntry | KOTLog + Sno match update | LogSite='KK'; update WHERE Item; no KOTLog |
| PI-11 | KOT transfer filters | Pending=Y, VOIDYN≠Y, NCKOT≠Y, RoomCat=REST | Only Pending=Y + DelFlag |
| PI-12 | gin_create | IndentDocId/IndentSno on Purch2; party from args | Indent link never written; party from lines[0] |
| PI-13 | pos_sub_forms_ui:65 | Reprint cols NetAmt, DelFlag | Wrong: NetAmount, VoidYN → empty grid |
| PI-14 | purchase_register | PBPB from Purch1/Purch2 | Queries GIN (always MRCR) → empty |
| PI-15 | requisition issue defaults | Godown from Indent, rate from ItemMast | godown="", rate=0 |

---

## 4. BAS Modules

### Entire .bas with NO Python equivalent

| .bas | Purpose | Severity |
|------|---------|----------|
| ModuleDoorLock + Module1 | Guest card encode via btlock57L.DLL | Critical (HW) |
| MSendInput | Win32 SendInput automation | Low |
| MobWebAPI | HTTP GET/POST (MSXML2) | Critical (SMS/eInv) |
| eInvoice | NIC e-Invoice auth + IRN | Critical (config-only) |
| mdlDataTransfer | Multi-site table sync | High |
| ErrorHandlingModule | LogError → ErrorLog.txt, StandardErrorHandler | Critical (no logging!) |
| modLog | Enter/Exit/Trace method logging | Medium |
| SMSModule | HTTP SMS dispatch loop | Critical (queue only) |
| ModuleAdd (CGZip) | ZIP backup/archive | Medium |
| CodeModule | Garbled decompile | — |
| Picture | Guest photo save | Low |
| SperialFolderPath | CSIDL wrapper | Low |
| Functions | URL percent-encoding | High (blocks SMS/eInv) |

### Partial Ports — Missing Functions

| .bas | Ported | Missing |
|------|--------|---------|
| ValidationModule | Per-master `_validate` | ValidateEmail/Phone/Date/Required central module |
| DatabaseSecurityModule | db parameterized | SanitizeInput, ValidateSQL, Secure builders |
| SMSModule + MobWebAPI | sms_enviro CRUD | HTTP send, connectivity, SmsURL invoke |
| ModuleSmartCard | smartcard CRUD | Encode/decode ±0x1B cipher |
| mdlNightAudit | run/post/reports | Reverse Night Audit fn |
| MemberModule | member_billing CRUD | Bill calc procs; MemberSMS.frm |
| POSBillPrint | rate lookup in pos_sales | 26 layout procs, reptmp TEXTFILE spool |
| FaLib | fa_ledger_ops partial | Majority of 58 Proc_183_* |
| FaVoucher | post/delete/next_vno | NCat dispatch + print |
| Hotlib/MainLib | scattered helpers | Large tails untraceable |
| GridPrint | CSV/PDF | C:\reptmp\TEXTFILE.TXT spool |
| TmpTable | list[dict] replacement | Design-replaced OK |
| JSON | stdlib json | Fully superseded |
| HMS.bas | menu/reports registry | ~5433 event handlers, many still coming_soon |

### Critical Unported

| BAS | Function | Why Critical |
|-----|----------|--------------|
| SMSModule | HTTP dispatch | SMS never delivered (queue only) |
| MobWebAPI | GET/POST | No HTTP client in entire project |
| eInvoice | auth + IRN | Statutory compliance gap |
| ErrorHandlingModule | LogError | Silent failures, no ErrorLog.txt |
| ModuleDoorLock | Write guest card | Check-in can't issue key cards |
| ModuleSmartCard | ±0x1B encode | Card payloads unreadable |
| Functions | URL encode | Blocks SMS/eInvoice |
| POSBillPrint | Bill layout | All print buttons stubs |
| ValidationModule | Email/Phone/Date | Bad data accepted |
| mdlDataTransfer | Site sync | Multi-site broken |
| mdlNightAudit | Reverse NA | Menu opens wrong dialog |
| GridPrint | reptmp spool | DOS printing dead |

---

## 5. Reports / HR / Members / Banquet / SmartCard / EPABX / Misc

| Domain | VB6 Form | Feature | Python Status | Severity |
|--------|----------|---------|---------------|----------|
| Reports | REPVIEW + viewers | Print/preview pipeline | Grid+CSV only, no QPrinter | High |
| Reports | Per-domain viewers | Extra filters | Collapsed; caption mismatches → coming_soon | High |
| HR | prAttend, prSalCreate, PrLoan, overtime, leave encash | Menu leaves all _coming_soon | hr_payroll_ui registered only as "HR Payroll" (not in mdi_menu) | **Critical** |
| HR | PrLoan/PrLeavench | LEDGER postings | insert_loan writes Loan only | High |
| Members | MembershipMast | Members/Subgroup CRUD | No core CRUD; menu opens MemBill instead | Critical |
| Members | MemRenewalEntry | ValidFrom/Upto + MemHistory | coming_soon | High |
| Members | MemVisitEntry | MemberVisits write | coming_soon | Medium |
| Banquet | HallBill/Estimate/ChefCost/VenueAvail/Events | All banquet ops leaves | banquet_ops.py + pos_hall.py COMPLETE but **zero UI imports**; tables partially missing | Critical |
| SmartCard | Registration/Recharge/Refund/Re-Issue | Ops screens | smartcard_ops.py COMPLETE, no UI; leaves coming_soon | Critical |
| EPABX | TelCallEntry | Call entry + rate calc | Read-only TOP-200 list; epabxdata_insert unwired; EPABX_OUT/COUNTER absent | High |
| Misc | frmYearEnd | Year-end carry-forward | year_end.py complete, **menu opens trial balance** | **Critical** |
| Misc | UserPermission | Permission editor | user_permissions_ui.py exists, **never imported by shell**; Permissions→UserMasterForm | **High** |
| Misc | FrmJobScheduler | Task scheduler | CRUD in sms_enviro, no UI | Medium |

### Smaller gaps
- Lost/Found: full CRUD in guest_services_ui tab 4, menu opens read-only list
- Delete Message / InBox / OutBox: not ported (repurposed as SMS log)

---

## Implementation Priority (this session)

1. **FO P0** — settle BillAmt, clearance wire, payment SNo+instruments, amend cascade, RoomOcc Type
2. **Inventory critical** — stock_issue single-tx, sale1_delete cascade, purchase totals, requisition Dept col, KOT filters
3. **Shell wiring** — HR payroll menu, year_end, user_permissions, banquet/smartcard leaves → existing cores
4. **FA** — CurrBal Proc_183_0, DocId format, LedgerLog, P&L sign, tds_detail stub
5. **BAS foundations** — ErrorHandlingModule (logging), ValidationModule (email/phone/date), Functions URL encode (enables future SMS)
6. **Skill** — reusable comparison skill for future passes

---

*Generated by 5-agent parallel comparison. Evidence line refs are live file:line.*
