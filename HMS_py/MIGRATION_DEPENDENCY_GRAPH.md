# HMS Migration Dependency Graph

**Date:** 2026-10-03
**Purpose:** Track cross-module dependencies to prevent regression and ensure correct migration order

---

## Module Dependency Hierarchy

### Level 0: Foundation (No Dependencies)
```
core/db.py
    └── Config, connection, parameterized queries
core/auth.py
    └── VB6-compatible encrypt/decrypt, login
core/company.py
    └── Company table + INI fallback
core/menu.py
    └── DB-driven menu (User_Module)
core/menu_help.py
    └── MenuHelp tree, permissions
core/theme.py / theme_v2.py
    └── UI theming
```

### Level 1: Master Data (Depends on Foundation)
```
core/country.py     → db, auth
core/state.py       → db, auth
core/city.py        → db, auth
core/area.py        → db, auth, city
core/roomcategory.py → db, auth
core/roommaster.py  → db, auth, roomcategory
core/roomstatus.py  → db, auth, roommaster, roomcategory, guestfolio
core/guestprof.py   → db, auth, city, state, country
core/plans.py       → db, auth
core/seasonmaster.py → db, auth
core/companymaster.py → db, auth, ledger, acgroup
core/taxmaster.py   → db, auth
core/taxstru.py     → db, auth, taxmaster
core/paymenttype.py → db, auth
core/marketsegment.py → db, auth
core/businesssource.py → db, auth
core/gueststatus.py → db, auth
core/forexmaster.py → db, auth
core/ledger.py      → db, auth
core/acgroup.py     → db, auth
core/fixcharge.py   → db, auth
core/unit.py        → db, auth
core/item.py        → db, auth, unit, group, category
core/sundry.py      → db, auth
core/narr.py        → db, auth
core/depart.py      → db, auth
core/venue.py       → db, auth
core/banquet_masters.py → db, auth, venue
core/pos_masters.py → db, auth, depart
core/hr_masters.py  → db, auth
core/members_masters.py → db, auth
core/general_setup.py → db, auth, roomcategory, godown, enviro
core/epabx_masters.py → db, auth
core/smartcard.py   → db, auth
core/expenseentry.py → db, auth
core/consumption_master.py → db, auth, item
core/gravy_item.py  → db, auth, item, unit
core/party_master.py → db, auth, subgroup
core/menu_item_copy.py → db, auth, item, depart
```

### Level 2: Front Office (Depends on Master Data)
```
core/reservation.py     → db, auth, guestprof, roommaster, plans, voucher_prefix
core/checkin.py         → db, auth, reservation, guestprof, roommaster, roomstatus, roomcategory, plans, folio
core/checkout.py        → db, auth, checkin, folio, roomstatus, nightaudit
core/folio.py           → db, auth, guestprof, roommaster, revmast, paymenttype, taxstru
core/fo_ops.py          → db, auth, folio, roomstatus, guestfolio, booking, roommast, plandetails, epabx
core/nightaudit.py      → db, auth, folio, roommast, roomocc, guestfolio, depart, voucher_prefix, ledger, expsheet, revmast, paycharge
```

### Level 3: POS (Depends on Master Data + Front Office)
```
core/pos.py             → db, auth, depart, item, kot, sale1, sale2, suntran, paycharge, waiter, kotlog
core/pos_delivery.py    → db, auth, depart, sale1, assign_delivery, delivery_boy, voucher_type
core/pos_bill_deletion_ops.py → db, auth, sale1, paycharge, kot
core/pos_recycle_ops.py → db, auth, sale1, sale2, suntran, paycharge
```

### Level 4: Inventory (Depends on Master Data)
```
core/inventory.py       → db, auth, godown, item, itemcat, itemgroup, unit, depart, indent, gin, porder, purch2
core/purchase_enviro_ops.py → db, auth, enviro
core/open_item_consumption_ops.py → db, auth, consummast, item
```

### Level 5: Finance/Accounts (Depends on Master Data)
```
core/fa_voucher.py      → db, auth, subgroup, acgroup, voucher_type, voucher_prefix, narr, ledger
core/fa_ledger_ops.py   → db, auth, subgroup, acgroup, ledger
core/fa_masters_ops.py  → db, auth, subgroup, acgroup, narr, member
core/fa_reports.py      → db, auth, subgroup, acgroup, ledger, voucher
core/fa_tds_ops.py      → db, auth, subgroup, tds
core/fa_enviro.py       → db, auth, enviro, city, state, country
core/taxstru.py         → db, auth, taxmaster
core/year_end.py        → db, auth, subgroup, ledger
core/tally_export.py    → db, auth, subgroup, ledger, voucher
```

### Level 6: Banquet (Depends on Master Data + Front Office)
```
core/banquet_masters.py → db, auth, venue, item, depart
core/banquet_ops.py     → db, auth, banquet_masters, reservation, folio, roomocc, hallbooking, hallsale1, hallsale2
```

### Level 7: Membership/HR (Depends on Master Data)
```
core/hr_payroll.py      → db, auth, hr_masters, depart
core/members_masters.py → db, auth, subgroup, memcatmast, memfacilitymast
core/smartcard_ops.py   → db, auth, smartcardregistration, smartcardmaster, memberfamily
```

### Level 8: Reports (Depends on All Above)
```
core/reports.py         → db, auth, reservation, checkin, checkout, folio, nightaudit, pos, banquet, inventory, finance
core/channel/           → db, auth, reservation, roommaster, booking
```

---

## Critical Dependency Chains

### Chain 1: Guest Lifecycle (Front Office Core)
```
Guest Profile (guestprof)
    → Reservation (booking)
        → Check-In (guestfolio + roomocc)
            → Post Charges (paycharge)
            → Payment (paycharge REC)
            → Folio Display (folio + paycharge)
            → Check-Out (roomocc checkout + folio settle)
                → Night Audit (date roll + room status roll + revenue posting)
                    → Reverse Check-Out (if needed)
```

### Chain 2: POS Revenue Flow
```
Outlet/Table (depart/roommast)
    → KOT Entry (kot)
        → Sale Bill (sale1 + sale2 + suntran)
            → Settlement (paycharge + ledgeradj)
                → Night Audit (POS revenue posting)
```

### Chain 3: Banquet Flow
```
Venue/Event (venue)
    → Hall Booking (hallbooking)
        → Hall Bill (hallsale1 + hallsale2)
            → Settlement (paycharge + ledgeradj)
```

### Chain 4: Finance Posting
```
Voucher Entry (fa_voucher)
    → Ledger Posting (fa_ledger_ops + acgroup chain)
        → Current Balance Rebuild (currbal)
        → Night Audit (A/C Posting)
```

### Chain 5: Inventory Flow
```
Godown (godownmast)
    → Indent (indent)
        → Purchase Order (porder)
            → GRN/GIN (gin)
                → Purchase Bill (purch2)
                    → Stock Issue/Receipt/Transfer
```

---

## Migration Order (Topological Sort)

### Phase 1: Foundation (COMPLETE)
1. db.py, auth.py, company.py, menu.py, menu_help.py

### Phase 2: Master Data (COMPLETE)
2. All master data modules (country through expenseentry)

### Phase 3: Front Office (IN PROGRESS)
3. reservation.py
4. checkin.py
5. folio.py
6. checkout.py
7. fo_ops.py (room_change, merge_charge, reverse_merge_charge, re_settlement)
8. nightaudit.py

### Phase 4: POS (IN PROGRESS)
9. pos.py (KOT, Sale Bill, Settlement)
10. pos_delivery.py
11. pos_bill_deletion_ops.py
12. pos_recycle_ops.py

### Phase 5: Inventory (MOSTLY DONE)
13. inventory.py
14. purchase_enviro_ops.py
15. open_item_consumption_ops.py

### Phase 6: Finance (PARTIAL)
16. fa_voucher.py
17. fa_ledger_ops.py
18. fa_masters_ops.py
19. fa_reports.py
20. fa_tds_ops.py
21. fa_enviro.py
22. year_end.py
23. tally_export.py

### Phase 7: Banquet (NOT STARTED)
24. banquet_ops.py

### Phase 8: Membership/HR (NOT STARTED)
25. hr_payroll.py
26. smartcard_ops.py

### Phase 9: Reports (IN PROGRESS)
27. reports.py
28. channel/

---

## UI Dependency Mapping

### Shell Registry Dependencies
```
ui/shell.py
    → LoginDialog (auth)
    → CompanyDialog (company)
    → MainWindow (menu)
        → Sidebar modules (menu_help)
        → Menubar (menu_help)
            → Module leaves → UI openers
```

### Front Office UI Chain
```
ui/frontoffice.py (Check-In Browser)
    → GuestProfile (base_master)
    → WalkInEntry (walkin_rack_ui.py)
    → RoomStatus (roomstatus_ui.py)
    → Folio (folio_ui.py)
    → Checkout (checkout_ui.py)
    → Room Change (MISSING - needs fo_ops.room_change)
    → Amend Stay (MISSING)
    → Merge Room (MISSING - needs fo_ops.merge_charge)
    → Reverse Room Merge (MISSING - needs fo_ops.reverse_merge_charge)
    → Bill Reprint (MISSING - needs reports)
```

### POS UI Chain
```
ui/pos_masters_ui.py (Masters)
    → Session, Scheme, DelBoy, ItemCat, NCType, Waiter, Shift, Combo
ui/pos_na.py (Browser - READ ONLY)
    → KOT Browser
    → Sales Register
    → Item-wise Sale
ui/posting_forms_ui.py (Post Charges, Payment, Re-Settlement, Rev Checkout)
ui/posting_utility_ui.py (A/C Posting, Night Audit Process)
ui/walkin_rack_ui.py (Room View, Display Rack, RoomOcc Lookup, WalkIn Entry)
```

### Night Audit UI Chain
```
ui/nightaudit_reports_ui.py (Reports + Run Night Audit)
ui/posting_utility_ui.py (Posting Utility, Night Audit Process, Reverse Night Audit)
```

---

## Database Table Dependencies

### Core Tables (Written by Multiple Modules)
| Table | Written By | Read By |
|-------|------------|---------|
| GuestFolio | checkin, checkout, fo_ops | reservation, folio, nightaudit, reports |
| RoomOcc | checkin, checkout, fo_ops, nightaudit | reservation, roomstatus, nightaudit, reports |
| PayCharge | folio, checkout, nightaudit, pos, banquet | folio, checkout, nightaudit, reports, finance |
| Booking | reservation, checkin | checkin, reports |
| NightAuditLog | nightaudit | reports |
| Voucher_Prefix | reservation, checkin, checkout, nightaudit, pos, finance | all voucher writers |
| Enviro | nightaudit, general_setup | all modules (site config) |
| Depart | pos_masters, pos, banquet | pos, nightaudit, banquet, reports |
| SubGroup | finance, members, company | finance, members, reports |

### Critical Integrity Rules
1. **GuestFolio + RoomOcc** must be inserted atomically (check-in)
2. **PayCharge** folio linkage must be maintained
3. **Voucher_Prefix** serial must be atomic (UPDLOCK/HOLDLOCK)
4. **RoomMast.roomStat** updated by nightaudit (Dirty), checkout (Vacant), room change
5. **NightAuditLog** is the audit trail for reverse operations

---

## Regression Risk Matrix

| Change In Module | Risk To Modules | Mitigation |
|------------------|-----------------|------------|
| core/db.py | ALL | Parameterized queries, connection pooling |
| core/auth.py | ALL | Login flow, SA bootstrap |
| core/menu.py + menu_help.py | ALL UI | Menu rendering, permissions |
| core/folio.py | Front Office, Night Audit, POS, Banquet, Reports | Transaction boundaries, folio_balance |
| core/checkin.py | Front Office, Night Audit, Reports | DocId generation, RoomOcc linkage |
| core/checkout.py | Front Office, Night Audit, Reports | Settlement, reverse logic |
| core/nightaudit.py | Front Office, POS, Banquet, Finance, Reports | Single transaction, rollback on failure |
| core/pos.py | POS, Night Audit, Reports | KOT→Sale→Settlement chain |
| core/inventory.py | Inventory, POS (stock), Banquet (stock) | Stock movements |
| core/fa_voucher.py | Finance, Night Audit | Ledger posting, currbal |
| core/fa_ledger_ops.py | Finance, Night Audit | AcGroup chain, currbal rebuild |

---

## Test Dependency Order

```
tests/unit/ (core function tests)
    → tests/database/ (CRUD + transaction tests)
        → tests/integration/ (cross-module workflow tests)
            → tests/regression/ (full regression suite)
                → UI tests (offscreen)
```

---

## Notes

1. **Never modify** a lower-level module without running full regression on dependent modules
2. **Night Audit** is highest risk - must run in single transaction with full rollback
3. **Voucher numbering** must be consistent across all modules
4. **Site/Property isolation** (LogSite_Code) must be maintained in all queries
5. **Audit columns** (U_Name, U_EntDt, U_AE, LogSite_Code) required on every write