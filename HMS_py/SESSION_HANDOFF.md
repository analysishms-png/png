# SESSION HANDOFF — HMS_py VB6 parity port (2026-09-29)

## IMPORTANT: Ye file agle session ka STARTING POINT hai

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
  (reverse checkout, currbal, night audit process/posting) — suite
  685 passed / 6 failed thi unke in-flight commit se pehle.

### Abhi bhi COMING_SOON stubs (blocked-table wale)
- "Sale Bill Entry", "Settlement Entry" (Sale/Stock tables absent),
  "Forex Receive Entry" (ForexRecv/ForexReceipt absent) — port mat karna
  jab tak tables na aaye (probe: `_qa/probe_coming_soon_tables.py`).
- "Party Master", "Consumption Master", "Finish Material Receive Entry",
  "Excise Invoice Cum Gate Pass" waghera bhi batch me hain.

## 2b. NEXT SESSION — kya bacha

### Aage ke ideas
- BUG_REGISTER.md ke document-only bugs (001/005/006/007/009/010) ko
  implementation notes se update karna.
- InconsistencyCheckWindow ko multi-check tabs dena (ab sirf pehla
  non-empty check grid me dikhta hai).
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
- DB: MOONData2627 (SQL Server, Native Client 10), 277 tables
- Login: SA/KANPUR verified working
