# 08 - Banquet - Test Plan & Results

## 1. Commands run (2026-09-25)

```bash
python -m HMS_py.tools.manual_pipeline.collect_logic --module 08_Banquet
# pre-fix: masters=0 ops=0 reports=14 hidden=0 other=15
# post-fix (HallM added to module_names/master_modules): masters=8 ops=2 reports=14 other=13

python -m HMS_py.tools.manual_pipeline.run_module_tests --module 08_Banquet --layers L1,L2b
# → fails=0 (TEST_RESULTS.md)

# capture after leaf fixes: Hall Booking Operations → Banquet Booking (shell:1400),
#   masters [] → [Venue Master] (shell:1094), reports [] → [Banquet Taxwise Details] (shell:1664)
python -u -m HMS_py.tools.manual_pipeline.capture_module --module 08_Banquet --username SA --password KANPUR
# → captured 3 leaves, failed=[] exit=0

python -m HMS_py.tools.manual_pipeline.check_manual --module 08_Banquet
```

## 2. Test layers coverage

| Layer | Suite | Result |
|---|---|---|
| L1 | `tests/unit` | PASS (fails=0) |
| L2b | `tests/test_front_office.py` | PASS (fails=0) |

## 3. Known issues / notes

- modules_map fixes: `Hall Booking Operations` was a **non-existent key** → `Banquet Booking`; `HallM` module_name missing (Venue/Catalog/Events rows outside buckets) → added with `master_modules=("HallM",)` — masters bucket 0→8.
- `Banquet Taxwise Details` capture = `skipped_messagebox` (direct QMessageBox via `_open_report`) — report grid PNG absent, manual note carries it.
- Empty data tables (KI-2 analog): `HallBook1=0`, `HallSale1Est=0`, `HallStock*=0`, `CatalogMast=0`, `BookingInquiry=0`, `SeasonMast*=0`, `VenueMast1=0` — line/config flows not exercisable live.
- `_next_vno` (banquet_ops:85) = KI-1 race family (HallBook VNo).

## 4. Gate checklist (`check_manual --module 08_Banquet`)

REQUIRED: README/DATABASE/FRONTEND/BACKEND/TEST_PLAN/TEST_RESULTS/`_logic.json` + 3 layer READMEs; manifest `failed=[]` ✓; leaf PNGs + layer copies; no placeholder markers.
→ Expected `08_Banquet: COMPLETE` (verify output before ledger note).
