# HMS BUG REGISTER (from runtime logs + code evidence)

Format: BUG-ID | Module | Evidence | Severity | Status: recorded, NOT fixed (per task rules).
Security findings cross-referenced in SECURITY_REMEDIATION_NOTE_SRN-001.md (F-1..F-5).

## BUG-001
- Module: Location Master
- Evidence: FaLog.Log lines 8+ (07/Jun/2019): "Invalid object name 'LocationMast'" at
  Location Master Form_Load; also ErrorLog.Log 17/Aug/2017 same error.
  Table LocationMast is referenced by code (37 hits) but absent from this database.
- Expected: Location Master screen opens and lists locations.
- Actual: Runtime SQL error; screen cannot load data.
- Severity: MEDIUM (feature broken; workaround unknown)
- Possible cause: DB schema drift — table never created/upgraded on this site.
- Evidence level: [VERIFIED-SQL]
- LIVE UPDATE 2026-09-28: sys.tables query on MOONData2627 confirms LocationMast does NOT exist
  (277 tables listed; LocationFacility exists but LocationMast absent). BUG CONFIRMED LIVE.

## BUG-002
- Module: Sundry/Charge master browse
- Evidence: ErrorLog.Log 05/Jul/2017 (x3) + 06/Jul/2017:
  'Column "SundryType.AppDate" is invalid in the ORDER BY clause because it is not contained
  in either an aggregate function or the GROUP BY clause.'
- Expected: grid sorted list loads.
- Actual: SQL error -2147217900, screen fails to load list.
- Severity: LOW-MEDIUM (transient? repeated 4 times)
- Possible cause: query mixes GROUP BY with ORDER BY on non-aggregated column.
- Evidence level: [VERIFIED-SQL]
- PYTHON PORT STATUS 2026-09-28: core/sundry_type.py::list_entries me is class
  ka bug NAHI hai (query me GROUP BY absent, plain ORDER BY valid). Evidence note
  code me added — VB6-only bug, python port me replicate nahi hota. No code change
  required.

## BUG-003
- Module: Payroll / Salary posting (PayCharge)
- Evidence: ErrorLog.Log 03/Sep/2017 + 04/Sep/2017 (3 hits):
  "Violation of PRIMARY KEY constraint 'aaaaaPayCharge_PK'. Cannot insert duplicate key
  in object 'dbo.PayCharge'."
- Expected: unique serial per charge row.
- Actual: duplicate-key crash during posting.
- Severity: HIGH (posting failure mid-transaction risk)
- Possible cause: LASTVOU/Voucher_Prefix counter out of sync (concurrent posting or
  failed posting did not roll back counter).
- Evidence level: [VERIFIED-SQL]
- PYTHON PORT UPDATE 2026-09-29 (FIXED): db.py UPDLOCK/HOLDLOCK race-safe counters
  (next_vno + next_serial helpers); PayCharge SNo (folio x2, nightaudit),
  FolioLog/BookingLog Id, MemBill vno, MemberFamily SNo, RoomOcc SNo migrated.
  **Round-3 (2026-09-29): reserved keywords in INSERT batches bhi verified — full
  suite 720 passed / 0 failed.**

## BUG-004
- Module: Inventory (Stock)
- Evidence: ErrorLog.Log 22/Sep/2018: "Violation of PRIMARY KEY constraint 'aaaaaStock_PK'.
  Cannot insert duplicate key in object 'dbo.Stock'."
- Severity: MEDIUM
- Possible cause: same counter-desync class as BUG-003.
- Evidence level: [VERIFIED-SQL]
- PYTHON PORT UPDATE 2026-09-29: fixed — same UPDLOCK/HOLDLOCK counter wave
  (BUG-003 note dekho); remaining plain MAX() queries sirf per-doc SNo / report
  aggregates hain, PK-violation risk wale counters locked.

## BUG-005
- Module: POS / Bill printing
- Evidence: recurring "File not found. | Seagate Crystal Reports ActiveX Designer"
  (31/Aug/2017, 03/Sep/2017, 10/Jan/2018, 03/Jan/2019) + "Invalid directory" 22/Sep/2018.
- Expected: Crystal report opens from Reports folder (INI key 2).
- Actual: report file missing or path wrong at runtime.
- Severity: MEDIUM (report printing blocked for some reports)
- Possible cause: INI key 2 points to C:\PENDRIVE\HMS\Reports but install path differs;
  or report deleted.
- Evidence level: [VERIFIED-SQL + VERIFIED-CONFIG]

## BUG-006
- Module: Item master / Free item scheme
- Evidence: ErrorLog.Log 18/Feb/2019: "Invalid column name 'FreeItemAllow'"; 02/Nov/2020:
  "Invalid column name 'RefBookNo'" (x2).
- Severity: LOW (schema drift: code newer than DB)
- Evidence level: [VERIFIED-SQL]
- LIVE UPDATE 2026-09-28: ItemMast has NO FreeItemAllow column (drift still live); Booking.RefBookNo
  EXISTS now (that part was fixed since the 2020 log entry).

## BUG-007
- Module: Transaction nesting
- Evidence: ErrorLog.Log 23/Sep/2017 (8 hits): "Cannot start more transactions on this session."
- Severity: MEDIUM (nested BeginTrans without commit — e.g., posting inside posting)
- Possible cause: MDI posting routine calls another posting routine that opens its own
  transaction on the same connection (classic VB6 nesting limit).
- Evidence level: [VERIFIED-SQL]

## BUG-008 (SECURITY)
- Module: Login / Banquet availability
- Evidence: EXTRAS.text line 418127 CmdLogin_Click: hardcoded password "India12" bypasses
  to BanqAvailability screen.
- Severity: HIGH (vendor backdoor in production binary)
- Evidence level: [VERIFIED-VB6]
- Action: recorded only. Owner decision required. Do not modify binary.
- Remediation: formal note issued — see SECURITY_REMEDIATION_NOTE_SRN-001.md (same folder):
  containment options, patch routes (source unavailable), verification plan V1–V5, owner decisions.
- PYTHON PORT STATUS 2026-09-29 (FIXED — python port me backdoor tha hi nahi):
  "India12" sirf auth.py self-test strings me hai, check_login me koi special-case nahi.
  Regression tests: tests/unit/test_auth_backdoor.py (7 tests: source-scan,
  no-universal-password, live-DB UserMast sweep). TC-010 covered.
  **Round-3: shell integration smoke PASS (14/14 modules, 6 naye forms open).**

## BUG-009
- Module: Global stability
- Evidence: recurring "Object variable or With block variable not set" (91),
  "Either BOF or EOF is True" (3021), "Item cannot be found in the collection" (3265),
  "Type mismatch" (13) — dozens of hits 2017–2026, including latest 15/Sep/2026 & 16/Sep/2026.
- Severity: LOW each, HIGH collectively (unhandled recordset/field access patterns).
- Possible cause: missing EOF guards after MoveNext loops; renamed columns (3265 = code/DB drift).
- Evidence level: [VERIFIED-SQL]

## BUG-010 (SECURITY — GST e-invoice subsystem)
- Module: eInvoice (GSP integration via Chartered Information)
- Evidence [VERIFIED-VB6]: eInvoiceEnviro columns ASPPwd/eInvPwd stored in DB;
  AuthToken written plaintext to App.Path\LastAuthToken.txt (@1133CD5, @159D377);
  GSP credentials passed in URL query strings (aspid=&password=&Gstin=).
- Live [VERIFIED-SQL]: eInvoiceEnviro has 1 row (live production config);
  211 B2B invoices staged, 185 with IRN (max AckDt 2026-08-01).
- Expected: secrets in vault/hashed storage; tokens in memory or encrypted store.
- Actual: DB-readable passwords + file-cached auth token + creds-in-URL.
- Severity: HIGH (exposure class same as F-2: any DB read/backup compromises GSP account).
- Possible cause: legacy GSP API style + VB6-era storage conventions.
- See: 24_GST_EInvoice/GST_EINVOICE_FLOW.md §7.

## BUG-011 (Data integrity — ACGROUPCURRBAL group roll-up)
- Module: Finance (CurrBal rebuild + voucher posting)
- Evidence [VERIFIED-VB6]: `AcGroup.MainGrCode` ka decompiled walk
  (`fa_voucher.py::_update_currbal`, FaCurrBalUpdate Proc_183_0) parent ko
  seedha `ACGROUPCURRBAL.GroupCode` me likhta hai.
- Evidence [VERIFIED-SQL]: `MainGrCode` ek hierarchical **path-code** hai
  (max len 9, e.g. `030003001`), GroupCode row nahi. `ACGROUPCURRBAL.GroupCode`
  varchar(6) hai → path-code likhne par **8152 String or binary data would be
  truncated** (voucher posting fail ya bogus group-row).
- Live [VERIFIED-SQL] (2026-09-29): ACGROUPCURRBAL me 2 orphan rows —
  `060004 = +5000`, `060005 = -5000` (V_Date 2026-09-25), dono ke GroupCode
  `AcGroup` me exist nahi karte. Net zero isliye reports abhi thehraate nahi,
  lekin ye isi bug ka leftover hai.
- Expected: sirf asli `AcGroup.GroupCode` codes par balance upsert ho.
- Actual (before fix): path-code parent bhi upsert hota tha.
- Fix (2026-09-29): `core/fa_ledger_ops.py::_acgroup_chain()` — parent tabhi
  follow karta hai jab wo `AcGroup` me real GroupCode ho; dono jagah
  (`fa_voucher._update_currbal`, `rebuild_currbal`) isko use karte hain.
  Regression: `tests/database/test_currbal_rebuild.py` (6 tests).
- Open: 2 orphan rows live DB me abhi bhi hain (cleanup user decision).
- Severity: MEDIUM (had set: path-code group par posting crash).
- Evidence level: [VERIFIED-SQL]
- VERIFIED 2026-09-29 (round-3): _acgroup_chain() + regression suite run —
  6/6 test_currbal_rebuild.py pass; compile-clean; committed with this register.

## BUG-012 (Menu leaf → registry gap + caption whitespace drift)
- Module: Global (ui/shell.py registry ↔ core/menu.py tree)
- Evidence [VERIFIED-CODE]: `core/menu.menubar_for()` ki **487 leaf rows** me
  `MainWindow._reg_ci` lookup par **26 rows** resolve nahi hui (22 unique).
  Pehle ye items silently **disabled** rehte the (`lb.setEnabled(False)` /
  `act.setEnabled(False)`), matlab user click kare to kuch nahi hota tha.
- 3 rows sirf **trailing space** ki wajah se fail ho rahi thin — VB6 caption
  `'Cashier Report '`, `'Instant House Count '`, `'Package Forecast '`
  vs registry canonical key `'Cashier Report'` etc.
  `MENU_INVENTORY.md` me captions bina space ke hain (486/517/523).
  Fix: `shell.py::MainWindow._opener()` — `_reg_ci` (strip + lower) par
  lookup; 3 jagah `self.registry.get(it["name"])` ispar switch kiye.
- 22 unique ab bhi opener-less, do category:
  * **headers/junk** (folder text, VB6 me clickable nahi the): `Banquet`,
    `EPABX`, `HR/Payroll`, `Inventory`, `M.I.S.`, `Members Mgmt`,
    `Point of Sale`, `Operations`/`Operation`, `POS Operations`,
    `Utility`, `SMS`, `Send SMS`, `Reward Points`, `Reports`, `Sstup`
    (VB6 typo), `....`.
  * **[VERIFIED-VB6] missing ports** — VB6 me form hai, Python me nahi:
    `Revenue Change Entry` (MDIForm1.frm:2461, parent Operations/MemOpr),
    `Facility Sundry Setting` (MDIForm1.frm:2565, parent Operations/MallMgmt),
    `Card Recharge` (MDIForm1.frm:2736 → `SmartCardRecharge.frm`),
    `Card Refund` (MDIForm1.frm:2740 → `SmartCardRefund.frm`),
    `Card Re-Issue` (MDIForm1.frm:2744 → `SmartCardLostReIssue.frm`).
- Fix (2026-09-29): whitespace drift theek; 5 missing screens allow-list me
  document kiye — **regression guard** `tests/unit/test_shell_opener_refs.py`
  (`test_every_menu_leaf_resolves_to_an_opener` +
  `test_known_trailing_space_captions_resolve`). Naya leaf ya to port ho
  ya allow-list me jaaye; silent no-op allowed nahi.
- Severity: LOW (each), MEDIUM as a class (menu dead-end).
- Evidence level: [VERIFIED-CODE] + [VERIFIED-VB6]

## KNOWN ISSUES LISTS (vendor/site notes)
- HMSIssueList.Log (2019), HMSACIssueList.Log (2020), HMS_GSTRI_List.Log (2021):
  small site-maintained issue logs — contents to be transcribed in Phase 15 QA review.

## CROSS-REFERENCE
- Security findings F-1..F-5 (backdoor, reversible passwords, SA seeding, connection-string
  credentials, e-invoice secrets) are documented with remediation options in
  SECURITY_REMEDIATION_NOTE_SRN-001.md.
- BUG-001/BUG-006 schema drift has been LIVE-VERIFIED against MOONData2627 (2026-09-28);
  see 18_Database/LIVE_DATABASE_DICTIONARY.md.
- GST e-invoice operational flow: 24_GST_EInvoice/GST_EINVOICE_FLOW.md.
