# HOUSE KEEPING MODULE

## 1. Purpose

House Keeping module hotel ki room maintenance, cleanliness, complaints, lost & found, aur room blocking manage karta hai. Front Office ke saath integrated hai — room status (Dirty/Clean) is module se control hota hai.

**Evidence:** [VERIFIED-VB6] — 17 menu items, 3 sub-groups: Transactions, Reports, Setup.

## 2. Menu Structure (from MENU_INVENTORY.md)

```
House Keeping (F)
├── Setup
│   └── Block Master
├── Transactions
│   ├── Complaint Master
│   ├── Complaint Clearance
│   ├── Lost / Found Entry
│   ├── Claim Entry
│   ├── Issue/Recd. Entry
│   ├── House Keeping Screen
│   ├── Item Issued On Cleaning
│   ├── Check Out Clearance Screen
│   ├── Room Block
│   └── House Keeping Op.Stock Entry
└── Reports
    ├── Room Status Report
    └── Complaint Detail
```

## 3. Screens (from vb6_form_inventory.md)

### House Keeping Forms (H*, HK*)
- **HHouseKeeping** — Main house keeping screen
- **HKHouseOpStk** — House keeping opening stock entry
- **HKIssRec** — Issue/Receive entry
- **HKRoomBlock** — Room blocking
- **HKRoomOpStk** — Room opening stock
- **HRoomCheckOutClearance** — Check-out clearance screen
- **HWIHistory** — House keeping issue history
- **rRepHouse** — House keeping report
- **rRepHousePreview** — House keeping report preview
- **FrmHouseStatus** — Room status report
- **FrmMeterReading** — Meter reading
- **FrmItemIssuedOnCleaning** — Item issued on cleaning

### Supporting Forms
- **frmBlockMast** — Block master
- **FrmLostFound** — Lost & found
- **FrmComplaintMast** — Complaint master
- **FrmComplaintClearing** — Complaint clearing

## 4. Masters

| Master | Table | Evidence |
|--------|-------|----------|
| Block Master | frmBlockMast | [VERIFIED-VB6] |
| Complaint Master | FrmComplaintMast | [VERIFIED-VB6] |
| Lost & Found | FrmLostFound | [VERIFIED-VB6] |
| Item Issued on Cleaning | FrmItemIssuedOnCleaning | [VERIFIED-VB6] |

## 5. Transactions

| Transaction | Form | Table | Evidence |
|-------------|------|-------|----------|
| Complaint Entry | FrmComplaintMast | — | [VERIFIED-VB6] |
| Complaint Clearance | FrmComplaintClearing | — | [VERIFIED-VB6] |
| Lost/Found Entry | FrmLostFound | — | [VERIFIED-VB6] |
| Claim Entry | FrmClaimEntry | — | [VERIFIED-VB6] |
| Issue/Receive Entry | HKIssRec | — | [VERIFIED-VB6] |
| Room Block | HKRoomBlock | RoomBlockOut | [VERIFIED-VB6] |
| Check-out Clearance | HRoomCheckOutClearance | — | [VERIFIED-VB6] |
| HK Opening Stock | HKHouseOpStk | — | [VERIFIED-VB6] |
| Item Issued on Cleaning | FrmItemIssuedOnCleaning | — | [VERIFIED-VB6] |

## 6. Operations

- **House Keeping Screen** — Room-wise house keeping status update
- **Room Block** — Block rooms for maintenance
- **Check-out Clearance** — Clear room after guest check-out
- **Complaint Management** — Register and clear guest complaints
- **Lost & Found** — Track lost and found items
- **Claim Entry** — Guest claims for lost items
- **Issue/Receive** — House keeping material issue/receive
- **Meter Reading** — Utility meter readings
- **Item Issued on Cleaning** — Track items used during cleaning

## 7. Reports

| Report | Form | Evidence |
|--------|------|----------|
| Room Status Report | FrmHouseStatus | [VERIFIED-VB6] |
| Complaint Detail | rRepHouse | [VERIFIED-VB6] |
| House Keeping Issue History | HWIHistory | [VERIFIED-VB6] |

## 8. Permissions

- House Keeping module access UserPermission form se control hota hai [VERIFIED-VB6]
- Per-user menu hierarchy MenuHelp table me OPT1..OPT4 columns [VERIFIED-SQL]

## 9. Business Rules

1. **Room status** — RoomMast.roomStat: 'D' = Dirty (Night Audit sets this for occupied rooms not checked-out) [VERIFIED-VB6]
2. **Room type** — RoomOcc.type: 'C' = Checked-out, 'O' = Occupied [VERIFIED-VB6]
3. **Room blocking** — RoomBlockOut table for room blocking [VERIFIED-VB6]
4. **Audit columns** — Har transaction me U_Name, U_EntDt, U_AE ('A'/'E'/'D') [VERIFIED-VB6]
5. **Multi-site** — LogSite_Code filters every query [VERIFIED-VB6]
6. **Check-out clearance** — Room clearance after guest check-out [VERIFIED-VB6]

## 10. VB6 Logic (from EXTRAS.text)

### House Keeping Screen (HHouseKeeping)
```vb
' Main house keeping screen for room status update
' Room status: Dirty → Clean → Inspected
```

### Room Block (HKRoomBlock)
```vb
' Room blocking for maintenance
' RoomBlockOut table
```

### Check-out Clearance (HRoomCheckOutClearance)
```vb
' Clear room after guest check-out
' Update room status to Dirty
```

### Complaint Management
```vb
' FrmComplaintMast — Complaint registration
' FrmComplaintClearing — Complaint resolution
```

### Lost & Found
```vb
' FrmLostFound — Lost & found item entry
' FrmClaimEntry — Guest claim for lost item
```

### Meter Reading (FrmMeterReading)
```vb
' Utility meter readings for rooms
```

## 11. SQL Logic (from SQL_TRACKING_RESULTS.md)

### Room Status
```sql
-- RoomMast: Code, Type='RO', roomStat ('D' dirty), LogSite_Code
-- RoomOcc: DocId, RoomNo, RoomCat, chkoutdate, Depdate, type ('C','O')
-- RoomBlockOut: room blocking
```

### Night Audit Room Status Roll
```sql
-- Occupied rooms not yet checked-out are set to Dirty:
Update RoomMAst set roomStat='D' 
WHERE CODE='<room>' AND LOGSITE_CODE='<site>'
-- (Room status codes: 'D' Dirty; type 'C'/'O' = checked-out/clean states excluded.)
```

## 12. Tables (from DATABASE_INVENTORY.md)

| Table | Usage Count | Purpose |
|-------|-------------|---------|
| RoomMast | 310 | Room master |
| RoomOcc | 457 | Room occupancy |
| RoomCat | 223 | Room category |
| RoomBlockOut | 53 | Room blocking |
| RoomBlock | — | Room block |

## 13. Fields

### RoomMast
- Code, Type='RO', roomStat ('D' dirty), LogSite_Code [VERIFIED-VB6]

### RoomOcc
- DocId, SNo, FolioNo, VType, Site_Code, vPrefix, GuestProf
- RoomCat, RoomType, RoomNo, RateCode, RoomRate
- ChkInDate, ChkInTime, Adult, Children, DepDate, DepTime
- Type ('C'/'O'), U_Name, U_EntDt, U_AE, Plancode, PlanAmt
- IncInRate, LOGSITE_CODE, PlanDisc, PlanDiscAmt, PlanDiscAppOn
- RRTaxInc, RRServiceChrg, ChngDate, RoomTarrif, RackRate, RoomTaxStru [VERIFIED-VB6]

### RoomBlockOut
- RoomNo, BlockDate, BlockReason, U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

## 14. Workflow

```
Check-out (Front Office)
  ↓
Check-out Clearance (HRoomCheckOutClearance)
  ├── Room status → Dirty
  └── Room cleaning assignment
       ↓
House Keeping Screen (HHouseKeeping)
  ├── Room cleaning status update
  ├── Item issued on cleaning
  └── Meter reading
       ↓
Room Status Report (FrmHouseStatus)
  ├── Dirty rooms list
  ├── Clean rooms list
  └── Blocked rooms list
       ↓
Night Audit
  └── Room status roll (occupied → Dirty)
```

## 15. Screenshots

Screenshots folder me available hain:
- House Keeping module ke screenshots `06_House_Keeping/screenshots/` me hain

## 16. Test Cases

| Test Case | Description | Evidence |
|-----------|-------------|----------|
| TC-HK-001 | Room status update (Dirty → Clean) | [VERIFIED-VB6] |
| TC-HK-002 | Room block for maintenance | [VERIFIED-VB6] |
| TC-HK-003 | Check-out clearance | [VERIFIED-VB6] |
| TC-HK-004 | Complaint registration | [VERIFIED-VB6] |
| TC-HK-005 | Complaint clearance | [VERIFIED-VB6] |
| TC-HK-006 | Lost & found entry | [VERIFIED-VB6] |
| TC-HK-007 | Claim entry | [VERIFIED-VB6] |
| TC-HK-008 | Issue/Receive entry | [VERIFIED-VB6] |
| TC-HK-009 | Meter reading | [VERIFIED-VB6] |
| TC-HK-010 | Room status report | [VERIFIED-VB6] |

## 17. Known Issues

1. **No stored procedures** — Application inline ADODB SQL use karta hai [VERIFIED-VB6]
2. **Limited integration** — House Keeping module Front Office se limited integration hai

## 18. Migration Notes

1. **Room status** — Real-time room status tracking me upgrade karna hoga
2. **Mobile integration** — House keeping staff ke liye mobile app karna hoga
3. **Task management** — Cleaning task assignment ko modern task management system se replace karna hoga
4. **Inventory integration** — Cleaning materials ko Inventory module se integrate karna hoga
5. **Meter reading** — Smart meter integration karna hoga
