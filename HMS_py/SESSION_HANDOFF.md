# SESSION HANDOFF — HMS_py VB6 parity port (2026-09-29, round 3)

## IMPORTANT: Ye file agle session ka STARTING POINT hai

## 0. ROUND-3 COMPLETIONS (latest, sab pushed)

- **Suite FULL GREEN: 720 passed / 0 failed** (round-1 me 14 failures the).
- **Blocked batch ke 3 aur forms REAL**:
  1. **Gravy Item Entry** (`07e884f`): core/gravy_item.py — code-gen
     (site[:2]+6-digit, Item∪ItemMast scan; live next = KK003201),
     18-col INSERT GravyItem='Yes' + Type='Finish', UnitMast auto-create,
     STOCK/BOM delete guards. UI: GravyItemWindow.
  2. **Consumption Master** (`85aa218`): core/consumption_master.py —
     VB6 FrmConsumMast = BOM recipe master! list/get/save/delete_recipe
     (17-col BOM INSERT, Cost=LPurRate*RawQty/FinQty, ItemMast
     PurchRate backfill). UI: ConsumptionMasterWindow (2 tabs).
     Live: 173 recipes. Raw = Store items + Gravy items.
  3. **Party Master** (`257e142`): core/party_master.py — DECODE:
     PartyMast table exist hi nahi karti (Crystal .rpt file-name tha);
     asal master = SubGroup NATURE='Supplier' (778 rows live).
     save_party (SubCode auto-gen KK003254-next, NameHelp uniqueness),
     delete_party (SUBGROUPCURRBAL balance-guard). UI:
     PartyMasterWindow (misc_sub_forms_ui).
- **Unit tests (17 naye, mocked-db)**: test_gravy_item.py (6),
  test_consumption_master.py (5), test_party_master.py (6).
- **MODULE_MANUALS_2026 removed** (`619f517`): user-confirmed deletion,
  297 files, history me recoverable.
- **Parallel-agent coordination notes**: unka in-flight work 2 baar
  verify karke commit kiya (`179f344` openers, `257e142` me
  member_master_ui.py include kiya kyunki shell.py import karta hai).
  Kabhi untracked-module-import ko HEAD pe rehne mat do.

### Ab sirf ye COMING_SOON stubs bache hain (sab genuinely blocked —
### tables live DB me ABSENT hain, probe: _qa/probe_coming_soon_tables.py)
- Forex Receive Entry (ForexRecv/ForexReceipt), Sale Bill Entry +
  Settlement Entry (Sale/Stock absent), Purchase Sundry Setting,
  Enviro Inventry, Finish Material Receive Entry, Excise Invoice Cum
  Gate Pass, Pending Purchase Order, Data Transfer/Recieving, PLU File,
  POS Recycle, Task Scheduler, Voucher Serialisation, card-batch
  reports waghera. In port karna = schema drift jokhim.


## 1. VERIFIED-COMPLETE (is session me, tests/smoke se prove hua)

- **Push verified**: `33be17a..56940e0` origin pe (pehle 6 pending commits).
- **Task A complete — 3 COMING_SOON forms ab REAL** (registry qualname-check
  se verified: teeno REAL):
  1. **Reverse Room Merge** (commit `a04c3db`):
     - `core/fo_ops.py::reverse_merge_charge` + `list_merge_children` —
       VB6 FrmRevMergeCharge 3-step reverse (PayCharge re-home via
       RelatedFolioNoDocId, child unlink, master markers clear when empty).
       Guard: child ka mFolioNoDocid master hona chahiye.
     - `ui/fo_sub_forms_ui.py::ReverseMergeWindow` + `open_reverse_room_merge`.
     - Registry wire shell.py ("Reverse Room Merge" batch se nikala).
  2. **Inconsistency Check** (commit `764f988`):
     - `core/inconsistency.py` — 6 read-only audits (missing PayCode,
       Bill_No missing, SettleDate missing, Dr-Cr mismatch per folio,
       invalid PayCode, null DocId counts) + `run_all()`.
       VB6 ke destructive repairs jaan-boojh ke read-only rakhe.
     - `ui/db_maintenance_ui.py::InconsistencyCheckWindow` +
       `open_inconsistency_check`.
     - Live-DB run verified: 3 REAL Dr-Cr mismatches mile, baaki clean.
  3. **Menu Item Copy** (commit `396821b`):
     - `core/menu_item_copy.py` — list_outlets/categories/groups (VB6
       Form_Load queries), list_copyable_items (NOT IN target +
       ActiveYN/ItemType/DispCode/GravyItem exclusions), latest_rate,
       copy_items (29-col ItemMast + ItemRate insert).
     - **PK ItemMast = (Code, RestCode)** — live probe se verified
       (`_qa/probe_itemmast_pk.py`), isliye same-Code/new-RestCode copy.
       Live ActiveYN convention 'Yes'/'No' (3343/1/11).
     - `ui/pos_masters_ui.py::open_menu_item_copy` (checkbox grid dialog).
     - Live read-only smoke: 18 copyable items KKE001->KKM001,
       latest_rate KK000005@KKRS = 70.0.
- **Task B complete** (commit `dfa4be1`): `core/db.py::next_serial()` —
  UPDLOCK/HOLDLOCK MAX(col)+1 helper (Vtype-less counters ke liye,
  next_vno ka bhai). Migrated: FolioLog/BookingLog `_log` Id (folio/
  checkin/checkout/reservation), PayCharge SNo (folio x2, nightaudit),
  MemBill vno, MemberFamily SNo, RoomOcc SNo; FOMBillDetails
  `next_billno` inline hint (varchar CAST counter).
- **Task C complete** (commit `dfa4be1`): `tests/unit/test_auth_backdoor.py`
  — 7 tests: India12 source-scan invariant, no-universal-password
  (mocked creds, per-test unique usernames — kyunki `_login_attempts`
  DISK pe persist hota hai, fixed naam se lockout false-negative),
  unknown user, case variants, live-DB UserMast sweep (genuine-credential
  guard ke saath). **7/7 pass.**

## 2. IS SESSION KE BAAD KE FIXES (2026-09-29 round 2)

- **insert_draft 21S01 FIXED** (commit `4264fbd`): root cause — VB6 56-col
  pattern me se python ne sirf 55 cols liye (VB6 ka `[Authorization]`
  missing, ODBC-reserved isliye bracketed) AUR VALUES me 2 values kam the
  (BookStatus/RefBookNo row me 4 values 6 cols ke liye). Ab cols/values
  Python lists se construct + assert len==56 — mismatch class khatam.
  29 reservation/channel tests green.
- **InconsistencyCheckWindow multi-tab** (`4264fbd`): har check apne
  QTabWidget tab me (VB6 sections 1:1), tab label pe count/CLEAN.
- **Gravy Item Entry PORTED** (commit `07e884f`): `core/gravy_item.py` +
  `ui/pos_sub_forms_ui.py::GravyItemWindow`. VB6 loc_14B1E9C code-gen
  (KK003201 next), 18-col INSERT GravyItem='Yes' + Type='Finish',
  UnitMast auto-create, STOCK/BOM delete guards. Live probes
  `_qa/probe_gravy*.py`. **NOTE: shell.py registry wire us waqt parallel
  agent ke in-flight diff me mixed tha — us commit ke saath aayega; agar
  "Gravy Item Entry" ab bhi STUB dikhe to shell.py me wire check karo.**
- Parallel agent ne wrong_target_wiring ke openers deliver kiye
  (reverse checkout, currbal, night audit process/posting) — uske baad
  **round 3 me poora WRONG_TARGET sweep complete hua (703 passed, dekho §2c).**

### Abhi bhi COMING_SOON stubs (blocked-table wale)
- "Sale Bill Entry", "Settlement Entry" (Sale/Stock tables absent),
  "Forex Receive Entry" (ForexRecv/ForexReceipt absent) — port mat karna
  jab tak tables na aaye (probe: `_qa/probe_coming_soon_tables.py`).
- "Party Master", "Consumption Master", "Finish Material Receive Entry",
  "Excise Invoice Cum Gate Pass" waghera bhi batch me hain.

## 2c. ROUND 3 (2026-09-29) — WRONG_TARGET sweep complete

**Suite: 703 passed / 0 failed** (round-2 ke 681 pass + 10 fail se).

- **7 menu re-wires** (`ui/shell.py`, VB6 `MDIForm1.frm` evidence ke against):
  `Reverse Check Out` → `open_checkout(reverse=True)`,
  `Adjustment Deletion` → `open_fa_adjust(delete=True)`,
  `Charges Posting` → `open_posting_utility`,
  `Reverse Night Audit` → `open_reverse_night_audit`,
  `Night Audit Process` → `open_night_audit_process`,
  `Current Balance Updation` → `open_currbal_update`,
  `Card Registration` → `open_card_registration`.
- **3 naye UI openers**:
  - `ui/posting_utility_ui.py`: `NightAuditProcessWindow`,
    `ReverseNightAuditWindow` (01/Apr FY-start guard ke saath).
  - `ui/fa_voucher_ui.py::open_currbal_update` (scope + subgroup combo).
  - `ui/pos_masters_ui.py::open_card_registration` + `_CardRegistrationAPI`
    (`SmartCardRegistration` table, Smart Card Master se independent).
- **T.D.S. Challan Entry** (VB6 `fate_Click` idx5 → `FaTDSChal`):
  `open_voucher_entry` se hata kar `fasub_ui.open_fa_tds_challan` kiya.
  **Bug mila**: `fa_sub_forms_ui.py` me `QTableWidget.SelectRows` /
  `QTableWidget.SingleSelection` — PyQt6 me ye enum `QAbstractItemView`
  par hai → `AttributeError` on open. Fix: `QAbstractItemView.Selection*`.
- **Member Master / Corporate Member Master PORTED**
  (VB6 `MemMas` idx1 → `MembershipMast`, pehle dono `open_member_billing`
  par the — WRONG_TARGET #9):
  - `core/fa_masters_ops.py`: `member_list/get/exists/insert/update/delete`
    + `member_group_options` + `member_category_options`.
    **Members alag table me nahi hain** — `SubGroup.CompanyType` se bante
    hain: normal = `IN (SELECT Code FROM MemCatMast WHERE Corporate='N')`
    (live: `KK0002` → 37 members), corporate = `CompanyType='Corporate'`
    (live: 1089 rows). Insert/Update ek connection-transaction me
    (SubGroup INSERT + CompanyType UPDATE atomic).
  - `ui/member_master_ui.py`: `_MemberAPI` + `member_master_config()` +
    `open_member_master` / `open_corporate_member_master` (BaseMasterForm).
  - Tests: `tests/database/test_member_master.py` (5, rollback-safe).
- **`rebuild_currbal` live-verified** — pehli run me **8152 truncation**
  aaya → root cause `AcGroup.MainGrCode` = hierarchical **path-code**
  (9-char tak), GroupCode nahi. Fix: `fa_ledger_ops.py::_acgroup_chain()`.
  **Yahi bug `fa_voucher._update_currbal` me bhi tha** (path-code group par
  voucher posting crash) — dono jagah guarded. → **BUG-011** me likha gaya.
- **NEW tests**: `tests/database/test_currbal_rebuild.py` (6) +
  `test_member_master.py` (5); `test_wrong_target_wiring.py` ke contracts
  ab **strict** hain (fallback alternates hata diye) → 19 tests.
- **Verification**: full suite 703 green ×2, `_verify_reg.py` OK,
  `_smoke_new_openers.py` 9/9 openers OK (offscreen).
- **Data finding (aapka decision)**: live ACGROUPCURRBAL me 2 orphan rows
  `060004=+5000`, `060005=-5000` (V_Date 2026-09-25) — BUG-011 leftover,
  net zero. Delete karne hain ya chhodne hain?

**Uncommitted (commit nahi kiya)**: `core/fa_ledger_ops.py`,
`core/fa_voucher.py`, `core/fa_masters_ops.py`, `ui/member_master_ui.py`,
`ui/shell.py`, `ui/fa_sub_forms_ui.py`, `tests/database/test_currbal_rebuild.py`,
`tests/database/test_member_master.py`, `tests/unit/test_wrong_target_wiring.py`,
`_smoke_new_openers.py`.

## 2b. NEXT SESSION — kya bacha

### Aage ke ideas
- BUG_REGISTER.md ke document-only bugs (001/005/006/007/009/010) ko
  implementation notes se update karna.
- **BUG-011 orphan rows** (`060004`/`060005`) live DB se saaf karne hain ya
  nahi — user se confirm karna.
- **HallAcPostChrg** (VB6 "A/C Posting", From/To Date + Night Audit button)
  ka koi menu leaf hi nahi hai (`core/mdi_menu.json` me absent) → MISSING
  form, WRONG_TARGET nahi. Banquet billing se launch hota tha; port karna
  ho to `banquet_ops_ui` me add karna padega.
- MembershipMast ka **poora** port (family members, MemAddRWA addresses,
  photo/signature, `MemberShipDate`, card no) — abhi sirf SubGroup-backed
  member CRUD port hai.
- ItemMast DispCode smallint + GravyItem varchar probe (`_qa/probe_itemmast_types.py`).

## 3. PATTERNS / GOTCHAS (proven this session)

- `lambda w, u=getattr(w, "user", ...)` — NameError at registry-build:
  default-arg me `w` reference nahi hota. Sahi: body me
  `getattr(w, "user", "SA")` (Account Posting line dekho).
- Registry wire karne ke baad HAMESHA `_verify_reg.py` chalao (qualname
  check) + offscreen smoke (`QT_QPA_PLATFORM=offscreen`).
- Dialog me QTableWidget/QHeaderView local-import pattern:
  `pos_masters_ui.py::open_menu_item_copy` / `open_smartcard` dekho.
- core INSERT me `commit=False` + caller-owned cn = transactional;
  `next_serial/next_vno` usi cn pe call karo warna lock bekaar.
- Tests hitting live DB: PYT*-prefix data; auth tests me unique usernames
  (persistent lockout state).
- **`AcGroup.MainGrCode` = hierarchical path-code hai, GroupCode NAHI**
  (max 9 chars jaise `030003001`). Usse kabhi `ACGROUPCURRBAL.GroupCode`
  (varchar 6) me mat likho → 8152. Hamesha
  `fa_ledger_ops._acgroup_chain()` se guzaro (BUG-011).
- **Members = `SubGroup.CompanyType`**, alag table nahi. Normal filter
  `IN (SELECT Code FROM MemCatMast WHERE Corporate='N')` (VB6 query),
  corporate filter literal `CompanyType='Corporate'` (live data convention).
- PyQt6 me selection enums `QTableWidget.SelectRows` nahi —
  `QAbstractItemView.SelectionBehavior.SelectRows` chahiye (runtime
  AttributeError deta hai, import-time nahi).
- `BaseMasterForm` ke `cfg.api` ko class bhi de sakte ho aur
  **instance** bhi (mode/flag wale masters ke liye instance banao —
  `member_master_ui._MemberAPI(corporate=...)` dekho).
- Terminal corruption kabhi bhi: git state hamesha temp-file + read_files
  se verify; scrambled output pe commit NAHI.

## 4. KEY FILE MAP (updated)

- Shell registry: `ui/shell.py` `_form_registry()` (~line 644), imports
  (~640-880), batch-sets (~1445, ~1525)
- Reverse merge: `core/fo_ops.py` (merge_charge ~271, reverse_merge_charge
  ~323, list_merge_children)
- Inconsistency: `core/inconsistency.py` + `ui/db_maintenance_ui.py`
- Menu Item Copy: `core/menu_item_copy.py` + `ui/pos_masters_ui.py`
- Counter helpers: `core/db.py` next_vno (~354) + next_serial (~408)
- Auth: `core/auth.py` check_login (~153), encrypt/decrypt, enc_bytes
- Backdoor tests: `tests/unit/test_auth_backdoor.py`
- VB6 decompiled source: `../FODER/*.frm` (read-only)
- Probes: `_qa/probe_*.py` (DB schema evidence)
- Bug register: `HMS_REVERSE_ENGINEERING/21_Testing/BUG_REGISTER.md`
  (BUG-011 = ACGROUPCURRBAL path-code/orphan rows)
- CurrBal rebuild: `core/fa_ledger_ops.py::rebuild_currbal` + `_acgroup_chain`
- Member master: `core/fa_masters_ops.py::member_*` + `ui/member_master_ui.py`
- TDS challan: `ui/fa_sub_forms_ui.py::TDSChallanWindow` (selection-enum fix)
- Member/smartcard/currbal tests: `tests/database/test_member_master.py`,
  `tests/database/test_currbal_rebuild.py`
- Wrong-target contracts: `tests/unit/test_wrong_target_wiring.py` (strict)
- DB: MOONData2627 (SQL Server, Native Client 10), 277 tables
- Login: SA/KANPUR verified working
