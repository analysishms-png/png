# 12 Messaging - Reports

## Leaves (MenuHelp)

**reports bucket = 0** (`_logic.json`: `reports: []`, counts hidden=0 report=0) — SMS module me dedicated report leaf nahi (Flag='R' rows zero for `SMSSETUP/EXTSMSSETUP/SMSOPR/EXTSMSOPR/EXTRSMS/EXTSMS`).

## Functioning

(Koi leaf nahi.) Sent/pending history = `SMS OutBox (Pending)`/`SMS InBox (Sent)` dialog (shell:951) — operations side se dekho (`02_Operations/README.md`).

## Database Tables (this layer)

(None — `DBSendSMS` queue reads operations layer se hote hain; koi report table nahi.)

## Backend SQL pattern

(None — no report SQL ported for SMS; VB6 SMS report captions not in menuHelp SA template.)

## MenuHelp permission check

```sql
SELECT COUNT(*) FROM menuHelp
WHERE Module_Name IN ('SMSSETUP','EXTSMSSETUP','SMSOPR','EXTSMSOPR','EXTRSMS','EXTSMS')
  AND Flag = 'R';
-- expected 0 (SMS bucket me report rows nahi)
```
(No layer screenshots — no leaves.)
