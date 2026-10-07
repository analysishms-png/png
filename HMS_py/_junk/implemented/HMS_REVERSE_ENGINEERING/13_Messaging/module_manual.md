# MESSAGING MODULE

## 1. Purpose

Messaging module hotel ke internal messaging, SMS gateway integration, email forwarding, aur guest communication ke liye hai. Inbox/Outbox system, SMS templates, aur automated notifications yahin manage hoti hain. Saare modules se integrated hai — reservation, check-in, check-out, booking events par automatic SMS bheje ja sakte hain.

**Evidence:** [VERIFIED-VB6] — 3 menu items, single group (InBox, OutBox, Messaging).

## 2. Menu Structure (from MENU_INVENTORY.md)

```
Messaging
├── InBox
├── OutBox
└── Messaging
```

## 3. Screens (from vb6_form_inventory.md)

### Messaging Forms
- **SMSModule** — SMS module entry
- **FrmSMSEnviro** — SMS environment settings (provider config)
- **FrmSMSMultiType** — Multiple SMS type
- **FrmSmsCenterSettings** — SMS center settings
- **frmMessage** — Message form
- **frmmessageKey** — Message key
- **MemberSMS** — Member SMS (birthday/renewal alerts)
- **EmailSMSForward** — Email/SMS forward table
- **MobWebAPI** — Mobile web API
- **FrmUploadProcess** — Upload process
- **FrmDataRecieving** — Data receiving

### Core Forms
- **Inbox** — Inbox
- **Outbox** — Outbox
- **EmptyInbox** — Empty inbox
- **FrmMsgBox** — Message box
- **FindMess** — Find message

## 4. Masters

| Master | Table | Evidence |
|--------|-------|----------|
| SMS Environment | FrmSMSEnviro | [VERIFIED-VB6] |
| SMS Center Settings | FrmSmsCenterSettings | [VERIFIED-VB6] |
| EmailSMSForward | EmailSMSForward | [VERIFIED-VB6] |

## 5. Transactions

| Transaction | Form | Table | Evidence |
|-------------|------|-------|----------|
| Send SMS | SMSModule | DBSENDSMS | [VERIFIED-VB6] |
| SMS Template | FrmSMSEnviro | EmailSMSForward | [VERIFIED-VB6] |
| Email Forward | — | EmailSMSForward | [VERIFIED-VB6] |
| Member SMS | MemberSMS | — | [VERIFIED-VB6] |

## 6. Operations

- **Inbox** — Receive internal messages
- **Outbox** — Send internal messages
- **SMS Sending** — Send SMS to guests/members
- **SMS Templates** — Manage SMS templates for events
- **Email Forwarding** — Forward emails as SMS
- **Member Notifications** — Birthday/renewal alerts
- **SMS Center** — Configure SMS gateway

## 7. Reports

Messaging module me koi direct reports nahi hain. SMS sending logs DBSENDSMS table me track hote hain [VERIFIED-VB6].

## 8. Permissions

- Messaging module access UserPermission form se control hota hai [VERIFIED-VB6]
- Per-user menu hierarchy MenuHelp table me OPT1..OPT4 columns [VERIFIED-SQL]
- Messaging inbox: `SELECT * FROM Messaging Where Receiver='SA' And ... ReadYN='N'` [VERIFIED-SQL]

## 9. Business Rules

1. **EmailSMSForward table** — SMS templates with Type, MobileNo, TxtMsg, FlagType, DepartCode [VERIFIED-VB6]
2. **SMS types** — 'Reservation', 'Reservation Cancel', 'Check In', 'Check Out', 'Booking', 'Booking Cancel', 'KOT Message', 'Outlet Bill' [VERIFIED-VB6]
3. **FlagType** — 'FOM' (Front Office), 'BANQ' (Banquet), 'POS' [VERIFIED-VB6]
4. **DBSENDSMS** — SMS outbox poll (1,048 reads in trace) [VERIFIED-SQL]
5. **Messaging table** — In-app messaging with Receiver, ReadYN [VERIFIED-SQL]
6. **MobWebAPI** — Mobile web API for SMS [VERIFIED-VB6]
7. **Audit columns** — Har transaction me U_Name, U_EntDt, U_AE ('A'/'E'/'D') [VERIFIED-VB6]
8. **Multi-site** — LogSite_Code filters every query [VERIFIED-VB6]

## 10. VB6 Logic (from EXTRAS.text)

### SMS Center Settings (FrmSmsCenterSettings)
```vb
' SMS center settings and template management
' Delete From EmailSMSForward Where Type In ('Common','Holiday','Outstanding','Birth Day','Marriage Anniversary')
' Update EmailSMSForward Set FlagType='FOM',DepartCode='<site>FOM' Where Type In ('Reservation','Reservation Cancel','Check In','Check Out')
' Update EmailSMSForward Set FlagType='BANQ',DepartCode='<site>BANQ' Where Type In ('Booking','Booking Cancel')
' Insert into EmailSMSForward for each template type
```

### SMS Environment (FrmSMSEnviro)
```vb
' SMS environment settings (provider config)
' Delete From EmailSMSForward Where Type In ('KOT Message','Outlet Bill','Assign Delivery') And FlagType='POS'
' Update EmailSMSForward SET TxtMsg=<template>
```

### SMS Sending
```vb
' Select TxtMsg,MobileNo from EmailSMSForward WHERE LOGSITE_CODE='<site>' 
'      And Type='Check Out' And Len(MobileNo)>=10 And Len(TxtMsg)>0
' Select Id,Type,MobileNo,TxtMsg From EmailSMSForward S 
'      Where S.LogSite_Code='KK' And (FlagType In ('FOM','BANQ') or Departcode='KKRS') ORDER BY S.Id
```

### Member SMS
```vb
' Member birthday/renewal alerts
' MemberSMS form
```

### MobWebAPI
```vb
' Mobile web API for SMS gateway
```

## 11. SQL Logic (from SQL_TRACKING_RESULTS.md)

### SMS Outbox Poll
```sql
-- DBSENDSMS: SMS outbox poll (1,048 reads in trace)
-- JobSchedule/JobScheduledDetail: background job scheduler polls SMS outbox
```

### Messaging Inbox
```sql
SELECT * FROM Messaging Where Receiver='SA' And ... ReadYN='N'
```

### EmailSMSForward Query
```sql
Select Id,Type,MobileNo,TxtMsg From EmailSMSForward S 
Where S.LogSite_Code='KK' And (FlagType In ('FOM','BANQ') or Departcode='KKRS') ORDER BY S.Id
```

### Check-out SMS
```sql
Select TxtMsg,MobileNo from EmailSMSForward 
WHERE LOGSITE_CODE='<site>' And Type='Check Out' 
And Len(MobileNo)>=10 And Len(TxtMsg)>0
```

## 12. Tables (from DATABASE_INVENTORY.md)

| Table | Usage Count | Purpose |
|-------|-------------|---------|
| EmailSMSForward | 60 | Email/SMS forward templates |
| DBSENDSMS | 1,048 | SMS outbox |
| Messaging | — | In-app messaging |
| JobSchedule | 5,214 | Job scheduler |
| JobScheduledDetail | 5,213 | Job scheduler detail |

## 13. Fields

### EmailSMSForward
- Id (int), Type (varchar(25)), MobileNo (varchar(255)), EmailId (varchar(255))
- Site_Code (varchar(2)), U_Name (varchar(10)), U_EntDt (datetime), U_AE (varchar(1))
- LogSite_Code (varchar(2)), TxtMsg (varchar(500)), FlagType (varchar(5))
- DepartCode (varchar(6)), GuestMsg (varchar(500)) [VERIFIED-VB6]

### Messaging
- Receiver, ReadYN, Message, Date
- U_Name, U_EntDt, U_AE [VERIFIED-SQL]

### DBSENDSMS
- MobileNo, TxtMsg, Flag, Date
- U_Name, U_EntDt, U_AE [VERIFIED-VB6]

## 14. Workflow

```
SMS Center Settings (FrmSmsCenterSettings)
  ├── Configure SMS Gateway
  ├── Set SMS Templates
  └── Set FlagType (FOM/BANQ/POS)
       ↓
SMS Environment (FrmSMSEnviro)
  ├── Provider Configuration
  └── Template Management
       ↓
Event Trigger (Reservation/Check-in/Check-out/Booking)
  ├── Select SMS Template (EmailSMSForward)
  ├── Select Guest Mobile No
  └── Send SMS (DBSENDSMS)
       ↓
SMS Gateway (MobWebAPI)
  └── Deliver SMS
       ↓
Reports
  └── SMS Sending Log
```

## 15. Screenshots

Screenshots folder me available hain:
- Messaging module ke screenshots `13_Messaging/screenshots/` me hain

## 16. Test Cases

| Test Case | Description | Evidence |
|-----------|-------------|----------|
| TC-MSG-001 | SMS center settings | [VERIFIED-VB6] |
| TC-MSG-002 | SMS environment configuration | [VERIFIED-VB6] |
| TC-MSG-003 | Send SMS to guest | [VERIFIED-VB6] |
| TC-MSG-004 | SMS template management | [VERIFIED-VB6] |
| TC-MSG-005 | Email forward as SMS | [VERIFIED-VB6] |
| TC-MSG-006 | Member birthday SMS | [VERIFIED-VB6] |
| TC-MSG-007 | Member renewal SMS | [VERIFIED-VB6] |
| TC-MSG-008 | Inbox/Outbox messaging | [VERIFIED-SQL] |
| TC-MSG-009 | Check-out SMS trigger | [VERIFIED-VB6] |
| TC-MSG-010 | Reservation SMS trigger | [VERIFIED-VB6] |

## 17. Known Issues

1. **DBSENDSMS poll** — SMS outbox poll 1,048 reads in trace — frequent polling [VERIFIED-SQL]
2. **No stored procedures** — Application inline ADODB SQL use karta hai [VERIFIED-VB6]
3. **MobWebAPI** — Legacy mobile API, modern SMS gateway integration karna hoga

## 18. Migration Notes

1. **SMS gateway** — Modern SMS gateway (Twilio, MSG91, etc.) integration karna hoga
2. **Email/SMS forward** — EmailSMSForward table ko modern notification system se replace karna hoga
3. **Messaging** — In-app messaging ko modern real-time messaging (WebSockets) me upgrade karna hoga
4. **Job scheduler** — JobSchedule/JobScheduledDetail ko modern job scheduler (Hangfire, Quartz) se replace karna hoga
5. **MobWebAPI** — Legacy mobile API ko modern REST API se replace karna hoga
6. **Template management** — SMS templates ko modern template engine se replace karna hoga
