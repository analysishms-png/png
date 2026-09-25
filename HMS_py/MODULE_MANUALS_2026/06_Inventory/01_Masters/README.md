# 06 Inventory - Masters

## Leaves (MenuHelp)

**masters bucket = 5** (`_logic.json`): `Indent`, `Look Ups`, `Pending Indent`, `Pending M.R.`, `Pending Purchase Order`.
- `Indent` → registry `open_indent_ui` (shell:1166) — captured `ok`.
- `Look Ups` = lookup values (shared config), `Pending Indent/M.R./Purchase Order` = pending lists (browser paths).

## Functioning

`IndentForm` (inventory.py:86): header Department*/Date/Godown/Remarks/Cleared + browse grid + **Indent1 line grid** (VB6 PIndent FGrid). New → `indent_create` (VNo from `_next_vno_table('Indent',...)`, DOCID `MRCR`-style prefix logic), edit via double-click → `indent_update`, delete → `indent_delete`.

## Database Tables (this layer)

| Table | Rows |
|---|---|
| `Indent` | 2115 |
| `INDENT1` | lines (insert purchase.py:742) |
| `GodownMast` | godown master (lookup) |

## Backend SQL pattern

```sql
INSERT INTO Indent (DocId, Vtype, VNo, Site_Code, Vprefix, VDate, ...)   -- inventory.py:188
UPDATE Indent SET Department=?, VDate=?, Godown=? WHERE DocId=?          -- :209
DELETE FROM Indent WHERE DocId=?                                         -- :222
```
VNo counter: `_next_vno_table` (:141) SELECT-then-consume (KI-1 race family).

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) = 'Indent';
-- Anoop A**P E Purch ; kamlesh A**P E Purch
```
Screenshot: `screenshots/10_masters_Indent.png` (copy: `01_Masters/screenshots/`).
