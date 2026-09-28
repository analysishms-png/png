# HMS OPERATIONS MANUAL
## Frontend → Backend → Database → SQL Queries → Workflows (Master + Screen Operations)

Evidence: [V-SQL] live trace/catalog, [V-VB6] decompiled code, [V-UI] live GUI capture, [V-CFG] config.
Date: 2026-09-28 | HMS.exe (VB6, 351 objects) + MOONData2627 (SQL Server 2008 R2, 277 tables) | Site 'KK'

---

## PART 1 — FRONTEND (VB6 MDI)

### 1.1 Shell
| Layer | Implementation | Evidence |
|---|---|---|
| Main frame | `ThunderRT6MDIForm` (max 1456×876) | [V-UI] |
| Module strip (left, x 0–107) | 11 buttons: Finance, Main Setup, Reservation, Front Office, House Keeping, Inventory, Point Of Sale, Banquet, Night Audit, HR/Payroll, EXTRAs | [V-UI] |
| Menu bar (top, y 23–103) | Per-module buttons (TopBarLib, owner-drawn); slots dark-pixel se detect | [V-UI] |
| Status bar | clocks ×6, date 28/Sep/2026 | [V-UI] |
| Child forms | `ThunderRT6FormDC`, title = `Module > Group > Screen` | [V-UI] |

### 1.2 Menu engine (2 sources)
1. **Hardcoded defaults**: `Proc_165_0_14C1708` — 524 items [V-VB6] (MENU_INVENTORY.md)
2. **Runtime override**: `MenuHelp` table — per-user 4-level tree (OPT1..4, Flag E/R/N/V) [V-SQL]
   - Query: `Select [Option] Name,OPT1..4 from MenuHelp Where Flag<>'V' And OPT1<>0 And OPT2=0 ... And UserName='SA' And CompCode='2' Order By Code`
   - 69 users: SA=440 items … kot=4 (MENUHELP_PER_USER_ANALYSIS.md; Deepak profile)

### 1.3 Login flow [V-VB6 + V-SQL + V-UI]
```
Analysis.ini load → dd/MMM/yyyy registry enforce
→ select COUNT(*) from userMast            (0 ho to SA seed + user1 'AEDP' for all module codes)
→ SELECT * FROM USERMAST WHERE USER_NAME=  → 'Invalid User'
→ PASSWD decrypt (Proc_4_28_EE06F8), UCase compare → 'Invalid Password'
→ ActiveYN='N' → 'This User Is Not Currently Active'
→ Select isnull(AllowDtChng,'') from UserMast
→ SELECT User1.* FROM User1 LEFT JOIN User_Module ON User_Module.SrNo=User1.SrNo WHERE User1.User_Name=
→ Select * from company [filter for non-SA] order by STart_dt Desc → grid → &Select
→ select * from company where comp_code='2' → session: LogSite_Code='KK', business date Enviro.NCUR
→ select backcolor from usermast → MDI open
```
Backdoor [V-VB6]: 'India12' → BanqAvailability (BUG-008/SRN-001 F-1).

---

## PART 2 — BACKEND (VB6 business logic)

| Concern | Implementation | Evidence |
|---|---|---|
| DB access | ADODB inline SQL; SQLNCLI.1 + MSDataShape/SQLOLEDB; Jet 4.0 (DMEPABX.mdb) | [V-VB6] |
| Transactions | Client-side BeginTrans/CommitTrans/RollbackTrans | [V-VB6] |
| Numbering | Voucher_Prefix (DATE_FROM/TO, START_SRL_NO) + LASTVOU | [V-VB6] |
| Audit columns | U_AE('A/E/D'), U_Name, U_EntDt (+AU_* on edited bills) | [V-VB6] |
| Multi-site | LogSite_Code + Site_Code everywhere | [V-SQL] |
| Background jobs | JobSchedule/JobScheduledDetail poll (10k+ reads/session), DBSENDSMS outbox | [V-SQL] |
| FK/triggers | **NONE** — integrity 100% app-side | [V-SQL] |

---

## PART 3 — DATABASE (core tables + keys) [V-SQL]

| Table | PK | Role |
|---|---|---|
| Booking | DocId,LogSite_Code | reservation header (56 cols incl. ResStatus, Guarantee, Cancel) |
| BookingMore / BookingCancelDetails | DocId(+Sno) | extra guests / cancellation(+CancelAmt, CancellationMode) |
| GuestFolio | DocId | check-in header (40 cols) |
| RoomOcc | DocId,SNo | room rows (35 cols; CHKOUTDATE NULL = in-house; Type 'O'=out) |
| GuestFolioProfDetail | DocId,mProf | guest-profile links (staging rows Docid='' temp) |
| GuestFolioAmend | FolioNo | departure amendments (OldDepDate→DepDate) |
| PayCharge | DocId,SNo | charges(AmtDr)/payments(AmtCr); Bill_No, SettleDate, TaxPer, OnAmt |
| PayChargeLog / PayChargeH | — | posting audit / history |
| GuestProf | Code | 7,804 guests; FOM/POS flags; GUESTSTAT link |
| RoomMast / RoomCat / PlanMast | Code | rooms(roomStat, Type='RO'), cats, 9 plans |
| Enviro | LogSite_Code | NCUR=business date, ImprestAmount, NA flags, POS/KOT config (221+ cols) |
| NightAuditLog | — | 134 rows; DateChngFrom/To, Start/EndNightAudit, U_Name |
| Voucher_Type / Voucher_Prefix | V_Type | categories + numbering ranges |
| Depart / RevMast / TaxStru / SundryType | Code | outlets, revenue heads(ACCODE), tax structures, sundries |
| Sale1/Sale2, KOT, TOKEN, SplitSale1/2, POS_SBill | DocId | POS billing chain |
| ItemMast/ItemRate/Stock/BOM/GodownMast | Code/DocId | inventory |
| HallBook/VenueMast/FunctionType/HallSale1 | DocId | banquet |
| MenuHelp | UserName+CompCode+Code | per-user menu tree |
| userMast/user1/module/User_Module | USER_NAME(+FORM_CODE) | auth + 'AEDP' rights |
| eInvoiceBill1/2, eInvoiceEnviro, eInvoiceToken | DocId | GST e-invoice (NIC mirror) |

Views: BillDet (bill=SUM(AmtDr−AmtCr), join PayCharge→RoomOcc→GuestFolio, Type='O'), BillSummary, ViewLedger, ViewSubgroup, RoomOccDet, SunTransaction, View_Booking... (10)
Procs (3): GetFieldNameAs, GetFieldNameAsStr, Proc_WebService. Triggers: 0. FKs: 0.

---

## PART 4 — MASTER OPERATIONS (workflow + SQL)

### 4.1 Tax Master (Main Setup > General Setup > Tax Master) [V-UI captured]
Open → grid browse (TaxStru) → New/Edit → save updates TaxStru; rates flow to bills via
RevMast.TaxStru → RoomOcc.RoomTaxStru (backfill SQL live trace me: `UPDATE RoomOcc SET
RoomTaxStru=Q.TaxStru FROM RoomOcc INNER JOIN (SELECT ... RoomCat On RoomCat.Code=RoomOcc.RoomCat
Inner Join Revmast On RoomCat.Revcode=Revmast.Code)`).

### 4.2 Payment Type [V-UI captured]
PayTypeMast → PayCharge.PayType values; cashier settlement is table se.

### 4.3 Parameter / Printing Parameters / Printing Setup [V-UI captured]
Enviro columns me store (221+ cols: KOTPrinting, POSBillCalcType, PrintSeperateItemInPOSBill, ...).
Startup pe HMS inhi ko normalize karta hai (trace: IsNull self-heal batch).

### 4.4 Charge/Revenue masters
FrmChargeMast family → RevMast (Code, ACCODE GL-link, TaxStru, Active, TaxInc);
Depart (outlets; AutoResetToken, AutoSplit, KOTAtNightAudit sync from Enviro).

### 4.5 Room/Plan masters
RoomMast(Code, Type='RO', roomStat) ← FrmRoomMast [V-UI via Room Status screens];
PlanMast(9 live) + PlanDetails; RateCode/ItemRate (286 ratelist reads live).

### 4.6 Users & rights (Main Setup)
UserMast(USER_NAME, PASSWD obfuscated, LABEL, ActiveYN, AllowDtChng) +
user1(USER_NAME, FORM_CODE, PARAM_STR 'AEDP') + MenuHelp per-user tree.
Workflow: create user → assign module forms (AEDP) → MenuHelp rows (menu visibility).

---

## PART 5 — SCREEN OPERATIONS (transaction workflows + exact SQL)

### 5.1 Reservation (RrRoomReservation → 'Reservation/Cancellation') [V-VB6]
```
UI: Booking No (auto/manual), Arr/Dep date-time, RoomCat/Type/No, Adult/Child, Rate,
    Company/TA, GuestName, Guarantee, ResMode
→ validations (dates, availability via RoomMast/RoomBlockOut/Booking overlap)
→ Insert Into Booking (56 cols)  [BookingMore for extra guests]
→ letter: BOOKINGPrint.rpt / ConfirmLetter.rpt
Cancel → Insert Into BookingCancelDetails (Advance, CancelAmt, CancellationMode) + Booking.Cancel
No-show → Night Audit 'NoShowAtNightAudit' flag path
```

### 5.2 Walk-In / Check-In (fdWalkInEntry/fdCheckIn) [V-VB6 + V-UI + V-SQL]
```
Entry chooser: Guest Profile | Check In | Duplicate Last Check In |
               Check In with Guest History | Advance Entry | Rooms Display
→ guest fields (48-edit layout — CHECKIN_FIELD_MAP.md)
→ Insert Into GuestFolio (40 cols) + Insert Into RoomOcc (35 cols) + GuestFolioProfDetail
→ RoomMast occupied; folio open
Live trace me isi waqt: GuestFolio/RoomOcc/GuestProf/City reads + staging cleanup deletes
```

### 5.3 Stay operations
- Room/Plan change: `Update RoomOcc Set PlanCode=...,PlanAmt=...,PlanDisc... where Sno=.. And DocId=..`
  + `Update GuestMessage set RoomNo=... where FolioNo=...`
- Date amend: `Insert into GuestFolioAmend (OldDepDate,OldDepTime,DepDate,DepTime,...)`
  + `Update GuestFolio Set DepDate=`
- Merge: `UPDATE GuestFolio SET mFolioNoDocId=..., mFolioNo=`

### 5.4 Posting & Settlement (fdPostChrg / FdReSetlement)
```
Charge:  Insert PayCharge (PayCode→RevMast, AmtDr, TaxPer, OnAmt, RestCode→Depart)
Payment: PayCharge row AmtCr (PayType cash/card/...), SettleDate, Bill_No
Bill:    Bill_No assign → BillDet view (SUM(AmtDr−AmtCr)) → BillPrint.rpt (+IRN/QR if GSTIN)
```

### 5.5 Check-Out [V-VB6]
`Update RoomOcc set CHKOUTDATE=..., CHKOUTTIME=..., IncInRate=..., PlanDisc=...` → Type='O'
→ BillDet me Nights = MAX(ChkOutDate) − MIN(Vdate) → final bill → FdReSetlement.

### 5.6 Night Audit (mdlNightAudit) — READ-ONLY documented; never executed [V-VB6]
```
1) KOTAtNightAudit/POSBillAtNightAudit pending check (Enviro)
2) BEGIN TRANS: ExpSheet(HTEXP/HTSAL) + RoomChrgDueAc postings → Ledger; COMMIT
3) Dirty rooms: RoomOcc(Type not in C,O) → Update RoomMast set roomStat='D'
4) Due-outs (chkoutdate NULL, DepDate<=audit): DepDate+1, nodays recount
5) Update enviro set ncur=<+1>, ImprestAmount=0 → Insert NightAuditLog
6) Depart tokens reset (AutoResetToken) → Split-bill staging delete (VType='B'+ShortName)
   → VOUCHER_PREFIX renumber → COMMIT
Fail → RollbackTrans, 'problem in Last date Settlement...' (ncur unchanged)
```

### 5.7 POS chain (Rs* forms; 3 outlets live: main, High Way point, MOON TEA CAFE) [V-UI]
KOT Entry → KOT → Sale1/Sale2 (+SplitSale1/2 staging) → settlement → PayCharge / GuestFolio
(post-to-room) → POS_SBill print. TOKEN queue; Waiter/Outlet masters.

### 5.8 Banquet (Hall*)
HallBooking (event/venue/FunctionType) → estimate → HallSale1 → HallAcPostChrg → folio/bill
+ Bill Look Up [V-UI].

### 5.9 GST e-Invoice (eInvoice module) [V-VB6 + V-SQL]
```
Bill with GSTIN → CmdeInvoiceSql_Click → eInvoiceBill1(211 rows) + eInvoiceBill2(items)
→ Proc_96_103 → GeneInvBody.Txt (JSON v1.1 hand-built)
→ WinHttp → Chartered Info GSP → IRP → IRN/AckNo/SignedQRCode (185/211 live, last 2026-08-01)
→ printed bill: IRN + AckNo + QR (QrImage control)
Secrets: eInvoiceEnviro plaintext + LastAuthToken.txt (BUG-010/SRN-001 F-5)
```

### 5.10 Inventory chain (Indent → Purchases → Issues → Kitchen stock) [V-UI]
Indent/Purchase Order/Purchase Bill/M.R. Entry captured live; Stock(+StockLog/SplitStock),
BOM, GodownMast; Kitchen Closing Stock kClStk. Kitchen user ka menu is scoped set ka proof.

---

## PART 6 — QUICK SQL REFERENCE (session-verified)

```sql
-- Business date
SELECT NCUR, ImprestAmount FROM Enviro WHERE LogSite_Code='KK';
-- In-house folios
SELECT f.DocId, f.Name, o.RoomNo, f.DepDate FROM GuestFolio f
JOIN RoomOcc o ON o.DocId=f.DocId WHERE o.CHKOUTDATE IS NULL AND f.LOGSITE_CODE='KK';
-- Bill amount per bill_no (view BillDet)
SELECT Bill_No, Bill_Amt, Folio_No, Nights FROM BillDet WHERE LogSite_Code='KK' ORDER BY BillSettleDate DESC;
-- Room status snapshot
SELECT rm.Code, rm.roomStat, o.DocId FROM RoomMast rm
LEFT JOIN RoomOcc o ON o.RoomNo=rm.Code AND o.CHKOUTDATE IS NULL AND rm.LOGSITE_CODE=o.LOGSITE_CODE
WHERE rm.LOGSITE_Code='KK';
-- Last audits
SELECT TOP 5 DateChngTo, U_Name FROM NightAuditLog ORDER BY DateChngTo DESC;
-- User's menu tree
SELECT [Option],OPT1,OPT2,OPT3,OPT4,Flag FROM MenuHelp
WHERE UserName='<u>' AND CompCode='2' AND Flag<>'V' ORDER BY Code;
```

## PART 7 — OPERATIONAL CAUTIONS
1. **Kabhi bina backup ke Night Audit force-mat-karo** — single transaction, failure-safe hai par data-impact bada hai.
2. Duplicate-PK class bugs (PayCharge/Stock) concurrent posting me — ek waqt pe ek terminal se posting (BUG-003/004 fix hone tak).
3. LocationMast missing — Location Master screen use mat-karo (BUG-001).
4. Credentials DB/plain-text me hain — backup files restricted rakho (SRN-001).
5. Har write par U_Name/U_AE/U_EntDt jaata hai — audit trail DB me hai, isliye shared logins avoid karo.

## PART 8 — EVIDENCE FILES
| Area | File |
|---|---|
| Frontend capture index | screenshots/CAPTURE_INDEX.md (97 PNGs, 71 windows) |
| Menu source | 19_VB6_Logic/MENU_INVENTORY.md, MENUHELP_PER_USER_ANALYSIS.md, Deepak_role_profile |
| CheckIn fields | 05_Front_Office/CHECKIN_FIELD_MAP.md |
| Night Audit | 10_Night_Audit/NIGHT_AUDIT_FLOW.md |
| SQL trace | 20_SQL_Tracking/SQL_TRACKING_RESULTS.md (17,525 stmts) |
| Database | 18_Database/LIVE_DATABASE_DICTIONARY.md (+columns/indexes/views raw) |
| GST | 24_GST_EInvoice/GST_EINVOICE_FLOW.md |
| Bugs/Security | 21_Testing/BUG_REGISTER.md, SECURITY_REMEDIATION_NOTE_SRN-001.md |
