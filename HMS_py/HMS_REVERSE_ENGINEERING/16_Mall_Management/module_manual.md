# MALL MANAGEMENT MODULE

## 1. Purpose

Mall Management module hotel ke mall/shop management, facility billing, meter reading, aur department operations ke liye hai. Facility master, location facilities, party locations, aur facility billing yahin manage hota hai. Godrej door lock integration bhi available hai.

**Evidence:** [VERIFIED-VB6] — 11 menu items, 2 sub-groups: Operations, Reports.

## 2. Menu Structure (from MENU_INVENTORY.md)

```
Mall Management
├── Operations
│   ├── Operations
│   ├── Facility Master
│   ├── Location Facilities
│   ├── Party Locations
│   ├── Meter Reading
│   ├── Facility Billing
│   └── Facility Sundry Setting
└── Reports
    └── Facility Bill Register
```

## 3. Screens (from vb6_form_inventory.md)

### Mall Management Forms
- **ModuleDoorLock** — Mall door lock module
- **DepOpStk** — Department opening stock
- **KClStk** — Kitchen closing stock
- **FrmChangeDepart** — Change department
- **frmLockGodrejSettings** — Godrej lock settings
- **frmGodrejLockSettings** — Godrej lock settings

### Shared Forms (from Main Setup)
- **FrmLocationMast** — Location master
- **FrmLocationFacilities** — Location facilities
- **FrmParty** — Party master
- **FrmPartyLocations** — Party locations
- **FrmFacilityMast** — Facility master
- **FrmMeterReading** — Meter reading

## 4. Masters

| Master | Table | Evidence |
|--------|-------|----------|
| Facility Master | FrmFacilityMast | [VERIFIED-VB6] |
| Location | LocationMast | [VERIFIED-VB6] |
| Location Facilities | LocationFacilities | [VERIFIED-VB6] |
| Party Locations | FrmPartyLocations | [VERIFIED-VB6] |
| Department | Depart | [VERIFIED-VB6] |

## 5. Transactions

| Transaction | Form | Table | Evidence |
|-------------|------|-------|----------|
| Facility Billing | — | FacilityBill1 | [VERIFIED-VB6] |
| Meter Reading | FrmMeterReading | — | [VERIFIED-VB6] |
| Department Opening Stock | DepOpStk | DepOpStk | [VERIFIED-VB6] |
| Kitchen Closing Stock | KClStk | KClStk | [VERIFIED-VB6] |

## 6. Operations

- **Facility Management** — Manage mall facilities
- **Location Management** — Manage mall locations
- **Party Locations** — Manage party-wise locations
- **Meter Reading** — Record utility meter readings
- **Facility Billing** — Generate facility bills
- **Facility Sundry Settings** — Configure facility sundry
- **Department Operations** — Manage mall departments/shops
- **Door Lock Integration** — Godrej door lock management

## 7. Reports

| Report | Form | Evidence |
|--------|------|----------|
| Facility Bill Register | — | [VERIFIED-VB6] |

## 8. Permissions

- Mall Management module access UserPermission form se control hota hai [VERIFIED-VB6]
- Per-user menu hierarchy MenuHelp table me OPT1..OPT4 columns [VERIFIED-SQL]

## 9. Business Rules

1. **FacilityBill1** — Facility billing with LocationCode backfill [VERIFIED-VB6]
2. **SunTranFacility** — Vtype '8'→'FACL' for facility transactions [VERIFIED-VB6]
3. **DepOpStk/KClStk** — Department/kitchen closing stock for mall shops [VERIFIED-VB6]
4. **Godrej door lock** — Mall door lock integration via frmGodrejLockSettings [VERIFIED-VB6]
5. **Audit columns** — Har transaction me U_Name, U_EntDt, U_AE ('A'/'E'/'D') [VERIFIED-VB6]
6. **Multi-site** — LogSite_Code filters every query [VERIFIED-VB6]
7. **MallMgmt menu** — Menu builder: Proc_165_0_14C1708("Mall Management", &H19, 4, ...) [VERIFIED-VB6]

## 10. VB6 Logic (from EXTRAS.text)

### Mall Management Menu
```vb
Proc_165_0_14C1708("Mall Management", &H19, 4, vbNullString, vbNullString, 0, "MallManage", 1)
Proc_165_0_14C1708("Operations", &H19, 3, vbNullString, vbNullString, &HFF, "MallOpr", 1)
Proc_165_0_14C1708("Operations", &H19, 0, "Operations", vbNullString, 0, "MallMgmt", 1)
Proc_165_0_14C1708("Facility Master", &H19, 0, "Operations", vbNullString, 1, "MallMgmt", 1)
Proc_165_0_14C1708("Location Facilities", &H19, 0, "Operations", vbNullString, 2, "MallMgmt", 1)
Proc_165_0_14C1708("Party Locations", &H19, 0, "Operations", vbNullString, 3, "MallMgmt", 1)
Proc_165_0_14C1708("Meter Reading", &H19, 0, "Operations", vbNullString, 4, "MallMgmt", 1)
Proc_165_0_14C1708("Facility Billing", &H19, 0, "Operations", vbNullString, 5, "MallMgmt", 1)
Proc_165_0_14C1708("Facility Sundry Setting", &H19, 2, "Operations", vbNullString, 6, "MallMgmt", 1)
Proc_165_0_14C1708("Reports", &H19, 3, vbNullString, vbNullString, &HFF, "MallMgmtRpt", 1)
Proc_165_0_14C1708("Facility Bill Register", &H19, 1, "Reports", vbNullString, 0, "MallRep", 1)
```

### Department Change (FrmChangeDepart)
```vb
' Department/outlet switching for mall
' Used in Mall Management context
```

### Door Lock Settings (frmGodrejLockSettings)
```vb
' Godrej door lock settings for mall
```

### Mall Report (MallRep_Click)
```vb
Private Sub MallRep_Click() 'DF4BE8
```

## 11. SQL Logic (from SQL_TRACKING_RESULTS.md)

### Facility Bill Query
```sql
-- FacilityBill1: LocationCode backfill
-- SunTranFacility: Vtype '8'→'FACL'
-- DepOpStk/KClStk: Department/kitchen closing stock
```

## 12. Tables (from DATABASE_INVENTORY.md)

| Table | Usage Count | Purpose |
|-------|-------------|---------|
| DepOpStk | — | Department opening stock |
| KClStk | — | Kitchen closing stock |
| FacilityBill1 | — | Facility bill |
| SunTranFacility | — | Sundry transaction facility |

## 13. Fields

### DepOpStk
- Department, Item, Qty, Rate
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### KClStk
- Department, Item, Qty, Rate
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### FacilityBill1
- DocId, LocationCode, Facility, Amount
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

## 14. Workflow

```
Facility Master (FrmFacilityMast)
  ├── Location Facilities (FrmLocationFacilities)
  ├── Party Locations (FrmPartyLocations)
  └── Facility Sundry Setting
       ↓
Operations
  ├── Meter Reading (FrmMeterReading)
  ├── Department Opening Stock (DepOpStk)
  └── Kitchen Closing Stock (KClStk)
       ↓
Facility Billing
  ├── Generate Bill (FacilityBill1)
  └── Post to SunTranFacility (Vtype 'FACL')
       ↓
Reports
  └── Facility Bill Register
```

## 15. Screenshots

Screenshots folder me available hain:
- Mall Management module ke screenshots `16_Mall_Management/screenshots/` me hain

## 16. Test Cases

| Test Case | Description | Evidence |
|-----------|-------------|----------|
| TC-MALL-001 | Facility master | [VERIFIED-VB6] |
| TC-MALL-002 | Location facilities | [VERIFIED-VB6] |
| TC-MALL-003 | Party locations | [VERIFIED-VB6] |
| TC-MALL-004 | Meter reading | [VERIFIED-VB6] |
| TC-MALL-005 | Facility billing | [VERIFIED-VB6] |
| TC-MALL-006 | Facility sundry setting | [VERIFIED-VB6] |
| TC-MALL-007 | Department opening stock | [VERIFIED-VB6] |
| TC-MALL-008 | Kitchen closing stock | [VERIFIED-VB6] |
| TC-MALL-009 | Facility bill register | [VERIFIED-VB6] |
| TC-MALL-010 | Godrej door lock settings | [VERIFIED-VB6] |

## 17. Known Issues

1. **Godrej door lock** — Legacy Godrej lock integration, modern access control karna hoga [VERIFIED-VB6]
2. **Limited module** — Mall Management module limited hai — sirf 11 menu items [VERIFIED-VB6]
3. **No stored procedures** — Application inline ADODB SQL use karta hai [VERIFIED-VB6]

## 18. Migration Notes

1. **Mall management** — Modern mall/shop management system me migrate karna hoga
2. **Facility billing** — Facility billing ko modern billing system se replace karna hoga
3. **Meter reading** — Smart meter integration karna hoga
4. **Godrej door lock** — Legacy Godrej lock integration ko modern access control system se replace karna hoga
5. **Department operations** — Department/shop operations ko modern retail management system se replace karna hoga
