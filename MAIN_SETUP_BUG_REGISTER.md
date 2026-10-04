# MAIN SETUP - BUG REGISTER

Rules (prompt §16): one entry per confirmed bug. Status: OPEN / ANALYZED /
FIXED / VERIFIED / BLOCKED. Do not log a difference as a bug without
documenting legacy (VB6) behavior AND observed Python behavior.

Template:

```
ID: BUG-MS-000
Priority:
VB6 File:
Python File:
VB6 Procedure:
Python Function:
Screen:
Category:
Expected Behavior:
Actual Behavior:
Root Cause:
Database Impact:
UI Impact:
Report Impact:
Print Impact:
Fix:
Test:
Status:
Date:
```

---

## Bugs

### BUG-MS-001 (OPEN, informational)
- Python File: HMS_py/ui/shell.py
- Screen: registry (whole app)
- Category: BACKEND
- Actual Behavior: `_form_registry()` dict contains an empty-string key
  wired to `_coming_soon("")` at shell.py:1726 — dead entry, no menu leaf
  has caption "".
- Expected Behavior: registry keys always match a real menu leaf caption.
- Fix: pending cleanup (low priority, harmless).
- Status: OPEN
- Date: 2026-10-01

---

### BUG-MS-002 (VERIFIED)
- Priority: P1
- VB6 File: FODER/FrmTaxMast.frm
- Python File: HMS_py/core/taxmaster.py
- VB6 Procedure: Form_Load loc_10A9847/10A98B9/10A9996, Print loc_1085B77,
  Search loc_F27F85
- Python Function: list_all / get / exists
- Screen: Tax Master (Main Setup > General Setup)
- Category: SQL / DATA
- Expected Behavior: har SELECT property-scoped ho:
  `(LOGSITE_CODE='<site>' OR LOGSITE_CODE='HO')` (prompt §5).
- Actual Behavior: Python SELECT me site filter THA HI NAHI — saare
  RevMast FieldType='T' rows (kisi bhi property ke) dikhte the.
- Root Cause: port me global query likha gaya, legacy filter copy nahi hua.
- Database Impact: cross-property data leak (multi-site DB me).
- Fix: `SITE_FILTER = "(LogSite_Code = ? OR LogSite_Code = 'HO')"` —
  list_all/get/exists me shaamil.
- Test: tests/unit/test_taxmaster_vb6_parity.py
  (test_list_all_has_vb6_site_filter, test_get_and_exists_are_site_scoped)
- Status: VERIFIED (live: list_all = 9 rows, site=KK)
- Date: 2026-10-01

---

### BUG-MS-003 (VERIFIED)
- Priority: P1
- VB6 File: FODER/FrmTaxMast.frm (Proc_15_34_106D408, Proc_15_35_106CE60)
- Python File: HMS_py/core/taxmaster.py
- VB6 Procedure: save validation loc_136F218 + Txt_Validate
- Python Function: insert / update (NEW _require_unique)
- Screen: Tax Master
- Category: VALIDATION
- Expected Behavior: save par 'Duplicate Name' / 'Duplicate Short Name'
  block — `Select Count(*) From RevMast Where (LOGSITE...) and Name='...'`
  (+ `And Code<>'<current>'` edit mode). LEGACY: koi FieldType filter nahi.
- Actual Behavior: Python me sirf PK Code ka `require_absent` tha;
  Name/ShortName duplicate allow ho jate the.
- Root Cause: VB6 ke 2 duplicate-check procedures port hue hi nahi.
- Fix: `_dup_count()` + `_require_unique()` insert/update me.
- Test: test_insert_duplicate_name_blocked, test_insert_duplicate_short_blocked,
  test_update_duplicate_excludes_current_code,
  test_duplicate_check_has_no_fieldtype_filter_like_vb6
- Status: VERIFIED
- Date: 2026-10-01

---

### BUG-MS-004 (VERIFIED)
- Priority: P1
- VB6 File: FODER/FrmTaxMast.frm loc_11E0077 + FODER/MainLib.bas:4606
  (Proc_6_108_1010FEC)
- Python File: HMS_py/core/taxmaster.py
- VB6 Procedure: TopCtrl1 delete path
- Python Function: delete
- Screen: Tax Master
- Category: VALIDATION / DATA
- Expected Behavior: delete se pehle TaxStru dependency check — rows hain
  toh 'Related Record Exist in TaxStru, Entry Can't Be Deleted'.
- Actual Behavior: Python delete me sirf SysYN check tha; TaxStru-referenced
  tax delete ho sakta tha → orphan FK rows (TaxStru has 56 live rows).
- Fix: delete() me pehle `SELECT COUNT(*) FROM TaxStru WHERE TaxCode=?`.
- Test: test_delete_blocked_when_taxstru_references_exist +
  LIVE smoke (delete('KKCGSP') -> exact VB6 message, no write).
- Status: VERIFIED
- Date: 2026-10-01

---

### BUG-MS-005 (VERIFIED)
- Priority: P2
- VB6 File: FODER/FrmTaxMast.frm loc_136F24A-136F364
- Python File: HMS_py/core/taxmaster.py + HMS_py/ui/finance_masters_ui.py
- VB6 Procedure: save (Add branch) — auto code generation
- Python Function: next_code (NEW) + insert + taxmaster_config
- Screen: Tax Master
- Category: LOGIC / UI
- Expected Behavior: VB6 code type nahi karta (Code Txt box hai hi nahi):
  `Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),0)+1 From RevMast
  WHERE SITE_CODE='<site>' AND SYSYN<>'Y'` → `Left$(site,2)` + 4-digit pad.
- Actual Behavior: Python me Code editable + required tha — user manually
  code type karta tha (VB6 workflow se alag).
- Fix: `next_code()` (VB6 SQL literal) + insert me empty-code auto-gen +
  config me `generated_pk=True`, code field required=False +
  placeholder "(auto: next site code)".
- Test: test_next_code_matches_vb6_sql, test_insert_autogenerates_code_when_empty,
  test_taxmaster_config_vb6_parity (live: next_code = KK1008)
- Status: VERIFIED
- Date: 2026-10-01

---

### BUG-MS-006 (VERIFIED)
- Priority: P2
- VB6 File: FODER/FrmTaxMast.frm loc_136F5CB-136F765 (UPDATE branch)
- Python File: HMS_py/core/taxmaster.py
- VB6 Procedure: save (Edit branch)
- Python Function: update
- Screen: Tax Master
- Category: SQL
- Expected Behavior: `UPDATE RevMast SET ..., Type='Cr',
  SITE_CODE='<site>', ..., U_AE='E' WHERE Code='...'`.
- Actual Behavior: Python UPDATE me `Type` aur `Site_Code` SET nahi hote
  the (Type legacy 'Cr' constant tha hi nahi; Site_Code staleness possible).
- Fix: UPDATE me `Type = 'Cr', Site_Code = ?` add kiya; saath me
  `record = {**rec, 'code': ...}` injection (house pattern memrev_update)
  taaki _validate rec me code paye.
- Test: test_update_sets_type_cr_and_site_code
- Status: VERIFIED
- Date: 2026-10-01

---

### BUG-MS-007 (VERIFIED, fallback)
- Priority: P2
- VB6 File: FODER/FrmTaxMast.frm TopCtrl1_UnknownEvent_14 (loc_1085B60)
- Python File: HMS_py/ui/finance_masters_ui.py + HMS_py/ui/base_master.py
- VB6 Procedure: Print — Crystal `TaxMast.RPT` + `TaxMast.ttx` + formula
  param `Title='Tax Master'`; empty set -> 'No Record Present For Printing'.
- Python Function: _print_tax_master (NEW) + BaseMasterForm print button
- Screen: Tax Master
- Category: PRINT
- Expected Behavior: screen se print/preview chale.
- Actual Behavior: MISSING IN PYTHON — BaseMasterForm me Print button hi
  nahi tha.
- Fix: MasterConfig me optional `print_fn` + engine me conditional
  "Print Preview" button; taxmaster print_rows() = VB6 ka exact print SQL
  (joins + site filter) → print_preview.text preview. Crystal .RPT layout
  Python me nahi hai (app-wide stub) — text fallback house-standard.
- Report Impact: MAIN_SETUP_REPORT_PARAMETERS.md me contract.
- Test: test_print_rows_matches_vb6_print_sql +
  test_print_button_visibility_and_dispatch (live: 9 rows x 9 cols).
- Status: VERIFIED (query + wiring); Crystal layout = MISSING IN PYTHON
- Date: 2026-10-01

---

### BUG-MS-008 (FIXED, test-only)
- Priority: P3
- Python File: HMS_py/tests/unit/test_revenue_budget_parity.py
- Screen: Revenue Wise Budget (unrelated module, suite green rakhne ke liye)
- Category: TEST
- Expected Behavior: test month-rollover-proof ho.
- Actual Behavior: test `budget_months -> ['Sep/2026']` hardcode karta tha
  par UI `datetime.now()` (aaj Oct/2026) ko combo me insert kar deta hai
  (revenue_budget_ui._load_months:263-265) → Oct 1 se fail.
- Root Cause: date-dependent time-bomb (Main Setup pass se unrelated).
- Fix: test ab current month dynamically leta hai.
- Test: test_revenue_budget_window_collects_grid_before_save
- Status: FIXED
- Date: 2026-10-01

---

## FILE 3 — Payment Type (GENMas[2], FODER/FrmPayTypeMast.frm 2640 lines)

### BUG-MS-009 (VERIFIED)
- Priority: P1
- VB6 File: FODER/FrmPayTypeMast.frm Form_Load (loc_114BA3B), Search
  (loc_F24205), Print (loc_108C8BB)
- Python File: HMS_py/core/paymenttype.py
- VB6 Procedure: main recordset `... WHERE PayType<>'' AND PayType IS NOT
  NULL AND (P.LOGSITE_CODE='<site>' or P.LOGSITE_CODE='HO') order by P.Name`
- Python Function: list_all / get / exists
- Screen: Payment Type
- Category: SITE/PROPERTY BUG
- Expected: har SELECT me (LogSite_Code=? OR 'HO') site filter.
- Actual: list_all me koi site filter nahi; get/exists me `PAYTYPE != ''`
  bhi missing tha.
- Root Cause: property-filter pass kabhi is form par nahi hua.
- Fix: SITE_FILTER constant (taxmaster pattern) list_all/get/exists me;
  `PAYTYPE IS NOT NULL AND PAYTYPE != ''` teeno jagah.
- Test: test_list_all_has_vb6_site_filter,
  test_get_and_exists_are_site_scoped (21-test parity suite).
- Status: VERIFIED
- Date: 2026-10-01

---

### BUG-MS-010 (VERIFIED)
- Priority: P1
- VB6 File: FODER/FrmPayTypeMast.frm save (loc_15468EB)
- Python File: HMS_py/core/paymenttype.py + HMS_py/ui/finance_masters_ui.py
- VB6 Procedure: `Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1
  AS MyCode From REVMAST WHERE SITE_CODE='<site>' AND  SYSYN<>'Y'` +
  prefix Proc_6_45(site,2) — user ko code textbox deta hi nahi (Txt array
  me Code field hai hi nahi; Code Txt(0).Tag me aata hai)
- Python Function: next_code (NEW) + paymenttype_config.generated_pk
- Screen: Payment Type
- Category: MISSING PYTHON LOGIC
- Expected: Add mode me code auto-generate; config `required=True` nahi.
- Actual: next_code hi nahi tha; UI `Field("code", required=True)` — user
  ko code type karna padta tha.
- Root Cause: generative-PK pattern FILE 1 ke baad is screen par apply
  nahi hua tha.
- Fix: next_code (VB6 literal `,1)+1` — TaxMast ka `,0)+1` NAHI; empty
  table par pehla code site-prefix + 0002 = LEGACY BEHAVIOR), insert me
  auto-fill, config generated_pk=True + placeholder.
- Test: test_next_code_uses_vb6_default_1_not_taxmast_0,
  test_insert_autogenerates_code_when_empty.
- Status: VERIFIED
- Date: 2026-10-01

---

### BUG-MS-011 (VERIFIED)
- Priority: P1
- VB6 File: FODER/FrmPayTypeMast.frm Proc_17_55 (Name), Proc_17_54 (Short)
- Python File: HMS_py/core/paymenttype.py
- VB6 Procedure: Name: `Select Count(*) From REVMAST Where
  (LOGSITE_CODE='<site>' or 'HO') and Name='...' [And Name <> '<old name>']`
  → add msg `"Duplicate  Name"` (2 spaces), edit msg `"Duplicate Name"`;
  Short: `Select Count(*) From RevMast Where ShortName='...'
  [And Code<>'<code>']` → `"Duplicate Short Name"` (site filter NAHI).
- Python Function: _dup_name_count / _dup_short_count /
  _require_unique_add / _require_unique_edit
- Screen: Payment Type
- Category: VALIDATION BUG
- Expected: dono duplicate checks VB6 messages ke saath.
- Actual: koi dup check nahi tha (sirf Code PK via require_absent).
- Root Cause: FILE 1 ka _require_unique pattern idhar copy nahi hua.
- Fix: Name check site-scoped + edit-par old-NAME exclusion (global_100 =
  current Name — Code se NAHI, taxmaster se alag legacy); ShortName check
  revmast-wide NO site filter (VB6 asymmetry preserved); exact messages.
- Test: test_insert_duplicate_name_blocked_with_vb6_two_space_message,
  test_name_dup_check_is_site_scoped_but_short_is_not,
  test_update_duplicate_name_excludes_old_name_not_code,
  test_update_duplicate_short_excludes_code.
- Status: VERIFIED
- Date: 2026-10-01

---

### BUG-MS-012 (VERIFIED)
- Priority: P1
- VB6 File: FODER/FrmPayTypeMast.frm save (loc_1546764, loc_154682A),
  FaLib.bas Proc_183_19
- Python File: HMS_py/core/paymenttype.py
- VB6 Procedure: required checks — `"Name is a required field."`;
  PayType NOT IN (Company, Staff, Member) → `"Ledger A/C is a required
  field."`, exempt paytypes ka ledger textbox clear hota hai.
- Python Function: _validate / _normalize
- Screen: Payment Type
- Category: VALIDATION BUG
- Expected: conditional ledger-required rule + VB6 messages.
- Actual: sirf `Name zaroori hai` (code required tha, name bhi but
  VB6 message nahi); ledger rule bilkul missing.
- Fix: _validate me VB6 messages; ledger rule (exempt set), _normalize me
  exempt paytype par ACCode clear + BankCommPer/BankCommAc IIf rule
  (non-Credit-Card → 0/'' ; loc_1546C46).
- Test: test_name_required_vb6_message,
  test_ledger_required_for_normal_paytype,
  test_ledger_exempt_for_company_staff_member,
  test_exempt_paytype_clears_ledger_like_vb6,
  test_bank_commission_only_for_credit_card.
- Status: VERIFIED
- Date: 2026-10-01

---

### BUG-MS-013 (VERIFIED)
- Priority: P1
- VB6 File: FODER/FrmPayTypeMast.frm INSERT (loc_1546BC5), UPDATE
  (loc_1546ED5)
- Python File: HMS_py/core/paymenttype.py
- VB6 Procedure: INSERT cols = Code,Name,ShortName,ACCode,PayType,
  Site_Code,SysYN,FieldType,U_Name,U_EntDt,U_AE,TYPE,BankCommPer,
  BankCommAc,ACPosting,LogSite_Code (Active NAHI);
  UPDATE = SET Name,SITE_CODE,ACCode,PayType,ShortName,U_name,U_EntDt,
  U_AE='E',TYPE='Dr',FieldType='P',BankCommPer,BankCommAc,ACposting.
- Python Function: insert / update
- Screen: Payment Type
- Category: SQL BUG / DATA MAPPING BUG
- Expected: VB6 column-set literal.
- Actual: insert me ACCode/SysYN/BankCommPer/BankCommAc/ACPosting missing,
  Active extra; update me Site_Code/ACCode/BankComm*/ACPosting missing.
- Fix: dono statements VB6 column-set par rewrite (SysYN='N', Type='Dr',
  FieldType='P' literals; Active/SysYN update me touch nahi hote).
- Test: test_insert_matches_vb6_column_set,
  test_update_sets_vb6_audit_columns.
- Status: VERIFIED
- Date: 2026-10-01

---

### BUG-MS-014 (VERIFIED)
- Priority: P1
- VB6 File: FODER/FrmPayTypeMast.frm delete (loc_12918DD–1291D90)
- Python File: HMS_py/core/paymenttype.py
- VB6 Procedure: SysYN='Y' → "SYSTEM ENTRY CAN'T BE DELETED"; MainLib
  Proc_6_108 (PayCharge/PayCode, display "Payment Entry") → "Related
  Record Exist in Payment Entry, Entry Can't Be Deleted"; txn: DELETE
  RevMast WHERE Code='..' + DELETE DepartPay WHERE PayCode='..'.
- Python Function: delete
- Screen: Payment Type
- Category: BACKEND BUG / VALIDATION BUG
- Expected: poori dependency chain.
- Actual: sirf `DELETE ... AND PAYTYPE IS NOT NULL` — koi check nahi,
  DepartPay cleanup nahi.
- Fix: chain implement (single-connection txn, commit=False + rollback);
  VB6 literal: RevMast delete par koi site/PayType filter nahi.
- Test: test_delete_blocked_for_system_entry,
  test_delete_blocked_when_paycharge_references_exist,
  test_delete_happy_path_removes_revmast_and_departpay.
- Status: VERIFIED
- Date: 2026-10-01

---

### BUG-MS-015 (VERIFIED, fallback)
- Priority: P2
- VB6 File: FODER/FrmPayTypeMast.frm TopCtrl1_UnknownEvent_14
  (loc_108C8BB)
- Python File: HMS_py/ui/finance_masters_ui.py + core/paymenttype.py
- VB6 Procedure: print — `SELECT P.*,... Left join Subgroup ... WHERE
  (P.LOGSITE_CODE=.. or 'HO') and PayType<>''...` → PayTypeMast.ttx/.RPT +
  formula param `Title='Pay Type Master'`; empty → 'No Record Present For
  Printing'.
- Python Function: _print_payment_type (NEW) + paymenttype.print_rows()
- Screen: Payment Type
- Category: PRINT
- Expected: screen se print/preview chale.
- Actual: MISSING IN PYTHON — print_fn/print button dono nahi the.
- Fix: print_fn + print_rows (VB6 print SQL literal, SubGroup join + site
  filter) → print_preview text fallback; empty-set message VB6 exact.
- Report Impact: MAIN_SETUP_REPORT_PARAMETERS.md me contract.
- Test: test_print_rows_matches_vb6_print_sql + UI config assertion.
- Status: VERIFIED (query + wiring); Crystal .RPT layout = MISSING IN
  PYTHON (app-wide stub, RP-MS-003).
- Date: 2026-10-01

---

### BUG-MS-016 (VERIFIED)
- Priority: P1
- VB6 File: FODER/FrmPayTypeMast.frm Txt array (0=Name, 1=ShortName,
  2=Ledger A/C, 3=PayType, 4=Bank Comm A/C, 5=Bank Comm %, 6=AC Posting)
- Python File: HMS_py/ui/finance_masters_ui.py paymenttype_config
- Python Function: paymenttype_config
- Screen: Payment Type
- Category: FRONTEND BUG / DATA MAPPING BUG
- Expected: VB6 ke fields — Name/Short/Ledger/PayType/BankComm%/BankComm
  A/C/AC Posting; grid = Code,Name,Short,PayType,Ledger,ACPosting.
- Actual: config me `category` aur `isdefault` fields/columns the jo
  VB6 me HAI HI NAHI (RevMast me bhi nahi, _map bhi return nahi karta →
  grid blank); Short/Ledger/BankComm/ACPosting fields MISSING; code
  required=True (VB6 auto-gen).
- Root Cause: config invented fields ke saath likha gaya tha (VB6 se
  compare kiye bina).
- Fix: config VB6 field-set par rewrite + generated_pk=True + print_fn.
- Test: test_ui_config_vb6_field_set.
- Status: VERIFIED
- Date: 2026-10-01

---

### BUG-MS-017 (VERIFIED)
- Priority: P2
- VB6 File: FODER/FrmPayTypeMast.frm (Ledger A/C = Txt(2).Tag/Text)
- Python File: HMS_py/ui/general_setup_tabs_ui.py PaymentTypeTab
- Python Function: PaymentTypeTab._pick / .save
- Screen: Payment Type (General Setup tabs variant)
- Category: FRONTEND BUG / DATA MAPPING BUG
- Expected: _pick me Ledger A/C field = rec['accode']; save me ledger
  rec me jaaye.
- Actual: `_pick` ledger textbox me `rec['name']` (Pay NAME!) dikhata tha;
  `save()` rec me `accode` tha hi nahi → ledger kabhi save nahi hota tha
  (VB6 required-rule ke saath ab save block hota).
- Fix: _pick → rec.get('accode'); save rec me "accode" add.
- Test: full suite (general_setup tabs tests) + backend required-rule
  enforcement.
- Status: VERIFIED
- Date: 2026-10-01

---

### BUG-MS-018 (OPEN, external to FILE 3)
- Priority: P2
- Python File: HMS_py/ui/general_setup_tabs_ui.py PrintingSetupTab +
  tests/unit/test_general_setup_tabs.py::test_printing_tabs_are_browse_only
- Screen: Printing Setup (GENMas[7])
- Category: TEST / EXTERNAL WORKSTREAM
- Expected: suite green.
- Actual: test `ps.tbl` expect karta hai (HEAD version: single browse-only
  grid) par working tree me PrintingSetupTab ka parallel rewrite land hua
  (tbl_kot + tbl_bill editable grids + Save; naye core/printmast.py,
  printersetup.py, printformats.py — 2026-10-01 21:01-21:02).
- Note: FILE 3 (Payment Type) ke diff se unrelated — FILE 3 ne sirf
  PaymentTypeTab edit kiya. Test ya tab ka ownership GENMas[7] workstream
  ke paas.
- Fix: pending (w/r/f parallel workstream: test ko current UI par update
  karna hai ya tab ko browse-only rakhna hai — VB6 frmMod_Print se
  decide hoga).
- Status: OPEN
- Date: 2026-10-01
