# 14 - Sale & Marketing - Database Workflow

Live counts (2026-09-25, `Moondata2627`, read-only):

## 1. Tables (this module)

| Table | Rows | Role |
|---|---|---|
| `MarketSeg` | 10 | Market segment master (Code, Name, Active + audit cols) |
| `BussSource` | 6 | Business source master (VB6 name `BussSource` — misspelling parity) |
| `GuestProf` | 7802 | Guest profile master (Code, Name, Address, City, Type, Phone, Mobile, Email, Nationality) — primary consumer 02/FO |

## 2. Read flows (SELECT patterns)

- Market segment: `marketsegment.list_all` → `SELECT {SELECT_COLS} FROM MarketSeg ORDER BY Code` (:49-51); `get` WHERE Code (:55-57); `exists` `SELECT 1 ...` (:62-64).
- Business source: `businesssource.list_all` → `FROM BussSource ORDER BY Code` (:48-50); `get` (:54-56); `exists` (:61-63).
- Guest profile: `guestprof.list_all` `SELECT TOP 500 ... FROM GuestProf` (:82-84); `search(name_part)` (:89-91); `get` (:96); dup-checks MobileNo/PhoneNo/EmailId (:62-76).

## 3. Write flows (transaction diagrams)

**Market segment** (`marketsegment.insert`, :67):
```
_validate(rec) (:38) + exists guard (:62)
  -> INSERT INTO MarketSeg (Code, Name, Active, ...)                       (:72)
COMMIT ; update :80 ; delete :89 (single-table, BaseMasterForm pattern)
```
**Business source** (`businesssource.insert`, :66):
```
_validate (:37) + exists guard (:61)
  -> INSERT INTO BussSource (Code, Name, Active, ...)                      (:71)
COMMIT ; update :79 ; delete :88
```
**Guest profile** (`guestprof.insert` — 02/FO path):
```
_validate(rec, check_duplicates=True) (:37)
  dup guards: MobileNo (:62), PhoneNo (:69), EmailId (:76)
  -> INSERT INTO GuestProf (...)   -- frontoffice.py:170 next_code() + insert
COMMIT
```

## 4. VNo / race safety

- No VNo counters — PK = business `Code` with `exists` guards (no KI-1 select-then-consume).
- `guestprof.next_code()` (frontoffice.py:170) — **SELECT-then-consume code allocation = KI-1 family** (concurrent new-profile race → duplicate code PK violation).
- Single-table CRUD — no multi-table orphan risk (KI-7 nahi).

## 5. MenuHelp permission check SQL

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Market Segment','Business Source','Guest Profile');
-- Market Segment: SA AEDP E Mas (+Risabh ***P, htw_system AE*P)
-- Business Source: SA AEDP E Mas (+htw_system AE*P, admin A**P)
-- Guest Profile:   NO ROW (registry-only, shell:1069 fo.open_guestprof)
-- Module_Name='Mas' → rows 02_MainSetup ke bucket me classify hote hain (cross-module)
```
Layer screenshots: `01_Masters/screenshots/10_masters_Market_Segment.png`, `02_Operations/screenshots/20_operations_Business_Source.png` (copies).
