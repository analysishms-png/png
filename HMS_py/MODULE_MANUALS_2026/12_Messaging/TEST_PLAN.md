# 12 - Messaging (SMS) - Test Plan & Results

## 1. Commands run (2026-09-25)

```bash
python -m HMS_py.tools.manual_pipeline.collect_logic --module 12_Messaging
# first: masters=2 ops=0 reports=0 hidden=0 other=4 (curated ops "SMS Center" did not exist)
# after modules_map fix masters=[SMS (API)] ops=[SMS (Scheduled)]:
# → masters=5 ops=0 reports=0 hidden=0 other=1
#   NOTE: _norm_caption strips "(...)" (menu_help.py:35-38) → all "SMS (...)" captions
#   normalize to "sms" = master_caps → masters-first ordering captures them (ops bucket 0);
#   registry_hits: masters=[SMS (API)] operations=[SMS (Scheduled)] — true layer mapping kept

python -m HMS_py.tools.manual_pipeline.run_module_tests --module 12_Messaging --layers L1,L2b
# first run: FAIL L1 "1 failed, 412 passed" — same transient cross-session red as 13
#   (untracked test_main_setup_desktop_ui.py mid-edit by concurrent workstream)
# rerun after their test went green: → L1 413 passed, L2b 27 passed, fails=0 (rewritten)

# capture after leaves fix (SMS Center → SMS (Scheduled)): [] → [SMS (API), SMS (Scheduled)]
python -u -m HMS_py.tools.manual_pipeline.capture_module --module 12_Messaging --username SA --password KANPUR
# → login preflight ok / main window up / sidebar 'extras' ok
# → [capture] masters/SMS (API): ok ; [capture] operations/SMS (Scheduled): ok
# → captured 2 leaves, failed=[] exit=0

python -m HMS_py.tools.manual_pipeline.check_manual --module 12_Messaging
```

## 2. Test layers coverage

| Layer | Suite | Result |
|---|---|---|
| L1 | `tests/unit` (413) | PASS (fails=0 after rerun) |
| L2b | `tests/test_front_office.py` (27) | PASS |

## 3. Known issues / notes

- **Classify norm-collision (module-specific):** `_norm_caption` trailing-paren strip collapses `SMS (API)/(Scheduled)/(Conditional)/SMS` to one key `"sms"` — curated masters leaf poisons the whole family into masters (ops bucket counts 0 even with curated ops leaf). Capture unaffected (uses leaf list directly). Candidate future fix: classify should check `caption_disp`-based curated matches or skip norm-collision when a curated ops entry exists.
- `SMS Environment Settings` registry-only (menuHelp NO ROW); `SMS Send`/`SMS Center Settings` = `_coming_soon` fallbacks if `sms_http_ui`/`sms_ui_mod` None.
- `Sstup` = VB6 misspelling caption (Flag N, Param NULL, SMSSETUP) — parity keep.
- Cross-session interference (both L1 attempts): concurrent workstream's untracked desktop-surface TDD red; final rollup reruns full L1.
- KI-1: `DBSendSMS.DocId/VNo`, `EmailSMSForward.MAX(Id)+1`; `SMSEnviro` singleton no lock; sparse queue data (KI-2 analog).

## 4. Gate checklist (`check_manual --module 12_Messaging`)

REQUIRED: README/DATABASE/FRONTEND/BACKEND/TEST_PLAN/TEST_RESULTS/`_logic.json` + layer READMEs (01_Masters, 02_Operations, 03_Reports); manifest `failed=[]` ✓; 2 leaf PNGs + layer copies; no placeholder markers.
→ Expected `12_Messaging: COMPLETE` (verify output before ledger note).
