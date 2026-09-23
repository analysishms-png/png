# DB + VB6 Verification Report

**Date:** 2026-09-23  
**Sources:** live SQL Server `Localhost\Moondata2627` · VB6 source `FODER/` (321 .frm / 32 .bas) · `mdi_menu.json` · Python `core/`+`ui/`  
**Gates (re-run same session):** param **0** · api **0** · registry MISSING **0** · mdi leaf OPEN **547/547** · pytest **201 passed**  
**Scripts:** `verify_db_vb6.py`, `verify_db_vb6_clean.py`  
**menuHelp apply:** see `MENUHELP_APPLY_EVIDENCE.md` — `core/menu_help.py` + 14 Flag=R report aliases + 18 Flag=E openers · shell `_add_item` rights hook

---

## 1. Live DB health

| Metric | Value |
|--------|-------|
| Base tables | **274** |
| Views | **10** (BillDet, ViewBooking, ViewLedger, RoomOccDet, …) |
| Procedures | **3** (GetFieldNameAs, GetFieldNameAsStr, Proc_WebService) — app mostly inline SQL |
| FK constraints | **0** (app-level validation only) |
| Tables without PK | **39** (logs/temps mostly: BookingLog, FolioLog, KOTLog, …) |
| Company / site | KK / Kanpur · sidebar modules key 9 OK |

**Python SQL table refs (cleaned):** 199 unique → **172 exist in DB**.  
Remaining “MISSING” hits after clean pass are mostly **false tokens from comments** (`room`, `change`, `master`, …) + a few real feature gaps (below).

---

## 2. WORKING (verified against live data)

| Domain | Evidence |
|--------|----------|
| **Auth / menu** | SA login path · User_Module **617** rows · **264** flag=0 leaves · **248 wired** in form registry |
| **Front Office** | GuestFolio **10618** · RoomOcc **11018/11015** · GuestProf **7216** · PayCharge **13726** · FOMBillDetails **330** |
| **Reservation** | Booking **20** live · BookingCancelDetails **59** |
| **POS** | Sale1 **5952** · Sale2 **32580** · KOT **13907** · Waiter **58** |
| **Inventory** | Stock **30369** · Indent1 **6176** · Purch1 **396** · GodownMast **64** · ItemMast **3292** · POrder **6** |
| **Banquet (partial)** | HallBook **97** · HallSale1 **21** · VenueMast **10** |
| **Finance** | SubGroup **3110** · Ledger **18474** · TaxStru **56** · TDSCat **4** |
| **HR masters** | Employee **120** · Salary **93** |
| **SMS data** | DBSendSMS **14180** · EmailSMSForward **18** |
| **Config** | Enviro **1** · FaEnviro **1** · Company **1** · UserPermission **74** · eInvoiceEnviro **1** |
| **MDI menu** | **535** captions · **485 wired** open handlers · registry **643 live / 0 None** |
| **Critical .bas → Python signal** | FOMModule, mdlNightAudit, POSBillPrint, SMS, Member, Banq, FaVoucher, FaLib, Validation, Security, SmartCard, DoorLock, eInvoice, MobWebAPI, ErrorHandling, TopBar, GridPrint, Hotlib, MainLib — **all YES** |
| **Test gates** | 201 tests green · FO flatten · lockout persist · F&&B report alias |
| **menuHelp** | `core/menu_help.py` (AEDP/V) · 14 Flag=R aliases LIVE · 18 Flag=E openers LIVE · SA 456 entries / 97 modules |

---

## 3. MISSING / EMPTY / BLOCKED (real)

### A. Code/feature expects table — **not in this DB**

| Feature | Wrong / missing name | Live reality | Impact |
|---------|----------------------|--------------|--------|
| Banquet catering/events | `CateringBooking`, `EventMast` | LIKE `%Cater%` / `%Event%` → empty | Catering/Event screens → safe error path in `banquet_ops` |
| Attendance Report | SQL uses `Attendance` | live tables = **`Attend` (384)** + **`Attendence`** | `reports.py` AttendanceRep will 42S02 |
| Member reports | `MemberVisits`, `MemberLedger`, `MemberCards` | only `MemberFamily`+`MembershipRevMast` | member report keys fail if run |
| Finance CurrBal cache | `LedgerCurrBal` | not present | `fa_voucher` falls back / fails balance update |
| Revenue budget | `RevenueGroup` | not present (BudgetDetails exists?) | budget UI safe-blocks (`revenue_budget` guards) |
| MembershipMast master | `MembershipMast` | not present | member category master blocked |
| TDS Certificate table name check | `tdscerti.py` present | confirm live table ≠ `TDSCertificate` | spot-check before use |
| POS bare `Table` | no `Table*` table | Waiter exists (58); table master TBD | POS table map feature |
| HK `HKStatus` / `RoomBlock` | not those names | **`RoomBlockOut`, `BlockMast`** exist | shell already queries RoomBlockOut |

**Not missing (corrected):** EPABX masters — `TelCallCode`, `TelCallType`, `TelExt`, **`EPABX_Data`** all exist and Python already targets them. Finance voucher numbering — `Voucher_Type`, `Voucher_Prefix`, `VoucherCat` exist. Complaints — `ComplaintDetail`/`ComplaintCategory`/`LostFoundDetail` exist (0 rows).

### B. Tables exist but **0 rows** (feature dead on this DB — same as VB6)

- Members: MembershipRevMast, MemBill, MemVisitEntry  
- SmartCard: SmartCardMaster, SmartCardRegistration, SmartCardLedger  
- HR processing: Attendence, Leave_Ench, OverTime, Loan (Salary has 93; **Attend has 384**)  
- Banquet: HallStock  
- Guest services: ComplaintDetail, LostFoundDetail  
- Facility: DenominationFormat  

→ **BLOCKED/SKIP** (REMAINING_PRIORITY_PLAN) — not Python logic bugs.

### C. DB tables live but **Python never references** (unported / unused) — top rows

| Rows | Table | Note |
|------|-------|------|
| 7756 | Comp_PlanDet | plan detail — maybe booking plan lines unported |
| 3498 | mCurStk | current stock helper |
| 3125 | Item | vs ItemMast naming |
| 2046 | BOM | bill of materials unported |
| 1532 | RoomDiscount | discount feature unported |
| 617+450 | UserModule1, UserModule | menu dual tables (main path uses User_Module) |
| 384 | Attend | vs Attendence spelling |
| 46 | GrpBookingDetails | group booking lines |
| 32 | VenueCapacity | banquet capacity |
| … | +~20 more | see clean probe |

**30** unused tables have rows>0 · **72** unused empty/error.

> **reportlab status update:** package **4.5.1 is installed** in current interpreter — BLOCKED.md note is stale; PDF path available.

### D. Menu leaves not wired (16) — almost all **section titles** not real forms

`Banquet, EPABX, HR/Payroll, Inventory, M.I.S., Members Mgmt, Operation, Operations, Point of Sale, POS Operations, Reward Points, Send SMS, SMS, Utility` — these are group/header names stored as flag=0; **not actionable forms**.

### E. MDI captions not in registry (50) — mixed

- **Headers/sidebar roots** (ignore): Finance, Front Office, Setup, Reports, Windows, Exit, MDI, …  
- **Real gaps worth checking:** `Advance Recd. Report`, `GST Reports`, `POS M.I.S.`, `POS Reports`, `POS Operations`, `Direct Sale`, `Door Lock`, `Lock Mgmt`, `Tally Interface`, `Telephone Report`, `Outdoor Banquet`, `Mall Mgmt`, `Sale Bill Modification`, `Sstup` (typo), `Tourism Forms` (may map under FO)

### F. Security / quality residuals

| Item | Status |
|------|--------|
| param / api mismatch | **0 / 0** |
| Lockout persist | **FIXED** today (file-based) |
| reportlab | **4.5.1 installed** (BLOCKED.md outdated — PDF path available) |
| `TOP {limit}` uncast | **117 lines** — many have `limit:int` or `int(limit)` sanitize; **sys_config still 7 raw**; booking/guest_folio/hall_booking/hr_payroll untyped params (UI usually passes int — harden with `int(limit)`) |
| FK=0 / 39 no-PK | structural, VB6-era schema — app must keep guards |
| BUG-STATE-MASTER-WRONG-PATH, TAX menu flakiness | still open (Medium) |
| param/api/registry gates | **0 / 0 / MISSING=0** · pytest **199** |

### G. VB6 form inventory

- **321** .frm in FODER · fuzzy match earlier **149/321** — undercount (aliases weak: e.g. FrmGuestWakeUp exists in `guest_services`, FrmStockTransfer in inventory UI).  
- True remaining gaps cluster: **Touch POS**, **door lock settings**, **member ops forms**, **complaint/lost-found UIs**, **some Fa* subforms**, **report viewer .rpt parity**.

---

## 4. Verdict

| Area | Verdict |
|------|---------|
| Core FO / POS / Inventory / masters / finance reports SQL | **WORKING vs DB** (live rows + tests) |
| Menu open handlers | **248/264** leaves wired; 16 = headers |
| MDI | **485/535** captions wired |
| EPABX / Finance voucher / Complaints (code paths) | **WORKING** — correct live table names already |
| Members / SmartCard / Catering / Events | **BLOCKED by DB** (missing or empty) |
| Attendance Report SQL | **FIXED** — now `FROM Attend` (384 rows) + 42S02 guard in `run()` |
| Untouched live tables (BOM, RoomDiscount, Comp_PlanDet, Attend, …) | **MISSING ports** (opportunity) |
| Gates | **GREEN** (0/0, 199 tests) |

**Fix status (2026-09-23 FIX KRO SAB):**  
1) ✅ AttendanceRep → `Attend` + missing-table guard  
2) ✅ MDI leaf gaps wired: `Exit` + `Sale Bill Modification` (all 547 leaves OPEN)  
3) ✅ `int(limit)` harden — 117 replacements, 0 remaining raw `TOP {limit}`  
4) ⬜ Port high-row unused tables (Comp_PlanDet, RoomDiscount, BOM, GrpBookingDetails) — next  
5) Update BLOCKED.md (reportlab now present)

---

*Re-run:*  
`python HMS_py/_qa/HMSTesting_20260923/verify_db_vb6_clean.py`  
`python tools/param_audit.py && python tools/api_mismatch_audit.py && python -m pytest -q`
