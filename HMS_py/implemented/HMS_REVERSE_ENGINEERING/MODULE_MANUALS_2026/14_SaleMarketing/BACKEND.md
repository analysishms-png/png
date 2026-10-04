# 14 - Sale & Marketing - Backend Workflow

## 1. Core modules (HMS_py/core/)

| File | Role | Key APIs |
|---|---|---|
| `marketsegment.py` | MarketSeg CRUD | `_map` (:22), `_validate` (:38), `list_all` (:49 `FROM MarketSeg ORDER BY Code`), `get` (:55), `exists` (:62 `SELECT 1`), `insert` (:67 `INSERT INTO MarketSeg (Code, Name, Active, ...)` :72), `update` (:80), `delete` (:89); `LIMITS` dict (code 5/name 20 — finance_masters_ui:91-96) |
| `businesssource.py` | BussSource CRUD | `_map` (:21), `_validate` (:37), `list_all` (:48 `FROM BussSource ORDER BY Code`), `get` (:54), `exists` (:61), `insert` (:66 `INSERT INTO BussSource (Code, Name, Active, ...)` :71), `update` (:79), `delete` (:88); `LIMITS` |
| `guestprof.py` | GuestProf CRUD (shared 02/FO) | `_map` (:26), `_validate(rec, check_duplicates=True)` (:37) with dup guards MobileNo (:62)/PhoneNo (:69)/EmailId (:76), `list_all(top=500)` (:82), `search(name_part, top=100)` (:89), `get` (:96), `next_code()` (used frontoffice.py:170) |

All three power `BaseMasterForm` configs (finance_masters_ui:85/:101, frontoffice.py:31) — uniform Field/MasterConfig/`pk_key` contract.

## 2. Write flows (see DATABASE.md §3)

- `marketsegment.insert` / `businesssource.insert` — validate + exists-guard + single-table INSERT (MarketSeg/BussSource).
- `guestprof.insert` via `next_code()` + dup-check `_validate` — code allocation race (KI-1 family).

## 3. Validation & error handling

- `_validate` (all three): required Code/Name, max_len from `LIMITS` (marketsegment:38, businesssource:37, guestprof:37).
- `guestprof` duplicate Mobile/Phone/Email guards → ValueError before insert (guestprof:62-76).
- `exists` guards prevent PK collision on Code.
- `BaseMasterForm` delete guard: marketsegment/businesssource use `pk_key="code"` default guard; guestprof delete guarded by FO flow.

## 4. Race-safety (KI-1 family)

- `MarketSeg`/`BussSource`: PK=Code exists-guard — no VNo counter (no KI-1 select-then-consume).
- `guestprof.next_code()` — SELECT-MAX-then-consume **KI-1 family** (concurrent Guest Profile create race → duplicate PK).
- Single-table CRUD everywhere — no multi-table orphan (KI-7 nahi).
