# HMS Module-Wise Manuals — ALL 13 MODULES COMPLETE ✅

Analysis HMS (analysishms.com) ke **saare modules** ke professional Word training manuals —
real screenshots ke saath, **Module → Master → Operations → Transactions → Reports → Appendix** structure me.

## 📚 Manuals (13 modules)

| # | Module | Manual File | Screenshots | Highlights |
|---|--------|------------|-------------|------------|
| 1 | **Housekeeping** | Housekeeping_Module_Manual.docx | 27 | Original manual + live screenshots |
| 2 | **Front Office** | FrontOffice_Module_Training_Manual.docx (+ PDF, 25 pages) | 37 | Guest lifecycle, folio, DB tables |
| 3 | **Reservation** | Reservation_Module_Training_Manual.docx | 8 | Shift+Q form, forecast |
| 4 | **POS** | POS_Module_Training_Manual.docx | 26 | 4 outlets, KOT→Bill→Settlement flow |
| 5 | **Finance** | Finance_Module_Training_Manual.docx | 13 | Voucher, TB/P&L/BS, TDS |
| 6 | **Inventory** | Inventory_Module_Training_Manual.docx | 20 | PO→MR→Bill→Issue cycle |
| 7 | **Banquet** | Banquet_Module_Training_Manual.docx | 21 | BEO, function sheet, billing |
| 8 | **Night Audit** | NightAudit_Module_Training_Manual.docx | 14 | Day-close checklist, GSTR-1 |
| 9 | **HR/Payroll** | HRPayroll_Module_Training_Manual.docx | 11 | Leave/OT, salary creation |
| 10 | **Maintenance** | Maintenance_Module_Training_Manual.docx | 6 | Assets, complaints, OOO |
| 11 | **Mall Management** | MallManagement_Module_Training_Manual.docx | 6 | Shops, lease, meter billing |
| 12 | **Members Mgmt** | MembersMgmt_Module_Training_Manual.docx | 5 | Categories, smart card lifecycle |
| 13 | **EXTRAs** | Extras_Module_Training_Manual.docx | 5 | Channel Mgr, WhatsApp, E-Invoice |

**Total: 204 screenshots · 13 Word manuals · 1 PDF**

## 📖 Har Manual ka Structure

1. Introduction & Module Overview (+ DB data-flow table — codebase/backup se)
2. Login & Navigation (menu structure)
3. Master Module — setup screens
4. Operations Module — daily workflow screens
5. Transactions Module — billing (jahan applicable)
6. Reports Module — registers & audit
7. MIS/Tax Reports (jahan applicable)
8. Appendix — daily workflow timetable, training Q&A, troubleshooting, contact

Har screen pe: **Navigation Path + Screenshot + Elements table + Steps/Tips**.
Content Hinglish training style me hai — direct staff training ke liye ready.

## 🗂 Folder Structure

```
HMS_Manuals/
├── <Module>/                          <- har module ka folder
│   ├── <Module>_Module_Training_Manual.docx
│   └── screenshots/00_Login, 01_Master/01_Operations, 02_Reports...
├── skills/
│   ├── hms-module-manual/SKILL.md     <- reusable process skill
│   ├── generate_manual.js             <- docx generator (config → manual)
│   ├── extract_docx.py                <- docx text extractor
│   └── *_config.json                  <- 13 module configs
└── README.md
```

## 🔄 Naya Manual Regenerate Karna

```bash
node HMS_Manuals/skills/generate_manual.js HMS_Manuals/skills/<module>_config.json
```

## 🔑 System Access

- URL: https://analysishms.com/login
- Demo property 103: user `sa` / pass `balaji` (full admin)
- Menu API: POST `/fetchsubmenu` (code=<topmodule>), POST `/fetchlastmenu` (code=<sub>&code2=<top>)
- Session expire → re-login; kuch screens demo pe permission-restricted (Split Bill)

## 📚 Module Codes (top-level sidebar)

| Module | Code | | Module | Code |
|---|---|---|---|---|
| Finance | 11 | | Banquet | 18 |
| Main Setup | 12 | | Night Audit | 19 |
| Reservations | 13 | | Members Mgmt | 20 |
| Front Office | 14 | | HR/Payroll | 21 |
| House Keeping | 15 | | Maintenance | 22 |
| Inventory | 16 | | Mall Management | 26 |
| Point Of Sale | 17 | | EXTRAs | 27 |
