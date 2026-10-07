# 08 Banquet - Reports

## Leaves (MenuHelp)

**reports bucket = 14**: `Sales Register`, `OutStanding Report`, `Party wise OutStanding`, `Cashier  Report`, `Booking Inquiry Detail`, `Settlement  Report`, `Daily Function Sheet`, `Item Wise Sales Report`, `Company Wise Sale Report`, `Function Wise Item Detail`, `Cover Analysis`, `Collection Summary`, `Tax Report`, `Tax Summary` (modules `BanqRep`/`BanqRepMIS`/`HallTaxP`).

Curated capture leaf: **`Banquet Taxwise Details`** (registry `HallTaxP`, shell:1664 → `_open_report`; menuHelp row Flag=E). Other-13 me `Reports`, `MIS`, `Tax Report` headers + `Booking Inquiry` (`_open_fv_list` SQL popup shell:1300).

## Functioning

- `Banquet Taxwise Details` → `_open_report(...)` — direct QMessageBox → capture `skipped_messagebox` (grid PNG absent, manual carries SQL).
- Report spreads (shell:1334-1343): `Settlement Report`, `Banquet Taxwise Details`, double-space VB6 captions (`Cashier  Report`, `Settlement  Report` — note double space, exact-key).
- `Booking Inquiry`/`Booking Inquiry Detail` → `_open_fv_list` grid popup with `BookingInquiry` SQL (0 rows live).
- Data base: `HallSale1/2` (sales), `HallBook` (bookings), outstanding via sundry/analogous ledger.

## Database Tables (this layer)

| Table | Rows |
|---|---|
| `HallSale1`/`HallSale2` | 38/— (sales reports) |
| `HallBook` | 147 (function sheet) |
| `BookingInquiry` | 0 (inquiry report empty) |

Read-only.

## Backend SQL pattern

```sql
SELECT TOP 200 Code, PartyName, City, MobileNo, FuncType, FuncDate
FROM BookingInquiry ORDER BY Code DESC              -- shell:1300-1307
SELECT ... FROM HallSale1 JOIN HallSale2 ...         -- sales/tax summaries
SELECT ... FROM HallBook WHERE Vdate ...             -- daily function sheet
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Banquet Taxwise Details','Daily Function Sheet','Sales Register');
-- Banquet Taxwise Details: ANUJ/Sumit/Gopi ***P/A**P E HallTaxP
-- Daily Function Sheet: Gopi/Saurav/Deepak ***P R BanqRep
-- Sales Register: BanqRep ***P R (POS se shared caption)
```
Screenshot: `30_reports_Banquet_Taxwise_Details.png` — **skipped_messagebox** (no PNG; layer dir me README only).
