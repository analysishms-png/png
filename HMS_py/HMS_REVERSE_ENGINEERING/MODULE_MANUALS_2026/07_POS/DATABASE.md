# 07 - Point Of Sale - Database Workflow

Live counts (2026-09-25, `Moondata2627`, read-only):

## 1. Tables (this module)

| Table | Rows | Role |
|---|---|---|
| `KOT` | 28101 | Kitchen Order Tickets (header) |
| `KOTLog` | 1420 | KOT audit/change log |
| `Sale1` | 12686 | Bill header (POS sale) |
| `Sale2` | 66055 | Bill lines |
| `SunTran` | 98025 | Sundry (customer) ledger transactions |
| `SessionMast` | 2 | Session master (`Session Master` leaf) |
| `ShiftMast` | 0 | Shift master |
| `NCTypeMast` | 16 | NC (No Charge) types (`NC Type` leaf) |
| `ItemCatMast` | 50 | Menu category (`Menu Category` leaf) |
| `ItemMast` | 3355 | Menu/item master (shared) |
| `HappyHours`/`HappyHoursHead` | 0 | Happy-hours config |
| `SchemeMast`/`SchemeItemDetail` | 0 | Promotional schemes |
| `ComboPackHead/Detail`, `FreeItemDetail` | — | Combos/free items |
| `PackingOrder`/`PackingOrderDetail` | 7 | Packing orders |
| `SplitBillDetail` | — | Bill split lines |
| `DeliveryBoy`, `AssignDelivery` | 0 | Delivery allocation |
| `GuestReward` | — | Loyalty rewards |
| `Stock` | — | Item stock (POS issue) |
| `PayCharge` | — | Payment/charge lines |

(No `TableMast`/`HallMast`/`Bill`/`POS_Bill` tables in DB — Table Master caption exists but table name is legacy `Setup1`-style or handled in `pos_table.py`; VB6 naming gap — see KI-style note in TEST_PLAN if CRUD tests need it.)

## 2. Read flows (SELECT patterns)

- KOT browse: `core/pos_kot` → `SELECT ... FROM KOT ...`, `FROM KOTLog` (change history).
- Sales: `core/pos_sales` → `FROM Sale1 JOIN Sale2` (header+lines), `FROM PayCharge`, `FROM SunTran`.
- Reports (28 captions): reports engine via `_rpmod.menu_caption_map` spreads (shell:1318-1328) + `Sales Register` opener `pos_na.open_pos` (shell:685) → Sale1/Sale2 SELECTs.
- Session/Shift/NC types: `SessionMast`, `ShiftMast`, `NCTypeMast` lists.

## 3. Write flows (transaction diagrams)

**KOT create** (KOT Entry, `kot_entry.KOTEntryForm`):
```
INSERT INTO KOT (DocId/header...) + KOTLog audit row     -- core/pos_kot
COMMIT
```
**POS sale bill** (`core/pos_sale`/`pos_sales`):
```
vno counter -> INSERT INTO Sale1 (bill header)
            -> INSERT INTO Sale2 (lines)
            -> INSERT INTO PayCharge (payment split)
            -> INSERT INTO SunTran (customer ledger, if member)
            -> Stock issue INSERT/UPDATE Stock
COMMIT (header+lines+payment+stock ek transaction; partial = orphan risk — VB6 sale bill family)
```
**Table change / KOT transfer** (`kot_transfer_ui` → core): UPDATE KOT/table-state rows (log to `KOTLog`).
**Split bill**: `INSERT INTO SplitBillDetail`; **Packing**: `PackingOrder`+`PackingOrderDetail`.

## 4. VNo / race safety

- Bill VNo: POS prefix counter (VB6 `Voucher_Prefix` analog) — **KI-1 family** SELECT-then-consume race (Finance `test_voucher` KI-1 8/9 same pattern).
- `KOT` docid + `KOTLog` append — KOT numbering per session/shift (`ShiftMast` empty = no shift split active).
- Multi-table bill (`Sale1+Sale2+PayCharge+Stock`) — cn transaction rollback; orphan analog = FO checkin KI-7 family.

## 5. MenuHelp permission check SQL

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Setup Outlet','Table Master','Menu Item','Session Master',
                          'KOT Entry','Table Change Entry','KOT Transfer',
                          'Sales Register','Settlement Summary','Tax Register');
-- Setup Outlet/Table Master/Menu Item/Session Master -> SA AEDP E POSMas (+SUNIL/htw_system)
-- KOT Entry -> Sumit/Dinesh/Gaurav A**P E ''
-- Table Change Entry -> Vipin/POS/SA; KOT Transfer -> Nagendra/Vipin/admin
-- Sales Register -> Anoop/MUKESH AC/Gopi ***P R POSRep
-- Settlement Summary ***P R POSRep; Tax Register ***P R PosTaxRep (SA included)
-- Restaurant Master: NO ROW (registry-only, gap)
```
Layer screenshots: root `../screenshots/` se layer dirs me copy (all 5 leaves `ok`).
