# 08 - Banquet - Frontend Workflow

## 1. Shell wiring (shell.py)

- Sidebar root `banquet` (shell:1845 root list); `_on_sidebar_click` → `_safe_open` (:2194/:2284).
- UI imports: `banquet_masters_ui as bm` (:675), `booking_ops_ui as book_ui` (:742), `hall_booking_ui as hall_ui` (:746, None-guard :748).
- Registry keys (inside `_form_registry` return dict :1056+):
  - **Masters:** `Venue Master` → `p2.open_venue` (:1094); `Catalog Master` → `bm.open_catalog` (:1128); banquet master wave :1126-1157 (Function Type etc.)
  - **Operations:** `Banquet Booking` (:1400), `Banquet Billing` (:1401), `Banquet Settlement` (:1402), `Banquet Estimate Billing` (:1403), `Banquet Booking Advance` (:1404), `Chef Pre-Costing` (:1405), `Venue Availability` (:1406) → all `hall_ui.open_hall_booking(w)`; `Booking Operations` (:1492) → `book_ui.open_booking_ops`; `Hall Booking` (:1493) → `hall_ui.open_hall_booking`
  - **Reports:** `Banquet Taxwise Details` → `_open_report(...)` (:1664); `Booking Inquiry`/`Booking Inquiry Detail` → `_open_fv_list` SQL popups (:1300-1307); report spreads :1334-1343 (`Settlement  Report`, double-space VB6 captions)
  - `Banquet`: `_doc_skip` (:1688) — root header, skip.
- `Hall Charges Posting` → `hall_ui.open_hall_booking` (:1258 — HallAcPostChrg WRONG_TARGET note :1256).

## 2. Forms

| Leaf | Opener | Notes |
|---|---|---|
| Venue Master | `p2.open_venue(w)` (shell:1094) | Venue CRUD window |
| Banquet Booking | `hall_ui.open_hall_booking(w)` (shell:1400) | Hall booking — modal/non-modal depending on hall_booking_ui; capture `ok` |
| Banquet Taxwise Details | `_open_report(...)` (shell:1664) | Report → **direct QMessageBox** → capture `skipped_messagebox` (no PNG of grid; manual me note) |
| Catalog Master | `bm.open_catalog` (:1128) | Catalog CRUD |
| Booking Operations | `book_ui.open_booking_ops` (:1492) | Booking ops window (VB6 Add/Edit/Delete Group With Reservation alias :1648) |

## 3. Capture screenshot mapping (manifest `failed=[]`)

```
10_masters_Venue_Master.png            Venue form
20_operations_Banquet_Booking.png      hall booking window
30_reports_Banquet_Taxwise_Details.png (skipped_messagebox — no PNG)
```
Layer dirs: `01_Masters/screenshots/`, `02_Operations/screenshots/` copies.
