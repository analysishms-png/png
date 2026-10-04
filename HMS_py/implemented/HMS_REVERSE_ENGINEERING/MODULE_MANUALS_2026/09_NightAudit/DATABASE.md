# 09 - Night Audit - Database Workflow

Live counts (2026-09-25, `Moondata2627`, read-only):

## 1. Tables (this module)

| Table | Rows | Role |
|---|---|---|
| `NightAuditLog` | 134 | NA run log (start/end, date change from/to) |
| `Enviro` | 1 | Global env config — `NCur` (current NA date) |
| `PayCharge` | — | Charge postings (room + POS revenue) |
| `GuestFolio` | — | Folio headers (guest_folio.py:104) |
| `GuestFolioAmend`, `GuestFolioProfDetail`, `GroupFolioMore` | — | Folio amendments/profile/group rows |
| `FolioLog` | — | Folio audit log (folio.py:158) |
| `FOMBillDetails` | — | Settle bill details (folio.py:132) |
| `Booking` | — | Tentative no-show cancel (`UPDATE Booking SET Cancel='Y'`, nightaudit:215) |
| `SubGroupCurrBal`, `ACGroupCURRBal`, `LastVoucher`, `Budget` | — | Year-end balances (year_end.py) |

## 2. Read flows (SELECT patterns)

- Flags/pending: `get_night_audit_flags` (nightaudit:51), `check_pending_kots` (:75), `check_unsettled_bills` (:92).
- Rooms: `uncharged_rooms` (:164), `get_inhouse_rooms` (:224), `get_pos_revenue` (:348).
- Log browse: `na_log(top=100)` (:613) → `SELECT ... FROM NightAuditLog`.
- Folio: `guest_folio.list_all/get/search` (:69-85); `folio.folio_charges` (:34), `folio_balance` (:65), `charges_detail` (:248).
- Year-end: `get_fy_dates` (year_end:31), `get_subgroup_balances` (:66), `get_acgroup_balances` (:85), `year_end_summary` (:180), `check_datelock` (:55).

## 3. Write flows (transaction diagrams)

**Night audit run** (`nightaudit.run_night_audit`, :454):
```
pre-checks: pending KOTs / unsettled bills / uncharged rooms        (:75-164)
cancel tentative no-shows -> UPDATE Booking SET Cancel='Y' ...       (:215)
post room charges     -> INSERT INTO PayCharge (x3 paths :299/:311/:323)
post POS revenue      -> _get_voucher_prefix (:380, KI-1 family)
                      -> INSERT INTO PayCharge (:432)
log                   -> INSERT INTO NightAuditLog (:153)
COMMIT (single transaction)
```
**Reverse NA** (`reverse_night_audit`, :574):
```
confirm dialog -> UPDATE Enviro SET [NCur] = NCur - 1 ...            (:602)
COMMIT (Enviro date roll-back; charges audit removed separately — 'Charges Remove Log')
```
**Folio settle** (`folio.settle_folio`, :92):
```
INSERT INTO FOMBillDetails (Bill_No, ...)                           (:132)
UPDATE PayCharge SET Bill_No=?, SettleDate=getdate() ...            (:140)
INSERT INTO FolioLog (audit)                                        (:158)
COMMIT (bill+charges+log ek transaction)
```
**Room charge post**: `folio.post_room_charge` → `INSERT INTO PayCharge` (:214), `make_pc_docid` (:241).
**Year-end** (`year_end.carry_forward_balances`, :103): `UPDATE SubGroupCurrBal` (:115), `UPDATE ACGroupCURRBal` (:121), `UPDATE LastVoucher` (:127), `reset_budget` → `INSERT INTO Budget` (:162).

## 4. VNo / race safety

- `_get_voucher_prefix(vtype, vdate)` (nightaudit:380) — SELECT-then-consume → **KI-1 family** (same as Finance `Voucher_Prefix`; nightaudit `_next_vno` :129 same pattern).
- `folio.next_billno` (:27) — bill no counter (same family).
- PayCharge multi-post + NightAuditLog single txn; reverse path touches `Enviro` (single row, 1 = singleton config — concurrency safe only with lock).
- `FolioLog`/`NightAuditLog` append-only audit.

## 5. MenuHelp permission check SQL

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Night Audit Log','Occupancy Analysis','Night Audit Process',
                          'Reverse Night Audit','Charges Posting','Daily Report','GSTR-1');
-- Night Audit Log: SA AEDP E NightAuditLR (+Gaurav, htw_system)
-- Occupancy Analysis: Nagendra ***P R NightAuditRR ; Gopi/SA ***P R FDOMISRep
-- Night Audit Process / Reverse Night Audit / Charges Posting: SA AEDP E NightAuditoR
-- Daily Report: Deepak/SA/Gaurav ***P/**P E NightAuditRR
-- GSTR-1: Sumit/SA/STORE ***P R NightAuditGSTR
```
Layer screenshots: `02_Operations/10_operations_Night_Audit_Log.png`, `03_Reports/20_reports_Occupancy_Analysis.png` (copies).
