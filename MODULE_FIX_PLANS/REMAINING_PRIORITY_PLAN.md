# REMAINING WORK — PRIORITY PLAN (evidence-based)

**Date:** 19/Sep/2026 (updated: 2026-09-19 evening)
**Rule:** pehle DB-feasibility, phir VB6 evidence, phir
business value. Jo tables live nahi hain woh BLOCKED/SKIP — invent nahi karte.

## Method
```
DB probe (rows live?) -> VB6 frm evidence (SQL/logic samajh aata hai?) ->
business value (operations me use hota hai?) -> priority (P6/P7/P8)
```

## Census result (19/Sep live probe)

| Evidence | Result |
|---|---|
| MembershipRevMast / SmartCard* | **0 rows** — MemberModule BLOCKED |
| MemberFamily | 37 (sirf FK data, operations dead) |
| HallBooking/HallBill/CateringBook/EventMast | **tables hi nahi** — Banquet ops BLOCKED (VenueMast=10 sirf master) |
| Complaint/LostFound/Messaging/Payroll/Reward/Kitchen/Token/Denomination | **tables hi nahi** — SKIP |
| Stock 30369 (BMTC 4671 transfer rows live!) | StockTransfer **FEASIBLE** |
| RQI/RQR 4793+4793 (requisition issue/receipt) | Stock Issue/Receipt **FEASIBLE** |
| Depart 67 / DepartPay 75 | Department master live |
| eInvoiceEnviro 1 row (ASP creds live) | eInvoice config-screen **FEASIBLE** |
| FOMBillDetails 1077 | Checkout-clearance view **FEASIBLE** (flag-based, VB6 Enviro.RoomCheckOutClearanceYN) |

---

## P6 — NEXT WAVE (feasible + high-value) — STATUS

| # | Module | VB6 source | DB basis | Effort | Status |
|---|---|---|---|---|---|
| P6-1 | **Stock Transfer between godowns** | FrmStockTransfer.frm | Stock Vtype='BMTC' 4671 live rows, GodownMast 64 | M | ✅ **DONE** |
| P6-2 | **Stock Issue/Receipt (Requisition)** | FrmStockIssue/Receipt | RQI 4793 / RQR 4793 live | M | ✅ **DONE** |
| P6-3 | **Stock Register/Ledger view** | RsStockRegister | Stock 13253 live (FY2025, issue-only; TTX: StkRegStore.rpt cols) read-only browse + date-window/godown/item filters | S | ✅ **DONE (20/Sep)** |
| P6-4 | **Department master CRUD** | DepartMast.frm | Depart 67 live rows | S | ✅ **DONE** |
| P6-5 | **eInvoice config screen** | eInvoice.bas + enviro | eInvoiceEnviro 1 row (ASPId/creds) | S | ✅ **DONE (EInvoiceConfigForm live)** |
| P6-6 | **Checkout Clearance screen** | HRoomCheckOutClearance | FOMBillDetails 1077 rows + Enviro.RoomCheckOutClearanceYN flag | S | ✅ **DONE** |

**P6 completion:** 6/6 done (P6-1..P6-6) · P7-1 Kitchen Stock Report bhi live (KitchenStockReportForm)

## P6-3 verification (20/Sep, is session)
- BUG found+fixed: `stock_register()` hardcoded `vprefix="2026"` → 0 rows
  (live Stock sab Vprefix='2025'). Fix: default None (VB6 register
  date-window based — Crystal StkRegStore.rpt TTX evidence) + from/to params.
- Tests: `HMS_py/tests/database/test_inventory_registers.py` **8/8 PASS**
  (fields=ttx cols, window/godown/vprefix filters, purchase_register graceful
  0 on empty GIN/POrder, Stock delta 13253→13253 read-only proof)
- UI smoke (offscreen): InvBrowser + EInvoiceConfigForm + KitchenStockReportForm OK
- Shell leaves verified wired: 'Stock Register', 'eInvoice Config', 'Kitchen Stock Report'

## P7 — READ-ONLY / REPORT WAVE (feasible, lower value)

| # | Module | Basis | Effort |
|---|---|---|---|
| P7-1 | Kitchen Stock Report | Stock KSISS/KSREC (53+53) | S |
| P7-2 | POS Recycle viewer | Stock STOP/NRS (deleted bills) | S |
| P7-3 | Budget vs Actual report | RevenueWiseBudget (report-only, no write) | M |
| P7-4 | EPABX/TelCall viewer | TelCall tables X — agar import aaye tab | BLOCKED-ish |

## P8 — SKIP/BLOCKED (documented — VB6 me bhi is DB par dead)

| Module | Reason |
|---|---|
| **MemberModule** | 🚫 BLOCKED — MembershipRevMast/SmartCard* 0 rows (upar evidence) |
| Banquet operations (HallBooking/HallBill/Catering/Event) | tables GONE — sirf VenueMast=10 master |
| Complaint, Lost&Found, Internal Messaging, Payroll/HR processing, Reward Points, Smart Card ops, Door Lock, SMS gateway, Job Scheduler, Touch POS, Denomination, PlanToken, Calendar, TDS/Tax vouchers | dedicated tables DB me nahi; VB6 EXE bhi inhe is DB par use nahi karta |
| MobWebAPI | external API dependency — hosting decision chahiye (REQUIRES MANUAL REVIEW) |

## Agla actionable: **P6-3 Stock Register view** (read-only, 30369 rows) → P6-5
(eInvoice config, 1 row) → P7-1 (Kitchen Stock Report) — sabse chhote tasks.
