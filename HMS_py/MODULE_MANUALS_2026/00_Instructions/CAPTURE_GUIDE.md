# CAPTURE_GUIDE — live screenshot pipeline

## Prereqs

- Desktop session (Windows login khula — RDP/physical console, service session nahi).
- Env clear: `QT_QPA_PLATFORM` unset, `HMS_FORCE_HEADLESS` unset
  (`$env:QT_QPA_PLATFORM=$null; $env:HMS_FORCE_HEADLESS=$null`).
- Preflight (EK attempt only — lockout 5/15min):
  `python -c "import sys; sys.path.insert(0,r'C:\Users\PC\Desktop\New folder (3)\png'); from HMS_py.core import auth; print(auth.check_login('ADITYA','112233'))"` → `True`

## Run

```
python -m HMS_py.tools.manual_pipeline.capture_module --module <NN_Module>
```
(cwd `png` repo root; ~40-60s per module — windows screen pe dikhenge, **mouse/keyboard mat chalao**)

## How it works

login → company row0 → `MainWindow(user, comp)` → `_on_sidebar_click(sidebar)` (modules_map se) → shell grab →
har leaf: `fn = _reg_ci[leaf]; res = fn(win)` + watchdog `QTimer(LEAF_WAIT_MS)` (modal `exec()` safe — fire hona wait karta hai) → `_grab` → `_close_toplevels`.

- Modal leaves: `exec()` block karta hai; watchdog/`qWait` ke baad `_fire()` retry.
- **Hidden-return rescue:** agar opener window construct karke `.show()` nahi karta (`fd_forms_ui` pattern) aur hidden `QWidget` return karta hai → tool `show()+grab()` karta hai (`capture_leaf`, status `ok`). Nahi toh status `failed`.
- MessageBox leaf: `QMessageBox` dikha → status `skipped_messagebox` (form capture nahi hota — manual me "gap").

## Validation

`validate_image`: **≥5000 bytes AND ≥64 unique colors** (blank 107-byte history reject).
Har run ke baad validate loop:

```
python -c "import pathlib,sys; sys.path.insert(0, r'C:\Users\PC\Desktop\New folder (3)\png'); from HMS_py.tools.manual_pipeline.capture_module import validate_image; d=pathlib.Path(r'<module>\screenshots'); bad=[p.name for p in sorted(d.glob('*.png')) if not validate_image(p)]; print('invalid:', bad)"
```
(`failed=[]` + `invalid: []` = green; manifest.json bhi dekho.)

## Failure playbook

| Symptom | Fix |
|---|---|
| "sidebar target not found" | `modules_map` ka `sidebar` value check — `mh.sidebar_modules()` list (lowercase, e.g. `front office`) |
| leaf status `missing` | leaf name registry me nahi — `_logic.json registry_hits` se naam match karo (case-insensitive chalta hai) |
| leaf status `skipped_messagebox` | coming_soon/inactive dialog — manual me "gap" likho (recapture nahi hoga) |
| leaf status `failed` / invalid image | ek baar dobara run; zaroorat ho `LEAF_WAIT_MS` badhao; hidden-return ho toh rescue path (`capture_leaf`) dekho |
| offscreen SystemExit | env vars clear karke desktop pe chalao (offscreen platform refuse) |
| login lockout | 15 min wait; brute-force mat karo |
