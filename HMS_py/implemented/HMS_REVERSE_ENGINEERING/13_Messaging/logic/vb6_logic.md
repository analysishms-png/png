# 13_Messaging — VB6 Logic

Evidence source: `EXTRAS.text` (decompiled VB6), `19_VB6_Logic/menu_tree_raw.txt`,
`18_Database/tables_rowcounts.txt`. Tags: `[VERIFIED-VB6]` `[VERIFIED-SQL]` `[INFERRED]`.

## 1. Module footprint

| Metric | Value | Evidence |
|---|---|---|
| menu rows | **3** (1 header + 2 screens) | `[VERIFIED-VB6]` L472-L474 |
| report rows (`type=1`) | **0** | `[VERIFIED-VB6]` |
| dispatcher arms in shared caption-dispatcher | **0** | `[VERIFIED-VB6]` L480485-L480820 scanned |
| dedicated menu handler | `mnuMSG_Click` `F25AA4` | `[VERIFIED-VB6]` L7875 |
| forms | `Inbox`, `Outbox` | `[VERIFIED-VB6]` L7884, L7892 |
| backing tables with data | `DBSendSMS` 18810 rows, `EmailSMSForward` 18, `SMSEnviro` 1 | `[VERIFIED-SQL]` |
| backing tables empty | `GuestMessage` **0**, `messaging` **0** | `[VERIFIED-SQL]` |

Smallest module after EPABX: 2 screens, 0 reports.

## 2. The SMS queue is the real engine

Messaging's only non-trivial SQL lives in the **SMS send worker**, not in Inbox/Outbox:

| Line | Statement | Purpose |
|---|---|---|
| **L7832** | `Select * from DBSENDSMS Where ISNULL(SENDTF,'')<>'TRUE'` | dequeue pending SMS (`SENDTF` = send-true flag) `[VERIFIED-VB6]` |
| **L626051** | `Select IsNull(Max(SNo),0)+1 From DBSendSMS With (NoLock) Where DocId='…` | next serial no. within a document `[VERIFIED-VB6]` |
| **L626092** | `Select MsgType from DBSENDSMS With (NoLock) Where ISNULL(SENDTF,'')<>'TRUE' And DocId='` | per-document pending message type `[VERIFIED-VB6]` |
| **L626947** | `Select IsNull(Max(VNo),0)+1 AS MyCode From DBSendSMS With (NoLock) Where VType=` | next voucher no. per `VType` `[VERIFIED-VB6]` |
| **L629716** | `Select IsNull(Max(VNo),0)+1 AS MyCode From DBSendSMS Where VType=` | same, **without** `NoLock` (duplicate numbering logic) `[VERIFIED-VB6]` |

`[VERIFIED-SQL]` `DBSendSMS` = **18810 rows**, none consumed (queue never drained on this
site → SMS sending was used historically and then abandoned).

**Race note `[INFERRED]`:** `Max(VNo)+1` without `UPDLOCK`/transaction on a live table is a
classic duplicate-voucher-number pattern; L626947 and L629716 implement the same rule twice,
one with `NoLock` and one without.

## 3. Guest message book (FO-owned)

| Line | Statement | Purpose |
|---|---|---|
| **L87786** | `Delete From GuestMessage Where DocID='…` | delete a guest message before rewrite `[VERIFIED-VB6]` |
| **L87877** | `Select GM.DocID as SearchCode, CAST(GM.VNo AS VARCHAR) As VrNo, GM.RoomNo, GF.Name As GuestName, GF.Company, GM.Caller, GM.T…` | enquiry grid joins `GuestMessage` (GM) to guest folio/guest master (GF) `[VERIFIED-VB6]` |

`[VERIFIED-SQL]` `GuestMessage` = **0 rows** → feature unused at this site; delete+insert
pattern (L87786 then re-insert) means edits are *delete-and-rewrite*, not UPDATE —
`[INFERRED]` no audit trail of message edits.

## 4. `EmailSMSForward` bridge

`[VERIFIED-SQL]` `EmailSMSForward` = **18 rows** — a small table used to forward messages
to e-mail/SMS. No decompiled reference was found by name in the Messaging range;
`[INFERRED]` it is written by the same worker that drains `DBSENDSMS`.

## 5. What Messaging does *not* do

- No SQL writes from `Inbox`/`Outbox` themselves were found — `[INFERRED]` they are
  read-only viewers over `GuestMessage`/`DBSendSMS`.
- No Crystal `.rpt` belongs to hex 16 (menu has 0 report rows; no `Msg*.rpt` in the 371-file
  report set). `[VERIFIED-UI]`
- No stored procedures; DB has 3 procs total, none messaging-related. `[VERIFIED-SQL]`

## 6. Dead / dormant verdict

| Object | State | Evidence |
|---|---|---|
| `Inbox`, `Outbox` | wired, 0 data behind them | `[VERIFIED-VB6]` `[VERIFIED-SQL]` |
| `GuestMessage` | 0 rows, delete+insert only | `[VERIFIED-SQL]` `[VERIFIED-VB6]` |
| `messaging` table | 0 rows | `[VERIFIED-SQL]` |
| `DBSendSMS` | 18810 orphaned rows, `SENDTF` never flipped | `[VERIFIED-SQL]` `[INFERRED]` |
| `EmailSMSForward` | 18 rows, source unknown | `[VERIFIED-SQL]` `[UNKNOWN]` |

**Module is UI-complete but operationally idle at this site.** `[INFERRED]`

## 7. Open questions

1. `[UNKNOWN]` Which process sets `DBSendSMS.SENDTF = 'TRUE'` — a Windows service, the
   client itself, or an external dialer? Not visible in decompiled source.
2. `[UNKNOWN]` Is `Inbox` fed from `GuestMessage` or from a second, non-SQL source (Jet
   file) as EPABX is? Table list shows `messaging` (0 rows) as a candidate.
