# 07 POS - Reports

## Leaves (MenuHelp)

**reports bucket = 28** (`_logic.json`): `Sales Register`, `Stewardwise Sale`, `Table wise Sale`, `Settlement Summary`, `KOT Wise Details`, `Cover Analysis`, `Pending KOT`, `Item wise Sale`, `Deleted Unsettled Bill`, `NC KOT Detail`, `NC KOT Summary`, `Group Wise Sale`, `Customer Detail`, `Bill Wise Adjustment Report`, `Order Detail Report`, `Collection Summary`, `Open Item Sales`, `Void Bills`, `KOT Change Report`, `Discount Summary`, `Monthwise Sales`, `ABC Analysis`, `Sale Summary`, `Edited Bills`, `Tax Report`, `Tax Register`, `Taxwise Details`, `Tax Summary`.

Curated registry leaf: **`Sales Register`** (shell:1068 → `_pos` = `pos_na.open_pos` shell:684-685).

## Functioning

- `Sales Register` → `pos_na.open_pos` POS sales browser (Sale1/Sale2).
- Report caption spreads (shell:1318-1328): `Settlement Summary`, `Deleted Unsettled Bill`, `NC KOT Detail`, `Collection Summary`, `Open Item Sales`, `KOT Change Report`, `Excess Consumption Report`, `Restaurant Issue Report` → reports engine `_rpmod.menu_caption_map` → `_open_report` (:907).
- Tax reports → `PosTaxRep` module (`Tax Register` perms SA included).

## Database Tables (this layer)

| Table | Rows | Role |
|---|---|---|
| `Sale1` | 12686 | Bill headers |
| `Sale2` | 66055 | Bill lines |
| `SunTran` | 98025 | Customer ledger (bill-wise adjustment) |
| `KOT`/`KOTLog` | 28101/1420 | KOT reports base |

Read-only — no writes.

## Backend SQL pattern

```sql
SELECT ... FROM Sale1 JOIN Sale2 WHERE ...   -- sales/collection summaries
SELECT ... FROM SunTran WHERE ...            -- bill-wise adjustment
SELECT ... FROM KOT / KOTLog WHERE ...       -- KOT/void/edited bill reports
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Sales Register','Settlement Summary','Tax Register');
-- Sales Register: Anoop/MUKESH AC/Gopi ***P R POSRep
-- Settlement Summary: Sumit/Anoop/MUKESH AC ***P R POSRep
-- Tax Register: Dinesh/SA/AMIT ***P R PosTaxRep  (SA included)
```
Screenshot: `screenshots/50_reports_Sales_Register.png` (copy: `03_Reports/screenshots/`).
