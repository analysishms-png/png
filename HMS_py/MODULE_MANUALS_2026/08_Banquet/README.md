# 08 - Banquet - Module Manual

## 1. Menu path (MenuHelp)

- Sidebar root: `banquet`.
- Module_Names: `Banquet`, `oper`, `Hallop`, `HallReport`, `BanqRep`, `HallMIS`, `BanqRepMIS`, `HallTax`, `HallTaxP`, **`HallM`** (added 2026-09-25 — venue/catalog/events master rows were falling outside buckets); `master_modules` = `HallM`.
- Counts: **masters=8, operations=2, reports=14, hidden=0, other=13**.
- Masters (`HallM`): `Events`, `Venue Features`, `Venue Master`, `Menu Category`, `Item Group`, `Menu Item`, `Catalog Master`, `Banquet Bill Sundry Setting`.
- Operations: `Banquet Booking`, `Banquet Booking Advance` (both `Hallop`, Flag=E).
- Reports (14): `Sales Register`, `OutStanding Report`, `Party wise OutStanding`, `Cashier  Report`, `Booking Inquiry Detail`, `Settlement  Report`, `Daily Function Sheet`, `Item Wise Sales Report`, `Company Wise Sale Report`, `Function Wise Item Detail`, `Cover Analysis`, `Collection Summary`, `Tax Report`, `Tax Summary`.
- Other (13): `Banquet`, `Operation`, `Booking Inquiry`, `Catalog Selection`, `Chef Pre-Costing`, `Banquet Billing`, `Venue Availability`, `Guest Comments`, `Banquet Estimate Billing`, `Reports`, `MIS`, `Tax Report`, `Banquet Taxwise Details`.
- **Curated leaves (fixed 2026-09-25):** masters `Venue Master` (shell:1094 `p2.open_venue`), ops `Banquet Booking` (shell:1400 `hall_ui.open_hall_booking`; earlier `Hall Booking Operations` key nahi tha), reports `Banquet Taxwise Details` (shell:1664 `_open_report`).

## 2. Workflow (menu → screen → action → DB write)

| # | Leaf | Screen (opener) | Action | DB write |
|---|---|---|---|---|
| 1 | Venue Master (`HallM`) | `p2.open_venue` (shell:1094) → venue form | Venue CRUD | `venue.insert/update/delete` → `INSERT INTO VenueMast (Code, Name, ...)` (core/venue.py:66) |
| 2 | Banquet Booking (`Hallop`) | `hall_ui.open_hall_booking(w)` (shell:1400) | Hall booking | `banquet_ops.hallbook_insert` → `INSERT INTO HallBook` (banquet_ops:249) + lines `INSERT INTO HallBook1` (:382); update/delete :253/:289 |
| 3 | Banquet Booking Advance | same opener | Advance against booking | HallBook advance cols / SunTran analog |
| 4 | Banquet Taxwise Details (`HallTaxP`) | `_open_report("Banquet Taxwise Details")` (shell:1664) | Report | read-only (capture = **skipped_messagebox** — direct QMessageBox) |
| 5 | Billing/Settlement (`Hallop`, other) | `hall_ui.open_hall_booking` (shell:1401-1406) | Hall sale bill | `banquet_ops` → `INSERT INTO HallSale1` (:554) + `HallSale2` (:576), `_calc_bill_amounts` (:478) |

## 3. Layers snapshot

| Layer | Count | registry hits |
|---|---|---|
| masters | 8 | Venue Master |
| operations | 2 | Banquet Booking |
| reports | 14 (+Banquet Taxwise Details curated) | Banquet Taxwise Details |
| hidden | 0 | — |
| other | 13 | see §1 |

## 4. Screenshot index (manifest `failed=[]`)

| File | Layer | Leaf | Status |
|---|---|---|---|
| `screenshots/10_masters_Venue_Master.png` | masters | Venue Master | ok |
| `screenshots/20_operations_Banquet_Booking.png` | operations | Banquet Booking | ok |
| `screenshots/30_reports_Banquet_Taxwise_Details.png` | reports | Banquet Taxwise Details | skipped_messagebox |

## 5. Test status

- `TEST_RESULTS.md`: L1+L2b **fails=0**.
- Detail: [`TEST_RESULTS.md`](TEST_RESULTS.md); KI list: `00_Instructions/TEST_PLAN_MASTER.md`.

## 6. Related docs

- Database: [`DATABASE.md`](DATABASE.md) · Frontend: [`FRONTEND.md`](FRONTEND.md) · Backend: [`BACKEND.md`](BACKEND.md) · Tests: [`TEST_PLAN.md`](TEST_PLAN.md)
- Layers: [`01_Masters/README.md`](01_Masters/README.md) · [`02_Operations/README.md`](02_Operations/README.md) · [`03_Reports/README.md`](03_Reports/README.md)
- SOP: `00_Instructions/MANUAL_TEMPLATE.md` · capture: `00_Instructions/CAPTURE_GUIDE.md` · global map: `00_GLOBAL/MenuHelp_Module_Map.md`
