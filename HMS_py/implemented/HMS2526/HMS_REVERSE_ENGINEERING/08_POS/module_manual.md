# MODULE MANUAL — 08_POS (Point of Sale)

Module hex code **`11`** (`&H11`) · menu caption **`Point Of Sale`** · DB `MOONData2627`.
Evidence tags per `PROMT.txt` §25: `[VERIFIED-VB6]` `[VERIFIED-SQL]` `[VERIFIED-UI]`
`[VERIFIED-CONFIG]` `[INFERRED]` `[UNKNOWN]`.

---

## 1. Purpose

Order-to-cash for F&B outlets: take a kitchen order (KOT), convert it to a bill, settle the bill by
tender, reprint/lookup/void bills, and report on outlet sales. `[INFERRED]` from the screen set and
table writes; no prose description exists in the source.

Supporting facts: the module owns `KOT` (28 101 rows), `Sale1` (12 686), `Sale2` (66 055),
`SunTran` (98 025) and `PayCharge`. `[VERIFIED-SQL]`

## 2. Menu Structure

Full tree with line cites: `screens\screens.md` §2. Summary:

- 53 static rows in `19_VB6_Logic\menu_tree_raw.txt` (rows L11, L14, L312–L362). `[VERIFIED-VB6]`
- 1 module header, 3 group headers (`POS Operations` L315, `POS Reports` L328, `POS M.I.S.` L351),
  2 top-level items (`Restaurant Change` L313, `POS Status` L314),
  12 operations, 22 POS Reports rows, 11 POS M.I.S. rows, 2 stray rows.
- **Runtime superset:** one extra group header *per outlet* plus its children, generated from
  `Depart` where `OutletYN='Y'` (EXTRAS.text L476608–L476655). `[VERIFIED-VB6]`
- Setup siblings under module `C`, group `Point of Sale Setup` (menu rows L79–L92).

## 3. Screens

Dispatch table: `screens\screens.md` §4. Forms and object ranges: `logic\vb6_logic.md`.

| Group | Forms |
|---|---|
| Operations | `RsKOTEntry`, `RsTbChange`, `RSSaleBill`, `RsSaleBillSplit`, `POSBillReprint`, `RsPOSDisplay`, `RsBookingEntry`, `RSSaleBillDisplay`, `POSAdvanceDepDialog`, `RsKOTTransfer`, `RsTokenEntry`, `RsPaymentReceice`, `FrmDenomination`, `RsStatusScreen`, `FrmChangeRest` |
| Display | `RsPOSDisplayNew`, `RsTouchDisplayTB`, `RsTouchScreenKOTEntry`, `RSTouchScreenSaleBill` |
| Maintenance / admin | `FrmPOSBillDeletion`, `FrmPOSBillModificationDatewise`, `FrmPOSBillModificationItemGroupwise`, `FrmPOSSaleDataTransfer`, `pHappyHours` |
| Masters | `OutLetMast`, `RsTableMast`, `FrmWaiterMast`, `FrmItemGroupMast`, `FrmItemCatMast` |
| Report viewers | `rPOSRepView`, `rHallRepView` |

## 4. Masters

| Master | Form | Key columns | Rows |
|---|---|---|---|
| Outlet | `OutLetMast` (L183116) | `Depart.Code, Name, RestType, OutletYN, ShortName, KotYn, Order_Booking, Printer, PrintType, AutoSettlement, SplitBill, MultiBill, OpenItemYN, PlaceOfSupplyYN, …` (74 cols) | 73 `[VERIFIED-SQL]` |
| Table | `RsTableMast` (L107258) | stored in `RoomMast` with `TYPE='TB'` — **there is no `TableMast` table** | 86 `RoomMast` rows `[VERIFIED-SQL]` |
| Steward / Waiter | `FrmWaiterMast` | `Waiter.Code, Name, ActiveYN, RestCode` (9 cols) | 58 `[VERIFIED-SQL]` |
| Menu group / category / item | `FrmItemGroupMast`, `FrmItemCatMast` | grouped by `RestType='Finish'` `[VERIFIED-VB6]` (EXTRAS.text L477840-region) | — |
| Session | — | `SessionMast.FromTime/ToTime` drives token session `[VERIFIED-VB6]` (L613846) | — |
| Voucher types | — | `Voucher_Type` (`Ncat='ORDER'`, `'PADV'`, `'B'+ShortName`) | — |
| Voucher prefix | — | `Voucher_Prefix` (10 cols) | — |

Setup registration lines: EXTRAS.text L476007–L476031. `[VERIFIED-VB6]`

## 5. Transactions

| Transaction | Screen | Header table | Detail tables |
|---|---|---|---|
| Kitchen order | `RsKOTEntry` | `KOT` | `KOTLog` |
| Token | `RsTokenEntry` | `TOKEN` | `KOTLog`, `Stock` (guard) |
| Table change | `RsTbChange` | — (updates `KOT.ROOMNO`) | — |
| Sale bill | `RSSaleBill` | `Sale1` | `Sale2` (tax), `SunTran` (sundry), `KOT` (Pending→'N') |
| Split sale bill | `RsSaleBillSplit` | `SplitSale1`/`Sale1` | `SplitSale2`, `SplitSunTran` |
| Settlement / payment | `RsPaymentReceice` | `PayCharge` | `LEDGERADJ`, `Voucher_Prefix` |
| Order booking | `RsBookingEntry` | (order voucher, `Ncat='ORDER'`) | — |
| Order booking advance | `POSAdvanceDepDialog` | (`Ncat='PADV'`) | — |
| Denomination | `FrmDenomination` | — | `DenominationDetail` |

Row counts: `18_Database\tables_rowcounts.txt` `[VERIFIED-SQL]`.

## 6. Operations

- **Restaurant change** (`FrmChangeRest`, EXTRAS.text L480172) → sets `MemVar_1F811A4`, which every
  screen copies into `LocalRestCode` / `MDIRestCode`. `[VERIFIED-VB6]`
- **Display table** — touch-screen branch chosen by `Enviro.TouchScreen` (EXTRAS.text L477031,
  L9892). `[VERIFIED-VB6]`
- **KOT transfer** between kitchens (`RsKOTTransfer`, L610453). `[VERIFIED-VB6]`
- **Bill deletion utility** (`FrmPOSBillDeletion`, L513954) with `TempPosDel` staging. `[VERIFIED-VB6]`
- **Bill modification** by date (L593783) or item group (L594844); **sale data transfer** between
  outlets (L595905). `[VERIFIED-VB6]`
- **POS status** live dashboard (`RsStatusScreen`) — Sale1 ⋈ KOT FULL OUTER JOIN (L612350–L612381).
  `[VERIFIED-VB6]`

## 7. Reports

Full mapping: `reports\reports.md`.
- 22 `POS Reports` + 11 `POS M.I.S.` menu rows; viewers `rPOSRepView` / `rHallRepView`.
- `GRepFormName` → `REPORTS_TXT\<name>.txt` (233 descriptors; all 49 POS names confirmed).
  `[VERIFIED-SQL]`
- Crystal Reports engine, 524 `.rpt`/`.ttx` files, path from INI key 2. `[VERIFIED-CONFIG]`
- `RestType` = `BANQ`/`ODC` forks 4 captions to the hall viewer. `[VERIFIED-VB6]`

## 8. Permissions

- Discount ceiling per user: `SELECT POSDiscountAllowUpto FROM UserPermission WHERE LOGSITE_CODE=…
  And CompCode=… And UserName=…` → `global_520`; `0` means no discount right
  (EXTRAS.text L320452-region, L320459; guards L320113/L320273/L321357/L321450/L323772).
  `[VERIFIED-VB6]`
- Menu visibility is permission-driven: a second registration pass supplies `var_174` (the caller's
  group) at EXTRAS.text L184623–L184818. `[VERIFIED-VB6]`
- Settlement blocked for outlets with `RestType='Production'` (EXTRAS.text L698-region).
  `[VERIFIED-VB6]`
- Per-user MenuHelp trees exist in `19_VB6_Logic\MenuHelp_*_tree.txt` (`MenuHelp_POS_tree.txt`,
  `MenuHelp_SA_tree.txt`). `[VERIFIED-CONFIG]`
- **No credential values are extracted or written anywhere in this module folder.**

## 9. Business Rules

| # | Rule | Evidence |
|---|---|---|
| BR-01 | Voucher number must be non-zero and unique per voucher class | `Vr. No Can Not Be 0` L60308; `Duplicate Voucher No.` L60348 `[VERIFIED-VB6]` |
| BR-02 | KOT requires steward + at least one item line | L62321, L62337, L62348 `[VERIFIED-VB6]` |
| BR-03 | Duplicate KOT number and duplicate item within a KOT are rejected | L68565, L68818 `[VERIFIED-VB6]` |
| BR-04 | Editing an existing KOT requires a reason | `You must Enter a Valid Reason of Editing` L62407 `[VERIFIED-VB6]` |
| BR-05 | A KOT can only be billed once | `Sale Bill Already Generated !!` L65988 `[VERIFIED-VB6]` |
| BR-06 | Bill save releases the KOT set (`Pending='N'`) | L324830 `[VERIFIED-VB6]` |
| BR-07 | Discount allowed only up to `UserPermission.POSDiscountAllowUpto` | L320115/L320459 `[VERIFIED-VB6]` |
| BR-08 | Negative stock requires explicit confirmation | L67889 `[VERIFIED-VB6]` |
| BR-09 | Settlement requires payment rows before save | `Please Fill Payment Details Before Saving..` L983732 `[VERIFIED-VB6]` |
| BR-10 | Settlement voucher class = `'B' + Depart.ShortName` | L479944-region `[VERIFIED-VB6]` |
| BR-11 | Settlement not allowed on production outlets | L698-region `[VERIFIED-VB6]` |
| BR-12 | Bill dates must fall inside the financial year | `V.Date Not Between Current Fin. Year` L466604; `FromDate/ToDate must be with in Financial Year` L514173/L514190 `[VERIFIED-VB6]` |
| BR-13 | Split bill must be fully adjusted before save | `Please fully adjust the Bill` L468083 `[VERIFIED-VB6]` |
| BR-14 | Token voucher prefix = `'N' + Depart.ShortName` | L614187 `[VERIFIED-VB6]` |
| BR-15 | Session boundary comes from `SessionMast` | L613846 `[VERIFIED-VB6]` |
| BR-16 | A room bill already printed blocks further edits | `Guest Room Bill Already printed for this Room` L60649, L62312, L982730 `[VERIFIED-VB6]` |
| BR-17 | Credit-card tender validates expiry; credit can be disabled | L982769, L982870 `[VERIFIED-VB6]` |
| BR-18 | Re-save of a bill is delete-then-insert, not update | L324253 → L324352 `[VERIFIED-VB6]` |

## 10. VB6 Logic

`logic\vb6_logic.md`. Highlights: object boundary map (33 objects with line ranges), the
`ModuleAdd` caption→form ladder (EXTRAS.text L475662–L488665), the MDI toolbar mirror
(L680–L800), the touch-screen branch, and the shared-instance settlement finding **F-POS-01**.

## 11. SQL Logic

`sql\queries.sql` + `sql\sql_notes.md`. 12 object ranges → statement inventory; all statements are
**static extractions, none executed**.

## 12. Tables

| Table | Cols | PK | Rows | Written by |
|---|---|---|---|---|
| `KOT` | 44 | `(DocId,Sno)` | 28 101 | KOT Entry, Table Change, Sale Bill |
| `KOTLog` | 40 | — | 1 420 | KOT Entry, Token Entry |
| `Sale1` | 81 | `(DocId)` | 12 686 | Sale Bill, Split Sale |
| `Sale1Log` | — | — | 130 | Sale Bill |
| `Sale2` | 19 | `(DocId,Sno,SNo1)` | 66 055 | Sale Bill, pPBill, Split |
| `Sale2Log` | — | — | 1 086 | Sale Bill |
| `SunTran` | 24 | `(DocId,Sno)` | 98 025 | Sale Bill, pPBill, Split |
| `SunTranH` / `SunTranLog` | — | — | 228 / 910 | sundry header/log |
| `PayCharge` | 61 | — | (n/a) | Payment Receive |
| `TOKEN` | — | (index present) | 0 | Token Entry |
| `POS_SBill` | 8 | `(DocId,OutletDocId)` | 0 | outlet bill link |
| `SplitSale1/2`, `SplitSunTran` | 74 / — / — | present | 0 / 0 / 0 | Split Sale Bill |
| `TempPosDel` | — | — | 0 | bill deletion utility |
| `DenominationDetail` | 18 | — | 0 | Denomination |
| `Voucher_Prefix` | 10 | — | — | all voucher writers |
| `Depart` | 74 | — | 73 | outlet master |
| `Waiter` | 9 | — | 58 | steward master |
| `RoomMast` | — | — | 86 | table master (`TYPE='TB'`) |
| **`foreign_keys.txt`** | — | — | **0 FKs declared** | — |

Sources: `18_Database\columns_dictionary.txt`, `indexes_pks.txt`, `tables_rowcounts.txt`,
`foreign_keys.txt`. `[VERIFIED-SQL]`

## 13. Fields

Key fields (full lists in `sql\queries.sql` header comments):

- `KOT`: `DocId, Sno, Vtype, Vtime, VNo, Site_Code, Vprefix, Vdate, RestCode, RoomCat, RoomType,
  RoomNo, Item, Qty, Rate, Amount, VoidYN, Waiter, Pending, KOTType, NCKOT, NCTYPE, Printed,
  FreeSno, SchemeCode, Description, Party, ItemRestCode, SeqNo, GuarAtt, TokenNo, PrintFlag,
  ContraDocId, ContraSno, Reasons, Remarks, DelFlag, LogSite_Code, U_Name/U_EntDt/U_AE,
  U_Name1/U_EntDt1/U_AE1` (44). `[VERIFIED-SQL]`
- `Sale1` (81): `DocId, Vtype, VNo, Vtime, Site_Code, Vprefix, Vdate, RestCode, RoomCat, RoomType,
  RoomNo, FolioNo, Party, Total, DiscPer, DiscAmt, NonTaxable, Taxable, Tax, ServiceCharge,
  ServiceTax, CGST, SGST, IGST, AddAmt, DedAmt, RoundOff, NetAmt, KOTNO, TokenNo, Waiter,
  GuarAtt, ExpAtt, CoverRate, DelFlag, PRINTED, DeliveredYN, CashRecd, BookNo, CardNo,
  Redemption, DiscRemark, EditRemark, PlaceOfSupply, AU_Name, AU_EntDt, LogSite_Code, …`
- `PayCharge` (61): `PayCode, PayType, AmtCr, AmtDr, TipAmt, CardNo, ChqNo, BillAmount,
  ContraDocID, SettleDate, BatchNo, MarkEntry, ModeSet, Split, RefDocId, TxnNo, TaxCondAmt, …`
- `Depart` switches that drive behaviour: `KotYn, OutletYN, RestType, ShortName, Order_Booking,
  AutoSettlement, SplitBill, MultiBill, OpenItemYN, PlaceOfSupplyYN, PrintOnSave, KOTAtNightAudit,
  CoverMandatory, MobileNoMandatory`. `[VERIFIED-SQL]`

## 14. Workflow

`flowcharts\workflow.mmd` — Mermaid `flowchart-v2`; parses cleanly with `mermaid.parse()`.
Narrative:

1. Pick outlet (`FrmChangeRest`) → `MemVar_1F811A4`.
2. `KOT Entry` → validate → `Insert KOT` + `KOTLog` → optional print (`PRINTED='Y'`).
3. `Sale Bill Entry` → discount permission check → wipe + insert `Sale1`/`Sale2`/`SunTran` →
   `Update KOT Set Pending='N'` → *Updation Completed.*
4. `Settlement Entry` → outlet voucher class, production guard → `Delete/Insert PayCharge`,
   `LEDGERADJ`, bump `Voucher_Prefix`.
5. Reprint / lookup / split / void as post-settlement operations.
6. Reports read `Sale1`/`Sale2`/`SunTran`/`PayCharge`/`KOT` via Crystal.

## 15. Screenshots

`screenshots\README.md` → pointer to `../../screenshots/08_POS/` (**20 PNGs**).
Captured: menu tab (2), `POS Reports` screens/reports (6), `POS M.I.S.` report viewers (8),
outlet bill screens for `Hight Way point` (3) and `MOON TEA CAFE` (1), POS Reports sub-menu (1),
Bill Look Up (1). **No** `POS Operations` transaction screen was captured. `[VERIFIED-UI]`

## 16. Test Cases

Designed from the rules in §9; **not executed** (no live run performed for this module).
`[UNKNOWN] — test execution out of scope for the reverse-engineering pass`.

| ID | Case | Expected | Rule |
|---|---|---|---|
| T-POS-01 | Save KOT with `Vr.No = 0` | reject: `Vr. No Can Not Be 0` | BR-01 |
| T-POS-02 | Save KOT with no item line | reject: `Item Detail Required ` | BR-02 |
| T-POS-03 | Save KOT with an item already on the KOT | reject: `Duplicate Item Not Allowed` | BR-03 |
| T-POS-04 | Edit a KOT with empty reason | reject: `You must Enter a Valid Reason of Editing` | BR-04 |
| T-POS-05 | Bill an already-billed KOT | reject: `Sale Bill Already Generated !!` | BR-05 |
| T-POS-06 | Save bill → check `KOT.Pending='N'` for every source KOT | flag cleared, `U_AE1='E'` | BR-06 |
| T-POS-07 | Apply discount above `POSDiscountAllowUpto` | reject: `U are not Authorised to give discount` | BR-07 |
| T-POS-08 | Issue quantity beyond stock | prompt: `Do you Want to Proceed with Negative Stock ?` | BR-08 |
| T-POS-09 | Save settlement with no tender rows | reject: `Please Fill Payment Details Before Saving..` | BR-09 |
| T-POS-10 | Settle on an outlet whose `RestType='Production'` | reject: `Operation is not allowed for Perticular Department` | BR-11 |
| T-POS-11 | Save a bill dated outside the financial year | reject: `V.Date Not Between Current Fin. Year` | BR-12 |
| T-POS-12 | Save split bill with residual balance | reject: `Please fully adjust the Bill` | BR-13 |
| T-POS-13 | Save settlement → verify `Voucher_Prefix.Start_Srl_No` incremented | serial +1 | BR-10 |
| T-POS-14 | Reprint a bill deleted by another user | reject: `Record is Deleted by somebody` | — |
| T-POS-15 | Open `Display Table` with no `RoomMast TYPE='TB'` rows | `Tables are not defined in this Outlet` | — |
| T-POS-16 | Select an outlet with `RestType='BANQ'` → run `Sales Register` | `rHallRepView` opens (not `rPOSRepView`) | F-POS-07 |
| T-POS-17 | Set `Enviro.TouchScreen='Yes'` → open `Token Entry` | `RsTouchScreenTOKENEntry` opens | — |
| T-POS-18 | Reopen `Settlement Entry` while a previous one is loaded | confirm/deny state carry-over (F-POS-01) | F-POS-01 |

## 17. Known Issues

Detailed write-ups: `notes\notes.md`.

| ID | Issue | Tag |
|---|---|---|
| F-POS-01 | Settlement dialog is a shared, never-`New`ed instance (`MemVar_1F81F64`) — state can leak between opens | `[INFERRED]` |
| F-POS-02 | Live POS menu is generated per outlet from `Depart`, so `menu_tree_raw.txt` (53 rows) under-reports it | `[VERIFIED-VB6]` |
| F-POS-03 | Two module-11 rows sit at the top of the dump (L11, L14) because they are registered separately | `[VERIFIED-VB6]` |
| F-POS-06 | `Sale1` re-save is delete-then-insert with **zero FKs** declared — orphan `Sale2`/`SunTran`/`PayCharge` rows are possible | `[VERIFIED-SQL]` + `[VERIFIED-VB6]` |
| F-POS-07 | `RestType` (`BANQ`/`ODC`) silently re-routes POS reports and masters to banquet code | `[VERIFIED-VB6]` |
| — | Loose `OR` in the deletion outlet picker: `OutletYN='Y' and RestType<>'Banquet' OR RestType='Kitchen'` | `[VERIFIED-VB6]` |
| — | `TOKEN`, `POS_SBill`, `Split*`, `TempPosDel`, `DenominationDetail`, `HappyHours` all hold **0 rows** — code paths exist, feature unused | `[VERIFIED-SQL]` |
| — | 12 `POS Operations` screens have no screenshot coverage | `[VERIFIED-UI]` |
| — | `Not Delivered Order` and `Denomination Detail` are menus under `POS Reports` but open *screens*, not Crystal reports | `[VERIFIED-VB6]` |
| — | `Tax Invoice Detail` has no `ModuleAdd` dispatch — only the MDI `MISREP` handler (EXTRAS.text L7794) | `[VERIFIED-VB6]` |
| — | `flowcharts\workflow.mmd` parser-validated only; `mmdc` renderer not installed | `[UNKNOWN]` |

## 18. Migration Notes

1. **Split the singleton.** Replace `MemVar_1F81F64` with a per-invocation instance (F-POS-01) —
   the current design will otherwise share settlement state across users on the same terminal.
2. **Introduce FKs.** `foreign_keys.txt` is empty; at minimum `Sale2.DocId → Sale1.DocId`,
   `SunTran.DocId → Sale1.DocId`, `PayCharge.DocId → Sale1.DocId`, `KOTLog.DocId → KOT.DocId`.
3. **Replace delete-then-insert** bill re-save with an upsert (or keep it but wrap in a transaction
   — no transaction boundaries were visible in the decompile `[UNKNOWN] — searched for
   `BeginTrans`/`CommitTrans` in the POS object ranges`).
4. **Parameterise SQL.** Every statement concatenates UI strings; migrate to bound parameters.
5. **Fix the outlet-picker `OR`** with explicit parentheses (BR/group F-POS-07 issue).
6. **`RoomMast TYPE='TB'` as tables** is a modelling quirk — either keep it for parity or split
   into a real `TableMaster` and update `RsTbChange`'s two lookups.
7. **Port the two-part menu**: static registration block (L476507–L476607) + dynamic per-outlet
   block (L476608–L476655) + permission pass (L184623–L184818).
8. **Report layer**: keep `GRepFormName` as the stable key — it already maps 1:1 to
   `REPORTS_TXT\<name>.txt`. Replace Crystal with the modern renderer behind the same key.
9. **Touch-screen variants** are chosen by `Enviro.TouchScreen`; make it a per-user or per-device
   setting rather than a global.
10. **Do not migrate credential handling** from this code; no credential values are documented here
    by design.
