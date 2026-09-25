# 06 - Inventory - Backend Workflow

## 1. Core modules (HMS_py/core/)

| File | Role |
|---|---|
| `inventory.py` | Godown CRUD, Indent CRUD, GIN create/list/get/lines, Stock Transfer, purchase_list |
| `purchase.py` | Purchase bill create (Purch1/Purch2/Stock), PO lines (PORDER1), Indent lines (INDENT1), Kitchen closing stock (KClStk) |
| `item.py` | Item master (shared 02_MainSetup) — `list_all` for StockTransfer combo |
| `unit.py` | Unit master |
| `sundry.py` | Party/sundry master (GIN party lookup) |

## 2. API inventory (def lines, inventory.py)

- Godown: `godown_list` (:90) / `godown_get` (:95) / `godown_exists` (:100) / `godown_insert` (:104) / `godown_update` (:115) / `godown_delete` (:124); `_validate_godown` (:77); SQL `INSERT/UPDATE/DELETE GodownMast` (:107/:118/:124).
- Docid/VNo: `_make_docid(vtype, vprefix, vno)` (:131); `_next_vno` (:136); `_next_vno_table(table, vtype, vprefix)` (:141) — VB6 Start_Srl_No counter.
- Indent: `indent_list` (:152) / `indent_get` (:162) / `indent_create` (:175, `INSERT INTO Indent` :188) / `indent_update` (:202, `UPDATE Indent` :209) / `indent_delete` (:222).
- GIN: `purchase_list` (:232, GIN MRCR browse) / `gin_get` (:242) / `gin_lines` (:259, Purch2 ContraDocId) / `gin_create` (:277, `INSERT INTO GIN` :299 + lines; vtype `MRCR`, `_next_vno_table('GIN','MRCR')` :290; ValueError if no lines :286).
- Stock transfer: `stock_transfer(item, from_godown, to_godown, qty, unit, rate, ...)` (called ui:900) — inter-godown stock movement.
- Category helper: `get_item_category` (:48), `item_category_case_sql` (:59).

## 3. purchase.py writes

- `purchase_bill_create` (:198): header `INSERT INTO Purch1` (:254/:135) + lines `INSERT INTO Purch2` (:271/:473) + stock posting `INSERT INTO Stock` (:298) — single transaction.
- `INSERT INTO INDENT1` (:742), `INSERT INTO PORDER1` (:904) — line tables.
- Kitchen closing stock: `kclstk_list/get/lines/insert/delete/delete_all` (:576-628), `INSERT INTO KClStk` (:609).

## 4. Validation & error handling

- `_validate_godown` (inventory.py:77) — code/name required.
- `gin_create`: `ValueError("At least one line required")` (:286) — UI must add ≥1 line.
- StockTransfer UI validations (ui:890-898): required item/godowns, from≠to, qty>0 → `QMessageBox.warning`.
- cn-managed transactions: `own = cn is None` (:293) + rollback on exception — no partial GIN.
- User stamping: `U_Name`, `U_EntDt`, `U_AE` in GIN insert (:300).

## 5. Port-bug fix (2026-09-25, in-scope for capture)

- `GINForm.reload` (ui:484) read `i["party_name"]` but `core.purchase_list` returns key **`party`** → `KeyError` crashed opener when GIN rows exist (890 rows). Fixed to `i["party"]`.
- Cause: no test coverage for `purchase_list` key shape (grep: 0 hits in tests).
- Also: `capture_module.capture_leaf` now guards `fn(win)` with try/except → opener crash = leaf `failed`, module capture continues (TDD: `test_capture_leaf_opener_exception_returns_failed`, 15/15 green).
