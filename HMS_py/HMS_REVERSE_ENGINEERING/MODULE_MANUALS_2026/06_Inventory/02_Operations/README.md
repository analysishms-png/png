# 06 Inventory - Operations

## Leaves (MenuHelp)

**operations bucket = 1** (`_logic.json`): `Stock Transfer` (menuHelp). Plus registry-only leaf **`GIN / Purchase Receipt`** (shell:1174, menuHelp me NO ROW — curated hit).

## Functioning

- **GIN / Purchase Receipt**: `GINForm` (ui:366) — header Party*/Date/Godown/OC/PO DocId + 10-col lines grid (Ins/Del line) → `gin_create` (vtype `MRCR`, ≥1 line required). Browse `reload()` → `purchase_list` (port-bug fixed: `party` key, 2026-09-25).
- **Stock Transfer**: `StockTransferForm` (ui:819) — Item*/From/To Godown/Qty/Rate/Date/Remark → validations (required, from≠to, qty>0) → `inventory.stock_transfer` (ui:900).

## Database Tables (this layer)

| Table | Rows | Role |
|---|---|---|
| `GIN` | 890 | Goods receipt headers |
| `Purch2` (lines) | — | GIN lines via ContraDocId |
| `Stock` | — | Stock movement postings |
| `ItemMast` | 3355 | Item combo source |
| `GodownMast` | — | From/To combos |

## Backend SQL pattern

```sql
INSERT INTO GIN (DocId, Vtype, VNo, Site_Code, Vprefix, VDate, PartyCode,
                 PartyName, GodownCode, Remark, U_Name, U_EntDt, U_AE, ...)  -- inventory.py:299
-- _next_vno_table('GIN','MRCR',vprefix) → _make_docid (:290-291); rollback on exception
-- stock_transfer: stock rows move between godowns
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Stock Transfer','GIN / Purchase Receipt');
-- Stock Transfer: kamlesh A**P E Purch ; MD AE*P E Purch
-- GIN / Purchase Receipt: NO ROW (registry-only, gap)
```
Screenshots: `20_operations_GIN_-_Purchase_Receipt.png`, `30_operations_Stock_Transfer.png` (copies: `02_Operations/screenshots/`).
