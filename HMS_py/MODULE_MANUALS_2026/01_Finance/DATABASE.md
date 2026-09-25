# 01 - Finance - Database Workflow

Live counts (2026-09-25, `Moondata2627`, read-only):

## 1. Tables (this module)

| Table | Rows | Role |
|---|---|---|
| `Ledger` | 40818 | Voucher line ledger (DocId + V_SNo PK part) |
| `LedgerM` | 3158 | Voucher header (DocId PK) |
| `AcGroup` | 73 | A/c groups |
| `SubGroup` | 3238 | Ledger accounts (VB6 FaSubGroup) |
| `NarrMast` | 2 | Global narration names |
| `Voucher_Prefix` | 171 | VNo counters per type (Start_Srl_No) |
| `Voucher_Type` | 171 | Voucher type definitions |
| `TDSCat` | 4 | TDS categories (limit/%) |
| `LedgerAdj` | 264 | Bill-wise ledger adjustment pairs |
| `LedgerRef` | 0 | Ledger reference rows (table empty) |
| `LedgerTDS` | 338 | TDS lines per voucher |
| `SubGroupCurrBal` | 6166 | Current balance per subcode+site |
| `AcGroupCurrBal` | 2054 | Current balance per group |
| `FaEnviro` | 1 | FA environment settings |
| `LastVou` | 22 | Last voucher bookkeeping |
| `TDSChal` | 0 | TDS challan (empty) |
| `TDSCerti` | 0 | TDS certificate (empty) |

## 2. Read flows (SELECT patterns)

- Trial balance: `fa_voucher.trial_balance(d_from, d_to)` → `SELECT ... FROM Ledger JOIN LedgerM ...` date-range aggregation (fa_voucher.py:717).
- Ledger a/c list: `fa_masters_ops.subgroup_list` → `SubGroup S LEFT JOIN AcGroup G ... LEFT JOIN City` fill-join (fa_masters_ops.py:197-205).
- Report leaves: `_open_report(cap)` → `menu_caption_map().get(cap)` → reports engine key → engine SELECT (shell.py:907-917).
- Bank recon pending/cleared: `fa_voucher.cheque_pending/cheque_cleared` → `Ledger` cheque fields (fa_voucher.py:659/676).
- Adjustment lists: `fa_ledger_ops.ledgeradj_list/adj_pending` → `LEDGERADJ` (fa_ledger_ops.py:64/89).

## 3. Write flows (transaction diagrams)

**Voucher post** (`fa_voucher.post_voucher`, fa_voucher.py:79):
```
BEGIN
  next_vno(vtype, vdate)        -> SELECT Voucher_Prefix.Start_Srl_No
  INSERT INTO LedgerM (DocId, V_Type, v_Prefix, V_No, Site_Code, ...)   (:135)
  INSERT INTO Ledger (DocId, V_SNo, V_Type, V_No, v_Prefix, ...)  per line (:147)
  UPDATE Voucher_Prefix SET Start_Srl_No = ?, U_EntDt = getdate()  (:174)
  UPDATE SUBGROUPCURRBAL SET Curr_Bal ... / INSERT SUBGROUPCURRBAL (:253/:259)
  UPDATE ACGROUPCURRBAL SET Curr_Bal ... / INSERT ACGROUPCURRBAL   (:276/:281)
COMMIT
```
**Ledger Adjustment** (`fa_ledger_ops.ledgeradj_insert`, fa_ledger_ops.py:138):
```
INSERT INTO LEDGERADJ (DocId1, V_SNo1, DocId2, V_SNo2, Cr, ...)   (:148)
```
**Cheque cleared** (`fa_voucher.cheque_mark_cleared`):
```
UPDATE Ledger SET Clg_Date = ?, Chq_No = ?, Chq_Date = ?           (:711)
```
**Masters** (single-statement CRUD, one connection each):
```
subgroup_insert  -> INSERT INTO SubGroup (SubCode, Name, ShortName, GroupCode, ...)   (fa_masters_ops:233)
acgroup_insert   -> INSERT INTO AcGroup (GroupCode, Site_Code, GroupName, ...)        (fa_masters_ops:145)
narr_insert      -> INSERT INTO NarrMast (Name) VALUES (?)                            (fa_masters_ops:318)
tdscat_insert    -> INSERT INTO TDSCAT (code, name, TDSLimit, TDSPercentage, ...)     (fa_masters_ops:63)
```
**Delete** (`fa_voucher.delete_voucher`, fa_voucher.py:442): LedgerM + Ledger + curr-bal rollback ek transaction me.

## 4. VNo / race safety

- `next_vno()` (fa_voucher.py:48) `Voucher_Prefix` padhta hai, post ke andar `UPDATE Start_Srl_No` consume karta hai (:174) — do concurrent posts ka race possible hai agar SELECT aur UPDATE ke beech gap ho (VB6 se legacy pattern). Tests `test_fa_voucher` isi ko cover karte hain (8/9, `TEST_RESULTS.md`).
- `DocId` format VB6 legacy (`V_Type + space-pad + V_No`) — `DKKJV   2026      904` jaise (orphan cleanup evidence, progress ledger).
- Orphan pattern: UI delete rollback fail hone par `LedgerM` row delete ho sakti hai par `Ledger` lines bach sakti hain (pilot me `DKKJV 2026 904` orphan mila, user-approved DELETE se clear kiya).

## 5. MenuHelp permission check SQL

Opt1 bucket + flags (live samples):

```sql
-- Finance group row (sidebar root)
SELECT Opt1, [Option], Module_Name FROM menuHelp
WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND Opt1<>0 AND RTRIM([Option])='Finance';
-- -> Opt1=11, Module_Name='FA' (22 rows, per-company dup)

-- Operations (Flag='E' = entry, Module_Name='fate')
SELECT UserName, [Option], Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option])='Voucher Entry';
-- -> e.g. Dinesh 'AEDP' E fate ; kamlesh 'A**P' E fate

-- Reports (Flag='R', Module_Name='FAREPORT')
SELECT UserName, [Option], Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option])='Trial Balance';
-- -> e.g. AMIT/SA '***P' R FAREPORT

-- Masters (Opt1=12, Module_Name='fame'/'UTL')
SELECT RTRIM(Module_Name), RTRIM(Flag), RTRIM(Param_Str), COUNT(*) FROM menuHelp
WHERE RTRIM([Option])='Ledger Accounts' GROUP BY RTRIM(Module_Name), RTRIM(Flag), RTRIM(Param_Str);
```
`Param_Str` 4-char rights mask (`A`=add, `E`=edit, `D`=delete, `P`=print, `*`=deny) — `check_manual`/permission SQL `00_GLOBAL/MenuHelp_Module_Map.md` §rules.

Gap: `Ledger Adjustment` ka menuHelp row nahi hai (registry-only leaf) — permission check us caption par khali aayega.
