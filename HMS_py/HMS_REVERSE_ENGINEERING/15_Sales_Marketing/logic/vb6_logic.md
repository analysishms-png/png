# 15_Sales_Marketing — VB6 Logic

Evidence: `EXTRAS.text`, `menu_tree_raw.txt`, `MenuHelp_SA_tree.txt`,
`tables_rowcounts.txt`. Tags `[VERIFIED-VB6]` `[VERIFIED-SQL]` `[INFERRED]`.

## 1. Footprint — smallest non-EPABX module

| Metric | Value | Evidence |
|---|---|---|
| builder menu rows (hex 18) | **6** (1 header + 2 groups + 3 screens) | `[VERIFIED-VB6]` L498-L503 |
| builder report rows | **0** | `[VERIFIED-VB6]` |
| builder caption | **`SMS`** (not "Sales & Marketing") | `[VERIFIED-VB6]` L498 |
| strip tab string | **`Sale && Marketing`** | `[VERIFIED-UI]` `Analysis.ini` key 9 |
| runtime module id (SA) | **`OPT1 = 27`**, root **`EXTRAs`** | `[VERIFIED-SQL]` |
| screens | 3 (all SMS) | `[VERIFIED-VB6]` `[VERIFIED-SQL]` |
| backing tables | `DBSendSMS` **18810**, `SMSEnviro` **1** | `[VERIFIED-SQL]` |

## 2. Three names for one module

| Surface | Name | Evidence |
|---|---|---|
| Builder (`menu_tree_raw`) | `SMS` (hex `18`) | `[VERIFIED-VB6]` |
| Strip tab (`Analysis.ini` key 9) | `Sale && Marketing` | `[VERIFIED-UI]` |
| Runtime menu (`MenuHelp`, SA) | `EXTRAs` → `SMS` (OPT1 27) | `[VERIFIED-SQL]` |
| Documentation folder | `15_Sales_Marketing` | — |
| INI key-9 module count | 15th name in the `#` list | `[VERIFIED-UI]` |

`[INFERRED]` a modernization/rebrand happened: the SMS feature was promoted into a module,
renamed at least twice, and the tab label retained the old "Sale & Marketing" brand.

## 3. Dispatcher arms physically adjacent (code proximity ≠ module membership)

Between the Members block and the Mall block the shared caption-dispatcher contains:

```
L480643 SMS Center Settings      -> MemVar_1F81464   (SMS - hex 18)
L480648 SMS Environment Settings -> MemVar_1F8143C   (SMS - hex 18)
L480653 Multiple SMS Type        -> MemVar_1F81450   (SMS - hex 18)
L480741 "Company Profile"        -> salmarCompProfile L480742   <-- ORPHAN
L480747 "Happy Hours"            -> pHappyHours       L480748   <-- Main Setup POS
L480753 "Happy Hours [ Free Items ]" -> NewHappyHours L480754   <-- Main Setup POS
L480758 "Combo Pack"             -> frmComboMast      L480759   <-- Main Setup POS
L480763 "Guest LookUp"           -> FrmBdayLookup     L480764   <-- Main Setup Utility
L480769 "SMS (API)"              -> MemVar_1F81464    (SMS - runtime caption)
L480774 "SMS (Scheduled)"        -> MemVar_1F8143C    (SMS - runtime caption)
L480779 "SMS (Conditional)"      -> MemVar_1F81450    (SMS - runtime caption)
```

`[VERIFIED-VB6]` Ownership of arms L480741-L480768:

| Caption | Owner menu | Evidence |
|---|---|---|
| `Happy Hours`, `Happy Hours [ Fee Items ]`, `Combo Pack` | Main Setup → Point of Sale Setup (`menu_tree_raw` L88-L90) | `[VERIFIED-VB6]` |
| `Guest LookUp` | Main Setup → Utility (`MenuHelp_SA_tree.txt` L110: `Guest LookUp\|12\|20\|27\|0\|E`) | `[VERIFIED-SQL]` |
| **`Company Profile`** | **no menu row in either surface** | `[VERIFIED-VB6]` `[VERIFIED-SQL]` |

**`salmarCompProfile` (L480742) is an orphan dispatch arm** — a Sales & Marketing remnant
whose menu entry no longer exists. The form exists but is unreachable. `[INFERRED]`

`[VERIFIED-VB6]` note: `Happy Hours [ Fee Items ]` (menu) vs
`Happy Hours [ Free Items ]` (dispatch, L480753) — **Fee/Fee vs Free typo**; the dispatch
chain tests `Not (… = "Happy Hours [ Fee Items ]")` at L480752 then `… = "Happy Hours [ Free Items ]"`
at L480753 — one of the two conditions can never match its menu caption.

## 4. Menu handlers

```vb
SMSGEN_Click        L1331  (General Setup group: Index 1 -> 1F81464, Index 2 -> 1F8143C)
SMSSEND_Click       L1359  (Send SMS group:      Index 1 -> 1F81450)
EXTSMSSETUP_Click   L2952  (external setup menu: Index 1 -> 1F81464)
EXTSMSOPR_Click     L2924  (external ops menu:   Index 1 -> 1F8143C, Index 2 -> 1F81450)
```

`[VERIFIED-VB6]` All four handlers resolve to the same three `MemVar_*` form slots — the
module has exactly **3 distinct screens** regardless of entry point.

## 5. SQL owned by this module (queue + numbering)

| Line | Statement | Purpose |
|---|---|---|
| **L7832** | `Select * from DBSENDSMS Where ISNULL(SENDTF,'')<>'TRUE'` | dequeue pending SMS `[VERIFIED-VB6]` |
| **L626051** | `Select IsNull(Max(SNo),0)+1 From DBSendSMS With (NoLock) Where DocId='…` | next serial in document `[VERIFIED-VB6]` |
| **L626092** | `Select MsgType from DBSENDSMS With (NoLock) Where ISNULL(SENDTF,'')<>'TRUE' And DocId='` | pending type per doc `[VERIFIED-VB6]` |
| **L626947** | `Select IsNull(Max(VNo),0)+1 AS MyCode From DBSendSMS With (NoLock) Where VType=` | next voucher no. `[VERIFIED-VB6]` |
| **L629716** | `Select IsNull(Max(VNo),0)+1 AS MyCode From DBSendSMS Where VType=` | same rule, no `NoLock` `[VERIFIED-VB6]` |

`[VERIFIED-SQL]` `DBSendSMS` = 18810 rows, `SMSEnviro` = 1 row (the gateway config).

**Two implementations of `Max(VNo)+1`** (L626947 with `NoLock`, L629716 without) —
duplicate-number risk under concurrency; `[INFERRED]` no transaction wraps either.

`[INFERRED]` `SMSEnviro` (1 row) is the environment/gateway config; its value was
deliberately not dumped (may contain a gateway credential or API key).

## 6. Reports

**None.** 0 `type=1` rows in hex 18; no `Sms*.rpt`/`SMS*.rpt` among the 371 on-disk
reports; no `REPORTS_TXT` extract. `[VERIFIED-VB6]` `[VERIFIED-UI]`

The `rFomRepView` arm at L480820 area belongs to Mall; `FOMTaxWiseChargeDetail` at L480737
belongs to Front Office. Neither is this module's.

## 7. Dead / dormant state

| Object | State | Evidence |
|---|---|---|
| `salmarCompProfile` orphan arm | unreachable (no menu row) | `[INFERRED]` |
| `Company Profile` caption | absent from both menus | `[VERIFIED-VB6]` `[VERIFIED-SQL]` |
| `Happy Hours [ Fee Items ]` vs `[ Free Items ]` | caption mismatch = one branch dead | `[VERIFIED-VB6]` |
| `DBSendSMS` queue | 18810 rows, never drained | `[VERIFIED-SQL]` `[INFERRED]` |
| `SMSEnviro` | 1 row (config exists) | `[VERIFIED-SQL]` |
| builder module id `18` (=OPT1 24) | **0 runtime rows** — module reachable only via OPT1 27 | `[VERIFIED-SQL]` |

## 8. Open questions

1. `[UNKNOWN]` Exact form behind each `MemVar_*` (mapping is `[INFERRED]` from captions).
2. `[UNKNOWN]` What sets `DBSendSMS.SENDTF` — no UPDATE found in decompiled source.
3. `[UNKNOWN]` Is `salmarCompProfile` reachable by shortcut/direct launch? (Not via menu.)
4. `[UNKNOWN]` Why module id moved from 18/24 to 27 — version history?
