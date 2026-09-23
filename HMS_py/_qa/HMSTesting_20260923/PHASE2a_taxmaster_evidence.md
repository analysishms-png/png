# PHASE 2a Evidence — Tax Master live (2026-09-23)

## Result: PASS (form opens, no crash)

### Steps
1. Login SA / KANPUR → Company Details (Moon and Mars Resorts / MMR / 2026-27) → Login
2. MainWindow: Moon and Mars Resorts { 2026-27 } (PID 10900)
3. Sidebar Main Setup → title: Moon and Mars Resorts { 2026-27 } - Main Setup
4. General Setup menu → Tax Master submenu → leaf: Tax Master / Tax Structure / Payment Type / Parameter / Revenue Group Setting
5. Menu click path flaky (submenu closed without opening form); Ctrl+Shift+T opened form reliably
6. Form title: "Tax Master - hwnd 3345166"

### Tax Master form OK
- Columns: TaxCode | TaxName | Short | Ledger | Nature | Active
- Record Details fields (flat RevMast): Code*, Name*, Short Name, Ledger A/C (FK->SubGroup), Payable A/C, Unregistered A/C, Sundry Code, Nature, Round Off (Yes/No), Active Y/N
- First row: KKSGSS
- Edit (row select + Ctrl+E): State=Edit, data loaded:
  - Code=KKSGSS (disabled), Name=SGST (SALES)? / Short=SGSS / Payable=KKSGSS / Unregistered=KK000479 / Nature=KKSGSS / RoundOff=No / Active=Y
- Cancel (Esc): State=Idle (production data NOT saved)

### PHASE 2a fix validated
- QWidget import fix in base_master.py — form constructs
- core/taxmaster.py flat RevMast FieldType=T CRUD — list_all/get work (9 rows known from DB probe)

## Bugs observed (log for PHASE 2b/3)
1. **BUG-GENMENU**: General Setup top-level only shows Tax Master > and Printing Parameters >. Missing vs shell registry: Payment Type, Parameter, Revenue Group Setting (inside Tax Master submenu — present) AND missing Plan/City/Sundry/Narration/Venue/Department claimed in hint text "ported: Plan/City/Sundry/Narration/Venue/Department". Hint claims forms not in menu (menu.py _menus DB-driven vs shell.py registry mismatch).
2. **BUG-TAXMENU-CLICK**: Hover/click Tax Master submenu leaf often closed menu without activating action (coordinate click at 410,126 failed; keyboard Down/Right/Enter opened wrong form State Master). Ctrl+Shift+T worked.
3. **BUG-TAX-LABEL-CLIP**: Record Details top labels (Code*, Name*) appear clipped/overlapping in first ~50px of groupbox (OCR garbled "d d" etc.). Form layout too tall for 10 fields without scroll; labels partially hidden under group title row.
4. **BUG-TAX-ROWHEIGHT**: Table shows only ~1 row visible (row height huge / viewport tiny under search box); 9 RevMast rows require scroll. Not a data bug (reload loads all) but UX.
5. **BUG-TAX-CANCEL-RESIDUAL**: After Esc cancel, last fields still showed "No" and "Y" (roundoff/active) — _clear_fields may not reset defaults for those fields or label/value misalignment (two values under Active Y/N label).
6. **BUG-STATE-MENU**: Keyboard nav from General Setup opened State Master (P2-c) instead of Tax Master — menu action wiring wrong for first submenu item path.
7. **UIA**: uia_inspect/find on "Tax Master - HMS_py" returns Window not found (partial title match issue); ocr_window + list_windows work.

## Repro
- taxmaster_repro.py → FORM_OK ROWS 9 (headless)
- Live: Ctrl+Shift+T after Main Setup module active
