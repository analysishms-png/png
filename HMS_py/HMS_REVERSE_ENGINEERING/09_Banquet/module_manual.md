# BANQUET MODULE

## 1. Purpose

Banquet module hotel ki indoor/outdoor catering, venue booking, function management, aur banquet billing ke liye hai. Venue availability, menu catalog, function types, aur banquet settlement yahin manage hota hai. Front Office aur POS modules se integrated hai.

**Evidence:** [VERIFIED-VB6] — 65 menu items, 2 sub-groups: Indoor Catering, OutDoor Catering.

## 2. Menu Structure (from MENU_INVENTORY.md)

```
Banquet
├── Indoor Catering
│   ├── Banquet Operation
│   ├── Booking Inquiry
│   ├── Banquet Booking
│   ├── Catalog Selection
│   ├── Catalog Selection (duplicate)
│   ├── Banquet Billing
│   ├── Venue Availability
│   ├── Guest Comments
│   ├── Banquet Estimate Billing
│   ├── Banquet Booking Advance
│   ├── Reports
│   ├── Banquet Reports (MIS)
│   ├── Banquet Tax Reports
│   ├── Sales Register
│   ├── OutStanding Report
│   ├── Party wise OutStanding
│   ├── Cashier Report
│   ├── Booking Inquiry Detail
│   ├── Settlement Report
│   ├── Daily Function Sheet
│   ├── Item Wise Sales Report
│   ├── Company Wise Sale Report
│   ├── Function Wise Item Detail
│   ├── Cover Analysis
│   ├── Collection Summary
│   ├── Tax Report
│   ├── Tax Summary
│   ├── Banquet Taxwise Details
│   └── Banquet Settlement
└── OutDoor Catering
    ├── Venue Master
    ├── Menu Category
    ├── Item Group
    ├── Menu Item
    ├── Banquet Bill Sundry Setting
    ├── Operation
    ├── Booking Inquiry
    ├── Banquet Booking
    ├── Catalog Selection
    ├── Catalog Selection (duplicate)
    ├── Banquet Billing
    ├── Venue Availability
    ├── Guest Comments
    ├── Banquet Estimate Billing
    ├── Banquet Booking Advance
    ├── Reports
    ├── Banquet Reports (MIS)
    ├── Banquet Tax Reports
    ├── Sales Register
    ├── OutStanding Report
    ├── Party wise OutStanding
    ├── Cashier Report
    ├── Booking Inquiry Detail
    ├── Settlement Report
    ├── Daily Function Sheet
    ├── Item Wise Sales Report
    ├── Company Wise Sale Report
    ├── Function Wise Item Detail
    ├── Cover Analysis
    ├── Collection Summary
    ├── Tax Report
    ├── Tax Summary
    ├── Banquet Taxwise Details
    └── Banquet Settlement
```

## 3. Screens (from vb6_form_inventory.md)

### Banquet Forms (Hall*, Banq*)
- **BanqModule** — Banquet module entry
- **BanqAvailability** — Venue availability
- **HallBooking** — Banquet booking
- **HallBill** — Banquet billing
- **HallBillEstimate** — Banquet estimate billing
- **HallEstimate** — Banquet estimate
- **HallAcPostChrg** — Banquet charge posting
- **HallAdvanceDepDialog** — Banquet advance deposit dialog
- **HallChefPreCosting** — Chef pre-costing
- **HallItemGroupMast** — Item group master
- **HallMenuCatalog** — Menu catalog
- **HallMenuItemEntry** — Menu item entry
- **HallSundry** — Banquet sundry
- **CateringBooking** — Catering booking
- **FrmEventMast** — Event master
- **FrmFacilityMast** — Facility master
- **TravelAgencyPost** — Travel agency posting

## 4. Masters

| Master | Table | Evidence |
|--------|-------|----------|
| Venue Master | VenueMast | [VERIFIED-VB6] |
| Venue Features | FrmVenueFeat | [VERIFIED-VB6] |
| Function Type | FunctionType | [VERIFIED-VB6] |
| Event Master | FrmEventMast | [VERIFIED-VB6] |
| Facility Master | FrmFacilityMast | [VERIFIED-VB6] |
| Item Group | HallItemGroupMast | [VERIFIED-VB6] |
| Menu Catalog | HallMenuCatalog | [VERIFIED-VB6] |
| Menu Item | HallMenuItemEntry | [VERIFIED-VB6] |
| Sundry | HallSundry | [VERIFIED-VB6] |

## 5. Transactions

| Transaction | Form | Table | Evidence |
|-------------|------|-------|----------|
| Banquet Booking | HallBooking | HallBook | [VERIFIED-VB6] |
| Catering Booking | CateringBooking | HallBook | [VERIFIED-VB6] |
| Banquet Billing | HallBill | HallSale1 | [VERIFIED-VB6] |
| Estimate Billing | HallBillEstimate | HallSale1 | [VERIFIED-VB6] |
| Charge Posting | HallAcPostChrg | PayCharge | [VERIFIED-VB6] |
| Advance Deposit | HallAdvanceDepDialog | PayCharge | [VERIFIED-VB6] |
| Chef Pre-Costing | HallChefPreCosting | — | [VERIFIED-VB6] |
| Travel Agency Posting | TravelAgencyPost | — | [VERIFIED-VB6] |

## 6. Operations

- **Venue Availability** — Check venue availability for dates
- **Banquet Booking** — Book venue for functions
- **Catalog Selection** — Select menu items for function
- **Banquet Billing** — Generate banquet bill
- **Estimate Billing** — Generate estimate before function
- **Advance Deposit** — Collect advance payment
- **Charge Posting** — Post charges to folio
- **Chef Pre-Costing** — Calculate food cost before function
- **Guest Comments** — Record guest feedback
- **Travel Agency Posting** — Post travel agency charges

## 7. Reports

| Report | Form | Evidence |
|--------|------|----------|
| Sales Register | rHallRepView | [VERIFIED-VB6] |
| OutStanding Report | rHallRepView | [VERIFIED-VB6] |
| Party wise OutStanding | rHallRepView | [VERIFIED-VB6] |
| Cashier Report | rHallRepView | [VERIFIED-VB6] |
| Booking Inquiry Detail | rHallRepView | [VERIFIED-VB6] |
| Settlement Report | rHallRepView | [VERIFIED-VB6] |
| Daily Function Sheet | rHallRepView | [VERIFIED-VB6] |
| Item Wise Sales Report | rHallRepView | [VERIFIED-VB6] |
| Company Wise Sale Report | rHallRepView | [VERIFIED-VB6] |
| Function Wise Item Detail | rHallRepView | [VERIFIED-VB6] |
| Cover Analysis | rHallRepView | [VERIFIED-VB6] |
| Collection Summary | rHallRepView | [VERIFIED-VB6] |
| Tax Report | rHallRepView | [VERIFIED-VB6] |
| Tax Summary | rHallRepView | [VERIFIED-VB6] |
| Banquet Taxwise Details | rHallRepView | [VERIFIED-VB6] |

## 8. Permissions

- Banquet module access UserPermission form se control hota hai [VERIFIED-VB6]
- Per-user menu hierarchy MenuHelp table me OPT1..OPT4 columns [VERIFIED-SQL]
- Cashier-wise settlement tracking (Cashier Report) [VERIFIED-VB6]

## 9. Business Rules

1. **HallBook table** — DocId, Venue, FunctionType, event details [VERIFIED-VB6]
2. **HallSale1 table** — Banquet sale header [VERIFIED-VB6]
3. **Venue availability** — VenueMast with availability check [VERIFIED-VB6]
4. **Function types** — FunctionType master (birthday, wedding, corporate, etc.) [VERIFIED-VB6]
5. **Advance deposit** — HallAdvanceDepDialog with AdvType 'AD'/'AR' [VERIFIED-VB6]
6. **Charge posting** — HallAcPostChrg posts to PayCharge [VERIFIED-VB6]
7. **DocId pattern** — varchar(21) = site-prefix + Vtype + serial [VERIFIED-VB6]
8. **Audit columns** — Har transaction me U_Name, U_EntDt, U_AE ('A'/'E'/'D') [VERIFIED-VB6]
9. **Multi-site** — LogSite_Code filters every query [VERIFIED-VB6]
10. **Backdoor** — 'India12' → BanqAvailability (BUG-008/SRN-001 F-1) [VERIFIED-VB6]

## 10. VB6 Logic (from EXTRAS.text)

### Banquet Booking (HallBooking)
```vb
' Banquet booking form
' Key fields: DocId, Venue, FunctionType, event dates, guest count
' Tables: HallBook, VenueMast, FunctionType
```

### Banquet Billing (HallBill)
```vb
' Banquet billing form
' Key fields: DocId, Vtype, VNo, Vdate, menu items, quantities, rates
' Tables: HallSale1
```

### Advance Deposit (HallAdvanceDepDialog)
```vb
' Advance deposit dialog
' AdvType: 'AD' (Advance), 'AR' (Arrears)
' SQL: Select ... From ... Where Vtype In ('AD','AR') AND ContraDocID='<docid>'
' Delete from Ledger where Docid='<docid>' AND V_Type='<advtype>'
```

### Venue Availability (BanqAvailability)
```vb
' Venue availability check
' Backdoor: 'India12' → BanqAvailability (BUG-008/SRN-001 F-1)
```

### Catering Booking (CateringBooking)
```vb
' Catering booking form
' Key fields: event details, venue, menu selection
```

### Chef Pre-Costing (HallChefPreCosting)
```vb
' Chef pre-costing for food cost calculation
```

### Travel Agency Posting (TravelAgencyPost)
```vb
' Travel agency charge posting
```

## 11. SQL Logic (from SQL_TRACKING_RESULTS.md)

### HallBook Query
```sql
-- HallBook: DocId, Venue, FunctionType, event dates, guest count
-- VenueMast: venue master
-- FunctionType: function type master
-- HallSale1: banquet sale
```

### Advance Deposit Query
```sql
-- HallAdvanceDepDialog: AdvType 'AD'/'AR'
-- SQL: Select ... From ... Where Vtype In ('AD','AR') AND ContraDocID='<docid>'
-- Delete from Ledger where Docid='<docid>' AND V_Type='<advtype>'
```

## 12. Tables (from DATABASE_INVENTORY.md)

| Table | Usage Count | Purpose |
|-------|-------------|---------|
| HallBook | 96 | Banquet booking |
| HallSale1 | 56 | Banquet sale |
| VenueMast | 55 | Venue master |
| FunctionType | 47 | Function type |
| PayCharge | 873 | Folio charge posting |
| PayChargeH | 67 | Charge history |
| PayChargeLog | 37 | Posting audit |

## 13. Fields

### HallBook (Banquet Booking)
- DocId, Vtype, VNo, Vdate, Venue, FunctionType
- event dates, guest count, menu items
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### HallSale1 (Banquet Sale)
- DocId, SNo, Item, Qty, Rate, Amount
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### VenueMast
- Code, Name, Capacity, Features
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### FunctionType
- Code, Name, Description
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

## 14. Workflow

```
Venue Availability (BanqAvailability)
  ↓
Banquet Booking (HallBooking)
  ├── Select Venue (VenueMast)
  ├── Select Function Type (FunctionType)
  ├── Enter Event Dates
  └── Enter Guest Count
       ↓
Catalog Selection (HallMenuCatalog)
  ├── Select Menu Category
  ├── Select Menu Items
  └── Enter Quantities
       ↓
Estimate Billing (HallBillEstimate)
  ├── Generate Estimate
  └── Send to Client
       ↓
Advance Deposit (HallAdvanceDepDialog)
  ├── Collect Advance (AdvType 'AD')
  └── Post to Ledger
       ↓
Function Day
  ├── Chef Pre-Costing (HallChefPreCosting)
  └── Guest Comments
       ↓
Banquet Billing (HallBill)
  ├── Generate Final Bill
  ├── Tax Calculation
  └── Settlement
       ↓
Charge Posting (HallAcPostChrg)
  └── Post to PayCharge
       ↓
Reports
  ├── Sales Register
  ├── Settlement Report
  ├── Daily Function Sheet
  └── Tax Reports
```

## 15. Screenshots

Screenshots folder me available hain:
- Banquet module ke screenshots `09_Banquet/screenshots/` me hain

## 16. Test Cases

| Test Case | Description | Evidence |
|-----------|-------------|----------|
| TC-BAN-001 | Venue availability check | [VERIFIED-VB6] |
| TC-BAN-002 | Banquet booking | [VERIFIED-VB6] |
| TC-BAN-003 | Catalog selection | [VERIFIED-VB6] |
| TC-BAN-004 | Estimate billing | [VERIFIED-VB6] |
| TC-BAN-005 | Advance deposit | [VERIFIED-VB6] |
| TC-BAN-006 | Banquet billing | [VERIFIED-VB6] |
| TC-BAN-007 | Charge posting | [VERIFIED-VB6] |
| TC-BAN-008 | Chef pre-costing | [VERIFIED-VB6] |
| TC-BAN-009 | Guest comments | [VERIFIED-VB6] |
| TC-BAN-010 | Travel agency posting | [VERIFIED-VB6] |
| TC-BAN-011 | Sales register report | [VERIFIED-VB6] |
| TC-BAN-012 | Settlement report | [VERIFIED-VB6] |
| TC-BAN-013 | Daily function sheet | [VERIFIED-VB6] |
| TC-BAN-014 | Tax report | [VERIFIED-VB6] |
| TC-BAN-015 | Backdoor 'India12' (BUG-008) | [VERIFIED-VB6] |

## 17. Known Issues

1. **BUG-008/SRN-001 F-1:** Backdoor 'India12' → BanqAvailability [VERIFIED-VB6]
2. **Duplicate menu items:** "Catalog Selection" do baar appear hota hai [VERIFIED-VB6]
3. **No stored procedures** — Application inline ADODB SQL use karta hai [VERIFIED-VB6]
4. **Indoor/Outdoor duplication** — Indoor aur Outdoor catering ke liye duplicate menu items hain [VERIFIED-VB6]

## 18. Migration Notes

1. **Venue management** — Modern venue booking system me migrate karna hoga
2. **Menu catalog** — Digital menu catalog with images karna hoga
3. **Estimate billing** — Modern quotation/estimate system me upgrade karna hoga
4. **Advance deposit** — Payment gateway integration karna hoga
5. **Chef pre-costing** — Food cost calculation ko modern recipe management system se integrate karna hoga
6. **Function management** — MICE (Meetings, Incentives, Conferences, Exhibitions) system me upgrade karna hoga
7. **Travel agency** — Travel agency integration ko modern travel management system se replace karna hoga
