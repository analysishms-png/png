# MEMBERS MANAGEMENT MODULE

## 1. Purpose

Members Management module hotel ke loyalty program, membership cards, member billing, aur facility management ke liye hai. Member categories, revenue tracking, facility billing, aur member communication yahin manage hota hai. Smart card integration bhi available hai.

**Evidence:** [VERIFIED-VB6] — 24 menu items, 2 sub-groups: Operations, Reports.

## 2. Menu Structure (from MENU_INVENTORY.md)

```
Members Mgmt
├── Operations
│   ├── Auto Settle Card Balance
│   ├── Member Visit Entry
│   ├── Member Used Facility Entry
│   ├── Member Facility Billing
│   ├── Member Bill Printing
│   ├── Member Assistant
│   ├── Outstation Member Entry
│   ├── Member Category Change Entry
│   ├── Payment Receive Entry
│   ├── Revenue Change Entry
│   ├── Payment Due Letter Entry
│   ├── Member Category Change (Conditional)
│   └── Member Renewal Entry
└── Reports
    ├── Member Visit Details
    ├── Member Mailing Labels
    ├── Member Bill Missing Report
    ├── Member Sales Register
    ├── Member Ledger
    ├── Member Tax Report
    ├── Payment Due Letter Report
    └── Member Birthday/Anniversary Details
```

## 3. Screens (from vb6_form_inventory.md)

### Member Forms (Mem*, mem*)
- **MemberModule** — Member module entry
- **MembershipMast** — Member master
- **MemAssistant** — Member assistant
- **MemBillPrintingModule** — Member bill printing
- **MemAutoSettleCardBalance** — Auto settle card balance
- **MemCatMast** — Member category master
- **MemFacilityBilling** — Member facility billing
- **MemFacilityEntry** — Member facility entry
- **MemPaymentReceive** — Member payment receive
- **MemRenewalEntry** — Member renewal entry
- **MemSelectCategory** — Member select category
- **MemTagadaLetter** — Tagada letter (dues letters)
- **MemVisitEntry** — Member visit entry
- **MemberProposedMemInf** — Proposed member info
- **memAgeRevMast** — Member age wise revenue master
- **memCatChngCond** — Member category change conditional
- **memCatChngEntry** — Member category change entry
- **memCatRevMast** — Member category revenue master
- **memCategoryFacilities** — Member category facilities
- **memFacilityMast** — Member facility master
- **memOutStationEntry** — Outstation member entry
- **MemberShipRevenueMast** — Membership revenue master
- **MembershipRevMast** — Membership revenue master
- **MemAddRWA** — Member address RWA
- **MemberFamily** — Member family table

### Smart Card Forms
- **ModuleSmartCard** — Smart card module
- **ModuleDoorLock** — Door lock module
- **SmartCardMast** — Smart card master
- **SmartCardRegistration** — Smart card registration
- **SmartCardRecharge** — Smart card recharge
- **SmartCardRefund** — Smart card refund
- **SmartCardLostReIssue** — Smart card lost/re-issue
- **frmLockGodrejSettings** — Godrej lock settings
- **frmGodrejLockSettings** — Godrej lock settings

## 4. Masters

| Master | Table | Evidence |
|--------|-------|----------|
| Member Category | MemCatMast | [VERIFIED-VB6] |
| Member Master | MembershipMast | [VERIFIED-VB6] |
| Member Family | MemberFamily | [VERIFIED-VB6] |
| Member Revenue | MembershipRevMast | [VERIFIED-VB6] |
| Member Facility | memFacilityMast | [VERIFIED-VB6] |
| Member Category Revenue | memCatRevMast | [VERIFIED-VB6] |
| Member Category Facilities | memCategoryFacilities | [VERIFIED-VB6] |
| Member Age Revenue | memAgeRevMast | [VERIFIED-VB6] |
| Smart Card | SmartCardRegistration | [VERIFIED-VB6] |
| Smart Card Master | SmartCardMaster | [VERIFIED-VB6] |

## 5. Transactions

| Transaction | Form | Table | Evidence |
|-------------|------|-------|----------|
| Member Visit | MemVisitEntry | MemVisitEntry | [VERIFIED-VB6] |
| Facility Entry | MemFacilityEntry | MemFacilityBilling | [VERIFIED-VB6] |
| Facility Billing | MemFacilityBilling | MemBill | [VERIFIED-VB6] |
| Payment Receive | MemPaymentReceive | PayCharge | [VERIFIED-VB6] |
| Member Renewal | MemRenewalEntry | MembershipMast | [VERIFIED-VB6] |
| Category Change | memCatChngEntry | MembershipMast | [VERIFIED-VB6] |
| Smart Card Registration | SmartCardRegistration | SmartCardRegistration | [VERIFIED-VB6] |
| Smart Card Recharge | SmartCardRecharge | SmartCardRegistration | [VERIFIED-VB6] |
| Smart Card Refund | SmartCardRefund | SmartCardRegistration | [VERIFIED-VB6] |
| Auto Settle Card | MemAutoSettleCardBalance | SmartCardRegistration | [VERIFIED-VB6] |

## 6. Operations

- **Member Registration** — Create member with category, personal details
- **Member Visit** — Track member visits
- **Facility Usage** — Record facility usage by members
- **Facility Billing** — Generate member bills
- **Payment Receive** — Receive member payments
- **Member Renewal** — Renew membership
- **Category Change** — Change member category
- **Smart Card** — Smart card registration, recharge, refund
- **Tagada Letter** — Generate dues letters
- **Member Assistant** — Member self-service assistant

## 7. Reports

| Report | Form | Evidence |
|--------|------|----------|
| Member Visit Details | rMemberRepView | [VERIFIED-VB6] |
| Member Mailing Labels | rMemberRepView | [VERIFIED-VB6] |
| Member Bill Missing Report | rMemberRepView | [VERIFIED-VB6] |
| Member Sales Register | rMemberRepView | [VERIFIED-VB6] |
| Member Ledger | rMemberRepView | [VERIFIED-VB6] |
| Member Tax Report | rMemberRepView | [VERIFIED-VB6] |
| Payment Due Letter Report | rMemberRepView | [VERIFIED-VB6] |
| Member Birthday/Anniversary Details | rMemberRepView | [VERIFIED-VB6] |

## 8. Permissions

- Members Mgmt module access UserPermission form se control hota hai [VERIFIED-VB6]
- Per-user menu hierarchy MenuHelp table me OPT1..OPT4 columns [VERIFIED-SQL]
- Member category SubGroup.CompanyType se link hota hai [VERIFIED-SQL]

## 9. Business Rules

1. **MembershipMast table** — Member master with category, personal details [VERIFIED-VB6]
2. **MemCatMast table** — Member category master (79 refs) [VERIFIED-VB6]
3. **MemberFamily table** — Member family details (70 refs) [VERIFIED-VB6]
4. **SmartCardRegistration** — Smart card registration with reward points [VERIFIED-VB6]
5. **Reward points** — RewardBal, RewardSale, RewardPoint, RedeemPoint [VERIFIED-SQL]
6. **Member category** — SubGroup.CompanyType se link: `Select SubCode as Code,Name,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='KK' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='KK')` [VERIFIED-SQL]
7. **Audit columns** — Har transaction me U_Name, U_EntDt, U_AE ('A'/'E'/'D') [VERIFIED-VB6]
8. **Multi-site** — LogSite_Code filters every query [VERIFIED-VB6]
9. **Godrej door lock** — Smart card integration with Godrej door locks [VERIFIED-VB6]
10. **MemAddRWA** — Member address RWA (31 rows) [VERIFIED-SQL]

## 10. VB6 Logic (from EXTRAS.text)

### Member Master (MembershipMast)
```vb
' Member master form
' Key fields: Code, Name, Category, CardNo, DOB, Address, Phone, Email
' Tables: MembershipMast, MemCatMast, MemberFamily
```

### Member Category (MemCatMast)
```vb
' Member category master
' Key fields: Code, Name, Description
' Linked to: SubGroup.CompanyType
```

### Smart Card Registration (SmartCardRegistration)
```vb
' Smart card registration
' Key fields: Code, CardNo, HW_Id, CardIssDate, CardValidUpto
' Reward points: RewardBal, RewardSale, RewardPoint, RedeemPoint
```

### Smart Card Recharge (SmartCardRecharge)
```vb
' Smart card recharge
' Update SmartCardRegistration Set RewardBal=IsNull(RewardBal,0), ...
```

### Member Facility Billing (MemFacilityBilling)
```vb
' Member facility billing
' Key fields: MemCode, Entrydate, FcCode, Amount
' Table: MemFacilityBilling
```

### Tagada Letter (MemTagadaLetter)
```vb
' Dues letters for members
' Key fields: Code, Type
```

### Member Category Change (memCatChngEntry)
```vb
' Member category change entry
' Conditional change based on memCatChngCond
```

## 11. SQL Logic (from SQL_TRACKING_RESULTS.md)

### Member Category Query
```sql
Select SubCode as Code,Name,CardNo From SubGroup 
where ActiveYN=1 and (LOGSITE_CODE='KK' or LOGSITE_CODE='HO') 
AND CompanyType in (Select Code from MemCatMast where LogSite_Code='KK') 
Order By Name
```

### Smart Card Reward Normalization
```sql
Update SmartCardRegistration Set RewardBal=IsNull(RewardBal,0),
       RewardSale=IsNull(RewardSale,0),RewardPoint=IsNull(RewardPoint,0),
       RedeemPoint=IsNull(RedeemPoint,0) Where RedeemPoint Is Null
```

### Member Group Query
```sql
Select Distinct AcGroup.GroupCode,
  Case When SubGroup.CompanyType='Corporate' Then 'COMPANY' 
       When SubGroup.CompanyType='Travel Agency' Then 'TRAVEL AGENT' 
       When IsNull(MemCatMast.Name,'')<>'' Then 'MEM-'+IsNull(MemCatMast.Name,'') 
       Else AcGroup.GroupName End GroupName,
  SubGroup.Nature,SubGroup.CompanyType 
from ACGROUP 
left Join SubGroup on ACGroup.GroupCode=SubGroup.GroupCode 
Left Join MemCatMast On SubGroup.CompanyType=MemCatMast.Code
```

## 12. Tables (from DATABASE_INVENTORY.md)

| Table | Usage Count | Purpose |
|-------|-------------|---------|
| MemCatMast | 79 | Member category |
| SmartCardRegistration | 78 | Smart card registration |
| MemberFamily | 70 | Member family |
| MemAddRWA | 39 | Member address RWA |
| MembershipRevMast | 36 | Membership revenue |
| MemBill | 51 | Member bill |
| MemVisitEntry | 0 | Member visit |
| MemFacilityBilling | 0 | Member facility billing |
| MemTagadaLetter | 0 | Tagada letter |
| SmartCardMaster | 0 | Smart card master |

## 13. Fields

### MembershipMast
- Code, Name, Category, CardNo, DOB, Address, Phone, Email
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### MemCatMast
- Code, Name, Description
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### MemberFamily
- SubCode, SNo, Relationship, ConPrefix, Name, Gender, MaritalStatus
- DOB, POB, WedDate, Phone, Mobile, Fax, Email, Nationality, Religion
- BloodGroup, ProOcc, EdQuali, TBusiness, TurnOver, Desig, Passport, PAN
- InTax, SpInterest, PicPath, SigPath, Label
- Site_Code, LogSite_Code, U_Name, U_EntDt, U_AE
- HW_Id, CardNo, CardIssDate, CardRegId, CardValidUpto [VERIFIED-VB6]

### SmartCardRegistration
- Code, CardNo, HW_Id, CardIssDate, CardValidUpto
- RewardBal, RewardSale, RewardPoint, RedeemPoint
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### MemAddRWA
- SubCode, Name, SNo, Add1, Add2, Add3, PinCode, City, State, Country
- PAN, Phone, Mobile, FAX, Email, CorresYN, Mark
- Site_Code, LogSite_Code, U_Name, U_EntDt, U_AE, Mobile1 [VERIFIED-VB6]

### MemFacilityBilling
- MemCode, Entrydate, FcCode, Amount
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

## 14. Workflow

```
Member Registration (MembershipMast)
  ├── Select Category (MemCatMast)
  ├── Enter Personal Details
  ├── Family Details (MemberFamily)
  └── Smart Card Registration (SmartCardRegistration)
       ↓
Member Operations
  ├── Member Visit (MemVisitEntry)
  ├── Facility Entry (MemFacilityEntry)
  ├── Facility Billing (MemFacilityBilling)
  ├── Payment Receive (MemPaymentReceive)
  └── Smart Card Recharge (SmartCardRecharge)
       ↓
Member Maintenance
  ├── Member Renewal (MemRenewalEntry)
  ├── Category Change (memCatChngEntry)
  ├── Auto Settle Card (MemAutoSettleCardBalance)
  └── Tagada Letter (MemTagadaLetter)
       ↓
Reports
  ├── Member Visit Details
  ├── Member Sales Register
  ├── Member Ledger
  ├── Member Tax Report
  └── Member Birthday/Anniversary Details
```

## 15. Screenshots

Screenshots folder me available hain:
- Members Management module ke screenshots `14_Members_Management/screenshots/` me hain

## 16. Test Cases

| Test Case | Description | Evidence |
|-----------|-------------|----------|
| TC-MEM-001 | Member registration | [VERIFIED-VB6] |
| TC-MEM-002 | Member visit entry | [VERIFIED-VB6] |
| TC-MEM-003 | Facility entry | [VERIFIED-VB6] |
| TC-MEM-004 | Facility billing | [VERIFIED-VB6] |
| TC-MEM-005 | Payment receive | [VERIFIED-VB6] |
| TC-MEM-006 | Member renewal | [VERIFIED-VB6] |
| TC-MEM-007 | Category change | [VERIFIED-VB6] |
| TC-MEM-008 | Smart card registration | [VERIFIED-VB6] |
| TC-MEM-009 | Smart card recharge | [VERIFIED-VB6] |
| TC-MEM-010 | Smart card refund | [VERIFIED-VB6] |
| TC-MEM-011 | Auto settle card balance | [VERIFIED-VB6] |
| TC-MEM-012 | Tagada letter | [VERIFIED-VB6] |
| TC-MEM-013 | Member sales register | [VERIFIED-VB6] |
| TC-MEM-014 | Member ledger | [VERIFIED-VB6] |
| TC-MEM-015 | Member birthday/anniversary | [VERIFIED-VB6] |

## 17. Known Issues

1. **Empty tables** — MemVisitEntry, MemFacilityBilling, MemTagadaLetter, SmartCardMaster all 0 rows [VERIFIED-SQL]
2. **MembershipRevMast empty** — Table exists but 0 rows [VERIFIED-SQL]
3. **Godrej door lock** — Legacy Godrej lock integration, modern access control karna hoga
4. **No stored procedures** — Application inline ADODB SQL use karta hai [VERIFIED-VB6]

## 18. Migration Notes

1. **Member management** — Modern loyalty program management system me migrate karna hoga
2. **Smart card** — Smart card integration ko modern RFID/NFC access control se replace karna hoga
3. **Reward points** — Reward points system ko modern loyalty points engine se replace karna hoga
4. **Godrej door lock** — Legacy Godrej lock integration ko modern access control system se replace karna hoga
5. **Member billing** — Member billing ko modern subscription management system se replace karna hoga
6. **Tagada letter** — Dues letters ko modern communication system (email/SMS) se replace karna hoga
