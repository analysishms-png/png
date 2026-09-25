# 05_HouseKeeping - Test Plan (module logic)

## 1. Coverage map (feature → test file)

| Feature | Test file | Scope |
|---|---|---|
| RoomOcc/roomstatus core validation | `tests/unit/test_core_validation.py` | L1 |
| HK/roomstatus UI forms wiring | `tests/test_wave_ui_forms.py` | L3 (batch rule L1,L2b me nahi — gap §4) |
| HK/roomstatus walkthroughs | `tests/test_ui_walkthroughs.py` | L3 (same gap) |
| RoomOcc shared flows (FO checkout path) | `tests/test_front_office.py` | L2b (27 checks) |
| Registry wiring (Room Status leaf) | `tests/unit/test_bugfix_batch.py` | L1 |

## 2. Layer commands + status

Official run: `run_module_tests --module 05_HouseKeeping --layers L1,L2b` (`TEST_RESULTS.md` 2026-09-25T12:23:32):

| Layer | Command | Result |
|---|---|---|
| L1 | `pytest tests/unit -q --tb=line` | PASS 408 |
| L2b | `pytest tests/test_front_office.py -q --tb=line` | PASS 27 |

**fails=0**.

## 3. Manual test script (live app, 10 steps)

1. SA login → sidebar `house keeping` → `Room Status` (modal, `Ctrl+R`) → rack grid dikha (`room_rack` join).
2. Room select → HK status set (e.g. cleaned) → `RoomMast.RoomStat` update + `U_Name` audit.
3. Block out room + reason → `RoomBLockOut` row + `RoomStat='M'`.
4. Rack pe blocked overlay verify (`_blocked_map`).
5. Unblock → `RoomStat=''` + block-row closed.
6. Move room (occupied line) → `RoomOcc` room field swap with reason.
7. `Complaint Master` → `_open_fv_list` viewer khula (0 rows — khali list OK).
8. `Complaint Clearance` → ClearingDate-ordered viewer.
9. `Lost / Found Entry` → `GuestServicesDialog` modal; entry save → `LostFoundDetail` row; `Claim Entry` viewer me filter `ClaimedBy<>''` verify.
10. `House Keeping Report` → RoomStat-wise summary (report leaf `HouseREP` — curated capture me nahi, menu se kholein).

## 4. Known issues / gaps

- `test_wave_ui_forms.py`/`test_ui_walkthroughs.py` = **L3** — batch rule (L1,L2b) me run nahi (HK ke primary UI tests); full-run me alag se (batch gate ke baad L3 log me milenge).
- `ComplaintDetail`/`LostFoundDetail` live 0 rows — viewers/write flows empty DB par exercise nahi (data-gap).
- `other=8`: Complaint/Lost-Found/Claim features classify `other` me (header rule) — capture list curated `Room Status` tak hi; `House Keeping Report` (reports=1) bhi curated-out (gap).
- `Room Status` menuHelp rows `FDOMenu` (FO bucket) — HK ke docs me shared caption note kiya (MODULE_MAP cross-ref).
- L1 count run-to-run vary (380/384/408) — DB-discovery-driven param tests (order/DB-dependent, KI-6 family); koi fail nahi is run me.
