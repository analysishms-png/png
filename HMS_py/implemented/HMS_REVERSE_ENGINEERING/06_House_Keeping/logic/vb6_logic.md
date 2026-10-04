# 06_House_Keeping — VB6 Logic

All line numbers = `HMS_REVERSE_ENGINEERING\EXTRAS.text`.

---

## 1. Registration block (`Proc_165_1_1EF3904`)

Gate: **L476390** `If (InStr(2, MemVar_1F81228, "I", 0) <> 0) Then` `[VERIFIED-VB6]`
Module char for House Keeping = **`"I"`**.

| Call | Line | Args |
|---|---|---|
| `Proc_165_0_14C1708("House Keeping", &HF, 4, …, "HouseKeeping", 1)` | L476392 | module header, opt1=`&HF`=15, opt2=4 |
| `("Transactions", &HF, 3, …, "SetHK", 1)` | L476394 | group, opt2=3, flag `&HFF` |
| `("Block Master", &HF, 0, "Setup", …, 0, "HouseSet", 1)` | L476396 | **parent caption `"Setup"`** (no such group row) |
| `("Transactions", &HF, 3, …, "TransHK", 1)` | L476398 | 2nd group with the same caption, different `Module_Name` |
| `("Complaint Master", &HF, 0, "Transactions", …, 0, "HouseEnt", 1)` | L476400 | index 0 |
| `("Complaint Clearance", …, 1, …)` | L476402 | index 1 |
| `("Lost / Found Entry", …, 2, …)` | L476404 | index 2 |
| `("Claim Entry", …, 3, …)` | L476406 | index 3 |
| `("House Keeping Op.Stock Entry", &HF, **2**, "Transactions", …, 4, …)` | L476408 | **opt2=2, not 0** — sits under a different parent than its siblings |
| `("Issue/Recd. Entry", …, 5, …)` | L476410 | index 5 |
| `("House Keeping Screen", …, 6, …)` | L476412 | index 6 |
| `("Item Issued On Cleaning", …, 7, …)` | L476414 | index 7 — **no dispatcher branch** |
| `("Check Out Clearance Screen", …, 8, …)` | L476416 | index 8 |
| `("Room Block", …, 9, …)` | L476418 | index 9 |
| `("Reports", &HF, 3, …, "ReportsHK", 1)` | L476420 | report group |
| `("Room Status Report", &HF, 1, "Reports", …, 3, "HouseREP", 1)` | L476422 | index 3 |
| `("Complaint Detail", &HF, 1, "Reports", …, 4, "HouseREP", 1)` | L476424 | index 4 |
| `End If` | L476425 | |

`Menu_Index` = the 7th numeric arg; `Module_Name` = the 4th string arg.
Registrar writes **`arg_C`** (the literal caption) into `MenuHelp.[OPTION]` at
**L475808–L475812**, `UserName='SA'`, `ShowInlist='N'`. `var_124` is never read by it.
`[VERIFIED-VB6]`

---

## 2. Dispatcher branches (`Proc_165_2_1E3A588`, L476999–L480832)

| Caption (`var_188`) | Effect | Lines |
|---|---|---|
| `Room Status Report` | `Set var_90 = New rRepHousePreview` ; `.GRepFormName = "RoomStatus"` ; `.Show` | L478511–L478517 |
| `Complaint Detail` | `New rRepHousePreview` ; `"ComplaintList"` | L478518–L478524 |
| `Block Master` | `New frmBlockMast` | L478681–L478686 |
| `Complaint Master` | `New FrmComplaintMast` | L478687–L478692 |
| `Complaint Clearance` | `New FrmComplaintClearing` | L478693–L478698 |
| `Lost / Found Entry` | `New FrmLostFound` | L478699–L478704 |
| `Claim Entry` | `New FrmClaimEntry` | L478705–L478710 |
| `House Keeping Screen` | `New HHouseKeeping` | L478717–L478722 **and** L479076–L479081 |
| `Check Out Clearance Screen` | `New HRoomCheckOutClearance` | L478723–L478728 |
| `Room Block` | `New HKRoomBlock` | L478729–L478734 |
| `House Keeping Op.Stock Entry` | if `MemVar_1F811B8 = vbNullString` → `New FrmChangeDepart`, `var_CC=1`, `.Show`, `var_CC=0`, `.ZOrder` ; then **always** `New HKHouseOpStk` | L479057–L479069 |
| `Issue/Recd. Entry` | `New FrmStockTransfer` | L479070–L479075 |
| **`Item Issued On Cleaning`** | **no branch** | — |

Shared housekeeping reports reachable from other modules (same dispatcher):
`"Instant House Count"`→`rFomRepView`/`InsHouseCount` (L478741–L478747),
`"Room Inventory"`→`RoomInventory` (L478748–L478754),
`"Guest In House"`→`GuestInHouse` (L478755–L478761),
`"House Keeping Report"`→`HouseKeeping` (L478762–L478768). `[VERIFIED-VB6]`

Dispatcher writes `C:\moduleFILE.TXT` For Append on every invocation (**L477034**). `[VERIFIED-VB6]`

---

## 3. `HHouseKeeping` — the housekeeping board (L80459–L81618)

The operational heart of the module. It maintains three things at once:
`RoomMast.RoomStat`, `RoomBlockOut` rows, and its own audit of comments.

### 3.1 Date guard
**L80605**, **L80623**:
```
MsgBox "Date Can not be less then Audit date,So Audit date (" & MemVar_1F810EC & ") will be stored here"
```
The user's typed date is silently replaced by the audit date. `[VERIFIED-VB6]`

### 3.2 Vacancy check
**L80720** `MsgBox "Sorry Room Is Not vacant"` — a room that is not vacant cannot be
picked for a housekeeping action. `[VERIFIED-VB6]`

### 3.3 Out-of-order handling
**L80818** `MsgBox "Change Out of Order room to Vacant?"` (`&H24` = Yes/No+Question)
→ **L80819** `MsgBox "Clear Comments?"` `[VERIFIED-VB6]`

On confirm:
* **L80743** `DELETE FROM RoomBlockOut WHERE RoomCode='…' AND Type='O'`
* **L80755** `INSERT INTO RoomBlockOut (RoomCode,Reasons,FromDate,ToDate,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,VTime) VALUES …`
* **L80860** `DELETE FROM RoomBlockOut WHERE (LOGSITE_CODE='…') AND RoomCode='…'`
* **L80884** `UPDATE RoomMast SET RoomStat='…' WHERE (LOGSITE_CODE='…') AND Code='…'`
* **L80890** `INSERT INTO RoomBlockOut (RoomCode,Type,Site_Code,U_Name,FromDate,LogSite_Code,VTime) VALUES …`
`[VERIFIED-VB6]`

### 3.4 Availability / inventory reads
* **L81181** `SELECT * FROM RoomBlockOut WHERE (LOGSITE_CODE='…' OR LOGSITE_CODE='HO') AND Type IN ('O','M') AND RoomCode='…'`
* **L81197** `SELECT IsNull(Max(Name),'') FROM roommast WHERE (LOGSITE_CODE='…' OR …='HO') AND Code='…'`
* **L81239** `SELECT Count(*) FROM RoomOcc WHERE (LOGSITE_CODE='…') AND Type NOT IN ('O','C') AND (CHKINDATE < …)`
* **L81253** `SELECT * FROM roommast WHERE (LOGSITE_CODE='…' OR …='HO') AND Type='RO' AND InclCount='Y' ORDER BY Code`
* **L81256** `SELECT * FROM RoomOcc WHERE (LOGSITE_CODE='…') AND ChkOutDate IS NULL`
* **L81258** `SELECT * FROM RoomBlockOut WHERE (LOGSITE_CODE='…' OR …='HO') AND Type='O' AND …`
* **L81278** `MsgBox "First Fill Room Master"` — raised when `RoomMast` is empty.
`[VERIFIED-VB6]`

Note the `(LOGSITE_CODE='X' OR LOGSITE_CODE='HO')` idiom: **`'HO'` is a shared/global site
marker** used across masters. `[VERIFIED-VB6]`

---

## 4. `HKHouseOpStk` — House Keeping Opening Stock (L81996–L84053)

Opened from menu index 4. It is a `STOCK` voucher.

| Step | Evidence |
|---|---|
| Voucher type lookup `SELECT Description,V_Type FROM Voucher_Type WHERE V_TYPE='…'` | L82038 |
| Delete existing: `DELETE FROM STOCK WHERE Docid='…'` | L82088 |
| Search list: `SELECT DISTINCT Docid AS SearchCode, V.Description AS VType, S.VNo… FROM ((STOCK S LEFT JOIN Voucher_Type V ON S.VType=V.V_Type) LEFT JOIN Depart R ON S.RestCode=R.Code) WHERE V.V_Type='…'` | L82158 |
| Row-count guard `SELECT Count(*) FROM STOCK WHERE DocID='…'` | L82307 |
| Hard delete `DELETE FROM STOCK WHERE DocID='…'` | L82327 |
| Insert line `INSERT INTO Stock(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Sno,Item,Unit,Qtyrec,Rate,Amount,U_Name,U_EntDt,U_AE,TOTAL) VALUES …` | L82366 |
| Serial allocation `SELECT VT.Number_Method, VP.V_Type, VP.Date_From, VP.Prefix, VP.Start_Srl_No FROM Voucher_Type VT INNER JOIN Voucher_Prefix VP ON (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VT.LOGSITE_CODE=VP.LOGSITE_CODE) WHERE VP.SITE_CODE='…'` | L82378 |
| Bump `UPDATE Voucher_Prefix SET Start_Srl_No=… WHERE (SITE_CODE='…' AND LOGSITE_CODE='…')` | L82398 |
| Remember last voucher `SELECT COUNT(*) FROM LASTVOU WHERE UNAME='…'` / `UPDATE LASTVOU SET DOCID='…'` / `INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES …` | L82405, L82414, L82420 |
| Department must be HK-configured: `SELECT 'O'+Depart.ShortName FROM Depart WHERE Code='…'` | L82473 |
| Item list: `SELECT I.Code, I.Name, I.Unit, IG.Name AS ItemGroup, I.LPurRate FROM ItemMast I LEFT JOIN ItemGrp IG ON I.ItemGroup=IG.Code WHERE I.TYPE IN ('Store Item','Consumables') AND IG.TYPE IN ('Store Item','Consumables') AND I.ItemType='Store' ORDER BY I.Name` | L82492 |
| HK godowns: `SELECT D.Code, GodownMast.Name FROM Depart AS D RIGHT JOIN GodownMast ON D.Code=GodownMast.Code WHERE RestType='House Keeping'` | **L85652** (in `HKIssRec`) |
`[VERIFIED-VB6]`

### Validations raised in this object
| Message | Line |
|---|---|
| `Fill Item Name` | L82275 |
| `House Keeping Not Configured for selected Department` | L82488 |
| `Vr. No Can Not Be 0` | L82848, L84427 |
| `Duplicate Voucher No.` | L82893, L84472 |
| `V.Date Not Between Current Fin. Year` | L82934, L84513 |
| `Cancel ?` / `Are You Sure To Delete This ?` / `No Records To Search.` | L82067, L82085, L82155 |
`[VERIFIED-VB6]`

---

## 5. `HKIssRec` — Issue / Receipt (L84054–L86468)

Same voucher machinery as §4, but writes `QtyIss` **or** `Qtyrec` depending on direction:

* **L85187** `INSERT INTO Stock (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Sno,Item,Unit,QtyIss,Rate,Amount,U_Name,U_EntDt,U_AE,TOTAL) VALUES …`
* **L85229** `INSERT INTO Stock (…,Qtyrec,Rate,Amount,…) VALUES …`
* **L85243 / L85263 / L85270 / L85279 / L85285** — same `Voucher_Prefix` + `LASTVOU` trio as §4
* **L85346** search list joins `Voucher_Type` and `Depart`
* **L85622 / L85628** derives voucher-type prefix: `SELECT 'I'+ShortName FROM Depart WHERE Code='…'` and `SELECT 'R'+ShortName FROM Depart WHERE Code='…'`
* **L85636** `SELECT V_Type AS Code, Description AS Name, NCat FROM Voucher_Type WHERE V_TYPE IN … ORDER BY Description`
* **L85644** same store-item list as §4
* **L85652** HK godown list (see §4)
`[VERIFIED-VB6]`

---

## 6. `FrmComplaintMast` (L481015–L482172) and `FrmComplaintClearing` (L448800–L449832)

### Master
* Category list `SELECT Code AS Scode, Category FROM ComplaintCategory WHERE (LOGSITE_CODE='…' OR ='HO') ORDER BY Category` — **L481375**
* New code `SELECT IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode FROM ComplaintCategory WHERE Site_Code='…'` — **L481812**
* Duplicate guard `SELECT Count(*) FROM ComplaintCategory WHERE Category='…'` — **L481804, L481833**
* Insert `INSERT INTO ComplaintCategory (Code,Category,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES …` — **L481839**
* Complaint insert `INSERT INTO ComplaintDetail (Code,Category,CDate,CTime,Description,Depart,UName,Status,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES …` — **L481847**
* Update `UPDATE ComplaintDetail SET Description='…', Status='…'` — **L481871**
* Duplicate-description guard `SELECT Count(*) FROM ComplaintDetail WHERE Description='…'` — **L482074**
* Duplicate-category guard `SELECT Count(*) FROM ComplaintDetail WHERE Category='…'` — **L482088**
* Delete `DELETE FROM ComplaintDetail WHERE Code='…'` — **L481515**, also **L448856** (clearing form)
`[VERIFIED-VB6]`

### Clearance
* Set solved — **L449123**:
  `UPDATE ComplaintDetail SET Status='Solved', ClearingDate=<dt>, ClearingPerson='…'`
* Re-open — **L449141**:
  `UPDATE ComplaintDetail SET Status='UnSolved', ClearingDate=NULL, ClearingPerson='', Description='…'`
* Grid fill — **L449270** `SELECT Code AS Scode, Category FROM ComplaintCategory ORDER BY Category`
* Report/detail select — **L481680**:
  `SELECT CD.Code, CD.CDate, CD.CTime, CC.Category, CD.Description, D.Name AS Depart, CD.UName, CD.Status
     FROM (ComplaintDetail CD INNER JOIN ComplaintCategory CC ON CD.Category=CC.Code)
     INNER JOIN Depart D ON CD.Depart=D.Code WHERE CD.LogSite_Code='…'`
`[VERIFIED-VB6]`

Status vocabulary observed: `'Solved'`, `'UnSolved'` (L449123/L449141) plus `Status` default
on insert (L481847). `[VERIFIED-VB6]`

---

## 7. `FrmLostFound` (L449833–L450496) and `FrmClaimEntry` (L450497–L451328)

* New code — **L450172**:
  `SELECT IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode FROM LostFoundDetail WHERE Site_Code='…'`
* Insert — **L450191**:
  `INSERT INTO LostFoundDetail (Code,FDate,FTime,FArea,AppValue,Description,FindBy,FFDate,FFTime,FPlace,UName1,Status,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES …`
* Update — **L450226** `UPDATE LostFoundDetail SET FDate=…`
* Delete — **L449914** `DELETE FROM LostFoundDetail WHERE Code='…'`
* List — **L450060** `SELECT FDate,FTime,FArea,FindBy,Description,UName1,Status FROM LostFoundDetail ORDER BY Code`
* Search — **L450284** `SELECT Code AS Scode, FDate, FTime, FArea, Description, Appvalue, FindBy, FFDate, FFTime, FPlace, UName1, Status, Site_Code, LogSite_code FROM LostFoundDetail WHERE (LOGSITE_CODE='…' …)`
* Claim list — **L450516**, filtered **L450853 / L450865** `WHERE FDate BETWEEN …`
* Delivery — **L450964**:
  `UPDATE LostFoundDetail SET Status='Delivered', DDate=…, ClaimedBy='…', ContactNo='…', …`
`[VERIFIED-VB6]`

Status vocabulary: `Status` on insert (L450191), `'Delivered'` on claim (L450964).
`[VERIFIED-VB6]`

---

## 8. `FrmBlockMast` (L797827–L798637)

* List **L798031** `SELECT Code, Name FROM BlockMast WHERE (LOGSITE_CODE='…' OR ='HO') ORDER BY Name`
* Detail **L798035 / L798276** `SELECT * FROM BlockMast …`
* Search **L798220** `SELECT BlockMast.Code AS SearchCode, BlockMast.Name, ShortName, Status FROM BlockMast WHERE …`
* New code **L798376** `SELECT IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode FROM BlockMast WHERE Site_Code='…'`
* Insert **L798396** `INSERT INTO BlockMast (Code,Name,ShortName,Status,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES …`
* Update **L798415** `UPDATE BlockMast SET Name='…'`
* Audit read **L798533** `SELECT U_Name,U_AE,U_EntDt FROM BlockMast WHERE Code='…'`
* Uniqueness: **L798596** `… AND Name='…'`, **L798609** `… AND ShortName='…'`
* Delete **L798140** `DELETE FROM BlockMast WHERE Code='…'`
* Consumed by reservation/room screens — **L831640** `SELECT DISTINCT Code, Name, ShortName FROM BlockMast WHERE … ORDER BY Name`
`[VERIFIED-VB6]`

`BlockMast` has **0 rows** `[VERIFIED-SQL]`.

---

## 9. `HRoomCheckOutClearance` (L628394–L629139)

* Replace pattern — **L628528 / L628557**:
  `DELETE FROM RoomCheckOutStatus WHERE FolioNoDocId='…' AND RoomCode='…'`
* Insert — **L628538 / L628566**:
  `INSERT INTO RoomCheckOutStatus (FolionoDocId,RoomCode,ChkOutClearanceYN,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES …`
* Clearance dashboard — **L628771**:
  ```sql
  SELECT R.DocId, MAX(R.RoomNo) RoomNo,
         MAX(IsNull(P.Bill_No,'')) Bill_No,
         MAX(IsNull(RC.ChkOutClearanceYN,'')) CHKOUTCLYN
    FROM RoomOcc R
    LEFT JOIN PayCharge P  ON P.FolionoDocID = R.DocId OR P.RelatedFolioNoDocId = R.DocId
    LEFT JOIN RoomCheckOutStatus RC
           ON R.DocId = RC.FolionoDocid AND R.RoomNo = RC.RoomCode
   WHERE (R.LOGSITE_CODE='…' …)
  ```
  Note the **`OR` inside a JOIN predicate** (`P.FolionoDocID = R.DocId OR P.RelatedFolioNoDocId = R.DocId`)
  — this is a row-multiplying join and needs rewriting on migration. `[VERIFIED-VB6]`
`[VERIFIED-VB6]`

`RoomCheckOutStatus` has **0 rows** `[VERIFIED-SQL]`.

---

## 10. `FrmItemIssuedOnCleaning` (L604299–L605913) — UNREACHABLE

The form exists and is fully coded, but **no dispatcher branch targets it** (see
`screens\screens.md` #8). Its SQL:

* **L604385** `DELETE FROM DepartWiseItemIssueList WHERE FrDepart='…'`
* **L604488** `SELECT Count(*) FROM DepartWiseItemIssueList WHERE FrDepart='…'`
* **L604515** `DELETE FROM DepartWiseItemIssueList WHERE FrDepart='…'`
* **L604538** `INSERT INTO DepartWiseItemIssueList (Sno,Site_Code,Item,FrDepart,ToDepart,IssQty,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES …`
* **L604607** `SELECT DISTINCT FrDepart+ToDepart AS SearchCode, FrG.Name AS From_Location, ToG.Name AS To_Location FROM DepartWiseItemIssueList D LEFT JOIN GodownMast FrG ON D.FrDepart=FrG.code LEFT JOIN GodownMast ToG ON D.ToDepart=ToG.code WHERE D.LOGSITE_CODE='…'`
* **L604659** `… INNER JOIN ItemMast ON D.item=ItemMast.code AND ItemMast.ItemType='Store' …`
* **L605666** detail join over `ItemMast` + 2× `GodownMast`
`[VERIFIED-VB6]`

**Table `DepartWiseItemIssueList` does not exist in the database** — it is absent from both
`columns_dictionary.txt` and `tables_rowcounts.txt`. `[VERIFIED-SQL]`
So even if the menu item were wired, the form would fail on first query.

---

## 11. `HKRoomBlock` (L831468–L833097)

Consumes `BlockMast` (L831640) and writes `RoomBlockOut`. The resulting rows are what
`04_Reservation` reads at EXTRAS.text **L97971** to exclude rooms from availability.
`[VERIFIED-VB6]`

Cross-module contract:

| Direction | Statement | Line |
|---|---|---|
| HK writes | `INSERT INTO RoomBlockOut (RoomCode,Reasons,FromDate,ToDate,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,VTime) VALUES …` | L80755 |
| HK writes | `INSERT INTO RoomBlockOut (RoomCode,Type,Site_Code,U_Name,FromDate,LogSite_Code,VTime) VALUES …` | L80890 |
| HK deletes | `DELETE FROM RoomBlockOut WHERE RoomCode='…' AND Type='O'` | L80743 |
| HK deletes | `DELETE FROM RoomBlockOut WHERE (LOGSITE_CODE='…') AND RoomCode='…'` | L80860 |
| Reservation reads | `SELECT … FROM RoomBlockOut WHERE Type='O'` overlap test | L97971 |

`RoomBlockOut` currently holds **1 row** `[VERIFIED-SQL]` — the contract is effectively idle.

---

## 12. Structural notes for migration

1. **`STOCK` is shared by three HK screens** (`HKHouseOpStk`, `HKIssRec`, and the
   Reservation-side material screens). Direction is encoded in `QtyIss` vs `Qtyrec`
   (L82366 / L85187 / L85229), not in a `Direction` column. `[VERIFIED-VB6]`
2. **Voucher allocation is read-modify-write on `Voucher_Prefix.Start_Srl_No`** (L82378 →
   L82398) with no transaction observed → race under concurrency. `[VERIFIED-VB6]` + `[UNKNOWN]`
3. **`LASTVOU`** caches the last doc id per `UNAME`/`ENAME` (L82405/L82414/L82420) — a
   per-user cursor, not a constraint. `[VERIFIED-VB6]`
4. **Replace-after-insert idiom** for `RoomCheckOutStatus` (delete then insert, L628528+628538)
   and `RoomBlockOut` (L80743+80755) → use UPSERT on migration. `[VERIFIED-VB6]`
5. **`'HO'` logsite** is a cross-site marker embedded in dozens of `OR LOGSITE_CODE='HO'`
   predicates (L81181, L81197, L81253, L81258, L798031, L798035, L798220, L798276,
   L798596, L798609, L798623, L831640, L481375). Model it explicitly. `[VERIFIED-VB6]`
6. **Dead code**: `FrmItemIssuedOnCleaning` + `DepartWiseItemIssueList`, `rRepHouse`
   (never constructed), plus 6 forms with no dispatch hit (see `screens\screens.md`).
7. **All SQL is concatenated** — no parameters anywhere. `[VERIFIED-VB6]`
