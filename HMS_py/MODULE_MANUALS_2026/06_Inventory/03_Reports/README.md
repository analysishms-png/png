# 06 Inventory - Reports

## Leaves (MenuHelp)

**reports bucket = 0 classify** (`_logic.json`) — lekin **registry hits = 3**: `Stock Summary`, `Stock Register`, `Purchase Register` (shell:1169-1171 → `open_inv` InvBrowser). MenuHelp rows Flag `R` Module `MatRep` (classify reports bucket rule se bahar — cosmetic mismatch).

## Functioning

`InvBrowser` (ui:690): read-only 5-col grid + buttons/shortcuts `Ctrl+I` Indents, `Ctrl+U` Purchase, `Ctrl+B` Stock Summary, `Ctrl+R` Stock Register, `Ctrl+P` Purchase Register. Data: `indent_list` (:152), `purchase_list` (:232), stock-balance/register SELECTs. Capture: Stock Register + Purchase Register `ok`; **Stock Summary → `skipped_messagebox`** (browser ke saath direct QMessageBox — leaf open nahi hota, note in manual).

Related `other`-bucket report captions (VAT/Tax/Form24 — reports engine): `Tax Reports`, `VAT Register`, `VAT Register II/III`, `Form24 Annexure-A`, `Form III`, `UPVAT XXIV` (menuCaption spreads shell:1512-1513/1541-1542).

## Database Tables (this layer)

| Table | Role |
|---|---|
| `Stock` | Stock balance / register rows |
| `GIN` + `Purch2` | Purchase register base (MRCR docs) |
| `Indent` | Indent list (Ctrl+I) |

Read-only — no writes.

## Backend SQL pattern

```sql
SELECT TOP 200 DocId, VNo, VDate, PartyName FROM GIN
WHERE Site_Code=? AND Vprefix=? AND Vtype='MRCR' ORDER BY VNo DESC  -- inventory.py:232
SELECT TOP 200 ... FROM Indent WHERE ...                            -- :152
-- stock summary/register: SELECTs over Stock (no INSERT)
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Stock Summary','Stock Register','Purchase Register');
-- VIRENDRA ***P R MatRep ; kamlesh ***P R MatRep  (all three)
```
Screenshots: `50_reports_Stock_Register.png`, `60_reports_Purchase_Register.png` (`40_reports_Stock_Summary.png` absent — skipped); copies: `03_Reports/screenshots/`.
