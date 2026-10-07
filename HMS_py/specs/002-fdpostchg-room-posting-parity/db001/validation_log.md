# DB-001 Validation Log — fdPostChrg Room-Charge Posting Scripts

**Task**: DB-001 (plan §5) — 5 SQL scripts for PY-001..011
**Date**: 2026-10-04
**Status**: **verified** — all 5 scripts execute against live SQL Server; all mutations rolled back; zero data changes.

## Connection

- Config: `HMS_py\HMS_py\core\db.py` → `load_config()` reads `HMS_py\HMS_py\Analysis.ini`
  - server=`Localhost`, database=`Moondata2627`, company/site=`KK` (Analysis.ini keys 1/6/7)
- Driver chain: SQL Server Native Client 10.0 (first in `connect()` chain — matched)
- Server: **Microsoft SQL Server 2008 R2 (RTM) 10.50.1600.1**, DB name as server sees it: **MOONData2627**
- All queries ran through the app's own `connect()` (trusted connection). No schema changes, no new indexes.

---

## SCRIPT 1a — Eligibility + duplicate exclusion (fdPostChrg.frm 242–250)

Params: `@BDATE='2026-10-03'`, `@SITE='KK'`, `@VDATE='2026-10-03'`

- **ROWCOUNT: 0** — correct: 6 in-house rooms exist on 2026-10-03 and ALL 6 are already in the posted exclusion set (14 RC rows posted that day). The exclusion set is doing its job.
- Control run **without** the exclusion clause: **ROWCOUNT 6** (base in-house set) — samples:

| DocId | RoomNo | RoomCat | RoomChargeAc | PayCode | TaxStru | Comp_Code | RODISC | COMP | Mfoliono | MfolionoDocid |
|---|---|---|---|---|---|---|---|---|---|---|
| DKKCHK   2026     455 | 206 | KK002 | KKRMCH | KKRMCH | KKTR | (empty) | 0.0 | (empty) | 456 | DKKCHK   2026     456 |
| DKKCHK   2026     456 | 202 | KK003 | KKRMCH | KKRMCH | KKTR | (empty) | 0.0 | (empty) | 456 | DKKCHK   2026     456 |
| DKKCHK   2026     458 | 303 | KK003 | KKRMCH | KKRMCH | KKTR | (empty) | 0.0 | (empty) | 458 | DKKCHK   2026     458 |

- Result shape: 51 columns (42 `ROOMOCC.*` + 9 join/computed). Column list captured live (see schema section).
- Note the live master-folio behavior: rooms 455/456/458/459 carry `MfolionoDocid` pointing at a *different* DocId (456/458) — this is exactly why the exclusion key must be `FOLIONODOCID` (the ROOMOCC.DocId), not `FolioNo` (gap G2).

## SCRIPT 1b — Already-posted exclusion set

Params: `@VDATE='2026-10-03'`
- **ROWCOUNT: 6** — samples: `DKKCHK   2026     433`, `DKKCHK   2026     452`, `DKKCHK   2026     455` (then 456, 458, 459).

## SCRIPT 1c — Execution plan / IO for exclusion-set query (2026-10-03)

`SET STATISTICS PROFILE ON` actual plan (3 operator rows):

```
SELECT DISTINCT FOLIONODOCID FROM PAYCHARGE WHERE VTYPE='RC' AND VDATE='2026-10-03'
 |--Sort(DISTINCT ORDER BY:([MOONData2627].[dbo].[PayCharge].[FolioNoDocid] ASC))  rows=6
       |--Table Scan(OBJECT:([MOONData2627].[dbo].[PayCharge]),
              WHERE:([Vdate]='2026-10-03 00:00:00.000' AND [Vtype]='RC'))  rows=14
```

- **Table Scan on a HEAP** — PAYCHARGE has NO clustered index; only index is nonclustered PK `(DocId, SNo)`. No index on `(Vtype, Vdate, FolioNoDocid)`.
- Estimated cost ≈ 0.54, 14 rows read, 6 distinct — trivial at current scale (13,751 total rows). Fine for the §6 T8 acceptance target (100 rooms < 30 s).
- **Upgrade path (NOT applied — no-index-change constraint)**: nonclustered index on `(Vtype, Vdate) INCLUDE (FolioNoDocid)` if the table grows orders of magnitude.

## SCRIPT 2 — TaxStru join (Hotlib.bas 675–706), all 4 variants

Live example params: `RoomTaxStru='KKTR'` (from ROOMOCC), `PayCode='KKRMCH'` (RoomCat.RevCode → RevMast.Code), `RRServiceChrg='No'`.

- **2A (RoomTaxStru + SCH CASE): ROWCOUNT 4** — samples:

| TaxStru | RevName | TaxName | RoomTaxAc | TaxCode | Rate | Limit | Limit1 | Nature | CondApp | CompOperator |
|---|---|---|---|---|---|---|---|---|---|---|
| KKTR | ROOM CHARGE | CGST (SALES) | KKCGSS | KKCGSS | 2.5 | 100.0 | 7499.99 | On Base Amt | Room Tariff | Between |
| KKTR | ROOM CHARGE | CGST (SALES) | KKCGSS | KKCGSS | 9.0 | 7500.0 | 0.0 | On Base Amt | Room Tariff | <= |
| KKTR | ROOM CHARGE | SGST (SALES) | KKSGSS | KKSGSS | 2.5 | 100.0 | 7499.99 | On Base Amt | Room Tariff | Between |

- **2B (RoomTaxStru, plain Rate): ROWCOUNT 4** (same rows)
- **2C (RevMast.TaxStru + SCH CASE): ROWCOUNT 4** (same rows)
- **2D (RevMast.TaxStru, plain Rate): ROWCOUNT 4** (same rows)
- 4th row (not shown above): SGST 9.0% `<=` 7500+.
- **SCH observation**: live `RevMast.Sundry` for all FieldType='T' rows holds codes (`KKCGSS`, `KKSGSS`, …), never `'SCH'` — so the `Case When TaxMast.Sundry='SCH' Then 0` branch never fires on this DB today; the CASE is still correct per contract (T4 tests it with seeded data).
- **TaxMast is not a table**: `OBJECT_ID('TaxMast') IS NULL` (0 columns). The source's `REVMAST TaxMast` is a self-join alias of RevMast — transcribed faithfully.

## SCRIPT 3 — {Site}DISC lookup (Hotlib.bas 617)

Params: `@DiscCode='KKDISC'`
- **ROWCOUNT: 1** — sample: `('ROOM DISC.', 'KKDISC', 'KKDISC')` → `Name='ROOM DISC.'`, `PayCode='KKDISC'`, `AcCode='KKDISC'`.
- Abort-gate behavior (Python side, PY-006): if this returns 0 rows while `PostRoomDiscSeparately='Yes'` and `RoDisc>0`, the whole posting must abort with the MsgBox-equivalent notice. Gate passes on this DB.

## SCRIPT 4 — Voucher_Prefix (Hotlib.bas 803–815)

**4A feeding SELECT** (params `@SITE='KK'`, `@SITE`, `@VDATE='2026-10-03'`):
- **ROWCOUNT: 1** — sample: `('Automatic', 'RC', '2026-04-01 00:00:00', '2026', '0')` → `Number_Method='Automatic'`, `Date_From=2026-04-01`, `Prefix='2026'`, `Start_Srl_No=0`.

**4B UPDATE — BEGIN TRAN … ROLLBACK (two runs):**

| Run | WHERE Date_From | rowcount | BEFORE | INSIDE TX | AFTER |
|---|---|---|---|---|---|
| 4b | `2026-10-03` (non-matching) | **0** | `[0]` | `[0]` | `[0]` ✓ |
| 4c | `2026-04-01` (real key) | **1** | `[0]` | — | `[0]` ✓ (rolled back, verified unchanged) |

- Datetime parameter accepted both as `datetime` and as ISO string `'2026-04-01'` (implicit conversion, rowcount 1).
- UPDATE WHERE matches all 4 PK columns `(V_Type, Date_From, Site_Code, LogSite_Code)` → exactly 1 row. **Must run inside the same transaction as the PAYCHARGE inserts** (VB6 BeginTrans@770 → INSERT@786 → UPDATE@815 → CommitTrans@817).

## SCRIPT 5 — UPDLOCK/HOLDLOCK duplicate check

Params: real pair `@VDATE='2026-10-03 00:00:00'`, `@DOCID='DKKCHK   2026      14'`
- **ROWCOUNT: 6** — samples:

| DocId | SNo | VNo | FolioNoDocid |
|---|---|---|---|
| DKKRC    2026      14 | 2 | 14 | DKKCHK   2026      14 |
| DKKRC    2026      14 | 4 | 14 | DKKCHK   2026      14 |
| DKKRC    2026      13 | 1 | 13 | DKKCHK   2026      14 |

- Locking hints accepted by SQL Server 2008 R2 (Native Client 10.0). Caller must hold the transaction open until INSERT commit (same pattern as `db.next_vno`).
- Note: 6 rows share one FolioNoDocid — base charge + discount + tax rows (SNo 1..6). The check is existence-based (`>0 ⇒ skip`), not row-count-based.

---

## Schema captures

### PAYCHARGE — live column list (61 columns, sys.columns)

`DocId varchar(21) NOT NULL, SNo int NOT NULL, Vtype, VNo, Site_Code, VPrefix, Vdate datetime, VTime varchar(5), GuestProf, EmpCode, CompCode, Comments varchar(255), PayCode varchar(6), PayType, AmtCr float, AmtDr float, TipAmt float, RoomCat, RoomType, RoomNo, FolioNo int, CardNo, CardHolder, ChqNo, ChqDate, ExpDate, BookNo, BookType, U_Name, U_EntDt, U_AE, RestCode, BillAmount float, ContraDocID, DbtChkIn, TaxPer float, OnAmt float, Split, Bill_No, MarkEntry, ModeSet, SettleDate, BatchNo, OldBill_No, PlanCharge, FixedChargeCode, RelatedFolioNo int, FolioNoDocid varchar(21), LogSite_Code NOT NULL, RefNo, PlanCode, SeqNo, RelatedFolionoDocId varchar(21), RefDocId, Remarks, AU_Name, AU_EntDt, TaxCondAmt float, TaxStru varchar(6), AgAc, TxnNo`

- PK/unique: `aaaaaPayCharge_PK` NONCLUSTERED on `(DocId, SNo)`. Table is a **HEAP** (no clustered index). No other indexes.
- 13,751 total rows; 1,378 RC rows; 14 RC rows on 2026-10-03.

### Voucher_Prefix — live schema (10 columns)

`V_Type varchar(5) NOT NULL, Date_From datetime NOT NULL, Date_To datetime, Prefix varchar(5), Start_Srl_No int, Site_Code varchar(2) NOT NULL, U_EntDt, LogSite_Code varchar(2) NOT NULL, U_Name, U_AE`

- PK: `aaaaaVoucher_Prefix_PK` NONCLUSTERED on `(V_Type, Date_From, Site_Code, LogSite_Code)` — **column names confirmed**: `V_Type`, `Date_From`, `Start_Srl_No` ✓. 1 RC row live (Date_From 2026-04-01 → Date_To 2027-03-31, Prefix '2026', Start_Srl_No 0, Site/LogSite 'KK').

### Supporting tables (confirmed live)

- `ROOMOCC` (42 cols): has `ChkInDate`, `ChkOutDate`, `RoomCat`, `RoomTaxStru`, `RRServiceChrg`, `Type`, `RoomTarrif`, `RackRate`, `RateCode`, `RoomRate`, `ChngDate`, `LogSite_Code`. PK `(DocId, SNo)`.
- `RoomCat` (21 cols): `Code` PK (with `Type`), `RevCode` → RevMast. `RoomCat.Code` is the room-category code ('KK002'), `Type` is the 2-char category type.
- `RevMast` (34 cols): `Code` PK varchar(6), `ACCode`, `TaxStru`, `FieldType` ('C' charge / 'T' tax), `Sundry`.
- `GuestFolio` (43 cols): `DocId` PK, `Company`, `RODisc`, `Comp`, `MFolioNo`, `MFolioNoDocid`.
- `TaxStru` (16 cols): `(Code, Sno)` PK, `TaxCode`, `Rate`, `Limit`, `Limit1`, `Nature`, `CondApp`, `CompOperator`.

---

## ⚠️ CONTRACT MISMATCHES (read before PY-010)

1. **Column-name case: `Vtime` vs `VTime`.** Plan §2.2.9 contract lists `Vtime`; live column is `VTime` (exact-case mismatch, case-insensitive match OK). SQL Server accepts either spelling in queries; **Python dict keys / any string-built column lists must use `VTime`**.
2. **Column-name case: `RelatedFolioNoDocId` vs `RelatedFolionoDocId`.** Contract lists `RelatedFolioNoDocId`; live column is `RelatedFolionoDocId` (lowercase "no"). Same caveat as #1. (There is ALSO a `RelatedFolioNoDocId`-shaped name only in the contract — the live table has `RelatedFolioNo int` AND `RelatedFolionoDocId varchar(21)`; both exist, both case-insensitively match the contract's two names.)
3. **Decompiled literal `chkinddate` is invalid.** fdPostChrg.frm 245 decompiled fragment reads `>=chkinddate` (double-d). Live column is `ChkInDate`. Executed live → **error 207 "Invalid column name 'chkinddate'"**. The delivered scripts use `ChkInDate`. Decompiler artifact — do not copy the decompiled spelling.
4. **Decompiled trailing `AND SITE_CODE='...'` is ambiguous.** In the 4-table eligibility join, unqualified `SITE_CODE` exists in ROOMOCC, RoomCat, RevMast AND GuestFolio. Executed live → **error 209 "Ambiguous column name 'SITE_CODE'"**. The delivered scripts qualify it `ROOMOCC.SITE_CODE`. The decompiled fragment is noise; the real VB6 must have had a qualified reference.
5. **Plan §2.2.9 says "30 columns" but lists 33.** Live PAYCHARGE has **61** columns. All 33 listed contract columns exist (case-insensitively) — **zero missing columns**. G10's "missing columns" is a *population* gap in the Python engine, not a schema gap. The 28 non-contract columns (EmpCode, PayType, CardNo, …, TaxStru, AgAc, TxnNo) are payment-path columns — out of scope.
6. **Task brief said tax query joins "RoomCat → RevMast → TaxStru → TaxMast".** Actual source (Hotlib.bas 678–703) joins **RevMast → TaxStru → RevMast-as-TaxMast** (no RoomCat in the tax query; RoomCat→RevMast join lives in the eligibility query). And **TaxMast is an alias, not a table** — there is no TaxMast table in MOONData2627. Scripts transcribed from source, not from the brief.
7. **`PayCharge` vs `PAYCHARGE` casing**: live table name is `PayCharge` (OBJECT_ID case-insensitive; sys.objects shows `PayCharge`). All scripts use uppercase `PAYCHARGE` — resolves fine.

**No other mismatches**: all 33 contract columns present; Voucher_Prefix column names exactly as expected; UPDATE/SELECT/UPDLOCK all behave per contract.

---

## Mutation safety

- Both Voucher_Prefix UPDATE tests ran inside `BEGIN TRAN … ROLLBACK`; post-rollback values verified equal to pre-tx values (`[0] == [0]`).
- No INSERTs were needed for validation (SCRIPT 5 tested read-only with UPDLOCK/HOLDLOCK on real rows).
- No application code, migrations, tests, `stubs_backup_20261003/`, ledger baselines, or `BUG-MS-*` code touched. Only the 2 deliverable files written.

## Exact SQL Server errors observed (all expected probes)

1. `('42S22', "[42S22] ... Invalid column name 'chkinddate'. (207) ... Statement(s) could not be prepared. (8180)")` — decompiler-literal probe.
2. `('42000', "[42000] ... Ambiguous column name 'SITE_CODE'. (209) ... Statement(s) could not be prepared. (8180)")` — unqualified-site-code probe.

No unexpected errors. All 5 delivered scripts executed clean.
