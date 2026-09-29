# REPORTS MODULE

## 1. Purpose

Reports module HMS ka centralized reporting engine hai. Saare modules ke reports is module se access hote hain. Crystal Reports (.rpt) based reporting with .ttx field maps. 524+ report files available hain.

**Evidence:** [VERIFIED-VB6] — Reports are distributed across all modules; 524+ .rpt files in Reports folder.

## 2. Menu Structure (from MENU_INVENTORY.md)

Reports module me koi dedicated menu items nahi hain — reports har module ke andar distributed hain:

| Module | Report Count | Evidence |
|--------|-------------|----------|
| Finance | 18 | [VERIFIED-VB6] |
| POS | 35 | [VERIFIED-VB6] |
| Banquet | 15 | [VERIFIED-VB6] |
| Inventory | 25 | [VERIFIED-VB6] |
| Night Audit | 20+ | [VERIFIED-VB6] |
| Front Office | 30+ | [VERIFIED-VB6] |
| Reservation | 8 | [VERIFIED-VB6] |
| House Keeping | 2 | [VERIFIED-VB6] |
| HR & Payroll | 10 | [VERIFIED-VB6] |
| EPABX | 2 | [VERIFIED-VB6] |
| Members Mgmt | 8 | [VERIFIED-VB6] |
| Mall Management | 1 | [VERIFIED-VB6] |

## 3. Screens (from vb6_form_inventory.md)

### Report Viewers (generic)
- **REPVIEW** — Generic report viewer
- **rFomRepView** — Front Office report viewer
- **rHallRepView** — Banquet report viewer
- **rInventRepView** — Inventory report viewer
- **rMemberRepView** — Member report viewer
- **rPOSRepView** — POS report viewer
- **rRepReserv** — Reservation report viewer
- **rRepHouse** — House Keeping report viewer
- **rRepPayRoll** — Payroll report viewer
- **rRepTel** — EPABX report viewer
- **GridPrint** — Grid print utility
- **PrintFormats** — Print formats table

### Report Files
- **524+ .rpt files** — Crystal Reports
- **.ttx field maps** — Field definition files for reports

## 4. Masters

| Master | Table | Evidence |
|--------|-------|----------|
| Print Formats | PrintFormats | [VERIFIED-VB6] |

## 5. Transactions

Reports module me koi transactions nahi hain — yeh sirf reporting engine hai.

## 6. Operations

- **Report Viewing** — View reports in Crystal Reports viewer
- **Report Printing** — Print reports directly
- **Report Export** — Export to PDF/Excel
- **Grid Print** — Print data grids
- **Print Format Management** — Manage print formats

## 7. Reports (by category)

### Finance Reports
| Report | Evidence |
|--------|----------|
| Day Book | [VERIFIED-VB6] |
| Trial Balance | [VERIFIED-VB6] |
| Ledger | [VERIFIED-VB6] |
| Cash Book | [VERIFIED-VB6] |
| Bank Book | [VERIFIED-VB6] |
| Journal Books | [VERIFIED-VB6] |
| Interest Ledger | [VERIFIED-VB6] |
| Annexure | [VERIFIED-VB6] |
| Bank Register | [VERIFIED-VB6] |
| Ageing (Debtors) | [VERIFIED-VB6] |
| Ageing (Creditors) | [VERIFIED-VB6] |
| Cheque Cleared Register | [VERIFIED-VB6] |
| Cheque Not Cleared Register | [VERIFIED-VB6] |
| Detailed Trial Ledger | [VERIFIED-VB6] |
| Bill Wise Outstanding | [VERIFIED-VB6] |

### POS Reports
| Report | Evidence |
|--------|----------|
| Sales Register | [VERIFIED-VB6] |
| Stewardwise Sale | [VERIFIED-VB6] |
| Tablewise Sales | [VERIFIED-VB6] |
| Settlement Summary | [VERIFIED-VB6] |
| Tax Report | [VERIFIED-VB6] |
| KOT Wise Details | [VERIFIED-VB6] |
| Discount Register | [VERIFIED-VB6] |
| Cover Analysis | [VERIFIED-VB6] |
| Pending KOT | [VERIFIED-VB6] |
| Item wise Sale | [VERIFIED-VB6] |
| Sales Day Book | [VERIFIED-VB6] |
| Tax Register | [VERIFIED-VB6] |
| ABC Analysis | [VERIFIED-VB6] |
| Monthwise Sales | [VERIFIED-VB6] |
| Sale Summary | [VERIFIED-VB6] |
| Tax Invoice Detail | [VERIFIED-VB6] |
| Edited Bills | [VERIFIED-VB6] |
| Void Bills | [VERIFIED-VB6] |
| Deleted Unsettled Bill | [VERIFIED-VB6] |
| NC KOT Detail | [VERIFIED-VB6] |
| NC KOT Summary | [VERIFIED-VB6] |
| Not Delivered Order | [VERIFIED-VB6] |
| Group Wise Sale | [VERIFIED-VB6] |
| Customer Detail | [VERIFIED-VB6] |
| Collection Summary | [VERIFIED-VB6] |
| Open Item Sales | [VERIFIED-VB6] |
| KOT Change Report | [VERIFIED-VB6] |
| Tax Summary | [VERIFIED-VB6] |
| Discount Summary | [VERIFIED-VB6] |
| Denomination Detail | [VERIFIED-VB6] |
| Bill Wise Adjustment Report | [VERIFIED-VB6] |
| Order Detail Report | [VERIFIED-VB6] |
| Taxwise Details | [VERIFIED-VB6] |
| Discount Register (PartyWise) | [VERIFIED-VB6] |

### Banquet Reports
| Report | Evidence |
|--------|----------|
| Sales Register | [VERIFIED-VB6] |
| OutStanding Report | [VERIFIED-VB6] |
| Party wise OutStanding | [VERIFIED-VB6] |
| Cashier Report | [VERIFIED-VB6] |
| Booking Inquiry Detail | [VERIFIED-VB6] |
| Settlement Report | [VERIFIED-VB6] |
| Daily Function Sheet | [VERIFIED-VB6] |
| Item Wise Sales Report | [VERIFIED-VB6] |
| Company Wise Sale Report | [VERIFIED-VB6] |
| Function Wise Item Detail | [VERIFIED-VB6] |
| Cover Analysis | [VERIFIED-VB6] |
| Collection Summary | [VERIFIED-VB6] |
| Tax Report | [VERIFIED-VB6] |
| Tax Summary | [VERIFIED-VB6] |
| Banquet Taxwise Details | [VERIFIED-VB6] |

### Inventory Reports
| Report | Evidence |
|--------|----------|
| Store Issue Report | [VERIFIED-VB6] |
| Liquor Sale Report | [VERIFIED-VB6] |
| Kitchen Stock Report I/R Basis | [VERIFIED-VB6] |
| Purchase Register | [VERIFIED-VB6] |
| Purchase Summary | [VERIFIED-VB6] |
| Cash/Credit Purchase | [VERIFIED-VB6] |
| Stock Register | [VERIFIED-VB6] |
| Stock Summary | [VERIFIED-VB6] |
| Stock In Hand | [VERIFIED-VB6] |
| Excess Consumption Report | [VERIFIED-VB6] |
| Store Issue Register | [VERIFIED-VB6] |
| Indent Register | [VERIFIED-VB6] |
| Purchase Order Register | [VERIFIED-VB6] |
| Daily Store Issue Reports | [VERIFIED-VB6] |
| VAT Register | [VERIFIED-VB6] |
| Purchase Ledger | [VERIFIED-VB6] |
| Issue CheckList | [VERIFIED-VB6] |
| M.R. Register | [VERIFIED-VB6] |
| Stock Summary P/S Basis | [VERIFIED-VB6] |
| ABC Analysis | [VERIFIED-VB6] |
| Production Report I/R Basis | [VERIFIED-VB6] |
| VAT Register II | [VERIFIED-VB6] |
| VAT Register III | [VERIFIED-VB6] |
| Form III | [VERIFIED-VB6] |
| UPVAT XXIV | [VERIFIED-VB6] |

### Night Audit Reports
| Report | Evidence |
|--------|----------|
| Credit Report | [VERIFIED-VB6] |
| Daily Report | [VERIFIED-VB6] |
| Room Inventory | [VERIFIED-VB6] |
| Charge Payment Detail | [VERIFIED-VB6] |
| Guest Trail | [VERIFIED-VB6] |
| Occupancy Analysis | [VERIFIED-VB6] |
| Market Segment Analysis | [VERIFIED-VB6] |
| Business Source Analysis | [VERIFIED-VB6] |
| Company Analysis | [VERIFIED-VB6] |
| Travel Agent Analysis | [VERIFIED-VB6] |
| Guest Audit Ledger | [VERIFIED-VB6] |
| Charges Remove Log | [VERIFIED-VB6] |
| FOCC Report | [VERIFIED-VB6] |
| Checkout Analysis | [VERIFIED-VB6] |
| Food Costing Report | [VERIFIED-VB6] |
| Revenue Analysis | [VERIFIED-VB6] |
| F&B Cost Statement | [VERIFIED-VB6] |
| Budget Analysis | [VERIFIED-VB6] |
| Night Audit Log | [VERIFIED-VB6] |
| Ageing Analysis (Debtors) | [VERIFIED-VB6] |
| Ageing Analysis (Creditors) | [VERIFIED-VB6] |
| GST Reports | [VERIFIED-VB6] |

### Front Office Reports
| Report | Evidence |
|--------|----------|
| Instant House Count | [VERIFIED-VB6] |
| Room Inventory | [VERIFIED-VB6] |
| Guest In House | [VERIFIED-VB6] |
| House Keeping Report | [VERIFIED-VB6] |
| Charge Payment Detail | [VERIFIED-VB6] |
| Payments By Cashier | [VERIFIED-VB6] |
| Cashier Report | [VERIFIED-VB6] |
| Settlement Report | [VERIFIED-VB6] |
| Cancel Bill Details | [VERIFIED-VB6] |
| Room Change History | [VERIFIED-VB6] |
| Arrival And Departure Register | [VERIFIED-VB6] |
| FOM Sales Register | [VERIFIED-VB6] |
| Room Wise Plan Detail | [VERIFIED-VB6] |
| Expected Plan/Package F&B Details | [VERIFIED-VB6] |
| Occupancy Report | [VERIFIED-VB6] |
| Company wise Nights | [VERIFIED-VB6] |
| Revenue During the stay | [VERIFIED-VB6] |
| Bill Change Report | [VERIFIED-VB6] |
| Check In Register | [VERIFIED-VB6] |
| Expected Check Out | [VERIFIED-VB6] |
| GRC Printing | [VERIFIED-VB6] |
| Check Out Register | [VERIFIED-VB6] |
| Extra Charges During Stay | [VERIFIED-VB6] |
| Plan Meal Tokens | [VERIFIED-VB6] |
| FOM Tax Detail | [VERIFIED-VB6] |
| Checked In Guest Detail | [VERIFIED-VB6] |
| Room Rent Audit Report | [VERIFIED-VB6] |
| Sales Report | [VERIFIED-VB6] |
| Tax Wise Charge Detail | [VERIFIED-VB6] |
| Arrival & Departure List | [VERIFIED-VB6] |

### Tourism Forms
| Report | Evidence |
|--------|----------|
| Form C | [VERIFIED-VB6] |
| Tourism Form 1 | [VERIFIED-VB6] |
| Tourism Form 2 | [VERIFIED-VB6] |
| Tourism Form 5 | [VERIFIED-VB6] |
| Tourism Form 6 | [VERIFIED-VB6] |
| Tourism Form 4 | [VERIFIED-VB6] |
| Luxury Tax Report | [VERIFIED-VB6] |
| Monthly Return | [VERIFIED-VB6] |

### Reservation Reports
| Report | Evidence |
|--------|----------|
| Reservation Status | [VERIFIED-VB6] |
| Reservation Status Arrival | [VERIFIED-VB6] |
| Arrival List | [VERIFIED-VB6] |
| Advance Recd. | [VERIFIED-VB6] |
| Advance Recd. Arrival | [VERIFIED-VB6] |
| 23 Day Room Availability Forecast | [VERIFIED-VB6] |
| 23 Day Room Type Availability Forecast | [VERIFIED-VB6] |
| Package Forecast | [VERIFIED-VB6] |

### House Keeping Reports
| Report | Evidence |
|--------|----------|
| Room Status Report | [VERIFIED-VB6] |
| Complaint Detail | [VERIFIED-VB6] |

### HR & Payroll Reports
| Report | Evidence |
|--------|----------|
| Attendence Report | [VERIFIED-VB6] |
| Pay Slip | [VERIFIED-VB6] |
| Loan Register | [VERIFIED-VB6] |
| Loan Advance Summary | [VERIFIED-VB6] |
| Payroll Register | [VERIFIED-VB6] |
| PF Statement | [VERIFIED-VB6] |
| Loan/Advance Ledger | [VERIFIED-VB6] |
| Form C | [VERIFIED-VB6] |
| Gratuity Report | [VERIFIED-VB6] |
| Empl_Detl | [VERIFIED-VB6] |

### EPABX Reports
| Report | Evidence |
|--------|----------|
| EPABX Call Report | [VERIFIED-VB6] |
| EPABX Report Preview | [VERIFIED-VB6] |

### Members Mgmt Reports
| Report | Evidence |
|--------|----------|
| Member Visit Details | [VERIFIED-VB6] |
| Member Mailing Labels | [VERIFIED-VB6] |
| Member Bill Missing Report | [VERIFIED-VB6] |
| Member Sales Register | [VERIFIED-VB6] |
| Member Ledger | [VERIFIED-VB6] |
| Member Tax Report | [VERIFIED-VB6] |
| Payment Due Letter Report | [VERIFIED-VB6] |
| Member Birthday/Anniversary Details | [VERIFIED-VB6] |

### Mall Management Reports
| Report | Evidence |
|--------|----------|
| Facility Bill Register | [VERIFIED-VB6] |

## 8. Permissions

- Reports module access UserPermission form se control hota hai [VERIFIED-VB6]
- Per-user menu hierarchy MenuHelp table me OPT1..OPT4 columns [VERIFIED-SQL]
- PrintFormats table for print format management [VERIFIED-VB6]

## 9. Business Rules

1. **Crystal Reports** — 524+ .rpt files for all reports [VERIFIED-VB6]
2. **.ttx field maps** — Field definition files for report data binding [VERIFIED-VB6]
3. **PrintFormats table** — Print format management (39 refs) [VERIFIED-VB6]
4. **Report viewers** — Module-specific report viewers (rFomRepView, rHallRepView, etc.) [VERIFIED-VB6]
5. **GridPrint** — Data grid printing utility [VERIFIED-VB6]
6. **Audit columns** — Har report me U_Name, U_EntDt, U_AE [VERIFIED-VB6]
7. **Multi-site** — LogSite_Code filters every report query [VERIFIED-VB6]

## 10. VB6 Logic (from EXTRAS.text)

### Report Viewer Pattern
```vb
' Standard report viewer pattern
global_52 = New rFomRepView  ' or rHallRepView, rInventRepView, etc.
' Report loaded with .ttx field map and .rpt file
```

### Grid Print (GridPrint)
```vb
' Data grid printing utility
' Prints DataGrid contents directly
```

### Print Formats (PrintFormats)
```vb
' Print format management table
' Stores format definitions for reports
```

## 11. SQL Logic (from SQL_TRACKING_RESULTS.md)

### Report Queries
```sql
-- Reports use SELECT queries only (no writes)
-- Report SQL TextData truncated in trace pass
-- Pass-5 me capture karna hoga for full report SQL
```

### Night Audit Reports
```sql
-- Night Audit room query joins:
-- RoomMast→RoomOcc→GuestFolio→GuestProf→SubGroup→RoomCat→GUESTSTAT
SELECT RoomMast.Code AS RoomNo 
FROM (((((RoomMast RIGHT JOIN RoomOcc ON RoomMast.Code=RoomOcc.RoomNo)
   LEFT JOIN GuestFolio ON RoomOcc.DocId=GuestFolio.DocId)
   LEFT JOIN GuestProf ON GuestFolio.GuestProf=GuestProf.Code)
   LEFT JOIN SubGroup ON GuestFolio.Company=SubGroup.SubCode)
   LEFT JOIN RoomCat ON RoomOcc.RoomCat=RoomCat.Code)
   LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS
WHERE roomocc.type not in ('C','O') 
  AND ROOMMAST.TYPE='RO' 
  AND RoomMast.LogSite_Code='<site>'
```

## 12. Tables (from DATABASE_INVENTORY.md)

| Table | Usage Count | Purpose |
|-------|-------------|---------|
| PrintFormats | 39 | Print formats |

## 13. Fields

### PrintFormats
- FormatName, ReportName, FieldName, FieldType, FieldSize
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

## 14. Workflow

```
Report Selection (Menu)
  ├── Select Module (Finance/POS/Banquet/Inventory/etc.)
  ├── Select Report
  └── Set Parameters (Date Range, Filters)
       ↓
Report Generation
  ├── Execute SELECT query
  ├── Bind to .ttx field map
  └── Load .rpt Crystal report
       ↓
Report Viewing
  ├── View in report viewer
  ├── Print directly
  └── Export to PDF/Excel
       ↓
Grid Print (optional)
  └── Print DataGrid contents
```

## 15. Screenshots

Screenshots folder me available hain:
- Reports module ke screenshots `17_Reports/screenshots/` me hain

## 16. Test Cases

| Test Case | Description | Evidence |
|-----------|-------------|----------|
| TC-RPT-001 | Finance Day Book report | [VERIFIED-VB6] |
| TC-RPT-002 | Finance Trial Balance report | [VERIFIED-VB6] |
| TC-RPT-003 | POS Sales Register report | [VERIFIED-VB6] |
| TC-RPT-004 | POS Settlement Summary report | [VERIFIED-VB6] |
| TC-RPT-005 | Banquet Sales Register report | [VERIFIED-VB6] |
| TC-RPT-006 | Inventory Stock Register report | [VERIFIED-VB6] |
| TC-RPT-007 | Night Audit Daily Report | [VERIFIED-VB6] |
| TC-RPT-008 | Front Office Occupancy Report | [VERIFIED-VB6] |
| TC-RPT-009 | Reservation Status report | [VERIFIED-VB6] |
| TC-RPT-010 | House Keeping Room Status report | [VERIFIED-VB6] |
| TC-RPT-011 | HR Payroll Register report | [VERIFIED-VB6] |
| TC-RPT-012 | EPABX Call Report | [VERIFIED-VB6] |
| TC-RPT-013 | Member Sales Register report | [VERIFIED-VB6] |
| TC-RPT-014 | Mall Facility Bill Register | [VERIFIED-VB6] |
| TC-RPT-015 | Grid Print utility | [VERIFIED-VB6] |
| TC-RPT-016 | Print Formats management | [VERIFIED-VB6] |

## 17. Known Issues

1. **Report SQL truncated** — Report SQL TextData truncated in trace pass — pass-5 me capture karna hoga [VERIFIED-SQL]
2. **Crystal Reports dependency** — 524+ .rpt files Crystal Reports par dependent hain [VERIFIED-VB6]
3. **No stored procedures** — Reports inline SQL use karte hain [VERIFIED-VB6]
4. **.ttx field maps** — Field definition files legacy hain, modern reporting me replace karna hoga

## 18. Migration Notes

1. **Crystal Reports** — Modern reporting engine (SSRS, Power BI, Crystal Reports .NET) me migrate karna hoga
2. **.ttx field maps** — Field definition files ko modern data binding se replace karna hoga
3. **Report viewers** — Module-specific report viewers ko unified reporting interface se replace karna hoga
4. **Grid Print** — Data grid printing ko modern export (PDF/Excel) se replace karna hoga
5. **PrintFormats** — Print format management ko modern template engine se replace karna hoga
6. **Report distribution** — Reports ko centralized reporting service me consolidate karna hoga
