# 14_Members_Management — Screenshots

## Captured (1 PNG)

| File | Bytes | Shows | Evidence |
|---|---|---|---|
| `13-Members_MenuTab.png` | 510797 | **Members Mgmt** strip tab in the MDI window | `[VERIFIED-UI]` |

Folder PNG count: **1** (`14_Members_Management/1` in `screenshots/CAPTURE_INDEX.md`).

## Coverage: 0 of 21 screens

Builder tree has **21 screens** (12 operations + 9 masters) plus **8 reports**.
Captured so far: only the tab. Missing:

| Group | Missing screens | Count |
|---|---|---|
| Operations | Member Visit, Renewal, Used Facility, Facility Billing, Bill Printing, Assistant, Outstation, Category Change, Payment Receive, Revenue Change, Payment Due Letter, Category Change (Cond.), Auto Settle Card Balance | 12-13 |
| Masters | Category/Member Master, Revenue, Facility, Cat-wise Rev/Facility, Age-wise Rev, Select Category, Environment | 9 |
| Reports | all 8 report outputs | 8 |

**Screens 0-4 are the practical first targets** (Visit Entry, Renewal, Facility Billing,
Bill Printing) since those are the module's core flow.

## Runtime caveat before capturing

Per `screens/screens.md` §4, user **SA's** `MenuHelp` shows essentially no Members
operations (`OPT1=23` = 1 orphan row); masters appear under **Main Setup → Members Mgmt**.
So a capture run logged in as SA must enter through Main Setup, not the Members tab.

```powershell
# strip tab + menu enumeration (as SA)
python hms_capture2.py --module mem --list-strip
python hms_capture2.py --module mem --list-menu
# masters actually reachable for SA:
python hms_capture2.py --module setup --list-menu
```

If the Members tab shows an empty menu for SA, that itself is a capture-worthy screenshot
(runtime defect evidence) — capture it rather than failing the run.

## Safety rules while capturing

- `MemBill`, `MemFacilityBilling`, `MemPaymentReceive` are **billing screens** →
  open, capture, **Cancel/Esc only** (Night-Audit blocklist, spec §7).
- Mask any `CardNo`/credential field as `********` (spec §17).
- Filename pattern `NN-Module_SubSection_Screen.png`.

## Static captures

`MODULE_MANUALS_2026/` holds builder/design-time PNGs; not counted as runtime captures.
