# 12_EPABX — Screenshots

## Captured

| File | Bytes | Shows | Evidence |
|---|---|---|---|
| `11-EPABX_MenuTab.png` | 339429 | the EPABX module strip tab in the MDI window | `[VERIFIED-UI]` runtime capture |

Folder PNG count: **1** (`12_EPABX/1` in `screenshots/CAPTURE_INDEX.md`).

## Coverage gap — 1 of N

Runtime capture so far proves the module **exists and is reachable** (strip tab rendered),
but not its contents. Still missing:

| Missing | Why it matters |
|---|---|
| Call Entry screen (`TelCallEntry`) | the only transaction screen of the module |
| Wake-up Call screen (`FrmGuestWakeUp`) | second transaction screen |
| EPABX Setup / master screens | `TelCallTypeMast`, `TelCallCodeMast`, `TelExt`, `TelCallControlMast` |
| Call Report output (`rRepTel`) | the module's only menu report leaf |

Expected capture count when complete: **~4-6** PNGs (2 transaction + 1 setup + 1 report,
plus strip tab already held).

## How to capture the rest

```powershell
python hms_capture2.py --module epabx --list-strip      # locate strip tab
python hms_capture2.py --module epabx --list-menu       # list HMENU items
python hms_capture2.py --module epabx --screens         # walk + capture
```

Capture rules (spec §17, `SCREENSHOT_STANDARD.md`): filename
`NN-Module_SubSection_Screen.png`, full window incl. title bar, mask any credential field
as `********`. Do **not** click Save/Delete/Post/Settle/Print/Yes on Night-Audit-adjacent
flows; EPABX is not night-audit-adjacent but the same no-commit rule applies — open the
screen, capture, close with Cancel/Esc.

## Static captures

`MODULE_MANUALS_2026/` holds the builder-side EPABX screen set; those PNGs are builder/
design-time images, not runtime captures, and are therefore **not** counted here.
