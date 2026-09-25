# 13 Members Mgmt - Masters

## Leaves (MenuHelp)

**masters bucket = 4** (`MemMas`): `Member Select Category`, `Category Master`, `Member Master`, `Environment Settings`.
Curated capture leaf: **`Member Select Category`** (shell:1526 → `hr.open_memcat`).

## Functioning

- `Member Select Category` → `hr.open_memcat` → `members_masters.memcat_*` CRUD (`MemCatMast`, Subscription field).
- `Category Master` → `hr.open_empcat` (shell:1141 — shared HR `EmpCategory` openers but MemMas rows; member category caption family).
- `Environment Settings` → `gs.open_enviro` (shell:1604) → memenviro/enviro config (`member_billing.update_memenviro` :106).
- `Member Master` → **blocked** `_coming_soon` (shell tuple :1388, "no DB tables") — no member master table exists.

## Database Tables (this layer)

| Table | Rows |
|---|---|
| `MemCatMast` | 1 |
| `FacilityMast` | 0 |
| `RevMast` | 174 |
| `MembershipRevMast` | 0 |

## Backend SQL pattern

```sql
INSERT INTO MemCatMast (Code, Name, ShortName, Subscription, ...)  -- members_masters:100
UPDATE MemCatMast ... / DELETE FROM MemCatMast WHERE Code=?         -- :113/:132
INSERT INTO FacilityMast (Code, Name, ShortName, ChargeType, ...)   -- :209
-- Facility/Revenue/Environment Settings config rows
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Member Select Category','Category Master','Environment Settings','Member Master');
-- SA AEDP E MemMas (Member Select Category + Environment Settings + Member Master)
-- Category Master: VIRENDRA/SA AEDP E MemMas
```
Screenshot: `screenshots/10_masters_Member_Select_Category.png` (copy: `01_Masters/screenshots/`).
