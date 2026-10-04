# 05_Front_Office — Screenshots

Canonical store: **`screenshots/05_Front_Office/`** (root capture store, 37 PNGs).
This folder holds the manifest only (no copies — single source of truth).
Index: `screenshots/CAPTURE_INDEX.md`.

## Inventory

| File | Bytes | Shows | Evidence |
|---|---|---|---|
| `04-FrontOffice_MenuTab.png` | 510455 | FO strip tab in MDI | `[VERIFIED-UI]` |
| `B032_Menu_20260928_195550.png` | 383266 | top menu state during FO pass | `[VERIFIED-UI]` |
| `B033_FO_Operations_Dropdown_20260928_195730.png` | 327774 | **Operations dropdown expanded** (12 rows) | `[VERIFIED-UI]` |
| `B034_WalkInCheckIn_20260928_195820.png` | 347659 | WalkIn CheckIn screen | `[VERIFIED-UI]` |
| `B036_RoomStatus_20260928_195900.png` | 330723 | Room Status screen | `[VERIFIED-UI]` |
| `B038_ExpenseEntry_20260928_195936.png` | 198877 | Expense Entry | `[VERIFIED-UI]` |
| `B039_DisplayRack_20260928_195938.png` | 256251 | Display Rack | `[VERIFIED-UI]` |
| `B040_BillReprint_20260928_195941.png` | 230011 | Bill Reprint | `[VERIFIED-UI]` |
| `B041_ReverseCheckOut_20260928_200021.png` | 214462 | Reverse Check Out | `[VERIFIED-UI]` |
| `B042_MergeRoom_20260928_200107.png` | 206459 | Merge Room | `[VERIFIED-UI]` |
| `B043_BillReSettlement_20260928_200439.png` | 224199 | Bill Re-Settlement | `[VERIFIED-UI]` |
| `B044_ReverseRoomMerge_20260928_200112.png` | 197650 | Reverse Room Merge | `[VERIFIED-UI]` |
| `B046_GRCPrinting_20260928_200443.png` | 178564 | GRC Printing | `[VERIFIED-UI]` |
| `B047_MealTokens_State_20260928_200347.png` | 193881 | Plan Meal Tokens state | `[VERIFIED-UI]` |
| `B048_BlankGRC_20260928_200447.png` | 191881 | Blank GRC | `[VERIFIED-UI]` |
| `B053_FO_Reset_20260928_200858.png` | 193881 | menu reset state | `[VERIFIED-UI]` |
| `B054_FO_Reports_Row2_20260928_201434.png` | 230315 | **Reports group open** | `[VERIFIED-UI]` |
| `B056_CleanState_20260928_202353.png` | 383226 | clean state | `[VERIFIED-UI]` |
| `B057_ModuleRow_20260928_202516.png` | 381653 | module row state | `[VERIFIED-UI]` |
| `B061_TopClickVerify_*.png` ×3 | ~1.1M total | top-click verification sequence | `[VERIFIED-UI]` |
| `C2_Front_Office__Operations__{Bill_Repri,Display_Ra,Expense_En,Room_Statu}.png` ×4 | ~817K | per-caption captures (C2 pass) | `[VERIFIED-UI]` |
| `C3_02..05_Front_Office__Operations__*.png` ×4 | ~820K | duplicate-angle captures (C3 pass) | `[VERIFIED-UI]` |
| `C3_S1_Front_Office__Operations__WalkIn.png` | 264837 | WalkIn (C3 pass) | `[VERIFIED-UI]` |
| `C4_WalkInCheckIn_Form.png` | 264495 | **full form — basis of CHECKIN_FIELD_MAP** | `[VERIFIED-UI]` |
| `P2_FO_DeepStripClick.png` / `P2_FO_ModuleClicked.png` | ~473K | strip/tab click verify | `[VERIFIED-UI]` |
| `P3_BarState.png` | 386242 | bar state | `[VERIFIED-UI]` |
| `P4_FO_FG_Click.png` | 1481449 | large FO click capture | `[VERIFIED-UI]` |
| `_debug_bar.png` | 10463 | debug artifact (not evidence) | — |

## Coverage — 37 of ~57 reachable screens

Captured: strip tab, Operations (12 leaves, 6 distinct screens), Reports menu row, misc states.
**Missing (20+):**

| Missing | Priority |
|---|---|
| Tourism Forms — all 10 leaves | medium (statutory forms) |
| M.I.S. — all 13 report outputs | medium |
| Tax Reports — FOM Tax Detail, Tax Wise Charge Detail | medium |
| Reports group — 21 report outputs | low (viewer pattern proven) |
| Reservation entry (`RrRoomReservation`) | **high** (spec §14 core step) |
| Check-in from reservation (`fdCheckIn`) | **high** |
| Display Folio / Look-up screens | high |

## How to capture the rest

```powershell
python hms_capture2.py --module front_office --list-strip   # locate tab
python hms_capture2.py --module front_office --list-menu    # runtime HMENU items
python hms_capture3.py --module front_office                # guided walk
```
Safety: navigation-only; **never click Save/Delete/Post/Settle/Print/Yes**
(check-in screens contain Save — observe only, per project blocklist).
