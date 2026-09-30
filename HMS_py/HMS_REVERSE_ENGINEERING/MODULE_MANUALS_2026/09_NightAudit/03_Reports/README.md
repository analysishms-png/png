# 09 Night Audit - Reports

## Leaves (MenuHelp)

**reports bucket = 8**: `Occupancy Analysis`, `GSTR-1`, `GSTR-2(3)`, `GSTR-2(4A)`, `GSTR-2(4B)`, `Credit Report`, `Reconciliation (GSTR-2A)`, `EInvoice Report`.
Curated capture leaf: **`Occupancy Analysis`** (shell:1073 → `_na` = `pna.open_na` → `NABrowser`).

Other report-ish `other` rows: `Daily Report` (shell:1072 → `_na`), `Guest Trail`, `Checkout Analysis`, `Market Segment Analysis`, `Business Source Analysis`, `Company Analysis`, `FOCC Report`, `Food Costing Report`, `FB Cost Statement`, `GST Reports`, `Charges Remove Log` (report spreads shell:1316+ GST family).

## Functioning

- `Occupancy Analysis` → `NABrowser` occupancy view (occupancy/in-house data via `get_inhouse_rooms` nightaudit:224, `uncharged_rooms` :164).
- `GSTR-1/GSTR-2*/Reconciliation (GSTR-2A)/EInvoice` → GST report spreads (`NightAuditGSTR` module) — reports engine.
- `Daily Report` → same `_na` browser family.

## Database Tables (this layer)

| Table | Rows | Role |
|---|---|---|
| `NightAuditLog` | 134 | Run history (report base) |
| `PayCharge` | — | Revenue/charge facts |
| `GuestFolio` | — | Folio balances (credit report) |
| `Enviro` | 1 | NCur reference date |

Read-only.

## Backend SQL pattern

```sql
SELECT ... FROM NightAuditLog ORDER BY ...            -- na_log :613
SELECT ... FROM PayCharge WHERE Vdate = ?             -- occupancy/revenue facts
SELECT ... FROM GuestFolio / Folio balances           -- credit report
-- GST reports: reports engine over Sale/PayCharge + tax codes
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Occupancy Analysis','GSTR-1','Daily Report');
-- Occupancy Analysis: Nagendra ***P R NightAuditRR ; Gopi/SA ***P R FDOMISRep
-- GSTR-1: Sumit/SA/STORE ***P R NightAuditGSTR
-- Daily Report: Deepak/SA/Gaurav ***P/**P E NightAuditRR
```
Screenshot: `screenshots/20_reports_Occupancy_Analysis.png` (copy: `03_Reports/screenshots/`).
