# 15_Sales_Marketing — SQL Notes

Companion to `queries.sql`. Source statements are `[VERIFIED-SQL]`; helper queries are
documentation aids. No DML. No credentials.

## 1. Table census

| Table | Rows | Role | Evidence |
|---|---|---|---|
| `DBSendSMS` | **18810** | outbound SMS queue | `[VERIFIED-SQL]` |
| `SMSEnviro` | **1** | gateway/environment config | `[VERIFIED-SQL]` |
| `EmailSMSForward` | 18 | forward rules/log (shared w/ Messaging) | `[VERIFIED-SQL]` |

## 2. Columns known from decompiled SQL

**`DBSendSMS`** — `SNo`, `DocId`, `VNo`, `VType`, `MsgType`, `SENDTF`
`[VERIFIED-VB6]` (L7832, L626051, L626092, L626947, L629716)

`SENDTF` semantics: compared as `ISNULL(SENDTF,'')<>'TRUE'` → text flag, `'TRUE'` = sent,
NULL/other = pending. `[VERIFIED-VB6]`

**`SMSEnviro`** — columns **not observed** in decompiled SQL (the module reads the row via
form-level binding). `[UNKNOWN]` value deliberately not dumped: likely contains gateway
URL/API key → treat as secret material per spec §26.

## 3. Findings

1. **Queue is frozen:** 18810 rows pending, no `UPDATE … SENDTF` found anywhere in the
   decompiled source → `[INFERRED]` no drain process ran, or it lives outside the VB6 app
   (service/COM).
2. **Duplicate-number rule implemented twice** (L626947 `NoLock` vs L629716 no-`NoLock`)
   → `[INFERRED]` two forms can mint the same `VNo` if used concurrently.
3. **`MAX(VNo)+1` without `UPDLOCK`/transaction** → classic duplicate-voucher pattern.
   `V4` in `queries.sql` detects existing collisions.
4. **No FKs** (`foreign_keys.txt` = 0 bytes): `DBSendSMS` is free-standing — no link to
   guest/bill tables. `[VERIFIED-SQL]`
5. **Module id divergence:** builder hex `18` = decimal **24**, but runtime rows exist only
   at **`OPT1=27`** (`EXTRAs`). `V6` proves it. `[VERIFIED-SQL]`

## 4. Safety

| Check | Status |
|---|---|
| DML present | **no** (queue UPDATE deliberately omitted) |
| Actions that would send SMS | none — no `EXEC`/`usp`/gateway call in file |
| Night-Audit blocklist | respected |
| Credentials | none; `SMSEnviro` value not selected |
| Tags | all statements marked |

## 5. Open questions

- `[UNKNOWN]` Full `SMSEnviro` column list — needs a `SELECT TOP 1` with masking.
- `[UNKNOWN]` `DBSendSMS` date column name (`Vdate` in `V3` is `[INFERRED]` from HMS
  convention — confirm against `columns_dictionary.txt` before running).
- `[UNKNOWN]` Which of the 3 screens writes the queue (all three dispatch to the same
  `MemVar_*` slots; writing form not identified in source).
