# 09_Banquet — VB6 Logic

Decompiled sources: `EXTRAS.text` (primary), `HMS.bas` (parallel decompile).
Object boundaries come from the decompiler marker line `'Object: <FormName>` — the literal form
`'Object: Name` at column 0. `[VERIFIED-VB6]`

Obfuscation caveats (same as module 11): procedure names are `Proc_<mod>_<idx>_<addr>`,
`*_UnknownEvent_*` or `loc_XXXXX:`. The **reliable** signals are SQL string literals, control names
(`Me.FGrid`, `Me.TopCtrl1`, `Me.Recordset15`), and `MsgBox` captions.

---

## 1. Object map (banquet-owned forms)

| Object | `'Object:` line | Ends before | Role |
|---|---|---|---|
| `resBanq` | 371338 | 372637 | banquet revenue list |
| `CateringBooking` | 372637 | 377797 | **Catalog Selection** |
| `FrmEventMast` | 378923 | 379697 | Events master |
| `FrmHallItemCatMast` | 379697 | 381176 | banquet Menu Category |
| `HallItemGroupMast` | 381176 | 381985 | banquet Item Group |
| `HallMenuItemEntry` | 381985 | 383977 | banquet Menu Item |
| `HallSundry` | 383977 | 386324 | Banquet Bill Sundry Setting |
| `FrmBookingInquiry` | 386324 | 389222 | Booking Inquiry |
| `HallMenuCatalog` | 389222 | 391606 | Catalog Master |
| `HallBooking` | 393015 | 397814 | **Banquet Booking** |
| `HallBill` | 397814 | 406929 | **Banquet Billing** |
| `HallAdvanceDepDialog` | 406929 | 411351 | **Banquet Settlement** + **Banquet Booking Advance** |
| `HallEstimate` | 411351 | 418125 | legacy estimate bill |
| `BanqAvailability` | 418142 | 419544 | Venue Availability |
| `HallChefPreCosting` | 419544 | 422753 | **Chef Pre-Costing** |
| `hAdvanceDepDialog` | 439406 | 443815 | shared hall advance dialog |
| `hAdvanceDepDialogSecondry` | 443815 | 446632 | secondary variant |
| `frmGuestComments` | 454521 | 456080 | Guest Comments |
| `HallBillEstimate` | 579496 | 593783 | **Banquet Estimate Billing** |
| `FrmVenueMast` | 631225 | 633079 | Venue Master |
| `FrmVenueFeat` | 633079 | 634572 | Venue Features |
| `rHallRepView` | 777000 | 800470 | all Crystal reports for module 12 |
| `RsTouchScreenBookingEntry` | 800470 | 835729 | touch-screen booking |
| `BanqModule` | 835729 | 883433 | advance-dialog launcher (shared instances) |

Cross-module objects banquet code also touches: `FrmItemGroupMastRaw` (377797), `FrmItemCatMast`,
`FrmItemMastRaw`, `RSSaleBill1` (430496), `FrmMergeCharge` (437691), `UserPermission` (460883),
`ModuleAdd` (475662), `POSAdvanceDepDialog` (598418). `[VERIFIED-VB6]`

## 2. The `ModuleAdd` caption ladder

`ModuleAdd` starts at **EXTRAS.text L475662**. Banquet registrations occupy
**L476659–L476789**; the **dispatch** half runs **L479447–L480197** and is a flat
`If (var_188 = "<caption>") Then ... Set var_90 = New <Form> ... Call var_90.Show` chain.
`[VERIFIED-VB6]`

Two module flags bracket each registration: `var_148 = "BANQ"` (e.g. L476660) or
`var_148 = "ODC"` (L476721). The report fork re-reads the sibling flag `var_AC`:

```vb
If ((var_AC = "BANQ") Or (var_AC = "ODC")) Then
    Set var_90 = New rHallRepView
    var_90.GRepFormName = "<Hall report>"
Else
    Set var_90 = New rPOSRepView
    var_90.GRepFormName = "<POS report>"
End If
```
seen at L479455-region (`Tax Report`), L479588-region (`Cover Analysis`),
L479650-region (`Collection Summary`), L479692-region (`Tax Summary`),
L479827-region (`Sales Register`), L477828-region (`Menu Category`),
L477929-region (`Item Group`). `[VERIFIED-VB6]`

## 3. Per-form behaviour

### 3.1 `HallBooking` (Banquet Booking, L393015–L397814)

- Lookups on load: `MarketSeg` (L393460), `VenueMast` (L393465), `BussSource` (L393485),
  `FunctionType` (L393490) — all filtered `LogSite_Code in ('<site>')`. `[VERIFIED-VB6]`
- Save: `Delete From HallBook Where Docid=…` (L394978) → `Delete From HallBook1 Where Docid=…`
  (L394986) → inserts. Detail lines go to `HallBook1` (0 rows in production).
- Availability: `Delete From VenueOCC Where FPDocID=…` (L394994), then re-insert
  `Insert Into VenueOCC(FPDocid,VenuCode,FromDate,ToDate,FromTime,ToTime,Site_Code,U_Name,
  U_EntDt,U_AE,LogSite_Code)` (L396053). `[VERIFIED-VB6]`
- Inquiry linkage: `Select Code,PartyName as Name From BookingInquiry where code not in
  (select InquiryCode from HallBook) and Status='Active'` (L395019, L395025, L396124) — an inquiry
  can be converted to **one** booking only. `[VERIFIED-VB6]`
- Advance check: `SELECT ISNULL(Sum(AmtCr),0) FROM PayChargeH WHERE VType='AD' AND
  ContraDocId='…'` (L397711). `[VERIFIED-VB6]`
- SMS: `Select BanqBookingMsg,BanqBookingCancelMsg,SendingMessageText from SMSEnviro WHERE
  LOGSITE_CODE='…'` (L397738) — one `SMSEnviro` row exists. `[VERIFIED-SQL]`
- Voucher class for the booking is `VType IN ('IBOOK','OBOOK')` — see L421169/L421173.

### 3.2 `HallBill` (Banquet Billing, L397814–L406929)

- Voucher class: `Select Description,V_Type From Voucher_Type Where NCat='BBILL' AND
  rESTCODE='…'` (L400311). `[VERIFIED-VB6]`
- Re-save wipe order: `SunTran` (L400388) → `SunTranH` (L400396) → `HallStock` (L400404) →
  `HallSale1` (L400412). Same delete-then-insert pattern as POS. `[VERIFIED-VB6]`
- Round-off policy read from `RoundOffSetting WHERE ModuleName='Banquet Bill'`
  (L404241, L404482). `[VERIFIED-VB6]`
- Printer: `Select * from PrinterSetup Where RestCode='<site>FOM'` (L405798). `[VERIFIED-VB6]`
- `eInvoiceBill1` guard: `Select Count(*) From eInvoiceBill1 Where DocId='…' And Isnull(IRN,'')=''`
  (L399171) / `Delete From eInvoiceBill1 Where DocId='…'` (L399176). `[VERIFIED-VB6]`
- Uses `FAEnviro` (L406071) for front-office financial settings.

### 3.3 `HallAdvanceDepDialog` (Settlement L479785, Booking Advance L479816; form L406929–L411351)

Two menus, one object:
- **Settlement**: no extra property set beyond `MDIRestCode`.
- **Booking Advance**: `AdvType = "AD"`, `OpenMode = 2`, `OpenType = 6` (L479817-region).

Behaviour:
- `Select ContraDocId FROM PayChargeH Where VType='AD' AND Docid='…'` (L407400) then
  `Delete From PayChargeH Where VType='AD' AND Docid='…'` (L407405). `[VERIFIED-VB6]`
- `UPDATE HallSale1 SET Advance=<n> WHERE BookDocId='…'` (L407730, L407883) — the advance is
  denormalised onto the bill header. `[VERIFIED-VB6]`
- Revenue validation: `SELECT * FROM REVMAST WHERE CODE='<site>TOUT'` (L407778, L407931);
  failure → `System Defined Revenue is not defined` (L407788, L407941). `[VERIFIED-VB6]`
- Receipt number stamped back onto the booking:
  `Update hallbook set rectno=<n>,RectDate=<d> ... Order By VP.Date_From DESC` (L408005).
  `[VERIFIED-VB6]`
- `Delete from Ledger where Docid='…' AND V_Type='<AdvType>'` (L410586). `[VERIFIED-VB6]`
- Settlement gate: `Please Fill Payment Details Before Saving..` (L407640). `[VERIFIED-VB6]`

### 3.4 `HallChefPreCosting` (L419544–L422753)

- Item pool: `Select I.Code,I.Name,I.Unit,IG.Name as ItemGroup,IC.CatType,IR.Rate as IRate,
  IC.RoundOff as Roundoff1,I.Kitchen as DepartCode From (((ItemMast I left join ItemGrp IG on
  I.ItemGroup=IG.Code) Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join ItemRate IR
  on IR.ItemCode=I.Code And IR.RestCode=I.RestCode) where IR.RestCode='…'`
  — **EXTRAS.text L420006**. `[VERIFIED-VB6]`
- Working table is `HallPreCosting` (PK `(Docid,Sno)`, 27 cols, **0 rows** `[VERIFIED-SQL]`):
  - `Delete From HallPreCosting Where Docid='…'` — **L420476** and **L420882**
  - `Insert Into HallPreCosting(DocId,SNo,VType,VTIME,VPrefix,Site_Code,VNo,VDate,RestCode,Item,
    Qty,Rate,Amount,VoidYN,…)` — **L420928**
  - `Select S.*,I.Name as ItemName From HallPreCosting S Left Join ItemMast I On S.Item=I.Code
    And S.RestCode=I.RestCode Where S.DocId='…'` — **L422326**
- Search list joins booking → voucher type → pre-costing:
  `Select Distinct HC.Docid as SearchCode,S.VNo as FPNo,S.VDate as V_Date,PartyName,
  S.fRbOOKDATE,S.TOBOOKDATE From ((HallBook S iNNER Join Voucher_Type V On (S.VType= V.V_Type AND
  S.LogSite_Code=V.LogSite_Code)) Inner Join HallPreCosting as HC on S.Docid=HC.Contradocid …`
  — **EXTRAS.text L420545**. `[VERIFIED-VB6]`
- Un-costed bookings: `… and VType='IBOOK' AND DocId NOT IN (SELECT DISTINCT CONTRADOCID FROM
  HallPreCosting) Order by VNO` (L421169) and the `OBOOK` twin (L421173). `[VERIFIED-VB6]`
- Advance / venue detail:
  - `Select VC.*,D.Name as VenuName From VenueOCC VC Left Join VenueMast D On
    VC.VenuCode=D.Code Where VC.FPDocId='…'` — **L420620** and **L420651**
  - `Select AmtCr,PayType,VNo,VDate FROM PayChargeH Where VType='AD' AND ContraDocId='…'`
    — **L420623**
  - `Select HB.*,HB1.SNo,HB1.Item,HB1.QtyIss,HB1.Rate,HB1.Amount As LineAmt,HB1.Unit,
    HB1.TaxPer AS LineTaxPer,HB1.TaxAmt,HB1.DiscPer As LineDiscP,HB1.DiscAmt as LineDiscA,
    HB1.Remarks,HB1.Total As LineTotal,I.name As IName From HallBook … VenueOCC …`
    — **L420616**
  - `Select S.* From HallBook S Where S.Docid='…'` — L422172
- Validation captions: `Duplicate Item Not Allowed` (L422742), `Duplicate Bill No.` (L422468),
  `V.Date Not Between Current Fin. Year` (L419894). `[VERIFIED-VB6]`

### 3.5 `BanqAvailability` (Venue Availability, L418142–L419544)

- `Select * From FAEnviro` — **L418498**. `[VERIFIED-VB6]`
- `Select * from VenueMast where DepartCode='…' order by name` — **L419176**. `[VERIFIED-VB6]`
- Occupancy counted via `Select COunt(*) From VenueOCC S WHERE … VenuCode='…'` (L388643,
  L388666 in `FrmBookingInquiry`; L397327, L397351 in `HallBooking`). `[VERIFIED-VB6]`

### 3.6 `FrmBookingInquiry` (L386324–L389222)

- Lookups: `VenueMast` (L386503), `MarketSeg` (L386508), `BussSource` (L386513),
  `FunctionType ... Status='Active'` (L386534).
- Capacity: `Select * FROM VenueCapacity Where VenueCode='…'` (L387354).
- Inquiry teardown: `Delete From BookingInquiry Where Code='…'` (L388069) +
  `Delete From BookingDetail Where Code='…'` (L388070).
- Gate: `Please Select Venue.` (L387984).

### 3.7 `CateringBooking` (Catalog Selection, L372637–L377796)

- `Select * from Enviro where lOGSite_Code='…'` (L372699).
- Booking pull: `Select S.* From HallBook S Where S.Docid='…'` (L376748);
  `Select Distinct DocId,V_Type,V_No From HallBook Where DocID='…'` (L377734).
- Venue detail: `Select VC.*,D.Name as VenuName From VenueOCC VC Left Join VenueMast D …`
  (L373790, L374613).

### 3.8 `HallMenuCatalog` (Catalog Master, L389222–L391605)

- `Delete From CatalogMast Where Code='…'` (L390465). `CatalogMast` = 11 cols, **0 rows**.
- Currency: `Select NCUR from enviro WHERE LOGSITE_CODE='…'` (L391990).

### 3.9 `FrmVenueMast` / `FrmVenueFeat` (L631225 / L633079)

- Cascade deletes: `VenueMast` (L631516) + `VenueFeatures` (L631524) on save;
  `VenueMast` (L631815) + `VenueFeatures` (L631816) + `GodownMast` (L631817) on delete.
- Capacity: `SELECT Count(*) FROM VenueCapacity WHERE VenueCode='…'` (L631845),
  `Delete From VenueCapacity Where VenueCode='…'` (L631850),
  `SELECT DISTINCT([Capacity]) FROM VenueCapacity` (L632912).
- Feature codes are generated: `Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS
  MyCode From FeatureMast` (L633367).
- Guard: `VenueCapacity` usage checked against `VenueOCC` before delete (L631504).
- `FeatureMast` and `VenueFeatures` both hold **0 rows** `[VERIFIED-SQL]`.

### 3.10 `BanqModule` (L835729–L883433)

Public entry `Proc_263_0_F692A0(...)` wires one of two **shared, undeclared-New** dialogs:
`hAdvanceDepDialog` or `hAdvanceDepDialogSecondry`, selected when `arg_2C = "S"`
(EXTRAS.text L835735-region). Same singleton pattern as `MemVar_1F81F64` in POS.
`[VERIFIED-VB6]` + `[INFERRED]` (declaration not present in the decompile)

### 3.11 `rHallRepView` (L777000–L800470)

Report viewer. Banquet menu entries set `GRepFormName` then `Show` — full table in
`..\reports\reports.md`. `[VERIFIED-VB6]`

## 4. Resolved flags

| ID | Question | Resolution | Evidence |
|---|---|---|---|
| N-BANQ-01 | Which form is the duplicated `Catalog Selection` row? | **`CateringBooking`** for both rows; the intended `HallChefPreCosting` is orphaned | dispatch If L479764 → L479765 vs. If L479771 → L479772; registrations L476667/L476670 and L476738/L476741 |
| N-BANQ-02 | What does `var_124` do? | Temporary caption override set immediately before a registration call | L476669 → L476670, L476740 → L476741 |
| N-BANQ-03 | Is `HallBook1` used? | Written (L394986 delete, insert path in `HallBooking`) but **0 rows** in `MOONData2627` | `tables_rowcounts.txt` |
| N-BANQ-04 | Do Indoor and ODC share report forms? | Yes — same `GRepFormName` strings, different viewer only via `var_AC` | L479827-region, L479588-region |
| N-BANQ-05 | Is `HallEstimate` reachable from the banquet menu? | No menu caption dispatches to it; `Banquet Estimate Billing` opens **`HallBillEstimate`** | If L479809 → `New HallBillEstimate` L479810; no `New HallEstimate` anywhere |
| N-BANQ-06 | Are venue feature screens live? | Code present (`FrmVenueFeat`, `FeatureMast`, `VenueFeatures`) but all three tables hold **0 rows** | `tables_rowcounts.txt` |

## 5. Gaps / not determinable `[UNKNOWN]`

- Exact business meaning of menu row type `2` (`Banquet Settlement`) — `[UNKNOWN] — no legend for
  the type column exists in `19_VB6_Logic`; only POS/restaurant rows use it too`.
- Whether `HallBook1` detail lines were ever populated historically — `[UNKNOWN] — only the
  current snapshot was provided`.
- Renderer behind `rHallRepView` beyond `GRepFormName` + Crystal — `[UNKNOWN] — no .rpt files in
  17_Reports, only REPORTS_ANALYSIS.md`.
- Declaration sites for `hAdvanceDepDialog` / `hAdvanceDepDialogSecondry` as `As New` —
  `[UNKNOWN] — 0 hits for "As New hAdvanceDepDialog"`.
- Whether the two identical `Catalog Selection` menu rows are visible in the running app (vs.
  deduplicated by the menu builder) — `[UNKNOWN] — no screenshot of the Banquet menu group shows
  both rows`.
