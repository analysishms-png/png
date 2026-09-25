# 13 Members Mgmt - Operations

## Leaves (MenuHelp)

**operations bucket = 0 classify** — `Member Billing` registry-only (menuHelp NO ROW). Curated capture leaf: **`Member Billing`** (shell:1505 → `memb_ui.open_member_billing`).

Registry aliases (same opener, shell:1584-1587): `Member Bill Printing`, `Member Visit Entry`, `Member Renewal Entry`, `Member Assistant`. `Auto Settle Card Balance` (other bucket) → `pm.open_auto_settle_card_balance` (shell:1529).

## Functioning

- `Member Billing` → `member_billing_ui.open_member_billing` — member billing hub: bill create (`insert_membill` MemBill+lines), family rows (`insert_family` MemberFamily), enviro (`update_memenviro`), catch rows (`insert_catchng`).
- Visit/renewal/assistant flows route to same hub; facility charges via `facility_billing.insert_fbill` (3-table FacilityBill family).

## Database Tables (this layer)

| Table | Rows | Role |
|---|---|---|
| `MemBill`/`MemBill1` | 0 | Member bill header/lines |
| `MemberFamily` | 37 | Family rows |
| `FacilityBill`/`1`/`2` | 0 | Facility bills (3-table) |
| `MemEnviro` | — | Config singleton |
| `LocationFacility` | — | Location-facility map |

## Backend SQL pattern

```sql
INSERT INTO MemBill (Docid, vdate, vno, vprefix, Vtype, MemCode, ...)   -- member_billing:72
INSERT INTO MemberFamily (SubCode, SNo, Relationship, ...)               -- :29
INSERT INTO FacilityBill / FacilityBill1 / FacilityBill2                 -- facility_billing:42/:79/:117
INSERT INTO LocationFacility (...)                                       -- :151
-- MemBill.vno / FacilityBill.vno = KI-1 family counters
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Member Billing','Member Visit Entry','Auto Settle Card Balance');
-- Member Billing / Member Visit Entry: NO ROW (registry-only)
-- Auto Settle Card Balance: pm.open (shell:1529)
```
Screenshot: `screenshots/20_operations_Member_Billing.png` (copy: `02_Operations/screenshots/`).
