# 16_Mall_Management — Screenshots

## Captured (1 PNG)

| File | Bytes | Shows | Evidence |
|---|---|---|---|
| `15-Mall_MenuTab.png` | 511356 | **Mall Management** strip tab | `[VERIFIED-UI]` |

Folder PNG count: **1** (`16_Mall_Management/1` in `screenshots/CAPTURE_INDEX.md`).

## Coverage: 0 of 8 screens/reports

| Builder row | Screen/report | Captured? |
|---|---|---|
| Operations row 1 | `FrmLocationMast` | **NO** |
| Facility Master | `FrmFacilityMast` | **NO** |
| Location Facilities | `FrmLocationFacilities` | **NO** |
| Party Locations | `FrmPartyLocations` | **NO** |
| Meter Reading | `FrmMeterReading` | **NO** |
| Facility Billing | `frmFacilityBillAdv` | **NO** |
| Facility Sundry Setting | `FacilitySundry` | **NO** |
| Facility Bill Register | `rFomRepView` (report) | **NO** |

## Runtime caveat

Per `screens/screens.md` §3, user **SA** has **0 `MenuHelp` rows** for this module
(`OPT1=25`) → the tab's menu is expected to be **empty**. Capture that state as evidence
rather than treating it as a tooling failure:

```powershell
python hms_capture2.py --module mall --list-strip     # confirm tab exists
python hms_capture2.py --module mall --list-menu      # document empty result
```

If another user profile (`V3` in `sql/queries.sql`) has `OPT1=25` rows, run the capture
under that profile to reach the 7 screens.

## Safety rules while capturing

- **`Facility Billing` (`frmFacilityBillAdv`) is a billing screen** → open, capture,
  **Cancel/Esc only** (Night-Audit blocklist, spec §7)
- **`Facility Master` has a Delete path** (`Delete From FacilityMast`, `EXTRAS.text`
  L932516) → never click Delete during QA
- Mask any credential field as `********` (spec §17)
- Filename pattern `NN-Module_SubSection_Screen.png`

## Static captures

`MODULE_MANUALS_2026/` builder PNGs are design-time; not counted as runtime captures.
