# 15_Sales_Marketing — Screens

Builder module hex `18` · builder caption **`SMS`** · `menu_tree_raw.txt` L498-L503 (**6 rows**).
Strip tab string in `Analysis.ini` key `9=` is **`Sale && Marketing`** (different name).
`[VERIFIED-VB6]` `[VERIFIED-UI]`

## 1. Builder menu (design-time) — 6 rows

| # | Caption | group | type | menu line | Dispatch caption line | Form variable | Evidence |
|---|---|---|---|---|---|---|---|
| — | `SMS` (module header) | — | 4 | L498 | — | — | `[VERIFIED-VB6]` |
| — | `General Setup` (group) | — | 3 | L499 | — | — | `[VERIFIED-VB6]` |
| 1 | SMS Center Settings | General Setup | 0 | L500 | **L480643** | `MemVar_1F81464` (L480644) | `[VERIFIED-VB6]` |
| 2 | SMS Environment Settings | General Setup | 0 | L501 | **L480648** | `MemVar_1F8143C` (L480649) | `[VERIFIED-VB6]` |
| — | `Send SMS` (group) | — | 3 | L502 | — | — | `[VERIFIED-VB6]` |
| 3 | Multiple SMS Type | Send SMS | 0 | L503 | **L480653** | `MemVar_1F81450` (L480654) | `[VERIFIED-VB6]` |

**0 report rows** (`type=1`) in this module. `[VERIFIED-VB6]`

## 2. Runtime menu (user SA) — 7 rows under a *different* module id

`MenuHelp_SA_tree.txt` (440 rows, `[VERIFIED-SQL]`) shows this content at **`OPT1 = 27`**,
root caption **`EXTRAs`**:

| Line | Caption | OPT1\|OPT2\|OPT3 | Flag | Meaning |
|---|---|---|---|---|
| 338 | `EXTRAs` | 27\|0\|0 | N | module root |
| 339 | `SMS` | 27\|12\|0 | N | group |
| 340 | `Sstup` | 27\|12\|11 | N | sub-group (**typo**: "Sstup") |
| 341 | `SMS (API)` | 27\|12\|11\|11 | E | screen |
| 342 | `Operations` | 27\|12\|12 | N | sub-group |
| 343 | `SMS (Scheduled)` | 27\|12\|12\|11 | E | screen |
| 344 | `SMS (Conditional)` | 27\|12\|12\|12 | E | screen |

**`OPT1 = 24` (the decimal value of builder hex `18`) has 0 rows** — the builder module id
is not what the runtime menu uses. `[VERIFIED-SQL]`

## 3. The alias map (builder caption ↔ runtime caption ↔ form)

Both caption sets dispatch to the **same three module-level form variables**:

| Builder caption | line | Runtime caption | line | Form variable | line |
|---|---|---|---|---|---|
| SMS Center Settings | L480643 | **SMS (API)** | L480769 | `MemVar_1F81464` | L480644 / L480770 |
| SMS Environment Settings | L480648 | **SMS (Scheduled)** | L480774 | `MemVar_1F8143C` | L480649 / L480775 |
| Multiple SMS Type | L480653 | **SMS (Conditional)** | L480779 | `MemVar_1F81450` | L480654 / L480780 |

`[VERIFIED-VB6]` — same screen, two names, depending on which menu surface is read.

The same three variables are used by the group menu handlers:

```vb
SMSGEN_Click   L1331:  Index=1 -> MemVar_1F81464 (L1340)   Index=2 -> MemVar_1F8143C (L1348)
SMSSEND_Click  L1359:  Index=1 -> MemVar_1F81450 (L1368)
EXTSMSSETUP_Click L2952: Index=1 -> MemVar_1F81464 (L2961)
EXTSMSOPR_Click    L2924: Index=1 -> MemVar_1F8143C (L2933)  Index=2 -> MemVar_1F81450 (L2941)
```

`[VERIFIED-VB6]` `EXTSMS*` handlers belong to a **different** (external/front-office) menu
array with the same three screens.

## 4. Concrete form objects

| Form | Definition line | Likely variable | Mapping | Evidence |
|---|---|---|---|---|
| `FrmSmsCenterSettings` | **L622280** | `MemVar_1F81464` | `[INFERRED]` (name matches "SMS Center Settings"/"SMS (API)") | `[VERIFIED-VB6]` |
| `FrmSMSEnviro` | **L623636** | `MemVar_1F8143C` | `[INFERRED]` (enviro = environment = "Scheduled") | `[VERIFIED-VB6]` |
| `FrmSMSMultiType` | **L629140** | `MemVar_1F81450` | `[INFERRED]` (multi type = "Conditional") | `[VERIFIED-VB6]` |
| `SMSModule` | **L625970** | — | module container/MDI child `[INFERRED]` | `[VERIFIED-VB6]` |

Variable→form assignment is `[INFERRED]`: decompiled output stores these forms in
`MemVar_*` module variables without an inline `New <Form>` at the dispatch site.

## 5. Screenshot evidence of the runtime path

`screenshots/13_Messaging/C3_P6S1_EXTRAs__SMS__Sstup__SMS_API.png` (831044 B) — filename
encodes the real runtime path **`EXTRAs > SMS > Sstup > SMS (API)`**, confirming §2 and the
"Sstup" typo at runtime. `[VERIFIED-UI]` (file is misfiled under Messaging; see its README).

Also `screenshots/15_Sales_Marketing/14-Sales_MenuTab.png` (499187 B) = the
**`Sale && Marketing`** strip tab. `[VERIFIED-UI]`

## 6. Verification checklist for QA (spec §21)

- [ ] As SA, confirm `EXTRAs` tab → SMS → Sstup → **SMS (API)** opens the same window as
      builder caption "SMS Center Settings"
- [ ] Confirm **`Sstup`** typo renders at runtime (capture it)
- [ ] Confirm builder module `18` has **no reports** (0 `type=1` rows)
- [ ] Open all 3 screens read-only; **no Send** action (would hit `DBSendSMS`, 18810 rows)
- [ ] Verify `EXTSMS*` menus (FO-external) open the same three forms
