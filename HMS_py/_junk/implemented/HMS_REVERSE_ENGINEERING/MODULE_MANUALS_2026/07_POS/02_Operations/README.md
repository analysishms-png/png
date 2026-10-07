# 07 POS - Operations

## Leaves (MenuHelp)

**operations bucket = 0 classify** — POS ke KOT operations captions `other`/registry side hain. Curated registry ops leaves (3): **`KOT Entry`** (shell:1066, menuHelp row exists Flag=E), **`Table Change Entry`** (shell:1357), **`KOT Transfer`** (shell:1358).

## Functioning

- **KOT Entry** (`Ctrl+T` shell:2121): `KOTEntryForm` (kot_entry:33) — Outlet*/Date/Waiter header + 11-col lines grid (Item/Qty/Rate/Table/Waiter/NC Type...) → `pos.create_kot` (pos.py:319, `_next_kot_vno` :306) → `INSERT KOT` + KOTLog. Void via Ctrl+D → `update_kot` (:372).
- **Table Change Entry**: `TableChangeWindow` (kot_transfer_ui:22, show()) — table-to-table move; writes table state + KOTLog.
- **KOT Transfer**: `KOTTransferWindow` (kot_transfer_ui:129, show()) — KOT transfer across outlets/stations.

## Database Tables (this layer)

| Table | Rows | Role |
|---|---|---|
| `KOT` | 28101 | KOT headers |
| `KOTLog` | 1420 | KOT audit log |
| `Stock` | — | Issue on KOT consumption |
| `ItemMast`/`ItemCatMast` | 3355/50 | Item lookups |

## Backend SQL pattern

```sql
-- _next_kot_vno(outlet, vdate) SELECT-then-consume (pos.py:306, KI-1 family)
INSERT INTO KOT (...)      -- pos.create_kot :319
INSERT INTO KOTLog (...)   -- audit (pos_kot.kotlog_insert :107)
UPDATE KOT ...             -- update_kot :372 (void/edit)
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('KOT Entry','Table Change Entry','KOT Transfer');
-- KOT Entry: Sumit/Dinesh/Gaurav A**P E ''
-- Table Change Entry: Vipin/POS/SA ; KOT Transfer: Nagendra/Vipin/admin
```
Screenshots: `20_operations_KOT_Entry.png`, `30_operations_Table_Change_Entry.png`, `40_operations_KOT_Transfer.png` (copies: `02_Operations/screenshots/`).
