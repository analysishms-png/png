# 15_Sales_Marketing — Screenshots

## Captured (1 PNG in this folder)

| File | Bytes | Shows | Evidence |
|---|---|---|---|
| `14-Sales_MenuTab.png` | 499187 | **`Sale && Marketing`** strip tab | `[VERIFIED-UI]` |

Folder PNG count: **1** (`15_Sales_Marketing/1` in `screenshots/CAPTURE_INDEX.md`).

## Misfiled capture that actually belongs to this module

| File | Bytes | Shows | Current location |
|---|---|---|---|
| `C3_P6S1_EXTRAs__SMS__Sstup__SMS_API.png` | 831044 | runtime path `EXTRAs > SMS > Sstup > SMS (API)` | `screenshots/13_Messaging/` |

`[VERIFIED-UI]` — filename encodes the **runtime** path for this module (see
`screens/screens.md` §2). Left in place (captures are never moved/deleted without a
manifest entry); flagged in `screenshots/CAPTURE_INDEX.md` + the Messaging README.

## Coverage: 1 of 3 screens

| Builder caption | Runtime caption | Form | Captured? |
|---|---|---|---|
| SMS Center Settings | SMS (API) | `FrmSmsCenterSettings` | **yes** (misfiled under 13) |
| SMS Environment Settings | SMS (Scheduled) | `FrmSMSEnviro` | **NO** |
| Multiple SMS Type | SMS (Conditional) | `FrmSMSMultiType` | **NO** |

Also missing: the strip-tab→menu transition and the **`Sstup`** typo group header
(worth one capture as defect evidence).

## How to capture the rest

```powershell
python hms_capture2.py --module sal --list-strip     # 'Sale && Marketing' tab
python hms_capture2.py --module sal --list-menu      # may enumerate builder captions
python hms_capture2.py --module sal --screens        # walk + capture
```

If the tab's menu is empty as SA (module id 18 = OPT1 24 has 0 runtime rows), enter
through **`EXTRAs` tab → SMS → Sstup / Operations** instead and capture there.

## Safety rules while capturing

- **Do not press Send / Save / Delete** on any SMS screen — an action could queue or
  mark messages against the live `DBSendSMS` (18810 rows). `[INFERRED]` risk
- `SMSEnviro` screen may display a gateway URL/key → mask as `********` (spec §17/§26)
- Filename pattern `NN-Module_SubSection_Screen.png`

## Static captures

`MODULE_MANUALS_2026/` builder PNGs are design-time; not counted as runtime captures.
