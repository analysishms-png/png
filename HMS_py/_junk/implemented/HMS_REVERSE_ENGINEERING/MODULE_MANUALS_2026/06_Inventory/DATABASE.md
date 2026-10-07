# 06 - Inventory - Database Workflow

Live counts (2026-09-25, `Moondata2627`, read-only):

## 1. Tables (this module)

| Table | Rows | Role |
|---|---|---|
| `GIN` | 890 | Goods Receipt (MRCR) headers |
| `Indent` | 2115 | Indent headers |
| `Porder` | 13 | Purchase order headers |
| `Purch1` | 880 | Purchase bill headers |
| `Purch2` | (lines) | Purchase bill lines |
| `ItemMast` | 3355 | Item master (shared `02_MainSetup` item leaf) |
| `Stock` | (stock lines) | Stock postings (purchase/transfer) |
| `GodownMast` | (godown master) | Godown master (inventory godown CRUD) |
| `KClStk`, `INDENT1`, `PORDER1` | lines | Kitchen closing stock / indent lines / PO lines |

(`MRC`/`Purch`/`StockTrf`/`Godown`/`VatReg` direct table names nahi — actual names upar; VB6 legacy naming.)

## 2. Read flows (SELECT patterns)

- Indent list: `inventory.indent_list(vprefix='2026', top=200)` → `SELECT TOP 200 ... FROM Indent ...` (inventory.py:152); `indent_get` (:162).
- GIN list: `inventory.purchase_list` → `SELECT TOP 200 DocId, VNo, VDate, PartyName FROM GIN WHERE Site_Code=? AND Vprefix=? AND Vtype='MRCR' ORDER BY VNo DESC` (inventory.py:232).
- GIN detail: `gin_get` (:242) header + `gin_lines` (:259, `Purch2 WHERE ContraDocId=DocId`).
- Pending lists: `Pending Indent` → `open_inv` browser SELECTs; PO/MR pending via `purchase.py` queries.
- Reports (VAT/Tax/Form24 — other bucket): reports engine `menu_caption_map` keys.

## 3. Write flows (transaction diagrams)

**Indent create** (`inventory.indent_create`, :175):
```
vno = _next_vno_table('Indent', vtype, vprefix) + _make_docid       (:131-141)
  -> INSERT INTO Indent (DocId, Vtype, VNo, Site_Code, Vprefix, VDate, ...)  (:188)
COMMIT
indent_update -> UPDATE Indent SET Department, VDate, Godown ...     (:209)
```
**GIN create** (`inventory.gin_create`, :277 — VB6 pMREntry 'Add'):
```
vno = _next_vno_table('GIN','MRCR',vprefix); docid = _make_docid     (:290-291)
  -> INSERT INTO GIN (DocId, Vtype, VNo, Site_Code, Vprefix, VDate,
                      PartyCode, PartyName, GodownCode, Remark, U_Name, U_EntDt, U_AE, ...)  (:299)
  -> lines INSERT (Purch2/GIN lines, batch)
COMMIT (cn-managed; rollback on exception)
```
**Purchase bill** (`purchase.purchase_bill_create`, :198):
```
INSERT INTO Purch1 (DocId, VNo, Vdate, Vtype, Vprefix, Site_Code, ...)  (:135/:254)
INSERT INTO Purch2 (DocId, Sno, Vtype, VNo, ...)                        (:271/:473)
INSERT INTO Stock  (DocId, Sno, Vtype, VNo, ...)   <- stock posting     (:298)
COMMIT (header + lines + stock teeno ek transaction)
```
**PO / Indent lines**: `INSERT INTO PORDER1 (...)` (:904), `INSERT INTO INDENT1 (...)` (purchase.py:742).
**Kitchen closing stock**: `kclstk_insert` → `INSERT INTO KClStk (...)` (purchase.py:609).
**Stock Transfer**: `inventory.stock_transfer` (ui:900 call) — stock rows move between godowns.

## 4. VNo / race safety

- `_next_vno(table, vtype, vprefix)` (inventory.py:136) / `_next_vno_table` (:141) — per-table+type+prefix counter (VB6 `Start_Srl_No` style); atomic path ke liye `_make_docid` (:131).
- Same KI-1 family race window: SELECT-then-consume (Finance `Voucher_Prefix` analog) — batch tests me `test_inventory_registers` T5b `vprefix='2025'` 0 rows (KI-2 data-gap, prefix 2026 data hai).
- `gin_create` `cn` transaction — partial-fail rollback (`except` → rollback pattern).
- Orphan risk: `Purch1+Purch2+Stock` multi-table bill — agar rollback na ho (VB6 legacy path) `Purch1` header orphan (FO checkin analog).

## 5. MenuHelp permission check SQL

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Indent','Stock Transfer','Stock Summary','Stock Register',
                          'Purchase Register','Purchase Order','M.R. Entry');
-- Indent            -> Anoop/kamlesh A**P E Purch
-- Stock Transfer    -> kamlesh A**P E Purch ; MD AE*P E Purch
-- Stock Summary/Register/Purchase Register -> VIRENDRA/kamlesh ***P R MatRep
-- Purchase Order / M.R. Entry -> Anoop/kamlesh A**P E Purch
-- GIN / Purchase Receipt: NO ROW (registry-only, gap)
```
Layer screenshots: root `../screenshots/` se layer dirs me copy (`ok` items; Stock Summary skipped_messagebox — PNG nahi).
