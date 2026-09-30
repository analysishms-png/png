# 16_Mall_Management — Notes (open questions, dead code, site-specific facts)

## 1. Headline: delivered but never switched on

| Evidence | Value | Tag |
|---|---|---|
| Builder menu rows (hex 19) | 11 | `[VERIFIED-VB6]` |
| Strip tab in `Analysis.ini` key 9 | present (15th name) | `[VERIFIED-UI]` |
| `MenuHelp` rows for SA (`OPT1=25`) | **0** | `[VERIFIED-SQL]` |
| All 7 Mall tables | **0 rows** | `[VERIFIED-SQL]` |
| On-disk `.rpt` under Mall names | 0 | `[VERIFIED-UI]` |

`[INFERRED]` consistent "not deployed at this site" state: no menu, no data, no report file.

## 2. Defects and risks found in code

| # | Issue | Line(s) | Severity | Tag |
|---|---|---|---|---|
| 1 | **Caption mismatch**: menu row `Operations` vs dispatch `Location-Master` (hyphen) vs form `Location Master` (no hyphen) | menu L506 / L476955 / L480784 / L477752 | high — row 1 may open nothing | `[VERIFIED-VB6]` |
| 2 | **Two next-code formulas** for one table: `MAX(VAL(MID(Code,3)))+1` vs `MAX(CAST(SUBSTRING(Code,3,4) AS INT)))+1` | L932867 / L932876 | medium — divergent if code width varies | `[VERIFIED-VB6]` |
| 3 | **Delete on a master with no FK guard** | L932516 | medium — can orphan `FacilityBill1.LocationCode` | `[VERIFIED-VB6]` `[VERIFIED-SQL]` |
| 4 | **Reactive integrity**: `LocationCode` fixed up *after* insert instead of at insert | L10924 | low — design smell | `[VERIFIED-VB6]` |
| 5 | **Duplicate search-key code** (`SearchCode` construction) | L860829 + L900649 | low — copy-paste maintenance | `[VERIFIED-VB6]` |

## 3. Site-specific data state

All tables empty (`FacilityMast`, `FacilityBill*`, `LocationFacility`, `SunTranFacility`).
`[VERIFIED-SQL]` `RWParameter` (0 rows) has **no identified owner** `[UNKNOWN]`.

## 4. Naming and cross-module links

- Builder hex `19` = **25 decimal** = `MenuHelp.OPT1` (expected) — but 0 rows exist.
- Report host `rFomRepView` is **shared with Front Office** (`GRepFormName`
  `FOMTaxWiseChargeDetail` at L480737) — `[VERIFIED-VB6]`; a Mall report runs inside an
  FO-named viewer.
- Revenue lookups join **`RevMast`/`Revmast`** (shared revenue master) — Mall is not
  self-contained. `[VERIFIED-VB6]` L670777
- Tax nature values `'Luxury Tax','Sale Tax','Service Tax'` are **pre-GST** names;
  `24_GST_EInvoice/` covers the GST side. `[VERIFIED-VB6]` L723871

## 5. Why this module's dispatcher is worth noting

Unlike Members (caption chain + second index dispatcher) and SMS (`MemVar_*` slots), Mall's
block uses direct `New <Form>` for all 8 arms — the simplest, most readable pattern in
`EXTRAS.text`. Useful as the reference shape when rebuilding. `[VERIFIED-VB6]`

## 6. Open questions (spec §27)

1. `[UNKNOWN]` Which caption would the runtime menu supply for row 1 if the module were
   enabled (`Operations` or `Location-Master`)?
2. `[UNKNOWN]` Full column list of `FacilityBill2` (joined, never selected).
3. `[UNKNOWN]` Owner of `RWParameter`.
4. `[UNKNOWN]` Does any `UserName` profile have `OPT1=25` rows? (`V3` in `queries.sql`.)
5. `[UNKNOWN]` Which `.rpt` file backs `Facility Bill Register`?
6. `[UNKNOWN]` Is `MeterRea…` column in `FacilityMast` the link to `FrmMeterReading`, and
   does it drive recurring charges? (Column truncated in source.)
