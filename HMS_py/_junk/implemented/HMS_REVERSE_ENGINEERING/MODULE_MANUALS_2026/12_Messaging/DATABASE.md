# 12 - Messaging (SMS) - Database Workflow

Live counts (2026-09-25, `Moondata2627`, read-only): SMS-like tables = `DBSendSMS`, `EmailSMSForward`, `SMSEnviro`.

## 1. Tables (this module)

| Table | Rows | Role |
|---|---|---|
| `SMSEnviro` | 1 | Gateway/enviro config singleton (per LogSite_Code) |
| `DBSendSMS` | (pending queue) | Outbound SMS queue: DocId, Vtype, Vdate, VNo, SubCode, Mobile1, TxtMsg, SMSDt, SMSTm, SenderName, PartyName, ... |
| `EmailSMSForward` | (forward rules) | Id, Type, MobileNo, EmailId, TxtMsg, Flag, ... |
| `GuestReward` | (reward SMS) | Guest reward messages (sms_comm:83) |

## 2. Read flows (SELECT patterns)

- Config: `sms_enviro.smsenviro_get` → `SELECT ... FROM SMSEnviro WHERE LogSite_Code = ?` (:47-51).
- Forward rules: `sms_comm.list_email_forward` → `SELECT TOP n * FROM EmailSMSForward WHERE Site_Code = ? ORDER BY Id DESC` (:19-20); `sms_enviro.emailforward_list/get` (:123-132, no site filter, `ORDER BY Id`).
- Queue: `sms_comm.list_dbsms` → `SELECT TOP n * FROM DBSendSMS WHERE Site_Code = ? ORDER BY DocId DESC` (:53-54); `sms_http._pending_queue` → `FROM DBSendSMS ...` limit 50 (:349-354).
- Rewards: `sms_comm.list_reward` → `SELECT TOP n * FROM GuestReward WHERE Site_code = ? ORDER BY DocId` (:83-84).

## 3. Write flows (transaction diagrams)

**Queue an SMS** (`sms_comm.insert_dbsms`, :59):
```
-> INSERT INTO DBSendSMS (DocId, Vtype, Vdate, VNo, SubCode, Mobile1,
                          TxtMsg, SMSDt, SMSTm, SenderName, PartyName, ...)  (:61)
COMMIT  -- DocId keyed (KI-1 family if DocId generated select-then-consume)
```
**Update gateway config** (`sms_enviro.smsenviro_update`, :63):
```
-> UPDATE SMSEnviro SET {sets} WHERE LogSite_Code = ?                        (:74)
COMMIT  -- single-row update; no optimistic lock (concurrent edit race)
```
**Forward rule** (`sms_comm.insert_email_forward`, :25):
```
id = SELECT MAX(Id) FROM EmailSMSForward                                     (:26)   -- KI-1 race
  -> INSERT INTO EmailSMSForward (Id, Type, MobileNo, EmailId, TxtMsg, ...)  (:29)
COMMIT ; delete -> DELETE FROM EmailSMSForward WHERE Id = ?                  (:38)
```
(`sms_enviro.emailforward_*` :140-155 = same table, IdENTITY/param variant.)

## 4. VNo / race safety

- `DBSendSMS.DocId/VNo` — select-then-consume **KI-1 family**.
- `EmailSMSForward.Id = MAX(Id)+1` (sms_comm:26) — explicit **KI-1** pattern (no IDENTITY reliance).
- `SMSEnviro` singleton update — last-writer-wins, no lock (SMSConfig analog to FO KI-6).

## 5. MenuHelp permission check SQL

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('SMS (API)','SMS (Scheduled)','Sstup','SMS Environment Settings');
-- SMS (API):      SA AEDP E EXTSMSSETUP
-- SMS (Scheduled):SA AEDP E EXTSMSOPR
-- Sstup:          SA NULL N SMSSETUP   (VB6 misspelling of "Setup", Param NULL)
-- SMS Environment Settings: NO ROW (registry-only)
```
Layer screenshots: `01_Masters/screenshots/10_masters_SMS_(API).png`, `02_Operations/screenshots/20_operations_SMS_(Scheduled).png` (copies).
