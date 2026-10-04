# Plan: fdPostChg / fdPostChrg Room-Charge Posting Parity

Status: READY FOR IMPLEMENTATION
Author: IT-Leader (evidence pass complete)
Mode: ponytail/full — shortest evidence-backed plan, no speculative work

---

## 0. Assumptions (user-overridable)

1. **`fdPostChg.frm` / `.frx` do not exist** anywhere in the searched corpus, sibling package, `C:\Drive`, or Git history. All six `fdPostChrg.frm` copies (`.frx` identical: 1,090 bytes, prefix `147E0ABB95`) stand in for it. → Assumption: `fdPostChrg` IS the source form.
2. **Baseline = `root.txt`** (normalized `fdPostChrg.frm`, SHA prefix `D28EB194B6`, 701 lines). Evidence-resolved: diffs vs `imp609.txt`/`foderFD.txt` are decompiler label prefixes and SQL whitespace only; predicates semantically identical. → Assumption: `root.txt` is authoritative VB6 behavior.
3. **Room-charge-only scope.** Payment/receipt entry, re-settlement, revised-checkout are separate workstreams (their UI lives in `posting_forms_ui.py` but is NOT covered here).
4. **`Hotlib.bas` root copy is authoritative** — `C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\Hotlib.bas` (line anchors verified: 114 `Proc_96_4_1C1E774`, 786 INSERT, 9042 `Proc_96_23_1C36494`, 9752 `Proc_96_24_174D24C`). The two alternate copies hold DIFFERENT symbols (`Proc_96_4_1C1BDCC`, `Proc_96_23_1C33AEC`) — do not read them.

Evidence chain: **VB6 source → HMS.exe → Python → SQL Server → Tests → Regression.** Preserved VB6 behavior is authoritative throughout.

---

## 1. Scope

**In scope**
- Room-charge posting engine parity: `post_room_charges_for_date` / `post_room_charge` / `get_inhouse_rooms` (`HMS_py\core\nightaudit.py`, `folio.py`).
- `PostChrgWindow` in `HMS_py\ui\posting_forms_ui.py` (posted/already-posted outcomes, prerequisite notices).
- PayCharge column contract, RODISC discount handling, tax rows (TaxStru-driven), voucher serial (`Voucher_Prefix`), `NightAuditLog`.
- Tests: `tests\database\test_fdpostchg_posting.py` + new parity tests.

**Out of scope**
- Payment/receipt entry (`PaymentChargeWindow`), re-settlement, revised-checkout, POS/banquet/fa/inventory paths.
- Report/printing changes (none added), structural schema changes (none), `BUG-MS-03` (separate bug).

---

## 2. Authoritative VB6 behavior (contract)

Flow: `fdPostChrg.frm` eligibility SELECT → duplicate exclusion → warnings → delegate to `Hotlib.bas` procs → one transaction.

### 2.1 Eligibility (`foderFD.txt` 242/270/293/326/354)
- Join: `ROOMOCC LEFT JOIN RoomCat ... LEFT JOIN RevMast ... LEFT JOIN GuestFolio ...`
- Selects `RevMast.ACCode AS RoomChargeAc, RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company AS Comp_Code, GUESTFOLIO.RODISC, GUESTFOLIO.[COMP], GUESTFOLIO.Mfoliono, GUESTFOLIO.MfolionoDocid`
- **Duplicate exclusion is room-level:** `ROOMOCC.DOCID NOT IN (SELECT DISTINCT FOLIONODOCID FROM PAYCHARGE WHERE VTYPE='RC' AND VDATE=...)` (lines 245, 261, 318, 344, 373)
- Charge INSERT is NOT in the form: `unk_42F80C.Execute var_A8` (root.txt 386) is a SELECT; posting delegates to `Proc_96_4_1C1E774(...)` (root 405/412), `Proc_96_23_1C36494(...)` (464, plan package), `Proc_96_24_174D24C(...)` (482, extra bed), checkout path `Proc_96_12_F0A130` (397).

### 2.2 `Proc_96_4_1C1E774` — base room charge (`Hotlib.bas` 114–835)
1. **Date/time guard (517–527):** biz date < today → `Vtime="23:59"`; = today → `Vtime=Time`; else `MsgBox "Check Your SystemDate"` + `Exit Sub`. `V_TYPE="RC"` (528). DocId built 528–538 (site + `RC` + prefix + vno).
2. **Master-data abort gates (whole posting aborts with MsgBox + `Exit Sub`):**
   - `RoomChargeAc` null/empty → `"Define Revenue Charge in All Room Category Master"` (546–554)
   - RODISC separate + disc>0 + `{Site}DISC` RevMast AcCode missing → `"Room Disc. A/c Not Defined in Charge Master"` (617–627)
   - `DiplomatYN` from GuestProf per room (541–542)
3. **Base row (555–611):** `DocId` (556), `Vdate=arg_C` (557), `CR=0` (598), **`BillAmount = Val(DR)`** (599), `TaxCondAmt=0` (600), `TaxPer=0` (601), `Tip=0` (602), `FolioNo` via `Proc_6_39_E7D3A0` (603–604), `Particulars = DR & RoomNo` (605), `FolioNoDocid` (608–609), `V_SNO=0` (641 pattern).
4. **RODISC (578–587, 613–672):**
   - `PostRoomDiscSeparately <> "Yes"` AND `RoDisc > 0` → **discount NETTED into DR**: `DR = RoomRate - (RoomRate * RoDisc / 100)` (578–582); else `DR = RoomRate` (587)
   - `PostRoomDiscSeparately = "Yes"` AND `RoDisc > 0` → separate **CR row** (633–672): `PayCode` from `{Site}DISC` RevMast lookup, `CR = Format((RoomRate * RoDisc)/100,"0.00")` (657), `DR=0`, `BillAmount=0`, `RoomType="RO"`, `V_SNO=0`
5. **Tax gate (675–677):** `DiplomatYN <> "Yes"` AND `RoomTaxStru <> ""` (with `RRServiceChrg <> "No"` variants). Tax query (699–703): `Case When TaxMast.Sundry='SCH' Then 0 Else TaxStru.Rate End`.
6. **Tax row (711–763):** only if tax RS not EOF. `PayCode = TaxCode` (727 — tax row uses TaxCode, NOT room code), `RoomTaxAc` (732), `TaxStru` (733), `RateCode` (734–735), DR computed by `Proc_96_5_1367A44(...)` (736), `CR=0`, `Tip=0`, `Particulars = RoomNo & TaxName & " For Room No: "` (741), `FolioNoDocid` (743–744), `V_SNO=0` (720).
   **Zero-tax policy (745–758):** `DR ≠ 0` → Update; `DR = 0` → `PostNilLT="Yes"` → post nil row; else `CancelUpdate` (drop).
7. **Tax dispatch `Proc_96_5_1367A44` (837–910):** `Nature` ∈ {`On Base Amt`, `On Running Total`}; `CondApp` ∈ {`Rack Rate`, `Room Tariff`, `Declared Tariff` → `IIf(RackRate >= RoomTarrif, RackRate, RoomTarrif)`, else default} → `Proc_96_6_13400A0`.
8. **Transaction (770–831):** rows built first → `BeginTrans` (770) → gate `Dr >= 0` (776) → INSERT loop (786–798; column list = contract; string fragments 788/795/797 + final `Execute` 798 commented by decompiler = unrecoverable long literal, this is the real persistence path) → **`Update Voucher_Prefix Set Start_Srl_No=... Where V_Type='RC' And Date_From=...` (803–815)** → `CommitTrans` (817); `RollbackTrans` on error (829–831).
9. **PayCharge column contract (786):** `DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,CompCode,Comments,PayCode,BillAmount,AmtCr,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,RelatedFolioNo,RelatedFolioNoDocId,FolioNo,U_Name,U_EntDt,U_AE,TaxCondAmt,OnAmt,TaxPer,RestCode,MarkEntry,FolioNoDocid,LogSite_Code,PlanCode`
10. `AddNew`/`Update` recordset path vs string `Execute` path cannot be distinguished from decompiled source → **runtime SQL-trace verification (HMS.exe) decides** (QA-001).

### 2.3 Downstream procs
- `Proc_96_23_1C36494` (9042–9751): plan-package charge — date, vno, FolioNo, PlanCode, PLan_Package.
- `Proc_96_24_174D24C` (9752–10034): extra-bed charge — date, vno, vno2, ExtraBed.
- Payment-path inserts at 1143–1356 (`PayType`/`AmtCr`/`AmtDr`) — **out of scope**.

---

## 3. Parity gaps (VB6 vs Python) — the work

| # | Gap | VB6 | Python (today) | Sev | Task |
|---|-----|-----|----------------|-----|------|
| G1 | Billed-folio guard | form pre-flight via `billed_folios_for_date` (Proc_62_23) | engine `post_room_charges_for_date` never calls it; direct callers (`run_night_audit` L776) can post into settled folios | HIGH | PY-001 |
| G2 | Duplicate exclusion key | `ROOMOCC.DOCID NOT IN (... FOLIONODOCID ...)` | `FolioNo = room["folio"]` — diverges on `Mfoliono`/master-folio | HIGH | PY-002 |
| G3 | Discount handling | netted DR, or separate `{Site}DISC` CR row, abort if AcCode missing | none — no RODISC at all | HIGH | PY-003 |
| G4 | Tax derivation | dynamic `RoomCat → RevMast → TaxStru` (Nature/CondApp/Rate, SCH→0, PayCode=TaxCode, RoomTaxAc) | hardcoded `KKCGSS`/`KKSGSS` + flat 2.5% | HIGH | PY-004 |
| G5 | Zero-tax policy | `DR=0` → drop unless `PostNilLT="Yes"` | always inserts CGST/SGST | MED | PY-005 |
| G6 | Master-data aborts | RoomChargeAc null / DISC acct missing → MsgBox + `Exit Sub` (whole posting) | proceeds silently | HIGH | PY-006 |
| G7 | Tax gates | `DiplomatYN` / `RoomTaxStru` / `RRServiceChrg` | absent | MED | PY-007 |
| G8 | Eligibility | `RO.Type IS NULL` present in `uncharged_rooms` | `get_inhouse_rooms` omits it | MED | PY-008 |
| G9 | Concurrency | `Voucher_Prefix` bump inside same tx; serial lock | duplicate RC check no UPDLOCK; SNo via precomputed `MAX(SNo)` map not `next_serial`; `_get_voucher_prefix` unlocked | MED | PY-009 |
| G10 | Missing columns | `TipAmt, RelatedFolioNo/DocId, RestCode, MarkEntry, TaxCondAmt, OnAmt, TaxPer, RateCode, Particulars, RoomChargeAc, RoomTaxAc, TaxStru, TaxCondAmt` | not populated | MED | PY-010 |
| G11 | Vtime / date guard | `23:59` vs `Time`, `Check Your SystemDate` abort | absent | LOW | PY-011 |

Confirmed equal (no work): one `KKRMCH` row per logical charge; `posted=0` on rerun (test-proven); `Comp='Y'` skip; `FolioNoDocid` written; `commit=False` nested-tx + full rollback; `UPDLOCK/HOLDLOCK` in `db.next_vno`; `NightAuditLog` audit fields; `RoomChrgPostingType='While Printing Bill'` no-op; caption `"Posting Room Charges Completed"`.

---

## 4. Pseudo-code (target `post_room_charges_for_date`)

```python
def post_room_charges_for_date(biz, vprefix, user, cn=None, commit=True):
    own = cn is None
    cn = cn or connect()
    try:
        if billed_folios_for_date(biz, cn):          # G1: engine-level hard stop
            raise RuntimeError("billed folio present — posting blocked")
        rooms = get_inhouse_rooms(biz, cn)           # G8: + RO.Type IS NULL
        excl  = {r["docid"] for r in charge_docids(biz, cn)}   # G2: FOLIONODOCID set
        vno   = db.next_vno("RC", vprefix, SITE, cn)           # UPDLOCK/HOLDLOCK
        for room in rooms:
            if room["docid"] in excl:  continue                 # already-posted
            if room["comp"] == "Y":    continue
            if not room["charge_ac"]:  raise abort("Define Revenue Charge ...")  # G6
            post_separately = cfg("PostRoomDiscSeparately") == "Yes"
            dr = rate if (post_separately or disc <= 0) else rate - rate*disc/100  # G3
            ins_rc(PayCode=room["pay_code"], BillAmount=dr, TaxCondAmt=0,
                   TaxPer=0, TipAmt=0, Particulars=f"{dr}{room_no}", ...)          # G10
            if post_separately and disc > 0:
                disc_ac = revmast(f"{SITE}DISC") or raise abort("Room Disc. A/c ...")  # G6
                ins_rc(PayCode=disc_ac.paycode, DR=0, CR=round(rate*disc/100, 2),
                       BillAmount=0, RoomType="RO", ...)
            for tax in taxstru_rows(room):                              # G4
                if room["diplomat"] == "Yes" or not tax.enabled: continue  # G7
                amt = tax_calc(tax.nature, tax.condapp, rate)           # Proc_96_5 parity
                if amt != 0 or post_nil_lt():
                    ins_rc(PayCode=tax.code, RoomTaxAc=tax.ac, RateCode=...,
                           BillAmount=amt, Particulars=f"{room_no}{tax.name}...")
                # else CancelUpdate: drop zero-tax row                    # G5
            log(docid, "P", user, SITE)
            bump_voucher_prefix(vprefix, biz, cn)    # G9: same tx (VB6 803–815)
        if commit: cn.commit()
    except Exception:
        cn.rollback(); raise                                             # zero partial posting
    finally:
        if own: cn.close()
```

---

## 5. Task decomposition

| ID | Agent / Role | Deliverable | Depends on |
|----|--------------|-------------|------------|
| VB6-001 | VB6 Reverse Engineer | Attestation of assumption #1/#2 (or corrected anchors) | — |
| QA-001 | HMS.exe Runtime/UI Tester | SQL trace of HMS.exe posting run: confirms string-`Execute` vs recordset write, real `DocId` format, MsgBox gates | — |
| DB-001 | SQL Server Expert | Scripts: `FOLIONODOCID` exclusion set query, TaxStru join, `{Site}DISC` lookup, `Voucher_Prefix` bump in-tx, UPDLOCK duplicate check | — |
| PY-001..011 | Python Developer | Fixes per gap table, `nightaudit.py` + `folio.py` + `posting_forms_ui.py` prerequisite notices | DB-001 |
| TEST-001 | QA Engineer | New tests §6 (each fails when its fix is reverted) | PY-* |
| RV-001 | Code Reviewer | Diff review vs §2 contract | PY-*, TEST-001 |
| SEC-001 | Security Reviewer | SQL string-concat sites in `Hotlib.bas` path → parameterization in Python; voucher serial integrity | PY-* |
| REG-001 | Regression Engineer | Full suite green; record output per migration-relevant commit | TEST-001 |
| LEADER | IT-Leader | Integration: contract alignment (VB6 columns ↔ Python inserts ↔ tests) | all |

No parallel work without shared contract: DB-001 results feed PY-* and TEST-001 alike.

---

## 6. Test matrix (every fix must have a check that fails when reverted)

| Test | Asserts | Fails today? |
|------|---------|--------------|
| T1 engine billed guard | monkeypatch `billed_folios_for_date` → non-empty ⇒ zero RC inserts + error | YES (G1) |
| T2 exclusion by FOLIONODOCID | seed `Mfoliono` ≠ `FolioNo` ⇒ no duplicate RC | YES (G2) |
| T3 discount | netted DR when `PostRoomDiscSeparately<>"Yes"`; separate CR row when `="Yes"`; missing DISC AcCode ⇒ abort + zero inserts | YES (G3/G6) |
| T4 tax derivation | custom TaxStru rate/nature ⇒ amount ≠ 2.5% flat; `SCH` ⇒ 0; zero-tax dropped unless `PostNilLT` | YES (G4/G5) |
| T5 RoomChargeAc null | abort + zero inserts (parity w/ MsgBox+Exit) | YES (G6) |
| T6 eligibility | `RO.Type IS NULL` excluded from `get_inhouse_rooms` | YES (G8) |
| T7 keep-green | existing rollback test L151–189, guard L225–248, Comp L252 | — |
| T8 acceptance | 10-room amount agreement; 3 runs ⇒ one logical charge/room; 100 rooms < 30 s; explicit posted/already-posted; first-attempt clerk usability `SC-004`–`SC-006` | — |

Missing tables ⇒ prerequisite notice (`BLOCKED-TBL`), never simulated success. Regenerated ledger comparisons: no hand-edits, generation date ≥ source report, untested fixes marked `UNVERIFIED`.

---

## 7. Key files

- **Read (evidence):** `Hotlib.bas` (root copy — §2.2 anchors), `fdPostChrg.frm` root/imp609/foderFD + diffs, `HMS_py\core\nightaudit.py` (281/229/262/134/444/711), `core\folio.py` (183), `core\db.py` (next_vno/next_serial), `ui\posting_forms_ui.py` (522 L), `ui\shell.py` (`_form_registry`, `_reg_ci`), `tests\database\test_fdpostchg_posting.py` (262 L).
- **Modify:** `core\nightaudit.py`, `core\folio.py`, `ui\posting_forms_ui.py` (notices only), `tests\database\test_fdpostchg_posting.py` (+ new `test_fdpostchg_parity.py`).
- **Output:** this file only, for this phase.
- **Do not touch:** `stubs_backup_20261003/`, ledger baselines, `BUG-MS-*` safeguards (`self._update_browse()`, shell imports, `dlg.exec()`, `v.exec()`, `ItemMast.ActiveYN`).

---

## 8. Risks & mitigation

| Risk | Mitigation |
|------|------------|
| Wrong source form (assumption #1) | VB6-001 attestation gate before any PY-* merge; label all findings `ASSUMED` until then |
| `Execute` vs recordset persistence ambiguity | QA-001 SQL trace — blocks G10 final column list sign-off only, not the rest |
| Concurrent double-post race (G9) | UPDLOCK on duplicate check + in-tx `Voucher_Prefix` bump; test T7-extension with two connections |
| Abort-gate parity breaks callers expecting Python to continue | Abort raises typed error; UI maps to MsgBox-equivalent notice; `run_night_audit` hard-stops with existing `"Please Charge Posting For Rooms"` pattern |
| Ledger regeneration drift | compare vs committed baselines; mark untested `UNVERIFIED` |
| Scope creep into payment/settlement | out-of-scope §1; reviewer rejects diffs outside listed files |

---

## 9. Role analysis

| Role | Responsibility here |
|------|---------------------|
| IT/Project Leader | Contract, sequencing, integration report, this plan |
| VB6 Reverse Engineer | Anchor verification, assumption attestation, decompiler-artifact interpretation (commented string fragments) |
| Python Developer | PY-001..011 implementation, no behavior beyond §2 |
| SQL Server Expert | Locking, exclusion-set query, TaxStru joins, voucher serial integrity |
| HMS.exe Runtime/UI Tester | QA-001 trace, DocId format, MsgBox gates, acceptance `SC-004`–`SC-006` |
| Report/Printing Expert | Confirm no report change; `Particulars`/`TaxName` render parity |
| QA Engineer | Test matrix §6, fails-on-revert property |
| Security Reviewer | Parameterized SQL, no leaked internals in errors, voucher serial tampering |
| Regression Engineer | Full-suite output recorded per commit |
| Code Reviewer | Diff vs §2 contract, scope containment |

---

## 10. Status board (UI / modules)

| Area | Status |
|------|--------|
| Login/company/business date/Main Setup | VERIFIED |
| Reservation (`RrRoomReservation`, `fdCheckIn` lookup) | PARTIAL |
| `resBanq` | MISSING |
| Front-office flow (reservation → check-in → posting → checkout) | PARTIAL — evidence stops at posting parity |
| `fdPostChrg` posting contract (eligibility/SQL/dedup/tax/discount/tx) | VERIFIED from source; persistence path PARTIAL (QA-001) |
| Python posting engine vs VB6 | PARTIAL — G1..G11 open |
| `core/posting.py` expected module | MISSING (functionality lives in `nightaudit.py` — acceptable, document in ledger) |
| `BUG-MS-03` (`Phone` vs `PhoneNo`/`MobileNo`, swallowed SQL errors) | MISSING (separate bug, not touched) |
| `FORM_MIGRATION_LEDGER.md` `VERIFIED` claims | PARTIAL — downgraded by G1..G11 until fixed |

---

## 11. Sessions (truthful)

- `CODEX_SESSION`: **pending / not captured** — Codex wrapper tooling absent in this environment.
- `GEMINI_SESSION`: **pending / not captured** — Gemini wrapper tooling absent.

---

## 12. Handoff

## HANDOFF: IT-Leader -> Python Developer (@python), with @database (DB-001) first

**Context**
- Plan phase complete; evidence pass finished after resolving the last open item (RODISC netting + `BillAmount`/INSERT path in `Hotlib.bas` 515–835). Sole deliverable of this phase is this file.
- Baseline = `root.txt` + root `Hotlib.bas`; scope = room-charge only.

**Findings**
- 11 parity gaps catalogued (G1–G11); top 6 are HIGH: engine billed-guard bypass, FOLIONODOCID exclusion mismatch, missing RODISC, hardcoded tax, silent master-data continuation, missing tax gates.
- VB6 posts discount as netted DR or separate `{Site}DISC` CR row and ABORTS whole posting on missing `RoomChargeAc` / DISC AcCode — Python currently continues silently.
- Transaction order: rows built → BeginTrans → INSERT → in-tx `Voucher_Prefix` bump → Commit; rollback must stay all-or-nothing (zero partial posting).
- Persistence path (string `Execute` vs recordset) ambiguous in decompiler output — QA-001 SQL trace decides; column list at `Hotlib.bas:786` is the contract either way.

**Files Modified**
- None (this phase). Plan written to: `HMS_py\.claude\plan\fdpostchg-room-posting-parity.md` (parent dir created).

**Open Questions**
1. ~~Assumption #1 (`fdPostChrg` ≡ `fdPostChg`)~~ — RESOLVED by VB6-001 attestation (see §13).
2. Python `_make_rc_docid` uses `"D"` prefix vs VB6 DocId build (decompiler-noise at `Hotlib.bas` 528–538) — confirm real format from QA-001 trace.
3. `PostNilLT` config source (VB6 reads it from where?) — resolve during PY-005.
4. `CODEX_SESSION` / `GEMINI_SESSION` still uncaptured.

**Recommendations**
1. Execute DB-001 → PY-001..004 (HIGH gaps) → TEST-001 (T1–T4) as the first vertical slice; they share one contract.
2. Run QA-001 in parallel with DB-001 — it gates only G10 column sign-off and open question #2.
3. Treat each gap fix as one commit with its fails-on-revert test recorded in regression output (REG-001).
4. Do not start payment/re-settlement work until this slice passes §6 T8 acceptance.

---

## 13. VB6-001 Attestation (2026-10-04) — PASSED

**Assumption #1 CONFIRMED.** Recursive search of `C:\Users\LENOVO\Desktop\serialkey` → zero `fdPostChg.frm`/`.frx` anywhere (only this plan's `.md` matches the name). Both `Project.vbp` copies register `Form=fdPostChrg.frm` only (`HMS2526\...\PROJECT.vbp` ×2) — the form compiled into HMS.exe is `fdPostChrg`; "fdPostChg" is Python-side shorthand.

**Assumption #2 CONFIRMED.** `root.txt` SHA256 = `D28EB194B6DEC0EC7059EC10562A09B09B31D2EA29BF1548AAAFB95C901C9CD0` (prefix matches); 727 total lines / **701 non-blank** (plan's "701" = non-blank count, not raw count). `imp609.txt` = 728 lines, `foderFD.txt` = 726 lines.

**Corrections to §0 wording:**
- `.frx` copies: **8, not six** — all 1,090 B, all SHA256 prefix `147E0ABB95` (identity claim substance holds).
- Three `.frm` variants (all 24 procedures declared, semantically identical):
  - `FD7013831C` ×5 — 725 L, 36,143 B, full designer (`Begin TextBox/CommandButton/Label` blocks) — dominant original.
  - `609C2EA68C` ×2 — 727 L, 36,205 B (source of `imp609.txt`).
  - `63DCCDE890` ×1 — root copy (`PROJECT_REPAIR - Copy\fdPostChrg.frm`), 727 L, 28,340 B, logic-only (designer blocks + `loc_*` decompiler labels stripped) — source of `root.txt`. Size gap = declarative blocks, not code.
  - Only proc-level diff across variants: `Proc_62_23_10A996C` (root) vs `Proc_62_23_10A7834` (FODER) — same `Proc_62_23` billed-folio guard, decompiler address suffix only.

**Gate:** PY-* merge gate lifted. Open question §12.1 closed. Remaining gates: QA-001 (column list + DocId format, §12.2), DB-001 (feeds PY-*).
