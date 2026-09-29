# SESSION HANDOFF — HMS_py VB6 parity port (2026-09-29, round 5)

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

## 2d. ROUND 4 (2026-09-29) — same bug-class static audits + 3 silent wiring bugs

**Suite: 726 passed / 0 failed** (round-3 ke 720 se +6: naye static
audit tests; `pytest -q -p no:cacheprovider`).

Round-3 ke WRONG_TARGET sweep ke baad wahi bug-class poore codebase par
static-ly scan kiya — **3 real latent bugs mile jo click par crash/kharab
kholte the**:

- **PyQt6 enum audit** (puri `ui/`+`core/`+`tests/` AST scan):
  - `ui/farm_check_ui.py:182` → `QDialog.Accepted` **doesn't exist in
    PyQt6** (sahi: `QDialog.DialogCode.Accepted`) → dialog close hote hi
    `AttributeError`. Fixed.
  - Round-3 ka `QTableWidget.SelectRows` wala fix bhi isi class ka tha.
  - Guard: `tests/unit/test_qt_enum_usage.py` (2 tests — full-tree scan +
    known-fixed regression).
- **`_form_registry()` opener-reference scan** (`<alias>.<fn>` ko asli
  module par verify):
  - `Tally Export(XML)` → `tally_ui.open_tally_export()` **module me hai
    hi nahi** (sahi: `tally_ui.open_tally`) → `AttributeError` on click.
    mdi leaf `Tally Export(XML)` (no `&`) real key hai, fix kiya.
  - `Interest Ledger` → `fvu.open_led_int()` bhi nahi bana tha; guard
    `hasattr` ke saath chup-chaap `open_trial_balance` (galat report)
    khol raha tha. VB6 `MENU_INVENTORY.md:328` + `reports.py::LedInt`
    (`Vtype='INT'`) ke against **sahi fix**: `_open_report("&Interest Ledger")`.
  - Guard: `tests/unit/test_shell_opener_refs.py::test_registry_opener_refs_exist`.
- **Menu leaf → registry coverage** (`core/menu.menubar_for` ki **487
  leaf rows** ko registry par thoka):
  - **26 rows resolve nahi ho rahi thin** → item **silently disabled**
    (`setEnabled(False)`), matlab click = kuch nahi.
  - **3 sirf trailing space ki wajah se**: VB6 caption `'Cashier Report '`,
    `'Instant House Count '`, `'Package Forecast '` vs canonical
    `'Cashier Report'` etc. Fix: naya
    `MainWindow._opener()` = `_reg_ci` (strip+lower) lookup; 3 jagah
    `self.registry.get(it["name"])` ispar switch.
  - Baaki **22 unique**: headers/folder-text (`Banquet`, `EPABX`,
    `Inventory`, `M.I.S.`, `Utility`, `SMS`, `Reports`, `Sstup` typo,
    `....`) + **5 genuine missing ports** (VB6 form hai, Python nahi):
    `Revenue Change Entry` (MDIForm1.frm:2461), `Facility Sundry Setting`
    (:2565), `Card Recharge`/`Card Refund`/`Card Re-Issue`
    (:2736/:2740/:2744 → `SmartCardRecharge.frm`/`SmartCardRefund.frm`/
    `SmartCardLostReIssue.frm`). → **BUG-012** me likha + allow-list me
    document kiye taaki silent no-op dubara na ho.
  - Guard: `test_every_menu_leaf_resolves_to_an_opener` +
    `test_known_trailing_space_captions_resolve`.
- **New tests**: `tests/unit/test_qt_enum_usage.py` (2),
  `tests/unit/test_shell_opener_refs.py` (4).
- **Verification**: 726 green, `_smoke_new_openers.py` 0 failures,
  `_verify_reg.py` OK, `compileall` OK.
- **Stray artifacts (dusre agent/manual run ke, delete nahi kiye)**:
  `ui/Ledger.xml`, `ui/LedgerMaster.xml` (Tally export output),
  `_end.txt`/`_final.txt`/`_pr1.txt`/`_probe_*.txt`.

**Uncommitted (commit nahi kiya)**: round-3 files + `ui/farm_check_ui.py`,
`ui/shell.py`, `tests/unit/test_qt_enum_usage.py`,
`tests/unit/test_shell_opener_refs.py`, `HMS_REVERSE_ENGINEERING/21_Testing/BUG_REGISTER.md`,
`SESSION_HANDOFF.md`.

## 2e. ROUND 5 (2026-09-29) — 3 card screens port + 2 latent CRUD bugs

**Suite: 739 passed / 0 failed** (round-4 ke 726 se +13; `pytest -q -p no:cacheprovider`).

### (a) BUG-012 classification correction → sirf 3 real ports
Round-4 me "5 missing ports" likha gaya tha. VB6 source padhkar:
- **`Revenue Change Entry`** = `MDIForm1.MemOpr` Index **9, `Visible = 0`**;
  `MemOpr_Click` me case 9 **hai hi nahi** (handled 0,1,2,3,4,5,6,11).
- ~~**`Facility Sundry Setting`** = `MallMgmt` Index 6 `Visible = 0`;
  `MallMgmt_Click()` body `Exit Sub`~~ → **ye wala note ROUND-6 me
  galat saabit hua, dekho §2f (a).**

### (b) 3 card screens port hue — `ui/smartcard_txn_ui.py` (naya file)
Routing: `MDIForm1.EXTSCOP` Index 3/4/5 → `ModuleAdd.bas:2470/2476/2482`
→ `SmartCardRecharge` / `SmartCardRefund` / `SmartCardLostReIssue`.
- `RechargeDialog`, `RefundDialog` (+ VB6 `CmdWaiveoff` button),
  `ReIssueDialog`; shared `pick_card()` = VB6 **card-reader scan** ka Python
  equivalent (Code/SerialNo se card select).
- Opener: `open_card_recharge` / `open_card_refund` / `open_card_re_issue`
  (`menu_name_allowed` guard ke saath), `ui/shell.py` registry me
  `Card Recharge` / `Card Refund` / `Card Re-Issue`.
- Hardware note: VB6 reader par chip me balance likhta hai
  (`ModuleSmartCard.Proc_275_3/7`); Python me reader nahi → DB effects
  same hain, chip write skip. `SmartCardTransaction` table live DB me
  **absent** → VB6 ka hidden `CmdPosting` (LS_Posting) skip.

### (c) Core ops — `core/smartcard_ops.py`
VB6 ka poora money-movement ek hi `Proc_275_17(code, hw, label, vdate,
cash, secur, narr)` se guzarta hai (`label` = Recharge | Refund | Waive-off
| Reward), **VType hamesha `'RCARD'`**. Naya:
- `_card_docid()` — `Voucher_Prefix` (V_Type='RCARD') se prefix+serial →
  21-char DocId, `Start_Srl_No` bump (VB6 `Proc_275_15`).
- `recharge_card()` / `refund_card()` / `waive_off_all()` / `reissue_card()`.
- Sign convention **verified from source**: `SmartCardRecharge.frm:890`
  rollup `CurrBal = Sum(AmtCr) - Sum(AmtDr)` over `RCARDC/CARDEXP`,
  `SecurBal` over `RCARDS` → **Recharge = AmtCr, Refund/Waive = AmtDr**;
  Type = `RCARDC`(cash)/`RCARDS`(security); waive = `WCARDC` (rollup me
  **shamil nahi** — VB6 bhi alag UPDATE se zero karta hai, sirf audit row).
- `reissue_card` = VB6 ke 4 statements ek transaction me:
  `SmartCardReIssueDetail` insert + `SmartCardRegistration`
  SerialNo/IssDate/ValidUpto + `MemberFamily`(CardRegId) +
  `SmartCardMaster`(HW_Id). `SmartCardMaster` me `CardIssDate` column
  **hai hi nahi** (schema probe) → wo skip.
- **Naya latent bugs mile aur fix hue**:
  - **BUG-026 (HIGH)**: `insert_reg` ka `VALUES` ek `?` off-by-one tha →
    `U_EntDt`(datetime) ko `'A'` milta tha → **har Card Registration INSERT
    22007 se fail**. Saath hi `SmartCardReIssueDetail.Trans_Id` **IDENTITY**
    hai (explicit value = 544) aur `SCOPE_IDENTITY()` naye cursor me NULL
    deta tha → `@@IDENTITY`.
  - **BUG-027 (MEDIUM)**: `auto_settle_card` `VType='ASB'`, `Type='Refund'`,
    `AmtCr` likh raha tha (VB6: `RCARD`/`RCARDC`/`RCARDS`/`AmtDr`) → rollup
    ke against; `secur_settle='R'` par bhi `SecurBal=0` ho jata tha.

### (d) New tests (13)
- `tests/database/test_smartcard_txn.py` — **9** (recharge ledger+rollup,
  VB6 message parity, refund caps, reissue 4-statement + validations,
  waive-off, auto_settle RCARD regression, DocId/prefix bump).
- `tests/unit/test_card_txn_ui.py` — **4** (registry resolves 3 leaves,
  openers exist, dialogs construct with VB6 fields + `CmdWaiveoff`,
  `RechargeDialog._on_save` guards).

### (e) Verification
`pytest` → **739 passed / 0 failed**; `_verify_reg.py` OK; `compileall` OK.
(`_smoke_new_openers.py` round-4 ke baad delete ho chuka tha — uske kaam
ko ab full suite + `_verify_reg.py` cover karta hai.)
Temp `_probe_card_tables.py` delete.

**Uncommitted (commit nahi kiya)**: round-4 files + `core/smartcard_ops.py`,
`ui/smartcard_txn_ui.py`, `ui/shell.py`, `tests/database/test_smartcard_txn.py`,
`tests/unit/test_card_txn_ui.py`,
`HMS_REVERSE_ENGINEERING/21_Testing/BUG_REGISTER.md`, `SESSION_HANDOFF.md`.

## 2f. TIER-1 PARITY BATCH (2026-09-29, round-5, pushed f9422b1..3136294)

PARITY_BACKLOG.md ke Tier-1 me se 3/4 forms REAL + pushed. **Suite: 610
unit passed / 0 failed** (17 naye tests; database tests alag track me —
member/smartcard wale parallel-agent ke in-flight).

- **GuestProfile Foreigner tab** (`b64d31d`): `core/guest_foreign.py` —
  GuestProfFor 31-col CRUD (VB6 GuestProfile.frm loc_1C38424 36-col
  INSERT pattern), **CFORM serial** Voucher_Prefix V_Type='CFORM' se
  (loc_1C38859/1C38965; insert pe consume+update, update pe
  **serial-preserve guard** — warna Form-C serial wipe ho jata), Sno
  auto-gen (MAX+1), GuestProf existence guard. UI:
  `ui/guest_lookup_ui.py::_open_foreign()` — per-stay QTabWidget
  dialog (28 fields), Add Stay Tab / Save All. **UI gotcha**: sno/
  serialno readonly widgets me rakhe (vals-collector sab widgets se
  padta hai) + save loop `sno=0` pass karta hai, core resolve karta hai.
  6 unit tests.
- **VenueCapacity CRUD** (`4172c2a`): `core/venue.py::capacity_list/
  capacity_upsert/capacity_delete` + `ui/banquet_masters_ui.py::
  open_venue_capacity` dialog + shell registry "Venue Capacity".
  **Live-schema surprises**: Capacity **varchar** hai ('Informal',
  'Theatre', 'Seating' tier-names — sirf int nahi!), **U_Name column
  table me hai hi nahi** (audit sirf U_EntDt/U_AE/LogSite_Code).
  **Latent bug fix**: local var `exists` module-fn `exists()` ko shadow
  kar raha tha → UnboundLocalError on every upsert (row_exists rename).
  5 unit tests (U_Name-absent invariant assert).
- **Comp Master** (`24cedc5`): `core/comp_master.py` — 3-table pack
  (RoomDiscount/Comp_PlanDet/Comp_Inclusive), VB6 CompMast
  delete-then-reinsert save (loc_168F014), SubGroup guard, discount
  0-100 validation. UI: `ui/misc_sub_forms_ui.py::CompMasterWindow`
  (company code + 3 tabs) + shell registry "Comp Master".
  **PlanMast live cols `Code`/`Name`** hain — PlanCode/PlanName nahi
  (probe: 24 cols). **RoomDiscount me U_Name col nahi** (Comp_PlanDet/
  Comp_Inclusive me hai). Live: 1096 companies, 86 roomcats, 9 plans,
  get_comp('KK000025') = 4 discounts/4 plans. 6 unit tests.
- **Coordinated with parallel agent ka round-5 card work**: shell.py
  me unke 2 hunks (sct-import + Card Recharge/Refund/Re-Issue entries)
  mere commit me stage NAHI hue — per-hunk `git apply --cached` se
  selective staging. Unka working-tree diff intact hai.
- Stale scratch cleanup (`3136294`): `_bug002_check.txt`,
  `_gitstate.txt`, `_staged.txt`, `_verify_state.txt` deleted.

**Pushed**: `f9422b1..3136294` (4 commits: 3 feature + 1 cleanup).

## 2b. NEXT SESSION — kya bacha

### Aage ke ideas
- BUG_REGISTER.md ke document-only bugs (001/005/006/007/009/010) ko
  implementation notes se update karna.
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
  (BUG-011 = ACGROUPCURRBAL path-code/orphan rows; BUG-012 = menu leaf gap
  (rev: 2 dead-in-VB6 + 3 ported); BUG-026 = insert_reg off-by-one +
  identity; BUG-027 = auto_settle ledger sign/type)
- CurrBal rebuild: `core/fa_ledger_ops.py::rebuild_currbal` + `_acgroup_chain`
- Member master: `core/fa_masters_ops.py::member_*` + `ui/member_master_ui.py`
- Card txn core: `core/smartcard_ops.py::recharge_card / refund_card /
  waive_off_all / reissue_card / _card_docid / auto_settle_card`
- Card txn UI: `ui/smartcard_txn_ui.py` (Recharge/Refund/ReIssueDialog,
  `pick_card`) + shell registry keys `Card Recharge`/`Card Refund`/`Card Re-Issue`
- **Guest foreigner**: `core/guest_foreign.py::save_stay/list_foreign_stays/
  next_serial/delete_stay` + `ui/guest_lookup_ui.py::_open_foreign`
- **Venue capacity**: `core/venue.py::capacity_list/upsert/delete` +
  `ui/banquet_masters_ui.py::open_venue_capacity` (registry "Venue Capacity")
- **Comp master**: `core/comp_master.py::list_*/get_comp/save_comp/delete_comp`
  + `ui/misc_sub_forms_ui.py::CompMasterWindow` (registry "Comp Master")
- TDS challan: `ui/fa_sub_forms_ui.py::TDSChallanWindow` (selection-enum fix)
- Member/smartcard/currbal tests: `tests/database/test_member_master.py`,
  `tests/database/test_currbal_rebuild.py`,
  `tests/database/test_smartcard_txn.py`
- Wrong-target contracts: `tests/unit/test_wrong_target_wiring.py` (strict)
- DB: MOONData2627 (SQL Server, Native Client 10), 277 tables
- Login: SA/KANPUR verified working
