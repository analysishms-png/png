# 09 - Night Audit - Frontend Workflow

## 1. Shell wiring (shell.py)

- Sidebar root `night audit` (:1845); `_on_sidebar_click` → `_safe_open` (:2194/:2284).
- Opener lambdas (inside `_form_registry` return dict :1056+):
  - `_pos = lambda w: pna.open_pos(w)` / **`_na = lambda w: pna.open_na(w)`** (:684-686; `pos_na` import :684; ImportError guard :687-688)
  - `Night Audit Log` → `_na` (:1071) — shortcut **Ctrl+Shift+N** (:2123-2124)
  - `Daily Report` → `_na` (:1072); `Occupancy Analysis` → `_na` (:1073)
  - `Charges Posting` (:1251), `Account Posting` (:1253), `Night Audit Process` (:1348), `Night Audit Control Panel` (:1349) → `narep_ui.open_nightaudit_reports` (`nightaudit_reports_ui` import :842)
  - `Reverse Night Audit` → `_reverse_night_audit` (:1255, def :990-1018 — confirm QMessageBox + FY-guard)
- Report spreads: `GSTR-1/GSTR-2(3)/(4A)/(4B)` etc. (shell:1316) → GST report captions.

## 2. Forms

| Leaf | Class/opener | Notes |
|---|---|---|
| Night Audit Log | `NABrowser(QDialog)` (pos_na:149) → `open_na` (:249) | NA log/analysis browser (also used by Occupancy Analysis/Daily Report via same `_na`) |
| Occupancy Analysis | same `NABrowser` (via `_na`) | capture `ok` |
| Night Audit Process / Control Panel / Charges / Account Posting | `nightaudit_reports_ui.open_nightaudit_reports` (narep_ui:134) | Report/process window |
| Reverse Night Audit | inline `_reverse_night_audit` (shell:990) | Warning dialog flow (VB6 frmReNightAudit: NCurr -1, FY guard :991) |
| POS (shared) | `PosBrowser(QDialog)` (pos_na:37) → `open_pos` (:245) | `Sales Register` (07) also routes here |

## 3. Capture screenshot mapping (manifest `failed=[]`)

```
10_operations_Night_Audit_Log.png   NABrowser (Night Audit Log leaf)
20_reports_Occupancy_Analysis.png   NABrowser (Occupancy Analysis leaf — same window family)
```
(No shell-root PNG in manifest — capture listed 2 leaves only; `00_shell_module.png` absent by design of this run.)
