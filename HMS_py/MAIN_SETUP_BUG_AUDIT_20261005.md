# Main Setup Bug Audit — BUG-001 (Independent VB6 ↔ Python)

- **Date:** 2026-10-05
- **Reviewer:** @reviewer (read-only)
- **Scope:** Part 1 — classify 5 failing tests; Part 2 — independent VB6 Main Setup ↔ Python parity/security audit
- **Sources:** `FODER/MDIForm1.frm` (+ `FODER/*.frm`, `FODER/HMS.bas`), `HMS_py/ui/shell.py`, `HMS_py/core/menu_help.py`, `HMS_py/ui/user_permissions_ui.py`, `HMS_py/MAIN_SETUP_BUG_REGISTER.md` (cross-check only, not edited)
- **Reads:** no code, test, or doc was modified by this audit. Only this file was written (plus throwaway probes in `%TEMP%\opencode\`).

---

## 1. Part 1 — Failing test classification (5/5 live-reproduced)

Command: `& .\.venv\Scripts\python.exe -m pytest HMS_py/tests/database/test_account_posting.py HMS_py/tests/unit/test_manual_pipeline.py -q`
→ **`5 failed, 16 passed in 2.23s`**

| # | Test | Class | Evidence (both sides) |
|---|------|-------|-----------------------|
| 1 | `tests/database/test_account_posting.py::test_account_posting_daily_range` | **FLAKY-DB** | Error `First Settle it then Process this operation / Re-Check Room No : 303, 304`. G1 pre-pay guard in `HMS_py/core/nightaudit.py:540-543` via `billed_folios_for_date` (`nightaudit.py:328`); VB6 counterpart `FODER/HMS.bas:157838`. Test uses `FUTURE = 2031-03-10` (`test_account_posting.py:12`, query at `:15`) but the **committed** fixture rows are `rooms 303/304` with `ChkInDate=2026-05-31`, `ChkOutDate=NULL`, `PayCharge.Bill_No='330'` → guard legitimately blocks. Data-state dependency, not a product defect. |
| 2 | `tests/database/test_account_posting.py::test_account_posting_summary_mode` | **FLAKY-DB** | Same fixture rows, same guard, same message. |
| 3 | `tests/unit/test_manual_pipeline.py::test_validate_image_rejects_blank_accepts_noise` | **UNRELATED** | `tests/unit/test_manual_pipeline.py:150` → `ModuleNotFoundError: No module named 'PIL'`. `Pillow==10.4.0` declared in `HMS_py/requirements.txt`, **not installed** in `.venv` (venv has `pyodbc 5.1.0`, `PyQt6 6.7.1`). |
| 4 | `tests/unit/test_manual_pipeline.py::test_validate_image_rejects_tiny` | **UNRELATED** | `tests/unit/test_manual_pipeline.py:168` → `HMS_py/tools/manual_pipeline/capture_module.py:36` `from PIL import Image`. |
| 5 | `tests/unit/test_manual_pipeline.py::test_capture_leaf_rescues_hidden_returned_widget` | **UNRELATED** | `tests/unit/test_manual_pipeline.py:193` → same missing `PIL`. |

**Verdict:** 0 product bugs. 2 × FLAKY-DB (fixture/guard interaction), 3 × UNRELATED (missing optional dev dep). Recommended remediation is out of audit scope: refresh DB fixture rows / run setup teardown for the 2 DB tests, and `pip install -r HMS_py/requirements.txt` (or mark manual-pipeline tests `skipif importlib.util.find_spec("PIL") is None`) for the 3 PIL tests.

**Regression gate (required command):**
`& .\.venv\Scripts\python.exe -m pytest HMS_py/tests/unit -k "mainsetup or main_setup or general_setup" -q`
→ **`54 passed, 881 deselected in 4.23s`** ✅

---

## 2. Part 2 — Bug list (severity-sorted, dual-side evidence)

### P1 — Wrong screen opened (2 findings)

**P1-A · `Item List` opens the Item Category screen (VB6 opens `FrmItemMast`)**
- Python: `HMS_py/ui/shell.py:2089-2091` → `"Item List": pm.open_itemcat(...)` (`HMS_py/ui/pos_masters_ui.py:183 def open_itemcat`). Identical opener is used by `"Menu Category"` at `shell.py:2092-2094` → one dialog serves two distinct masters.
- VB6: menu caption `MDIForm1.frm:636` (`Begin Menu POSMas, Index = 4`) → dispatch `POSMas_Click` `MDIForm1.frm:9926-9927` `global_52 = New FrmItemMast`.
- Impact: barcode/item master (`FrmItemMast.frm` writes `Item` + `ItemMast`) unreachable from Main Setup; Item Category appears twice.
- No register entry for `Item List` (grep = 0 hits) → **NEW**.

**P1-B · Banquet masters shadowed by POS keys — 3 wrong screens**
Python registry keys are caption-keyed, so the Banquet copies of three captions reuse the POS opener while VB6 dispatches to the Hall forms. The Hall forms **exist** in Python but are not wired at these captions.

| Caption | Python key (wrong target) | VB6 POS / other target | VB6 Banquet target (unwired) | Python Hall implementation |
|---|---|---|---|---|
| `Menu Category` | `shell.py:2092` → `pm.open_itemcat` | `MDIForm1.frm:9954-9955` `New FrmItemCatMast` (POSMas 6) | `MDIForm1.frm:5455` `New FrmHallItemCatMast` (HallM 3) | `HMS_py/ui/hall_item_cat_mast_ui.py:573 open_hall_item_cat_mast` |
| `Item Group` | `shell.py:2151` → `p2.open_item_group` | `MDIForm1.frm:5947` `New FrmItemGroupMastRaw` (CCenterMas 2) | `MDIForm1.frm:5464` `New HallItemGroupMast` (HallM 4) | `HMS_py/ui/hall_item_group_mast_ui.py:294 open_hall_item_group_mast` |
| `Menu Item` | `shell.py:2250` → `p2.open_item` | `MDIForm1.frm:9962-9963` `New RsMenuItemEntry` (POSMas 7) | `MDIForm1.frm:5473` `New HallMenuItemEntry` (HallM 5) | `HMS_py/ui/hall_menu_item_entry_ui.py:353 open_hall_menu_item_entry` |

Same Hall targets also serve `HallEnt(5)` (`MDIForm1.frm:2059`) and `OdcEnt1(5)` (`MDIForm1.frm:2063`).
- Benign duplicates (no action): `Company Master` Mas(17)=UTL(26), `Department` CCenterMas(1)=UTL(27), `Ledger Accounts` fame(1)=UTL(28) — identical VB6 form on both paths.
- Register grep for `Menu Category` / Banquet shadowing = 0 hits → **NEW**.

### P2 — Permissions & save/load fidelity (11 findings)

**P2-A · `User Permissions (Advanced)` — VB6-hidden, Python-exposed, unguarded**
- VB6: `FODER/MDIForm1.frm:1056-1059` `Begin Menu UTL / Index = 31 / Visible = 0   'False'` → item exists but is deliberately hidden (VB6 hides 29 self-hidden + 5 parent-hidden leaves).
- Python: tree leaf `HMS_py/ui/shell.py:1106` + registry key `shell.py:2016-2020` → `perm_ui.open_user_permissions` (`HMS_py/ui/user_permissions_ui.py:542`, default `user="SA"`) — **no `_rbac_guard`**, unlike `"User Master"` at `shell.py:2007` which wraps `_rbac_guard("u", "User Master")` (defined `shell.py:1172-1190`).
- No `menuHelp` row for this caption → `rights()` defaults `'AEDP'` (`HMS_py/core/menu_help.py:293-294`) and `can_open()` returns True (`menu_help.py:339-342`, asserted as intended by `tests/unit/test_menu_help.py:42`).
- Register: MS-018 (FIXED) documents wiring the Permissions UI; MS-037 (FIXED) documents fail-open semantics and `_rbac_guard` consumption — **neither covers the VB6 `Visible = 0` delta or the missing guard on this opener** → **NEW**.

**P2-B · Main Setup dialog never applies `mh.can_open`**
- `HMS_py/ui/shell.py:1137-1140`: `for item in items: opener = registry.get(item); if opener is None: continue` — registry lookup only. No `menuHelp` flag/rights filter on the dialog surface.
- The other two surfaces do filter: menubar `menu_help.py:602` (`return can_open(username, leaf.get("name"))`) and `shell.py:3424` (`if mh.can_open(user, m["name"])`).
- Current blast radius measured for user `SA`: **0 of 75 dialog leaves carry Flag `V`** (VB6-hidden flag) → no live leak today; the divergence is latent (any future `Flag='V'` row stays visible in the dialog but hidden in the menubar). Register MS-019 (FIXED) scoped filtering to *menubar/sidebar* only → residual gap, **NEW**.

**P2-C..P2-M · 12-master save/load fidelity (VB6 form SQL vs Python writer SQL)**
Masters checked: Tax, Payment Type, Parameter (Enviro), Charge, Room, Room Category, Plan, Company, Outlet, User, Item List, Menu Item.

| # | Master → table | VB6 | Python | Gap |
|---|---|---|---|---|
| C | Item List → **`Item`** | `FrmItemMast.frm` INSERT/UPDATE | **0 files write `item`** (case/quote-insensitive scan over `HMS_py/*.py`) | whole table unwritten (barcode, commoditycode, unit…); Python writes `ItemMast` only |
| D | User Master → **`User2`** | `UserMast.frm` INSERT `(comp_code, param_str, user_name)` | **0 files** | per-user company/permission params never persisted |
| E | Payment Type → **`CreditCardhistory`** | `FrmPayTypeMast.frm` (13 cols: comm, limit…) | **0 files** | credit-card comm/limit never persisted |
| F | Outlet → **`OutletBarCodePartDetail`**, **`SchemeOutletDiscount`** | `OutLetMast.frm` | **0 files** | barcode partition + scheme outlet discount lost |
| G | Outlet → `Depart` | INSERT 60 / UPDATE 56 | `depart.py` INSERT 17 / UPDATE 14 | **45 columns** never written (outlettitle, header1-4, token-printing, barcode-partition fields…) |
| H | Room Category → `RoomCat` | ins/upd full | `room_cat.py` | insert missing 8 (`cancelchg, inclcount, mapcode, minadv, multper, norooms, retchg, revcode`), update missing 10; `rateList` insert 4/16 |
| I | Menu Item → `ItemMast` | label block | `item.py` | insert missing 10 / update missing 13 → `labelname, labelqty, labelremark1-5, mrp, rateinctax, commoditycode` (label printing + KOT pricing fields) |
| J | Payment Type → `revmast` + `DepartPay` | `bankcommper` ins, `bankcommac`/`paytype` upd | `paymenttype.py` | 3 cols missing; `DepartPay.u_entdt` missing |
| K | Charge Master → `revmast` | INSERT 24 / UPDATE 18 | no charge-specific writer (`depart.py`/`paymenttype.py`/`taxmaster.py` only) | insert missing 8 (`appmode, cost, deskcode, flagamr, flagtype, hsncode, salerate, taxinc`), update missing 6 |
| L | Tax Master → `revmast` | — | `taxmaster.py` | `unregisteredac` (ins), `payableac` (upd) missing |
| M | Plan Master → `plan1`/`planmast` | — | `plan_definition.py` | `percentapp`, `site_code`, plan1 `adult/taxstru/u_name` missing |
| N | Company Master | — | `comp_mast*` | `comp_plandet.planamt`, `roomdiscount.disctype`, `comp_inclusive.site_code`, `ledger.site_code` missing |
| O | Parameter/Enviro → `enviro` | UPDATE 158 cols | 21 UPDATE statements, 121 cols matched | **84 VB6-updated columns never written by Python** — register **MS-013** documents only a ~21-col Tier-2 subset → actual gap ≈ 4× documented |

Fully covered: `UserMAST` insert/update + `userpermission` (guarded by MS-017/MS-018), `UnitMast`, `ItemRate`, `BOM` inserts.
Register cross-check: `Item List`, `labelremark`, `CreditCard`, `User2`, `unregisteredac`, `Setup Outlet`, `Kitchen Stock Summary` = **0 hits each** → all NEW; only MS-013 overlaps (count discrepancy above).

### P3 — Lower severity / notes (5 findings)

1. **`Kitchen Stock Summary` silently dropped** — tree leaf `HMS_py/ui/shell.py:1119` has **no registry key** → skipped with no button and no error at `shell.py:1138-1140`; registry contains only `"Kitchen Stock Report I/R Basis"` (`shell.py:1906`). VB6 counterpart is hidden anyway: `MDIForm1.frm:1799-1802` `Begin Menu Rest Index = 28 / Visible = 0   'False'`. Fix = delete the leaf (VB6 parity) or wire the opener.
2. **`Setup Outlet` and `Department/Outlet` share one dialog** — `shell.py:2134` and `shell.py:2002` both → `p2.open_depart` (`HMS_py/ui/p2_masters.py:325`), while VB6 has two forms: `POSMas(0) → New OutLetMast` (`MDIForm1.frm:9894-9895`) and `UTL(27) → New DepartMast` (`MDIForm1.frm:4277`). `DepartMast.frm` also writes `Depart` (+ `GodownMast`, `Voucher_type`), so one generic dialog covers both captions only partially.
3. **VB6 `Year End Updation` (fame idx 7) is a dead no-op** — `MDIForm1.frm:6198-6202` both idx 6 and idx 7 `GoTo loc_12BD5D3`, whose target `:6263-6277` contains only `End If`s. Python wires `year_end_ui.open_year_end_preflight` (`shell.py:2340`) → Python is **more** functional than VB6 here. Note only, not a defect.
4. **Test-quality** — `HMS_py/tests/database/test_main_setup_isolation.py` 8 tests return `bool` → `PytestReturnNotNoneWarning` (`:17, :49, :76, :118, :181, :195, :238, :241`). Convert to `assert`.
5. **Orphan rights row** — 1 `menuHelp` row not reachable in the tree: `MemOpr / auto settle card balance`.

Also verified, **no finding**: dead-code scan for `NotImplementedError` → only `HMS_py/ui/smartcard_txn_ui.py` (2); VB6-hidden-leaf exposure via `Flag='V'` → 0 dialog leaves affected for `SA`.

---

## 3. Findings vs register

| Metric | Count |
|---|---|
| New findings in this audit | **19** (2 P1, 12 P2, 5 P3) |
| Exact matches to existing `MS-001..MS-039` entries | **0** |
| Findings that touch a register *open* item | 2 — **MS-013** (Enviro cols: documented ~21, measured 84 → re-estimate) and **MS-036 / `.mdb` Data Transfer decision** (unchanged, still a product decision) |
| Findings adjacent to FIXED entries (no regression) | 2 — P2-A/P2-B sit in the scope MS-018/MS-019/MS-037 documented as fixed (menubar/sidebar filter + fail-open) but did not cover the dialog surface / VB6 `Visible=0` delta |
| Register open items still open | 2 (MS-013 Tier-2 Enviro columns; Data Transfer `.mdb` protocol decision — 4 `_coming_soon` leaves + MS-036 allowlist must **not** be unwired) |

Both registers (`HMS_py/MAIN_SETUP_BUG_REGISTER.md`, root `MAIN_SETUP_BUG_REGISTER.md`) were read-only cross-checks; no renumbering or merging performed.

---

## 4. Commands run

```powershell
# Part 1 — reproduce the 5 failures
& .\.venv\Scripts\python.exe -m pytest HMS_py/tests/database/test_account_posting.py HMS_py/tests/unit/test_manual_pipeline.py -q
# → 5 failed, 16 passed in 2.23s

# Required regression gate
& .\.venv\Scripts\python.exe -m pytest HMS_py/tests/unit -k "mainsetup or main_setup or general_setup" -q
# → 54 passed, 881 deselected in 4.23s

# Part 2 — probes (throwaway, %TEMP%\opencode\)
python tree_diff.py patch_hidden.py analyze.py menu_diff.py leaf_status.py  # tree/leaf/wiring diffs → tree_diff2.json
python map12.py keys.py stub.py reach.py                                   # 12-master mapping, registry keys, reachability
python m12.py m12b.py                                                      # VB6 form SQL extraction + VB6↔Python column diff
python tabchk.py depchk.py posmas.py capchk.py flagchk.py                  # table-writer, opener, POSMas dispatch, caption-parent, menuHelp-flag checks
```

All probes used `$env:PYTHONIOENCODING='utf-8'`; no GUI launched; no source/test/doc files modified.

---

## 5. Suggested delegation (for @leader — not executed)

| ID | Sev | Owner | Scope |
|---|---|---|---|
| RV-001 | P1 | `@frontend-nuxt`-equivalent / `@node-developer` (Python UI) | P1-A: wire `"Item List"` to a real `FrmItemMast`-equivalent opener (or create one) — do not touch `"Menu Category"` |
| RV-002 | P1 | Python UI | P1-B: caption-scoped Banquet keys (e.g. route HallM subtree captions to `hall_*_ui` openers) |
| RV-003 | P2 | Python UI + backend | P2-A/B: add `_rbac_guard` (or remove leaf) for `User Permissions (Advanced)`; decide whether dialog surface should call `mh.can_open` |
| RV-004 | P2 | `@node-developer` | P2-C..O: 12-master column gaps + 5 unwritten tables |
| RV-005 | P3 | Python UI | Kitchen Stock Summary leaf, Setup Outlet/Department split, isolation-test warnings |

---

## 6. IMP-001 fix status (2026-10-05)

Executed in-scope fix pass for the delegation above (RV-001/002/003/005-partial). RV-004 (12-master column gaps + 5 unwritten tables) **not touched** — out of scope per delegation.

| ID | Finding | Status | Where |
|---|---|---|---|
| RV-001 | P1-A `"Item List"` unwired | **FIXED** | `HMS_py/ui/shell.py:2167` → `(lambda w: p2.open_item(w)) if p2 else None` (VB6 `MDIForm1.frm:636/:9926-9927` = frmItem). `"Menu Category"` left on `pm.open_itemcat` at `shell.py:2168` as instructed |
| RV-002 | P1-B Banquet/Outdoor-Banquet captions opened POS forms | **FIXED** | `shell.py:1230-1252` `_HALL_PARENTS` / `_HALL_CAPTIONS` / lazy `_hall_opener()` (VB6 `HallM/HallEnt/OdcEnt`, `MDIForm1.frm:2059/:2063`); `shell.py:3855` `MainWindow._opener(caption, *parents)` dispatches Hall openers only when a parent is Banquet/Outdoor Banquet; call sites `:3877`, `:3917`, `:3951` (+ recursion `:3963`, builder `:3761`) pass parent chain. Import failure → status-quo fallback (commented) |
| RV-003 | P2-A `User Permissions (Advanced)` unguarded | **FIXED** | `shell.py:2089-2091` wrapped in `_rbac_guard("u", "User Permissions (Advanced)")` (denies when `role_of` ≠ admin / no rights). `"Permissions"` intentionally left unguarded (pre-existing behaviour, separate decision) |
| RV-003 | P2-B dialog surface skipped `mh.can_open` | **FIXED** | `shell.py:1157-1160` `if not mh.can_open(self.user, item): continue` before `registry.get(item)` — dialog buttons now filter exactly like menubar/sidebar (incl. `Flag='V'` hidden leaves) |
| RV-005 | P3-1 `Kitchen Stock Summary` silently dropped | **FIXED** | leaf deleted from the Inventory & Reports group at `shell.py:1138` region (VB6 parity: `MDIForm1.frm:1799-1802` `Visible = 0`). `"Kitchen Stock Report"` leaf + registry entries `:1976`, `:2262` untouched |
| RV-005 | P3-4 isolation tests return `bool` → `PytestReturnNotNoneWarning` | **FIXED** | `HMS_py/tests/database/test_main_setup_isolation.py` — dead `check()` helper deleted (it was the `:17` ref); the five `return True` endings removed from `test_site_isolation`, `test_business_date`, `test_report_parameters`, `test_print_engine`, `test_reprint_manager`; shape `assert`s added to the previously print-only checks; `main()` no longer folds test returns (`all_pass &= ...` → bare calls + `except` → `all_pass = False`) |
| — | P3-2 `Setup Outlet` / `Department & Outlet` share one dialog | **DOCUMENT ONLY** | needs a second opener + writer decision (VB6 `OutLetMast` vs `DepartMast`) → RV-004-adjacent, not fixed here |
| — | P3-3 VB6 `Year End Updation` dead no-op | **DOCUMENT ONLY** | Python already more functional; no change |
| — | P3-5 orphan `menuHelp` row (`MemOpr / auto settle card balance`) | **DOCUMENT ONLY** | data-row cleanup, needs DB write (out of scope) |

### P3-4 audit correction (line-list vs reality)

The §2 P3-4 finding lists **8** line refs (`:17, :49, :76, :118, :181, :195, :238, :241`). Measured baseline for this file was `5 passed, 5 warnings` — i.e. only **5** warnings ever fired:

- `:49, :76, :118, :181, :195` → the five `return True` lines of the collected tests → removed.
- `:17` → `check(name, cond)` helper, **dead code** (no callers anywhere in the repo) → deleted rather than converted.
- `:238, :241` → `main()`'s `return 0/1` under `if __name__ == "__main__": sys.exit(main())` — never collected by pytest, so no warning is possible; kept for the script-run contract and now documented with a docstring.

Audit §2's "Convert to `assert`" intent is satisfied: tests are assert-based and no collected test returns a value.

### New regression test

`HMS_py/tests/unit/test_mainsetup_p1a_p1b_routing.py` (7 tests, `pytestmark = pytest.mark.unit`):

- P1-A: `"Item List"` → `p2_masters.open_item`; `"Menu Category"` still → `pos_masters_ui.open_itemcat`.
- P1-B: Banquet / Outdoor Banquet parents → Hall openers (incl. nested `module > group > leaf` chain); POS / Inventory parents → status-quo registry; non-Hall caption under Banquet → status-quo fallback; `_hall_opener()` real lazy-import path returns callables.

### Verification (run 2026-10-05)

```powershell
# a) new routing test
& .\.venv\Scripts\python.exe -m pytest HMS_py/tests/unit/test_mainsetup_p1a_p1b_routing.py -q
# → 7 passed in 1.16s

# b) required regression gate (§4 command)
& .\.venv\Scripts\python.exe -m pytest HMS_py/tests/unit -k "mainsetup or main_setup or general_setup" -q
# → 61 passed, 881 deselected in 5.22s   (baseline 54 passed + 7 new)

# c) P3-4 file, warnings escalated to errors
& .\.venv\Scripts\python.exe -m pytest HMS_py/tests/database/test_main_setup_isolation.py -q -W error::pytest.PytestReturnNotNoneWarning
# → 5 passed in 0.23s   (baseline: 5 passed, 5 warnings)

# d) full unit suite
& .\.venv\Scripts\python.exe -m pytest HMS_py/tests/unit -q
# → 3 failed, 938 passed, 1 skipped in 23.33s
#   the 3 failures are the pre-existing/UNRELATED PIL tests in test_manual_pipeline.py
#   (baseline 3 failed, 931 passed, 1 skipped; +7 = 938). The 1 remaining warning is
#   PytestRemovedIn10Warning in test_comport_config.py (unrelated file/class).
```

Files changed by this pass: `HMS_py/ui/shell.py`, `HMS_py/tests/database/test_main_setup_isolation.py`, `HMS_py/tests/unit/test_mainsetup_p1a_p1b_routing.py` (new), this audit file (§6 append). No writer SQL, no DB writes, no GUI launch, no new dependencies, no register renumbering.

Lint (`ruff 0.16.10`): new test file is clean; `shell.py` HEAD baseline is 48 findings, worktree still 47 in the touched ranges with **no new findings from this pass** (`_hall_opener`'s deliberate `except Exception` carries `# noqa: BLE001`); `test_main_setup_isolation.py` went 20 → 18 findings. The repo itself is not ruff-clean, so parity (zero new findings) is the applied bar.

Note: `HMS_py/ui/shell.py` also carries **pre-existing uncommitted changes from other parallel work** (e.g. the `sidebar_buttons._label_for` import at `shell.py:75`) — this pass only owns the hunks referenced by the table above.
