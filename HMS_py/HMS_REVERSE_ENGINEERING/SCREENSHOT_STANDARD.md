# Screenshot Standard (Spec §17)

Applies to all captures in this workspace. Spec §17 requirements → how they are met here.

## 1. What to capture for every important screen

| Requirement (§17) | How satisfied |
|---|---|
| Full screen | `win32_capture_screen` / `hms_capture*.py` full-window PNG |
| Application title | PNG title bar + manifest row records window title |
| Menu path | encoded in filename (separator `__`) **and** listed in `<module>/screenshots/README.md` |
| Relevant fields | visible in capture; field-level inventory in `<module>/screens/screens.md` |
| Buttons | visible in capture; button inventory in module `screens/*` docs |

## 2. What NOT to capture

- ❌ Passwords (login capture shows empty/`********` fields — `GUI_003_Login_Filled.png`
  contains no credential text; DB credentials never appear in any UI capture).
- ❌ Sensitive credentials of any kind (spec §4/§26; session user `SA`/password never stored).
- ❌ Unnecessary Windows desktop (captures are window/app-scoped; no taskbar content relied upon).

**Compliance check run:** no PNG in `screenshots/` was found to contain a password value;
login-time captures pre-date credential entry. Values of DB password/session variables are
never printed in docs either.

## 3. Naming convention

Spec pattern: `MODULE_SCREEN_OPERATION_STATE.png`
(e.g. `FO_Reservation_New.png`, `FO_CheckIn_Saved.png`, `NA_Audit_Start.png`).

Actual captures in this project use pass-prefixed names — mapping:

| Actual prefix | Meaning | Example |
|---|---|---|
| `GUI_nnn_*` | early GUI discovery pass | `GUI_002_LoginScreen.png` |
| `B0nn_*` | batch menu-walk pass (B-series) | `B034_WalkInCheckIn_20260928_195820.png` |
| `C2_*`, `C3_*`, `C3_Sn_*`, `C4_*` | caption-dispatch verification passes | `C4_WalkInCheckIn_Form.png` |
| `P2_*`–`P4_*` | strip/tab click verification passes | `P4_FO_FG_Click.png` |
| `*_20260928_HHMMSS` | timestamp suffix (provenance) | `B040_BillReprint_20260928_195941.png` |

Menu-path encoding: `C3_S1_Front_Office__Operations__WalkIn.png`
= module `Front Office` → group `Operations` → leaf `WalkIn CheckIn`
(`__` = path separator, truncated at 40 chars).

### Forward rule (new captures)

New screenshots MUST follow the spec pattern:

```
<MODULE>_<Screen>_<Operation>_<State>.png
FO_Reservation_New.png
FO_CheckIn_New.png
FO_CheckOut_Saved.png      (only after user-approved test-DB run)
NA_Audit_MenuOnly.png      (Process itself is blocklisted)
```

Pass prefixes (B/C/P) remain allowed for batch runs but each file must also be listed with its
full menu path in the module's `screenshots/README.md` table (File | Bytes | Shows | Evidence).

## 4. Storage location

Spec: `[module]/screenshots/`. This workspace keeps the **binary PNGs in the root capture
store** `screenshots/<module>/` (single source of truth, deduplicated by `cleanup_screenshots.py`)
and each module folder holds a **manifest** `<module>/screenshots/README.md` (tables, coverage,
gaps, capture commands). Both locations are reachable from the module folder per §27
(folder organization) — no PNG duplication, no divergent copies.

Root manifest: `screenshots/CAPTURE_INDEX.md` (per-folder counts + totals).
Duplicate/archived captures: `screenshots/_duplicates/` (never counted as evidence).

## 5. Evidence tagging

Every manifest row carries `[VERIFIED-UI]` (runtime capture) and, where the PNG supports a
specific claim, the claim itself is tagged `[VERIFIED-UI]` in module docs (§25).

## 6. Coverage status

| Module | PNGs | Module manual exists | Coverage note |
|---|---|---|---|
| 00_Project_Discovery | 3 | yes (folder) | startup/login/discovery |
| 01_Login_Security | 11 | yes (folder) | login states incl. failure |
| 02_Main_Setup | 16 | ✓ | masters sampled |
| 03_Finance | 20 | ✓ | voucher/report menu sampled |
| 04_Reservation | 12 | ✓ | menu + screens |
| 05_Front_Office | **37** | ✓ | 6 of ~57 screens (see its README) |
| 06_House_Keeping | 10 | ✓ | |
| 07_Inventory | 10 | ✓ | |
| 08_POS | 20 | ✓ | |
| 09_Banquet | 15 | ✓ | |
| 10_Night_Audit | 7 | ✓ | GST group only (blocklist) |
| 11_HR_Payroll | 12 | ✓ | |
| 12_EPABX | 1 | ✓ | strip tab only — gap documented |
| 13_Messaging | 4 | ✓ | includes 1 misfiled SMS capture (flagged) |
| 14_Members_Management | 1 | ✓ | gap documented |
| 15_Sales_Marketing | 1 | ✓ | gap documented |
| 16_Mall_Management | 1 | ✓ | gap documented |
| EXTRAs | 1 | — | misc |
| root (top-level GUI_*) | 28 | — | login/discovery |

Total: **309 files** in `screenshots/` (incl. CAPTURE_INDEX.md, `_duplicates` 1, top-level GUI 28).

Never captured (by blocklist): any Save/Delete/Post/Settle/Print/Yes confirmation state,
Night Audit Process execution, Reverse Night Audit confirmation.
