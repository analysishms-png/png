# 10_Night_Audit — Module Manual

Spec: PROMT.txt §13 (structure) + **§15 (Night Audit documented separately & deeply)**.
Evidence tags: `[VERIFIED-VB6]`, `[VERIFIED-SQL]`, `[VERIFIED-UI]`, `[INFERRED]`, `[UNKNOWN]`.

Companion deep doc (this folder, root): `NIGHT_AUDIT_FLOW.md` — verbatim posting SQL.

> **HARD BLOCKLIST**: Night Audit was never executed, and must never be executed, on
> production data. No Save/Delete/Post/Settle/Print/Yes clicks anywhere in this module.
> Execution on a test DB requires explicit user approval (spec §15).

---

## 1. Purpose

Closes the hotel business day: posts revenue/expenses to Finance, rolls room status,
extends due-out folios, advances the business date (`Enviro.ncur`), resets token counters,
cleans split-bill staging, renumbers voucher serials, and writes `NightAuditLog` —
all inside one transaction with rollback on failure.

Live evidence `[VERIFIED-SQL]`: `NightAuditLog` **134 rows** (134 completed audits),
`Enviro` 1 row (single site, `ncur` holds current business date), `Ledger` 40818,
`ExpSheet` 4, `Depart` 73.

## 2. Menu Structure

| Surface | NA representation |
|---|---|
| Strip tab (`Analysis.ini` key 9) | `Night Audit` = 9th of 15 tab names |
| Builder (`menu_tree_raw`, hex `13`) | root `Night Audit` (L428, type=4) + 33 rows; plus 13 stray rows at file top (L1–L13: GST Reports group, Credit Report, Payment Receive Entry (POS), Upload Process) |
| Runtime (`MenuHelp` SA, `OPT1=19`) | root `Night Audit` (L302) + 31 rows |

Runtime groups (`OPT2`): **Operation** (5) / **Reports** (12) / **Log** (2) / **GST Reports** (6) /
**Tally Reports** (1). Full listing: `screens/screens.md`.

Notable: **GST & Tally report groups live under Night Audit** at runtime (OPT1=19) —
tax compliance is day-close work in this product `[VERIFIED-SQL]`.

Drift: builder includes `Travel Agent Analysis`, `Revenue Analysis`, `Budget Analysis`,
`Ageing Analysis (Debtors/Creditors)`, `Room Inventory`, `Charge Payment Detail` — **not**
in SA runtime tree; runtime adds `Credit Report`, `EInvoice Report` (L427–428) `[VERIFIED-VB6]`.

## 3. Screens

| Menu caption | Form / target | Line | Note |
|---|---|---|---|
| Night Audit Control Panel | `FrmControlPanel` | L477075 | main dashboard |
| **Night Audit Process** | Enviro gate → `fdAcPostChrg` | L480406–480423 | see §9 gate below |
| Reverse Night Audit | `frmReNightAudit` | L480425 | |
| Charges Posting | `fdPostChrg` | L480211 | |
| Account Posting | `fdNDAcPostChrg` | L477244 | night A/C posting |
| Guest Audit Ledger | `rFomRepView` | L477118 | report |
| Upload Process | `FrmUploadProcess` | L477209 | GST upload |

**The Night Audit Process gate** `[VERIFIED-VB6]`: before opening anything the handler runs
`Select KOTAtNightAudit,POSBillAtNightAudit from Enviro where logsite_code='<MemVar_1F81078>'`
(L480407), then evaluates both flags via `Proc_6_37_E618F4` + `Proc_96_46_10187AC` /
`Proc_96_45_11033E4` (L480412–480416); the fall-through path constructs `New fdAcPostChrg`
(L480420) while an alternate path sets `var_B0 = Nothing: Exit Sub` (L480418–480419).
Branch semantics = `[INFERRED]` (decompiler loop-back targets `'do at:` not fully resolved):
**pending KOT/POS work blocks or redirects the audit entry** — consistent with
`NightAuditoR_Click` pre-checks documented in `NIGHT_AUDIT_FLOW.md`.

## 4. Masters

None owned. Reads: `Enviro` (site flags + business date), `RevMast` (revenue heads, 174 rows),
`Depart` (token counters, 73), `VOUCHER_PREFIX` (serials, 171), `RoomMast`/`RoomOcc`/`GuestFolio`
(FO tables). Masters defined in 02_Main_Setup `[VERIFIED-VB6]`.

## 5. Transactions

Core routine `mdlNightAudit` (~L228700–228950, addr 1F5EDF3–1F70BE5), wrapped in
`BeginTrans/CommitTrans/RollbackTrans` `[VERIFIED-VB6]`:

| Phase | Action | Key SQL |
|---|---|---|
| A | Revenue/expense → Finance | ledger rows via `Proc_6_140_12D68DC`; `SELECT ACCODE FROM REVMAST WHERE CODE='<CASH_AC>'`; `Select Amount as Amt,AgAC,VType,Remarks as Narration From ExpSheet where vdate=<date> Order By VType,Vno` → post `HTEXP`/`HTSAL` |
| B | Room status roll | occupancy join → `Update RoomMAst set roomStat='D' WHERE CODE=…` for `type NOT IN ('C','O')` |
| C | Due-out extension | folios with `chkoutdate IS NULL` and `DepDate <= audit date` → `Update RoomOcc SET Depdate=…` + `Update GuestFolio SET nodays=…` (`NoDays = DateDiff(d,ChkInDate,DepDate+1)`) |
| D | Date roll + log | `Update enviro set ncur=<next>, ImprestAmount=0 where Logsite_code=…`; `Insert Into NightAuditLog(…)`; `Update Depart Set CurTokenNo=0,CurTokenNoKOT=0 where AutoResetToken='Yes'`; split-bill `Delete From POS_SBill/SplitSale1/SplitSale2/SplitStock/SplitedSunTran Where VType='B<dept>'…`; `UPDATE VOUCHER_PREFIX SET START_SRL_NO=(Select IsNull(Max(VNo),0) From SplitSale1 …)` |
| E | Failure | any error → `RollbackTrans`, MsgBox *"There is some problem in Last date Settlement Or Charge Posting ... Contact to Analysis."*, business date unchanged |

Full verbatim statements: `NIGHT_AUDIT_FLOW.md`, `sql/queries.sql`.

## 6. Operations

- **Reverse Night Audit** (`frmReNightAudit`) — undoes a roll (fields `DateChngFrom/To` in
  `NightAuditLog` provide the target) `[INFERRED]` (form body not fully traced).
- **Charges Posting / Account Posting** — FO-adjacent posting screens reachable here
  (`fdPostChrg`, `fdNDAcPostChrg`) before the roll.
- **GST/Tally generation** — `GSTR-*` viewers + `FrmUploadProcess` (§7).
- **Log views** — Night Audit Log (`NightAuditLog`), Charges Remove Log (`PayChargeLog`).

## 7. Reports

| Group | Leaves | Viewer |
|---|---|---|
| Reports (12) | Daily Report, Guest Trail, Checkout Analysis, Occupancy Analysis, Market Segment Analysis, Business Source Analysis, Company Analysis, FOCC Report, Food Costing Report, FB Cost Statement, Credit Report, EInvoice Report | `rFomRepView` |
| Log (2) | Night Audit Log, Charges Remove Log | `rFomRepView` |
| GST Reports (6) | GSTR-1, GSTR-2(3), GSTR-2(4A), GSTR-2(4B), Reconciliation (GSTR-2A), Upload Process | `rFomRepView` / `FrmUploadProcess` |
| Tally Reports (1) | Tally POS Report | `rFomRepView` (L477167) |

Captured: GSTR-1 (`C3_S1`), GSTR-2(3)/(4A)/(4B)/Reconciliation (`C2_*` ×4) `[VERIFIED-UI]`.
Builder-only reports (Ageing, Budget, Revenue Analysis, Travel Agent Analysis…) →
`reports/reports.md`.

## 8. Permissions

Menu rows flag `E`/`R`/`N` under `OPT1=19`, filtered by `UserName` (root query `EXTRAS.text`
L8279). Admin `SA` sees 32 rows. Critical operation rows (`Night Audit Process`,
`Reverse Night Audit`) are plain menu rows — **no separate hard permission**; protection is
user menu visibility `[INFERRED]` + the Enviro gate in §3.

## 9. Business Rules

- **Single business date** per site in `Enviro.ncur`; advanced only on full success.
- **Gates before run**: `KOTAtNightAudit` / `POSBillAtNightAudit` from `Enviro` — pending
  KOT/POS work must be cleared (L480407, `NightAuditoR_Click`) `[VERIFIED-VB6]`.
- **All-or-nothing**: phases A–D in one transaction; any error rolls back everything
  including the date roll.
- **Dirty-room rule**: occupied (`RoomOcc.type NOT IN ('C','O')`) + `RoomMast.TYPE='RO'`
  → `roomStat='D'`.
- **Night recount**: `NoDays = DateDiff(d, ChkInDate, DepDate+1)` for extended stays.
- **Imprest reset**: `Enviro.ImprestAmount = 0` each roll.
- **Token auto-reset**: only where `Depart.AutoResetToken='Yes'` (73 depart rows).
- **Audit trail**: every audit writes `NightAuditLog` (`U_AE='A'`, user, `GetDate()`).
  134 rows live = 134 historical rolls `[VERIFIED-SQL]`.
- **Split-bill staging purged** per department with `AutoSplit='Yes'`, `VType='B'+ShortName`.

## 10. VB6 Logic

- `mdlNightAudit` posting routine L228700–228950; `NightAuditLog` insert L228852.
- MDI handlers: `NightAuditLR_Click` (L31), `NightAuditoR_Click` (L57), `NightAuditRR_Click` (L426).
- Entry gate + form: L480406–480425 (§3); control panel `FrmControlPanel` L477075.
- Gate helpers: `Proc_6_37_E618F4`, `Proc_96_46_10187AC`, `Proc_96_45_11033E4`.
- Ledger posting helper: `Proc_6_140_12D68DC`.
- Detail: `logic/vb6_logic.md`.

## 11. SQL Logic

Verbatim statements with line refs: `sql/queries.sql`; interpretation: `sql/sql_notes.md`.
**0 called stored procedures / 0 triggers** — the 3 existing utility SPs (`GetFieldNameAs`, `GetFieldNameAsStr`, `Proc_WebService`) have 0 references in the listing; everything is VB6 inline SQL `[VERIFIED-SQL]`
(`18_Database/foreign_keys.txt` = 0 bytes).

## 12. Tables

Written: `Enviro`(ncur, ImprestAmount), `NightAuditLog`, `RoomMast`(roomStat),
`RoomOcc`(Depdate), `GuestFolio`(nodays, Depdate), `Depart`(token counters),
`POS_SBill`/`SplitSale1`/`SplitSale2`/`SplitStock`/`SplitedSunTran`(delete),
`VOUCHER_PREFIX`(START_SRL_NO), `Ledger`(via posting helper), `ExpSheet`(read → vouchers).
Read: `RevMast`, `RoomOcc`, `GuestFolio`, `GuestProf`, `SubGroup`, `RoomCat`, `GUESTSTAT`.
Counts §1 + `sql/sql_notes.md`.

## 13. Fields

`NightAuditLog(DateChngFrom, DateChngTo, StartNightAudit, EndNightAudit, Site_Code, U_AE,
U_Name, U_EntDt, LogSite_Code)` — the audit's own record (L228852).
`Enviro`: `ncur`, `ImprestAmount`, `KOTAtNightAudit`, `POSBillAtNightAudit`, `LogSite_Code`.
Column dictionaries: `18_Database/columns_dictionary.txt`.

## 14. Workflow

```
Pre-check (menu click)
  └─ Read Enviro.KOTAtNightAudit / POSBillAtNightAudit  → clear pending work if Yes
Charges/Account posting screens (fdPostChrg / fdAcPostChrg) as needed
Night Audit Process
  ├─ A  Revenue + expense vouchers → Ledger (CommitTrans closes phase)
  ├─ B  Room status roll (occupied → Dirty)
  ├─ C  Due-out folio extension + NoDays recount
  ├─ D  Date roll (Enviro.ncur+1) + Imprest reset + NightAuditLog
  │     + Depart token reset + split-bill purge + VOUCHER_PREFIX renumber
  └─ E  error → RollbackTrans → business date unchanged → error MsgBox
Reverse Night Audit (frmReNightAudit) for corrections
Reports (Daily/Analyses/GST/Tally) + Log views
```
Mermaid: `flowcharts/workflow.mmd`. Deep SQL walk: `NIGHT_AUDIT_FLOW.md`.

## 15. Screenshots

7 PNGs in `screenshots/10_Night_Audit/`: menu state (`B032`), GST outputs
(`C2_*` ×4: GSTR-2(3)/(4A)/(4B)/Reconciliation, `C3_S1`: GSTR-1), and
`C4_L1+sub_Night_Audit__Operation__Reverse__*` (Reverse Night Audit menu row).
Manifest + gaps: `screenshots/README.md` `[VERIFIED-UI]`.

## 16. Test Cases

**No runtime execution permitted on production.** Read-only checklist:
`notes/notes.md` §QA (menu reachability, gate query inspection, log row reads,
report viewer opens — never the Process/Reverse buttons).

## 17. Known Issues

| # | Issue | Evidence |
|---|---|---|
| 1 | Night Audit Process branch semantics ambiguous (Exit Sub vs form open) — decompiler loop targets unresolved | L480406–480423 `[INFERRED]` |
| 2 | Builder↔runtime drift: 6 builder report rows missing from SA tree; 2 runtime rows absent from builder | menu_tree vs MenuHelp |
| 3 | 13 stray hex-13 rows at top of `menu_tree_raw` (GST/Credit/Payment Receive/Upload) — ordering artifact | L1–L13 |
| 4 | `Payment Receive Entry (POS)` declared under GST Reports in builder (L12) but is a POS screen (08) | dispatch RsPaymentReceice L479433 |
| 5 | Split-bill purge uses `Delete From` without NoLock/backup — staging loss on partial failure is by-rollback only | `[VERIFIED-VB6]` |
| 6 | `GuestStat` join in room-roll query reads a 0-row table (harmless but dead join) | `[VERIFIED-SQL]` |
| 7 | No stored procedures → audit logic unversioned in DB, only in binary | `[VERIFIED-SQL]` |

## 18. Migration Notes

- Port as a **single orchestrating transaction** with explicit phase commits matching A→D;
  failure must leave `ncur` untouched (property-test this).
- Keep the KOT/POS gate as a hard precondition with a clear modern message (not the old MsgBox).
- `NightAuditLog` is the recovery/reverse index — preserve `DateChngFrom/To` contract for
  the Reverse feature.
- Split-bill purge + `VOUCHER_PREFIX` renumber must run under row locks (write path, not read).
- Reverse Night Audit needs a spec pass of its own before porting (currently `[INFERRED]`).
- GST/Tally groups should move to a dedicated Tax module in the modern IA (they are
  report-only here, sitting under NA for historical reasons).
