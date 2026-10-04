# HMS Module-Wise Manuals — 26 Manuals (13 Hinglish + 13 English) ✅

Analysis HMS (analysishms.com, Demo Property) ke **saare 13 modules** ke professional training manuals —
**Hinglish + English dono versions**, real live screenshots ke saath,
**Master → Operations → Transactions → Reports → Screens Gallery → Appendix** structure me.

## 📚 Manuals — Final State

| # | Module | Screenshots | Hinglish (DOCX+PDF) | English (DOCX+PDF) | Highlights | |---|--------|------------:|---------------------|--------------------|------------ | | 1 | **Housekeeping** | 29 | ✅ | ✅ | Room status board, checklist, laundry | | 2 | **Front Office** | 41 | ✅ | ✅ | Guest lifecycle, folio, **Dated Reports 01–18 Sep + logic** | | 3 | **Reservation** | 9 | ✅ | ✅ | Shift+Q form, forecast, channel sync | | 4 | **POS** | 37 | ✅ | ✅ | 4 outlets (Restaurant/Bar/Room Service/TADKA), KOT→Bill→Settlement | | 5 | **Finance** | 17 | ✅ | ✅ | Voucher, TB/P&L/BS, TDS, bank rec | | 6 | **Inventory** | 27 | ✅ | ✅ | PO→MR→Bill→Issue cycle, recipe deduct | | 7 | **Banquet** | 22 | ✅ | ✅ | BEO, function sheet, event billing | | 8 | **Night Audit** | 15 | ✅ | ✅ | Day-close wizard, room charge post, GSTR-1 | | 9 | **HR/Payroll** | 11 | ✅ | ✅ | Leave/OT/loan, salary creation | | 10 | **Maintenance** | 6 | ✅ | ✅ | Assets, complaints, OOO blocking | | 11 | **Mall Management** | 9 | ✅ | ✅ | Shops, lease, meter billing | | 12 | **Members Mgmt** | 7 | ✅ | ✅ | Tiers, smart card lifecycle | | 13 | **EXTRAs** | 8 | ✅ | ✅ | Channel Mgr, WhatsApp, Smart Card, E-Invoice |

**Totals: 26 Word manuals · 26 PDFs · 2 Master PDFs (196 pages each) · 238 embedded screenshots per language (476 total) · 236 screenshot files · 0 missing**

## 📦 Combined Master PDFs (Print-Ready)

| File | Language | Pages | |------|----------|------: | | `Analysis_HMS_Master_Manual_ALL_Modules.pdf` | Hinglish | 196 | | `Analysis_HMS_Master_Manual_ALL_Modules_English.pdf` | English | 196 |

Dono me module bookmarks hain — print/binding ke liye direct ready.

## 📖 Har Manual ka Structure (Numbered)

1. Introduction & Module Overview (+ DB data-flow table — codebase/1.7GB backup se)
2. Login & Navigation (menu structure + login screenshot)
3. Master Module — setup screens
4. Operations Module — daily workflow screens
5. Transactions Module — billing (jahan applicable)
6. Reports Module — registers & audit
7. MIS / Tax / Logs (jahan applicable)
8. **Complete Screens Gallery** — G.01, G.02, G.03... numbered, saari captured screens ka reference
9. Appendix — daily workflow timetable, training Q&A, troubleshooting, contact

- Har screen pe: **Navigation Path + Screenshot + Elements table + Steps/Tips**
- Section numbering sequential (1..N) — TOC clean
- Gallery subsections `G.NN` numbered — print me order maintain
- Hinglish manuals training style me, English versions pure English

### Front Office Special — Dated Reports Analysis (Section 8)

Live system se **01-Sep-2026 se 18-Sep-2026** date-filter lagakar banaya gaya:
15 dated report screenshots (CheckIn Register, Cashier Report, Occupancy, Expected Checkout,
Room Change History, MIS reports, FOM Tax...) + har report ka **INTERNAL LOGIC**
(kaunsi table, kaunsa join, kaunsa date column). Plus:

- `HMS_Manuals/FrontOffice/FO_Logic_Explanation_01to18Sep.txt` — pura logic file
 (Data Model → 6 core tables, Master screens logic, Operations logic, Reports logic)

## 🗂 Folder Structure

```
HMS_Manuals/
├── Analysis_HMS_Master_Manual_ALL_Modules.pdf <- Hinglish master (196 p)
├── Analysis_HMS_Master_Manual_ALL_Modules_English.pdf <- English master (196 p)
├── <Module>/ <- 13 module folders
│ ├── <Module>_Module_Training_Manual.docx <- Hinglish
│ ├── <Module>_Module_Training_Manual_English.docx <- English
│ ├── *.pdf <- dono PDFs
│ └── screenshots/00_Login, 01_Master, 02_Operations, ...
├── FrontOffice/FO_Logic_Explanation_01to18Sep.txt <- FO logic file
├── skills/ <- generation toolkit
└── README.md
```

## 🔧 Skills / Toolkit (`skills/`)

| File | Kaam | |------|------ | | `hms-module-manual/SKILL.md` | Reusable module-manual process skill | | `generate_manual.js` | Config → professional DOCX generator (`node generate_manual.js <config.json> [output.docx]`) | | `<module>_config.json` | 13 Hinglish configs | | `<module>_config_english.json` | 13 English configs | | `sync_english_configs.py` | Hinglish → English sync (resumable translation, dict-cached, poisoned purge) | | `hms_translation_dict.json` | 900+ sentence translation cache | | `hms_local_fallback.json` | Local word-level fallback | | `renumber_configs.py` | Section numbering normalize + gallery G.NN numbering | | `audit_orphans.py` | Disk vs manual screenshot audit | | `add_orphans_to_configs.py` / `fix_login_orphans.py` | Orphan screenshots ko manuals me add karna | | `insert_dated_section.py` | FO dated reports section insert | | `merge_master_pdfs.py` | Dono master PDFs rebuild (pypdf, bookmarks) |

## 🔄 Regenerate Workflow (koi bhi change ke baad)

```bash
# 1. Configs edit karo (Hinglish), phir:
python HMS_Manuals/skills/renumber_configs.py # numbering fix (Hinglish)
for c in housekeeping frontoffice ...; do
 node HMS_Manuals/skills/generate_manual.js HMS_Manuals/skills/${c}_config.json
done

# 2. English sync + generate:
python HMS_Manuals/skills/sync_english_configs.py # resumable, dict-cached
python HMS_Manuals/skills/apply_manual_translations.py # manual translations merge
python HMS_Manuals/skills/renumber_configs.py _english
node HMS_Manuals/skills/generate_manual.js HMS_Manuals/skills/<c>_config_english.json

# 3. PDFs (Word COM) + masters:
python HMS_Manuals/skills/merge_master_pdfs.py # PDFs _pdf_temp me copy karke
```

Audit: `python HMS_Manuals/skills/audit_orphans.py` → saari screenshots manuals me hain ya nahi.

## 🔑 System Access

- URL: https://analysishms.com/login
- Credentials: apne admin se User ID / Password lein (demo property pe full admin access)
- Menu API: POST `/fetchsubmenu` (code=<topmodule>), POST `/fetchlastmenu` (code=<sub>&code2=<top>)
- Session expire → re-login; kuch screens demo pe permission-restricted (Split Bill, Members/Maintenance API)

## 📚 Module Codes (top-level sidebar)

| Module | Code | | Module | Code | |---|---|---|---|--- | | Finance | 11 | | Banquet | 18 | | Main Setup | 12 | | Night Audit | 19 | | Reservations | 13 | | Members Mgmt | 20 | | Front Office | 14 | | HR/Payroll | 21 | | House Keeping | 15 | | Maintenance | 22 | | Inventory | 16 | | Mall Management | 26 | | Point Of Sale | 17 | | EXTRAs | 27