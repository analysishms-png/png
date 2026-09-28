# SESSION HANDOFF — HMS_py VB6 parity port (2026-09-28)

## IMPORTANT: Ye file agle session ka STARTING POINT hai

## 1. VERIFIED-COMPLETE (is session me, tests se prove hua)

- Commit `65aa07e` (branch `codex/main-setup-parity`):
  - `core/checkin.py` `delete_checkin()` me `GuestFolioProfDetail` cleanup added
    (PK = Docid+GuestProf; iske bina folio-reuse pe PK_GuestFolioProfDtl violation)
  - `ui/pos_table_ui.py` merge-conflict markers resolved (HEAD vs 9615357 —
    dono sides same delete-guard pattern thi, ek clean block rakha)
  - Live DB se 1 orphan `GuestFolioProfDetail` row cleaned (dead test artifact)
  - **Tests: 661 passed** (pehle 1 syntax error + 6 failures the)

- Login test (user request "SA/KANPUR se login kar test karo"):
  - `auth.check_login("SA", "KANPUR")` → **True, "Welcome SA"** (verified)
  - `auth.check_login("SA", "wrongpass")` → False, "Invalid Password" (verified)
  - VB6-compatible decrypt + brute-force lockout dono working

- Registry audit (qualname check zaroori hai kyunki `_coming_soon` bhi callable
  return karta hai — plain `reg.get(cap) is not None` galat "WIRED" bata deta hai):
  - Already WIRED: "KOT Transfer", "Check Out Clearance Screen", "Display Rack",
    "Multiple SMS Type", "Table Change Entry", "Token Entry"
  - Abhi bhi COMING_SOON stubs: **"Menu Item Copy", "Inconsistency Check",
    "Reverse Room Merge", "Sale Bill Entry", "Settlement Entry", "Forex Receive Entry"**
  - Registry me later keys earlier `_coming_soon(cap)` batch-set ko override
    karti hain (dict literal order) — audit hamesha runtime dict pe karo

- Schema probe (`_qa/probe_coming_soon_tables.py`):
  - LIVE (portable): RoomOcc, PayCharge, GuestFolio, FolioLog, KOT(28101 rows),
    Sale1, ItemMast(3355), ItemGrp, ItemCatMast, Depart, RoomMast, Enviro
  - ABSENT (BLOCKED-TBL, port NAHI karna): ForexRecv, ForexReceipt, GroupMast,
    MessageIn, MessageOut, MeterRead, SMSLog, SMSType, Sale
  - Probe pattern: `sys.path.insert(0, os.getcwd())` + parent dir (HMS_py
    self-named package) — conftest jaisa path setup probe scripts me bhi chahiye

- VB6 evidence collected (FODER = `../FODER`, decompiled .frm):
  - `FrmRevMergeCharge.frm` (Reverse Transfer Room) ke exact UPDATE queries
    (lines ~605-913, merge_charge ka 3-step reverse):
      1. UPDATE GuestFolio SET mFolioNoDocId='', mFolioNo=0
         WHERE MFolioNoDocid=? AND Docid=?
      2. UPDATE PayCharge SET FolioNoDocid=<target> WHERE FolioNoDocid=<source>
      3. UPDATE PayCharge SET RelatedFolioNo=0, RelatedFolioNoDocId=''
         WHERE FolioNoDocid=<source>
  - `FrmInc.frm` (Inconsistency Check) ke exact audit queries (lines 2946-3067):
      - PayCharge where PayType set but PayCode empty
      - SETTLEDATE set but BILL_NO empty (MODESET<>'S', vtype not in ARRES/ADRES)
      - Per-folio: SUM(AmtDr)-SUM(AmtCr) HAVING <>0 GROUP BY FolionoDocId
      - PayCode NOT IN (SELECT CODE FROM REVMAST)
      - null/empty Docid in PayCharge & GuestFolio
  - `frmMenuItemCopy.frm` evidence (lines 1357, 1642):
      - outlets: SELECT Code,Name,RestType,ShortName FROM Depart WHERE
        (LOGSITE_CODE=? or LOGSITE_CODE='HO') AND OutletYN='Y'
        AND RestType<>'Banquet'
      - items: SELECT ... FROM ItemMast LEFT JOIN ItemCatMast ON
        ItemMast.ItemCatCode=ItemCatMast.Code LEFT JOIN ItemGrp ON
        ItemMast.ItemGroup=ItemGrp.Code LEFT JOIN Depart ON
        ItemMast.RestCode=Depart.Code WHERE ItemMast.RestCode=?
  - ItemMast live columns verified — VB6 24-col copy-list ke sab cols exist:
    Code,Name,Unit,Type,ItemGroup,RestCode,SaleRate,ItemCatCode,Kitchen,
    SChrgApp,RateIncTax,DiscApp,RateEdit,NType,FinItem,ItemType,BarCode,
    CommodityCode,DispCode,PurchRate,LPurRate,ConvRatio,IssueUnit (+more)

- BUG_REGISTER.md (HMS_REVERSE_ENGINEERING/21_Testing/) — 10 bugs:
  - **BUG-002**: SundryType ORDER BY error — python port
    (`core/sundry_type.py::list_entries`) me query already valid hai
    (no GROUP BY), isliye python side SAFE. Sirf evidence note add karo.
  - **BUG-003/BUG-004 (HIGH, fix karna hai)**: PayCharge/Stock PK violation —
    counter desync. Pattern already `core/checkin.py::next_folio` me hai:
    `SELECT MAX(FolioNo) FROM X WITH (UPDLOCK, HOLDLOCK)` — same pattern
    PayCharge (LASTVOU/Voucher_Prefix) aur Stock counters pe apply karo.
  - **BUG-008 (SECURITY)**: VB6 backdoor "India12". `core/auth.py` me sirf
    self-test strings me hai (line ~187) — production login path me nahi.
    SAFE as-is; regression test (TC-010): login with India12 must FAIL.
  - BUG-001/BUG-006: schema drift (LocationMast/FreeItemAllow absent) —
    DB-side fix owner decision, code touch nahi karna.
  - BUG-005/007/009/010: VB6-binary/runtime — python port me equivalent
    nahi, document-only.

- Parity tool fixed: `tools/vb6_py_file_parity.py` line ~756
  `w("..." w"lambda...")` invalid syntax tha → proper implicit concat.
  Latest counts: forms {PY_FILE:50, REGISTRY:160, LIKELY:49, MISSING:3,
  REPORT_VIEWER:15, COMING_SOON:40, SHELL:2, REGISTRY_ONLY:2},
  bas {FULL:11, MISSING:5, PARTIAL:13, SPARSE:2, NO_SQL:1}

## 2. NEXT SESSION PLAN (ordered)

### Task A — 3 forms port karo (COMING_SOON → REAL)
1. **Reverse Room Merge** (FrmRevMergeCharge):
   - Core: `core/fo_ops.py` me `reverse_merge_charge(docid, user, ...)` —
     3 UPDATEs (upar evidence). Guard: source docid ka mFolioNoDocid
     non-empty hona chahiye (warna reverse karne layak merge nahi).
   - UI: `ui/fo_sub_forms_ui.py` me `open_reverse_room_merge(parent)` —
     `open_merge_charge` (line ~419) ka mirror pattern.
   - Registry: "Reverse Room Merge" ko `_coming_soon` batch-set (~line 1446)
     se NIKALO aur real opener dict me lagao.
2. **Inconsistency Check** (FrmInc):
   - Core: naya `core/inconsistency.py` — 6 audit checks (evidence upar),
     read-only, har check list of offending rows return kare.
   - UI: `ui/db_maintenance_ui.py` me `open_inconsistency_check(parent)` —
     grid + "Run Check" button.
   - Registry: "Inconsistency Check" batch se nikaalo, wired karo.
3. **Menu Item Copy** (frmMenuItemCopy):
   - Core: naya `core/menu_item_copy.py` — `copy_items(from_rest, to_rest,
     codes, user)` INSERT...SELECT (VB6 exact 24 cols, live schema verified).
     Guard: to_rest Depart me OutletYN='Y' + to_rest != from_rest.
   - UI: `ui/pos_masters_ui.py` me dialog (from/to outlet combo + item grid
     checkboxes + Copy button), `open_menu_item_copy(parent, user)`.
   - Registry: "Menu Item Copy" batch se nikaalo, wired karo.
4. Har form: `python -m py_compile` + offscreen smoke (QApplication + open
   form + core helper) + unit test (tests/unit/) + registry wired-check
   (_verify_reg.py style, qualname check ke saath).

### Task B — BUG-003/004 counters (UPDLOCK/HOLDLOCK)
- `next_folio` pattern copy karke PayCharge serial + Stock serial pe lagao.
- Counter code dhoondo: MAX(FolioNo)/LASTVOU/Voucher_Prefix usage core/ me.
- Unit test: lock-hint presence ya concurrent simulation.

### Task C — BUG-008 regression test
- `tests/unit/test_auth_backdoor.py`: check_login kisi bhi user se
  "India12" → must be False. (SA real pass KANPUR hai.)

### Task D — Verify + Push
1. `python -m pytest tests -q` → all green (661 + naye)
2. `python tools/vb6_py_file_parity.py` regenerate
3. Commit: "Port Reverse Room Merge, Inconsistency Check, Menu Item Copy +
   BUG-003/004 counter locks + BUG-008 regression test"
4. Push: `git push origin codex/main-setup-parity`
   (remote = https://github.com/analysishms-png/png.git)

## 3. KNOWN ISSUES

- Is session ke END me terminal environment corrupted tha (scrambled tool
  outputs, mixed command results, fabricated file contents — verify kiya
  `git log` inconsistency se). Agar naya session bhi weird output de to:
  simple command se verify karo, file reads dobara karo, aur scrambled
  output pe KABHI code commit mat karo.
- `SESSION_HANDOFF.md`, `_qa/ev_gravy.txt`, `_qa/probe_itemmast_schema.py`,
  `_qa/probe_coming_soon_tables.py` — handoff/evidence files; commit ke
  baad handoff rakh sakte ho, probes _qa me rehne do.
- `HMS_py/_screen.png` deleted in git status (user ne locally delete kiya) —
  unrelated, ignore.

## 4. KEY FILE MAP

- Shell registry: `ui/shell.py` `_form_registry()` (line 644)
- Coming-soon stubs: same file `_coming_soon()` (~line 980) +
  batch-sets (~line 1445, ~line 1525)
- Merge/Reverse evidence: `core/fo_ops.py` merge_charge (~line 271)
- VB6 decompiled source: `../FODER/*.frm` (project ke bahar, read-only)
- Parity report: `VB6_VS_PYTHON_FILE_BY_FILE.txt` (tool regenerate karta hai)
- Bug register: `HMS_REVERSE_ENGINEERING/21_Testing/BUG_REGISTER.md`
- Test cases: `HMS_REVERSE_ENGINEERING/21_Testing/TEST_CASES.md`
- DB: MOONData2627 (SQL Server, Native Client 10), 277 tables
- Login: SA/KANPUR verified working
