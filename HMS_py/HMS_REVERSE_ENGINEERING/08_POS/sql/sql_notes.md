# 08_POS — `sql\queries.sql` notes

## What this file is

`queries.sql` is a **static extraction**, not a runnable migration.

- Every statement was lifted out of the decompiled VB6 source (`EXTRAS.text`) or, where the
  decompiler split a literal across dozens of concatenation lines, re-assembled from those
  fragments plus the table definition in `18_Database\columns_dictionary.txt`.
- **Nothing in it has been executed.** Evidence collection is extract-only (`[VERIFIED-SQL]` =
  reads of `18_Database\*` dumps); no live SQL Server connection was opened for this module.
- `<PlaceHolder>` tokens stand in for values that arrive from UI controls at runtime
  (`Me.FGrid.TextMatrix`, `Me.Txt`, `Me.LblVPrefix.Caption`, `MemVar_*` globals). Those value
  columns are `[INFERRED]`; the column *lists* are `[VERIFIED-VB6]`.

## Evidence tags used in the file

| Tag | Meaning |
|---|---|
| `[VERIFIED-VB6]` | SQL string literal present in `EXTRAS.text` at the cited line |
| `[VERIFIED-SQL]` | fact from `18_Database\columns_dictionary.txt`, `tables_rowcounts.txt`, `indexes_pks.txt`, `foreign_keys.txt` |
| `[INFERRED]` | column list / predicate completed from schema because the literal was truncated |
| `[UNKNOWN]` | named with "what was searched" |

## How statements were located

1. Object boundaries: decompiler markers `'Object: <FormName>` in `EXTRAS.text`
   (e.g. `'Object: RSSaleBill` at L320025, next marker `'Object: resBanq` at L371337).
2. Within each object range: `rg -n "(Select |Insert Into |Update |Delete From )" EXTRAS.text`
   filtered to the line window.
3. Line numbers in comments = the 1-based line of the **first line of the string literal**, not
   the line where `.Execute` appears.

## Statement inventory (08_POS)

| Object | Range (EXTRAS.text) | Statements captured |
|---|---|---|
| `RsKOTEntry` | L59416–L70624 | KOT insert, KOTLog insert/update, `NCKOT` update, `PRINTED='Y'`, pending-KOT guards, Depart print config |
| `RsTbChange` | L609682–L610452 | `Update Kot Set ROOMNO`, RoomMast `TYPE='TB'` lookups, occupied-table join |
| `RSSaleBill` | L320025–L371337 | Sale1 delete/insert (2 variants), Sale2 insert, SunTran insert, `Update KOT Set Pending='N'`, DelFlag sweep |
| `RSSaleBill1` | L430496–L454520 | same four writes (parallel writer) |
| `RsSaleBillSplit` | L465230–L475661 | Sale1 / Sale2 / SunTran inserts |
| `pPBill` | L70625–L107257 | Sale2 insert, SunTran insert |
| `RsPaymentReceice` | L982220–… | PayCharge delete/insert, LEDGERADJ insert, Voucher_Prefix bump |
| `FrmPOSBillDeletion` | L513954–L515215 | TempPosDel truncate/refill, outlet picker, unsettled-bill candidate query |
| `FrmDenomination` | L602545–L609681 | DenominationDetail update / max-seq / delete / select |
| `RsStatusScreen` | L611306–L613795 | Depart outlet list, Sale1⋈KOT FULL OUTER JOIN aggregation |
| `RsTokenEntry` | L613796–L633840 | SessionMast, Stock guards, KOTLog insert, TOKEN update/counts, print joins |
| `RSSaleBillDisplay` | L508415–L513953 | SELECT only (0 INSERT/UPDATE/DELETE in range) |

## Table → module ownership

| Table | Rows | Owner screen |
|---|---|---|
| `KOT`, `KOTLog` | 28101 / 1420 | KOT Entry, Token Entry, KOT Transfer |
| `Sale1`, `Sale1Log`, `Sale2`, `Sale2Log` | 12686 / 130 / 66055 / 1086 | Sale Bill Entry, Split Sale Bill |
| `SunTran`, `SunTranH`, `SunTranLog` | 98025 / 228 / 910 | Sale Bill Entry (sundries) |
| `PayCharge` | (not in row-count extract) | Payment Receive, Settlement Entry |
| `TOKEN` | 0 | Token Entry |
| `POS_SBill`, `SplitSale1`, `SplitSale2`, `SplitSunTran` | 0 / 0 / 0 / 0 | split-bill and outlet-link staging |
| `TempPosDel`, `DenominationDetail` | 0 / 0 | bill deletion utility, denomination entry |
| `RoomMast` | 86 rows | table master (tables stored as `TYPE='TB'`) |
| `Depart` | 73 rows | outlet master / switches |
| `Waiter` | 58 rows | steward master |
| `foreign_keys.txt` | **0 FKs declared** | — |

Row counts: `18_Database\tables_rowcounts.txt`. `[VERIFIED-SQL]`

## Known caveats in the extracted SQL

1. **String-concatenation injection surface.** Nearly every statement interpolates UI values
   directly (`"'" & var & "'"`). That is the original code's behaviour and is reproduced as-is for
   fidelity; do **not** copy this pattern into new code.
2. **Loose `OR` in the outlet picker** — `Where OutletYN='Y' and RestType<>'Banquet' OR
   RestType='Kitchen'` (EXTRAS.text L514244). Without parentheses SQL Server evaluates this as
   `(OutletYN='Y' AND RestType<>'Banquet') OR (RestType='Kitchen')`, so *any* kitchen row qualifies
   regardless of `OutletYN`. Original behaviour preserved. `[VERIFIED-VB6]`
3. **`Delete … then Insert` re-save.** `RSSaleBill` deletes the `Sale1` header before re-inserting
   (L324253 → L324352) rather than issuing an UPDATE. Any external FK/consumer on `Sale1` would be
   affected. There are no declared FKs, so nothing blocks it. `[VERIFIED-SQL]`
4. **Two parallel `Sale1` writers** (`RSSaleBill` L324352/L324430 and `RSSaleBill1` L431641/L431681)
   with slightly different column lists — `RSSaleBill1` omits `LOGSITE_CODE`, `Remark`,
   `DiscRemark`, `EditRemark`, `PhoneNo`, `CustName`, `Addr1/2`, `CashRecd`, `BookNo`, `CardNo`,
   `AU_Name`, `AU_EntDt` from the non-party variant. `[VERIFIED-VB6]`
5. **Placeholders are not validated.** Because nothing was executed, type mismatches (e.g. `Sno`
   `smallint` receiving a `Val(...)` string) are untested. `[UNKNOWN] — no live execution performed,
   per task rules`.

## Things deliberately not included

- Any credential / GUI-password / `Enviro` secret value.
- Runtime parameter values (they are placeholders).
- Statements belonging to other modules that happen to sit in shared helper ranges
  (`DepartWiseItemIssueList` / `GodownMast` inside the `FrmDenomination` range, membership
  `MemFacilityBilling` inside `RsStatusScreen`) — noted in `logic\vb6_logic.md` as decompiler
  merges, not reproduced here.
