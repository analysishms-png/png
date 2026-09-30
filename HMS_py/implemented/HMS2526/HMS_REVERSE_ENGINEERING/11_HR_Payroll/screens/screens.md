# 11_HR_Payroll — Screens

Menu source: `19_VB6_Logic/menu_tree_raw.txt` L454–L469 (module hex `14` = decimal 20).
Menu registration source: `EXTRAS.text` L476846–L476877 (`Proc_165_0_14C1708`, module `&H14`).

## 1. Transaction / entry screens (menu type 0 — 6 items)

| # | Menu caption (menu_tree_raw) | Builder registration | Index | Menu array (`menuName`) | Form opened | Evidence |
|---|---|---|---|---|---|---|
| 1 | Leave Entry (L455) | L476848 | 4 | `Pay` | `prAttend` | `[VERIFIED-VB6]` |
| 2 | Loan/Advance Entry (L456) | L476850 | 6 | `Pay` | `PrLoan` | `[VERIFIED-VB6]` |
| 3 | Salary Creation (L457) | L476852 | 7 | `Pay` | `prSalCreate` | `[VERIFIED-VB6]` |
| 4 | Leave Encashment (L458) | L476854 | 8 | `Pay` | `PrLeavench` | `[VERIFIED-VB6]` |
| 5 | Over Time Entry (L459) | L476856 | 9 | `Pay` | `prOverTime` | `[VERIFIED-VB6]` |
| 6 | Over Time Entry (L460) — duplicate caption | L476858–L476859 | `&HA` | `Pay` | `prOverTime` (same key `"Over Time"`) | `[VERIFIED-VB6]` |

Two independent runtime paths open these screens:

- **Path A — static menu control array** `PayOpr_Click(Index)` (`EXTRAS.text` L4313–L4376):
  index 0 → `New prAttend` (L4322), 1 → `New PrAttend1` (L4330), 2 → `New PrLoan` (L4338),
  3 → `New prOverTime` (L4346), 4 → `New PrLeavench` (L4354), 5 → `New prSalCreate` (L4362). `[VERIFIED-VB6]`
- **Path B — menuHelp-driven dispatcher** `Proc_165_2_1E3A588` (`EXTRAS.text` L476999), which matches the
  per-user `menuHelp.[Option]` string (resolved by `Proc_165_3_EEA710`, L480834/L480844):
  `"Leave"` → `New prAttend` (L480277–L480281), `"Attendance"` → `New PrAttend1` (L480282–L480286),
  `"Loan/Advance"` → `New PrLoan` (L480287–L480291), `"Salary Creation"` → `New prSalCreate` (L480292–L480296),
  `"Leave Encashment"` → `New PrLeavench` (L480297–L480301), `"Over Time"` → `New prOverTime` (L480302–L480306). `[VERIFIED-VB6]`

Caption vs. dispatch key (must be documented for a faithful rebuild):

| menu_tree caption | dispatcher key (`menuHelp.[Option]`) | Status |
|---|---|---|
| Leave Entry | `Leave` | confirmed in `19_VB6_Logic/MenuHelp_SA_tree.txt` L439 (`Leave\|20\|11\|11\|0\|E`) `[VERIFIED-SQL]` |
| Loan/Advance Entry | `Loan/Advance` | `MenuHelp_SA_tree.txt` L324 `[VERIFIED-SQL]` |
| Salary Creation | `Salary Creation` | L327 (identical) |
| Leave Encashment | `Leave Encashment` | L326 (identical) |
| Over Time Entry | `Over Time` | L325 `[VERIFIED-SQL]` |
| *(no menu item)* | `Attendance` → `PrAttend1` | `[UNKNOWN]` — no menu_tree row and no `menuHelp` row for this key in the 5 extracted user trees |

## 2. Report screens (menu type 1 — 9 items)

See `../reports/reports.md`. Registered at `EXTRAS.text` L476861–L476877, indexes `&HB`–`&H13`, menu array `Pay`.

## 3. Module header

- `14|4||PayRoll` (menu_tree_raw L454); registration `("PayRoll", &H14, 4, …, "PayRoll", 1)` at `EXTRAS.text` L476846. `[VERIFIED-VB6]`
- `menuHelp` module root for the same module: `HR/Payroll|20|0|0|0|N` (`MenuHelp_SA_tree.txt` L321) `[VERIFIED-SQL]`.

## 4. Setup masters reachable from this module (menu module `C`, not hex `14`)

| Menu item (menu_tree_raw) | Line | Form | Dispatch line |
|---|---|---|---|
| Designation Master | L125 | `PrDesigMast` | `EXTRAS.text` L477974–L477979 `[VERIFIED-VB6]` |
| Category Master | L126 | `PrCategoryMast` | L477980–L477985 (key has a double space: `"Category  Master"`) |
| Holiday Master | L127 | `prHoliday` | L477986+ |
| Employee Master | L128 | `PrEmployee` | L477992 |

The same four are also hard-wired in `PRM_Click(Index)` (`EXTRAS.text` L1123–L1167): 0 → `PrDesigMast` (L1132),
1 → `PrCategoryMast` (L1140), 2 → `prHoliday` (L1148), 3 → `PrEmployee` (L1156). `[VERIFIED-VB6]`
