# 06_House_Keeping — Screens

Menu source: `HMS_REVERSE_ENGINEERING\19_VB6_Logic\menu_tree_raw.txt` **L257–L273**.
Dispatch: `EXTRAS.text` (all line numbers below are from `EXTRAS.text`).
Module gate: `InStr(2, MemVar_1F81228, "I", 0) <> 0` — **L476390** `[VERIFIED-VB6]`.

## Menu → dispatch → form → object range → screenshot

| # | Menu line | Caption | Dispatch (form) | EXTRAS lines | Form object | Object range | Screenshot in `screenshots\06_House_Keeping\` |
|---|---|---|---|---|---|---|---|
| 0 | L259 | Block Master | `New frmBlockMast` | L478681–L478686 | `frmBlockMast` | L797827–L798637 | — |
| 1 | L261 | Complaint Master | `New FrmComplaintMast` | L478687–L478692 | `FrmComplaintMast` | L481015–L482172 | `C3_01_Complain_Master.png` |
| 2 | L262 | Complaint Clearance | `New FrmComplaintClearing` | L478693–L478698 | `FrmComplaintClearing` | L448800–L449832 | `C2_Complaint_Clearance.png`, `C3_02_House_Keeping__Operations__Compl.png`, `C3_P5S3_House_Keeping__Operations__Compl.png`, `C3_S1_House_Keeping__Operations__Compl.png` |
| 3 | L263 | Lost / Found Entry | `New FrmLostFound` | L478699–L478704 | `FrmLostFound` | L449833–L450496 | — |
| 4 | L264 | Claim Entry | `New FrmClaimEntry` | L478705–L478710 | `FrmClaimEntry` | L450497–L451328 | `C2_House_Keeping__Operations__Claim_Ent.png` |
| 5 | L265 | House Keeping Op.Stock Entry | `New HKHouseOpStk` (after optional `New FrmChangeDepart` when `MemVar_1F811B8` is empty) | L479057–L479069 | `HKHouseOpStk` (+ `FrmChangeDepart`) | L81996–L84053 | `C2_House_Keeping__Operations__House_Kee.png` |
| 6 | L266 | Issue/Recd. Entry | `New FrmStockTransfer` | L479070–L479075 | `FrmStockTransfer` | L452276–L454520 | — |
| 7 | L267 | House Keeping Screen | `New HHouseKeeping` — **registered twice**: L478717–L478722 **and** L479076–L479081 | L478717 / L479076 | `HHouseKeeping` | L80459–L81618 | `C2_House_Keeping__Operations__Complaint.png` *(captured under a Complaint label)* |
| 8 | L268 | **Item Issued On Cleaning** | **NO dispatch branch exists** | — | `FrmItemIssuedOnCleaning` exists but is unreachable | L604299–L605913 | — |
| 9 | L269 | Check Out Clearance Screen | `New HRoomCheckOutClearance` | L478723–L478728 | `HRoomCheckOutClearance` | L628394–L629139 | — |
| 10 | L270 | Room Block | `New HKRoomBlock` | L478729–L478734 | `HKRoomBlock` | L831468–L833097 | — |
| R1 | L272 | Room Status Report | `New rRepHousePreview`, `GRepFormName = "RoomStatus"` | L478511–L478517 | `rRepHousePreview` | L120613–L122609 | — |
| R2 | L273 | Complaint Detail | `New rRepHousePreview`, `GRepFormName = "ComplaintList"` | L478518–L478524 | `rRepHousePreview` | L120613–L122609 | — |

Menu tab capture: `05-HouseKeeping_MenuTab.png`, `B032_Menu_20260928_195552.png`.

## Other House-Keeping objects in the codebase (not on this menu)

| Form | Object range | Reached from |
|---|---|---|
| `FrmGuestWakeUp` | L86469–L87705 | `[UNKNOWN]` — no menu/dispatch hit found |
| `FrmHouGuestMsg` | L87706–L88968 | `[UNKNOWN]` |
| `HKIssRec` | L84054–L86468 | `[UNKNOWN]` (sibling of `HKHouseOpStk`) |
| `HKRoomOpStk` | L125147–L127292 | `[UNKNOWN]` |
| `HWIHistory` | L164888–L165803 | `[UNKNOWN]` |
| `FrmHouseStatus` | L724969–L726130 | `[UNKNOWN]` |
| `rRepHouse` | L122609–L124927 | **never constructed by the dispatcher** — only `rRepHousePreview` is used `[VERIFIED-VB6]` |
| `FrmItemIssuedOnCleaning` | L604299–L605913 | **unreachable** — see #8 `[VERIFIED-VB6]` |

## Menu defects visible here

* **D-1** `F|3||Transactions` appears twice (**L258** and **L260**) — duplicate group header.
* **D-2** `Block Master` (**L259**) declares parent `Setup`, but **no `F|3||Setup` group row exists**
  → orphan parent. Registration confirms the literal: `Proc_165_0_14C1708("Block Master", &HF, 0, "Setup", …)`
  at **L476396**. `[VERIFIED-VB6]`
* **D-3** `Item Issued On Cleaning` (**L268**) has no `If (var_188 = …)` branch anywhere in
  L476999–L480832 → dead menu item. `[VERIFIED-VB6]`
* **D-4** `House Keeping Screen` dispatch exists twice (L478717 and L479076) — harmless duplicate.
* **D-5** Group registrations: `Transactions`/`SetHK` (**L476394**, `Menu_Index = &HFF`) and
  `Transactions`/`TransHK` (**L476398**, `Menu_Index = &HFF`) — two different groups with the
  same caption but different `Module_Name`. `[VERIFIED-VB6]`
* **D-7** `House Keeping Op.Stock Entry` (**L476408**) is registered with `Opt2 = 2`, which the
  registrar maps to `Flag = 'V'` and `PARAM_STR = ''` — every other House Keeping entry leaf
  uses `Opt2 = 0` (`Flag = 'E'`, `PARAM_STR = 'AEDP'`). See `reports\reports.md` for the effect.
  `[VERIFIED-VB6]`
* **D-6** Report group `Reports` registered with `Module_Name="ReportsHK"` (**L476420**) while its
  two children use `Module_Name="HouseREP"` (**L476422, L476424**). `[VERIFIED-VB6]`
