# 12_EPABX — VB6 Logic

All line numbers are 1-based into `EXTRAS.text` (995,850 lines).

## 1. Two data stores, not one  `[VERIFIED-VB6]`

EPABX is split across **SQL Server** (rate/call-type masters) and a **Jet/Access MDB**
(call log and wake-up alarms):

```
L10694  var_C8 = "Provider=MSDataShape;Data Provider=Microsoft.Jet.OLEDB.4.0;
        Persist Security Info=False;Data Source=" & MemVar_1F810AC & "\DMEPABX..." 
L10707  MemVar_1F811D0 = Proc_6_37_E618F4(... Fields.Item("ActiveEpabx"), var_C4, ...)
L8179   If Not (var_C4 = Ucase("Epabx")) Then ...
```

- The connection string points at **`DMEPABX.mdb`** (Jet OLEDB 4.0) — a second database
  file next to the EXE. `[VERIFIED-VB6]`
- `ActiveEpabx` flag read at L10707 gates the feature. `[VERIFIED-VB6]`
- Consequently **`EPABX_IN` (81 occurrences in EXTRAS.text) is NOT one of the 277 SQL
  tables** — it is a Jet table. `rg -F EPABX_IN` = 81, but `tables_rowcounts.txt` lists
  only `EPABX_Data`, `TelCallCode`, `TelCallType`, `TelExt`, `GuestWakeup`.
  `[VERIFIED-VB6]` + `[VERIFIED-SQL]`

## 2. Call-type master (TelCallTypeMast)  `[VERIFIED-VB6]`

| line | what |
|---|---|
| L220053 | object declaration |
| L11720 | field registration `TelCallType.Site_Code varchar(&HA)` |
| L31605 | `If Proc_6_107_...(MemVar_1F81044, "TelCallType", "TaxStru", ..., "Tax Structure") = 0` — TaxStru validated against the Tax Structure master |
| L219461 | `SELECT TCC.*, TCT.CallType FROM TelCallCode AS TCC LEFT JOIN TelCallType AS TCT ON TCC.CallTypeCode=TCT.Code ORDER BY TCT.CallType, TCC.STDCode` — the browse query |

`TelCallType.TaxStru` links telecom charges to the accounting tax structure, i.e. call
billing posts to a ledger. `[INFERRED]`

## 3. Call-code master (TelCallCodeMast)  `[VERIFIED-VB6]`

| line | what |
|---|---|
| L219215 | object declaration |
| L219330 | `Delete From TelCallCode Where STDCode='...'` — save is delete-then-insert |
| L219338 | table name carried in `var_12C = "TelCallCode"` |
| L219406 | browse select: `Select TelCallCode.STDCode As SearchCode, CAST(...AS VARCHAR(11)) AS STDCODE, TelCallType.CallType, TelCallCode.description, ...` |

Delete-then-insert with **no transaction** and **0 declared FKs** (see `sql/`).
Same pattern flagged in 07_Inventory (IN-13) and 09_Banquet (F-BANQ-07). `[VERIFIED-SQL]`

## 4. Wake-up / alarm call writer (Jet `EPABX_IN`)  `[VERIFIED-VB6]`

```
L86715  Select iif(IsNull(Max(ID)),1,Max(ID)+1) AS MyCode From EPABX_IN
L86721  Delete from EPABX_IN where v_type='WKALM' AND ROOM_NO='<room>' ...
L86740  Insert into EPABX_IN (ID,V_TYPE,VDATE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,
        ADVANCE,ALARM_HOUR,ALARM_MIN) VALUES (...
L86741  ... ,'WKALM', #date#, '<room>', '<name>', <adv>, 0, '<hh>', ...
```

- `Max(ID)+1` key generation inside the same statement (not a sequence) — **race-prone
  under concurrent users** `[INFERRED]`.
- Date literals use Jet `#...#` delimiters, confirming the target is Access, not SQL
  Server. `[VERIFIED-VB6]`
- `v_type = 'WKALM'` = wake-up alarm; delete-then-insert per room (idempotent replace).

## 5. Check-out link writes  `[VERIFIED-VB6]`

```
L131839  Select iif(IsNull(Max(ID)),1,Max(ID)+1) AS MyCode From EPABX_IN
L131855  insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE)
         VALUES (..,'CHKOT','<room>','<new room>','<guest>',0)
L131915  (second, identical path — duplicated block)
L132210  var_16C = "EPABX Message"
```

On check-out the system records `V_TYPE='CHKOT'` so the PABX knows the extension is free.
Two near-identical blocks (L131855 and L131915) = code duplication `[VERIFIED-VB6]`.

## 6. Report path  `[VERIFIED-VB6]`

`GRepFormName = "EpabxCallRep"` (L16) → `rRepTelPreview` (L15, L478412) →
`rRepTel` (L282557 / L282768) hosts the Crystal viewer.
`rg -F` shows **no `.rpt` named `EpabxCallRep` was verified on disk** → see
`reports/reports.md` for the disk check. `[INFERRED]`

## 7. What is NOT reconstructed

- Body of `TelExtensionMast` beyond its `'Object:` line (L221239): `[UNKNOWN]`.
- The class behind `MemVar_1F81E44` in `mnuTelMast_Click` (L7912): `[UNKNOWN]`.
- Any SQL against `TelExt` (the live extension table): `[UNKNOWN] —
  `rg -F TelExt` beyond the table list returns no statement in EXTRAS.text`.
- Call-rating math (`CALL_RATE`/`CALL_AMT`): `[UNKNOWN] — EPABX_Data columns exist
  (16 cols) but no INSERT/UPDATE on EPABX_Data was found`; the metering may be imported
  from the PABX device file.
