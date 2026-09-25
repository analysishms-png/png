# 07 - Point Of Sale - Backend Workflow

## 1. Core modules (HMS_py/core/)

| File | Role | Key APIs |
|---|---|---|
| `pos.py` | Lookups + KOT create | `posmas_click` (:19), `get_outlets` (:195), `get_waiters` (:204), `get_tables` (:218), `get_items` (:235), `get_nc_types` (:270), `_next_kot_vno` (:306), `create_kot` (:319), `update_kot` (:372) |
| `pos_entry.py` | POS entry dispatch | `posent_click` (:34) — VB6 `PosEnt` menu click bridge |
| `pos_kot.py` | KOTLog + Token CRUD | `kotlog_list/get/insert/update/delete` (:86-147), `token_list/get/insert` (:245-266), `_validate_kotlog` (:81) |
| `pos_sales.py` | Sale bill + payments + ledger | `sale_bill_full_save` (:547), `paycharge_*` (:475-525), `suntran_*` (:313-385) |
| `pos_stock.py` | Stock rows | `stock_list/get/search/insert/update/delete` (:111-191), `_validate_stock` (:104) |
| `pos_table.py` | Table + DispColor | `table_list/get/search` (:38-56), `list_all/get/insert/update/delete` (:81-164), `dispcolor_*` (:179-214) |
| `pos_masters.py` | Session/Scheme masters + RBAC | `_require_permission` (:38), `session_*` (:62-104), `scheme_*` (:155-188) |
| `pos_hall/pos_packing/pos_delivery/pos_happy` | Hall sale, packing, delivery, happy-hours | VB6 sub-form flows |

## 2. Write flows (see DATABASE.md §3 for diagrams)

- `pos.create_kot(lines, outlet, vdate, waiter, user)` (:319): `_next_kot_vno` (:306) → `INSERT KOT` + KOTLog; `update_kot` (:372) edit/void path.
- `pos_sales.sale_bill_full_save(header, ...)` (:547): Sale1 header + Sale2 lines + PayCharge + SunTran + Stock — full bill transaction.
- `pos_masters.session_insert` (:79) `INSERT SessionMast` with `_require_permission` gate (:38) — menuHelp-derived RBAC check before write.
- `pos_table` CRUD → table rows; `pos_stock.stock_*` → `Stock` rows.

## 3. Validation & error handling

- `pos_kot._validate_kotlog` (:81), `pos_stock._validate_stock` (:104), `pos_masters` permission gate (:38).
- `_safe_query`/`_table_exists` (pos.py:154/:162) — graceful when legacy VB6 table absent (e.g. `ShiftMast` empty).
- UI: KOT save requires Outlet (kot_entry:464); lookup load failures → `QMessageBox.warning` (:143/:159).
- cn-managed commits with rollback on exception (all `*_insert` pattern).

## 4. KOT numbering (race-safety)

- `_next_kot_vno(outlet_code, vdate)` (pos.py:306) — per-outlet per-day VNo (VB6 KOT serial pattern) → **KI-1 race family** if two writers interleave (SELECT-then-consume).
- `Sale1` bill VNo via voucher prefix (Finance KI-1 analog) — same family.
- `KOTLog` append-only audit — no counter (sno sequence).
