# 14_Members_Management — VB6 Logic

Evidence: `EXTRAS.text` (decompiled VB6), `menu_tree_raw.txt`, `MenuHelp_SA_tree.txt`,
`tables_rowcounts.txt`. Tags `[VERIFIED-VB6]` `[VERIFIED-SQL]` `[INFERRED]`.

## 1. Footprint

| Metric | Value | Evidence |
|---|---|---|
| builder menu rows (hex 17) | **24** (1 stray + 23 in block L475-L497) | `[VERIFIED-VB6]` |
| builder report rows (`type=1`) | **8** | `[VERIFIED-VB6]` L490-L497 |
| caption-dispatch arms | **21** (9 masters + 12 operations) L480484-L480589 | `[VERIFIED-VB6]` |
| report-dispatch arms | **8** L480593-L480638 | `[VERIFIED-VB6]` |
| dedicated index dispatcher | `Proc_1_122_10724C8` L8494-L8556 (6 forms) | `[VERIFIED-VB6]` |
| runtime rows for SA (`OPT1=23`) | **1** (orphan) | `[VERIFIED-SQL]` |
| runtime master rows under Main Setup | **4** (`12\|14`) | `[VERIFIED-SQL]` |

Largest operation module after Main Setup/Front Office/POS by builder rows.

## 2. Caption → form map (the authoritative dispatch table)

Captured from the `Loop Until (var_188 = "<caption>")` chain in the shared dispatcher:

```
L480484 Category Master                -> MemCatMast            L480485
L480489 Member Master                  -> MemCatMast            L480490   <-- same form
L480494 Revenue Master                 -> MemberShipRevenueMast L480495
L480499 Facility Master                -> memFacilityMast       L480501
                                          + FrmFacilityMast     L480504   <-- 2nd form
L480508 Category wise Revenue          -> memCatRevMast         L480509
L480513 Category wise Facility         -> memCategoryFacilities L480514
L480518 Member Age Wise Revenue        -> memAgeRevMast         L480519
L480523 Member Select Category         -> MemSelectCategory     L480524
L480528 Environment Settings           -> MemberEnviro          L480529
L480533 Member Visit Entry             -> MemVisitEntry         L480534
L480538 Member Renewal Entry           -> MemRenewalEntry       L480539
L480543 Member Used Facility Entry     -> MemFacilityEntry      L480544
L480548 Member Facility Billing        -> MemFacilityBilling    L480549
L480553 Member Bill Printing           -> MemBillPrintingModule L480554
L480558 Member Assistant               -> MemAssistant          L480559
L480563 Outstation Member Entry        -> memOutStationEntry    L480564
L480568 Member Category Change Entry   -> memCatChngEntry       L480569
L480573 Payment Receive Entry          -> MemPaymentReceive     L480574
L480578 Auto Settle Card Balance       -> MemAutoSettleCardBalance L480579
L480583 Payment Due Letter Entry       -> MemTagadaLetter       L480584
L480588 Member Category Change (Cond.) -> memCatChngCond        L480589
```

`[VERIFIED-VB6]`

### Dispatch defects found in this map

| # | Defect | Evidence | Severity |
|---|---|---|---|
| 1 | **`Member Master` opens `MemCatMast`** — the *category* master form | L480489→L480490 vs L480484→L480485 | high — unless `MemCatMast` switches mode from its `CAPTION` arg (`var_90.CAPTION = arg_10`) `[INFERRED]` |
| 2 | **`Facility Master` instantiates two forms** back-to-back (`memFacilityMast` then `FrmFacilityMast`) | L480501 then L480504 | high — second `.Show` likely orphans the first window |
| 3 | **`Revenue Change Entry` has no arm** (menu row L486 exists, no `Loop Until` matches) | whole-file caption search = 1 hit (registration only, L476913) | medium — dead menu item `[VERIFIED-VB6]` |
| 4 | Stray builder row `Auto Settle Card Balance` sits at **L18**, 457 lines before its module block | `menu_tree_raw.txt` L18 | low — ordering artefact, same dispatch arm |

## 3. Report dispatch

```
L480593 Member Visit Details              -> rMemberRepView  L480595
L480600 Member Mailing Labels             -> rMemberRepView  L480601
L480606 Member Bill Missing Report        -> rMemberRepView  L480607
L480612 Member Sales Register             -> rMemberRepView  L480613
L480618 Member Ledger                     -> FaReports       L480619   <-- FINANCE host
L480625 Member Tax Report                 -> rMemberRepView  L480626
L480631 Payment Due Letter Report         -> rMemberRepView  L480632
L480637 Member Birthday/Anniversary Det.  -> rMemberRepView  L480638
```

`[VERIFIED-VB6]` 7 reports use `rMemberRepView`; **`Member Ledger` alone is served by
`FaReports`** (the Finance report host) — `[INFERRED]` because the ledger is an accounting
report. Also `GRepFormName = "MemBillMissingReport"` assigned at **L7647**.

## 4. Persistence layer (writes found)

| Line | Statement | Table | Evidence |
|---|---|---|---|
| **L859311** | `Insert into MemVisitEntry(MemCode,INDate,INTime,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code,CardRegId) Values(…` | `MemVisitEntry` | `[VERIFIED-VB6]` |
| **L861812** | `Insert Into MemBill (DocId,vDate,Vno,Vprefix,VType,MemCode,MemCatCode,CardNo,MthYear,NetAmount,U_AE,U_Name,U_EntDt,Site_Code,…` | `MemBill` (header) | `[VERIFIED-VB6]` |
| **L861855** | `Insert Into MemBill1 (DocId,Sno,Vno,vDate,VType,Type,FacilityCode,TaxStru,AcCode,BaseAmt,TaxAmt,OutletCode,AcPosting,…` | `MemBill1` (line) | `[VERIFIED-VB6]` |
| **L861897** | `Insert Into MemBill2 (DocId,Sno,Sno1,Vno,vDate,VType,FacilityCode,TaxCode,BaseAmt,TaxPer,TaxAmt,…` | `MemBill2` (tax line) | `[VERIFIED-VB6]` |

Standard audit columns `U_AE, U_Name, U_EntDt, Site_Code, LogSite_Code` present on all
inserts. `[VERIFIED-VB6]`

`MemBill` = 3-level document: header (`MemBill`) + facility lines (`MemBill1`) + tax lines
(`MemBill2`) — same shape as POS `Sale1/Sale2`. `[INFERRED]`

## 5. Table census for the module

| Table | Rows | State | Evidence |
|---|---|---|---|
| `MemberFamily` | **37** | **the only populated member table** | `[VERIFIED-SQL]` |
| `MemBill` / `MemBill1` / `MemBill2` | 0 / 0 / 0 | no member billing ever posted | `[VERIFIED-SQL]` |
| `MemVisitEntry` | 0 | no visits recorded | `[VERIFIED-SQL]` |
| `MemFacilityBilling` | 0 | no facility billing | `[VERIFIED-SQL]` |
| `MemFacilityMast` | 0 | facility master empty | `[VERIFIED-SQL]` |
| `MemCatFacility` | 0 | category-facility mapping empty | `[VERIFIED-SQL]` |

**37 `MemberFamily` rows vs 0 everywhere else** = members were *registered* but the
billing/visit machinery never ran on this site. `[INFERRED]`

No FKs in the whole DB (`foreign_keys.txt` = 0 bytes) → `MemBill*.MemCode` is not enforced
against `MemberFamily`. `[VERIFIED-SQL]`

## 6. Writes are Night-Audit-adjacent

`MemBill` posting follows the same header/line/tax pattern as POS bills and can feed
ledgers via `AcPosting`/`AcCode` columns (L861855). Per spec §7 the **blocklist applies**:
no Save/Post/Settle clicks during any QA run on `MemBill*`, `MemFacilityBilling`,
`MemPaymentReceive`. `[INFERRED]` from column names.

## 7. Open questions

1. `[UNKNOWN]` Does `MemCatMast` really serve both Category and Member master via its
   caption argument? Needs one runtime open (read-only) to confirm.
2. `[UNKNOWN]` Which menu rows does the *builder* `Revenue Change Entry` intend to open —
   is there a form `memRevChngEntry`-like name in `vb6_form_inventory.md`?
3. `[UNKNOWN]` Where does the orphan `OPT1=23` row point at runtime (root row missing →
   tab/menu rendering behaviour unknown).
4. `[UNKNOWN]` Is `MemberFamily` (37 rows) the member registry, and which screen writes it
   (no `Insert Into MemberFamily` found in the searched ranges).
