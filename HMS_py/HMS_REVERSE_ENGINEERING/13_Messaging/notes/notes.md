# 13_Messaging — Notes (open questions, dead code, site-specific facts)

## 1. Module identity

| Item | Value | Evidence |
|---|---|---|
| hex | `16` (`&H10`) | `[VERIFIED-VB6]` |
| menu caption | `Messaging` | `menu_tree_raw.txt` L472 |
| menuHelp `OPT1` | 16 | `[VERIFIED-SQL]` |
| screens | `InBox`, `OutBox` | L473, L474 |
| reports | **0** | `[VERIFIED-VB6]` |
| shared dispatcher arms | **0** (own handler `mnuMSG_Click`) | L7875 |

## 2. Three different "message" features live in three different places

| Feature | Module | Evidence |
|---|---|---|
| Internal Inbox / OutBox | **13 Messaging** (hex 16) | `[VERIFIED-VB6]` L472-L474 |
| Guest message book (`GuestMessage`) | **05 Front Office** | `[VERIFIED-VB6]` L87786/L87877 |
| Outbound SMS (`DBSendSMS`, API/settings) | **15 Sales/Marketing = SMS** (hex 18) | `[VERIFIED-VB6]` L498-L503 |

`[INFERRED]` Anyone tracing "messages" by name will land in the wrong module half the time.

## 3. Dead / dormant state at this site

- `GuestMessage` **0 rows**, `messaging` **0 rows** → both read paths return nothing.
- `DBSendSMS` **18810 rows** but the drain predicate (`SENDTF <> 'TRUE'`, L7832) plus no
  `SENDTF`-updating code found = **queue frozen**. `[INFERRED]`
- `EmailSMSForward` 18 rows, owner unknown. `[UNKNOWN]`
- Net: UI exists, data behind Inbox/OutBox is empty. `[INFERRED]`

## 4. File-filing anomaly in the capture set

`C3_P6S1_EXTRAs__SMS__Sstup__SMS_API.png` sits in this folder but shows the **SMS API
setup** form (module 18). See `screenshots/README.md`. Captures are never deleted —
flagged for index correction only.

## 5. Inconsistencies worth recording (spec §14 pattern hunting)

1. **Menu array base differs**: Messaging `mnuMSG_Click` uses `Index = 0/1` (0-based)
   while Members `Proc_1_122_10724C8` uses `arg_C = 0…5` mapped from 1-based menu
   positions. `[VERIFIED-VB6]`
2. **Duplicate numbering code** for `DBSendSMS.VNo`: `NoLock` variant L626947 and
   non-`NoLock` variant L629716. `[VERIFIED-VB6]`
3. **Messaging has no Crystal reports at all** — inconsistent with every other module
   (even EPABX has 1). `[VERIFIED-UI]`

## 6. Open questions (spec §27)

1. `[UNKNOWN]` What sets `DBSendSMS.SENDTF`? No service/UPDATE found in source.
2. `[UNKNOWN]` Inbox data source — `messaging` (0 rows), `GuestMessage` (0 rows), or a
   non-SQL store? The two `New Inbox` references give no SQL.
3. `[UNKNOWN]` Is there an external SMS gateway DLL/COM referenced at runtime (the
   `SMS (API)` caption at `EXTRAS.text` L480769 suggests one)?
4. `[UNKNOWN]` Why 18810 queued rows were never cleared — did the gateway stop working,
   or was the feature disabled by `SMSEnviro` (1 row) configuration?
