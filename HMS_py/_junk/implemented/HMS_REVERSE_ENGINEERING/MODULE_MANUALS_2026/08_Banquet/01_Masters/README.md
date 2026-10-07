# 08 Banquet - Masters

## Leaves (MenuHelp)

**masters bucket = 8** (`_logic.json`, after adding `HallM` to module_names): `Events`, `Venue Features`, `Venue Master`, `Menu Category`, `Item Group`, `Menu Item`, `Catalog Master`, `Banquet Bill Sundry Setting`.
Curated capture leaf: **`Venue Master`** (shell:1094 → `p2.open_venue`).

## Functioning

- `Venue Master` → `p2.open_venue` venue CRUD (`core/venue.py` list/get/insert/update/delete).
- `Catalog Master` → `bm.open_catalog` (shell:1128) → `banquet_masters.catalog_*` (`CatalogMast`, `GroupCatalog` grid).
- `Venue Features` → `banquet_masters.venfeature_*` (venue-feature rows).
- `Menu Category`/`Menu Item`/`Item Group` → shared item tree (ItemMast/ItemCatMast — same as POS); `Banquet Bill Sundry Setting` → `p2.open_sundry` (shell:1609).

## Database Tables (this layer)

| Table | Rows |
|---|---|
| `VenueMast` | 10 |
| `VenueFeatures` | — |
| `CatalogMast` | 0 |
| `ItemCatMast`/`ItemMast` | 50/3355 (shared) |

## Backend SQL pattern

```sql
INSERT INTO VenueMast (Code, Name, ShortName, Capacity, Seating, ...)  -- venue.py:66
INSERT INTO VenueFeatures (VenueCode, Feature, ...)                     -- banquet_masters:92
INSERT INTO CatalogMast (Code, ItemCode, RestCode, Name, ...)           -- :201
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Venue Master','Catalog Master','Events');
-- SA AEDP E HallM (+htw_system, Saurav) — all three
```
Screenshot: `screenshots/10_masters_Venue_Master.png` (copy: `01_Masters/screenshots/`).
