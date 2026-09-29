# 13 - Members Management - Database Workflow

Live counts (2026-09-25, `Moondata2627`, read-only):

## 1. Tables (this module)

| Table | Rows | Role |
|---|---|---|
| `MemCatMast` | 1 | Member category master |
| `MemberFamily` | 37 | Member family rows (member_billing:29) |
| `MemBill` / `MemBill1` | 0 | Member bill header/lines |
| `MemEnviro` | — | Member enviro config (`list_memenviro` member_billing:96) |
| `MemCatChngDetail`, `MemCatFacility`, `MemCatRevWise`, `MemCatRevWise` | — | Category change/facility/revenue detail |
| `RevMast` | 174 | Revenue master (member revenue categories) |
| `MembershipRevMast` / `MemFacilityBilling` / `MemFacilityMast` | 0 | Membership revenue/facility billing |
| `FacilityMast` / `FacilityBill` / `FacilityBill1` / `FacilityBill2` | 0 | Facility master + bills |
| `LocationFacility` | — | Location-facility assignment (facility_billing:151) |
| `MemVisitEntry`, `MemOutStation`, `MemProposedMemInf` (0), `MemTagadaLetter`, `MemAddRWA`, `MemRevenueForPeriod` | — | Visit/propose/letter ancillary rows |

(No dedicated member master table — `Member Master` leaf = `_coming_soon` blocked, shell comment "no DB tables".)

## 2. Read flows (SELECT patterns)

- Categories: `members_masters.memcat_list/get/exists` (:79-91, `SELECT ... FROM MemCatMast`).
- Facilities: `facility_list/get/exists` (:188-200, `FacilityMast`); revenue: `memrev` helpers (:278+, `MembershipRevMast`/`RevMast`).
- Bills: `member_billing.list_membill/get_membill` (:55-61); family `list_family(subcode)` (:20); enviro `list_memenviro/get_memenviro` (:96/:101); catch `list_catchng` (:130).
- Facility bills: `facility_billing.list_fbill/get_fbill` (:20-26); location `list_locfac` (:143).

## 3. Write flows (transaction diagrams)

**Member category** (`members_masters.memcat_insert`, :94):
```
memcat_exists guard (:90)
  -> INSERT INTO MemCatMast (Code, Name, ShortName, Subscription, ...)  (:100)
COMMIT ; memcat_update (:113) ; memcat_delete -> DELETE MemCatMast (:132)
```
**Member bill** (`member_billing.insert_membill`, :66):
```
-> INSERT INTO MemBill (Docid, vdate, vno, vprefix, Vtype, MemCode,     (:72)
                        MemCatCode, cardno, MthYear, NetAmount, ...)
-> (lines MemBill1 where applicable)
COMMIT
```
**Member family**: `insert_family` → `INSERT INTO MemberFamily (SubCode, SNo, Relationship, ...)` (:29).
**Facility bill** (`facility_billing.insert_fbill`, :31):
```
-> INSERT INTO FacilityBill (Docid, VType, Vdate, Vno, Vprefix, ...)    (:42)
-> INSERT INTO FacilityBill1 (...)                                       (:79)
-> INSERT INTO FacilityBill2 (DocId, Docid1, ..., TaxCode, BaseValue...) (:117)
COMMIT (3-table txn — orphan risk if partial: FO KI-7 analog)
```
**Location facility**: `insert_locfac` → `INSERT INTO LocationFacility (...)` (:151).
**Enviro update**: `update_memenviro` (:106).

## 4. VNo / race safety

- `MemBill.vno/vprefix` + `FacilityBill.vno/vprefix` — select-then-consume **KI-1 family**.
- `MemberFamily` PK (SubCode, SNo) — sno guard.
- `FacilityBill` 3-table multi-insert — cn transaction (orphan risk noted).
- `MemBill=0`, `FacilityMast/Bill=0` — live data sparse (KI-2 analog for tests).

## 5. MenuHelp permission check SQL

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Member Select Category','Environment Settings',
                          'Category Master','Member Master','Member Billing');
-- Member Select Category: SA AEDP E MemMas (+MUDIT, Sanjay)
-- Environment Settings: SA AEDP E MemMas
-- Category Master: VIRENDRA/SA AEDP E MemMas
-- Member Master: SA AEDP E MemMas
-- Member Billing: NO ROW (registry-only, gap)
```
Layer screenshots: `01_Masters/10_masters_Member_Select_Category.png`, `02_Operations/20_operations_Member_Billing.png` (copies).
