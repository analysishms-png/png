# 10_Night_Audit — SQL Notes

Interpretation of `queries.sql`. Evidence tags per PROMT.txt §25.

## 1. Transaction model

Phases A→D run under **one ADO transaction** with an intermediate `CommitTrans` closing
phase A `[VERIFIED-VB6]`. Consequences:

- Failure in B/C/D rolls back **the date roll and everything after phase A's commit** —
  i.e., revenue vouchers from phase A may already be committed while the date didn't move.
  The error MsgBox warns about "Last date Settlement Or Charge Posting".
  Partial-commit window = phase A only `[INFERRED]` from commit placement (loc `1F6FEAC`).
- Phase D is where the irreversible step sits (`ncur` advanced) — everything after the
  `Update enviro` (log insert, token reset, split purge, serial renumber) must succeed or
  the whole rollback restores `ncur`.

## 2. Why the queries are shaped this way

- **Room roll** walks `RoomMast → RoomOcc → GuestFolio → GuestProf/SubGroup/RoomCat/GUESTSTAT`
  to filter, but the filter only needs `RoomOcc.type` + `RoomMast.Type/Code` — the left
  joins expose per-guest columns that the UPDATE then ignores (it sets `roomStat` by room
  code only). Likely historical: an earlier version posted per-guest status.
  `GUESTSTAT` is 0 rows → dead join `[VERIFIED-SQL]`.
- **Due-out extension** recomputes `NoDays` with `DateDiff(d, ChkInDate, DepDate+1)` —
  inclusive-night convention (checkout day not counted as a night).
- **`VOUCHER_PREFIX` renumber** reads `MAX(VNo)` from `SplitSale1` for split departments —
  re-syncs voucher serials to actual rows after the purge. Runs as UPDATE…SELECT subquery
  (single statement, no explicit locking hints) `[VERIFIED-VB6]`.

## 3. Live data observations `[VERIFIED-SQL]`

| Table | Rows | Meaning |
|---|---|---|
| NightAuditLog | **134** | 134 successful historical audits (or log rows from restores) |
| Enviro | 1 | one site; `ncur` = current business date (value not dumped — sensitive) |
| Ledger | 40818 | accumulated postings incl. audit-posted revenue |
| ExpSheet | 4 | expense sheets — very few (expenses entered elsewhere or purged) |
| Depart | 73 | departments; token counters with `AutoResetToken` flag |
| POS_SBill / SplitSale1 / SplitSale2 / SplitStock / SplitedSunTran | 0 each | staging clean — audit purge works (or split feature unused) |
| Voucher_Prefix | 171 | serial definitions per type/site |
| RevMast | 174 | revenue heads incl. `CASH_AC` |

## 4. Gate logic (KOT / POS)

`Enviro.KOTAtNightAudit` / `POSBillAtNightAudit` are per-site Yes/No switches. The menu
handler reads them before the Process and runs `Proc_96_46_10187AC` (KOT) /
`Proc_96_45_11033E4` (POS) — both return `0` when clear `[VERIFIED-VB6]`.
Business meaning: **the audit refuses to roll the day while unposted restaurant KOTs or
POS bills exist** — otherwise those would land in the wrong business date `[INFERRED]`
(direction inferred from the MsgBox text and helper placement).

## 5. Reverse Night Audit

- Menu arm → `frmReNightAudit` (L480425) `[VERIFIED-VB6]`.
- UPDATE/DELETE statements: **SQL NOT YET IDENTIFIED** — form body not traced.
- Likely keyed on `NightAuditLog.DateChngFrom/DateChngTo` (columns exist for exactly this)
  `[INFERRED]`.
- How to verify: decompile `frmReNightAudit` region in `EXTRAS.text`, or run against a
  **test database only** with the user's explicit approval (never production).

## 6. Spec §11 answers

| Operation | SQL status | Verification path |
|---|---|---|
| Night Audit Process (A–D) | fully recovered `[VERIFIED-VB6]` | decompile above |
| Reverse Night Audit | NOT YET IDENTIFIED | trace `frmReNightAudit` body |
| GST GSTR-* reports | NOT YET IDENTIFIED (inside .rpt) | `17_Reports/` report catalog |
| Tally POS Export | NOT YET IDENTIFIED (inside .rpt / export form) | `rFomRepView` GRepFormName |
| Upload Process | NOT YET IDENTIFIED (FrmUploadProcess body) | decompile / test-DB |
| Log reports | read `NightAuditLog` / `PayChargeLog` | trivial SELECTs |

## 7. Safety statement

Every statement here is documentation recovered from the decompiled binary.
**No Night Audit SQL was executed.** Row counts came from read-only inventory queries
captured in `18_Database/tables_rowcounts.txt`. Production DB was never written to.
