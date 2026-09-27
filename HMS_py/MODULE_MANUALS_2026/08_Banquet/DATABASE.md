# 08 - Banquet - Database Workflow

Live counts (2026-09-25, `Moondata2627`, read-only):

## 1. Tables (this module)

| Table | Rows | Role |
|---|---|---|
| `HallBook` | 147 | Hall booking headers |
| `HallBook1` | 0 | Booking lines |
| `HallSale1` | 38 | Hall sale bill headers |
| `HallSale1Est` | 0 | Estimate bills |
| `HallSale2` | — | Hall sale bill lines |
| `HallStock`/`HallStockEst` | 0 | Hall stock issue |
| `VenueMast` | 10 | Venue master |
| `VenueMast1` | 0 | Venue sub-rows |
| `VenueFeatures` | — | Venue-feature rows (banquet_masters:92) |
| `CatalogMast` | 0 | Menu catalog master (banquet_masters:201) |
| `BookingInquiry` | 0 | Booking inquiry (shell:1300 report SQL) |
| `SeasonMast`/`SeasonMast1` | 0 | Season rates (seasonmaster) |
| `PlanMast` | — | Package master (packagemaster:121) |
| `HallPreCosting` | 0 | Chef pre-costing |

## 2. Read flows (SELECT patterns)

- Booking list: `banquet_ops.hallbook_list(top=300)` (:181), `hallbook_get` (:188), `hallbook_exists` (:194); `hall_booking.list_all_hallbook` (hall_booking:29) / `get_hallbook` (:34) / `search_hallbook` (:39).
- Venue: `venue.list_all/get/exists` (venue.py:44-56).
- Venue features: `banquet_masters.venfeature_list*` (:50-62).
- Report SQL: `Booking Inquiry` → `SELECT TOP 200 Code, PartyName, City, MobileNo, FuncType, FuncDate FROM BookingInquiry ORDER BY Code DESC` (shell:1300-1307).
- Taxwise reports: HallTaxP captions → `_open_report` path.

## 3. Write flows (transaction diagrams)

**Hall booking** (`banquet_ops.hallbook_insert`, :199):
```
vno = _next_vno(vtype, vprefix) ; docid = _make_hall_docid     (:80-85)
  -> INSERT INTO HallBook (cols...) VALUES (...)                (:249)
  -> lines: INSERT INTO HallBook1 (...)                          (:382)
COMMIT (cn-managed; header+lines ek transaction)
hallbook_update :253 / hallbook_delete :289
```
**Hall sale bill** (`banquet_ops`, :478 calc → :554):
```
_calc_bill_amounts(lines)                                       (:478)
  -> INSERT INTO HallSale1 (...)                                (:554)
  -> INSERT INTO HallSale2 (DocId, Sno, ...)                    (:576)
COMMIT
```
**Venue master**: `venue.insert/update/delete` → `INSERT INTO VenueMast (Code, Name, ShortName, Capacity, Seating, ...)` (venue.py:66).
**Venue features**: `venfeature_insert` → `INSERT INTO VenueFeatures (VenueCode, Feature, ...)` (:92).
**Catalog**: `catalog_insert` → `INSERT INTO CatalogMast (Code, ItemCode, RestCode, Name, ...)` (:201); `GroupCatalog` grid rows (comment :247).
**Hall stock**: `insert_hallstock` → `INSERT INTO HallStock (...)` (hall_booking:222).

## 4. VNo / race safety

- `banquet_ops._next_vno(vtype, vprefix)` (:85) + `_make_hall_docid` (:80) — **KI-1 family** SELECT-then-consume (HallBook VNo per prefix).
- `_next_sno(docid)` (:99) line sequence — same pattern.
- Header+lines (`HallBook`+`HallBook1`, `HallSale1`+`HallSale2`) multi-table — orphan risk if non-transactional (FO checkin KI-7 analog).
- `HallBook1=0`, `HallStock=0`, `BookingInquiry=0`, `SeasonMast=0` — mostly empty line/config tables (data-gap style, KI-2 analog if tests need them).

## 5. MenuHelp permission check SQL

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Venue Master','Banquet Booking','Banquet Taxwise Details',
                          'Daily Function Sheet','Booking Inquiry','Events','Catalog Master');
-- Venue Master/Events/Catalog Master: SA AEDP E HallM (+htw_system, Saurav)
-- Banquet Booking: Gopi ***P E Hallop ; Deepak/AWDHESH A**P
-- Banquet Taxwise Details: ANUJ/Sumit/Gopi A**P/***P E HallTaxP
-- Daily Function Sheet: Gopi/Saurav/Deepak ***P R BanqRep
-- Booking Inquiry: AHSAN AE*P E Hallop ; Gopi ***P
```
Layer screenshots: `01_Masters/10_masters_Venue_Master.png`, `02_Operations/20_operations_Banquet_Booking.png` (copies).
