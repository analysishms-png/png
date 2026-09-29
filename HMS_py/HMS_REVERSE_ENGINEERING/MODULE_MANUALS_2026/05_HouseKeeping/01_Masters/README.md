# 05 House Keeping - Masters

## Leaves (MenuHelp)

**masters bucket = 0** (`_logic.json`: `masters: []`) — HK module me master leaf nahi (`Complaint Master` caption ke bawajood wo classify `other` bucket me hai — header/feature row rule; viewer read-only hai, CRUD nahi).

## Functioning

(Koi leaf nahi.) Room/HK state dusre masters (`RoomMast` = `02_MainSetup`) se aati hai; HK sirf `RoomStat` mutate karta hai (operations layer).

## Database Tables (this layer)

(None.)

## Backend SQL pattern

(None.)

## MenuHelp permission check

```sql
SELECT COUNT(*) FROM menuHelp
WHERE Opt1 = (SELECT TOP 1 Opt1 FROM menuHelp
              WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND Opt1<>0
                AND RTRIM([Option])='House Keeping')
  AND RTRIM([Option]) IN ('Room Category','Plan Master');  -- typical master captions
-- expected 0 (HK bucket me master rows nahi)
```
(No layer screenshots — no leaves.)
