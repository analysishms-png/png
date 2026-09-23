# FRONT_OFFICE_BUGS.md

Bug-fix loop log (REPRODUCE → ROOT CAUSE → FIX → TEST). Sab fixes live HMS DB ke against **DB-integration tests** se verified hain (`HMS_py/tests/test_front_office.py`, 27 tests).

| # | Bug | Root cause | Fix | Test |
|---|-----|-----------|-----|------|
| B-01 | `pos_table_ui` pehla click hi `AttributeError` (list_all/get/insert/update/delete missing) | UI core me exist-na-karne wale module-level fns call karta tha | core `pos_table.py` me CRUD wrappers (RoomMast `Type='TB'` route) | `test_ui_walkthroughs.py` |
| B-02 | **31 API mismatches** across 10 UI files (fa_ledger, member/facility billing, guest_services, hr_payroll, pos_na, pos_packing, reports, shell, sys_config, inventory) | UIpurani/galat core signatures call karta tha — sab latent runtime crashes | Har call-site real core API pe migrate; missing core fns (ledger list/insert, gs comments, packing CRUD, member CRUD, hr fns) add | `tools/api_mismatch_audit.py` → **0 mismatches** |
| B-03 | `hr_payroll.insert_loan` param mismatch (BUG-C06) | UI/core signature drift | Signature aligned | audit + suite |
| B-04 | `facility_billing.insert_fbill` — SQL error 109 har insert pe | 16 columns, 12 VALUES (params kam) | VALUES clause repaired (16==16, 12 markers) | `TestFacilityBilling::test_insert_get_delete_roundtrip` |
| B-05 | `insert_fbill` date-convert fail | VALUES order shifted: `ToPeriod` ko `'A'`, `U_Name` ko `getdate()`, `U_EntDt` (datetime) ko user-string mil raha tha | Marker order corrected: `..., ToPeriod=?, U_AE='A', U_Name=?, U_EntDt=getdate(), Site=?, LogSite=?, Remark=?` | same roundtrip test |
| B-06 | `insert_fbill1` truncation (SQL 8152) | `U_AE` varchar(1) (A/E flag) me `user` ("PYADMIN") ja raha tha | `U_AE` literal `'A'` + param list se duplicate user hataya | same roundtrip test |
| B-07 | `facility_billing.insert_fbill1` me `U_Name` ko `getdate()` — datetime column me user-string | column/value misalignment | `U_Name=?` (user), `U_EntDt=getdate()` restore | roundtrip test |
| B-08 | Reservation `cancel` — DocId 22 chars banta tha (21-char column) | `("C"+docid)[:21]` slice galat jagah | Prefix-swap logic 21-char safe | cancel tests |
| B-09 | Availability me `ToDate NULL` wale 50 stale RoomBLockOut rows "forever blocked" ginti thi | NULL-date handling missing | Sirf valid dated blocks count | `TestAvailability` |
| B-10 | `reports.departure_query` me bina param ke marker | Param order drift | Params aligned | `TestReports` |
| B-11 | `test_validation_crud.py` pytest me 2 errors | Adhoora helper-script (parametrize kabhi likha hi nahi) | Helpers ko non-test bana diya (documented) | full suite |
| B-12 | `pos_sales.py` working-tree corruption (except de-indent + galat tuple-indices) | Editing accident (HEAD clean tha) | `git checkout` restore + same-pattern scan (aur koi nahi) | compile + suite |

## Verification

```
FO suite:        27 passed (live DB integration)
Full regression: 185 passed
API audit:       0 mismatches
```
