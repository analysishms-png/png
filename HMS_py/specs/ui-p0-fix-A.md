# FIX-A — P0-01 (Company Master missing fields) — Refutation Report

- **Task ID:** FIX-A (agent @python)
- **Scope:** `ui/comp_mast_form_ui.py`, `core/comp_master.py` ONLY
- **Code changed:** none
- **Status:** P0-01 **STALE-INVALID** (audit claims refuted; no implementation required)
- **Verification status:** `verified`

## 1. Verdict

The audit claim "*Company Master is missing ~6 fields incl. Contract Type*" is wrong on
count, wrong on index, and wrong on premise:

1. **Category error (count).** VB6 has 41 editable/display blocks = 37 `Txt(n)` indices
   + `txtCurrBal` + 3 grid cells. Python has 35 `_row(...)` calls + 2 display labels
   (`opbal`, `curbal`) = **exactly 37**. The audit compared VB6's 41 *blocks* against
   Python's 35 *editable rows* and never counted the 2 read-only balance labels or the
   3 opening-balance grid cells. Editable business fields: VB6 34 = Python 34.
2. **Index error.** Audit asserted *Contract Type = Txt(27)*. VB6 fill code proves
    `Txt(27) = BlackListedBy` (`CompMast.frm:6177` reads BlackListedBy into index 27).
3. **Non-existent field.** The identifier `ContractType` appears **nowhere** in VB6 code
   — only an orphan label caption (`CompMast.frm:1329`), no matching text box, not in
    INSERT (`:6360`), not in UPDATE (`:6426-6485`), not in any migration
   (`migrations/001_missing_tables.sql` is the only migration; `contract|SubGroup` → no match).

## 2. Evidence A — VB6 fill code → index map (all 37 line-confirmed)

Source: `implemented\HMS_REVERSE_ENGINEERING\HMS\CompMast.frm`, fill routine `:5930-6198`.
Index delivered via `Call 0.Method_Proc_22_91_...(CInt(&Hn), var_148)` then
`var_148.Text/Tag = ...Fields.Item("...")` on the following line (arg order decompiler-mangled,
so field-read↔index adjacency governs).

| Idx | VB6 field | VB6 line (index call) | Python widget (file:line) |
|----:|-----------|----------------------:|---------------------------|
| 0 | subcode | 5947 | `ed_code` — comp_mast_form_ui.py:291 |
| 1 | Name | 5963 | :292 |
| 2 | GroupCode (Tag) | 5972 | :294 |
| 3 | ConPrefix | 6096 | :296 |
| 4 | ConPerson | 6099 | :298 |
| 5 | Add1 | 6102 | :327 |
| 6 | Add2 | 6105 | :328 |
| 7 | Add3 | 6108 | :329 |
| 8 | CityCode | 6114 | :330 |
| 9 | Pin | 6117 | :332 |
| 10 | Phone | 6120 | :336 |
| 11 | Mobile | 6123 | :337 |
| 12 | Fax | 6126 | :338 |
| 13 | Email | 6129 | :339 |
| 14 | CstNo | 6132 | :351 |
| 15 | LstNo | 6135 | :352 |
| 16 | PanNo | 6138 | :349 |
| 17 | Remark | 6150 | :315 |
| 18 | BlackListed | 6171 | :356 |
| 19 | AllowCredit | 6156 | :306 |
| 20 | CompanyType | 6153 | :299 |
| 21 | CreditDays (guard-read :6158) | 6160 | :373 |
| 22 | Interest (guard-read :6162) | 6164 | :375 |
| 23 | CreditLimit (guard-read :6166) | 6168 | :374 |
| 24 | Discount (field-read :6185) | 6187 | :381 (`lbl["discount"]`) |
| 25 | Commission (field-read :6189) | 6193 | :379 (`lbl["commission"]`) |
| 26 | ReasonBlackList | 6174 | :358 |
| 27 | **BlackListedBy** (Tag :6178) | 6177 | :360 |
| 28 | DiscountType | 6183 | :383 (`lbl["discounttype"]`) |
| 29 | OpeningBal (display, textvar) | 6019 | `lbl["opbal"]` — :404 |
| 30 | CurrBal (display) | 6074 | `lbl["curbal"]` — :408 |
| 31 | ActiveYN | 6180 | :304 |
| 32 | WebPassword | 5976 (`&H20`) | :309 |
| 33 | MapCode | 5979 (`&H21`) | :308 |
| 34 | GSTIN | 6141 | :350 |
| 35 | Legalname | 6144 | :313 |
| 36 | TradeName | 6147 | :314 |

All 37 indices (0-36) appear at least once in `:5947-6198` — machine-extracted
(`Method_Proc_22_91.*CInt\((&H[0-9A-Fa-f]+|\d+)\)` scan), then verbatim-verified for
idx 17-28 (`:6146-6199`).

Python `_row` count by tab: company 13 (:291-315) + address 9 (:327-339) +
tax 7 (:349-360) + finance 6 (:373-383) = **35**; + 2 balance labels (`_tab_opening`
:404, :408) = **37** → 1:1 with VB6. Diff = 0 missing fields.

## 3. Evidence B — "Contract Type" is an orphan caption

- Only occurrence: `CompMast.frm:1329`, label caption `"Contract Type"` at y=4365.
- Geometry pairs it with `Txt(24)` (y=4455), but fill code feeds `Txt(24) = Discount`
  (:6187). No `"Discount"` caption exists anywhere on the form → geometry↔code conflict.
- No text box, no read, no write, no column, no migration. **Unrecoverable — no field added.**

## 4. Evidence C — data-loss gap (pre-existing, register as MS-027)

VB6 form SQL never writes `discount`, `commission`, `creditdays`, `interest`,
`creditlimit`, `blacklisted*` even though the UI shows them. Python **does** save them
(`FIELDS` core/comp_master.py:44-58, generic loop in `save_company` :512) — a strict
improvement over VB6, but worth registering as **MS-027** (VB6↔Python write-behaviour delta).
Documented in code at comp_master.py:41-43.

## 5. Stale claims in authority docs

- `specs/ui-p0-audit.md` :30-48 — P0-01 row: refuted (count, index, field).
- `specs/ui-p0-research.md` §K :326 — the "editable QComboBox for Contract Type"
  recommendation rests on the refuted `Txt(27)` premise; do not implement.

## 6. Files inspected (no edits)

- `ui/comp_mast_form_ui.py` (775 lines): `_row` :229, rows :291-383,
  `_tab_opening` :400-434, `_pick_list` :437, `_gather` :713.
- `core/comp_master.py` (622 lines): `LIMITS` :32, `FIELDS` :44, `YN_FIELDS` :59,
  `NUM_FIELDS` :60, `INT_FIELDS` :61, `name_help` :64, `list_companies` :69,
  `validate_company` :433 (required: name, groupcode w/ group-name resolution,
  companytype ∈ `COMP_TYPES`, active ∈ Yes|No, email format), `save_company` :512.
- `migrations/001_missing_tables.sql` (only migration): no contract/SubGroup columns.
- VB6 `CompMast.frm` (primary + `HMS2526` copy — same lone caption :1329).

## 7. Verification results

```
QT_QPA_PLATFORM=offscreen python -m pytest tests/unit/test_comp_master.py -q -p no:cacheprovider
  → 6 passed in 0.23s

python -m ruff check ui/comp_mast_form_ui.py core/comp_master.py
  → 18 findings
git show HEAD:<file> | ruff check --stdin-filename <file> -
  → ui: 12, core: 6 (total 18)   # identical → 0 NEW findings

git diff --stat -- HMS_py/ui/comp_mast_form_ui.py HMS_py/core/comp_master.py
  → empty (both files untouched)
```

Status: **verified** — tests green, no new lint findings, zero diff by construction.

## 8. Cleanup

- `_tmp_parse_compmast.py` (temp VB6 parser) deleted.
