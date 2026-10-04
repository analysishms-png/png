# HMS WORKFLOWS — PART 2 (EPABX, Messaging/SMS, Members, SmartCard)

Evidence: [V-VB6] decompiled code, [V-SQL] live DB counts, [V-UI] live captures.
Isko HMS_OPERATIONS_MANUAL.md ka Part 5.11–5.14 maano.

---

## 5.11 EPABX / Telecom (PMS-PBX integration)

### Architecture
- **PABX data SQL Server me hi hai** (EPABX_Data, TelExt, TelCallCode, TelCallType — live counts 0;
  EPABX_IN bhi is DB me referenced but check showed absent → Jet side bhi hota hai)
- **Jet side-store**: Temp\DMEPABX.mdb (EPABX_IN table — call records staging),
  connection string verified @10694: `MSDataShape;Jet 4.0;Data Source=...\DMEPABX.mdb`
- MSCOMM32.OCX = serial port integration PABX SMDR line se
- HMS usage-code (FGrid 'CHKOT' rows @131855): checkout ke waqt EPABX_IN me rows
  `Insert into EPABX_IN (ID,V_TYPE='CHKOT',ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE)`
  → PABX ko room-change/check-in/check-out notify (door-lock/phone privileges)
- Wake-up calls: FrmGuestWakeUp; alarm fields `ALARM_HOUR, ALARM_MIN` in EPABX_IN insert @86740

### Workflow
```
Check-In/Room-Change/Check-Out (fdCheckIn/fdRoomChange/FdCheckOut)
→ Insert into EPABX_IN (ID, V_TYPE='CHKOT'/'CHIN'/..., ROOM_NO, GUEST_NAME, ...)
→ EPABX service (serial/SMDR) reads Jet mdb/SQL → PABX update (phone enable, wakeup)
→ call records wapas → TelCall* reports (rRepTel)
```
### Masters
TelExtensionMast (TelExt live 0 — unused is site pe), TelCallCode/Type (call categories)
### Status: site pe **dormant** (0 rows) — code live hai, usage nahi.

---

## 5.12 Messaging / SMS

### In-app messaging [V-UI — Inbox captured]
- Table `Messaging` (Receiver, Sender, VDATE, VType, VNo, ReadYN, Cleared)
- Login pe unread poll: `SELECT * FROM Messaging Where Receiver='SA' and (Cleared is Null
  Or Cleared='' Or Cleared='N') And ReadYN='N' Order By VDATE DESC,VType DESC,VNo DESC,Sender`
- Forms: Inbox/Outbox/EmptyInbox/frmMessage; EXTRAs strip → 'In Box' button

### SMS outbox [V-VB6 + V-SQL]
- Table **DBSENDSMS — 18,810 rows live!** (sabse zyada used side-table)
- `Select * from DBSENDSMS Where ISNULL(SENDTF,'')<>'TRUE'` → pending SMS queue
- SENDTF='TRUE' mark after send; TxtMsg varchar(500) (app startup isko alter karta hai @10925)
- Screens: SMSModule, FrmSMSEnviro (provider config), FrmSMSMultiType, FrmSmsCenterSettings,
  MemberSMS (birthday/renewal alerts), EmailSMSForward (60 refs)
- EXTRAs > SMS > Setup > SMS (API) captured [V-UI] — API-mode provider settings
- **Background sender**: JobScheduler polls DBSENDSMS (session me 10k+ reads) → SMS modem/API

### Workflow
```
Event (booking/bill/night-audit/birthday) → Insert DBSENDSMS (mobile, TxtMsg, event refs)
→ JobSchedule poll → SENDTF<>'TRUE' rows → SMS gateway (API/serial) → SENDTF='TRUE'
```

---

## 5.13 Members / Membership

### Billing chain [V-VB6 — exact columns]
```
MembershipMast (member master) + MemCatMast (1 row live) + MemberFamily
Facility usage → MemBill (DocId,vDate,Vno,VType,MemCode,MemCatCode,CardNo,MthYear,
                NetAmount,Amount,RoundOff)
              + MemBill1 (facility lines: FacilityCode,TaxStru,AcCode,BaseAmt,TaxAmt,OutletCode)
              + MemBill2 (tax lines: TaxCode,TaxPer,TaxAmt)
Renewal: MemRenewalEntry → ValidUpto extend; visits: MemVisitEntry; outstation: memOutStationEntry
Category change: memCatChngEntry (conditions memCatChngCond); revenue masters: MemberShipRevenueMast
```
- 'Verify Member' button FO Check-In pe — member discount/privileges (MemCatMast rules)
- Live: MemBill 0 rows (is property pe membership billing active nahi; sirf category master 1 row)
- TagadaLetter (dues letters), MemAssistant (member app), MemberSMS integration

---

## 5.14 SmartCard / Cash-Card + Door Locks

### Card lifecycle [V-VB6 — exact columns]
```
Registration: Insert Into SmartCardRegistration (Code,CardType,CardNo,Name,Addr,Phone,
              IssDate,ValidUpto,BlockedYN,SerialNo,MemberCode,...)
Recharge/Refund/Lost-ReIssue:
  SmartCardLedger (DocId,VSNo,Type,AmtCr,AmtDr,Narration,PreBalance) — full cash-card GL
  SmartCardReIssueDetail (CardRegId,HW_Id,IssDate,ValidUpto,OldHW_Id,...)
  SmartCardMaster (ContraDocid,HW_Id) — hardware/card binding
Hardware: ACR120U reader (acr120u.dll/SmartCard_ACR.dll) via ModuleSmartCard;
          Godrej door locks (frmGodrejLockSettings) via ModuleDoorLock
```
- Night-audit-adjacent fix: `Update SmartCardRegistration Set RewardBal=... ISNULL normalization` (live trace)
- Live: SmartCardRegistration/Ledger 0 rows — cash-card dormant is site pe, code complete hai
- Cash-card reports: CashCardReciept/CashCardTransactionReport/.ttx present

### Workflow
```
Issue card (Registration + ACR write) → top-up (SmartCardLedger AmtCr) → spend at outlets
(Ledger AmtDr + PreBalance chain) → refund/loss (ReIssue, BlockedYN) → door-lock encoding (HW_Id)
```

---

## Status matrix (live evidence)

| Subsystem | Code | Tables | Live rows | Active? |
|---|---|---|---|---|
| EPABX | full (serial+Jet+SQL) | EPABX_Data/TelExt/EPABX_IN | 0 | dormant |
| In-app Messaging | full | Messaging | unread poll live | ACTIVE |
| SMS | full (API+job poller) | DBSENDSMS | 18,810 | **ACTIVE** |
| Membership | full (3-level billing) | MemBill/MemCatMast | 0 / 1 | dormant |
| SmartCard | full (ACR+locks+GL) | SmartCard* | 0 | dormant |

Modernization note: dormant modules ka code-port priority low — par schema+workflow docs
ready hain agar activate karna ho. SMS outbox pattern DBSENDSMS wala hi new system me
reuse karna chahiye (proven, 18k+ messages processed).
