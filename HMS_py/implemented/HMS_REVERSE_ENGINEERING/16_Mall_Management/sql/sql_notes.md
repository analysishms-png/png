# 16_Mall_Management — SQL Notes

Companion to `queries.sql`. DML from the decompiled source is quoted but **commented**;
only SELECTs are runnable. No credentials present.

## 1. Table census (spec §11)

| Table | Rows | Role | Evidence |
|---|---|---|---|
| `FacilityMast` | **0** | facility/charge master (Mall's core master) | `[VERIFIED-SQL]` |
| `FacilityBill` | **0** | bill header | `[VERIFIED-SQL]` |
| `FacilityBill1` | **0** | bill lines (carries `LocationCode`) | `[VERIFIED-SQL]` |
| `FacilityBill2` | **0** | bill detail/tax | `[VERIFIED-SQL]` |
| `LocationFacility` | **0** | location ↔ facility mapping | `[VERIFIED-SQL]` |
| `SunTranFacility` | **0** | revenue/sundry transactions | `[VERIFIED-SQL]` |
| `RWParameter` | **0** | (owner unidentified) `[UNKNOWN]` | `[VERIFIED-SQL]` |

**Every Mall table is empty** → module never used on this site. `[VERIFIED-SQL]`
Combined with `MenuHelp OPT1=25 → 0 rows`: neither data nor menu access exists.
`[VERIFIED-SQL]` `[INFERRED]`

## 2. Column families (from decompiled SQL)

**`FacilityMast`:** `Code, Name, ShortName, SACCode, ChargeType, ChargeUnit, UnitRate,
AcCode, TaxStru, RoundOff, ROffType, MeterRea…` (truncated at source line width) +
`SITE_CODE`, `LOGSITE_CODE` — `[VERIFIED-VB6]` L932924, L932289, L932614.
`SACCode` (Services Accounting Code) + `TaxStru` ⇒ GST-ready charge definitions.
`MeterRea…` ⇒ metered facilities (ties to `FrmMeterReading`). `[INFERRED]`

**`FacilityBill`:** `DocId, PartyCode, VDate` — `[VERIFIED-VB6]` L670698
**`FacilityBill1`:** `VType, VNo, ForPeriod, LocationCode` — `[VERIFIED-VB6]` L670698, L10924
**`SunTranFacility`:** `DocId, SunCode, Amount, SValue, TaxPer, BaseValue, VDate`
— `[VERIFIED-VB6]` L670777-L670790, L723673
**`LocationFacility`:** `LcCode, AppDate, SITE_CODE, LOGSITE_CODE` — `[VERIFIED-VB6]` L860829

## 3. Key relationships (logical — **not** enforced)

```
FacilityMast.Code   <not FK>  FacilityBill1.LocationCode     [VERIFIED-SQL]
FacilityBill.DocId  <not FK>  FacilityBill1.DocId            [VERIFIED-SQL]
SunTranFacility.SunCode <not FK> Revmast.Sundry              [VERIFIED-VB6] L670777
LocationFacility.LcCode -> composite SearchCode (padded 6 + '**' + AppDate)
```

Zero FKs DB-wide (`foreign_keys.txt` = 0 bytes). The only integrity write found is the
**post-hoc** `UPDATE FacilityBill1 SET LocationCode = …` (L10924) — reactive, not
constraint-based. `[VERIFIED-SQL]` `[VERIFIED-VB6]`

## 4. Findings

1. **Two next-code formulas for `FacilityMast`** (L932867 `MID(Code,3)` vs L932876
   `CAST(SUBSTRING(Code,3,4) AS INT)`) → `[INFERRED]` they disagree if `Code` length
   differs; `V4` documents actual format when data exists.
2. **Delete path on a master** (`Delete From FacilityMast`, L932516) with no FK
   protection → deleting a facility referenced by `FacilityBill1.LocationCode` would
   orphan bills. `V5` detects orphans. `[VERIFIED-VB6]` `[VERIFIED-SQL]`
3. **Tax logic uses `RevMast`/`Revmast`** with `Nature IN ('Luxury Tax','Sale Tax',
   'Service Tax')` — `[VERIFIED-VB6]` L723871. (Old tax regime names; GST migration
   context in `24_GST_EInvoice/`.)
4. **Module invisible + all tables empty** — consistent, clean "never deployed" state.
   `[VERIFIED-SQL]`
5. **`SearchCode` composite key** (`LcCode` padded to 6 + `**` + `AppDate` in `dd-mm-yyyy`)
   — `[VERIFIED-VB6]` L860829; two near-identical copies at L860829 and L900649 (duplicate
   code path). `[VERIFIED-VB6]`

## 5. Safety

| Check | Status |
|---|---|
| DML in file | present but fully commented (INSERT/DELETE/UPDATE) |
| Night-Audit blocklist | respected — no Post/Settle/Save path active |
| Credentials | none |
| Tags | all statements marked |

## 6. Open questions

- `[UNKNOWN]` Full column list of `FacilityBill2` (joined in reports, never selected).
- `[UNKNOWN]` Owner of `RWParameter` (0 rows, no reference in found Mall SQL).
- `[UNKNOWN]` Whether any `UserName` has `OPT1=25` rows (`V3` answers read-only).
- `[UNKNOWN]` Which location join the register query at L670698 uses (`… L.name …`
  alias — join line truncated in source).
