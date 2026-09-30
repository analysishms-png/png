# 10_Night_Audit — Screenshots

Canonical store: **`screenshots/10_Night_Audit/`** (root capture store, 7 PNGs).
Manifest only here (no copies). Index: `screenshots/CAPTURE_INDEX.md`.

> **Blocklist applies**: the Night Audit **Process** and **Reverse** confirmation paths were
> never executed — captures are navigation/menu level only.

## Inventory

| File | Bytes | Shows | Evidence |
|---|---|---|---|
| `B032_Menu_20260928_195600.png` | 347437 | top menu state during NA pass | `[VERIFIED-UI]` |
| `C2_Night_Audit__GST_Reports__GSTR-23.png` | 175351 | GST Reports → GSTR-2(3) | `[VERIFIED-UI]` |
| `C2_Night_Audit__GST_Reports__GSTR-24A.png` | 175805 | GST Reports → GSTR-2(4A) | `[VERIFIED-UI]` |
| `C2_Night_Audit__GST_Reports__GSTR-24B.png` | 176037 | GST Reports → GSTR-2(4B) | `[VERIFIED-UI]` |
| `C2_Night_Audit__GST_Reports__Reconcilia.png` | 177220 | GST Reports → Reconciliation (GSTR-2A) | `[VERIFIED-UI]` |
| `C3_S1_Night_Audit__GST_Reports__GSTR-1.png` | 176307 | GST Reports → GSTR-1 | `[VERIFIED-UI]` |
| `C4_L1+sub_Night_Audit__Operation__Reverse__20260928_214233.png` | 38545 | **Operation group open, Reverse Night Audit row visible** (menu only) | `[VERIFIED-UI]` |

## Coverage — 7 captures of 32 runtime rows

Captured: strip/menu context, **entire GST Reports group (5 of 6)**, Reverse NA menu row.
**Not captured (by design or gap):**

| Missing | Reason |
|---|---|
| Night Audit Process (o3=13) | **blocklist — never click** |
| Reverse Night Audit confirmation | **blocklist — never confirm** |
| Charges Posting / Account Posting forms | blocklist (Post-class screens) |
| Control Panel (`FrmControlPanel`) | not captured yet — read-only, safe |
| Operation → Guest Audit Ledger | report viewer — safe, not yet captured |
| Reports group ×12 outputs | report viewers — safe, not yet captured |
| Log group ×2 (Night Audit Log, Charges Remove Log) | read-only viewers — **high value, safe** |
| Tally POS Report | safe, not captured |
| Upload Process (`FrmUploadProcess`) | may prompt network/FTP — capture menu state only |

## How to capture the safe remainder

```powershell
python hms_capture2.py --module night_audit --list-strip
python hms_capture2.py --module night_audit --list-menu
python hms_capture3.py --module night_audit          # walk; STOP before Process/Reverse confirms
```
Safe = menu expansion + report viewer opens + log viewers.
**Never**: `Night Audit Process`, `Reverse Night Audit` → any confirmation, Save/Delete/Post/Settle/Print/Yes.
