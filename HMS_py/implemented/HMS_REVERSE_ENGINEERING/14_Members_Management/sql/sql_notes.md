# 14_Members_Management — SQL Notes

Companion to `queries.sql`. All DML from the decompiled source is present but **commented
out**; only SELECTs are runnable. No credentials in this file.

## 1. Table census (spec §11)

| Table | Rows | Role | Evidence |
|---|---|---|---|
| `MemberFamily` | **37** | member registry (only populated member table) | `[VERIFIED-SQL]` |
| `MemVisitEntry` | 0 | member visit/entry log | `[VERIFIED-SQL]` |
| `MemBill` | 0 | member bill header | `[VERIFIED-SQL]` |
| `MemBill1` | 0 | bill facility lines | `[VERIFIED-SQL]` |
| `MemBill2` | 0 | bill tax lines | `[VERIFIED-SQL]` |
| `MemFacilityBilling` | 0 | facility billing | `[VERIFIED-SQL]` |
| `MemFacilityMast` | 0 | facility master | `[VERIFIED-SQL]` |
| `MemCatFacility` | 0 | category ↔ facility map | `[VERIFIED-SQL]` |

Net state: **members exist (37), nothing else does.** `[INFERRED]` the module was used for
registration only, never for billing/visits, on this site.

## 2. Column families (from decompiled inserts)

**Audit trail columns** (on every insert): `U_AE`, `U_Name`, `U_EntDt`, `Site_Code`,
optionally `LogSite_Code` — `[VERIFIED-VB6]` L859311/L861812/L861855/L861897.

**`MemBill` (header):** `DocId, vDate, Vno, Vprefix, VType, MemCode, MemCatCode, CardNo,
MthYear, NetAmount` — `[VERIFIED-VB6]` L861812.

**`MemBill1` (line):** `DocId, Sno, Vno, vDate, VType, Type, FacilityCode, TaxStru, AcCode,
BaseAmt, TaxAmt, OutletCode, AcPosting` — `[VERIFIED-VB6]` L861855.
`AcCode` + `AcPosting` ⇒ lines can post to the general ledger. `[INFERRED]`

**`MemBill2` (tax line):** `DocId, Sno, Sno1, Vno, vDate, VType, FacilityCode, TaxCode,
BaseAmt, TaxPer, TaxAmt` — `[VERIFIED-VB6]` L861897.
Two serial columns (`Sno`, `Sno1`) ⇒ tax lines nest under facility lines. `[INFERRED]`

**`MemVisitEntry`:** `MemCode, INDate, INTime, CardRegId` + audit — `[VERIFIED-VB6]` L859311.

## 3. Key relationships (logical — **not** enforced)

```
MemberFamily (37 rows)   <not FK-linked>   MemBill.MemCode        [VERIFIED-SQL]
MemBill      (0)         <not FK-linked>   MemBill1.DocId/Sno     [VERIFIED-SQL]
MemBill1     (0)         <not FK-linked>   MemBill2.DocId/Sno     [VERIFIED-SQL]
```

`18_Database/foreign_keys.txt` is **0 bytes** — zero FKs database-wide. Every join above is
application-enforced only. `[VERIFIED-SQL]`

## 4. Findings

1. **No referential integrity on billing.** `MemBill1/MemBill2` can exist without a
   `MemBill` header; `MemBill.MemCode` can point at a non-existent member. `V7` in
   `queries.sql` is the only orphan detector. `[VERIFIED-SQL]` `[INFERRED]`
2. **Ledger posting path exists** (`AcCode`, `AcPosting`) but with 0 rows it was never
   exercised. `[VERIFIED-SQL]` `[INFERRED]`
3. **Runtime menu vs data mismatch:** SA's menu shows no Members operations
   (`OPT1=23` = 1 orphan row) — consistent with 0 rows in every transaction table.
   `[VERIFIED-SQL]`
4. **Only `MemberFamily` has data** (37) — the single evidence that the module ever ran.
   `[VERIFIED-SQL]`

## 5. Safety

| Check | Status |
|---|---|
| DML in file | present but fully commented |
| Night-Audit blocklist | respected — no Post/Settle/Save path in file |
| Credentials | none |
| Statements tagged | yes |

## 6. Open questions

- `[UNKNOWN]` Which screen writes `MemberFamily`? No `Insert Into MemberFamily` was found
  in the searched decompiled ranges.
- `[UNKNOWN]` Column list of `MemberFamily` (never inserted/selected in found code) —
  needs a `SELECT TOP` at runtime to document.
- `[UNKNOWN]` Whether `MemBill` `VType`/`Vprefix` numbering shares a counter with POS
  bills (`VType` appears in both modules' numbering SQL).
