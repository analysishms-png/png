# SALES & MARKETING MODULE

## 1. Purpose

Sales & Marketing module hotel ke SMS marketing, business source management, market segment tracking, aur company profile ke liye hai. SMS center settings, SMS environment, aur multiple SMS types yahin manage hote hain.

**Evidence:** [VERIFIED-VB6] — 6 menu items, 3 sub-groups: General Setup, Send SMS, SMS.

## 2. Menu Structure (from MENU_INVENTORY.md)

```
Sales & Marketing
├── General Setup
│   ├── SMS Center Settings
│   └── SMS Environment Settings
├── Send SMS
│   └── Multiple SMS Type
└── SMS
```

## 3. Screens (from vb6_form_inventory.md)

### Sales & Marketing Forms
- **salmarCompProfile** — Company profile
- **FrmBusinessSrc** — Business source master
- **FrmMarketSeg** — Market segment master
- **DiscountPartywiseReg** — Discount partywise register (report family)

### Shared Forms (from Messaging)
- **FrmSmsCenterSettings** — SMS center settings
- **FrmSMSEnviro** — SMS environment settings
- **FrmSMSMultiType** — Multiple SMS type

## 4. Masters

| Master | Table | Evidence |
|--------|-------|----------|
| Business Source | BussSource | [VERIFIED-VB6] |
| Market Segment | MarketSeg | [VERIFIED-VB6] |
| Company Profile | salmarCompProfile | [VERIFIED-VB6] |

## 5. Transactions

Sales & Marketing module me direct transactions nahi hote — yeh sirf configuration aur masters ka module hai.

## 6. Operations

- **SMS Center Settings** — Configure SMS gateway
- **SMS Environment** — Set SMS environment parameters
- **Multiple SMS Type** — Send SMS to multiple recipients
- **Business Source** — Manage business sources (travel agent, corporate, etc.)
- **Market Segment** — Manage market segments
- **Company Profile** — Company profile for marketing

## 7. Reports

| Report | Form | Evidence |
|--------|------|----------|
| Discount Partywise Register | DiscountPartywiseReg | [VERIFIED-VB6] |

## 8. Permissions

- Sales & Marketing module access UserPermission form se control hota hai [VERIFIED-VB6]
- Per-user menu hierarchy MenuHelp table me OPT1..OPT4 columns [VERIFIED-SQL]

## 9. Business Rules

1. **Business Source** — BussSource master (70 refs) [VERIFIED-VB6]
2. **Market Segment** — MarketSeg master (58 refs) [VERIFIED-VB6]
3. **SMS integration** — SMS center settings Messaging module se shared hain [VERIFIED-VB6]
4. **Audit columns** — Har transaction me U_Name, U_EntDt, U_AE ('A'/'E'/'D') [VERIFIED-VB6]
5. **Multi-site** — LogSite_Code filters every query [VERIFIED-VB6]

## 10. VB6 Logic (from EXTRAS.text)

### Business Source (FrmBusinessSrc)
```vb
' Business source master
' Key fields: Code, Name, Description
' Table: BussSource
```

### Market Segment (FrmMarketSeg)
```vb
' Market segment master
' Key fields: Code, Name, Description
' Table: MarketSeg
```

### Company Profile (salmarCompProfile)
```vb
' Company profile for marketing
' Key fields: Company Name, Address, Contact, Email
```

### Discount Partywise Register
```vb
' Discount partywise register report
' var_88 = "DiscountPartywiseReg"
```

## 11. SQL Logic (from SQL_TRACKING_RESULTS.md)

### Business Source Query
```sql
-- BussSource: Code, Name, Description
-- MarketSeg: Code, Name, Description
-- Active default: Update MarketSeg/BussSource Set Active='Y' Where IsNull(Active,'')=''
```

## 12. Tables (from DATABASE_INVENTORY.md)

| Table | Usage Count | Purpose |
|-------|-------------|---------|
| BussSource | 70 | Business source |
| MarketSeg | 58 | Market segment |

## 13. Fields

### BussSource
- Code, Name, Description, Active
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### MarketSeg
- Code, Name, Description, Active
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

## 14. Workflow

```
General Setup
  ├── SMS Center Settings (FrmSmsCenterSettings)
  └── SMS Environment Settings (FrmSMSEnviro)
       ↓
Masters
  ├── Business Source (FrmBusinessSrc)
  ├── Market Segment (FrmMarketSeg)
  └── Company Profile (salmarCompProfile)
       ↓
Send SMS
  └── Multiple SMS Type (FrmSMSMultiType)
       ↓
Reports
  └── Discount Partywise Register
```

## 15. Screenshots

Screenshots folder me available hain:
- Sales & Marketing module ke screenshots `15_Sales_Marketing/screenshots/` me hain

## 16. Test Cases

| Test Case | Description | Evidence |
|-----------|-------------|----------|
| TC-SAL-001 | Business source master | [VERIFIED-VB6] |
| TC-SAL-002 | Market segment master | [VERIFIED-VB6] |
| TC-SAL-003 | Company profile | [VERIFIED-VB6] |
| TC-SAL-004 | SMS center settings | [VERIFIED-VB6] |
| TC-SAL-005 | SMS environment settings | [VERIFIED-VB6] |
| TC-SAL-006 | Multiple SMS type | [VERIFIED-VB6] |
| TC-SAL-007 | Discount partywise register | [VERIFIED-VB6] |

## 17. Known Issues

1. **Limited module** — Sales & Marketing module bahut limited hai — sirf 6 menu items [VERIFIED-VB6]
2. **Shared forms** — SMS settings Messaging module se shared hain [VERIFIED-VB6]
3. **No stored procedures** — Application inline ADODB SQL use karta hai [VERIFIED-VB6]

## 18. Migration Notes

1. **SMS marketing** — Modern SMS marketing platform (Twilio, SendGrid) integration karna hoga
2. **Business source** — Business source management ko modern CRM system se integrate karna hoga
3. **Market segment** — Market segment tracking ko modern analytics platform se replace karna hoga
4. **Company profile** — Company profile ko modern CRM system se replace karna hoga
