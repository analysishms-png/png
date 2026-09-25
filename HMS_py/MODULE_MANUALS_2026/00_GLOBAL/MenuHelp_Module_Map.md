# MenuHelp → Module Map (live, Moondata2627, menuHelp rows = 9212)

Source: `core/menu_help.py` live queries, 2026-09-25.
Regenerate: `python -c "import sys,json; sys.path.insert(0, r'C:\Users\PC\Desktop\New folder (3)\png'); from HMS_py.core import menu_help as mh; print(json.dumps(mh.modules())); print(json.dumps([s['name'] for s in mh.sidebar_modules()]))"`

## Sidebar roots (11)

`finance, main setup, reservation, front office, house keeping, inventory, point of sale, banquet, night audit, hr/payroll, extras`

(In sidebar_modules() se aate hain — L1 nodes: Opt1<>0, Opt2/3/4=0, Flag='N'; captions `_norm_caption` se lowercase hain.)

## Analysis.ini key 9 (15 entries) vs sidebar (11) — known mismatch

Analysis.ini ke 15 module entries me se 4 ke paas sidebar root nahi hain:
**EPABX / Messaging / Members Mgmt / Sale & Marketing** (+ Mall Management entry).
→ `modules_map` me Messaging/Members Mgmt/Sale & Marketing ka `sidebar='extras'`; EPABX ka apna `epabx` sidebar section hai (sidebar_buttons.py:70 - own L1, `extras` nahi). Module_Name grouping `modules()` se hota hai.

## menuHelp `Module_Name` values (97 total, live)

`POSEnt, UNMAPPED, FDORep, FA, FAT, fate, NightAuditGST, NightAuditGSTR, MatRep, POSRep, farp, FAREPORT, Mast, GEN, GENMas, FO, Mas, Pos, POSMas, HL, HallM, CCenter, CCenterMas, fae, fame, Util, UTL, Reserv, ReservationEnt, ResOpEnt, ResStatusRpt, AdvRecdRpt, ReservationMIS, FrontDesk, FDO, FDOMenu, FDOReports, TFDOForms, FDOForms, FDOMIS, FDOMISRep, FDOTax, FDOTaxr, HouseKeeping, TransHK, HouseEnt, ReportsHK, HouseREP, Purchase, Matop, Purch, MatLok, MatStat, MatReports, MatVat, MatVatR, Restaurant, POSReports, POSMIS, MISREP, PosTax, PosTaxRep, Banquet, oper, Hallop, HallReport, BanqRep, HallMIS, BanqRepMIS, HallTax, HallTaxP, NightAudit, NightAudito, NightAuditoR, NightAuditR, NightAuditRR, NightAuditL, NightAuditLR, PayRep, PR, PRM, MemMas, MemOpr, PayRoll, PayO, PayOpr, PayR, TallyRPTS, TallyPOSRPT, EXTR, EXTSMS, SMSSETUP, EXTSMSSETUP, SMSOPR, EXTSMSOPR, Mem, NightAuditMenu`

Unmapped-to-folder values (batch discovery me assign hote hain): `UNMAPPED, FO, Pos, MatRep, EXTR` (+ kuch overlap).

## Module_Name → manual folder (`tools/manual_pipeline/modules_map.MODULES`)

| # | Folder | sidebar | Module_Name groups | core files (HMS_py/core/*.py) |
|---|---|---|---|---|
| 1 | 01_Finance | finance | FA, FAT, fate, farp, FAREPORT, fae, fame, TallyRPTS, TallyPOSRPT | fa_voucher, fa_ledger_ops, fa_masters_ops, fa_reports, fa_tds_ops, fa_enviro, ledger, acgroup, narr, tdscat, tdscerti, tally_export |
| 2 | 02_MainSetup | main setup | Mast, GEN, GENMas, Mas, HL, HallM, CCenter, CCenterMas, Util, UTL | roommaster, roomcategory, plans, company, guestprof, depart, unit, item, taxmaster, paymenttype, marketsegment, general_setup, sys_config, sundry, sundry_type |
| 3 | 03_Reservation | reservation | Reserv, ReservationEnt, ResOpEnt, ResStatusRpt, AdvRecdRpt, ReservationMIS | reservation, booking, guestprof |
| 4 | 04_FrontOffice | front office | FrontDesk, FDO, FDOMenu, FDOForms, FDORep*, FDOReports, TFDOForms, FDOMIS, FDOMISRep, FDOTax, FDOTaxr | checkin, checkout, folio, fo_ops, guestprof, guest_folio, guest_services, roomstatus, room_occ, account_merge, booking, reservation |
| 5 | 05_HouseKeeping | house keeping | HouseKeeping, TransHK, HouseEnt, ReportsHK, HouseREP | roomstatus, room_occ |
| 6 | 06_Inventory | inventory | Purchase, Matop, Purch, MatLok, MatStat, MatReports, MatVat, MatVatR | inventory, purchase, item, unit, sundry |
| 7 | 07_POS | point of sale | Restaurant, POSEnt, POSMas, POSRep, POSReports, POSMIS, MISREP, PosTax, PosTaxRep | pos, pos_entry, pos_kot, pos_sales, pos_stock, pos_table, pos_masters, pos_hall, pos_packing, pos_delivery, pos_happy |
| 8 | 08_Banquet | banquet | Banquet, oper, Hallop, HallReport, BanqRep, HallMIS, BanqRepMIS, HallTax, HallTaxP | hall_booking, banquet_ops, banquet_masters, venue, packagemaster, seasonmaster |
| 9 | 09_NightAudit | night audit | NightAudit, NightAudito, NightAuditoR, NightAuditR, NightAuditRR, NightAuditL, NightAuditLR, NightAuditGST, NightAuditGSTR, NightAuditMenu | nightaudit, year_end, guest_folio, folio |
| 10 | 10_HRPayroll | hr/payroll | PR, PRM, PayRoll, PayO, PayOpr, PayR, PayRep | hr_masters, hr_payroll |
| 11 | 11_EPABX | epabx | (menuHelp me EPABX rows hi nahi — discovery 2026-09-25; leaves registry se: Call Type, Telephone Call Entry) | epabx_masters, epabx_ops |
| 12 | 12_Messaging | extras | SMSSETUP, EXTSMSSETUP, SMSOPR, EXTSMSOPR, EXTRSMS*, EXTSMS | sms_comm, sms_enviro, sms_http |
| 13 | 13_MembersMgmt | extras | Mem, MemMas, MemOpr | members_masters, member_billing, facility_billing |
| 14 | 14_SaleMarketing | extras | (dedicated group nahi — Business Source rows `Module_Name='Mas'` me hain jo 02 ke bucket me count hote hain; discovery 2026-09-25; leaves registry se: Market Segment, Business Source) | marketsegment, businesssource, guestprof |

\* `FDORep`/`EXTRSMS` map values me live list me na milne par bhi curated rakha gaya hai (extra rows = 0 harm; missing group = rows empty).

## Classification rules (`collect_logic.classify()`)

1. `Flag='V'` → **hidden**
2. `Flag='R'` → **reports**
3. paren-preserving EXACT `caption_disp` ∈ curated `leaves['masters']` → **masters** (case-insensitive; KI-10 fix step 1)
4. paren-preserving EXACT `caption_disp` ∈ curated `leaves['operations']` → **operations** (KI-10 fix step 2 — exact curation sabse pehle honour hoti hai)
5. normalized caption ∈ curated `leaves['masters']` (paren leaves ka stripped norm legacy caps me **exclude** — collision root) YA `Module_Name ∈ master_modules` → **masters**
6. normalized caption ∈/contains curated `leaves['operations']` → **operations** (variant match, e.g. "Walk In Check In" ⊃ "check in")
7. baaki sab → **other** bucket (count `menuhelp.counts.other` — kabhi drop nahi hota; manual README §3 me compulsory likhna hai)

Curated lists source: `MODULE_FIX_PLANS/FODER/HMS_MenuHelp_Wise_MasterOpReports/04_FrontOffice/*` (existing Master/Op/Report classification) + registry leaves.

FO pilot (`_logic.json`, 2026-09-25): `masters=0, operations=1, reports=33, hidden=0, other=29`
(masters=0 = FO ke menuHelp rows me curated master captions/Module_Name nahi — Guest Profile jaise masters `Mast/GEN` (02_MainSetup) groups me baithe hain; manual me document hota hai.)

Batch final (Task 12, 2026-09-25): all 14 modules complete (check_manual 14/14); rows 11/14 discovery resolved as noted above; KI-10 norm-collision quirk (`_norm_caption` trailing-paren strip) documented in 00_Instructions/TEST_PLAN_MASTER.md - classify tool fix APPLIED 2026-09-25 (exact caption_disp precedence + paren-leaf norm exclusion; 12_Messaging counts 5/0/0/0/1 -> 2/1/0/0/3, other 13 modules zero change, TDD test green).
