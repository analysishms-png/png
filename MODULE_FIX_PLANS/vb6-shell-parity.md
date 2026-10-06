# VB6 → Python Shell Parity Spec

Source of truth: live `C:\Drive\HMS2526\HMS.exe` (VB6 `FODER/MDIForm1.frm`) vs Python `HMS_py/ui/shell.py`.

All VB6 geometry below is **measured via Win32 `EnumChildWindows`**, not guessed from OCR.

---

## 1. VB6 Shell Frame (measured, `ThunderRT6MDIForm`, 1944x1032 maximized)

| Region | Win32 class | Rect (x1,y1)-(x2,y2) | Size | Notes |
|---|---|---|---|---|
| Top banner | `ThunderRT6PictureBoxDC` | (0,35)-(1920,155) | 1920x120 | Logo/banner; **replaced by submenu when a rail module is clicked** |
| Left rail | 11 × `Button` | (0,155)-(161,~870) | 161x~65 each | Vertical module rail |
| MDI client | `MDIClient` | (161,155)-(1741,968) | 1580x813 | Child forms render here |
| Right sidebar | `ThunderRT6PictureBoxDC` | (1740,155)-(1920,968) | 180x813 | Date + per-country clocks + Exit |
| Status bar | `StatusBar20WndClass` | (0,968)-(1920,1009) | 1920x41 | Bottom panels |

### 1.1 Left rail — 11 modules (exact order, exact casing)

| # | Caption | Rect |
|---|---|---|
| 1 | `Finance` | (0,155)-(161,220) |
| 2 | `Main Setup` | (0,219)-(161,285) |
| 3 | `Reservation` | (0,285)-(161,350) |
| 4 | `Front Office` | (0,350)-(161,415) |
| 5 | `House Keeping` | (0,414)-(161,480) |
| 6 | `Inventory` | (0,480)-(161,545) |
| 7 | `Point Of Sale` | (0,545)-(161,610) |
| 8 | `Banquet` | (0,609)-(161,675) |
| 9 | `Night Audit` | (0,675)-(161,740) |
| 10 | `HR/Payroll` | (0,740)-(161,805) |
| 11 | `EXTRAs` | (0,804)-(161,870) |

Below rail: `In Box` (0,995)-(161,1033), `Property Status` (0,1029)-(161,1076).

### 1.2 Main Setup sub-bar — 9 modules (clicked `Main Setup` → banner becomes this)

Buttons `204x60`, y=35, laid horizontally:

`General Setup` (0) · `Front Office` (204) · `Point of Sale` (408) · `Banquet` (612) · `Inventory` (816) · `Finance` (1020) · `Utility` (1224) · `HR/Payroll` (1428) · `Members Mgmt` (1632)

Matches `FODER/MDIForm1.frm` source order. `EPABX` is a **leaf under HR/Payroll**, not a 10th module.

### 1.3 Right sidebar

- `05/Oct/2026` date button — (1740,344)-(1920,412)
- 6 country/clock buttons — (1740,410)-(1928,827), `188x68` each, captions are local times (`9:09:08 PM`, `11:39:08 AM`, `5:39:08 PM`, `4:39:08 PM`, `12:39:08 AM`, `1:39:08 AM`); drawn labels read `Canada`, `Italy`, …
- `Exit` — (1830,779)-(1920,827)

### 1.4 Status bar panels (OCR-read, no child HWNDs)

`SA` | `Property Site : Kanpur Siw` | `Dt. : 05/Oct/2026 9:00:04 PM` | `CAPS` `NUM` | `Hide Left Menu` | `Hide Right Menu` | `Full Screen`

---

## 2. Python Shell Today (screenshot `py_01.png`)

- Title: `Moon and Mars Resorts { 2026-27 } - front office`
- Category menubar: `Tourism Forms` · `MLS.` · `Operations` · `Reports` · `Tax Reports`
- Horizontal module bar, **lowercase**: `finance`, `main setup`, `reservation`, `front office`, `house keeping`, `inventory`, **`front office` (DUPLICATE)**, `point of sale`, `banquet`, `night audit`, `hr/payroll`, `extras`, **`EPABX`**, **`Messaging`**, `Members Mgmt`
- Body placeholder: `Top menubar se form kholo`
- Status bar: `sa_ Property Site : MMR. S/w Dt: 05/Oct/2026 20:04:35` · `DB: DESKTOP-7P5A55R / MOONData2627`

---

## 3. Delta → work items

| ID | Delta | Severity | Work |
|---|---|---|---|
| S-1 | VB6 = vertical **left rail** of 11 modules; Python = horizontal bar of 15 | HIGH | Add left rail, remove/retire duplicate `front office` + `EPABX` + `Messaging` at top level |
| S-2 | Missing **top banner** (1920x120) | MED | Add banner/logo strip |
| S-3 | Missing **right sidebar** (date, 6 clocks, Exit) | MED | Add right sidebar |
| S-4 | Status bar content differs | MED | Match VB6 panels; keep Python `DB:` panel if useful |
| S-5 | Module captions lowercase in Python, Title Case in VB6 | LOW | Use exact VB6 casing |
| S-6 | No `Hide Left Menu` / `Hide Right Menu` / `Full Screen` toggles | MED | Add 3 working toggles |
| S-7 | Main Setup 9-module sub-bar | ✅ DONE | Already implemented; **keep as is** |

## 4. Hard constraints

- Reuse existing `menubar_for()` / `_form_registry()` plumbing in `HMS_py/core/menu_help.py`.
- No new dependencies. No DB schema change.
- Rail module → sub-bar mapping must reuse the DB-driven module data already present; do not hardcode a second copy of the module list.
- `EPABX` must appear only as an HR/Payroll leaf, never as a rail or sub-bar item.
- Existing tests must stay green (`HMS_py/tests`).