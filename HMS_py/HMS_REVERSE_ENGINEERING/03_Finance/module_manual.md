# FINANCE MODULE

## 1. Purpose

Finance module HMS ka accounting engine hai. Voucher entry, ledger management, bank reconciliation, TDS, aur financial reporting yahin hoti hai. Night Audit ke through room charges aur expenses automatically is module me post hote hain.

**Evidence:** [VERIFIED-VB6] — 28 menu items, 3 sub-groups: Transaction, Reports, Financial Setup.

## 2. Menu Structure (from MENU_INVENTORY.md)

```
Finance (B)
├── Transaction
│   ├── Expense Voucher
│   ├── Voucher Entry
│   ├── Adjustment Entry
│   ├── Delete Adjustment Entry
│   ├── Bank Reconciliation
│   ├── T.D.S. Challan Entry
│   ├── T.D.S. Certificate Entry
│   └── Expense Voucher (duplicate)
├── Reports
│   ├── Journal Books Log
│   ├── Day Book
│   ├── Trial Balance
│   ├── Ledger
│   ├── Interest Ledger
│   ├── Cash Book
│   ├── Bank Book
│   ├── Journal Books
│   ├── Annexure
│   ├── Bank Register
│   ├── Ageing Analysis for Debtors
│   ├── Ageing Analysis for Creditors
│   ├── Cheque Cleared Register
│   ├── Cheque Not Cleared Register
│   ├── Detailed Trial Ledger
│   ├── Bill Wise Outstanding Report For Debtors
│   └── Day Book (duplicate)
├── Financial Setup
│   ├── Group Accounts
│   ├── Ledger Accounts
│   ├── Narration Master
│   ├── T.D.S. Category
│   ├── FA Environment
│   ├── Voucher Environment
│   ├── Year End Updation
│   ├── Current Balance Updation
│   ├── Country Master
│   ├── State Master
│   ├── City Master
│   ├── Delete Message
│   ├── Account Merging
│   └── Voucher Serialisation
```

## 3. Screens (from vb6_form_inventory.md)

### Finance Forms (Fa*)
- **FaVoucher** — Main voucher entry (Dr/Cr)
- **FaVrEnt** — Voucher entry (alternate)
- **FaGrEnt** — Group entry
- **FaAdjust** — Adjustment entry
- **FaAdjustDel** — Delete adjustment entry
- **FaChqClear** — Cheque clearance
- **FaCurrBalUpdate** — Current balance update
- **FaTaxVoucher** — Tax voucher
- **FaReports** — Finance reports viewer
- **FaRepView** — Report viewer
- **rFaRepView** — Report viewer (report)
- **FaFind** — Finance find/search
- **FaGlobeNarr** — Global narration
- **FaNarrMast** — Narration master
- **FaSubGroup** — Sub-group (accounts/parties)
- **FaVtype** — Voucher type
- **FaCityMast** — City master
- **FaCountryMast** — Country master
- **FaStateMast** — State master
- **FaTDSCat** — TDS category
- **FaTDSCertificate** — TDS certificate
- **FaTDSChal** — TDS challan
- **frmTallyExport** — Tally export
- **AccountMerg** — Account merging
- **SchemeMast** — Scheme master
- **FaEnvron** — Finance environment

## 4. Masters

| Master | Table | Evidence |
|--------|-------|----------|
| Group Accounts | AcGroup | [VERIFIED-VB6] |
| Ledger Accounts | Ledger | [VERIFIED-VB6] |
| Sub-Group | SubGroup | [VERIFIED-VB6] |
| Narration Master | FaNarrMast | [VERIFIED-VB6] |
| TDS Category | FaTDSCat | [VERIFIED-VB6] |
| Voucher Type | Voucher_Type | [VERIFIED-VB6] |
| Voucher Prefix | Voucher_Prefix | [VERIFIED-VB6] |
| FA Environment | FAENVIRO | [VERIFIED-VB6] |
| Scheme Master | SchemeMast | [VERIFIED-VB6] |

## 5. Transactions

| Transaction | Form | Table | Evidence |
|-------------|------|-------|----------|
| Voucher Entry | FaVoucher/FaVrEnt | Ledger | [VERIFIED-VB6] |
| Adjustment Entry | FaAdjust | Ledger | [VERIFIED-VB6] |
| Delete Adjustment | FaAdjustDel | Ledger | [VERIFIED-VB6] |
| Bank Reconciliation | FaChqClear | Ledger | [VERIFIED-VB6] |
| TDS Challan | FaTDSChal | — | [VERIFIED-VB6] |
| TDS Certificate | FaTDSCertificate | — | [VERIFIED-VB6] |
| Expense Voucher | FaVoucher | Ledger | [VERIFIED-VB6] |
| Tax Voucher | FaTaxVoucher | Ledger | [VERIFIED-VB6] |

## 6. Operations

- **Voucher Entry** — Dr/Cr voucher creation with narration
- **Adjustment Entry** — Posting adjustments
- **Bank Reconciliation** — Cheque clearance tracking
- **TDS Management** — TDS category, challan, certificate
- **Account Merging** — Merge two ledger accounts
- **Voucher Serialization** — Renumber vouchers
- **Year End** — Financial year closing
- **Current Balance Update** — Recalculate ledger balances
- **Tally Export** — Export to Tally format

## 7. Reports

| Report | Form | Evidence |
|--------|------|----------|
| Day Book | FaReports | [VERIFIED-VB6] |
| Trial Balance | FaReports | [VERIFIED-VB6] |
| Ledger | FaReports | [VERIFIED-VB6] |
| Cash Book | FaReports | [VERIFIED-VB6] |
| Bank Book | FaReports | [VERIFIED-VB6] |
| Journal Books | FaReports | [VERIFIED-VB6] |
| Interest Ledger | FaReports | [VERIFIED-VB6] |
| Annexure | FaReports | [VERIFIED-VB6] |
| Bank Register | FaReports | [VERIFIED-VB6] |
| Ageing (Debtors) | FaReports | [VERIFIED-VB6] |
| Ageing (Creditors) | FaReports | [VERIFIED-VB6] |
| Cheque Cleared Register | FaReports | [VERIFIED-VB6] |
| Cheque Not Cleared Register | FaReports | [VERIFIED-VB6] |
| Detailed Trial Ledger | FaReports | [VERIFIED-VB6] |
| Bill Wise Outstanding | FaReports | [VERIFIED-VB6] |

## 8. Permissions

- Finance module access UserPermission form se control hota hai [VERIFIED-VB6]
- Per-user menu hierarchy MenuHelp table me OPT1..OPT4 columns [VERIFIED-SQL]
- Voucher types Voucher_Type table me Category field se classify hote hain ('PurchBill','EXPENT', etc.) [VERIFIED-VB6]

## 9. Business Rules

1. **Double-entry system** — Har voucher me Dr/Cr balance hona chahiye [VERIFIED-VB6]
2. **Voucher numbering** — Voucher_Type + Voucher_Prefix tables manage serial numbers per type per site [VERIFIED-VB6]
3. **DocId pattern** — varchar(21) = site-prefix + Vtype + serial [VERIFIED-VB6]
4. **Audit columns** — Har transaction me U_Name, U_EntDt, U_AE ('A'/'E'/'D') [VERIFIED-VB6]
5. **Multi-site** — LogSite_Code filters every query [VERIFIED-VB6]
6. **Night Audit posting** — Room charges due → Dr/Cr voucher rows via Proc_6_140_12D68DC [VERIFIED-VB6]
7. **Hotel expenses** — ExpSheet se vType 'HTEXP' aur 'HTSAL' rows post hote hain [VERIFIED-VB6]
8. **LASTVOU table** — Last voucher number tracking (138 refs) [VERIFIED-VB6]
9. **VIEWLEDGER** — Ledger view for reporting [VERIFIED-VB6]
10. **ViewSubgroup** — Sub-group view for reporting [VERIFIED-VB6]

## 10. VB6 Logic (from EXTRAS.text)

### Voucher Entry (FaVoucher)
```vb
' Voucher entry form with Dr/Cr grid
' Key fields: DocId, Vtype, VNo, Vdate, PartyCode, SunCode, ROff, RestCode, SunAppDate, RevCode
' Tables: SunTranH (header), SunTran (detail)
```

### Scheme Master (SchemeMast)
```vb
' SQL: Select Code,Name From SchemeMast Where ISNULL(Active,'')='Y' 
'      And (LOGSITE_CODE='<site>' or LOGSITE_CODE='HO') Order By Name
' Fields: Code, Name, Startdate, Enddate, FromTime, ToTime, Days, Active
```

### Sub-Group (FaSubGroup)
```vb
' Accounts/parties master
' Key fields: SubCode, Name, GroupCode, City, GSTIN, CompanyType
' CompanyType: 'Corporate', 'Travel Agency', or member category
```

### Account Merging (AccountMerg)
```vb
' Merge two ledger accounts
' Updates all references from source to target account
```

### Tally Export (frmTallyExport)
```vb
' Export voucher data to Tally-compatible format
```

### Finance Reports (FaReports)
```vb
' Generic report viewer for all finance reports
' Uses .ttx field map files and .RPT Crystal reports
```

## 11. SQL Logic (from SQL_TRACKING_RESULTS.md)

### Night Audit → Finance Posting
```sql
-- Room charges due posting
-- Dr/Cr voucher rows via Proc_6_140_12D68DC (ledger posting helper)
-- Flag 'A' (Add)

-- Hotel expenses
SELECT ACCODE FROM REVMAST WHERE CODE='<CASH_AC>'
Select Amount as Amt, AgAC, VType, Remarks as Narration 
From ExpSheet where vdate=<date> Order By VType, Vno
-- Posts vouchers for vType 'HTEXP' and 'HTSAL' rows
```

### Voucher Numbering
```sql
-- Voucher_Type: V_Type, Category, LogSite_Code
-- Voucher_Prefix: V_Type, START_SRL_NO, DATE_FROM, DATE_TO, LogSite_Code
-- LASTVOU: Last voucher number per type
```

## 12. Tables (from DATABASE_INVENTORY.md)

| Table | Usage Count | Purpose |
|-------|-------------|---------|
| Ledger | 253 | Finance ledger (Dr/Cr entries) |
| SubGroup | 741 | Account/party master |
| Voucher_Type | 563 | Voucher type master |
| Voucher_Prefix | 434 | Voucher numbering |
| LASTVOU | 138 | Last voucher number |
| AcGroup | 114 | Account group |
| FAENVIRO | 116 | Finance environment |
| SunTran | 152 | Sundry transaction detail |
| SunTranH | 46 | Sundry transaction header |
| VIEWLEDGER | 100 | Ledger view |
| ViewSubgroup | 40 | Sub-group view |
| ViewLedger | 40 | Ledger view (2) |
| SchemeMast | 0 | Scheme master |

## 13. Fields

### SunTranH (Sundry Transaction Header)
- DocId, Sno, Vtype, VNo, Vdate, PartyCode, SunCode, ROff, RestCode, SunAppDate, RevCode [VERIFIED-VB6]

### SunTran (Sundry Transaction Detail)
- DocId, Sno, Vtype, VNo, Vdate, PartyCode, SunCode, ROff, RestCode, SunAppDate, RevCode [VERIFIED-VB6]

### Voucher_Type
- V_Type, Category ('PurchBill','EXPENT',...), LogSite_Code [VERIFIED-VB6]

### Voucher_Prefix
- V_Type, START_SRL_NO, DATE_FROM, DATE_TO, LogSite_Code [VERIFIED-VB6]

### SubGroup
- SubCode, Name, GroupCode, City, GSTIN, CompanyType, ActiveYN [VERIFIED-VB6]

### Ledger
- DocId, AcCode, VType, VNo, Vdate, AmtDr, AmtCr, Narration [VERIFIED-VB6]

## 14. Workflow

```
Financial Setup
  ├── Group Accounts (AcGroup)
  ├── Ledger Accounts (Ledger)
  ├── Voucher Type (Voucher_Type)
  └── Voucher Prefix (Voucher_Prefix)
       ↓
Transaction
  ├── Voucher Entry (FaVoucher) → Ledger (Dr/Cr)
  ├── Adjustment Entry (FaAdjust) → Ledger
  ├── Bank Reconciliation (FaChqClear) → Ledger
  └── TDS (FaTDSChal/FaTDSCertificate)
       ↓
Night Audit (automatic posting)
  ├── Room charges → Dr/Cr vouchers
  └── Expenses → HTEXP/HTSAL vouchers
       ↓
Reports
  ├── Day Book, Trial Balance, Ledger
  ├── Cash Book, Bank Book
  ├── Ageing Analysis
  └── Tally Export
```

## 15. Screenshots

Screenshots folder me available hain:
- Finance module ke screenshots `03_Finance/screenshots/` me hain

## 16. Test Cases

| Test Case | Description | Evidence |
|-----------|-------------|----------|
| TC-FIN-001 | Voucher Entry (Dr/Cr) | [VERIFIED-VB6] |
| TC-FIN-002 | Adjustment Entry | [VERIFIED-VB6] |
| TC-FIN-003 | Bank Reconciliation | [VERIFIED-VB6] |
| TC-FIN-004 | TDS Challan Entry | [VERIFIED-VB6] |
| TC-FIN-005 | TDS Certificate Entry | [VERIFIED-VB6] |
| TC-FIN-006 | Trial Balance report | [VERIFIED-VB6] |
| TC-FIN-007 | Ledger report | [VERIFIED-VB6] |
| TC-FIN-008 | Day Book report | [VERIFIED-VB6] |
| TC-FIN-009 | Account Merging | [VERIFIED-VB6] |
| TC-FIN-010 | Tally Export | [VERIFIED-VB6] |
| TC-FIN-011 | Night Audit → Finance posting | [VERIFIED-VB6] |
| TC-FIN-012 | Voucher Serialization | [VERIFIED-VB6] |

## 17. Known Issues

1. **Duplicate menu items:** "Expense Voucher" aur "Day Book" do baar appear hote hain menu me [VERIFIED-VB6]
2. **SchemeMast empty:** Table exists but 0 rows [VERIFIED-SQL]
3. **No stored procedures** — Application inline ADODB SQL use karta hai, koi SP calls nahi [VERIFIED-VB6]
4. **Tally Export** — Legacy Tally integration, modern accounting software ke liye nahi hoga

## 18. Migration Notes

1. **Voucher system** — Voucher_Type + Voucher_Prefix + LASTVOU ko modern accounting software ke voucher numbering se replace karna hoga
2. **Tally Export** — Modern accounting APIs (Tally Prime API, Zoho Books, etc.) se replace karna hoga
3. **SunTran/SunTranH** — Sundry transaction tables ko modern double-entry system me merge karna hoga
4. **FAENVIRO** — Finance environment settings ko modern config management me convert karna hoga
5. **Year End** — Year End Updation process ko modern accounting closing procedures se align karna hoga
6. **Account Merging** — Account merge operation ko modern accounting software ke consolidation tools se replace karna hoga
