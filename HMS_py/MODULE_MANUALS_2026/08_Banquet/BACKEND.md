# 08 - Banquet - Backend Workflow

## 1. Core modules (HMS_py/core/)

| File | Role | Key APIs |
|---|---|---|
| `hall_booking.py` | VB6 HallBook/HallSale/HallStock direct CRUD | `list_all_hallbook` (:29), `get_hallbook` (:34), `search_hallbook` (:39), `insert_hallbook` (:45, `INSERT INTO HallBook` :56), `update_hallbook` (:75), `delete_hallbook` (:94); `INSERT HallBook1` (:118), `INSERT HallSale1` (:164), `_map_hallstock`/`insert_hallstock` (:203/:218, `INSERT HallStock` :222) |
| `banquet_ops.py` | Main booking/billing engine | `_make_hall_docid` (:80), `_next_vno` (:85), `_next_sno` (:99); `hallbook_list/get/exists` (:181-194), `hallbook_insert` (:199, `INSERT HallBook` :249), `hallbook_update` (:253), `hallbook_delete` (:289); `INSERT HallBook1` (:382); `_calc_bill_amounts` (:478), `INSERT HallSale1` (:554), `INSERT HallSale2` (:576); `_map_venueocc` (:637) venue occupancy |
| `banquet_masters.py` | Venue features/catalog masters | `venfeature_*` (:50-98, `INSERT VenueFeatures` :92), `catalog_*` (:180-221, `INSERT CatalogMast` :201; `GroupCatalog` grid :247) |
| `venue.py` | Venue master | `list_all/get/exists` (:44-56), `insert` (:61, `INSERT INTO VenueMast` :66), `update` (:77), `delete` (:90); `_validate` (:30) |
| `packagemaster.py` | Package/plan master | `list_all/get/exists/insert/update/delete` (:98-163, `INSERT PlanMast` :121); `_validate` (:80) |
| `seasonmaster.py` | Season/weekend rates | `validate_rows` (:130), `weekend_flags` (:135), `list_years/list_rows/get_weekend/list_all/get/exists` (:141-216), `_site_scope` (:45) |

## 2. Write flows (see DATABASE.md §3)

- Booking: `banquet_ops.hallbook_insert` header+lines (`HallBook`+`HallBook1`) one cn transaction; `_next_vno` KI-1 counter.
- Bill: `_calc_bill_amounts` → `HallSale1+HallSale2`.
- Masters: venue/feature/catalog/plan simple INSERT/UPDATE/DELETE with exists-checks.

## 3. Validation & error handling

- `_validate_hallbook` (hall_booking:24, banquet_ops map validation), `venue._validate` (:30), `packagemaster._validate` (:80), `seasonmaster.validate_rows(year, rows)` (:130 — year/weekend parsing `_parse_ddmm` :84, `normalize_year` :68).
- `_site_scope` (seasonmaster:45) + `SITE_CODE` scoping on all hall queries.
- cn-managed commits with rollback pattern (all insert/update/delete).
- UI: hall_ui `_coming_soon` fallback if import None (shell:1400 guards).

## 4. Race-safety (KI-1 family)

- `_next_vno(vtype, vprefix)` (banquet_ops:85) — SELECT-then-consume, same as Finance voucher prefix.
- `_next_sno(docid)` (:99) — line sno counter.
- Multi-table `HallBook+HallBook1` / `HallSale1+HallSale2` — orphan analog (KI-7) if not transactional.
