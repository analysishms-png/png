# HMS Migration Completion Matrix

**Date:** 2026-10-03
**Source:** VB6_VS_PYTHON_FILE_BY_FILE.txt + MIGRATION_STATUS.md
**Refresh:** parity regenerated 2026-10-03 — MISSING forms 3→1, COMING_SOON 3→1,
PY_FILE 71→77, .bas FULL 23→26, VB6-only tables 48→25, ui 126→134, core 146→170.
Row-level evidence: `FORM_MIGRATION_LEDGER.md`, `DATABASE_MAPPING_LEDGER.md`,
`PROCEDURE_MIGRATION_LEDGER.md`, `PARITY_RECONCILIATION.md`.

---

## Completion Criteria per Module

For each module to be marked **VERIFIED**:
- [ ] VB6 DISCOVERED - All VB6 forms/modules/classes identified
- [ ] VB6 ANALYZED - Business logic, SQL, workflow understood
- [ ] PYTHON FOUND - Equivalent Python core/UI exists
- [ ] UI MIGRATED - All VB6 forms have Python UI equivalents
- [ ] BACKEND MIGRATED - All VB6 business logic ported to Python core
- [ ] SQL VERIFIED - Parameterized queries, transactions, table parity
- [ ] PERMISSIONS VERIFIED - MenuHelp OPT1-4, User1 rights match
- [ ] REPORT VERIFIED - Report chain UI→API→Service→SQL→Preview/Print
- [ ] PRINT VERIFIED - Printer settings, preview, reprint (no new transaction)
- [ ] TESTED - Unit + Integration + Database tests pass
- [ ] REGRESSION TESTED - Full suite passes after changes
- [ ] VB6 RE-COMPARED - Final comparison against VB6 source

---

## Module-by-Module Matrix

| Module | VB6 Forms | VB6 Modules | VB6 Discovered | VB6 Analyzed | Python Found | UI Migrated | Backend Migrated | SQL Verified | Permissions | Reports | Print | Tested | Regression | VB6 Re-compared | Status |
|--------|-----------|-------------|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| **Foundation** | - | db, auth, company, menu, menu_help | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | N/A | N/A | ✅ | ✅ | ✅ | **VERIFIED** |
| **Master Data (30)** | 30 | 30 | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | N/A | N/A | ✅ | ✅ | ✅ | **VERIFIED** |
| **Front Office** | 25 | 5 | ✅ | ✅ | 🟡 | 🟡 80% | ✅ | ✅ | ✅ | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | **IN PROGRESS** |
| **Night Audit** | 6 | 1 | ✅ | ✅ | ✅ | 🟡 90% | ✅ | ✅ | ✅ | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | **IN PROGRESS** |
| **POS** | 18 | 3 | ✅ | ✅ | ✅ | 🟡 30% | ✅ | ✅ | ✅ | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | **IN PROGRESS** |
| **Inventory** | 12 | 2 | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | 🟡 | 🟡 | ✅ | ✅ | 🟡 | **MOSTLY DONE** |
| **Banquet** | 14 | 2 | ✅ | ✅ | ✅ | 🟡 30% | ✅ | ✅ | ✅ | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | **NOT STARTED** |
| **Housekeeping** | 8 | 1 | ✅ | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | **NOT STARTED** |
| **Finance/Accounts** | 20 | 6 | ✅ | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | **PARTIAL** |
| **Membership/HR** | 14 | 3 | ✅ | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | **NOT STARTED** |
| **Reports** | 15 | 2 | ✅ | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | **IN PROGRESS** |
| **Telephone/SMS** | 8 | 2 | ✅ | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | **NOT STARTED** |
| **Door Lock/Smart Card** | 5 | 2 | ✅ | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | **PARTIAL** |
| **Utilities/External** | 8 | 5 | ✅ | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | 🟡 | **NOT STARTED** |

---

## Front Office Detailed Form Matrix (25 VB6 Forms)

| # | VB6 Form | Caption | Python UI | Status | Notes |
|---|----------|---------|-----------|--------|-------|
| 1 | fdWalkInEntry | Walk In / Check In Entry | walkin_rack_ui.py:WalkInEntryWindow | ✅ COMPLETE | 3-step wizard + VB6 rail actions |
| 2 | fdCheckIn | Look Up Reservation By Guest Name | frontoffice.py | ✅ COMPLETE | In-house browser + check-in dialog |
| 3 | fdPaymentCharge | Post Charges & Payment | posting_forms_ui.py:PaymentChargeWindow | ✅ COMPLETE | Receipt register view |
| 4 | fdDisplayFolio | Guest Ledger | folio_ui.py | ✅ COMPLETE | Folio log + amend |
| 5 | fdRoomChange | Room Change | fo_sub_forms_ui.py:119 RoomChangeWindow | IMPLEMENTED (registry-wired, tests passing) | Core: fo_ops.py:room_change; opener :893 `open_room_change`; shell.py:2688-2692; RV-001R APPROVED (findings #1-#4 FIXED, tests 15→18). VERIFIED ☐ unchecked — (re-compare pending) |
| 6 | fdAmendEntry | Amend Stay | fd_forms_ui.py:764 | IMPLEMENTED (registry-wired, tests passing) | Registry shell.py:3140. VERIFIED ☐ unchecked — (re-compare pending) |
| 7 | FrmExpense | Misc.Payment / Received Entry | expense_ui.py | ✅ COMPLETE | |
| 8 | FrmGrcBlank | Guest Registration Card | pos_masters_ui.py (card reg) | 🟡 PARTIAL | Fuzzy match only |
| 9 | FrmHouGuestMsg | In House Guest Message | ❌ MISSING | ❌ MISSING UI | |
| 10 | FrmGuestWakeUp | Register Wake up Calls | ❌ MISSING | ❌ MISSING UI | |
| 11 | FrmForExRec | Forex Receive Entry | ❌ MISSING | ❌ MISSING UI | |
| 12 | FdCheckOut | Room Check Out | checkout_ui.py | ✅ COMPLETE | |
| 13 | FdRevCheckOut | Check Out Cancel | posting_forms_ui.py:RevCheckOutWindow | ✅ COMPLETE | |
| 14 | FrmMergeCharge | Room Merge | fo_sub_forms_ui.py:423 MergeChargeWindow | IMPLEMENTED (registry-wired, tests passing) | Core: fo_ops.py:merge_charge; opener :899; registry shell.py:2469. VERIFIED ☐ unchecked — (re-compare pending) |
| 15 | FdReSetlement | Post Charges/Payment | posting_forms_ui.py:ReSettlementWindow | ✅ COMPLETE | |
| 16 | FrmRevMergeCharge | Reverse Transfer Room | fo_sub_forms_ui.py:530 ReverseMergeWindow | IMPLEMENTED (registry-wired, tests passing) | Core: fo_ops.py:reverse_merge_charge; opener :905; registry shell.py:2472. VERIFIED ☐ unchecked — (re-compare pending) |
| 17 | FdRoomDisplay | Room View | walkin_rack_ui.py:RoomViewWindow | ✅ COMPLETE | |
| 18 | InHouseGuestFolio | Inhouse Guest Folio | frontoffice.py | ✅ COMPLETE | |
| 19 | FdLookUpRoom | Look Up Room | walkin_rack_ui.py | ✅ COMPLETE | |
| 20 | FdLookUpRoomNo | Display Rack | walkin_rack_ui.py:DisplayRackWindow | ✅ COMPLETE | |
| 21 | RrRoomReservation | Reservation/Cancellation | reservation_browser.py | ✅ COMPLETE | |
| 22 | HWIHistory | Walk In by Room History | guest_history_ui.py | ✅ COMPLETE | Fuzzy match verified |
| 23 | frmFomB | FOM Bill Reprint | fo_sub_forms_ui.py:921 FomBillReprintWindow | IMPLEMENTED (registry-wired, tests passing) | Opener :1053; registry shell.py:2466. VERIFIED ☐ unchecked — (re-compare pending) |
| 24 | fdPostChrg | Post Charges /Payments | posting_forms_ui.py:PostChrgWindow | ✅ COMPLETE | |
| 25 | fdAcPostChrg/fdNDAcPostChrg | Night Audit Process / Posting Utility | posting_utility_ui.py | ✅ COMPLETE | |

**Front Office UI Gap Count: 5 → 0 (all 5 IMPLEMENTED 2026-10-04; VERIFIED checkboxes still unchecked — re-compare pending)**
1. Room Change (fdRoomChange) - IMPLEMENTED: fo_sub_forms_ui.py:119, registry shell.py:2688-2692, RV-001R APPROVED
2. Amend Stay (fdAmendEntry) - IMPLEMENTED: fd_forms_ui.py:764, registry shell.py:3140
3. Room Merge (FrmMergeCharge) - IMPLEMENTED: fo_sub_forms_ui.py:423, registry shell.py:2469
4. Reverse Room Merge (FrmRevMergeCharge) - IMPLEMENTED: fo_sub_forms_ui.py:530, registry shell.py:2472
5. Bill Reprint (frmFomB) - IMPLEMENTED: fo_sub_forms_ui.py:921, registry shell.py:2466

VB6 re-comparison in progress (specs/fo-parity-recheck-2026-10-04.md) — no VERIFIED claim until re-compare lands.

*Others (FrmGrcBlank, FrmHouGuestMsg, FrmGuestWakeUp, FrmForExRec) - lower priority, verify if needed*

---

## Night Audit Detailed Form Matrix (6 VB6 Forms)

| # | VB6 Form | Caption | Python UI | Status |
|---|----------|---------|-----------|--------|
| 1 | mdlNightAudit | (core module) | nightaudit.py | ✅ COMPLETE |
| 2 | fdAcPostChrg | Night Audit Process | posting_utility_ui.py:NightAuditProcessWindow | ✅ COMPLETE |
| 3 | frmReNightAudit | Reverse Night Audit | posting_utility_ui.py:RevNightAuditWindow | ✅ COMPLETE |
| 4 | FrmControlPanel | Control Panel | ❌ MISSING | Dashboard only |
| 5 | fdPostChrg | Post Charges /Payments | posting_forms_ui.py:PostChrgWindow | ✅ COMPLETE |
| 6 | fdNDAcPostChrg | Posting Utility | posting_utility_ui.py:PostingUtilityWindow | ✅ COMPLETE |

**Night Audit Gaps:**
1. GST Reports (GSTR-1, GSTR-2, etc.) - NOT IMPLEMENTED
2. Crystal Reports replacement - ALL REPORTS
3. Print/Preview chain - NOT IMPLEMENTED

---

## POS Detailed Form Matrix (18 VB6 Forms)

| # | VB6 Form | Caption | Python UI | Status |
|---|----------|---------|-----------|--------|
| 1 | RsKOTEntry | KOT | ❌ MISSING | kot_entry.py exists but no UI |
| 2 | RsTbChange | Table Transfer | kot_transfer_ui.py (fuzzy) | 🟡 PARTIAL |
| 3 | RSSaleBill | Sale Bill Entry | ❌ MISSING | Registry wired only |
| 4 | RsSaleBillSplit | Split Sale Bill | ❌ MISSING | Registry wired only |
| 5 | POSBillReprint | OutLet Bill Reprint | pos_sub_forms_ui.py (fuzzy) | 🟡 PARTIAL |
| 6 | RsPOSDisplay | Display Table | pos_na.py:PosBrowser | 🟡 READ-ONLY |
| 7 | RsBookingEntry | Booking Entry | ❌ MISSING | Registry wired only |
| 8 | RSSaleBillDisplay | Bill Look Up | misc_parity_ui.py (fuzzy) | 🟡 PARTIAL |
| 9 | POSAdvanceDepDialog | Order Booking Advance | ❌ MISSING | Registry wired only |
| 10 | RsKOTTransfer | KOT Transfer | kot_transfer_ui.py (fuzzy) | 🟡 PARTIAL |
| 11 | RsTokenEntry | Token Entry | ❌ MISSING | Registry wired only |
| 12 | RsPaymentReceice | Payment Receive Entry (POS) | posting_forms_ui.py:PaymentChargeWindow | ✅ COMPLETE |
| 13 | FrmDenomination | Denomination Detail | ❌ MISSING | REGISTRY_ONLY |
| 14 | RsStatusScreen | POS Status Screen | pos_na.py:PosBrowser | 🟡 READ-ONLY |
| 15 | FrmChangeRest | Restaurant Change Master | depart_change_ui.py | ✅ COMPLETE |
| 16 | FrmPOSBillDeletion | POS Bill Deletion | pos_bill_deletion_ui.py | ✅ COMPLETE |
| 17 | FrmPOSBillModification* | POS Bill Modification | ❌ MISSING | Registry wired only |
| 18 | FrmPOSSaleDataTransfer | POS Bill Deletion | ❌ MISSING | Registry wired only |

**POS Masters (Complete in pos_masters_ui.py):**
- SessionMast, SchemeMast, DeliveryBoy, ItemCatMast, NCType, Waiter, Shift, Combo

**POS Major Gaps:**
1. KOT Entry UI (RsKOTEntry) - **CRITICAL**
2. Sale Bill Entry (RSSaleBill) - **CRITICAL**
3. Settlement Entry (complete flow)
4. Touch-screen variants
5. Crystal Reports

---

## Banquet Detailed Form Matrix (14 VB6 Forms)

| # | VB6 Form | Caption | Python UI | Status |
|---|----------|---------|-----------|--------|
| 1 | Banquet Masters | Various | banquet_masters_ui.py | ✅ COMPLETE |
| 2 | HallBooking | Banquet Booking | ❌ MISSING | Registry wired only |
| 3 | HallBill | Hall Bill Entry | ❌ MISSING | Registry wired only |
| 4 | HallAdvanceDepDialog | Advance Received | ❌ MISSING | Registry wired only |
| 5 | HallEstimate | Hall Estimate Entry | ❌ MISSING | Registry wired only |
| 6 | HallChefPreCosting | Chef Pre-Costing | ❌ MISSING | Registry wired only |
| 7 | CateringBooking | Catalog Selection | ❌ MISSING | Registry wired only |
| 8 | resBanq | Reservation Look Up Room Wise | ❌ MISSING | Registry wired only |
| 9 | HallMenuCatalog | Menu Catalog | ❌ MISSING | Registry wired only |
| 10 | HallMenuItemEntry | Menu Item Entry | ❌ MISSING | Registry wired only |
| 11 | HallSundry | Outlet Bill Sundry Setting | ❌ MISSING | Registry wired only |
| 12 | FrmEventMast | Event Type | finance_masters_ui.py (fuzzy) | 🟡 PARTIAL |
| 13 | FrmHallItemCatMast | Category and Charge Master | ❌ MISSING | Registry wired only |
| 14 | HallItemGroupMast | Item Group Entry | ❌ MISSING | Registry wired only |

**Banquet Status: Masters complete, Operations NOT STARTED**

---

## Overall Completion Summary

| Category | Total | Complete | Partial | Missing | % Complete |
|----------|-------|----------|---------|---------|------------|
| VB6 Forms | 321 | 71 | 179 | 71 | 22% |
| VB6 Modules (.bas) | 32 | 23 | 9 | 0 | 72% |
| Python Core Modules | 146 | 146 | 0 | 0 | 100% |
| Python UI Modules | 126 | 60 | 40 | 26 | 48% |
| Live DB Tables Referenced | 280 | 213 | 48 | 19 | 76% |

---

## Current Sprint: Front Office (Phase 3)

### Immediate Actions (Priority Order) — 2026-10-04 update: all 5 DONE (implemented + registry-wired, tests passing); VERIFIED still pending VB6 re-compare
1. **FO-001**: DONE — Room Change UI (fdRoomChange) - ui/fo_sub_forms_ui.py:119, registry ui/shell.py:2688-2692, RV-001R APPROVED
2. **FO-002**: DONE — Amend Stay UI (fdAmendEntry) - ui/fd_forms_ui.py:764, registry ui/shell.py:3140
3. **FO-003**: DONE — Room Merge UI (FrmMergeCharge) - ui/fo_sub_forms_ui.py:423, registry ui/shell.py:2469
4. **FO-004**: DONE — Reverse Room Merge UI (FrmRevMergeCharge) - ui/fo_sub_forms_ui.py:530, registry ui/shell.py:2472
5. **FO-005**: DONE — Bill Reprint UI (frmFomB) - ui/fo_sub_forms_ui.py:921, registry ui/shell.py:2466

*Next action: VB6 re-comparison (specs/fo-parity-recheck-2026-10-04.md, in progress) before any VERIFIED checkbox is ticked.*

### Success Criteria for Front Office VERIFIED:
- [ ] All 5 missing UIs implemented
- [ ] All VB6 forms have Python UI equivalents
- [ ] Field-level mapping verified (CHECKIN_FIELD_MAP.md)
- [ ] Workflow: Reservation → Check-In → Stay → Posting → Payment → Checkout → Reprint
- [ ] All tests pass (unit + integration + database)
- [ ] Regression suite passes
- [ ] VB6 re-comparison complete

---

## Next Sprints (Priority Order)

| Sprint | Module | Priority | Estimated Forms |
|--------|--------|----------|-----------------|
| 2 | Night Audit GST Reports | HIGH | 6 reports |
| 3 | POS KOT Entry + Sale Bill | HIGH | 2 critical forms |
| 4 | Banquet Operations | HIGH | 12 forms |
| 5 | Finance Vouchers | MEDIUM | 8 forms |
| 6 | Membership/HR Operations | MEDIUM | 10 forms |
| 7 | Housekeeping | LOW | 6 forms |
| 8 | Reports/Printing (all) | HIGH | 46 report leaves |

---

## Final Full-Project Re-Scan Checklist

When all modules appear complete:
- [ ] Re-scan all 321 VB6 forms
- [ ] Re-scan all 32 VB6 modules
- [ ] Compare all 213 shared tables
- [ ] Verify all 48 VB6-only tables handled
- [ ] Cross-module dependency verification
- [ ] Permission matrix complete
- [ ] Report/Print chain complete
- [ ] No known migration gaps remain