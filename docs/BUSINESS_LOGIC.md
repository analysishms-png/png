# Business Logic Documentation

**Date:** 2026-09-24  
**Reference:** HMS.exe (VB6) decompiled source  
**Python:** HMS_py  
**Database:** MOONData2627

---

## Web Research Notes (2026-09-24)

Research inputs used to guide implementation (do **not** replace EXE-confirmed rules):

### pyodbc / SQL Server transactions
- Default `autocommit=False`: commit/rollback at **connection** level; try/except/finally with `commit()` on success, `rollback()` or close on failure
- Parameterized queries (`?`) for all inserts/updates — no string-concat SQL
- Connection pooling: avoid double-pooling if app also pools
- Sources: pyodbc wiki, Stack Overflow pyodbc transactions, Certbolt pyODBC deep-dive

### SQL Server 2008 R2 compatibility
- Compat levels only 80/90/100 — **no** 2012+ features:
  - `TRY_CONVERT` / `TRY_CAST` → `CASE` + `CONVERT` or XML `.value()` trick
  - `STRING_AGG` → `FOR XML PATH('')` + `STUFF`
  - `FORMAT` → `CONVERT(varchar, date, style)` style codes
  - `MERGE`, `DATEFROMPARTS`, `EOMONTH`, `IIF`, `CHOOSE` → avoid or polyfill
  - Pagination: `ROW_NUMBER() OVER (...)` not `OFFSET/FETCH`
- Sources: Stack Overflow TRY_CONVERT 2008, SQLPerformance string aggregation, MS Learn STRING_AGG (2017+)

### Hotel PMS workflow (industry reference only)
- Canonical loop: Reservation → Room assign → Check-in → In-house → Check-out → Housekeeping Dirty → Clean → Ready
- Checkout posts room nights to folio; balance = charges − payments before settle
- Room status language: Clean / Dirty / Occupied / Maintenance (align with EXE RoomStatus values — EXE is source of truth)
- Checkout often auto-creates housekeeping task (confirm against RoomOcc/FolioLog before implementing)
- Sources: Oracle OPERA “What is PMS”, HotelRunner checkout SOP, StayOps/ZimmerStack workflow pages

### PyQt6 desktop
- Model-View optional; this project uses QWidget forms + pyodbc (not QSqlTableModel) to match existing architecture
- Offscreen: `QT_QPA_PLATFORM=offscreen` for automated smoke tests

---

## Business Rules

### Reservation Rules

1. **Room Availability:** Room cannot be allocated if occupied during the requested dates
2. **Date Validation:** Departure date cannot be before arrival date
3. **Guest Required:** Reservation requires valid GuestProf record
4. **Auto Numbering:** Booking_NO auto-generated from sequence
5. **Status Change:** Reservation creates GuestStatus = 'Reserved'
6. **Duplicate Check:** Same room + overlapping dates = conflict error
7. **Deposit:** Advance deposit required based on rate plan
8. **Confirmation:** Reservation can be confirmed or held

### Check-In Rules

1. **Pre-requisite:** Valid Booking_NO required (or walk-in GuestProf)
2. **Room Allocation:** Room must be available (RoomStatus = 'Clean', not occupied)
3. **RoomOcc Creation:** Check-In creates RoomOcc record with ARRIVAL date, STATUS='Occupied'
4. **GuestFolio Creation:** Folio created with OPENING_BALANCE = deposit amount
5. **Room Status:** RoomMast.STATUS changes to 'Occupied'
6. **Guest Status:** GuestStatus.STATUS changes to 'Checked-In'
7. **Auto Charges:** Room rate auto-posted to folio on check-in
8. **ID Required:** Government ID mandatory for check-in

### Check-Out Rules

1. **Folio Balance:** Folio balance = Opening_Balance + Charges - Payments
2. **Outstanding Balance:** Checkout blocked if balance outstanding (configurable)
3. **Room Status:** RoomStatus → 'Dirty' after checkout
4. **Guest Status:** GuestStatus → 'Checked-Out'
5. **Depart Record:** Depart table updated with CHECKOUT time
6. **Folio Close:** GuestFolio closed, balance archived
7. **Reverse Check-Out:** Available (WRONG_TARGET re-wired for FaAdjustDel)

### Folio Rules

1. **Balance Formula:** Opening_Balance + Charges - Payments - Adjustments = Current_Balance
2. **Charge Types:** Room, Restaurant, Phone, Other, Laundry, MiniBar
3. **Posting:** Charges posted to FolioLog with TYPE and DESCRIPTION
4. **Payment:** Payment reduces Current_Balance
5. **Adjustment:** Negative adjustment allowed with authorization
6. **Ledger Sync:** Folio balance syncs to Ledger table

### Room Status Rules

1. **Clean:** Room available for booking
2. **Occupied:** Room has active GuestOcc record
3. **Dirty:** Room checked out, needs cleaning
4. **Maintenance:** Room out of service, not bookable
5. **Under Repair:** Room out of service, not bookable
6. **Status Transition:** Occupied → Dirty → Clean (with housekeeping approval)

### Inventory Rules

1. **Stock Level:** Items tracked with MIN/MAX levels
2. **Purchase:** Purchase creates StockReceive record
3. **Issue:** Issue reduces Stock on hand
4. **Adjustment:** StockAdjust for physical count corrections
5. **Consumption:** Consumption report auto-calculated
6. **Requisition:** Requisition Slip for department requests
7. **FIFO:** First-In-First-Out costing method

### POS Rules

1. **KOT Generation:** Order → KOT → Kitchen → Bill
2. **Table Management:** Table assigned, ordered, billed
3. **Payment:** Multiple payment modes accepted
4. **Tax:** Tax calculated based on item category
5. **Discount:** Scheme-based discounts applied
6. **Happy Hour:** Special rates during happy hour window
7. **Delivery:** Delivery order with separate tracking

### Finance Rules

1. **Voucher:** Every financial transaction creates a Voucher
2. **Double Entry:** Debit = Credit for every transaction
3. **Ledger:** Ledger balance = Sum of all vouchers
4. **Trial Balance:** Total Debits = Total Credits
5. **Profit/Loss:** Revenue - Expenses = Net Profit
6. **Balance Sheet:** Assets = Liabilities + Equity
7. **TDS:** Tax Deducted at Source per TDS category
8. **Forex:** Currency conversion at current forex rate

### Night Audit Rules

1. **Auto Posting:** Room charges auto-posted at midnight
2. **Folio Close:** All folios closed for the day
3. **Room Close:** RoomOcc status updated
4. **Report Generation:** Daily report auto-generated
5. **Reverse Night Audit:** Available (WRONG_TARGET re-wired for frmReNightAudit)
6. **Cut-off:** Night audit = end of business day

### HR Rules

1. **Employee Master:** EMP_CODE, NAME, DEPT, DESIGNATION, SALARY
2. **Payroll:** Salary = Basic + Allowances - Deductions
3. **Leave:** Leave balance = Entitled - Used
4. **Attendance:** Daily attendance tracked
5. **Member Module:** Member-specific rules (BLOCKED - 0-row tables)

### TDS Rules

1. **Category:** TDS rate per category (salary, professional, rent)
2. **Certificate:** TDS certificate issued per quarter
3. **Calculation:** Amount × Rate = TDS deducted
4. **Filing:** TDS filed monthly/quarterly
5. **Challan:** TDS challan payment (WRONG_TARGET re-wired for FaTDSChal)

---

## WRONG_TARGET Re-wires

These 10 forms were mapped to wrong Python targets. Re-wires implemented in `core/shell.py` and `core/vb6_logic.py`:

| VB6 Form | Wrong Target | Correct Target | Reason |
|----------|-------------|----------------|--------|
| FdRevCheckOut | Default | reverse checkout | Needs dedicated reverse logic |
| FaAdjustDel | Default | dedicated delete | Needs dedicated delete form |
| FaCurrBalUpdate | Default | balance rebuild | Needs balance rebuild logic |
| FaTDSChal | Default | TDS Challan UI | Needs TDS Challan form |
| fdAcPostChrg | Default | NA charges posting | Needs NA charges posting |
| fdNDAcPostChrg | Default | NA account posting | Needs NA account posting |
| frmReNightAudit | Default | reverse night audit | Needs reverse audit logic |
| HallAcPostChrg | Default | hall A/C posting | Needs hall A/C posting |
| MembershipMast | Default | member master CRUD | Needs member master |
| SmartCardRegistration | Default | smart card registration | Needs smart card form |

---

## Authentication Logic

### VB6 Encryption (Exact Port)

```python
# From VB6 frmPassword.frm
# Process_153_30_EEFAD0 (Encrypt):
seed = Int(Rnd * 99) + 1       # 1..99
stored = Chr(seed + 27)         # First char is seed carrier
for ch in password:
    stored += Chr(Asc(ch) + 27 + seed)

# Process_153_31_EFEE54 (Decrypt):
seed = Asc(first_char) - 27
for ch in rest:
    plain += Chr(Asc(ch) - 27 - seed)

# Login comparison:
UCase(Trim(typed)) == UCase(Trim(stored_decrypted))
```

### Brute-Force Protection

```python
# Max 5 attempts per 15 minutes per user
# Tracked in auth.py: {username: [(timestamp, success), ...]}
```

---

## SQL Query Patterns

### Parameterized Query Pattern

```python
from HMS_py.core import db
db.query("SELECT * FROM GuestProf WHERE GUEST_CODE = ?", (guest_code,))
db.query("INSERT INTO Booking VALUES (?, ?, ?, ?)", (no, guest, arrival, dept))
db.query("UPDATE RoomOcc SET STATUS = ? WHERE ROOM_NO = ?", ('Occupied', room))
```

### Transaction Pattern

```python
db.query("BEGIN TRANSACTION", ())
try:
    db.query("INSERT INTO RoomOcc ...", params)
    db.query("UPDATE RoomMast SET STATUS = ? ...", params)
    db.query("COMMIT", ())
except Exception:
    db.query("ROLLBACK", ())
    raise
```

---

## Module Business Logic Summary

### Finance
- Ledger entries follow double-entry bookkeeping
- Voucher types: Journal, Cash, Bank, Contra, Payment, Receipt
- TDS calculated per category, certificates issued quarterly
- Forex transactions converted at daily rates

### Main Setup
- Room categories define base rates
- Tax structure supports multiple tax layers
- Payment types define discount rules
- Schemes define seasonal rates

### Reservation
- Booking creates GuestStatus = 'Reserved'
- Room availability checked against RoomOcc overlaps
- Confirmation locks room, creates Booking record
- Cancellation releases room, sets GuestStatus = 'Available'

### Front Office
- Check-In: Creates RoomOcc + GuestFolio + updates RoomMast
- Check-Out: Closes folio, updates RoomStatus → 'Dirty'
- Folio: All charges posted to FolioLog, balance calculated
- Reverse operations: Check-out reverse, Night audit reverse

### Housekeeping
- Room status transitions: Clean → Occupied → Dirty → Clean
- Inspection records quality status
- Maintenance marks room out of service

### Inventory
- Stock levels tracked with MIN/MAX
- Purchase creates StockReceive
- Issue reduces stock, creates consumption record
- Physical count adjustments via StockAdjust

### POS
- KOT flow: Order → Kitchen → Bill
- Table management with status tracking
- Happy hour rates applied automatically
- Delivery orders tracked separately

### Night Audit
- Auto-posting at midnight
- Folio close for all active guests
- Daily report generation
- Reverse audit available

---

## Blocked Business Logic

The following business logic is BLOCKED due to missing data or dependencies:

1. **Door Lock** — Godrej Locks DLL not available
2. **Touch POS** — Hardware not connected
3. **SMS HTTP Gateway** — Live API endpoint not available
4. **e-Invoice IRN** — Government portal not accessible
5. **MemberModule** — 0-row tables, no reference data
6. **Crystal Reports** — Print pipeline dependency
7. **Banquet Ops** — Schema incomplete

---

## Validation Rules

| Field | Rule | Module |
|-------|------|--------|
| Guest Name | Required, max 100 chars | All |
| Room No | Must exist in RoomMast | Check-In |
| Arrival Date | Must be >= today | Reservation |
| Departure Date | Must be > Arrival | Reservation |
| Rate | Must match RoomCategory | Reservation |
| Payment Amount | Must be > 0 | Billing |
| PIN | 4-digit numeric | Check-In |
| Email | Valid email format | Guest Profile |
| Phone | 10-digit numeric | Guest Profile |
| TDS Amount | Amount × Rate | Finance |
| Stock Quantity | Must be >= 0 | Inventory |
| KOT Amount | Must match items | POS |
