# HMS VB6 → Python Migration Plan (Updated 2026-10-10)

**VB6 Source:** C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\HMS\
**Python Project:** C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py

---

## Current State (from MIGRATION_STATUS.md + PARITY_RECONCILIATION.md)

| Module | Status | Gap |
|--------|--------|-----|
| Foundation (db, auth, company, menu) | ✅ COMPLETE | — |
| Master Data (30 modules) | ✅ COMPLETE | — |
| Front Office | 🟡 IN PROGRESS | 5 UIs implemented, VB6 re-compare pending |
| Night Audit | 🟡 IN PROGRESS | GST Reports (GSTR-1, GSTR-2) missing |
| POS | 🟡 IN PROGRESS | ~30% UI (KOT Entry, Sale Bill, Settlement, Reports, Touch) |
| Inventory | 🟢 MOSTLY DONE | Reports/Print partial |
| Banquet | 🟡 IN PROGRESS | ~30% UI (Masters done, Operations missing) |
| Membership/HR | ❌ NOT STARTED | — |
| Reports | 🟡 IN PROGRESS | — |

---

## Migration Loop (per module) — Constitution §II

1. **VB6 Analyze** — VB6 form/module ka logic, SQL, workflow samjho
2. **Python Core** — business logic port karo (core/*.py)
3. **Python UI** — PyQt6 UI banao (ui/*.py), VB6 jaisa layout
4. **SQL Verify** — parameterized queries, transactions, table parity
5. **Permissions** — MenuHelp OPT1-4, User1 rights match
6. **Report/Print** — report chain UI→API→Service→SQL→Preview/Print
7. **Test** — unit + integration + DB tests
8. **VB6 Re-compare** — VB6 exe se side-by-side compare, bugs fix
9. **Register** — MIGRATION_MASTER_BUG_REGISTER.md me bug entry

---

## Priority Order (Updated)

### 1. Front Office VB6 Re-compare (IMMEDIATE)
- 5 UIs implemented (FO-001..FO-005): Room Change, Amend Stay, Merge Room, Reverse Room Merge, Bill Reprint
- **Action:** Run specs/fo-parity-recheck-2026-10-04.md against live VB6 exe
- **Gate:** All 5 forms VERIFIED (behavioral + DB-state proof)

### 2. Night Audit GST Reports (HIGH - per master prompt "NIGHT AUDIT - high-risk workflow")
- VB6 Source: `eInvoice.bas` (60KB, 1375 lines) — auth token, invoice generation, QR, IRN
- Python Core: `core/einvoice.py` (EInvoiceGenerator class) — basic structure exists
- **Gaps:**
  - GSTR-1 return generation (B2B, B2C, Credit/Debit Notes, Export, HSN summary)
  - GSTR-2 return generation
  - GSTR-3B auto-population
  - E-way bill integration
  - TDS/TCS reports (FaTDSChal, FaTDSCertificate)
  - Tally XML export (already in `tally_export_ui.py`)
- **Tables:** `GSTInvoice`, `GSTR1`, `GSTR2`, `GSTR3B`, `EwayBill`
- **Evidence:** VB6 `eInvoice.bas` Proc_348_0/1 — full API contract with GSP

### 3. POS KOT Entry (HIGH - main POS transaction screen)
- VB6 Source: `RsKOTEntry.frm` (600KB, 10,859 lines) — main POS screen
- Python Core: `core/pos_kot.py` (KOTLog, TOKEN, SplitBillDetail CRUD) — data layer exists
- **Gaps:**
  - KOT Entry UI (`ui/pos_sub_forms_ui.py` or new `pos_kot_ui.py`)
  - Table/Room selection grid
  - Item entry with search/filter
  - Waiter assignment
  - NC KOT (Non-Chargeable)
  - KOT printing (kitchen/bar)
  - Token display integration
- **Tables:** `KOTLog`, `TOKEN`, `Sale1`, `Sale2`, `ItemMast`, `ItemRate`, `RoomMast`, `Depart` (outlet)

### 4. POS Sale Bill & Settlement (HIGH)
- VB6 Sources: `RSSaleBill.frm` (3MB), `RSSaleBillSplit.frm` (575KB), `RsPaymentReceice.frm` (203KB)
- Python Core: `core/pos_sales.py` (35KB), `core/pos.py` — partial
- **Gaps:**
  - Sale Bill Entry UI
  - Bill Split UI
  - Settlement/Payment Receive UI (partial in `posting_forms_ui.py`)
  - POS Reports (Crystal Reports replacement)

### 5. Banquet Operations (HIGH)
- VB6 Sources: `HallBooking.frm` (299KB), `HallBill.frm`, `HallEstimate.frm`, `CateringBooking.frm` (299KB), `HallAdvanceDepDialog.frm`, `HallChefPreCosting.frm`, `HallMenuCatalog.frm`, `HallMenuItemEntry.frm`, `HallSundry.frm`, `resBanq.frm`
- Python Core: `core/banquet_masters.py` (21KB), `core/banquet_ops.py` (49KB), `core/hall_booking.py` (20KB), `core/hall_menu_catalog.py`, `core/hall_menu_item_entry.py`, `core/hall_item_cat_mast.py`, `core/hall_item_group_mast.py`
- **Gaps (ALL OPERATIONS):**
  - Hall Booking UI (main banquet screen)
  - Hall Bill / Billing UI
  - Advance/Deposit Dialog
  - Estimate / Quotation UI
  - Catering Booking UI
  - Chef Pre-Costing UI
  - Menu Catalog / Item Entry UIs
  - Hall Sundry Setting UI
  - Banquet Reports

### 6. Membership/HR (MEDIUM)
- VB6 Sources: `MemberMast.frm`, `MembershipMast.frm`, `MemFacilityBilling.frm`, `MemVisitEntry.frm`, `MemCatChngEntry.frm`, `PrEmployee.frm`, `PrAttend1.frm`, `PrSalary.frm`
- Python Core: `core/members_masters.py`, `core/member_billing.py`, `core/hr_payroll.py`, `core/hr_masters.py`
- **Gaps:** All UIs — `hr_payroll_ui.py`, `hr_members_ui.py` exist but minimal

### 7. Housekeeping (NOT STARTED)
- VB6 Sources: `HKRoomOpStk.frm`, `HKRoomBlock.frm`, `HKIssRec.frm`, `HKHouseOpStk.frm`, `HHouseKeeping.frm`
- Python Core: None yet

---

## Bug Fix Loop (Continuous) — Constitution §III

- Har module ke liye: VB6 exe se screenshot lo → Python UI se compare → bugs identify → fix → re-test
- Bug register: `MIGRATION_MASTER_BUG_REGISTER.md`
- UI parity: DESIGN.md + specs/ se compare
- **Critical open bugs (from PARITY_RECONCILIATION.md):**
  - 92 ERROR_BOX captions with SQL 42S22 (Invalid column name) — VB6-era column names vs live DB
  - 5 report keys unresolved (DUELIST, Non Transaction Report, Tagada Letter Settings, Tax Structure List, Due List Creditor OverLay)
  - Godrej/Cleaning UI files blocked on absent tables (42S02)

---

## Verification Gates

- `py_compile` har edit ke baad
- Offscreen screenshot harness: `HMS_POC_SHOT=_ui_shots/poc.png python -c "from HMS_py.ui import shell; shell.main()"`
- Login test: SA / kanpur
- Full pytest suite: `QT_QPA_PLATFORM=offscreen python -m pytest -q` — MUST be green
- No new ruff violations
- Permission model (MenuHelp / OPT*) honoured

---

## Next Actions (Continuous Loop)

### Sprint 1: Front Office VB6 Re-compare (Week 1)
- [ ] Run `specs/fo-parity-recheck-2026-10-04.md` against VB6 exe
- [ ] Fix any behavioral gaps found
- [ ] Update FORM_MIGRATION_LEDGER.md to VERIFIED for 5 forms

### Sprint 2: Night Audit GST Reports (Week 2-3)
- [ ] Analyze `eInvoice.bas` full API contract
- [ ] Extend `core/einvoice.py` for GSTR-1/2/3B generation
- [ ] Create `ui/nightaudit_gst_ui.py` for report parameters + preview
- [ ] SQL verify against live DB tables

### Sprint 3: POS KOT Entry (Week 3-4)
- [ ] Analyze `RsKOTEntry.frm` full workflow
- [ ] Create `ui/pos_kot_ui.py` with VB6 layout parity
- [ ] Wire into shell.py registry
- [ ] Test with live DB (KOTLog, TOKEN, Sale1/2)

### Sprint 4: POS Sale Bill & Settlement (Week 4-5)
- [ ] Analyze `RSSaleBill.frm`, `RSSaleBillSplit.frm`, `RsPaymentReceice.frm`
- [ ] Create UIs in `ui/pos_sales_ui.py`, `ui/pos_settlement_ui.py`
- [ ] Report chain for POS Crystal Reports

### Sprint 5: Banquet Operations (Week 5-7)
- [ ] Analyze all 10+ banquet VB6 forms
- [ ] Extend `core/banquet_ops.py`, `core/hall_booking.py` for missing logic
- [ ] Create UIs: `ui/banquet_booking_ui.py`, `ui/banquet_billing_ui.py`, `ui/banquet_estimate_ui.py`, `ui/catering_booking_ui.py`, `ui/hall_menu_ui.py`
- [ ] Wire into shell.py registry

### Sprint 6: Membership/HR + Housekeeping (Week 7-8)
- [ ] Membership UIs
- [ ] HR Payroll UIs
- [ ] Housekeeping core + UIs

### Sprint 7: Full Project Re-scan & Regression (Week 8+)
- [ ] Regenerate PARITY_RECONCILIATION.md
- [ ] Full regression test suite
- [ ] All modules VERIFIED or documented BLOCKED

---

## File-by-File VB6 → Python Mapping (Key Gaps)

| VB6 Form/Module | Python Core | Python UI | Status |
|-----------------|-------------|-----------|--------|
| **Front Office (5 gaps - re-compare pending)** |
| fdRoomChange | fo_ops.py:room_change | fo_sub_forms_ui.py:RoomChangeWindow | IMPLEMENTED |
| fdAmendEntry | folio.py? | fo_sub_forms_ui.py:AmendStayWindow | IMPLEMENTED |
| FrmMergeCharge | fo_ops.py:merge_charge | fo_sub_forms_ui.py:MergeRoomWindow | IMPLEMENTED |
| FrmRevMergeCharge | fo_ops.py:reverse_merge_charge | fo_sub_forms_ui.py:ReverseMergeWindow | IMPLEMENTED |
| frmFomB | reports.py? | fo_sub_forms_ui.py:BillReprintWindow | IMPLEMENTED |
| **Night Audit** |
| mdlNightAudit (GST) | einvoice.py | ❌ MISSING | NOT STARTED |
| **POS** |
| RsKOTEntry | pos_kot.py (data only) | ❌ MISSING | NOT STARTED |
| RSSaleBill | pos_sales.py (partial) | ❌ MISSING | NOT STARTED |
| RSSaleBillSplit | pos_sales.py | ❌ MISSING | NOT STARTED |
| RsPaymentReceice | folio.py | posting_forms_ui.py (partial) | PARTIAL |
| RsPOSDisplay | pos.py | pos_na.py:PosBrowser | READ-ONLY |
| RsBookingEntry | reservation.py? | ❌ MISSING | NOT STARTED |
| RsKOTTransfer | pos.py? | ❌ MISSING | NOT STARTED |
| RsTokenEntry | pos.py? | ❌ MISSING | NOT STARTED |
| **Banquet** |
| HallBooking | hall_booking.py | ❌ MISSING | NOT STARTED |
| HallBill | banquet_ops.py? | ❌ MISSING | NOT STARTED |
| HallAdvanceDepDialog | banquet_ops.py? | ❌ MISSING | NOT STARTED |
| HallEstimate | banquet_ops.py? | ❌ MISSING | NOT STARTED |
| HallChefPreCosting | banquet_ops.py? | ❌ MISSING | NOT STARTED |
| CateringBooking | banquet_ops.py? | ❌ MISSING | NOT STARTED |
| HallMenuCatalog | hall_menu_catalog.py | ❌ MISSING | NOT STARTED |
| HallMenuItemEntry | hall_menu_item_entry.py | ❌ MISSING | NOT STARTED |
| HallSundry | banquet_ops.py? | ❌ MISSING | NOT STARTED |
| resBanq | ? | ❌ MISSING | NOT STARTED |
| **Membership/HR** |
| MemberMast | members_masters.py | hr_members_ui.py (stub) | NOT STARTED |
| PrEmployee | hr_masters.py | hr_payroll_ui.py (stub) | NOT STARTED |
| PrAttend1 | hr_payroll.py | pr_attend1_ui.py (stub) | NOT STARTED |
| **Housekeeping** |
| HKRoomOpStk | ❌ NONE | ❌ NONE | NOT STARTED |
| HKRoomBlock | ❌ NONE | ❌ NONE | NOT STARTED |
| HKIssRec | ❌ NONE | ❌ NONE | NOT STARTED |
| HKHouseOpStk | ❌ NONE | ❌ NONE | NOT STARTED |
| HHouseKeeping | ❌ NONE | ❌ NONE | NOT STARTED |

---

## Evidence Requirements (Constitution §VII)

Har migrated feature ke liye:
1. **VB6 Ref** — VB6 form/module path + key procedure names
2. **Spec** — `specs/###-slug/spec.md` from template
3. **Python Design** — core module + UI module structure
4. **Implementation** — working code with parameterized SQL
5. **Test** — unit + DB-state tests (rollback-safe)
6. **VB6/Python Comparison** — side-by-side screenshot + workflow
7. **Parity Result** — `migration/parity-report.md` entry

---

## Key VB6 Sources to Analyze Next

| Priority | VB6 File | Size | Notes |
|----------|----------|------|-------|
| 1 | `HMS/eInvoice.bas` | 61KB | GST/e-invoice full contract |
| 2 | `HMS/RsKOTEntry.frm` | 600KB | Main POS KOT screen |
| 3 | `HMS/RSSaleBill.frm` | 3MB | Main POS sale bill |
| 4 | `HMS/HallBooking.frm` | 299KB | Main banquet booking |
| 5 | `HMS/CateringBooking.frm` | 299KB | Catering operations |
| 6 | `HMS/HallBill.frm` | ? | Banquet billing |
| 7 | `HMS/HallEstimate.frm` | ? | Quotation/estimate |
| 8 | `HMS/HallChefPreCosting.frm` | ? | Costing |
| 9 | `HMS/HallAdvanceDepDialog.frm` | ? | Advance/deposit |
| 10 | `HMS/HallMenuCatalog.frm` | ? | Menu management |
| 11 | `HMS/HallMenuItemEntry.frm` | ? | Menu items |
| 12 | `HMS/HallSundry.frm` | ? | Sundry charges |
| 13 | `HMS/resBanq.frm` | ? | Banquet reports |
| 14 | `HMS/MemberMast.frm` | ? | Membership |
| 15 | `HMS/PrEmployee.frm` | ? | HR |
| 16 | `HMS/HKHouseOpStk.frm` | ? | Housekeeping |
| 17 | `HMS/HHouseKeeping.frm` | ? | Housekeeping main |

---

## Commands Reference

```bash
# Full test suite
QT_QPA_PLATFORM=offscreen python -m pytest -q

# Single module test
QT_QPA_PLATFORM=offscreen python -m pytest tests/database/test_roomchange_parity.py -v

# Offscreen UI test
HMS_POC_SHOT=_ui_shots/test.png QT_QPA_PLATFORM=offscreen python -c "from HMS_py.ui import shell; shell.main()"

# Regenerate parity report
python tools/vb6_py_file_parity.py

# Check SQL column mismatches
python _qa/sql_worklist.py
```

---

## Constitution Reminders

- **VB6 Source is Truth** (Principle I) — never guess, mark UNKNOWN
- **Parity Before Features** (Principle II) — no new features while parity chain incomplete
- **Evidence-Based Status** (Principle III) — status without file+line evidence is invalid
- **No Fake Completion** (Principle VII) — file exists ≠ complete
- **Transaction Safety** (Principle VI) — validate → recheck → begin transaction → write → verify → commit
- **SQL Server 2008 R2 Compatibility** (Principle VIII) — no unsupported syntax