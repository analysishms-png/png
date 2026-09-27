# 04 — Front Office — Database Workflow

Sources: live `INFORMATION_SCHEMA` queries (Moondata2627, 2026-09-25), `core/checkin.py|checkout.py|folio.py|fo_ops.py|booking.py` source (INSERT/UPDATE/SELECT grep).

## 1. Tables (this module)

| Table | Role | Key columns | Row count (live) | Used by |
|---|---|---|---:|---|
| `GuestProf` | guest master | GuestProf, Name, Addr | 7,802 | check-in validation, guest profile UI |
| `GuestFolio` | folio header (one stay = one DocId) | DocId, FolioNo, Vprefix, Vtype, GuestProf, BookingDocId, DepDate, NoDays, mFolioNo | 11,042 | create_checkin, from_booking, amend_departure, merge_charge, settle |
| `PayCharge` | all charge/payment lines (SNo-level) | DocId, SNo, Vtype, VNo, FolioNo, Site_Code, SettleDate, Bill_No, ModeSet, RelatedFolioNo | 28,349 | post_room_charge, receive_payment, re_settlement, delete_payment, reverse_checkout |
| `RoomOcc` | room occupancy (SNo-level history; ChkOutDate NULL = in-house) | DocId, SNo, RoomNo, ChkInDate, ChkOutDate, RoomStat-related, PlanCode, RoomCat, Site_Code | 11,463 | create_checkin, move_room, room_change, do_checkout, amend_departure |
| `RoomMast` | room master + occupancy flag | Code, Type ('RO'), RoomStat ('D'/free), LogSite_Code | 86 | free_rooms (SELECT), room_change (UPDATE RoomStat) |
| `Booking` | reservations | DocId, BookNo, OccRoom, Vprefix, Site_Code | 25 | create_booking/update_booking/cancel_booking, room_change (OccRoom) |
| `BookingMore` | booking co-passengers | DocId, Sno, Name | 0 | create_booking |
| `RoomBlockOut` | out-of-order rooms | DocId, RoomNo | 1 | block/unblock (02_MainSetup/FO ops) |
| `RevMast` | revenue/plan codes (RevCode) | Code, Descr | 174 | PlanDetails re-link, reports |
| `PlanDetails` | per-folio plan allocation | FolioNo, RoomNo, RevCode, PlanCode, NoofDays | 0 | room_change (INSERT), amend_departure (UPDATE) |
| `FOMBillDetails` | final bill headers | Bill_No, FolioNo, Status | 662 | settle_folio (INSERT), reverse_checkout (Status='CANCEL') |
| `GuestFolioAmend` | departure-change audit | FolioNo, Site_Code, GuestProf | 167 | amend_departure |
| `FolioLog` | folio event audit (flag I/O/A per line) | Id, FolionoDocid, Flag, Site_Code, U_Name | 1,877 | create_checkin, do_checkout, reverse_checkout, settle_folio |
| `PayChargeLog` | deleted-payment audit (`INSERT ... SELECT *`) | (PayCharge mirror + log cols) | 253 | log_before_delete, delete_payment, reset_tokens |
| `ForEx` | foreign-exchange entries | — | 0 | guest foreign exchange capture |
| `GuestMessage` | room messages (room_change se re-link) | FolioNo, RoomNo, RoomCat | 0 | room_change (UPDATE) |
| `EPABX_IN` | telephony audit — **table absent in Moondata2627** | ID, V_TYPE, ROOM_NO… | n/a (208) | room_change step 8: feature-detect → skip (`epabx_audited=False`), core 7 steps phir bhi commit (`fo_ops.py:231-257`) |

## 2. Read flows (SELECT patterns)

**a) Folio resolve by room** — `fo_ops.open_folio_by_room` (fo_ops.py:37):
```sql
SELECT TOP 1 gf.DocId, gf.FolioNo, gf.GuestProf, gf.Name,
       gf.BookingDocId, gf.Vprefix, gf.Vdate
FROM RoomOcc ro INNER JOIN GuestFolio gf ON gf.DocId = ro.DocId
WHERE RTRIM(ro.RoomNo) = ? AND ro.ChkOutDate IS NULL
  AND ro.Site_Code = ?            -- site filter: HO pattern (LOGSITE_CODE)
ORDER BY ro.ChkInDate DESC
```
(ChkOutDate NULL = in-house; Merge/Resettle/Change forms isi par resolve karti hain.)

**b) Free rooms for Room Change** — `fo_ops.free_rooms` (fo_ops.py:73):
```sql
SELECT RTRIM(Code) FROM RoomMast rm
WHERE RTRIM(rm.Type) = 'RO'
  AND (rm.LogSite_Code = ? OR rm.LogSite_Code = 'HO')   -- HO-or-site pattern
  AND rm.Code NOT IN
      (SELECT RTRIM(ro.RoomNo) FROM RoomOcc ro
       WHERE ro.ChkOutDate IS NULL AND ro.Site_Code = ?)
ORDER BY rm.Code
```

**c) Check-in list** — `checkin.list_checkins` (checkin.py:73): `SELECT TOP 200 … FROM GuestFolio/RoomOcc` with `Vprefix` (financial year) + `Site_Code` filter.

Site-filter rule: har row me `Site_Code`/`LogSite_Code` hota hai; code me `Site_Code = ? OR LogSite_Code = 'HO'` (HO sab sites dekhta hai) — details `00_GLOBAL/DB_Workflow_Overview.md`.

## 3. Write flows (transaction diagrams)

Pattern: `cn.begin()` → validate (room exists, folio open, menuHelp rights) → INSERT/UPDATE series (`commit=False`) → `cn.commit()`; any exception → `cn.rollback()` (db.execute wrapper).

**create_checkin** (`checkin.create_checkin`, checkin.py:115):
```
BeginTrans
  ├─ RoomMast validate (room exists, Type='RO', free)   [SELECT only]
  ├─ next_folio()  → FolioNo (UPDLOCK/HOLDLOCK)
  ├─ make_docid()  → 21-char DocId (D+site+VTYPE+vprefix+folio)
  ├─ INSERT GuestFolio   (DocId, FolioNo, GuestProf, Name, dates, BookingDocId…)
  ├─ INSERT RoomOcc      (DocId, SNo=1, RoomNo, ChkInDate…)
  └─ INSERT FolioLog     (Flag='I', U_Name)
Commit | Rollback
```

**do_checkout** (`checkout.do_checkout`, checkout.py:126):
```
BeginTrans
  ├─ folio_balance() validate (0 balance / clearance flag)
  ├─ UPDATE RoomOcc SET ChkOutDate=getdate(), ChkOutTime=… WHERE DocId
  └─ INSERT FolioLog (Flag='O')
Commit | Rollback
```

**reverse_checkout** (`checkout.reverse_checkout`, checkout.py:194):
```
BeginTrans
  ├─ UPDATE RoomOcc  SET ChkOutDate=NULL, ChkOutTime=''
  ├─ UPDATE PayCharge SET SettleDate=NULL, Bill_No=NULL
  ├─ UPDATE PayCharge SET ModeSet=''
  ├─ UPDATE FOMBillDetails SET Status='CANCEL', U_Name…
  └─ INSERT FolioLog (Flag='R')
Commit | Rollback
```

**room_change** (`fo_ops.room_change`, fo_ops.py:85 — VB6 fdRoomChange.frm save, 7 core steps + optional step 8):
```
BeginTrans
  1. free-room + RoomMast validate             [SELECT]
  2. INSERT RoomOcc  (new SNo, naya RoomNo, PlanCode re-link)
  3. UPDATE RoomOcc  (old SNo: PlanCode/PlanAmt/IncInRate update)
  4. UPDATE RoomOcc  (old SNo: ChkOutDate/ChkOutTime = move time)
  5. UPDATE GuestMessage SET RoomNo/RoomCat (FolioNo match)
  6. UPDATE Booking  SET OccRoom = new room
  7. UPDATE RoomMast SET RoomStat='D'          (old room dirty flag)
  8. INSERT PlanDetails (FolioNo, RoomNo, RevCode…) re-link
  └─ EPABX_IN audit (optional): table missing (SQL-208) → skip,
     affected=7, epabx_audited=False   [fo_ops.py:231-257 feature-detect]
Commit | Rollback   → returns {"new_sno", "affected": 7(+2), "epabx_audited"}
```

**settle_folio** (`folio.settle_folio`, folio.py:92):
```
BeginTrans
  ├─ INSERT FOMBillDetails (Bill_No=next_billno(), FolioNo, total…)
  ├─ UPDATE PayCharge SET Bill_No=?, SettleDate=getdate() WHERE FolioNo
  └─ INSERT FolioLog (Flag='S')
Commit | Rollback
```

**receive_payment** (`folio.receive_payment`, folio.py:400): INSERT PayCharge (VNo=next_vno RC/REC) + company-credit path me `_create_contra` → INSERT PayCharge contra line (`folio.py:513`).

**delete_payment** (`folio.delete_payment`, folio.py:557): `INSERT PayChargeLog SELECT * FROM PayCharge WHERE DocId=?` (audit-before-delete) → DELETE → Commit.

## 4. VNo / race safety

| Counter | Function | Lock pattern | Location |
|---|---|---|---|
| FolioNo | `checkin.next_folio()` | `SELECT MAX(FolioNo) FROM GuestFolio WITH (UPDLOCK, HOLDLOCK) WHERE Site_Code=? AND Vprefix=?` → +1 | checkin.py:88 (BUG-015 fix — do concurrent check-ins ko same folio nahi milega) |
| Bill_No | `folio.next_billno()` | `SELECT MAX(Cast(Bill_No As Int)) FROM FOMBillDetails WHERE LogSite_Code=?` → +1 | folio.py:27 |
| PayCharge VNo | `db.next_vno(table, vtype, vprefix)` | shared `UPDLOCK, HOLDLOCK` helper (README v0.1.1) | folio.py receive_payment (RC/REC prefixes) |

DocId race-safety: `checkin.make_docid` — VB6 exact 21-char pattern `D+site(2)+VTYPE(6)+vprefix(4)+folio(8)` (folio number hi unique key hai; UPDLOCK se do check-in me duplicate nahi banta).

## 5. MenuHelp permission check SQL

VB6 pattern (`menu_help.py`, FaVoucher.bas port):

```sql
-- base query (menu_help.py:50): user ke rights
SELECT [Option], Param_Str, Flag, Module_Name, Opt1, Opt2, Opt3, Opt4, Code
FROM menuHelp WHERE UserName = ? AND CompCode = ?
-- fallback: 'SA' user (menu_help.py:58,67) agar user ki rows nahi
```

Python helpers (`core/menu_help.py`):

| Helper | Behavior | Line |
|---|---|---|
| `rights(username, caption)` | Param_Str return; missing row/leaf → `'AEDP'` (full access) | 283 |
| `can(username, caption, right)` | `right in Param_Str` (A/E/D/P, case-insensitive) — VB6 SubString(1..4) pattern | 292 |
| `can_open(username, caption)` | Flag 'V' → never; warna A/E/D/P me se koi bhi; Report 'R' + '***P' bhi open (print-only) | 302 |
| `set_param(username, option, param)` | `UPDATE menuHelp SET Param_Str=? WHERE UserName=? AND [Option]=?` (UserPermission UI) | 127 |

Param_Str semantics: `AEDP` = Add/Edit/Delete/Print; `*` = denied; `***P` = print-only (report rows, Flag='R'). Edge: `Flag E/N → Param_Str='AEDP'`, `Flag R → '***P'` (HMS.bas/MDIForm1.frm pattern).
