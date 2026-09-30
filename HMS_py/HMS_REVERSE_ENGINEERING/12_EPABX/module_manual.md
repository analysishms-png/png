# EPABX MODULE

## 1. Purpose

EPABX module hotel ke telephone/PABX system integration ke liye hai. Call tracking, extension management, call codes, aur wake-up calls yahin manage hote hain. Front Office se integrated hai — guest room calls is module se track hote hain.

**Evidence:** [VERIFIED-VB6] — 2 menu items, single group (EPABX Call Report, EPABX).

## 2. Menu Structure (from MENU_INVENTORY.md)

```
EPABX
├── EPBAX Call Report
└── EPABX
```

## 3. Screens (from vb6_form_inventory.md)

### EPABX Forms (Tel*, EPABX)
- **TelCallEntry** — Call entry
- **TelCallCodeMast** — Call code master
- **TelCallControlMast** — Call control master
- **TelCallTypeMast** — Call type master
- **TelExtensionMast** — Extension master
- **rRepTel** — EPABX report
- **rRepTelPreview** — EPABX report preview
- **FrmGuestWakeUp** — Wake-up calls

## 4. Masters

| Master | Table | Evidence |
|--------|-------|----------|
| Call Type | TelCallTypeMast | [VERIFIED-VB6] |
| Extension | TelExtensionMast | [VERIFIED-VB6] |
| Call Codes | TelCallCodeMast | [VERIFIED-VB6] |
| Call Control | TelCallControlMast | [VERIFIED-VB6] |

## 5. Transactions

| Transaction | Form | Table | Evidence |
|-------------|------|-------|----------|
| Call Entry | TelCallEntry | EPABX_IN | [VERIFIED-VB6] |
| Wake-up Call | FrmGuestWakeUp | EPABX_IN | [VERIFIED-VB6] |

## 6. Operations

- **Call Entry** — Record incoming/outgoing calls
- **Extension Management** — Manage room extensions
- **Call Codes** — Categorize calls (local, STD, ISD, etc.)
- **Call Control** — Control call barring, DND
- **Wake-up Calls** — Schedule guest wake-up calls
- **Call Reports** — Generate call detail reports

## 7. Reports

| Report | Form | Evidence |
|--------|------|----------|
| EPABX Call Report | rRepTel | [VERIFIED-VB6] |
| EPABX Report Preview | rRepTelPreview | [VERIFIED-VB6] |

## 8. Permissions

- EPABX module access UserPermission form se control hota hai [VERIFIED-VB6]
- Per-user menu hierarchy MenuHelp table me OPT1..OPT4 columns [VERIFIED-SQL]

## 9. Business Rules

1. **EPABX_IN table** — Call records stored in Jet DMEPABX.mdb (not SQL Server) [VERIFIED-VB6]
2. **Extension** — TelExtensionMast for room extensions [VERIFIED-VB6]
3. **Call types** — TelCallTypeMast for call categorization [VERIFIED-VB6]
4. **Call codes** — TelCallCodeMast for call codes [VERIFIED-VB6]
5. **Wake-up calls** — FrmGuestWakeUp with alarm fields ALARM_HOUR, ALARM_MIN [VERIFIED-VB6]
6. **Audit columns** — Har transaction me U_Name, U_EntDt, U_AE ('A'/'E'/'D') [VERIFIED-VB6]
7. **Multi-site** — LogSite_Code filters every query [VERIFIED-VB6]

## 10. VB6 Logic (from EXTRAS.text)

### Call Entry (TelCallEntry)
```vb
' Call entry form
' Key fields: Extension, Call Type, Call Code, Duration, Amount
' Table: EPABX_IN (Jet DMEPABX.mdb)
```

### Extension Master (TelExtensionMast)
```vb
' Extension master
' Key fields: Extension No, Room No, Department
' Note: TelExt live 0 — unused is site pe
```

### Call Type Master (TelCallTypeMast)
```vb
' Call type master
' Key fields: Code, Name, Rate
```

### Call Code Master (TelCallCodeMast)
```vb
' Call code master
' Key fields: Code, Name, Description
```

### Wake-up Call (FrmGuestWakeUp)
```vb
' Wake-up call scheduling
' Key fields: Room No, Date, ALARM_HOUR, ALARM_MIN
' Insert into EPABX_IN
```

### EPABX Report (rRepTel)
```vb
' EPABX call report viewer
' Uses .ttx field map
```

## 11. SQL Logic (from SQL_TRACKING_RESULTS.md)

### EPABX Query
```sql
-- EPABX_IN (Jet DMEPABX.mdb): Extension, Call Type, Call Code, Duration, Amount
-- TelExtensionMast: Extension master
-- TelCallTypeMast: Call type master
-- TelCallCodeMast: Call code master
```

### Wake-up Call
```sql
-- FrmGuestWakeUp: Room No, Date, ALARM_HOUR, ALARM_MIN
-- Insert into EPABX_IN
```

## 12. Tables (from DATABASE_INVENTORY.md)

| Table | Usage Count | Purpose |
|-------|-------------|---------|
| EPABX_IN | 81 | EPABX calls (Jet mdb) |

## 13. Fields

### EPABX_IN (Jet DMEPABX.mdb)
- Extension, Call Type, Call Code, Duration, Amount
- Room No, Guest Name, Date, Time
- U_Name, U_EntDt, U_AE [VERIFIED-VB6]

### TelExtensionMast
- Extension No, Room No, Department
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### TelCallTypeMast
- Code, Name, Rate
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### TelCallCodeMast
- Code, Name, Description
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

## 14. Workflow

```
Extension Master (TelExtensionMast)
  ├── Call Type Master (TelCallTypeMast)
  ├── Call Code Master (TelCallCodeMast)
  └── Call Control Master (TelCallControlMast)
       ↓
Call Entry (TelCallEntry)
  ├── Record Call
  ├── Calculate Charges
  └── Post to Guest Folio
       ↓
Wake-up Call (FrmGuestWakeUp)
  ├── Schedule Wake-up
  └── Execute at Time
       ↓
Reports
  └── EPABX Call Report (rRepTel)
```

## 15. Screenshots

Screenshots folder me available hain:
- EPABX module ke screenshots `12_EPABX/screenshots/` me hain

## 16. Test Cases

| Test Case | Description | Evidence |
|-----------|-------------|----------|
| TC-EPABX-001 | Call entry | [VERIFIED-VB6] |
| TC-EPABX-002 | Extension master | [VERIFIED-VB6] |
| TC-EPABX-003 | Call type master | [VERIFIED-VB6] |
| TC-EPABX-004 | Call code master | [VERIFIED-VB6] |
| TC-EPABX-005 | Wake-up call | [VERIFIED-VB6] |
| TC-EPABX-006 | EPABX call report | [VERIFIED-VB6] |
| TC-EPABX-007 | Call charges posting | [VERIFIED-VB6] |

## 17. Known Issues

1. **Jet database** — EPABX_IN table Jet DMEPABX.mdb me hai, SQL Server me nahi [VERIFIED-VB6]
2. **TelExt live 0** — Extension master is site pe unused [VERIFIED-VB6]
3. **No stored procedures** — Application inline ADODB SQL use karta hai [VERIFIED-VB6]
4. **Limited integration** — EPABX module Front Office se limited integration hai

## 18. Migration Notes

1. **EPABX integration** — Modern VoIP/PBX integration karna hoga
2. **Call tracking** — Call records ko SQL Server me migrate karna hoga
3. **Wake-up calls** — Digital wake-up call system me upgrade karna hoga
4. **Call charges** — Call charge calculation ko modern billing system se integrate karna hoga
5. **Extension management** — Room extension management ko modern room management system se replace karna hoga
