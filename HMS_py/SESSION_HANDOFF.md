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

- **departpay enhancement — TIER-1 COMPLETE 4/4** (`b9f20d3`):
  `core/depart_pay.py` — VB6 FrmPayTypeMast grid port
  (outlet_grid_for_paycode, set_for_paycode delete-then-reinsert +
  BANQ auto-row loc_105CC94) + FdReSetlement JOIN
  (fom_allowed_paycodes, restcode='<site>Fom'). UI:
  `open_outlet_paycodes` dialog (finance_masters_ui, registry "Outlet
  Paycodes") + ReSettlementWindow combo ab live DepartPay-filtered
  (pehle hardcoded). **Latent bug fix**: `QComboBox.currentItem()`
  exist hi nahi karta — `currentData()` tha sahi (click pe
  AttributeError hota). Live: FOM 14 paycodes, 73 outlets,
  KK0002→2 allowed. Suite: **618 unit passed**. Backlog update:
  PARITY_BACKLOG.md me Tier-1 sab DONE marked.

## 2g. ROUND 6 (2026-09-29) — menu-stub audit + BUG-012 re-correction + 2 card statements

**Suite: 767 passed / 0 failed** (`pytest -q -p no:cacheprovider`);
`_verify_reg.py` EXIT=0; `compileall core ui tests` OK. Commit nahi kiya.

### (a) BUG-012 dobara correction — `Facility Sundry Setting` dead NAHI tha
Round-5 me likha tha ki `MDIForm1.MallMgmt(6)` `Visible=0` + `MallMgmt_Click()`
= `Exit Sub` → VB6 me dead. **Galat**: VB6 ka asli open-path wo static control
nahi, **caption dispatcher** hai —
`ModuleAdd.bas::Proc_165_2_1E4B100` (128 `Loop Until`) me
`Loop Until (var_188 = "Facility Sundry Setting")` →
`Set var_90 = New FacilitySundry` → `.Show` (**line 5278**).
- `FacilitySundry.frm` (2813 lines) live hai; uski saari tables live DB me
  bhari hui: `SundryMast` 19 / `SundryType` 118 / `SundryTypeFix` 9 /
  `RevMast` 174 / `Enviro.SundryPassword`.
- Python me `ui/fd_forms_ui.py::open_facility_sundry` (kind=`facility`,
  `V_Type='FACL'`) **pehle se tha**, par registry me koi key hi nahi thi →
  leaf silently no-op.
- Fix: `ui/shell.py` me `"Facility Sundry Setting"` → `fdui.open_facility_sundry`;
  allow-list se hataya; guards `test_facility_sundry_setting_is_a_real_opener`
  + `test_facility_sundry_still_in_menu_tree`. BUG_REGISTER me
  "RE-CORRECTED" note. Sirf `Revenue Change Entry` genuinely dead hai
  (dispatcher me 128 cases me bhi uska case nahi).

### (b) Menu-stub audit (temp `_audit_menu_stubs.py` — ab delete)
Har leaf ko `core.menu.roots()/menubar_for()` se nikal kar registry
classification (REAL/STUB/NONE) + fuzzy match against `FODER/*.frm|*.bas`:
```
TOTAL leaves=487  REAL=394  STUB=71 (65 unique)  NONE=22 (18 unique)
```
- NONE = sab headers/junk + `Revenue Change Entry` → allow-list me justified.
- STUB me jinke paas VB6 source hai (11): `Assign Delivery`,
  `Data Recieving`, `Data Transfer`/(POS)/(Offline)/(Online),
  `Excise Invoice Cum Gate Pass`, `Item Issued On Cleaning`,
  `POS Bill Deletion`, `Travel Agency Posting` (+ junk `Reports`).
  Inme se zyadatar shell ke "blocked tables" list me pehle se document hain
  (`_qa/probe_coming_soon_tables.py`: `ForexRecv`/`ForexReceipt`, `SMSLog`/
  `SMSType`, `Sale` = ABSENT).
- **Conclusion: menu→registry gap class ab CLOSED** (koi unresolved leaf nahi,
  `test_every_menu_leaf_resolves_to_an_opener` green).

### (c) Card Statement (MINI/FULL) port — `SmartCardLedger` live hai
VB6 routing `ModuleAdd.bas:2493/2497`:
- `Card Statement (MINI)` → `ModuleSmartCard.Proc_275_18` —
  `SmartCardLedger ⨝ SmartCardRegistration ⨝ MemberFamily ⨝ SubGroup`,
  `Type IN ('RCARDC','RCARDS','CARDEXP')` + `LogSite_Code` + **ek din**,
  `ORDER BY U_EntDt`; SELECT 13 cols (`Relationship/Member/PreBalance/…`).
- `Card Statement (FULL)` → `Proc_275_22` — sirf `Code = <card>`, koi type
  filter nahi, 9 cols, style **106** (`dd mon yyyy`) vs MINI style **103**.
- Dono pehle `Proc_275_12` card-verification (reader scan) lete hain →
  Python me `pick_card()` (Code/SerialNo).
- **VB6 ka ek bug avoid kiya**: `SCL.Vdate='dd/mm/yyyy'` equality se
  `getdate()` (time-part) rows kabhi match nahi hotin → is port me din-bhar
  ka range (`>= din AND < din+1`). (BUG-002 jaisa safe-fix, documented.)
- Naya: `core/smartcard_ops.card_statement(code, mini, vdate, cn, limit, site)`
  + `ui/smartcard_txn_ui.CardStatementDialog` (Select Card / date (MINI only)
  / Show / CSV) + openers `open_card_statement_mini` / `_full`; `ui/shell.py`
  registry keys, `_coming_soon` list se dono captions remove.

### (d) New tests (+6) → 767
- `tests/database/test_smartcard_txn.py` **+2**: MINI/FULL column+filter
  parity (WCARDC MINI me nahi, FULL me hai), `vdate` range filter,
  `Scan Card First` / `Not Registered` validations.
- `tests/unit/test_card_txn_ui.py` **+2**: registry real-opener (not
  `_coming_soon`), dialog construct (MINI date input / FULL nahi).
- `tests/unit/test_shell_opener_refs.py` **+2**: Facility Sundry opener +
  menu-tree presence (BUG-012 regression).

**Uncommitted (commit nahi kiya)**: round-4/5 files + `ui/shell.py`,
`ui/smartcard_txn_ui.py`, `core/smartcard_ops.py`,
`ui/fd_forms_ui.py`(wire only), `tests/unit/test_shell_opener_refs.py`,
`tests/unit/test_card_txn_ui.py`, `tests/database/test_smartcard_txn.py`,
`BUG_REGISTER.md`, `SESSION_HANDOFF.md`, `_verify_reg.py`.

## 2h. ROUND 7 (2026-09-29) - `Assign Delivery` menu leaf port (STUB #1)

**Suite: 780 passed / 0 failed**; `_verify_reg.py` EXIT=0; commit nahi kiya.

### (a) Feasibility triage - 10 STUB leaves (VB6 source wale)
Har leaf ka dispatcher case + frm ki SQL/dependency check kiya:

| leaf | VB6 form | status |
|---|---|---|
| `Assign Delivery` | `RsAssignDelivery.frm` (1830 ln) | **PORTED round-7** |
| `Travel Agency Posting` | `TravelAgencyPost.frm` (2077 ln) | portable (sab table live) |
| `POS Bill Deletion` | `FrmPOSBillDeletion.frm` (1607 ln) | portable (KOT/PayCharge case-only) |
| `Item Issued On Cleaning` | `FrmItemIssuedOnCleaning.frm` | **BLOCKED**: `DepartWiseItemIssueList`, `Location` ABSENT |
| `Data Transfer` / `Transfer (Offline)` / `Transfer (Online)` | `Transfer.frm` (3171 ln) | **NOT portable**: Jet `.mdb` file-exchange utility (`App.Path\Transfer\Template.mdb`, `C:\TEMPZZZZ.MDB`, ODBC `HotelTrans`) |
| `Data Transfer (POS)` | `FrmPOSSaleDataTransfer.frm` | same `.mdb` dependency |
| `Excise Invoice Cum Gate Pass` | `ModuleAdd.bas:3126` -> `RsKitchenMaterial` | frm present, baad me |
| `Data Recieving` | **koi dispatcher case nahi** (sirf MDIForm1 caption) | dead - allow-list candidate |

### (b) `RsAssignDelivery` ka asli kaam
Form caption **"Member Category Wise Revenue"** = stale; dispatcher
(`ModuleAdd.bas:3854`) ise `Assign Delivery` leaf se kholta hai. Flow:
1. **Unassigned picker** (`loc_141E214`): `Sale1` (ya `SplitSale1` jab
   `Enviro.MultiBillGeneration='Yes'` + dept `AutoSplit`) `LEFT JOIN
   AssignDelivery` + `INNER JOIN Voucher_Type`, `ISNULL(AD.DeliBoy,'')=''`,
   `VTYPE='B'+Depart.ShortName`, `Order By S.DOCID`.
2. **Insert** (`loc_14BB527`): har selected row ke liye
   `Insert Into AssignDelivery (DocId,Vtype,VNo,Vprefix,Vdate,Ddate,RestCode,
   DeliBoy,BillAmt,Remark,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code)`.
3. **Browse** (`loc_109E614`): `AssignDelivery JOIN Voucher_Type JOIN
   DeliveryBoy` + date-range + `V_Type='B'+ShortName`.
4. **Delete** (`loc_115A697`), **DeliveryBoy list** (`loc_141E86D`,
   `LOGSITE_CODE='<site>' OR 'HO'`).

Live DB evidence: `Sale1` 12686 rows (12685 unassigned), depts `KKRS/KKM001/
KKM009/KKE001/KKG001` ke VType `BRS/BMM/BMTC/BES/BGA` `Voucher_Type` me
maujood, `Enviro.MultiBillGeneration=''` (-> Sale1 path), `DeliveryBoy`/
`AssignDelivery` **khali**.

### (c) Port (files)
- `core/pos_delivery.py` **+**: `depart_vtype`, `use_split_table`,
  `unassigned_bills`, `browse_assignments`, `delivery_boys`, `assign_bill`
  (duplicate-guard ke saath) - VB6 SQL docstrings me.
  Safe-fix: VB6 `VDate='dd/mm/yyyy'` equality ki jagah din-bhar range
  (BUG-002 jaisa, documented).
  `browse_assignments` ka DeliveryBoy join **LEFT** hai (VB6 loc_13749A5
  variant) - warna khali master ke chalte browser hamesha khaali dikhta.
- `ui/pos_delivery_ui.py` **rewrite**: 2 tabs - `Assign Bills` (VB6
  unassigned picker + delivery-boy combo + Assign Selected) +
  `Assigned (Browser)` (VB6 browse + Mark Delivered + Delete).
  Class/`open_pos_delivery` naam wahi (registry "POS Delivery" bhi isi ko
  kholti hai). DeliveryBoy combo **editable** (live master 0 rows).
- `ui/shell.py`: `"Assign Delivery"` blocked `_coming_soon` tuple se hataya,
  registry me real opener (`ModuleAdd.bas:3854` comment).

### (d) Tests (+7) -> 780
- `tests/database/test_pos_delivery.py` **+4**: `'B'+ShortName` parity,
  split-flag, VB6 SQL shape + order + date-range, assign -> picker se gayab
  -> duplicate guard -> browse -> delete roundtrip (rollback-safe).
- `tests/unit/test_pos_delivery_ui.py` **+3**: registry real-opener,
  core/UI exports, offscreen 2-tab construction.

## 2i. ROUND 8 (2026-09-29) — `Travel Agency Posting` menu leaf port (STUB #2)

### (a) VB6 reverse-engineering (`FODER\TravelAgencyPost.frm`, 2077 ln)
- Dispatcher: `ModuleAdd.bas:3186` -> `New TravelAgencyPost`.
- **VType = `"PRAP"`** (`loc_11340D4: global_60 = "PRAP"`), live me
  `Voucher_Type.Description = 'Travel Agency Posting'`, `Number_Method='Automatic'`.
- **Agency list** (`loc_1134036`): `Select SubCode As Code,Name From Subgroup
  where ActiveYN=1 And (LOGSITE_CODE=.. or ='HO') and CompanyType like
  ('Travel Agency') Order by Name` -> live **6 rows**.
- **Fill SQL** (`loc_1441116`, verbatim port):
  `SELECT SG.Commission, B.TravelAgent, B.NoDays, RoomOcc.RoomRate, B.GuestProf,
   GF.Name AS GuestName, RoomOcc.ChkInDate, ChkInTime, DepDate, DepTime,
   ChkOutDate, ChkOutTime, RoomOcc.Type FROM ((GuestFolio B LEFT JOIN GuestProf GF
   ON B.GuestProf=GF.Code) LEFT JOIN SubGroup SG ON B.TravelAgent=SG.SubCode)
   RIGHT JOIN RoomOcc ON B.DocId=RoomOcc.DocId WHERE B.TravelAgent='..' AND
   B.VDate>='..' AND B.VDate<='..'`
- **Grid = 9 cols** (`loc_1167E9B FGrid.Cols=9` + header captions
  `loc_1167EE4-116819C`):
  `0 Sr.No | 1 Guest (width 0, hidden) | 2 Name | 3 No.Days | 4 Room Rate |
  5 Total | 6 Comm.% | 7 Commission | 8 Post`
  - fill math: `Total = NoDays × RoomRate` (`loc_1441795`),
    `Comm.% = SubGroup.Commission` (`loc_14417F3`),
    `Commission = Total × Comm%/100` (`loc_14418B1`), `Post = ''` (khali —
    user ko 'Y' type karna padta hai).
  - edit: col6 (Comm.%) type karne par col7 recompute (`loc_FFCF0C`); col8 me
    'Y' type karne par Post='Y' (`loc_10E62F8`).
- **Nights** (`loc_1441361-14416A2`): Type `'O'` = `DATEDIFF(day, ChkIn, ChkOut)`;
  Type `'C'` = same **minus 1** (`loc_144158C: var_110 - 1`); Type `''`/other =
  `DATEDIFF(day, ChkIn, DepDate)`. Live `RoomOcc.Type`: O=11040, C=421, ''=2.
- **Validation** (`Proc_78_44_10A40E4`, `loc_10A3E39`), exact messages:
  - `Select Count(*) From Travel1 Where DocID='..'` > 0 -> **"Duplicate Serial No."**
  - Post='Y' row ka `Comm.%` = 0 -> **"Commission% is Zero"**
  - koi Post='Y' row nahi -> **"No Posting to Save."**
- **Commission A/c** (`loc_15CB4B4`): `Select CommissionAc From Enviro where
  CommissionAc<>'' and LOGSITE_CODE=..`; empty -> **"Please Set CommissionAC in
  Enviro"**. Live = **`KKCOMM`**.
- **Save** (`loc_15CB2D0`) order: 3× DELETE (Travel1/Travel2/Ledger by DocID) ->
  `INSERT Travel1(DocID,VType,VPrefix,Site_Code,VNo,VDate,FromDate,ToDate,
  TravelAgency,U_Name,U_EntDt,U_AE,LogSite_Code)` ->
  per Post='Y' row `INSERT Travel2(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,
  Guest,NoDays,RoomRate,Total,Commission,CommPer,...)` (SNo = grid Sr.No) ->
  **2× `INSERT INTO LEDGER`** (V_SNo 1: SubCode=agency/ContraSub=CommissionAc;
  V_SNo 2: SubCode=CommissionAc/ContraSub=agency; narration
  `Travel Agency Posting From Date <d1> To Date <d2>`) ->
  `UPDATE Voucher_Prefix SET Start_Srl_No=<naya VNo>` -> CommitTrans.
- **Numbering** (`Proc_78_45_115D0B8`): Voucher_Prefix+Voucher_Type join,
  `Date_From<=vdate ORDER BY Date_From DESC`; Automatic -> `Start_Srl_No+1`,
  Manual -> user VNo; DocId 21-char (`D + site(2) + type(5) + prefix(5) + vno(8)`).
- **Search** (`loc_EC7992`): `Travel1 T1 INNER JOIN SubGroup SG ON
  T1.TravelAgency=SG.SubCode where LOGSITE_CODE=.. or 'HO' Order by DocID,VNo`.
- **Load** (`loc_137CEAC`/`loc_137D2BE`): Travel1 + Travel2(+GuestProf.Name);
  loaded rows hamesha `Post='Y'` (`loc_137D6B4`).
- **Delete** (`loc_1250ED8`): 3× DELETE by DocID.

### (b) Deviation notes (docstring me bhi)
- **[SAFE-FIX]** VB6 `B.VDate <= d2` (d2 midnight) same-day evening check-in
  miss karta -> `B.VDate < DATEADD(day,1,?)` (din's documented safe-fix).
- **[DECOMPILE-UNCERTAIN]** helper `Proc_6_122_14E77A8` ka return recover nahi
  hua; Type='C' ka `-1` adjustment source me dikhta hai -> wahi rakha (0-clamp).
- **[DECOMPILE-AMBIGUOUS]** Ledger amounts decompile me dono taraf literal `0`
  dikhe; structure (`var_A0` = sum of col7 commission jo warna unused) se
  **agency Cr + CommissionAc Dr** final (standard "commission payable" convention).
- VB6 seedha `INSERT INTO LEDGER` karta hai — LedgerM/CurrBal/LedgerLog
  update nahi (FaVrEnt wale POST se alag) → faithful yahan bhi.

### (c) Port (files)
- **`core/travel_post.py`** (naya): `VTYPE='PRAP'`, `GRID_COLS` + `COL_*` consts,
  `FILL_SQL`/`AGENCY_SQL`/`COMMISSION_AC_SQL`/`SEARCH_SQL`, `agency_list`,
  `commission_ac`, `_as_date`, `_nights`, `fill_guests`, `recompute`,
  `validate_rows`, `_number_window`, `next_number`, `make_docid`, `save_post`,
  `_vno_for_docid`, `search_list`, `load_post`, `delete_post`, `doc_exists`.
- **`ui/travel_post_ui.py`** (naya): `TravelAgencyPostDialog` (header grid +
  `&Fill/&Save/&Delete/&Search/&New/&Close`, 9-col grid, col1 hidden,
  col6 double-click -> Comm.% input + col7 recompute, col8 double-click -> Post
  toggle, search popup table, `_load` by DocId), `open_travel_agency_posting`.
- `ui/shell.py`: import `travel_post_ui as tpost_ui`; registry key
  `"Travel Agency Posting"` add kiya; blocked-tuple se hata diya.

### (d) Tests (+13) -> 795
- `tests/database/test_travel_post.py` **+9**: VType/grid-9-col/21-char DocId,
  agency list (live 6) vs SQL count, `Enviro.CommissionAc`, fill SQL + math +
  Post='' + date guards, `_nights` teen type branches, validation messages,
  `next_number` (prefix 2026, vno 1), save roundtrip (Travel1/Travel2/SNo
  1..n/balanced 2-row Ledger/`Start_Srl_No` consume/search/load Post='Y'/
  delete), duplicate-serial guard.
- `tests/unit/test_travel_post_ui.py` **+4**: registry real-opener, core/UI
  exports, offscreen construction (9 headers, col1 hidden, agencies loaded,
  `_commac` set), offline grid edit + recompute.

### (e) Verification
`795 passed`, `_verify_reg.py` EXIT=0 (`Travel Agency Posting` -> REAL),
`compileall core ui tests` OK. Temp probes `_probe_travel{,2,3,4}.py` delete.

## 2b. NEXT SESSION — kya bacha

### Aage ke ideas
- **STUB triage ke baad bache portable leaves** (round-7 me table+SQL
  check ho chuka hai, port baaki):
  1. `POS Bill Deletion` -> `FrmPOSBillDeletion.frm` (1607 ln; KOT/PayCharge
     case-only match) - **agla candidate**, destructive hai (bills delete)
     to port se pehle user confirmation.
  2. `Excise Invoice Cum Gate Pass` -> dispatcher `New RsKitchenMaterial`
     (frm check karna - excise/GST logic + tables confirm karo).
  Non-portable/blocked (re-touch mat): `Data Transfer` + `Transfer
  (Offline)/(Online)` + `Data Transfer (POS)` = Jet `.mdb` file-exchange
  utility; `Item Issued On Cleaning` = 2 table ABSENT; `Data Recieving` =
  koi dispatcher case nahi (dead).
  (Done: `Assign Delivery` round-7, `Travel Agency Posting` round-8.)
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
  (rev-2: 1 dead-in-VB6 `Revenue Change Entry` + 4 ported — Facility Sundry
  Setting, Card Recharge/Refund/Re-Issue); BUG-026 = insert_reg off-by-one +
  identity; BUG-027 = auto_settle ledger sign/type)
- Facility sundry: `ui/fd_forms_ui.py::_SundryBase/FacilitySundryWindow`
  (kind=`facility`, V_Type='FACL') + `core/sundry_type.py` + registry
  `"Facility Sundry Setting"`
- **Assign Delivery (VB6 RsAssignDelivery)**: `core/pos_delivery.py::
  depart_vtype / use_split_table / unassigned_bills / browse_assignments /
  delivery_boys / assign_bill` + `ui/pos_delivery_ui.py::
  PosDeliveryDialog` (2 tabs) + registry keys `Assign Delivery` and
  `POS Delivery`
- CurrBal rebuild: `core/fa_ledger_ops.py::rebuild_currbal` + `_acgroup_chain`
- **Travel Agency Posting (VB6 TravelAgencyPost)**: `core/travel_post.py::
  VTYPE='PRAP' / GRID_COLS / agency_list / commission_ac / _nights /
  fill_guests / recompute / validate_rows / next_number / make_docid /
  save_post / search_list / load_post / delete_post` +
  `ui/travel_post_ui.py::TravelAgencyPostDialog` (9-col grid; col6 Comm.%
  edit -> col7 recompute, col8 Post toggle) + registry key
  `Travel Agency Posting`
- Member master: `core/fa_masters_ops.py::member_*` + `ui/member_master_ui.py`
- Card txn core: `core/smartcard_ops.py::recharge_card / refund_card /
  waive_off_all / reissue_card / _card_docid / auto_settle_card`
- Card txn UI: `ui/smartcard_txn_ui.py` (Recharge/Refund/ReIssueDialog,
  `pick_card`, `CardStatementDialog`) + shell registry keys
  `Card Recharge`/`Card Refund`/`Card Re-Issue`/
  `Card Statement (MINI)`/`Card Statement (FULL)`
- Card statement core: `core/smartcard_ops.py::card_statement` (VB6
  Proc_275_18/22 SQL parity)
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
- Login: SA/******** verified working (password session-only)

---

# SESSION HANDOFF — 2026-10-02 (Main Setup dispatcher-stub compare loop)

## What was asked
Continuous VB6->Python compare->debug->test->verify loop over Main Setup until no
relevant VB6 logic is missing. This round: close every `_coming_soon` leaf under
`&Main Setup` by comparing against the VB6 dispatcher (ModuleAdd.bas
Proc_165_2_1E4B100) + MDIForm1 static menu (UTL_Click/SCRD_Click).

## Done (all verified)
- Evidence pass: every stub leaf traced to VB6 dispatch loc or proven dead
  (no-case fall-through / UTL case empty / menu Visible=0 / SCRD=Exit Sub).
- Parity test guard FIXED (tests/unit/test_mainsetup_registry_parity.py):
  exact-match qualname -> `_COMING_SOON_QUALNAME_SUFFIX` + endswith (MS-031).
  Guard now really detects stubs (was silently passing while 9 leaves red).
- ALLOWED_INACTIVE expanded with VB6 evidence: Rate Group Master, Sale MIS
  Customized, Data Recieving, Data Transfer, Data Transfer (POS) (+ carried
  Member Bill Sundry Setting). Evidence in test comments (MS-036).
- 7 forms ported (NEW files only, agent-written, py_compile + offscreen
  construct + read-only live-DB smoke each):
  1. Voucher Serialisation: core/voucher_serialisation_ops.py +
     ui/voucher_serialisation_ui.py -> open_voucher_serialisation
  2. POS Recycle: core/pos_recycle_ops.py + ui/pos_recycle_ui.py ->
     open_pos_recycle (supervisor gate)
  3. Enviro Inventry: core/purchase_enviro_ops.py + ui/purchase_enviro_ui.py
     -> open_purchase_enviro (14 Enviro cols; overlap w/ enviro_ui documented)
  4. Task Scheduler: core/task_scheduler_ops.py + ui/task_scheduler_ui.py ->
     open_task_scheduler (JobSchedule CRUD, KK+Max+1 code rule)
  5. Voucher Wise Sundry Entry: core/voucher_sundry_ops.py +
     ui/voucher_sundry_ui.py -> open_voucher_sundry_entry (SundryType CRUD)
  6. Open Item Consumption: core/open_item_consumption_ops.py +
     ui/open_item_consumption_ui.py -> open_open_item_consumption
     (undated FinItem+RestCode; DELETE->re-INSERT + ItemMast cost rollup)
  7. POS Bill Deletion: core/pos_bill_deletion_ops.py +
     ui/pos_bill_deletion_ui.py -> open_pos_bill_deletion
     (VB6-exact order; confirm+pending-count added, MS-035)
- frmWelcome port: ui/utility_forms_ui.py SpecialOccasionsDialog +
  open_special_occasions (MS-033; Guest BirthDates/Anniversary now correct).
- ui/shell.py wiring: 7 try/except imports; blocked-tuple trims; explicit
  wires for 7 ports + Guest BirthDates + PLU File (W.Scale) + Cash Card x2 +
  Recharge/Refund -> sct.open_card_recharge (MS-034).
- Lint: ruff --fix on 3 new files (E401/F401 x2) -> new files clean; shell.py
  findings pre-existing (HEAD had 47).

## Test state (authoritative)
- Baseline before round: 873 passed, 1 skipped.
- Parity: `python -m pytest tests/unit/test_mainsetup_registry_parity.py -q`
  -> 5 passed (was 4 passed/1 failed w/ 9 red leaves).
- Full: `python -m pytest -q -p no:cacheprovider` -> 907 passed, 1 skipped,
  2 warnings (pre-existing utcnow), 101.27s.

## Docs updated
- MAIN_SETUP_VB6_VS_PYTHON_COMPARISON.md: sec 10 refreshed + new sec 11
  (round-2 tables: ported/re-wired/allowlisted + verification).
- MAIN_SETUP_BUG_REGISTER.md: MS-031..MS-036 added; summary 36 total
  (16 P0/20 P1); DOCUMENTED legend.
- MAIN_SETUP_IMPLEMENTATION_STATUS.md: round-2 section (7-port table,
  re-wires, guard fix, next steps).
- MAIN_SETUP_TEST_RESULTS.md: sec 8 (parity 5/5, suite 907, per-port
  verification table, lint).

## Known gaps / next
- MS-001..MS-030 (round-1 register): CompMast 42-field form, FA Enviro editable
  UI, TopCtrl machines, UserPermission UI, keyboard map, permission menu —
  outside dispatcher loop, still OPEN.
- Data Transfer / Data Transfer (POS): non-portable Jet .mdb protocol; needs
  product decision for SQL Server-native design.
- Rerun full suite before any commit (nothing committed this round; all work
  untracked/modified in working tree).

---

# SESSION HANDOFF - 2026-10-02 round 3 (waves 1-3: schema upgrade, site sweep, register rebuild)

## What was asked
Continue the Main Setup compare->debug->test->verify loop per user decisions:
(a) fix broken general_setup_tabs (FIELD_TYPES) and keep going on register
items; (b) MS-008 = port SAFE SUBSET only (admin-gated Schema Upgrade dialog,
no DROP COLUMN / no SerialKeyNo reset / no app-kill), also fix folio.py
divergences.

## Done this round (all verified)
### Fixes I applied directly
- ui/general_setup_tabs_ui.py: FIELD_TYPES/FIELD_MAXLEN were locals inside
  _build - calls changed to `FIELD_TYPES.get`/`FIELD_MAXLEN.get`; added
  QSpinBox/QDoubleSpinBox to PyQt6 import. test_general_setup_tabs 19/19.
- core/fa_enviro.py MS-006 (re-open): removed U_Name/U_AE/U_EntDt injection
  from update_settings (live FAEnviro 58 cols has NO audit cols; VB6 UPDATE
  loc_160F419-160F6C1 also none). Test renamed
  test_fa_enviro_update_settings_matches_vb6_no_audit pins parity.
- core/folio.py run_startup_normalization (Chain-B divergences, VB6 verbatim):
  * guestprof_fom += `AND FOM IS NULL` (loc_195AE9D) - pehle FOM=0 rows ko
    1 palat deta tha (data-flip bug).
  * planmast_taxstru: galat `INNER JOIN RevMast ON Code=Code` -> VB6
    `LEFT JOIN RoomCat LEFT JOIN RevMast` + `WHERE ISNULL(...)=''` (loc_195AC15).
  * roomocc_taxstru: fill-only guard add (loc_195AC36).
  * depart_kot_na: constant 'No' default -> VB6 Enviro subselect
    `SELECT ISNULL(MAX(KOTAtNightAudit),'') FROM Enviro WHERE LogSite_Code=?`
    + `OutletYN='Y'` (loc_195AE65-75).
  * statements normalized to (name, sql, params) tuples; loop passes params.
  Verified: py_compile + nightaudit tests 10/10 (no test refs the fn).
- ui/shell.py _db_update (:914): stub -> lazy import + open_schema_upgrade
  (admin gate lives in dialog).

### Wave-1 (5 parallel agents, all green)
- MS-010/017: core/auth.ensure_sa_user (frmCompany.frm:1817-1823) at
  check_login entry; usermaster._validate VB6 rules (Short Name required,
  Y/N validation, password <=8).
- MS-001..004/027: NEW ui/comp_mast_form_ui.py (CompMastForm :151,
  CompanySearchDialog :71, open_comp_mast_form :832) + core/comp_master.py
  (validate/save 43-col/delete/get + 4 DG lookups); no ContractType col live;
  F_AO opening-balance write NOT ported (risky, documented). Registry
  "Company Master" rewired with p2 fallback.
- MS-030/009/011: _Vb6KeyMapFilter + install_vb6_keymap(app) from run_flow()
  + main(); F2-F11 caption handler, Enter=Tab busy guard, Esc/F12 pass-through;
  company grid context menu Add/Edit/Delete/Save/Cancel/Exit.
- MS-012/014/015/028/029: general_setup_tabs nav toolbar, lookup pickers +
  LookupDialog, roundoff_save/delete_module, RoundOffSetting grid, radios;
  6 grids bound (DGHelp/DGGroup/DGRevenue/DGPurchaseGodown/
  DGPurchItem/DGDepart) via LOOKUPS + _grid_rows + lookup_* fetchers
  (DGDepart via PrintingParametersTab RestCode browse).
- MS-005/007/026: ui/fa_enviro_ui.py 22 missing widgets, Tagada maxLength(75),
  Debit/CreditLimit checkboxes, 42-col btnok harvest.

### Wave-2
- MS-016: UserMast GodCode/FloorCode/BackColor/AllowDtChng persisted
  (SELECT_COLS/_map/insert/update) + UI fields/swatch.
- MS-037: NEW core/permission.py (operation/role_of/clear_cache; a/e/d/p =
  UserPermission.frm Param_Str slots :1636/:2282/:2353, u = HMS.bas:18788;
  fail-open: None/""/SA/unknown -> True); consumed by shell _rbac_guard;
  live verified SA open / ADITYA denied.

### MS-008 Schema Upgrade (user decision: port safe subset)
- NEW core/schema_upgrade.py: 630 idempotent statements in VB6 order
  (frmCompany:2773 -> Hotlib:608 hop -> 2776..2831); guard_audit() at import
  630/630 guarded, guarded-drop allowlist = 3 (RoomDiscount PK, 2 view drops);
  plan(); run(CONFIRM_TOKEN) per-stmt try/except. NO DDL executed in verify.
- NEW ui/schema_upgrade_ui.py: admin-gated (permission.role_of), preview +
  confirm + results; opener open_schema_upgrade(parent, user).
- EXCLUDED (hard): 4 irreversible one-time statements (DROP COLUMN kdate,
  SerialKeyNo='', DF drop, Company add Comp_Id), 47 login-normalization
  writes, VB6 End, any auto-run.

### MS-020 site sweep (evidence-driven) + MS-021 correction
- 118 candidates classified vs VB6: 7 FIXED (forex_txn:66, pos_advance:88,
  pos_display:52, excise_gate_pass:85, nightaudit:59, checkout:342,
  plan_definition:39), 100 KEPT with loc refs, 3 UNCERTAIN kept
  (excise_gate_pass:54/62, travel_post:88 - exact VB6 twins site-only),
  5 excluded-file rows classified only (folio.py, comp_master.py).
- MS-021 register claim "VB6 consistently uses OR-HO" CORRECTED: Enviro 622
  site-scoped vs 2 HO; rule = per-query exact VB6 evidence.
- Live smoke of 7 fixed queries OK; targeted 50 passed.

### Incident: concurrent parallel session (5 opencode.exe running)
- ui/general_setup_tabs_ui.py + core/fa_enviro.py were being written by
  another session mid-run (fa_enviro content hash stayed identical - my
  MS-006 fix survived).
- core/__init__.py got a giant NEW import block (~11:37) naming 7
  non-existent flat channel_* modules + duplicate travel_post +
  auth.dec_bytes -> suite could not even load conftest (transient
  ImportError voucher_type_ops then channel_config). REPAIRED: channel -> 1
  name (real layout = core/channel/ package), dedup travel_post, dropped
  dec_bytes, added __all__ (96 names) -> ruff clean.
- DELIVERABLE CLOBBER: MAIN_SETUP_BUG_REGISTER.md (child),
  MAIN_SETUP_IMPLEMENTATION_STATUS.md, MAIN_SETUP_TEST_RESULTS.md
  overwritten by parallel session 10:47-10:48 (legacy BUG-001 content).
  Superseded copies preserved as *.superseded_20261002_1047.
  BUG REGISTER REBUILT (MS-001..037 + round-2 verification counts + wave
  logs) with reconstruction notice - MS-018/019/022-025/032 entries [LOST]
  (no git history; only ids + scope known). STATUS + TEST_RESULTS rebuilt
  from facts. COMPARISON got new sec 12 (round-3). NOTE: parent-dir
  ../MAIN_SETUP_BUG_REGISTER.md is a DIFFERENT lineage (Oct-1 Tax/PayType
  MS-001..018) - do not merge.

## Test state (authoritative)
- Final: `QT_QPA_PLATFORM=offscreen python -m pytest -q -p no:cacheprovider`
  -> **1033 passed, 1 skipped, 0 failed**, 2 pre-existing utcnow warnings,
  134.94s (entire tests/ tree).
- Earlier baselines: 873 -> 907 (round-2) -> 918+10err (mid wave-2,
  FIELD_TYPES breakage) -> 1033 final.
- Lint: schema_upgrade/ui + core/__init__ + comp_mast/permission files all
  ruff clean; ui/shell.py 30 findings (HEAD had 47, rest pre-existing
  E402/E702/E731/F401); folio E741 + nightaudit F401 pre-existing at HEAD.

## Known gaps / next (authoritative open items)
1. [CLOSED 2026-10-02 round-4] MS-004 - premise disproven: live callers
   ui/shell.py:845/895 + CompanyDialog; delegation impossible (different
   table/semantics). Docstring wrong-target guards added (core/company.py).
2. MS-013 Tier-2: remaining Enviro finance AC columns (AdvanceAc, Loan_Ac,
   Salary_Ac, Cash_Ac, CashCard*, ~21 cols) - product decision pending
   (expose VB6-parity vs read-only display; 0 live-schema gaps, no ALTER
   needed). Tier-1 DONE 2026-10-02: 6 Outlet/Banquet AC cols (OutdoorSaleAC/
   IndoorSaleAC/OutdoorPartyAC/IndoorPartyAC/HallDiscAC/HallRoundOff) in
   EDITABLE + SubGroup existence check + DGHelp pickers; removed from
   READ_ONLY.
3. [RECOVERED 2026-10-02 round-4] register entries MS-018/019/022..025/032 -
   all 7 restored verbatim from pre-clobber opencode session DB + re-verified
   against code; see register + MAIN_SETUP_REAUDIT_FRAGMENT.md. 0 [LOST] left.
4. [RESOLVED 2026-10-02 round-4] 3 uncertain MS-020 rows - all KEEP with VB6
   loc + HMS.exe binary evidence (excise_gate_pass:54/62 =
   RsKitchenMaterial.frm:1775 site-only; travel_post:88 =
   TravelAgencyPost.frm:597/:861 site-only). Tally: 7 fixed/103 kept/0
   uncertain.
5. [DONE 2026-10-02] 6 general-setup grids (DGHelp/DGGroup/DGRevenue/
   DGPurchaseGodown/DGPurchItem/DGDepart) bound in ui/general_setup_tabs_ui.py
   (LOOKUPS + _grid_rows + lookup_* fetchers; DGDepart via
   PrintingParametersTab RestCode browse button). Smoke: 3107/73/67/64/768/67
   rows; missing table -> [] graceful.
6. Data Transfer / Data Transfer (POS): Jet .mdb protocol - product decision;
   research complete (round-4): recommendation = SQL Server-native transfer,
   decision gate = "field sites networked to HO SQL Server?" (air-gapped ->
   same workflow with BCP/CSV/zip carrier; optional read-only .mdb importer
   hedge for mixed rollout). Details in register Open items.
7. Crystal .RPT layouts remain app-wide stub (text fallback standard).
8. Nothing committed this round; all work untracked/modified. Watch for the
   parallel session re-clobbering the three rebuilt deliverables (re-check
   mtimes before relying on them).
9. menu_help Opt5-7: fixed 2026-10-02 (see TEST_RESULTS §5). VB6 has NO
   Opt5/6/7 anywhere; if the parallel session's User Permission UI wants
   Print/Report/Admin rights columns, that is a SCHEMA + product decision
   (add columns only with user approval) — do not re-add to `_cols` blindly.

## Round-3 addendum (2026-10-02 afternoon)
- menu_help Opt5-7 regression (parallel session, 11:46) fixed at 13:32:
  `_load_user` restored to Opt1-4 cols (456 SA rows), `get_permissions`
  fallback hardened against Code-as-Opt5 false positive.
- Parallel session wrote `ui/shell.py` at 13:37 (registry edits) mid-suite;
  3 transient failures all pass on re-run (65/4 files).
- `test_currbal_rebuild` ×2 failed on SQL Server deadlock/lock-timeout under
  parallel-session DB contention (suite 452.75s) — pass on re-run.
- **AUTHORITATIVE final suite: 1038 passed, 1 skipped, 0 failed — 59.42s,
  exit=0** (1038 = 1033 + parallel session's 5 new
  `tests/database/test_main_setup_isolation.py`). Deliverables intact
  (register 11:56, status 12:00, test-results 12:00→updated, comparison 12:04,
  handoff 12:04→updated).

## Round-4 addendum (2026-10-02, "CONTINUE WITH ALL" batch)
- 6 work packages run in parallel; results integrated into register
  (Wave-4 log + entries), this handoff, STATUS, TEST_RESULTS.
- **[LOST] → RECOVERED**: MS-018 (UserPermission UI), MS-019 (permission
  menu build), MS-022 (Printing Setup INI keys), MS-023/024/025 (FA Enviro
  ageing/Tagada/stock editables), MS-032 (7 stub menus) — verbatim rows from
  pre-clobber opencode DB, HIGH confidence, re-verified. Stubs' scope guesses
  (TopCtrl etc.) were wrong.
- **MS-004 CLOSED**: "orphan CRUD" claim disproven (shell.py:845/895 live);
  docstring wrong-target guards added (core/company.py); 10 tests pass.
- **MS-020 closed out**: 3 uncertain → KEEP ×3 (VB6 loc + HMS.exe binary
  scan evidence); no code changes.
- **MS-028 grids DONE** (6 bound, smoke 3107/73/67/64/768/67 rows) +
  3 core/enviro.py type fixes (CatalogLimit/KitchenStockReport/SmartCardItem
  were aborting every Parameter save with ValueError).
- **MS-013 Tier-1 FIXED**: 6 AC cols → EDITABLE + SubGroup existence check;
  save smoke 40 keys / 0 validation failures / 0 value drift. Tier-2 +
  Data Transfer = open product decisions (evidence in register Open items).
- Parallel-session breakage fixed (2-line diff): stray `PYEOF`
  (ui/fa_voucher_ui.py:128, heredoc artifact → 65 collection errors) +
  invalid `setTabOrder(..., focusNextChild())` (:124 → TypeError).
- Verification after batch: registry/general-setup 24 passed, ui_modules
  5 passed; full-suite confirmation recorded in TEST_RESULTS §6.

# SESSION HANDOFF - 2026-10-06 (VB6 shell frame overhaul, DS-001)

## What was asked
- Overhaul ui/shell.py MainWindow into the professional VB6 MDIForm1
  shell (fixed band/rail/client/sidebar/status frame + persistent
  "&Main Setup" top menubar) while keeping VB6 parity and the suite
  green (vb6-python-compare skill verification).

## What was done
- **DS-001 shell frame**: fixed 80px band (QMenuBar#vbSubBar 40px
  inside it), 107px teal left rail projected onto the 11 VB6 captions
  (_build_rail), 120px chrome right sidebar (date + 6 country clocks
  + Reload/Exit), 27px status bar (user/site/SW-Dt/CAPS/NUM panels
  + Hide Left/Right Menu + Full Screen toggles + DB widget), 1s
  QTimer clock tick with GetKeyState latch panels, Win95 QSS
  (VB_SHELL_QSS). Purple mod_row/sub_row bars deleted (VB6 has none).
- **UI-MS-TOPMENU**: persistent 9-module top menubar
  (_TOP_MENU_ORDER, leaves from mh.menubar_for); menuBar() shadows
  QMainWindow.menuBar() so it lives in the band; module click no
  longer destroys it. Window title gains "- main setup".
- **Routing guards**: P1-A "Item List"->p2.open_item (frmItem);
  P1-B Banquet/Outdoor Banquet parents dispatch Menu Category/Item
  Group/Menu Item to Hall openers (_hall_opener); P2-A User
  Permissions (Advanced) behind _rbac_guard("u"); P2-B
  MainSetupWorkbench filters via mh.can_open.
- Tests: tests/test_vb6_shell_frame.py (25, new),
  tests/test_main_setup_topmenubar.py (4, new),
  tests/unit/test_mainsetup_p1a_p1b_routing.py (8, new),
  tests/unit/test_menuhelp_sidebar_live.py (updated). Targeted:
  36 passed. Spec: specs/ui-p0-implementation-summary.md (new,
  the ui-p0-bugs.md fix-agent deliverable).

## Verification
- ast.parse shell.py OK; ruff F821,E9,F601,F811,F841 violation set
  on shell.py identical to HEAD (zero new; 6 pre-existing F601
  alias-dict repeats), whole-tree count unchanged at 110.
- Full suite (recorded): 1170 passed, 1 skipped, 0 failed
  (324.08s, EXIT=0) — includes the fdpostchg G1 regression
  fix below.

## Known gaps / next
1. P0 PARTIAL categories A-F (ui-p0-audit.md) are the next wave:
   Company Master Contract Type field, FA Enviro Integrity button,
   General Setup toolbar Print/Post, sub-tab inventory reconciliation
   (needs HMS.exe design blob), User Master password setMaxLength
   one-liner, F-key dispatch hardening (base_master.py:107 F2->pick
   removal + _edit/_delete aliases).
2. Shell round work uncommitted (same pattern as previous rounds).

