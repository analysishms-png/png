# Result-Keyword Compile Blockers — Per-File Breakdown

Date: 15/Sep/2026 · Evidence: ripgrep scan · No code changed · Originals untouched

## 1. Top-line numbers

| Measure | Count |
|---|---|
| `Result ... End Sub` in project source files (authoritative) | **194** |
| — in `.bas` modules | 179 |
| — in `.frm` forms | 15 |
| — in `.cls` | 0 |
| Same pattern inside `HMS.bas` (53 MB master listing — reference doc, project member nahi) | 302 |

**Important discovery:** project folder mein ab `HMS.bas` bhi hai (9,95,854 lines, 15/Sep 19:21 ko bani) — "Listing created by VB Decompiler v10.0.3733, Application: HMS.exe, Compiled to: P-Code". Ye poore EXE ki fresh listing hai jisme **original procedure names preserved hain** (14,540 `Sub` + 408 `Function` declarations) — repair ke liye ye master reference hai.

## 2. Per-file breakdown (priority order)

### Tier 1 — .bas modules (179 blockers)

| File | Count | Note |
|---|---|---|
| ModuleSmartCard.bas | 107 | Sabse bada chunk; smart-card/door-lock logic |
| Hotlib.bas | 26 | Library module |
| Picture.bas | 9 | |
| SMSModule.bas | 8 | |
| POSBillPrint.bas | 8 | |
| TopBarLib.bas | 5 | |
| MainLib.bas | 5 | Analysis mein pehle dekha: `Proc_6_2_E95E90` type Subs jo actually Functions hain |
| MSendInput.bas | 5 | |
| ModuleAdd.bas | 4 | |
| ModuleDoorLock.bas | 1 | btlock57L.DLL wrapper |
| MobWebAPI.bas | 1 | |
| **Total** | **179** | |

### Tier 2 — .frm forms (15 blockers)

| File | Count |
|---|---|
| RsKOTEntry.frm | 2 |
| rrsAdvanceDepDialog.frm | 1 |
| rRepPayRoll.frm | 1 |
| prOverTime.frm | 1 |
| pPBill.frm | 1 |
| pHappyHours.frm | 1 |
| memCatChngCond.frm | 1 |
| memAgeRevMast.frm | 1 |
| SundryMast.frm | 1 |
| RewardPointParam1.frm | 1 |
| PrEmployee.frm | 1 |
| OutLetSundry.frm | 1 |
| MemFacilityEntry.frm | 1 |
| CateringBooking.frm | 1 |
| **Total** | **15** |

## 3. Pattern taxonomy + fix recipe

| Pattern | Project-wide count | Kya hai | Fix |
|---|---|---|---|
| `Result var_NNN End Sub '<Type>` | 155 | Decompiler ne return-value emit kiya — original mein ye **Function** thi | `Public Sub Proc_x` → `Public Function Proc_x() As <Type>`; `Result var_N` → `Proc_x = var_N` |
| `Result &HFF / 0 / 1 End Sub '<Type>` | 132 | Constant return — mostly Boolean/-1 success flags ya Integer status | Same — Function banao, constant return karo |
| `Result Me / MemVar_x / -txt.xxx / Proc_(...)` | ~7 (ModuleSmartCard, MSendInput, Picture, SMSModule mein 1-1) | Complex/object returns — CodeModule.bas mein `-txt.DispID_F8004011` jaise bhi | **Case-by-case manual** — ye bulk-script se nahi |
| `.cls` files | 0 | cls mein ye issue nahi (wahan alag problem hai: Property Get bodies `End Sub`) | — |

## 4. HMS.bas listing — mapping asset

- Listing mein original names hain: `Private Sub mnuTelRep_Click(Index As Integer)` type declarations (14,540 Subs, 408 Functions).
- **408 Functions** wale sections wo procs hain jo value return karti hain — inhi mein se zyadatar 194 blockers ke original signatures mil sakte hain.
- Caveature: listing ke addresses project split-files ke `Proc_x_y_ZZZZZZ` addresses se **directly align nahi karte** (test: `_E95E90` listing mein 0 matches) — mapping **procedure-body shape se** karni hogi (first-line code compare), name se nahi.
- Isliye repair workflow: blocker proc ka body lo → HMS.bas listing mein same body dhundo → wahan se original name + Function signature + return type lo → repaired file mein reconstruct karo.

## 5. Recommended repair order (next phase)

1. **frmPassword-style small wins:** 15 .frm blockers (har file mein 1-2) — quick, user-visible forms unlock honge
2. **MainLib.bas (5)** + **TopBarLib.bas (5)** + **ModuleAdd.bas (4)** — chhote, high-traffic modules
3. **ModuleSmartCard.bas (107)** — sabse bada; pehle 10-20 karke pattern validate karo, phir baaki script-assisted
4. **Hotlib.bas (26)** + baaki .bas
5. Har file ke liye: original ki copy `originals_backup/` mein, repaired file `repaired/` mein — originals kabhi overwrite nahi

## 6. Safety rules (fixed)

- Koi original file delete/overwrite nahi
- Har repair `repaired/` folder mein, per-file before/after summary ke saath
- Bulk regex fix **nahi** — har proc ka Sub→Function conversion verify hoga (callers bhi update honge: `Proc_x(arg)` → `x = Proc_x(arg)`)
- Callers ka update hi sabse tricky part hai — ek proc Function bana to uske saare call sites scan karne honge
