# Database Map — MOONData2627

**Date:** 2026-09-24  
**Database:** MOONData2627  
**Server:** SQL Server  
**Auth:** Windows Authentication  
**Tables:** 274

---

## Connection Details

```python
# HMS_py/core/db.py
DEFAULT_CONFIG = {
    "server": "Localhost",
    "database": "Moondata2627",
    "reports": r"C:\Drive\HMS2526\Reports",
    "temp": r"C:\Drive\HMS2526\Temp",
    "company": "KK",
    "site": "Kanpur",
}
# Analysis.ini section [HMS] key 1=Server, 6=Database, 2=Reports, 3=Temp
```

---

## Table Categories

### Front Office (18 tables)

| Table | Description | Key Columns |
|-------|-------------|-------------|
| `GuestProf` | Guest Master | GUEST_CODE, NAME, ADDRESS, PHONE, EMAIL |
| `GuestFolio` | Guest Folio | FOLIO_NO, GUEST_CODE, OPENING_BALANCE |
| `GuestStatus` | Guest Status | GUEST_CODE, STATUS, ROOM_NO |
| `RoomOcc` | Room Occupancy | ROOM_NO, GUEST_CODE, ARRIVAL, DEPARTURE, STATUS |
| `FolioLog` | Folio Transaction Log | LOG_ID, FOLIO_NO, AMOUNT, TYPE, DESCRIPTION |
| `RoomMast` | Room Master | ROOM_NO, CATEGORY, TYPE, STATUS, RATE |
| `RoomCategory` | Room Category | CAT_CODE, DESCRIPTION, BASE_RATE |
| `Booking` | Reservation | BOOKING_NO, GUEST_CODE, ARRIVAL, DEPARTURE, ROOM_NO |
| `Depart` | Departure | DEPART_NO, BOOKING_NO, CHECKOUT_TIME |
| `GuestServices` | Guest Services | SERVICE_ID, GUEST_CODE, DESCRIPTION, AMOUNT |
| `PaymentType` | Payment Method | PAY_CODE, DESCRIPTION, DISCOUNT |
| `GuestHistory` | Guest History | HISTORY_ID, GUEST_CODE, ACTION, DATE |
| `Voucher` | Financial Voucher | VOUCHER_NO, DATE, AMOUNT, TYPE |
| `Ledger` | Ledger | LEDGER_NO, GUEST_CODE, BALANCE |
| `FixCharge` | Fixed Charges | CHARGE_CODE, DESCRIPTION, AMOUNT |
| `ExpenseEntry` | Expense Entry | EXP_ID, DATE, AMOUNT, DESCRIPTION |
| `Sundry` | Sundry Debtor/Creditor | SUNDY_CODE, NAME, BALANCE |
| `SundryType` | Sundry Type | TYPE_CODE, DESCRIPTION |

### Finance (25 tables)

| Table | Description |
|-------|-------------|
| `Ledger` | Financial Ledger |
| `Voucher` | Voucher Entry |
| `VoucherType` | Voucher Type Master |
| `FolioLog` | Folio/Financial Log |
| `TDS_Certificate` | TDS Certificates |
| `TDS_Category` | TDS Categories |
| `TDS_Certi` | TDS Certificate Details |
| `ForexMaster` | Forex Rates |
| `LedgerRef` | Ledger Reference |
| `CashBook` | Cash Book |
| `BankBook` | Bank Book |
| `Journal` | Journal Entry |
| `TrialBalance` | Trial Balance |
| `ProfitLoss` | Profit & Loss |
| `BalanceSheet` | Balance Sheet |
| `DayBook` | Day Book |
| `TaxStru` | Tax Structure |
| `TaxMaster` | Tax Master |
| `TaxGroup` | Tax Group |
| `LedgerGroup` | Ledger Group |
| `Budget` | Revenue Budget |
| `RevenueBudget` | Revenue Budget Details |
| `Scheme` | Scheme Master |
| `SchemeTDS` | Scheme TDS |
| `AccountMerge` | Account Merge |

### Inventory (15 tables)

| Table | Description |
|-------|-------------|
| `Item` | Item Master |
| `Unit` | Unit Master |
| `Stock` | Stock Register |
| `Purchase` | Purchase Bill |
| `PurchaseReturn` | Purchase Return |
| `Issue` | Stock Issue |
| `StockAdjust` | Stock Adjustment |
| `StockReceive` | Stock Receive |
| `StockIssue` | Stock Issue Details |
| `Supplier` | Supplier Master |
| `RequisitionSlip` | Requisition Slip |
| `Consumption` | Consumption Report |
| `StockRegister` | Stock Register Summary |
| `ItemGroup` | Item Category |
| `GodrejLocks` | Godrej Lock Integration |

### POS (12 tables)

| Table | Description |
|-------|-------------|
| `POSMaster` | POS Configuration |
| `POSSale` | POS Sale Header |
| `POSItem` | POS Sale Items |
| `POSKOT` | POS KOT |
| `POSTable` | POS Table Master |
| `POSDelivery` | POS Delivery |
| `POSPacking` | POS Packing |
| `POSNA` | POS Non-Activity |
| `KOTEntry` | KOT Entry |
| `KitchenClearStk` | Kitchen Clear Stock |
| `POSHall` | POS Hall Booking |
| `POSHappy` | POS Happy Hour |

### Housekeeping (5 tables)

| Table | Description |
|-------|-------------|
| `RoomStatus` | Room Cleaning Status |
| `RoomOcc` | Room Occupancy |
| `RoomType` | Room Type |
| `HousekeepingLog` | HK Activity Log |
| `Inspection` | Room Inspection |

### HR/Payroll (8 tables)

| Table | Description |
|-------|-------------|
| `HRMast` | Employee Master |
| `HRPayroll` | Payroll Entry |
| `LeaveMaster` | Leave Type |
| `LeaveRecord` | Leave Application |
| `Attendance` | Attendance Record |
| `PayrollCategory` | Payroll Category |
| `MemberModule` | Member Module |
| `MemberBilling` | Member Billing |

### EPABX (3 tables)

| Table | Description |
|-------|-------------|
| `EPABXMaster` | EPABX Configuration |
| `EPABXOps` | EPABX Operations |
| `CallLog` | Call Log |

### Messaging (3 tables)

| Table | Description |
|-------|-------------|
| `SMSQueue` | SMS Queue |
| `SMSLog` | SMS Delivery Log |
| `SMSConfig` | SMS Configuration |

### Administration (10 tables)

| Table | Description |
|-------|-------------|
| `UserMast` | User Master |
| `User1` | User Rights |
| `User_Module` | Module Access |
| `CompanyMast` | Company Master |
| `CompanyProfile` | Company Profile |
| `SysConfig` | System Configuration |
| `AnalysisIni` | Analysis Configuration |
| `BackupLog` | Backup Log |
| `MaintenanceLog` | Maintenance Log |
| `AuditLog` | Audit Trail |

### Reports (15 tables)

| Table | Description |
|-------|-------------|
| `ReportQueries` | Report Query Definitions |
| `DailyReport` | Daily Report |
| `OccupancyReport` | Occupancy Report |
| `ArrivalReport` | Arrival Report |
| `DepartureReport` | Departure Report |
| `GuestLedger` | Guest Ledger Report |
| `FolioReport` | Folio Report |
| `SalesReport` | Sales Report |
| `PurchaseReport` | Purchase Report |
| `StockReport` | Stock Report |
| `TaxReport` | Tax Report |
| `GSTR1` | GSTR-1 Report |
| `LedgerRef` | Ledger Reference |
| `NCat` | Non-Category |
| `TallyExport` | Tally Export |

### Master Data (30+ tables)

| Table | Description |
|-------|-------------|
| `City` | City Master |
| `State` | State Master |
| `Country` | Country Master |
| `Area` | Area Master |
| `Venue` | Venue Master |
| `BusinessSource` | Business Source |
| `MarketSegment` | Market Segment |
| `Scheme` | Scheme Master |
| `SeasonMaster` | Season Master |
| `PackageMaster` | Package Master |
| `PlanMaster` | Plan Master |
| `RatePlan` | Rate Plan |
| `PaymentType` | Payment Type |
| `Currency` | Currency |
| `VoucherType` | Voucher Type |

### Blocked/Schema-Incomplete (5 tables)

| Table | Status |
|-------|--------|
| `BanquetMast` | Schema incomplete |
| `BanquetOps` | Schema incomplete |
| `HallBooking` | Schema incomplete |
| `MemberModule` | 0-row tables |
| `DoorLock` | DLL dependency |

---

## Key Relationships

```text
GuestProf (GUEST_CODE)
    ├── Booking (GUEST_CODE) → RoomOcc (ROOM_NO)
    ├── GuestFolio (GUEST_CODE) → FolioLog (FOLIO_NO)
    ├── GuestStatus (GUEST_CODE) → RoomMast (ROOM_NO)
    └── GuestServices (GUEST_CODE)

RoomMast (ROOM_NO)
    ├── RoomOcc (ROOM_NO) → Booking (ROOM_NO)
    ├── RoomStatus (ROOM_NO)
    └── RoomCategory (CAT_CODE)

Booking (BOOKING_NO)
    ├── RoomOcc (BOOKING_NO)
    ├── Depart (BOOKING_NO)
    └── GuestFolio (BOOKING_NO)

POSMaster (POS_ID)
    ├── POSSale (POS_ID) → POSItem (SALE_ID)
    ├── POSKOT (POS_ID)
    └── POSTable (TABLE_ID)

Ledger (LEDGER_NO)
    ├── Voucher (LEDGER_NO)
    ├── Journal (LEDGER_NO)
    └── CashBook (LEDGER_NO)
```

---

## SQL Server Compatibility Notes

- **Version:** SQL Server 2008 R2
- **Auth:** Windows Authentication (`-E` flag in SQLCMD)
- **Compatible syntax:** No JSON, STRING_AGG, MERGE, TRY_CONVERT, FORMAT
- **Use:** `ISNULL`, `COALESCE`, `CONVERT`, `GETDATE()`, `ROW_NUMBER()`
- **Avoid:** `OFFSET-FETCH` pagination (use `ROW_NUMBER()` instead)

---

## Database Verification Results

```text
Total Tables: 274
Referenced by VB6: 329
Referenced by Python: 179
Both: 174
VB6 Only: 155
Python Only: 5
```

---

## Analysis.ini Configuration

```ini
[HMS]
1=Localhost
6=Moondata2627
2=C:\Drive\HMS2526\Reports
3=C:\Drive\HMS2526\Temp
```

---

## Safety Notes

- Never connect to `master`, `tempdb`, `model`, `msdb`
- Always use parameterized queries
- Wrap writes in `BEGIN TRANSACTION` / `COMMIT` / `ROLLBACK`
- Never log plaintext passwords
- Use `pyodbc` with `{?}` parameter markers
