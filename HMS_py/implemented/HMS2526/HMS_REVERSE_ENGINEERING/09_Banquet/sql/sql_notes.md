# 09_Banquet — SQL notes

Companion to `queries.sql`. Explains *how* each statement was recovered and what could not be.

Evidence tags: `[VERIFIED-VB6]` (literal in `EXTRAS.text` / `HMS.bas`),
`[VERIFIED-SQL]` (`18_Database\*` extracts), `[VERIFIED-UI]`, `[VERIFIED-CONFIG]`,
`[INFERRED]`, `[UNKNOWN]`.

---

## 1. Extraction method

1. Object ranges were fixed from the `'Object: <FormName>` markers.
2. Inside each range, every line matching `Execute … (Select|Insert|Update|Delete)` and every
   `var_* = "Insert Into …"` / `"Delete From …"` assignment was read at its exact line number.
3. SQL was copied verbatim; VB6 concatenation points were replaced by `<placeholders>` and the
   source line number kept in a trailing comment.
4. **Nothing was executed.** Schema facts come only from the pre-generated extracts in
   `18_Database`. `[VERIFIED-SQL]`

## 2. Statement inventory by object

| Object (range) | SELECT | INSERT | UPDATE | DELETE | Evidence |
|---|---|---|---|---|---|
| `FrmVenueMast` 631225–633078 | 6 | 3 | 0 | 6 | `[VERIFIED-VB6]` L631516–L632912 |
| `FrmVenueFeat` 633079–634571 | 5 | 1 | 0 | 0 | `[VERIFIED-VB6]` L633278–L633753 |
| `FrmEventMast` 378923–379696 | 4 | 0 | 0 | 0 | `[VERIFIED-VB6]` L379110–L379609 |
| `FrmHallItemCatMast` 379697–381175 | 2 (`RevMast`) | 0 | 0 | 1 | `[VERIFIED-VB6]` L380469, L380493 |
| `HallMenuItemEntry` 381985–383976 | 2 | 0 | 0 | 2 (`ItemMast`,`ItemRate`) | `[VERIFIED-VB6]` L382061, L382299, L382307, L383709 |
| `HallMenuCatalog` 389222–391605 | 4 | 2 | 0 | 1 | `[VERIFIED-VB6]` L389967–L391990 |
| `FrmBookingInquiry` 386324–389221 | 7 | 2 | 0 | 2 | `[VERIFIED-VB6]` L386503–L388883 |
| `HallBooking` 393015–397813 | 11 | 2 | 0 | 3 | `[VERIFIED-VB6]` L393308–L397738 |
| `HallBill` 397814–406928 | 12 | 3 | 0 | 9 | `[VERIFIED-VB6]` L399171–L406860 |
| `HallAdvanceDepDialog` 406929–411350 | 7 | 0 | 2 | 2 | `[VERIFIED-VB6]` L406997–L411137 |
| `HallEstimate` 411351–418124 | 6 | 3 | 0 | 4 | `[VERIFIED-VB6]` L411748–L415997 |
| `BanqAvailability` 418142–419543 | 2 | 0 | 0 | 0 | `[VERIFIED-VB6]` L418498, L419176 |
| `HallChefPreCosting` 419544–422752 | 9 | 1 | 0 | 2 | `[VERIFIED-VB6]` L420006–L422742 |
| `CateringBooking` 372637–377796 | 5 | 2 | 0 | 0 | `[VERIFIED-VB6]` L372699–L377734 |
| `HallBillEstimate` 579496–593782 | 9 | 4 | 0 | 8 | `[VERIFIED-VB6]` L579793–L591141 |
| `mdlDataTransfer` 463991–464268 | 0 | 3 | 0 | 2 | `[VERIFIED-VB6]` L552837–L586428 |

Counts are of **distinct literal sites** read in the range, not of statements that would run at
runtime. `[VERIFIED-VB6]`

## 3. Tables owned / written by module 12

| Table | PK | Cols | Rows | Written by |
|---|---|---|---|---|
| `HallBook` | `(DocId)` | 74 | **147** | `HallBooking`, `CateringBooking` |
| `HallBook1` | `(DocId,Sno)` | 37 | **0** | `HallBooking` (generic writer L394993), `CateringBooking` (L374182/L374242) |
| `HallSale1` | `(DocId)` | 46 | **38** | `HallBill` (L401269), `HallEstimate` (L412344) |
| `HallSale1Est` | `(DocId)` | 42 | 0 | `HallBillEstimate` (L580610) |
| `HallSale2` | `(DocId,Sno,SNo1)` | 18 | 0 | `HallBill` (L401409) |
| `HallStock` | `(DocId,Sno)` | 35 | 0 | `HallBill` (L401361), `HallEstimate` (L412431) |
| `HallStockEst` | — | — | 0 | `HallBillEstimate` (L580699) |
| `HallPreCosting` | `(Docid,Sno)` | 27 | 0 | `HallChefPreCosting` (L420928) |
| `SunTranEst` / `SunTranHEst` | — | — | 0 / 0 | `HallBillEstimate` (L580753 / L580800) |
| `VenueOCC` | `(FPDocid,VenuCode)` | — | **216** | `HallBooking` (L396053) |
| `VenueMast` | `(Code)` | 15 | **10** | `FrmVenueMast` (L631835) |
| `VenueCapacity` | `(VenueCode,Capacity,Site_Code)` | 8 | **32** | `FrmVenueMast` (L631860/L631887) |
| `VenueFeatures` | — | 7 | 0 | `FrmVenueMast` (L631940) |
| `FeatureMast` | — | 9 | 0 | `FrmVenueFeat` (L633384) |
| `BookingInquiry` | `(Code)` | 30 | 0 | `FrmBookingInquiry` (L388129) |
| `BookingDetail` | `(Code,VenueCode)` | 10 | 0 | `FrmBookingInquiry` (L388153) |
| `CatalogMast` | `(Code,ItemCode)` | 11 | 0 | `HallMenuCatalog` (L390479/L390586) |
| `GuestComments` | `(Code,LogSite_Code)` | 22 | 0 | `frmGuestComments` `[UNKNOWN]` |
| `PayChargeH` | `(DocId,SNo)` | 46 | (advances) | `HallAdvanceDepDialog` (delete L407405) |
| `Ledger` | — | — | — | `HallAdvanceDepDialog` (delete L410586) |
| `LedgerMerge` / `LedgerMMerge` | — | — | — | `mdlDataTransfer` (L586427/L586428) |

`SunTran`, `SunTranH`, `ItemMast`, `ItemRate`, `ItemGrp`, `ItemCatMast`, `Voucher_Type`,
`RoundOffSetting`, `PrinterSetup`, `Enviro`, `FAEnviro`, `SMSEnviro`, `eInvoiceBill1`,
`FunctionType`, `MarketSeg`, `BussSource`, `Depart`, `Revmast`, `SundryType` are **shared** with
other modules. `[VERIFIED-SQL]` + `[VERIFIED-VB6]`

**0 foreign keys declared across the whole database** — `18_Database\foreign_keys.txt` is an
empty file. `[VERIFIED-SQL]`

## 4. Data observations `[VERIFIED-SQL]`

| Observation | Implication `[INFERRED]` |
|---|---|
| `VenueOCC` (216) > `HallBook` (147) | one booking can occupy several venue/date slots; PK `(FPDocid,VenuCode)` allows one venue per booking-doc, so the surplus is date-range rows across venues |
| `HallSale1` = 38 but `HallSale1Est` = 0 | estimate billing path never used in production |
| `HallBook1` = 0 while `HallBook` = 147 | itemised booking detail lines were never written — banquet bookings are header-only in this dataset |
| `HallSale2` = 0 while `HallSale1` = 38 | no tax lines for any banquet bill — tax computation produced nothing |
| `HallStock` = 0 | banquet stock consumption never recorded |
| `HallPreCosting` = 0 | Chef Pre-Costing never run |
| `BookingInquiry` / `BookingDetail` = 0 | inquiry feature unused; all bookings were created directly |
| `CatalogMast` = 0, `GroupCatalog` = 4 | catalog selection has no per-item rows; only 4 group-level catalog rows |
| `VenueFeatures` = 0, `FeatureMast` = 0 | venue-feature master exists in code/UI but has no data |
| `GuestComments` = 0 | guest comments screen never saved a row |
| `FunctionType` = 8, `VenueMast` = 10, `VenueCapacity` = 32 | venue setup is populated (~3 capacities per venue) |
| `SMSEnviro` = 1 | SMS templates configured for exactly one site |

## 5. Caveats

1. **Injection surface.** Every statement concatenates UI strings. Example:
   `Delete From VenueMast Where Code='<SearchCode>'` (L631516). Migration must bind parameters.
2. **Delete-then-insert re-save.** `HallBooking` (L394978/L394986/L394994) and `HallBill`
   (L400388–L400412 and the helper block L401165–L401184) wipe children before writing parents,
   with **no transaction boundary visible** in the decompile.
   `[UNKNOWN] — searched for BeginTrans/CommitTrans in the module-12 object ranges`. Combined with
   0 FKs, an interrupted save can orphan detail rows.
3. **Two writers for `HallSale1`** — `HallBill` (L401269) and `HallEstimate` (L412344) build
   near-identical inserts; the estimate variant omits `CGST/SGST/IGST`.
   `[VERIFIED-VB6]` — column lists differ.
4. **Generic helper hides SQL.** `Proc_154_5_10DBE9C(<conn>, "HallBook1", "DocId", …)` (L394993)
   and `Method_TopCtrl1_UnknownEvent_*` (L401165–L401184, L420882) assemble statements at run
   time — their literal SQL is not in the file. `[UNKNOWN] — helper bodies are in `HMS.bas` but
   were not expanded for this module`.
5. **Report-internal SQL is not recoverable here.** `rHallRepView` only receives `GRepFormName`;
   the SELECT lives in the Crystal `.rpt`/`.ttx`, which are absent from `17_Reports`.
   `[UNKNOWN] — 17_Reports contains only REPORTS_ANALYSIS.md`.
6. **Placeholders are not validated.** Type/NULL behaviour of `<placeholders>` is `[UNKNOWN]` —
   no live SQL was run, per task rules.
7. **`GuestComments` write path not isolated.** `[UNKNOWN] — searched 454521..456080 for
   INSERT/UPDATE/Delete on GuestComments; no literal found`.

## 6. Exclusions

- No credential, `UserPermission` row content, or GUI-password value is reproduced.
- No `SELECT` from `UserPermission` is expanded beyond the column name already cited by module 11.
- No statement from modules other than 12 is transcribed here unless banquet code itself executes
  it (shared tables are noted in §3).
