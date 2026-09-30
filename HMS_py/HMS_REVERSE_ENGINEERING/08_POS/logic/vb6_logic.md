# 08_POS — VB6 Logic (decompiled)

Source of truth: `EXTRAS.text` (decompiled VB6 project). Line numbers are 1-based lines of that file.
Object boundaries are the `'Object: <Name>` markers emitted by the decompiler.
Evidence tags: `[VERIFIED-VB6]`, `[VERIFIED-SQL]`, `[INFERRED]`, `[UNKNOWN]`.

> Note on procedure names: the decompiler renamed every event handler to `Method_*_UnknownEvent_*` /
> `Proc_NNN_*` opaque labels, so handler names cannot be trusted. SQL string literals, control names
> (`Me.FGrid`, `Me.Txt`, `Me.LblVPrefix`, `Me.TopCtrl1`) and MsgBox captions *are* reliable. `[VERIFIED-VB6]`

## Object map (POS-relevant forms) `[VERIFIED-VB6]`

| `'Object:` | EXTRAS.text start line | Next object |
|---|---|---|
| `MDIForm1` | L4 | L59416 |
| `RsKOTEntry` | L59416 | `pPBill` L70625 |
| `pPBill` | L70625 | L107258 |
| `RsTableMast` | L107258 | L183116 |
| `OutLetMast` | L183116 | `Hotlib` L224435 |
| `POSBillReprint` | L303715 | `RSSaleBill` L320025 |
| `RSSaleBill` | L320025 | `resBanq` L371338 |
| `ModuleAdd` | L475662 | L488666 |
| `RsBookingEntry` | L488666 | `RsBookingEntryAdvance` L497654 |
| `RsBookingEntryAdvance` | L497654 | `RsPOSDisplay` L497725 |
| `RsPOSDisplay` | L497725 | `RSSaleBillDisplay` L508415 |
| `RSSaleBillDisplay` | L508415 | `FrmPOSBillDeletion` L513954 |
| `FrmPOSBillDeletion` | L513954 | `pHappyHours` L515216 |
| `pHappyHours` | L515216 | L579496 |
| `FrmPOSBillModificationDatewise` | L593783 | L594844 |
| `FrmPOSBillModificationItemGroupwise` | L594844 | L595905 |
| `FrmPOSSaleDataTransfer` | L595905 | `POSAdvanceDepDialog` L598418 |
| `POSAdvanceDepDialog` | L598418 | `FrmDenomination` L602545 |
| `FrmDenomination` | L602545 | `RsTbChange` L609682 |
| `RsTbChange` | L609682 | `RsKOTTransfer` L610453 |
| `RsKOTTransfer` | L610453 | `RsStatusScreen` L611306 |
| `RsStatusScreen` | L611306 | `RsTokenEntry` L613796 |
| `RsTokenEntry` | L613796 | `RsPOSDisplayNew` L633841 |
| `RsPOSDisplayNew` | L633841 | `RsTouchScreenKOTEntry` L789689 |
| `RsTouchScreenKOTEntry` | L789689 | `RSTouchScreenSaleBill` L803242 |
| `RSTouchScreenSaleBill` | L803242 | (next) |
| `RsPaymentReceice` | L982220 | (end region) |

`RsSaleBillSplit` L465230, `RSSaleBill1` L430496, `HallBillEstimate` L579496 are POS-adjacent.

---

## 1. KOT Entry — `RsKOTEntry` (L59416–L70624) `[VERIFIED-VB6]`

**Purpose:** kitchen order ticket per outlet/table/room.

### Insert statement (L62660)
```sql
Insert Into KOT(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,
  Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,Remarks,
  ContraDocID,ContraSno,Logsite_Code,NCType,Printed,FreeSno,SchemeCode,Description,Party,
  ItemRestCode,TokenNo,GuarAtt) Values (...)
```
Built by string concatenation across L62660–L62675 and executed at L62675
(`unk_588717.Execute CStr(var_1060 & "'," & ... & ")"), var_1124, -1`). `[VERIFIED-VB6]`

`U_AE` is `IIf(var_9C="Add","A","E")` (L62671 region) — add vs. edit marker.

### Supporting statements
| Statement | Line |
|---|---|
| `Update KOT SET PRINTED='Y'` (after print) | L67378, L67384 |
| `Update KOT Set NCKOT=...` | L62574 |
| `Insert Into KOTLog (...)` | L61894 |
| `Update KOTLog ... Set SeqNo = (Select Max(SeqNo)+1 ...)` pattern | L62437, L62452 |
| Pending-KOT pre-check `Select ... Max(GuarAtt) ... From KOT Where Pending='Y'` | L60604, L61761 |
| `Select Kotyn from Depart where Code='...'` (outlet KOT switch) | L610165 (object `RsTbChange`) |

### Validation messages (MsgBox captions, all `[VERIFIED-VB6]`)
| Line | Caption |
|---|---|
| L60308 | `Vr. No Can Not Be 0` |
| L60348 | `Duplicate Voucher No.` |
| L60390 | title `Date Validate` |
| L60649 | `Guest Room Bill Already printed for this Room` |
| L61624 / L61857 | `Are You Sure To Delete?` |
| L61781 | `Cancel ?` title `Terminate Process` |
| L61969 | title `**** Modification Not Allowed ****` |
| L62258 | `Open RestaurantChange Master` |
| L62312 | `Guest Room Bill Already printed for this Room` |
| L62321 | `Steward Name is required field.` |
| L62337 | `Fill Item Name ` |
| L62348 | `Item Detail Required ` |
| L62407 | `You must Enter a Valid Reason of Editing` |
| L62923 | `Print KOT ?` (Yes/No, `&H24`) |
| L63532 | `KOT Not Configured for selected Restaurant` |
| L64680 | `This Smart Card is Not Registered!` |
| L65753 | `Please Check Printer Setting of Central KOT For <name>.` |
| L65988 | `Sale Bill Already Generated !!` |
| L67889 | `Do you Want to Proceed with Negative Stock ?` (`&H114` = Yes/No/Cancel) |
| L68565 | `Duplicate KOT No.` |
| L68581 | `Quantity Required in Row <n>` |
| L68720 | `Save Record ?` |
| L68818 | `Duplicate Item Not Allowed` |

Stock check: `Select count(*) from Stock Where KOTDocId='...'` is used by the token/stock guard
(L613991, L613997 in `RsTokenEntry`). `[VERIFIED-VB6]`

### Print config read
`Select CKOTPrintYN,NoOfKot From Depart Where Code='...'` (L614295, `RsTokenEntry`);
`Select Printer,PrintType ... From Depart` (L614351). `[VERIFIED-VB6]`

---

## 2. Table Change Entry — `RsTbChange` (L609682–L610452) `[VERIFIED-VB6]`

Moves open KOTs from one table/room to another.

| Statement | Line |
|---|---|
| `Update Kot Set ROOMNO='<new>', U_Name1=..., U_EntDt1=...` | L609811, L609898 |
| `Select Name from roommast where (LOGSITE_CODE='...') and TYPE='TB' AND code='...'` | L609990, L610012, L610032 |
| `Select Kotyn from Depart where Code='<RestCode>'` | L610165 |
| Occupied-table list: `Select T.Code as Code,T.Name,AA.WAITERNAME,T.RestCode From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,WAITER,WAITER.NAME AS WAITERNAME FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='...')` | L610174, L610183 |
| Prompt `Select A Vacant Table` | L609910 |

Tables are stored in `RoomMast` with `TYPE='TB'` — there is **no** `TableMast` table in the DB
(`columns_dictionary.txt` has 277 tables, none named `TableMast`). `[VERIFIED-SQL]`

---

## 3. Sale Bill Entry — `RSSaleBill` (L320025–L371337) `[VERIFIED-VB6]`

**Purpose:** settles a KOT set into a bill and posts tax/sundries.

### Save path
| Statement | Line |
|---|---|
| `Delete From Sale1Log ...` (clear previous log for the doc) | L324095 |
| `Delete From Sale1 Where DocId=...` (re-save wipes header) | L324253 |
| `Insert Into Sale1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,FolioNo,FolioNoDocId,RoomCat,RoomType,RoomNo,GuarAtt,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,ServiceTax,CGST,SGST,IGST,AddAmt,DedAmt,RoundOff,NetAmt,KOTNO,TokenNo,U_Name,U_EntDt,U_AE,VTime,Waiter,DelFlag,LOGSITE_CODE,Remark,DiscRemark,EditRemark,PhoneNo,CustName,Addr1,Addr2,CashRecd,BookNo,CardNo,AU_Name,AU_EntDt) Values (...)` | L324352 |
| `Insert Into Sale1(... Party, GuarAtt, ..., Advance, Redemption, ...) Values (...)` — party variant | L324430 |
| `Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (...)` | L324754 |
| `Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,PartyCode,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LOGSITE_CODE) Values (...)` | L324811 |
| `Update KOT Set Pending='N', U_Name1=..., U_EntDt1=..., U_AE1='E' where docid='...'` | L324830 (also L359182, L431898, L431913) |
| `Update Sale1 set DelFlag='D'` | L323023 |
| `Delete From Sale1 Where IsNull(DelFlag,'') In ('D','Y') And Vdate=...` | L329344, L329374 |
| Success message `Updation Completed.` | L320304 |

`Sale2` = tax lines (one row per `TaxCode`), `SunTran` = bill-sundry/charge lines. `[VERIFIED-SQL]`
(`18_Database\columns_dictionary.txt` — `Sale2` 19 cols, `SunTran` 24 cols)

### Validation `[VERIFIED-VB6]`
| Line | Caption |
|---|---|
| L320115 / L320275 / L321359 / L321452 | `U are not Authorised to give discount` |
| L320118 / L320278 / L321362 / L321455 | `U are Authorised to give discount upto <n>` |
| L321253 | `InValid Bill No.` |
| L321638 | `No Data Found` |
| L321663 | `Applicable Only Browse Mode.` |
| L322125 | `Are You Sure To Delete?` |
| L322151 | `No Entries To Delete` |
| L322610 / L322658 | `Procedure Not Defined!` |
| L322612 / L322660 | `Smart Card Interface Not Defined!` |
| L322616 / L322664 | `Member Environment Settings NOT SET!` |

### Other Sale1 writers in the same object family
- `RSSaleBill1` (L430496): `Insert Into Sale1 ...` L431641, L431681; `Sale2` L431826; `SunTran` L431877;
  `Update KOT Set Pending='N'` L431898. `[VERIFIED-VB6]`
- `RsSaleBillSplit` (L465230): `Insert Into Sale1 ...` L468372, L468414; `Sale2` L468557;
  `SunTran` L468610. `[VERIFIED-VB6]`
- `pPBill` (L70625, room-service bill path): `Insert Into Sale2(...)` L73948;
  `Insert Into SunTran (...)` L73997. `[VERIFIED-VB6]`

### Split-bill guards (`RsSaleBillSplit`) `[VERIFIED-VB6]`
L466523 `Vr. No Can Not Be 0`, L466563 `Duplicate Voucher No.`,
L466604 `V.Date Not Between Current Fin. Year`, L466681 `This is not valid Room No.` + `Are you sure to continue...`,
L466895 `You Should Enter a Valid Reason for Deletion`, L468068 `Please define Cash Payment Type From Enviro`,
L468083 `Please fully adjust the Bill`, L468695 region `Printer & Bill Type Not Defined ` (L469196, L469522,
L469957, L470221, L470642).

---

## 4. Settlement / Payment Receive — `RsPaymentReceice` (L982220–…) `[VERIFIED-VB6]`

Reached from menu `Payment Receive` / `Payment Receive Entry (POS)` (dispatch L479411, L479433).

| Statement | Line |
|---|---|
| `Delete From PayCharge Where ...` (re-save wipe) | L983400, L983777 |
| `Insert Into PayCharge (...)` | L983860, L983926 |
| `INSERT INTO LEDGERADJ ...` | L983800 |
| `Update Voucher_Prefix Set Start_Srl_No = ...` | L984012 |

`PayCharge` has 61 columns incl. `PayCode, PayType, AmtCr, AmtDr, TipAmt, CardNo, ChqNo, FolioNo,
BillAmount, ContraDocID, SettleDate, BatchNo, MarkEntry, ModeSet, Split, RefDocId, TxnNo`
(`18_Database\columns_dictionary.txt`). `[VERIFIED-SQL]`

Validation `[VERIFIED-VB6]`:
L982730 `Guest Room Bill Already printed for this Room`, L982769 `Credit Card has been Expired`,
L982870 `Credit Not Allowed.`, L983732 `Please Fill Payment Details Before Saving..`,
L983766 `Voucher Not defined for Entry`, L983889 `System Defined Revenue is not defined`,
L983497 title `Validation`, L983421 title ` Deletion Error `.

`Voucher_Prefix` columns: `V_Type, Date_From, Date_To, Prefix, Start_Srl_No, Site_Code, U_EntDt,
LogSite_Code, U_Name, U_AE` (10 cols). `[VERIFIED-SQL]`

Voucher numbering across the whole project follows one pattern (428 occurrences of `Voucher_Prefix`
in `EXTRAS.text`): read `Select VT.Number_Method, VT.SerialNo_From_Table, VP.V_Type, VP.Date_From,
VP.Prefix, VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type
AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where ...` (EXTRAS.text L15644,
L48678) and then bump with `Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE=...`
(EXTRAS.text L22605, L22835, L40954, L41210). `[VERIFIED-VB6]`

> **Credential handling:** the password/GUI-credential values are intentionally not extracted or logged
> anywhere in this folder. `[VERIFIED-VB6]` policy note.

---

## 5. Settlement Entry (menu) — shared `MemVar_1F81F64` `[INFERRED]`

Dispatch EXTRAS.text L479937–L479967:
```
If (var_188 = "Settlement Entry") Then
  Set var_90 = MemVar_1F81F64
  var_90.LocalRestCode = Proc_165_5_1042728(arg_C)
  var_90.OpenType = 5
  var_90.OpenMode = 2
  var_104 = ... "Select 'B'+ShortName as Adv_Type From Depart Where Code='..."
  ... MsgBox "Voucher Type for this Department not Found" / Exit Sub
  var_90.AdvType = <Adv_type>
  Call var_90.Show
```
Identical logic runs in the MDI toolbar handler at EXTRAS.text L698-region
(`global_52 = MemVar_1F81F64`, `OpenType = 5`, `OpenMode = 2`, same `Select 'B'+ShortName ...`).

**Finding F-POS-01:** `MemVar_1F81F64` is referenced twice (EXTRAS.text L698, L479938) and never
assigned. Its property surface (`LocalRestCode`, `OpenType`, `OpenMode`, `Connection15`, `AdvType`,
`CAPTION`, `Show`) matches `POSAdvanceDepDialog` exactly (compare EXTRAS.text L479363–L479387).
`[INFERRED]` — a module-level `Dim ... As New POSAdvanceDepDialog`. Confirmation would require the
original `.frm`/`.bas` declaration text: `[UNKNOWN] — searched `EXTRAS.text` and `HMS.bas` for
`1F81F64` (2 hits, both reads) and for `As New POSAdvanceDepDialog` (no hit)`.

---

## 6. Order Booking / Advance — `RsBookingEntry`, `POSAdvanceDepDialog` `[VERIFIED-VB6]`

| Caption | Form | OpenMode / OpenType | VType lookup |
|---|---|---|---|
| Order Booking | `RsBookingEntry` | `OpenMode=2` | `Select V_Type from Voucher_Type Where Ncat='ORDER' and RestCode='...'` (L479387 region, L698-region `L142C3CE`) |
| Order Booking Advance | `POSAdvanceDepDialog` | `OpenMode=2`, `OpenType=5` | `Select V_Type from Voucher_Type Where Ncat='PADV' And RestCode='...'` (L479363 region, L779-region `L142C52A`) |

If no VType row is returned, both show `Contact to your S/w vendor` (L479386-region) or
`Advance Voucher Type Not Exists.` + `Plz. Contact to your S/w vendor` (L4795BF-region / EXTRAS.text
L142C5BF loc label). `[VERIFIED-VB6]`

`POSAdvanceDepDialog` also reaches hall records: `... And HallbOOK.Docid='<pDocId>'` (L598703) and
`... And ContraDocID='<pDocId>'` (L599013, L599017) — i.e. the same dialog settles banquet advances.
`[VERIFIED-VB6]`

---

## 7. Bill Reprint — `POSBillReprint` (L303715–L320024) `[VERIFIED-VB6]`

Validation: L303964 `Fill Bill No #`, L304139 bill-number range check, L305068
`Record is Deleted by somebody`. `[VERIFIED-VB6]`

## 8. Bill Lookup — `RSSaleBillDisplay` (L508415–L513953) `[VERIFIED-VB6]`

Read-only browse. Only `SELECT` statements exist in this object range (0 matches for
`Insert Into|Update |Delete From` over L508415–L513953). Queries include:

| Statement | Line |
|---|---|
| `Select * from PrinterSetup where SITE_CODE='...' AND RestCode='...'` | L509102 |
| `Select RateInclTax from depart where code='...'` | L509130 |
| `Select KOtYn from depart where Code='...'` | L509139, L509153 |
| `Select 'B'+ShortName From Depart Where Code='...'` | L509152, L509227 |
| `Select S.DocId as SearchCode,S.DocID,S.SITE_CODE,S.LOGSITE_CODE From Sale1 S INNER JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE AND S.LOGSITE_CODE=V.LOGSITE_CODE) WHERE S.LOGSITE_CODE='...'` | L509157 |
| `Select V_Type As Code, Description As Name, NCat From Voucher_Type WHERE V_Type='...'` | L509234 |

## 9. Bill deletion utility — `FrmPOSBillDeletion` (L513954–L515215) `[VERIFIED-VB6]`

| Statement | Line |
|---|---|
| `Delete from TempPosDel` | L513982 |
| `Insert into TempPosDel(...) Select DocId,Vno,Vdate from Sale1` | L513984, L514387, L514398 |
| Outlet picker: `Select ... From Depart Where OutletYN='Y' and RestType<>'Banquet' OR RestType='Kitchen'` | L514244 |
| Candidate bills: `Sale1 S Left Join PayCharge P ... Not In('PPOS','IPOS')` | L514898 |

Validation: L514173 `FromDate must be with in Financial Year`, L514190 `ToDate must be with in Financial
Year`, L514201 `FromDate must be less than ToDate`. `[VERIFIED-VB6]`

`TempPosDel` exists in the DB but is empty (0 rows). `[VERIFIED-SQL]` (`18_Database\tables_rowcounts.txt`)

## 10. Denomination — `FrmDenomination` (L602545–L609681) `[VERIFIED-VB6]`

| Statement | Line |
|---|---|
| `Update DenominationDetail Set Delflag='Y', Reason=...` | L602595 |
| `Select IsNull(Max(Sno),0)+1 from DenominationDetail WHERE LOGSITE_CODE='...'` | L602893 |
| `Delete From DenominationDetail WHERE Sno=<lblSerialNo> And LOGSITE_CODE='...'` | L602939 |
| `Select * from DenominationDetail where Sno='<SearchCode>' Order by SNO1` | L603819 |

`DenominationDetail` = 18 columns (`Sno, Sno1, Vdate, Name, DenominationType, DenominationValue,
DenominationUnit, DenominationTotal, Relation, Type, DelFlag, Reason, Remark, U_Name, U_AE, U_EntDt,
Site_Code, LogSite_Code`), 0 rows. `[VERIFIED-SQL]`

This object range also contains an unrelated issue-list block (`DepartWiseItemIssueList`
L604385/L604488/L604515/L604538, `GodownMast`/`ItemMast` L604639–L604653) — the decompiler merged a
shared helper into this range. `[INFERRED]`

## 11. POS Status — `RsStatusScreen` (L611306–L613795) `[VERIFIED-VB6]`

Live outlet totals. Key queries:
- Outlet list: `Select Code,Name,RestType From Depart where (LOGSITE_CODE='...' or LOGSITE_CODE='HO')
  And Resttype IN ('Outlet','Room Service') Order By RestType,Name` (L611554, L611557).
- Aggregation (L612350–L612381): a `FULL OUTER JOIN` of a `Sale1` aggregate (`Sum(GuarAtt) Sum(Total)
  Sum(Taxable) Sum(NonTaxable) Sum(NetAmt) Sum(Tax) Sum(ServiceCharge) Sum(ServiceTax) Sum(DiscAmt)
  Group By RestCode ... DELFLAG='N' or isnull(DELFLAG,'')=''`) with a `KOT` aggregate
  (`Sum(Amount) ... Group By RestCode`) to produce `RunKOTAmt`, then wrapped by
  `Select Sum(Tax), Sum(DiscAmt), Sum(NetAmt), Sum(RunKotAmt), Sum(ServiceCharge), Sum(ServiceTax),
  Sum(Total) From (...)`.

The range also contains `LocationFacility`/`LocationMast` (L611353) and `MemFacilityBilling`
(L611437, L611461) statements that belong to a membership helper merged into the same object.
`[INFERRED]`

## 12. Token Entry — `RsTokenEntry` (L613796–L633840) `[VERIFIED-VB6]`

| Statement | Line |
|---|---|
| `Select Name From SessionMast WHERE (LOGSITE_CODE='...' or LOGSITE_CODE='HO') AND <time> BETWEEN FromTime AND ToTime` | L613846 |
| `Select count(*) from Stock Where KOTDocId='...' and ...` | L613991 |
| `Select VNo from Stock Where KOTDocId='...'` | L613997, L614110 |
| `Insert Into KOTLog (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,Rate,Amount,Reasons,DELFLAG,LogSite_Code) Values (...)` | L614044 |
| `Update TOKEN Set DelFlag='Y', U_Name1=...` | L614055 |
| `Select count(*) from TOKEN Where DocId='...' And IsNull(ContraDocId,'')<>''` | L614102 |
| `Select Distinct K.DocId as SearchCode,K.VNo as [No],CAST(K.VDate AS VARCHAR(11)) as [Date],K.VTime as [Time],K.ROOMNO AS TableNo,H.Name as Restaurant,W.Name as Waiter From (((TOKEN K Inner Join Voucher_Type V ...) Inner Join Depart H ...) Inner Join Waiter W ...) WHERE K.LOGSITE_CODE='...'` | L614176 |
| `Select 'N'+ShortName From Depart Where Code='<LocalRestCode>'` | L614187 |
| KOT detail for print: `Select DISTINCT k.Vtime,k.VNo,k.VDate,W.name as WaiterName,k.RoomNo as TableNo,k.NCTOKEN,k.Remarks,k.TokenNo,k.U_Name,k.ContraDocId,D.ShortName From ((TOKEN K Left Join Waiter W ...) Left Join Depart D ...)` | L614316 |
| Item detail for print: `Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (TOKEN K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code Where K.DocID='...'` | L614318 |
| Printer routing: `Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='...'` | L614351 |

Token voucher prefix comes from `Select 'N'+ShortName From Depart` (L614187) — i.e. `N<OutletShortName>`.
`[VERIFIED-VB6]`

`TOKEN` table: PK/unique index present, 0 rows. `[VERIFIED-SQL]`
(`18_Database\indexes_pks.txt` L224, `tables_rowcounts.txt`)

## 13. Display Table — `RsPOSDisplay` / `RsTouchDisplayTB` `[VERIFIED-VB6]`

Dispatch sets `OpenMode = 2` then checks `ptabpos`; if true shows
`Tables are not defined in this Outlet` and unloads (EXTRAS.text L479329–L479349).
MDI toolbar path shows `No Records in Table Master` instead (EXTRAS.text L698-region, loc `L142C338`).
`[VERIFIED-VB6]`

## 14. Touch-screen variants `[VERIFIED-VB6]`

Selected by `MemVar_1F8120C = "Yes"`:
- `Display Table` → `RsTouchDisplayTB` (L479316) else `RsPOSDisplay` (L479321)
- `Token Entry` → `RsTouchScreenTOKENEntry` (L479394) else `RsTokenEntry` (L479396)

Standalone objects: `RsTouchScreenKOTEntry` (L789689), `RSTouchScreenSaleBill` (L803242),
`RsPOSDisplayNew` (L633841). `[VERIFIED-VB6]`

## 15. Split / reprint / modification helpers `[VERIFIED-VB6]`

| Object | Line | Role |
|---|---|---|
| `FrmPOSBillModificationDatewise` | L593783 | date-range bill edit |
| `FrmPOSBillModificationItemGroupwise` | L594844 | item-group bill edit |
| `FrmPOSSaleDataTransfer` | L595905 | outlet-to-outlet sale transfer |
| `pHappyHours` | L515216 | happy-hours pricing (`HappyHours`/`HappyHoursHead` tables, 0 rows) |
| `RsKOTTransfer` | L610453 | KOT transfer between kitchens |
| `RsStatusScreen` | L611306 | live outlet status |

## 16. Resolved flags `[VERIFIED-VB6]`

- **`MemVar_1F8120C` (touch-screen switch)** = `Enviro.TouchScreen`. It *is* assigned, from the
  environment row: `Select * From Enviro WHERE LOGSITE_CODE=...` → `MemVar_1F8120C =
  Proc_6_37_E618F4(CVar(var_E0.Item("TouchScreen")))` (EXTRAS.text L477025–L477031) and
  `Select * from Enviro` → `... .Item("TouchScreen")` (EXTRAS.text L9892). Also seeded from
  `FrmChangeRest.Menu.Caption` at EXTRAS.text L660 and from helper calls at L625, L7472 (34 total
  references). `[VERIFIED-VB6]`
- **Touch-screen object family**: `RsTouchScreenKOTEntry` (L789689), `RSTouchScreenSaleBill`
  (L803242), `RsPOSDisplayNew` (L633841). `[VERIFIED-VB6]`

## 17. Gaps / not reverse-engineered `[UNKNOWN]`

- `As New POSAdvanceDepDialog` declaration text for `MemVar_1F81F64`
  `[UNKNOWN] — searched EXTRAS.text and HMS.bas for "As New POSAdvanceDepDialog" (0 hits) and for
  "1F81F64" (2 hits, both reads)`; see finding F-POS-01.
- Print-to-ESC/POS raw commands: `Depart.Printer`, `Depart.PrintType`, `Depart.DisPrint` columns exist
  (`columns_dictionary.txt`) but the rendering routine names are obfuscated
  `[UNKNOWN] — searched call chains around Proc_6_44_EA72C4 / Proc_6_37_E618F4, opaque labels only`.
