# 12_EPABX — Screens

Evidence: `19_VB6_Logic/menu_tree_raw.txt` rows with column 1 = `15` (2 rows only),
plus VB6 form objects in `EXTRAS.text`. `[VERIFIED-VB6]` `[VERIFIED-SQL]`

## 1. Menu structure (hex `15` = EPABX — 2 rows)

| line | type | group | caption |
|---|---|---|---|
| L470 | 4 | *(module header)* | EPABX |
| L471 | 1 | *(none)* | **EPBAX Call Report** (note the `EPBAX` typo) |

- **0 type-0 screens in the menu.** The EPABX module has exactly one menu leaf and it is
  a report. `[VERIFIED-SQL]`
- Caption typo `EPBAX` vs `EPABX` is verbatim in the tree; the dispatcher stores the real
  report name as `GRepFormName = "EpabxCallRep"` (`EXTRAS.text` L16).
  `[VERIFIED-VB6]`

## 2. Forms reachable through EPABX (from source, not from the menu)

| Form | Evidence | Reached via |
|---|---|---|
| `TelCallEntry` | `Set var_90 = New TelCallEntry` **L479925** | generic dispatch tail |
| `FrmGuestWakeUp` (wake-up calls) | `Set var_90 = New FrmGuestWakeUp` **L478331** | generic dispatch tail |
| `rRepTelPreview` | `Set var_90 = New rRepTelPreview` **L478412**; also **L15** `global_52 = New rRepTelPreview` | report preview for `EpabxCallRep` |
| `rRepTel` | `Set global_72 = New rRepTel` **L282557**, **L282768** | report host |
| `TelCallTypeMast` | `'Object: TelCallTypeMast` **L220053** | via **Setup → EPABX Setup** (hex C L130) |
| `TelCallCodeMast` | `'Object: TelCallCodeMast` **L219215** | via Setup → EPABX Setup (hex C L132) |
| `TelExtensionMast` | `'Object: TelExtensionMast` **L221239** | via Setup → EPABX Setup (hex C L131) |

`[VERIFIED-VB6]`

The three masters are registered under **02_Main_Setup → EPABX Setup**
(`menu_tree_raw.txt` L129–L132: `Call Type Master`, `Extension Master`, `Call Codes Master`),
not under hex 15 — that is why hex 15 has no screens. `[VERIFIED-SQL]`

## 3. Menu handler for telecom masters

```
Private Sub mnuTelMast_Click(Index As Integer) 'EC574C     EXTRAS.text L7903
  If (Index = 0) Then
    global_52 = MemVar_1F81E44          'pre-built instance, class not named here
    ... Call global_52.Show
  End If
  global_52 = Nothing
End Sub
```
`[VERIFIED-VB6]`

The report handler sits next to it:
`global_52.GRepFormName = "EpabxCallRep"` **L16**, dispatched through
`Method_mnuTelRep_Click0` **L18**. `[VERIFIED-VB6]`

## 4. Screenshot coverage

`screenshots/12_EPABX/` contains **1 PNG**: `11-EPABX_MenuTab.png` (module tab only).
**No EPABX screen has been opened in the GUI** — all rows above are source-derived.
`[VERIFIED-UI]` → Phase 4 target.
