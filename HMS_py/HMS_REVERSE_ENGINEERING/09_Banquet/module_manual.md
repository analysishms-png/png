# MODULE MANUAL — 09_Banquet (Banquet)

Module hex code **`12`** (`&H12`) · menu caption **`Banquet`** · DB `MOONData2627`.
Evidence tags per `PROMT.txt` §25: `[VERIFIED-VB6]` `[VERIFIED-SQL]` `[VERIFIED-UI]`
`[VERIFIED-CONFIG]` `[INFERRED]` `[UNKNOWN]`.

---

## 1. Purpose

Book, host, bill and settle hall / outdoor-catering functions: hold a venue, build the function
menu from a catalog, price it (Chef Pre-Costing), issue an estimate, bill the function, take an
advance and settle it, then report. `[INFERRED]` from the screen set and table writes; no prose
description exists in the source.

Supporting facts: the module owns `HallBook` (147 rows), `HallSale1` (38), `VenueOCC` (216),
`VenueMast` (10), `VenueCapacity` (32), `Booking` (25), `BookingLog` (403).
Every detail table it writes is at **0 rows** (see §12). `[VERIFIED-SQL]`

## 2. Menu Structure

Full tree with line cites: `screens\screens.md` §2. Summary:

- **65 static rows** in `19_VB6_Logic\menu_tree_raw.txt` (rows **L363–L427**). `[VERIFIED-VB6]`
- Type counts: **type 0 = 31, type 1 = 30, type 2 = 2, type 3 = 1, type 4 = 1** (recounted with
  `rg -o '^12\|([0-9]+)\|'`).
- 1 module header (`Banquet` L363, type 4), 1 group header (`OutDoor Catering` L393, type 3),
  29 Indoor rows (L364–L392), 34 ODC rows (L394–L427).
- **No `Indoor Catering` group row exists** even though every Indoor child names it as parent
  — see F-BANQ-03.
- Registration block: EXTRAS.text **L476659–L476789**; dispatch ladder
  **L479447–L480197**. `[VERIFIED-VB6]`
- Setup siblings under module `C`, group `Banquet Setup` (menu rows L93–L101).

## 3. Screens

Dispatch table: `screens\screens.md` §4. Object ranges: `logic\vb6_logic.md` §1 (24 banquet-owned
objects).

| Group | Forms (object start line) |
|---|---|
| Operations — Indoor + ODC | `FrmBookingInquiry` (386324), `HallBooking` (393015), `CateringBooking` (372637), `HallChefPreCosting` (419544), `HallBill` (397814), `HallAdvanceDepDialog` (406929), `BanqAvailability` (418142), `frmGuestComments` (454521), `HallEstimate` (411351), `HallBillEstimate` (579496) |
| Setup — Indoor + ODC | `FrmEventMast` (378923), `FrmVenueFeat` (633079), `FrmVenueMast` (631225), `FrmHallItemCatMast` (379697), `HallItemGroupMast` (381176), `HallMenuItemEntry` (381985), `HallMenuCatalog` (389222), `HallSundry` (383977) |
| Support | `resBanq` (371338), `hAdvanceDepDialog` (439406), `hAdvanceDepDialogSecondry` (443815), `RsTouchScreenBookingEntry` (800470), `BanqModule` (835729) |
| Report viewer | `rHallRepView` (777000) — also used by POS via the `var_AC` fork |

## 4. Masters

| Master | Form | Key columns | Rows |
|---|---|---|---|
| Venue | `FrmVenueMast` (631225) | `VenueMast.Code, Name, ShortName, Capacity, Seating, Floating, Dimension, Status, DepartCode, Site_Code, PicPath` (15) | **10** `[VERIFIED-SQL]` |
| Venue capacity | same form | `VenueCapacity.VenueCode, Capacity, Site_Code` (8) | **32** |
| Venue feature | `FrmVenueFeat` (633079) | `VenueFeatures` (7) / `FeatureMast` (9) | **0 / 0** |
| Event | `FrmEventMast` (378923) | `FunctionType` (8) | 8 |
| Menu category | `FrmHallItemCatMast` (379697) | `RevMast` + banquet branch | — |
| Item group | `HallItemGroupMast` (381176) | shared `ItemGrp`, `RestType='Banquet'` fork | — |
| Menu item | `HallMenuItemEntry` (381985) | writes `ItemMast` + `ItemRate` | — |
| Catalog | `HallMenuCatalog` (389222) | `CatalogMast (Code,ItemCode)` (11) | **0** |
| Bill sundry | `HallSundry` (383977) | `PayCharge`-linked `Voucher wise Sundry` | — |

Setup registration: module-`C` group header at EXTRAS.text **L476037**, its eight Indoor rows at
**L476039–L476053** (owner `HallM`); the ODC duplicates at **L476720–L476730** (owner
`OdcEnt1`). `[VERIFIED-VB6]`
The **setup captions fork on `var_148`**:
`Menu Category` → `FrmHallItemCatMast` when `BANQ`/`ODC` else `FrmItemCatMast` (L477828 → L477830 / L477834);
`Item Group` → `HallItemGroupMast` else `FrmItemGroupMastRaw` (L477929 → L477931 / L477935);
`Menu Item` → `HallMenuItemEntry` / `RsMenuItemEntry` (L477855 → L477857 / L477868). `[VERIFIED-VB6]`

## 5. Transactions

| Transaction | Screen | Header table | Detail tables |
|---|---|---|---|
| Banquet booking | `HallBooking` | `HallBook` (147) | `HallBook1` (0), `VenueOCC` (216) |
| Booking inquiry | `FrmBookingInquiry` | `BookingInquiry` (0) | `BookingDetail` (0) |
| Catalog selection | `CateringBooking` | reads `HallBook`/`VenueOCC` | — |
| Chef pre-costing | `HallChefPreCosting` | `HallPreCosting` (0) | — |
| Banquet bill | `HallBill` | `HallSale1` (38) | `HallSale2` (0), `HallStock` (0), `SunTran`, `SunTranH` |
| Banquet settlement | `HallAdvanceDepDialog` | `PayChargeH` (`VType='AD'`) | `Ledger` updates |
| Banquet estimate bill | `HallBillEstimate` | `HallSale1Est` (0) | `HallStockEst` (0), `SunTranEst` (0), `SunTranHEst` (0) |
| Legacy estimate | `HallEstimate` | `HallSale1` (412344) | `HallStock` |
| Booking advance | `HallAdvanceDepDialog` (`OpenType=6`) | `PayChargeH` | — |

## 6. Operations

1. Open `Booking Inquiry` → filter by venue/date → hand off to `Banquet Booking`.
2. Save `Banquet Booking`: delete `HallBook`/`HallBook1`/`VenueOCC` for the doc, re-insert,
   then check whether an advance already exists (`PayChargeH VType='AD' AND ContraDocId=doc`,
   L397711).
3. `Catalog Selection` pulls the booked function's menu from `HallBook`/`VenueOCC` (L376748,
   L373790).
4. `Banquet Billing`: voucher class `NCat='BBILL'` (L400311) → delete-or-insert children →
   round-off from `RoundOffSetting ModuleName='Banquet Bill'` (L404241) → e-invoice check
   (L399171).
5. `Banquet Settlement`: tender rows → `PayChargeH VType='AD'` → `HallSale1.Advance` update
   (L407730/L407883) → `HallBook.RectNo/rectDate` (L408005) → `REVMAST` revenue mapping (L407778).
6. `Venue Availability` reads `FAEnviro` (L418498) + `VenueMast` (L419176) and counts `VenueOCC`.
7. Reports launch through the `var_AC` fork into `rHallRepView`.

## 7. Reports

Full mapping: `reports\reports.md`.

- **14 banquet reports**: 10 `Reports`, 2 `MIS`, 3 `Tax` (one is counted in both Indoor and ODC
  registrations but is a single `GRepFormName` set).
- All **14 `GRepFormName` values are present** in `REPORTS_TXT\`. `[VERIFIED-SQL]`
- `Sales Register`, `Tax Report`, `Tax Summary`, `Cover Analysis`, `Collection Summary` are
  **forked** between `rHallRepView` and `rPOSRepView` on `var_AC = BANQ/ODC`
  (L479827, L479455, L479692, L479588, L479650). `[VERIFIED-VB6]`
- `Collection Summary` and the report-menu `Cashier  Report` load the **same**
  `CashierCollection` (L479654 vs L479861). `[VERIFIED-VB6]`
- Crystal Reports engine, 524 `.rpt`/`.ttx`, path from INI key 2. `[VERIFIED-CONFIG]`

## 8. Permissions

- Menu visibility is permission-driven by a second registration pass supplying the caller's group
  (`var_174`) — same mechanism as module 11 (EXTRAS.text L184623–L184818). `[VERIFIED-VB6]`
- Per-user permission tree: `19_VB6_Logic\MenuHelp_SA_tree.txt`, banquet subtree
  **`18|12|…`** lines L67–L75 (setup) and **L271–L302** (operations/reports). `[VERIFIED-CONFIG]`
- The permission tree says **`Chef Pre-Costing`** (line 278) where the menu dump says
  `Catalog Selection` — see F-BANQ-01. `[VERIFIED-CONFIG]`
- `Banquet Taxwise Details` is flagged `E` in the permission tree (line 301) while every other
  banquet report is flagged `R` — see F-BANQ-02. `[VERIFIED-CONFIG]`
- Discount / limit gating uses `UserPermission` (`POSDiscountAllowUpto` semantics from module 11);
  `UserPermission` object starts at EXTRAS.text L460883. `[VERIFIED-VB6]`
- **No credential values are extracted or written anywhere in this module folder.**

## 9. Business Rules

| # | Rule | Evidence |
|---|---|---|
| BR-BANQ-01 | Expected Pax is mandatory on a booking | `Can't leave blank the Expected Pax.` L393895, L395711 `[VERIFIED-VB6]` |
| BR-BANQ-02 | Guaranteed Pax is mandatory and must not exceed Expected Pax | L393906, L395721, `Gurrented Pax must be equal or less then Expected Pax.` L395733 `[VERIFIED-VB6]` |
| BR-BANQ-03 | Expected attendance must be ≥ guaranteed attendance | `Expected Attendence can't be Less Than Guaranteed Attendence` L394493 `[VERIFIED-VB6]` |
| BR-BANQ-04 | Blank per-pax rate requires confirmation | `Do you want leave blank the Rate of Per Pax.` L393917 `[VERIFIED-VB6]` |
| BR-BANQ-05 | Venue, from/to date and start time are mandatory | L395744, L395760, L395767, L395774, L395781, `Please Select Venue.` L387984 `[VERIFIED-VB6]` |
| BR-BANQ-06 | To date/time must be greater than from date/time; function dates are validated | `To Date and Time Must be Greater than From Date and Time` L396673; `Please check Function Date.` L396658; `Please check To Date.` L396687 `[VERIFIED-VB6]` |
| BR-BANQ-07 | Voucher number must be non-zero and unique | `Vr. No Can Not Be 0` L398236, L413107; `Duplicate Voucher No.` L394234, L398281, L413152 `[VERIFIED-VB6]` |
| BR-BANQ-08 | Document dates must fall inside the financial year | `V.Date Not Between Current Fin. Year` L394281, L413193, L419894 `[VERIFIED-VB6]` |
| BR-BANQ-09 | A venue/function pair cannot be duplicated | `Duplicate Venue Not Allowed` L397210; `Duplicate FP. No.` L396971 `[VERIFIED-VB6]` |
| BR-BANQ-10 | Bill date cannot precede the booking date | `Bill Date can't be before Booking Date` L398390 `[VERIFIED-VB6]` |
| BR-BANQ-11 | Bill number must be unique; an empty item list is rejected | `Duplicate Bill No.` L402868, L415717, L422468; `Item Detail Required ` L400842, L412085 `[VERIFIED-VB6]` |
| BR-BANQ-12 | A settled bill cannot be modified; its settlement must be deleted first | `Entry Can't be Modified,Bill Already Settled ` L400482; `First Delete Settlement.` L400382 `[VERIFIED-VB6]` |
| BR-BANQ-13 | Voucher-wise sundry mapping must exist before a bill is saved | `Voucher wise Sundry not defined` L401817, L413749 `[VERIFIED-VB6]` |
| BR-BANQ-14 | Settlement requires tender rows and a system-defined revenue mapping | `Please Fill Payment Details Before Saving..` L407640; `System Defined Revenue is not defined` L407788, L407941 `[VERIFIED-VB6]` |
| BR-BANQ-15 | An e-invoice already generated blocks re-issue | `eInvoice already generated.` L406923 `[VERIFIED-VB6]` |
| BR-BANQ-16 | Duplicate items and duplicate mobile/PAN are rejected | `Duplicate Item Not Allowed` L416048, L422742; `Please fill 10 Digit Mobile No.` L395685; `Please fill 10 Digit Pan No.` L395699 `[VERIFIED-VB6]` |
| BR-BANQ-17 | Guest comments are scoped to a site (`GuestComments.LogSite_Code` is part of the PK) | `indexes_pks.txt` `[VERIFIED-SQL]` |
| BR-BANQ-18 | Re-save of a booking/bill is delete-then-insert, not update | L394978/L394986/L394994 (booking), L400388–L400412 and L401165–L401184 (bill) `[VERIFIED-VB6]` |

## 10. VB6 Logic

`logic\vb6_logic.md`. Highlights: the 24-object boundary map, the `ModuleAdd`
registration/dispatch pair (L476659–L476789 / L479447–L480197), the per-form save flows for
`HallBooking`, `HallBill`, `HallAdvanceDepDialog` and `HallChefPreCosting`, and resolved flags
N-BANQ-01…06.

Obfuscation caveat: procedures are `Proc_<mod>_<idx>_<addr>` / `*_UnknownEvent_*` /
`loc_XXXXX:`; the reliable signals are SQL literals, control names (`Me.FGrid`, `Me.Recordset15`)
and `MsgBox` captions. `[VERIFIED-VB6]`

## 11. SQL Logic

`sql\queries.sql` + `sql\sql_notes.md`. 16 object ranges → statement inventory; all statements are
**static extractions, none executed**.

Pattern: every statement concatenates UI strings
(`Delete From VenueMast Where Code='<SearchCode>'`, L631516). Migration must bind parameters.

## 12. Tables

| Table | Cols | PK | Rows | Written by |
|---|---|---|---|---|
| `HallBook` | 74 | `(DocId)` | **147** | `HallBooking`, `CateringBooking` |
| `HallBook1` | 37 | `(DocId,Sno)` | **0** | `HallBooking` (L394993), `CateringBooking` (L374182) |
| `HallSale1` | 46 | `(DocId)` | **38** | `HallBill` (L401269), `HallEstimate` (L412344) |
| `HallSale1Est` | 42 | `(DocId)` | 0 | `HallBillEstimate` (L580610) |
| `HallSale2` | 18 | `(DocId,Sno,SNo1)` | **0** | `HallBill` (L401409) |
| `HallStock` / `HallStockEst` | 35 / — | `(DocId,Sno)` | 0 / 0 | `HallBill` L401361 / `HallBillEstimate` L580699 |
| `HallPreCosting` | 27 | `(Docid,Sno)` | 0 | `HallChefPreCosting` (L420928) |
| `SunTranEst` / `SunTranHEst` | — | — | 0 / 0 | `HallBillEstimate` (L580753 / L580800) |
| `VenueOCC` | 11 | `(FPDocid,VenuCode)` | **216** | `HallBooking` (L396053) |
| `VenueMast` | 15 | `(Code)` | **10** | `FrmVenueMast` (L631835) |
| `VenueCapacity` | 8 | `(VenueCode,Capacity,Site_Code)` | **32** | `FrmVenueMast` (L631860) |
| `VenueFeatures` / `FeatureMast` | 7 / 9 | — | 0 / 0 | `FrmVenueMast` L631940 / `FrmVenueFeat` L633384 |
| `Booking` / `BookingLog` | — | — | 25 / 403 | shared booking subsystem |
| `BookingInquiry` / `BookingDetail` | 30 / 10 | `(Code)` / `(Code,VenueCode)` | 0 / 0 | `FrmBookingInquiry` (L388129 / L388153) |
| `CatalogMast` | 11 | `(Code,ItemCode)` | 0 | `HallMenuCatalog` (L390479) |
| `GuestComments` | 22 | `(Code,LogSite_Code)` | 0 | `frmGuestComments` `[UNKNOWN]` |
| `PayChargeH` | 46 | `(DocId,SNo)` | (advances) | `HallAdvanceDepDialog` (L407405) |
| `FunctionType` / `GroupCatalog` / `SMSEnviro` | — | — | 8 / 4 / 1 | shared |
| **`foreign_keys.txt`** | — | — | **0 FKs declared** | — |

Sources: `18_Database\columns_dictionary.txt`, `indexes_pks.txt`, `tables_rowcounts.txt`,
`foreign_keys.txt`. `[VERIFIED-SQL]`

## 13. Fields

Key fields (full lists in `sql\queries.sql` header comments):

- `HallBook` (74): `DocId, Vtype, VNo, VTime, Site_Code, Vprefix, Vdate, PartyName, Add1, Add2,
  City, PinCode, PANNO, ContactNo_Res, ContactNo_Off, MobileNo, Func_Name, BookingStatus,
  RestCode, FrBookDate, FrBookTime, ToBookDate, ToBookTime, HouseKeep, FrontOff, Engg, Security,
  Chef, Board, MenuSpl1..MenuSpl7, Advance, RectNo, rectDate, CrCardNo, CrCardHolder, Total,
  DiscPer, DiscAmt, NonTaxable, Taxable, Tax, ServiceCharge, AddAmt, DedAmt, RoundOff, ExpAtt,
  GuarAtt, CoverRate, U_Name, U_EntDt, U_AE, HallRent, Remarks, MenuCatalog, Amount, MarketSeg,
  BussSource, CompanyCode, TotalCoverRate, NetAmount, InquiryCode, ContactNo, TaxPer,
  ServiceTaxPer, OtherChrg, LogSite_Code, Remark, BookingAgent`. `[VERIFIED-SQL]`
- `HallSale1` (46): `DocId, Vtype, VNo, VTime, Site_Code, Vprefix, Vdate, RestCode, Party, Total,
  DiscPer, DiscAmt, NonTaxable, Taxable, Tax, ServiceCharge, AddAmt, DedAmt, RoundOff, NetAmt,
  FrBookDate, FrBookTime, ToBookDate, ToBookTime, HallRent, Remarks, NoOfPax, RatePerPax,
  TotalPerCover, Amount, Advance, RectNo, rectDate, CrCardNo, CrCardHolder, BookDocId, DelFlag,
  Narration, Narration1, CGST, SGST, IGST, LogSite_Code, U_*`. `[VERIFIED-SQL]`
- `VenueMast` (15): `Code, Name, ShortName, Capacity, Seating, Floating, Dimension, Status,
  DepartCode, Site_Code, PicPath, LogSite_Code, U_*`. `[VERIFIED-SQL]`
- `VenueOCC` (11): `FPDocid, VenuCode, FromDate, ToDate, FromTime, ToTime, Site_Code,
  LogSite_Code, U_*`. `[VERIFIED-SQL]`
- `HallSale2` (18) — the tax detail: `DocId, Sno, SNo1, Vtype, VNo, Site_Code, Vprefix, Vdate,
  RestCode, TaxCode, BaseValue, TaxPer, TaxAmt, DelFlag, LogSite_Code, U_*`. **0 rows over 38
  bills.** `[VERIFIED-SQL]`

## 14. Workflow

`flowcharts\workflow.mmd` (parser-validated `flowchart-v2`):

```
Booking Inquiry → Banquet Booking → Catalog Selection / Chef Pre-Costing
      → Banquet Billing → Banquet Settlement → Reports (rHallRepView)
Setup: Events / Venue Features / Venue Master / Menu Category / Item Group / Menu Item /
       Catalog Master / Banquet Bill Sundry Setting
Estimate branch: Banquet Estimate Billing (tables all at 0 rows)
Advance branch:  Banquet Booking Advance (same form as Settlement)
```

## 15. Screenshots

`screenshots\README.md` → pointer to `../../screenshots/09_Banquet/` (**15 PNGs**).
Captured: menu tab (2), `Banquet Operation` screens (4 — `Banquet Booking`, `Catalog Selection`,
`Chef Pre-Costing`, `Booking Inquiry`), `Reports` viewers (8), `Bill Look Up` (1).
**No** setup screen, **no** ODC screen, **no** settlement / venue availability / guest comments /
estimate screen was captured. `[VERIFIED-UI]` — full list in `screens\screens.md` §7, gaps in §7.1.

## 16. Test Cases

Designed from the rules in §9; **not executed** (no live run performed for this module).
`[UNKNOWN] — test execution out of scope for the reverse-engineering pass`.

| ID | Case | Expected | Rule |
|---|---|---|---|
| T-BANQ-01 | Save booking with empty Expected Pax | reject: `Can't leave blank the Expected Pax.` | BR-BANQ-01 |
| T-BANQ-02 | Save booking with Guaranteed > Expected Pax | reject: `Gurrented Pax must be equal or less then Expected Pax.` | BR-BANQ-02 |
| T-BANQ-03 | Set blank per-pax rate | confirm: `Do you want leave blank the Rate of Per Pax.` | BR-BANQ-04 |
| T-BANQ-04 | Save booking with no venue | reject: `Please select Venue name.` | BR-BANQ-05 |
| T-BANQ-05 | Set To Date before From Date | reject: `To Date and Time Must be Greater than From Date and Time` | BR-BANQ-06 |
| T-BANQ-06 | Save booking with `Vr.No = 0` | reject: `Vr. No Can Not Be 0` | BR-BANQ-07 |
| T-BANQ-07 | Reuse an existing booking voucher number | reject: `Duplicate Voucher No.` | BR-BANQ-07 |
| T-BANQ-08 | Save a booking dated outside the financial year | reject: `V.Date Not Between Current Fin. Year` | BR-BANQ-08 |
| T-BANQ-09 | Book a venue/function slot twice | reject: `Duplicate Venue Not Allowed` | BR-BANQ-09 |
| T-BANQ-10 | Bill dated before the booking date | reject: `Bill Date can't be before Booking Date` | BR-BANQ-10 |
| T-BANQ-11 | Save a bill with no item line | reject: `Item Detail Required ` | BR-BANQ-11 |
| T-BANQ-12 | Modify a bill that has been settled | reject: `Entry Can't be Modified,Bill Already Settled ` | BR-BANQ-12 |
| T-BANQ-13 | Delete a bill before its settlement | reject: `First Delete Settlement.` | BR-BANQ-12 |
| T-BANQ-14 | Save a bill with no sundry mapping for the voucher class | reject: `Voucher wise Sundry not defined` | BR-BANQ-13 |
| T-BANQ-15 | Save a settlement with no tender rows | reject: `Please Fill Payment Details Before Saving..` | BR-BANQ-14 |
| T-BANQ-16 | Settle without a `REVMAST` system revenue entry | reject: `System Defined Revenue is not defined` | BR-BANQ-14 |
| T-BANQ-17 | Save a booking → verify `HallBook` **and** `HallBook1` rows both written | `HallBook1` still **0** in the shipped data (F-BANQ-06) | BR-BANQ-18 |
| T-BANQ-18 | Save a banquet bill → verify `HallSale2` tax rows | currently **0** rows over 38 bills (F-BANQ-06) | BR-BANQ-18 |
| T-BANQ-19 | Click menu row `Catalog Selection` | `CateringBooking` opens, **not** `HallChefPreCosting` | F-BANQ-01 |
| T-BANQ-20 | Run `Sales Register` for an `BANQ`-classed outlet | `rHallRepView` opens (not `rPOSRepView`) | §7 fork |

## 17. Known Issues

Detailed write-ups: `notes\notes.md`.

| ID | Issue | Tag |
|---|---|---|
| F-BANQ-01 | Duplicated `Catalog Selection` registration swallows the `Chef Pre-Costing` caption — `HallChefPreCosting` is unreachable by menu caption | `[VERIFIED-VB6]` + `[VERIFIED-CONFIG]` |
| F-BANQ-02 | `Banquet Taxwise Details` typed as a report but flagged `E` in the permission tree | `[VERIFIED-CONFIG]`, `[UNKNOWN]` flag legend |
| F-BANQ-03 | No `Indoor Catering` group row exists; the menu builder must synthesise it | `[VERIFIED-VB6]` + `[INFERRED]` |
| F-BANQ-04 | `Banquet Settlement` (type `2`) and `Banquet Booking Advance` (type `0`) are one form in two roles | `[VERIFIED-VB6]`, `[INFERRED]` type meaning |
| F-BANQ-05 | `Settlement Entry` inside the banquet ladder reuses the POS singleton `MemVar_1F81F64` — state can leak across opens | `[INFERRED]` |
| F-BANQ-06 | Every detail table is at **0 rows** while headers are populated — bookings header-only, **no tax lines on any bill**, pre-costing/catalog/features/comments unused | `[VERIFIED-SQL]` |
| F-BANQ-07 | Delete-then-insert re-save with **zero FKs** declared — orphan/deleted rows possible on an interrupted save | `[VERIFIED-VB6]` + `[VERIFIED-SQL]` |
| F-BANQ-08 | `GRepFormName = "BookingDetail"` collides with the real `BookingDetail` table | `[VERIFIED-VB6]` + `[VERIFIED-SQL]` |
| F-BANQ-09 | ODC registration ordinals skip 6 and 8 (reports) and 1/6 (masters) — the two subtrees cannot come from one loop | `[VERIFIED-VB6]` |
| F-BANQ-10 | `Booking Chart` dispatch branch is a bare `GoTo` — dead code | `[VERIFIED-VB6]` |
| — | `hAdvanceDepDialog` / `hAdvanceDepDialogSecondry` share state; the `As New` declaration site was not located | `[UNKNOWN]` |
| — | Generic writers `Proc_154_5_10DBE9C` and `Method_TopCtrl1_UnknownEvent_*` assemble SQL at runtime — their literals are not in this file | `[UNKNOWN]` |
| — | 19 of 65 menu rows have no screenshot coverage (all setup + all ODC + 9 operations) | `[VERIFIED-UI]` |
| — | `flowcharts\workflow.mmd` parser-validated only; `mmdc` renderer not installed | `[UNKNOWN]` |

## 18. Migration Notes

1. **Fix the registration before porting.** Emit `Chef Pre-Costing` at ordinal 3 of the operation
   group (F-BANQ-01); the permission tree already expects it (MenuHelp line 278).
2. **Introduce FKs.** `foreign_keys.txt` is empty; at minimum
   `HallBook1.DocId → HallBook.DocId`, `HallSale1.BookDocId → HallBook.DocId`,
   `HallSale2.DocId → HallSale1.DocId`, `VenueOCC.FPDocid → HallBook.DocId`,
   `CatalogMast.Code → Code` parent. Table provenance in `sql\sql_notes.md` §3.
3. **Replace delete-then-insert** booking/bill re-save with an upsert, or wrap it in a transaction
   — no transaction boundaries were visible in the decompile
   `[UNKNOWN — searched for BeginTrans/CommitTrans in the module-12 object ranges]`.
4. **Parameterise SQL.** Every statement concatenates UI strings; migrate to bound parameters.
5. **Split the shared dialogs.** `HallAdvanceDepDialog` serves settlement *and* advance, and
   `Settlement Entry` reaches for the POS singleton (F-BANQ-05) — make both per-invocation.
6. **Decide the tax story.** `HallSale2` is empty over 38 bills; confirm whether banquet tax was
   intentionally zero-rated or the writer never ran before porting any tax report
   (F-BANQ-06).
7. **Model the group node.** Either register an `Indoor Catering` type-`3` row explicitly or keep
   the synthesised parent — but do it identically for ODC so one loop can build both subtrees
   (F-BANQ-03, F-BANQ-09).
8. **Report layer**: keep `GRepFormName` as the stable key — it already maps 1:1 to
   `REPORTS_TXT\<name>.txt`. Replace Crystal behind the same key. Watch the
   `BookingDetail` name collision (F-BANQ-08).
9. **`GuestComments`** is a guest master with a `Comments` column, not a comments log; if a real
   log is wanted, design it rather than reusing this 0-row table.
10. **Do not migrate credential handling** from this code; no credential values are documented here
    by design.
