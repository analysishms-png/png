# 13_Messaging — SQL Notes

Companion to `queries.sql`. All statements are **read-only analysis**; the only DML in the
module (`DELETE FROM GuestMessage`, L87786) is kept commented out.

## Table census (spec §11 evidence)

| Table | Rows | Role | Evidence |
|---|---|---|---|
| `DBSendSMS` | **18810** | outbound SMS queue, `SENDTF` = sent flag | `[VERIFIED-SQL]` `tables_rowcounts.txt` |
| `EmailSMSForward` | **18** | e-mail/SMS forward rules or log | `[VERIFIED-SQL]` |
| `SMSEnviro` | **1** | SMS environment/config (gateway, sender id) | `[VERIFIED-SQL]` — shared with hex 18 |
| `GuestMessage` | **0** | in-house guest message book (FO-owned) | `[VERIFIED-SQL]` |
| `messaging` | **0** | candidate backing table for Inbox/Outbox | `[VERIFIED-SQL]` `[INFERRED]` |

No FKs anywhere in the DB (`18_Database/foreign_keys.txt` = 0 bytes) — `DBSendSMS` has no
referential link to guest/bill tables. `[VERIFIED-SQL]`

## Key columns (from decompiled statements only)

**`DBSendSMS`** — `SNo`, `DocId`, `VNo`, `VType`, `MsgType`, `SENDTF`
`[VERIFIED-VB6]` (L7832, L626051, L626092, L626947, L629716)

**`GuestMessage`** — `DocID`, `VNo`, `RoomNo`, `Caller`, plus a truncated `GM.T…`
column `[VERIFIED-VB6]` (L87786, L87877). Remaining columns `[UNKNOWN]`.

## Findings

1. **Queue never drained.** 18810 rows sit with `SENDTF <> 'TRUE'` semantics; D1/D3 would
   confirm the exact split. `[INFERRED]` no service updated `SENDTF` after some date.
2. **Two implementations of the same numbering rule** (L626947 with `NoLock`,
   L629716 without) → `[INFERRED]` two code paths (different forms) can mint the same
   `VNo`.
3. **`Max+1` without locking** is a duplicate-number risk; `[INFERRED]` no transaction
   wraps it (no `BeginTrans` seen in the surrounding lines).
4. **`GuestMessage` delete-then-insert** (L87786 → re-insert) = no edit history.
5. **`messaging` (0 rows)** — if Inbox reads it, Inbox is permanently empty.

## Safety

| Check | Status |
|---|---|
| Statements tagged `[VERIFIED-SQL]` / `[INFERRED]` | yes |
| DML present in file | only commented (`DELETE`) |
| Night-Audit blocklist respected | yes — no Post/Settle/Save path touched |
| Credentials in file | none |

## Open questions

- `[UNKNOWN]` full column list of `GuestMessage` (source line truncated at print width).
- `[UNKNOWN]` owner of `EmailSMSForward` — no VB6 reference found by name.
- `[UNKNOWN]` whether `SMSEnviro` (1 row) holds a live gateway URL — value not read here
  (may contain a credential; deliberately not dumped).
