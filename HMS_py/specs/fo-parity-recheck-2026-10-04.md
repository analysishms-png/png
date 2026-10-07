# Front Office Parity RE-CHECK — 4 Newly Ported Forms

**Date:** 2026-10-04
**Scope:** Amend Stay, Merge Room, Reverse Merge, Bill Reprint (Room Change = out of scope, already APPROVED as RV-001R in `specs/review-report.md`)
**Method:** Evidence-based side-by-side of decompiled VB6 `.frm` vs Python implementation (UI + core). No code/test edits — this file is the only artifact.
**Fidelity bar (constitution P1):** VB6 is source of truth → exact validation order + exact user-facing strings. Core save/post SQL may live in `core/*.py` (parameterized only).

## Evidence base

| Source | Path | Notes |
| --- | --- | --- |
| VB6 Amend Stay | `implemented\HMS_REVERSE_ENGINEERING\HMS\fdAmendEntry.frm` | decompiled; paged reads |
| VB6 Merge | `implemented\HMS_REVERSE_ENGINEERING\HMS\FrmMergeCharge.frm` | |
| VB6 Reverse Merge | `implemented\HMS_REVERSE_ENGINEERING\HMS\FrmRevMergeCharge.frm` | |
| VB6 Bill Reprint | `implemented\HMS_REVERSE_ENGINEERING\HMS\frmFomB.frm` | 5473 lines |
| Python UI | `ui/fd_forms_ui.py` (827), `ui/fo_sub_forms_ui.py` (1057) | |
| Python core | `core/folio.py:333 amend_departure`, `core/fo_ops.py` merge/reverse, `core/checkout.py:124 list_checked_out` | |
| Shell wiring | `ui/shell.py:2466,2469,2472,3140` | all 4 openers wired ✅ |

Cross-reference classes confirmed NOT wired (not part of this review's target): `ui/account_merge_ui.py:14`, `ui/folio_ui.py:340`, `ui/pos_sub_forms_ui.py:15`.

---

## 1. Amend Stay — VB6 `fdAmendEntry.frm` → `ui/fd_forms_ui.py:120 AmendStayWindow`

### 1.1 Control mapping

| VB6 control | VB6 caption/role | Python widget | Status |
| --- | --- | --- | --- |
| `Txt(10)` (ML5, top 1710) | Folio No | `txt_folio` + `btn_load` `:132-138` | ✅ |
| `DGRoomNo` DataGrid | room picker (hidden/lookup) | — (typed folio only) | ✗ GAP-01 |
| `Txt(0)` (Enabled=False) | Room No (read-only) | — | ✗ GAP-01 |
| `Txt(1)` + `Txt(2)`/`Txt(3)` + `LblCheckInDay` | Check In Date + hh/mm + weekday | — | ✗ GAP-01 |
| `Txt(13)` + `Txt(11)`/`Txt(12)` | old Departure Date + hh/mm | `lbl_dep` (date only) `:141-142` | ⚠ partial |
| `Txt(7)` | Guest Name | `lbl_guest` `:139-140` | ✅ |
| `Txt(8)` | Company Name | — | ✗ GAP-01 |
| `Txt(9)` (ML8) | Guest Status | — | ✗ GAP-01 |
| `Txt(4)` + `Txt(5)`/`Txt(6)` | new Departure Date + hh/mm | `dt_new` QDateEdit (date only) `:143-145` | ⚠ no time |
| `Lbl(34/26/0/5/3/1/6/8)` | Room No / Check In Date / Departure Date ×2 / Guest Name / Company Name / Guest Status / Folio No | "Folio No", "Guest", "Current Departure", "New Departure" | ⚠ reduced |
| `Label1(0)` `Label1(1)` `Label1(2)` | "Guest Details", "Amend Departure Details", "Ctrl+S To Save , Esc To Exit" | — | ✗ GAP-04 |
| `TopCtrl1` toolbar + `CmdExit` | Ctrl+S save / Esc exit | "Amend" / "Exit" buttons `:148-149` | ⚠ no shortcut, no confirm |

### 1.2 Validation order

| # | VB6 (`fdAmendEntry.frm` ~1590-1680) | Python (`core/folio.py:333 amend_departure`) | Status |
| --- | --- | --- | --- |
| 1 | room/folio resolution via `Proc_6_27_EA565C`, grid-select | `SELECT GuestFolio` → `Folio #n nahi mila` | ⚠ different entry path |
| 2 | (safety) none visible | `Name.startswith("PYT")` → "Safety: sirf PYT* folio amend honge" | ➕ added (defensive) |
| 3 | new dep < current date → "Departure Date Can't be Less than Current Date" | same string, same order | ✅ |
| 4 | new dep < check-in → "Departure Date Can't be Less than Check in Date" | same string, same order | ✅ |
| 5 | `CDate(new) > CDate(checkin)` fails → "Departure Date Must Be Greater than Check in Date" (&H40) | **absent** — Python allows `new_dep == checkin` (only `<` rejected) | ✗ GAP-03 (boundary) |
| 6 | time > 23 → "Invalid Time" (&H40) | n/a (date-only widget) | ⚠ GAP-01 consequence |
| 7 | `MsgBox("Save Record ?", 4, "Save Data") = 6` → save | **absent** — "Amend" saves immediately | ✗ GAP-02 |

### 1.3 String exactness

| VB6 string | Python | ✓/✗ |
| --- | --- | --- |
| "Departure Date Can't be Less than Current Date" | `folio.py` exact | ✓ |
| "Departure Date Can't be Less than Check in Date" | `folio.py` exact | ✓ |
| "Departure Date Must Be Greater than Check in Date" | missing | ✗ |
| "Invalid Time" | missing (date-only) | ✗ |
| "Save Record ?" (vbYesNo, title "Save Data") | missing | ✗ |
| "Check New Departure Date and Time" | not found in Python | ✗ |
| success | Hinglish `"Departure amended: X -> Y"` (VB6: no distinct success msg confirmed) | ⚠ |

### 1.4 Core SQL parity

VB6 save SQL (`fdAmendEntry.frm:1079-1128`) vs `core/folio.py:369-390`:

| VB6 | Python | Status |
| --- | --- | --- |
| INSERT `GuestFolioAmend` (OldDepDate, OldDepTime, DepTime) | `:369` INSERT (…, '10:00', '10:00') | ✅ parameterized |
| UPDATE `GuestFolio` DepDate/NoDays | `:376` UPDATE `DepDate=?, NoDays=DATEDIFF(day,Vdate,?)` | ✅ |
| UPDATE `RoomOcc` DepDate | `:381` UPDATE | ✅ |
| UPDATE `PlanDetails` NoofDays | `:388` conditional, `max(days,1)` | ✅ |

### Verdict: **PARTIAL — core logic verified, UI/string fidelity not**
Gaps: GAP-01, GAP-02, GAP-03, GAP-04

---

## 2. Merge Room — VB6 `FrmMergeCharge.frm` → `ui/fo_sub_forms_ui.py:424 MergeChargeWindow`

### 2.1 Control mapping

| VB6 control | VB6 caption | Python widget | Status |
| --- | --- | --- | --- |
| Form Caption | "Room Merge" | window title "Merge Room Charges" `:429` | ⚠ not exact |
| `Check1` ×2 | leader/selection checkboxes | — | ✗ GAP-05 |
| Button | "Transfer &Charges" (label :53) | `btn_merge` "Merge Charges" `:468` | ⚠ renamed |
| Grid | "List of Room" (:162) | — | ✗ GAP-05 |
| Grid | "List of Room's Charge" (:185) | — (single `lbl_total` label) | ✗ GAP-05 |
| Label | "Select Leader Room" (:209) | — | ✗ GAP-05 |
| 2 entry points | leader + child room | `txt_from_room` / `txt_to_room` `:444-449` | ⚠ semantics: source→target, not leader-selected-from-grid |

### 2.2 Validation / flow

| VB6 | Python | Status |
| --- | --- | --- |
| leader not selected → `MsgBox("Please Select Leader Room No.", ,"Error..")` (:435,:704) | no error path — button just disabled (`_refresh :498-505`) | ✗ GAP-06 |
| no charges selected → "Please select any charges to be transfer" + "Save..." (:660) | n/a (no charge grid, moves all) | ✗ GAP-09 |
| confirm `&H14` "Do You Want Transfer Remainning Charges Of All Rooms" + vbCrLf + "Into Leader Room No. " + CStr(...), result=6 (:820) | `"Merge charges from X to Y?\nYeh undo nahi ho sakta!"` `:510-514` | ✗ GAP-07 |
| success "Charges Transfered Successfully" + "Save..." (:652) | `"{n} rows merged\nFolio A -> B"` `:519-524` | ✗ GAP-08 |
| dynamic err `MsgBox(var_BC, &H10, "Save...")` (:666) | `QMessageBox.critical("Error", str(e))` | ⚠ shape OK, title differs |

### 2.3 Core SQL parity (`core/fo_ops.py:406-471 merge_charge`)

| VB6 | Python | Status |
| --- | --- | --- |
| UPDATE `GuestFolio SET mFolioNoDocId=…, mFolioNo=…` (:565,:584) | `:440` same, + U_Name/U_EntDt/U_AE audit | ✅ parameterized |
| UPDATE `PayCharge SET RelatedFolioNo=…` (:602) | `:447` same, guarded `(ContraDocID IS NULL OR '')` | ✅ |
| UPDATE `PayCharge SET FolioNoDocid=…` (:633) | `:455` same | ✅ |
| transaction `BeginTrans/CommitTrans` (:835 proc) | `commit=False` ×3 then `cn.commit()` `:461` | ✅ |
| `PlanDetails` copy | not in VB6 FrmMergeCharge → correctly absent here | ✅ |

### Verdict: **PARTIAL — core SQL verified, controls + all user strings not**
Gaps: GAP-05, GAP-06, GAP-07, GAP-08, GAP-09

---

## 3. Reverse Merge — VB6 `FrmRevMergeCharge.frm` → `ui/fo_sub_forms_ui.py:531 ReverseMergeWindow`

### 3.1 Control mapping

| VB6 control | VB6 caption | Python widget | Status |
| --- | --- | --- | --- |
| Form | "Reverse Room Merge" | title exact `:537/:547` | ✅ |
| Label | "Reverse Room Merge" (:18) | title label | ✅ |
| Label | "Enter Leader Room No" (:228) | "Room:" + placeholder "Master Room No (jisne merge kiya)" | ⚠ renamed |
| `Check1` | "ALL" (:37) | — | ✗ GAP-13 |
| Button | "Transfer &Charges" (:76) | `btn_reverse` "Reverse Merge" `:591` | ⚠ renamed |
| Grid | "List of Leader Rooms" (:181) | `txt_master` single input + Load | ⚠ simplified |
| Grid | "List of Room's Charge" (:204) | `table` cols `["", "Room", "Folio", "Guest", "Master par charges"]` `:568-572` | ⚠ charge list collapsed to count |

### 3.2 Validation / flow

| VB6 | Python | Status |
| --- | --- | --- |
| no leader → info + "Error.." (:313) | `"Master Room No likho"` warning `:604` | ✗ GAP-12 |
| dynamic `MsgBox(..., &H10, ...)` (:661) | `critical("Error", str(e))` | ⚠ shape OK |
| **charge selection required** → "Please select any charges to be transfer" + "Save..." (:738) | no selection — whole child reversed (`_reverse :646-671`) | ✗ GAP-10 |
| success "Charges Transfered Successfully" + "Save..." (:724) | `"{n} rows reversed\nFolio A -> B"` (+ Hinglish tail) `:665-671` | ✗ GAP-12 |
| confirm (row guard: `CellBackColor=&HFDE1FF`/`Col=0`/empty → exit; :894-906) → `MsgBox("Do You Want Remove Room No. " & var_108 & " from Group." & vbCrLf & "Without Transfer Charges.", &H24) = 6` (:907-912) → RoomOcc lookup → UPDATE GuestFolio clear mFolioNo | **path absent entirely** | ✗ GAP-11 (functionality missing) |
| `MsgBox` at :1005,:1446,:1448,:1523,:1762 (other paths) | not implemented | ✗ GAP-11 |
| confirm (:904-905) reverse charges | `"…charges master folio se wapas folio … par le jaayein?"` `:651-657` | ✗ GAP-12 |

### 3.3 Core SQL parity (`core/fo_ops.py:511-610 reverse_merge_charge`)

| VB6 | Python | Status |
| --- | --- | --- |
| UPDATE `PayCharge SET FolioNoDocid=child…` (:675) | `:564` parameterized | ✅ |
| UPDATE `PayCharge SET RelatedFolioNo=0, RelatedFolioNoDocId=''` (:703) | `:593` (only when master cleared) | ✅ |
| UPDATE `GuestFolio SET mFolioNoDocId='', mFolioNo=0` (:605,:698,:704) | `:573` + `:601` | ✅ |
| remove-room branch SQL (`Select DocId,FolioNo From RoomOcc…` + GuestFolio clear) | absent | ✗ GAP-12 |

### Verdict: **PARTIAL — core reverse verified; charge-selection + remove-room path missing, strings ✗**
Gaps: GAP-10, GAP-11, GAP-12, GAP-13

---

## 4. Bill Reprint — VB6 `frmFomB.frm` (5473 lines) → `ui/fo_sub_forms_ui.py:922 FomBillReprintWindow`

### 4.1 Control mapping

| VB6 control | VB6 caption | Python widget | Status |
| --- | --- | --- | --- |
| Form | "FOM Bill Reprint", MDIChild, KeyPreview, WindowState=2 | window title via `make_vb6_header("FOM Bill Reprint")` | ✅ |
| `FGrid` MSHFlexGrid (:845, 9825×5640) | **editable charge/bill grid** | — (read-only 6-col results table) | ✗ GAP-14 |
| `Fgrid1` MSHFlexGrid (:852) | totals row | — | ✗ GAP-14 |
| `FRectGrid` (:241, Visible=0), `TxtGrid` (:249, Visible=0) | hidden edit helpers | — | ✗ GAP-14 |
| `Txt` array (many, incl. Index 0 locked) | Bill#, dates, amounts, guest fields | `dt_from`, `dt_to`, `txt_folio`, `txt_room` `:~950-975` | ⚠ different model |
| `CmdPrint` / `CmdSum` / `cmdAdujst` / `CmdExit` (BtnEnh) | Print / Sum / Adjust / Exit | `btn_reprint`, `btn_exit` | ⚠ Sum/Adjust absent |
| `CmdGeneInvoice` "Gen eInvoice", `CmdeInvoiceJson`, `CmdeInvoiceSql` (Visible=0), `FreInvInfo` "eInvoice Info:", `TxteInvInfo[0/1]`, labels "Ack.Dt.:", "Ack.No.:", "IRN:" | eInvoice flow | — | ✗ GAP-14 |
| Labels "Room Catogery", "Mode", "Status", "Company", "Guest Name", "Check In Date", "Bill # ", "Last Update", "User", "Payment Mode", "Guest Comments", "Others Deatils", "Room Bill Details for Folio No.", "Travel Agent", "Rate Code", "Adult/Child", "Address", "Comment2/3", "Depature Date", "Selct Bill No", "Select Bill #" | header/detail labels | 6 table headers only | ✗ GAP-14 |

### 4.2 Validation / print flow vs Python

| VB6 (evidence line) | Python | Status |
| --- | --- | --- |
| bill list `Select DISTINCT Bill_No from paycharge where FolioNoDocid='…' AND MODESET<>'S'` (:1570,:1591) | no bill-level query | ✗ GAP-14 |
| guard: `IsDate(chkout)` fails → `MsgBox("Guest is not completly checked out.", &H10)` + Exit (:1605-1616) | absent | ✗ GAP-14 |
| guard: RecordCount > 1 → `MsgBox("Bill Splited into more than One Bill", &H10)` + Exit (:1646-1657) | absent | ✗ GAP-14 |
| grid loop → `UPDATE PAYCHARGE SET AMTCR=…, AMTDR=…, OnAmt=…, BillAmount=…, Split=…, U_AE='E' WHERE FOLIONODOCID=… AND DOCID=… AND sNO=…` (:1590-1592) | absent | ✗ GAP-14 |
| amount changed → `Insert Into FomBillChangeDetails (…)` (:1743-1754) → `MsgBox("Please Settle this Bill Once Again", &H10)` (:1755-1760) | absent | ✗ GAP-14 |
| settlement count query + `UPDATE PAYCHARGE SET AMTCR=… WHERE … Modeset='S' and PayType='Cash'` (:1753-1771) | absent | ✗ GAP-14 |
| room-rate sync `UPDATE RoomOcc SET RoomRate=…` (:1885-1911) | absent | ✗ GAP-14 |
| `ModDescription = "GUEST BILL WINDOWS PLAIN PAPER"` + `AutoPrint="Yes"` → auto print; else `MsgBox("Print Bill ?", &H24)` = 6 → print, else Exit (:1811-1829, :1831+) | `_reprint :1036-1051` shows an **information stub**: "VB6 me Crystal Report (BillPrint.rpt) se print hota tha. Yahan print preview / PDF generation implement karna hoga." | ✗ GAP-14 (CRITICAL) |
| search semantics: by folio/bill in current context | `list_checked_out(top=200)` + client-side date/folio/room filter `:993-1016` | ⚠ GAP-15 |

### Verdict: **NOT VERIFIED — search-only shell; reprint, guards, grid editing, eInvoice all unimplemented**
Gaps: GAP-14, GAP-15

---

## Gap register

| ID | Form | Severity | Issue |
| --- | --- | --- | --- |
| GAP-01 | Amend Stay | High | UI omits Room No, Check In Date (+hh/mm, weekday), departure times, Company Name, Guest Status; date-only means VB6 "Invalid Time" guard unreproducible |
| GAP-02 | Amend Stay | Medium | Missing `MsgBox("Save Record ?", 4, "Save Data")` confirm before save |
| GAP-03 | Amend Stay | Medium | Boundary diff: VB6 rejects `new_dep == check_in` ("Departure Date Must Be Greater than Check in Date"), Python allows it |
| GAP-04 | Amend Stay | Low | Missing captions "Guest Details", "Amend Departure Details", "Ctrl+S To Save , Esc To Exit" |
| GAP-05 | Merge Room | High | Missing "Select Leader Room", "List of Room", "List of Room's Charge" grids, "Check1" ×2, "Transfer &Charges" caption |
| GAP-06 | Merge Room | Medium | Missing "Please Select Leader Room No." / "Error.." validation (button-disabled instead) |
| GAP-07 | Merge Room | High | Confirm string not exact (VB6 multi-line leader-room text vs Hinglish) |
| GAP-08 | Merge Room | High | Success string "Charges Transfered Successfully" missing |
| GAP-09 | Merge Room | High | "Please select any charges to be transfer" selection flow missing |
| GAP-10 | Reverse Merge | High | Per-charge selection missing — reverses entire child folio unconditionally |
| GAP-11 | Reverse Merge | High | Remove-room-without-transfer path (`"Do You Want Remove Room No. X from Group."` + RoomOcc/GuestFolio unmerge) absent |
| GAP-12 | Reverse Merge | High | All confirm/success/error strings Hinglish, none string-exact |
| GAP-13 | Reverse Merge | Low | "ALL" checkbox, "Enter Leader Room No" label missing |
| GAP-14 | Bill Reprint | **Critical** | `_reprint` is a stub. No print, no split/checkout guards, no editable FGrid, no FomBillChangeDetails, no "Print Bill ?" confirm, no eInvoice, no CmdSum/Adjust |
| GAP-15 | Bill Reprint | Medium | Search model differs (checked-out list + client filter vs in-context folio/bill lookup) |

## Summary

| Form | Core SQL parity | Controls | Strings | Verdict |
| --- | --- | --- | --- | --- |
| Amend Stay | ✅ 4/4 statements | ⚠ reduced | 2/7 exact | PARTIAL |
| Merge Room | ✅ 3/3 statements | ✗ major omissions | 0/4 exact | PARTIAL |
| Reverse Merge | ✅ 3/3 + remove-path missing | ⚠ simplified | 0/5 exact | PARTIAL |
| Bill Reprint | ❌ none | ✗ search-only | 0/4 exact | NOT VERIFIED |

**0/4 VERIFIED** (GAP-01…GAP-15: 15 total — 1 Critical, 8 High, 4 Medium, 2 Low).
