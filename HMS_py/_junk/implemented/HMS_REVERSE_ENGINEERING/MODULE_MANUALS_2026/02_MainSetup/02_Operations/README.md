# 02 Main Setup - Operations

## Leaves (MenuHelp)

**operations bucket = 0** (`_logic.json`: `operations: []`, count 0) — Main Setup sirf masters module hai; koi entry/transaction leaf nahi.

## Functioning

(Koi leaf nahi.) Yahan ke saare 51 leaves master CRUD hain (`01_Masters/README.md`); transactions dusre modules (`01_Finance` vouchers, `04_FrontOffice` checkin, `07_POS` billing) me hote hain.

## Database Tables (this layer)

(None — operations ke liye koi table write nahi. `sys_config`/`general_setup` config tables bhi master/config layer ke andar classify hote hain.)

## Backend SQL pattern

(None.)

## MenuHelp permission check

```sql
-- Opt1 bucket (Main Setup) me Flag NOT IN ('R','V') aur master captions ke alawa rows:
SELECT RTRIM([Option]), Flag FROM menuHelp
WHERE Opt1 = (SELECT TOP 1 Opt1 FROM menuHelp
              WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND Opt1<>0
                AND RTRIM([Option])='Main Setup')
  AND Flag NOT IN ('R','V');
-- expected: saare rows Flag='E' master rows (operations 0)
```
(No layer screenshots — no leaves.)
