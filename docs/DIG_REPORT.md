# Business Logic DIG Report — Backend & Frontend (kanpur_business_logic cross-check)

**Date:** 2026-09-25
**Source of truth:** `_qa/kanpur_business_logic/*.txt` (10 module files, VB6 decompiled evidence)
**Method:** har business rule ko `core/*.py` (backend) + `ui/*.py` (frontend) me grep-verified
**Scope:** 10 modules — Finance, FrontOffice, Reservation, POS, Inventory, NightAudit, HR, Banquet, Members, Utility

Legend: 🟢 implemented+evidence · 🟡 partial (simplified/lib) · 🔴 missing · ⚫ blocked (DB data 0-row)

---

## 1. Front Office (FrontOffice_business_logic.txt)

| Rule (VB6) | Backend | Frontend | Status |
|---|---|---|---|
| Check-in: RoomOcc row + occupied guard | `checkin.create_checkin` (RoomOcc INSERT, occupied check L163-173, Type='I') | `fd_forms_ui.py`, `walkin_rack_ui.py`, `frontoffice.py` import + wire | 🟢 |
| Check-in: adult/children/ratecode/chkintime | `checkin` FO-7 cols in RoomOcc | same | 🟢 |
| Walk-in: guest profile + room assign | `checkin.create_checkin` (GuestFolio+RoomOcc+FolioLog) | `walkin_rack_ui.open_walkin_entry` | 🟢 |
| Room change + folio adjust | `fo_ops.room_change` (old/new RoomOcc tracking) | `fo_sub_forms_ui` | 🟢 |
| Room merge (combine folios) | `fo_ops.merge_charge` | `fo_sub_forms_ui.open_merge_charge` + Reverse Room Merge | 🟢 |
| Checkout: balance=Dr-Cr (PayCharge) | `checkout.folio_balance`, Strict/Standard mode (FdCheckOut:3202 evidence) | `checkout_ui.open_checkout` | 🟢 |
| Checkout: RoomOcc Type='O', FolioLog flag C/R | `checkout.reverse_checkout` (flag 'R') | `shell.py` "Reverse Check Out" → `open_checkout(reverse=True)` | 🟢 |
| Folio: charge types + payment REC/PYT | `folio.receive_payment` (PYT-guard, fdPaymentCharge 35-col), `PAY_TYPES` full combo list | `folio_ui` (charges/balance/settle) | 🟢 |
| Settle mode: Enviro.Checkout Strict | `folio.settle_folio` | `folio_ui` | 🟢 |
| Room status: Clean/Dirty/OOO/Maint | `roomstatus.room_rack` (RoomStat 'D'/'', RoomBLockOut O/M) | `roomstatus_ui` | 🟢 |
| Check-in PIN (4-digit) | — not found in checkin/fo_ops | — | 🔴 |
| Govt ID mandatory | — not found | — | 🔴 |
| Deposit auto-calc from rate plan | deposit col exists, auto-calc nahi mila | — | 🟡 |

**Backend:** 9/12 · **Frontend wired:** yes (3 UI entry points)

## 2. Reservation

| Rule | Backend | Frontend | Status |
|---|---|---|---|
| Availability: overlapping RoomOcc | `booking`/`reservation` (ResStatus, Cancel cols) | `ReservationBrowser` | 🟢 |
| Booking_NO auto-sequence | DocId/VNO pattern `_next_vno` | booking UI | 🟢 |
| Cancel: BookingCancelDetails + BookingLog audit | `booking.cancel` → `reservation.cancel` | booking UI | 🟢 |
| Confirm: RoomOcc on check-in only (ResStatus='Confirm') | `booking.insert` sets 'Confirm' | — | 🟢 |
| Duplicate room+dates conflict error | overlap check `checkin` me hai; booking-level conflict check partial | — | 🟡 |
| Availability Forecast 7-730 days | — | — | 🔴 |
| Confirmation/Cancellation letters | `_doc_skip` in shell registry (documented skip) | — | 🔴 |
| Package forecast / plan meal tokens | token: `kot.open_kot_entry` route hai | plan master UI hai | 🟡 |

**Backend:** 4/8 · **Frontend:** browser + booking ops wired

## 3. Finance

| Rule | Backend | Frontend | Status |
|---|---|---|---|
| Double-entry voucher | `fa_voucher` core | `fa_voucher_ui` (narration, vtype) | 🟢 |
| Voucher types (Journal/Cash/Bank/…) | `voucher_type` core | same UI | 🟢 |
| TDS Challan header+detail CRUD | `fa_tds_ops` (TDSChal/TDSChal1, 16+20 cols, validate) | `fa_sub_forms_ui.open_fa_tds_cert` etc. | 🟢 |
| TDS = Amount*Rate/100 | formula not found as explicit calc in fa_tds_ops (rate stored, calc VB6 form pe tha) | — | 🟡 |
| Adjustment entry / delete | `fa_ledger_ops`/`fasub_ui.open_fa_adjust(delete=True)` | `fa_sub_forms_ui` | 🟢 |
| Cheque clearing | `fa_sub_forms_ui.open_fa_chq_clear` | wired | 🟢 |
| Current balance updation | registry → `fvu.open_trial_balance` | wired | 🟢 |
| Trial Balance D=C | `fvu.open_trial_balance` | wired | 🟢 |
| Ageing (Debtors/Creditors) | `reports.py` aging_dr/AgingDr/Cr (simplified bucket — note in code) | reports center | 🟡 |
| Bank reconciliation | reports me nahi mila (ChequeRegister query sirf txt me) | — | 🔴 |
| Fund Flow / Cash Flow | reports me nahi mila | — | 🔴 |
| Year-end carry forward | `year_end.carry_forward_balances` + datelock | `year_end_ui` | 🟢 |

**Backend:** 8/12 · **Frontend:** voucher UI + sub-forms wired

## 4. Point of Sale

| Rule | Backend | Frontend | Status |
|---|---|---|---|
| KOT create/update/void (KotLog) | `pos.create_kot/update_kot/void_kot` + `pos_kot` (KotLog CRUD) | `kot_entry.open_kot_entry` | 🟢 |
| KOT serial per outlet | `_next_kot_vno` | — | 🟢 |
| Sale/settlement (PayCharge AmtCr) | `pos.sales_summary`, NA unsettled check | `pos_sales_ui` | 🟢 |
| Itemwise sale report | `pos.itemwise_sale` | reports | 🟢 |
| Happy hour rates | `pos_happy` (HappyHours CRUD by scheme/rest/item) | `pos_happy_ui` | 🟢 |
| Table master/status/change | `pos_table` + `kot_transfer_ui.open_table_change` | `pos_table_ui` | 🟢 |
| KOT transfer (station) | — station-transfer query nahi mila; table-change hai | `kot_transfer_ui` | 🟡 |
| Bill split (POSSaleSplit) | — not found | — | 🔴 |
| Kitchen stock on KOT complete | `pos_stock` (Stock CRUD) + `kitchen_clstk_ui` | wired | 🟢 |
| Delivery boy / packing | `pos_delivery`, `pos_packing` cores | `pos_delivery_ui`, `pos_packing_ui` | 🟢 |
| Touch screen forms (8 frm) | — | registry → misc_vb6_ui partial | 🟡 |

**Backend:** 8/11 · **Frontend:** POS UIs sabse complete (14/14 EXE_VS_PYTHON)

## 5. Inventory

| Rule | Backend | Frontend | Status |
|---|---|---|---|
| Item master CRUD | `item` core | `p2_masters.open_item` | 🟢 |
| Purchase bill create (Purch1/Purch2) | `purchase.purchase_bill_create` + CRUD | `p2_masters`/reports | 🟢 |
| Stock receive/issue/adjust | `pos_stock` (Stock doc CRUD), `stock_receive/issue/adjust_ui` | wired | 🟢 |
| Stock in hand | reports + StockInHand queries | reports center | 🟢 |
| Kitchen closing stock | `kitchen_clstk_ui` | wired | 🟢 |
| Indent / MR / Pending PO | Pending PO registry route `p2.open_item` (placeholder-ish) | partial | 🟡 |
| Stock transfer between locations | — not found as core op | — | 🔴 |
| ABC analysis / VAT register / Form24 / UPVAT | `reports.py` (ABC, Form24AnnexureA, UPVATXXIV keys) | reports center | 🟢 |
| Excess consumption report | reports (POS section) | wired | 🟢 |

**Backend:** 7/9 · **Frontend:** 8 UI files

## 6. Night Audit

| Rule | Backend | Frontend | Status |
|---|---|---|---|
| Enviro flags (KOTAtNA, PostingType, RoomChrgDueAc) | `nightaudit.get_night_audit_flags` | `nightaudit_reports_ui` | 🟢 |
| Pending KOT check | `check_pending_kots` | wired | 🟢 |
| Unsettled bills (POS+Banquet) | `check_unsettled_bills` | wired | 🟢 |
| Room charge posting (RC/KKRMCH + CGST/SGST) | Proc_96_14/16 ports, Daily vs Summary | wired | 🟢 |
| POS revenue posting (PPOS by RevCode) | same | wired | 🟢 |
| NA log (NightAuditLog) | core | wired | 🢀 🟢 |
| Reverse night audit | registry `_reverse_night_audit` | wired | 🟢 |
| GSTR1 summary | `reports.py` GSTR1 key (from POS) | reports | 🟡 (GSTR-2/4A/4B missing) |
| E-Invoice | `einvoice.generate_einvoice_report` + `einvoice_ui` | wired | 🟢 |
| Daily Report / Guest Trail / Market Seg / FOCC / FB Cost | `reports.py` keys sab mile | reports center | 🟢 |

**Backend:** 9/10 · **Frontend:** NA reports UI + registry routes

## 7. HR / Payroll

| Rule | Backend | Frontend | Status |
|---|---|---|---|
| Salary CRUD (Mth_Year+Emp) | `hr_payroll.list/get/insert/delete_salary` | `hr_payroll_ui` | 🟢 |
| Attendance CRUD | `hr_payroll._attendence` | `hr_payroll_ui` | 🟢 |
| Loan register | `hr_payroll._loan` | wired | 🟢 |
| Leave encashment | `hr_payroll._leave_ench` | wired | 🟢 |
| Salary = Basic+Allow-Ded (validation) | mapping me cols hain, net-calc validation explicit nahi | — | 🟡 |
| Leave balance = Entitled-Used calc | — not found | — | 🔴 |
| Gratuity / PF statement / Form C | reports keys (Form C mile) | reports | 🟡 |
| Employee/Designation/Category/Holiday masters | `hr_masters` | `hr_payroll_ui` (empcat/holiday/employee/desig) | 🟢 |

**Backend:** 6/8 · **Frontend:** 3 UI files (par VB6 26 forms — thin by design)

## 8. Banquet

| Rule | Backend | Frontend | Status |
|---|---|---|---|
| Hall booking (HallBook 40+ cols) | `banquet_ops._map_hallbook` | `hall_booking_ui` | 🟢 |
| Advance get/total | `hall_advance_get/total` | wired | 🟢 |
| Estimate preview | `hall_estimate_preview` + `_calc_bill_amounts` | wired | 🟢 |
| Availability (BanqAvailability) | `banquet_masters` | `banquet_masters_ui` | 🟢 |
| Chef pre-costing | — not found | — | 🔴 |
| Catalog selection | `bm.open_catalog` registry | wired | 🟢 |
| Banquet taxwise report | `_open_report("Banquet Taxwise Details")` | wired | 🟢 |

**Backend:** 5/7 · **Frontend:** 2 UI files + registry routes (PARTIAL module, expected)

## 9. Members Mgmt

| Rule | Backend | Frontend | Status |
|---|---|---|---|
| Member bill/family CRUD | `member_billing` (family, membill) | `member_billing_ui` | 🟢 |
| Member category | `hr.open_memcat` | `hr_members_ui` | 🟢 |
| Auto settle card balance | `pm.open_auto_settle_card_balance` | wired (4 registry routes) | 🟢 |
| Renewal/visit/assistant entries | sab `open_member_billing` par route | thin | 🟡 |
| 0-row tables (source txt note) | ⚫ blocked pending data — doc me already noted | | ⚫ |

**Backend:** 3/5 · **Frontend:** thin (VB6 19 forms → 2 UI, known PARTIAL)

## 10. Utility

| Rule | Backend | Frontend | Status |
|---|---|---|---|
| Login + VB6 cipher + brute-force lockout | `auth.check_login` (5/15min, seed decrypt) | `shell.LoginDialog` | 🟢 |
| menuHelp rights (AEDP/hidden) | `menu_help` (set_rights, set_hidden, copy_template, create_user) | `user_permissions_ui` | 🟢 |
| Sidebar menuHelp L1 | `menu_help.sidebar_sources` → `sidebar_buttons` | shell | 🟢 (aaj ka fix) |
| Company master/profile | `company_profile`, `company.list_companies` | `company_profile_ui` | 🟢 |
| Backup (BACKUP DATABASE + SHRINK) | `db_backup` (HOTELBKUP/DISK + DBCC SHRINK) | `db_backup_ui` | 🟢 |
| Inconsistency check | `db_maintenance` | `db_maintenance_ui` | 🟢 |
| Year end updation | `year_end` | `year_end_ui` | 🟢 |
| Guest lookup / Country/State/City / Dept / Unit | cores + UIs | wired | 🟢 |
| Task scheduler | `_doc_skip` | — | 🔴 |
| Menu item copy | `_doc_skip` | — | 🔴 |

**Backend:** 8/10 · **Frontend:** fully wired (Utility sabse solid)

---

## Cross-cutting findings (dono taraf)

### 🟢 Strong (backend+frontend dono solid, VB6 evidence ke saath)
1. FO check-in/out/reverse/folio/payment chain — PayCharge Dr/Cr model + Strict/Standard settle
2. Night audit posting engine (Enviro-driven, pending-KOT/unsettled guards, reverse)
3. menuHelp permission system (AEDP, hidden, template copy, sidebar L1)
4. POS KOT+sale+happy-hour+table stack
5. Utility (auth/backup/year-end/company)
6. Reports engine — 261 keys, kanpur txt ke lagbhag saare report names matched

### 🟡 Simplified (chal raha hai par VB6 se halka)
1. Ageing = last-txn bucket (VB6 clg-date based tha) — code note me documented
2. KOT station-transfer → table-change se approximate
3. HR net-salary validation, leave-balance calc missing
4. Members renewal/visit sab ek hi billing UI par route
5. TDS rate calc VB6-form-side tha; core me sirf storage
6. Booking-level duplicate-conflict partial (checkin overlap check strong hai)

### 🔴 Missing (backend bhi nahi)
1. Check-in PIN (4-digit) + Govt ID mandatory validation
2. Availability Forecast (7-730 din)
3. Confirmation/Cancellation letters (registry me `_doc_skip`)
4. Bank Reconciliation, Fund Flow, Cash Flow reports
5. POS bill split (POSSaleSplit)
6. Stock transfer (location-to-location)
7. Chef pre-costing (banquet)
8. Task Scheduler, Menu Item Copy
9. GSTR-2(3)/2(4A)/2(4B) variants (GSTR1 hai)

### ⚫ Blocked
- Members ke kuch tables 0-row (source txt me bhi note) — data aane par khulenge

## Count summary

| Module | Backend rules ok | Frontend wired | Verdict |
|---|---|---|---|
| Front Office | 9/12 | ✅ 3 entry points | 🟢 |
| Reservation | 4/8 | ✅ | 🟡 |
| Finance | 8/12 | ✅ | 🟢 |
| POS | 8/11 | ✅ best | 🟢 |
| Inventory | 7/9 | ✅ | 🟢 |
| Night Audit | 9/10 | ✅ | 🟢 |
| HR/Payroll | 6/8 | 🟡 thin | 🟢 |
| Banquet | 5/7 | 🟡 | 🟡 |
| Members | 3/5 | 🟡 thin | 🟡 |
| Utility | 8/10 | ✅ | 🟢 |

**Total: ~67/92 backend rules verified (73%), missing bucket ~16, simplified ~9, blocked ~1**

## Recommended next waves (priority order)
1. **W-A (quick wins):** TDS rate calc helper + booking conflict check + leave-balance calc — chhote, pure-core
2. **W-B (reports):** Bank Reconciliation, Fund Flow, Cash Flow — reports.py pattern me 3 naye keys
3. **W-C (compliance):** GSTR-2 variants + e-invoice report ko NA menu me surface
4. **W-D (FO parity):** deposit auto-calc rate-plan se + PIN/ID fields (Enviro flag ke saath optional)
5. **W-E:** POS bill split + stock transfer (naye DocId flows)
