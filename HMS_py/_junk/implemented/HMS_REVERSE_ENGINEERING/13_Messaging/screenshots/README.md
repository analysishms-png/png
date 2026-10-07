# 13_Messaging — Screenshots

## Captured (4 PNGs)

| File | Bytes | Shows | Evidence |
|---|---|---|---|
| `12-Messaging_MenuTab.png` | 511507 | Messaging strip tab in the MDI window | `[VERIFIED-UI]` |
| `B066_InBox_20260928_214517.png` | 146732 | InBox screen (timestamped capture run 2026-09-28) | `[VERIFIED-UI]` |
| `C3_INBOX_Inbox.png` | 612607 | InBox screen (second capture, larger/windowed) | `[VERIFIED-UI]` |
| `C3_P6S1_EXTRAs__SMS__Sstup__SMS_API.png` | 831044 | **SMS API setup screen** — filed here but belongs to hex 18 | `[VERIFIED-UI]` |

Folder PNG count: **4** (`13_Messaging/4` in `screenshots/CAPTURE_INDEX.md`).

## Coverage: 1 of 2 module screens

| Menu row | Screen | Captured? |
|---|---|---|
| `InBox` (L473) | `Inbox` | **yes** — 2 captures |
| `OutBox` (L474) | `Outbox` | **NO** |

OutBox is the only missing first-class screen of this module.

## Filing note (needs correction)

`C3_P6S1_EXTRAs__SMS__Sstup__SMS_API.png` shows the **SMS API** settings form
(`FrmSmsCenterSettings` / `SMSModule` path, module hex **18**), not an Inbox/Outbox view.
`[VERIFIED-UI]` from the window title text in the filename. It should live under
`15_Sales_Marketing/screenshots/` (the SMS module folder) — left in place here to avoid
deleting/moving capture evidence; flagged for the capture-index fix-up pass.

## How to capture the rest

```powershell
python hms_capture2.py --module msg --list-strip     # locate Messaging tab
python hms_capture2.py --module msg --list-menu      # expect InBox / OutBox
python hms_capture2.py --module msg --screens        # walk + capture
```

Follow `SCREENSHOT_STANDARD.md`: `NN-Module_SubSection_Screen.png`, full window with
title bar, mask credentials as `********`. Messaging has no Post/Settle/Save flows — safe
to open; still use Cancel/Esc to close.

## Static captures

`MODULE_MANUALS_2026/` holds builder/design-time PNGs; not counted as runtime captures.
