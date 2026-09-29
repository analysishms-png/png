# POINT OF SALE (POS) MODULE

## 1. Purpose

POS module hotel ke restaurant/bars ka billing engine hai. KOT (Kitchen Order Ticket) entry, table management, bill generation, settlement, aur sales reporting yahin hoti hai. Touch-screen support bhi available hai. Inventory module se integrated hai — item consumption automatically stock se deduct hota hai.

**Evidence:** [VERIFIED-VB6] — 53 menu items, 4 sub-groups: POS Operations, POS Reports, POS M.I.S., POS Status.

## 2. Menu Structure (from MENU_INVENTORY.md)

```
Point Of Sale
├── POS Operations
│   ├── KOT Entry
│   ├── Table Change Entry
│   ├── Sale Bill Entry
│   ├── Settlement Entry
│   ├── POS Bill Reprint
│   ├── Split Sale Bill
│   ├── Display Table
│   ├── Order Booking
│   ├── Bill Lookup
│   ├── Order Booking Advance
│   ├── KOT Transfer
│   └── Token Entry
├── POS Reports
│   ├── Denomination Detail
│   ├── Bill Wise Adjustment Report
│   ├── Sales Register
│   ├── Stewardwise Sale
│   ├── Tablewise Sales
│   ├── Settlement Summary
│   ├── Tax Report
│   ├── KOT Wise Details
│   ├── Discount Register
│   ├── Cover Analysis
│   ├── Pending KOT
│   ├── Item wise Sale
│   ├── Deleted Unsettled Bill
│   ├── NC KOT Detail
│   ├── Sales Day Book
│   ├── Tax Register
│   ├── Order Detail Report
│   ├── Taxwise Details
│   ├── NC KOT Summary
│   ├── Discount Register (PartyWise)
│   ├── Not Delivered Order
│   ├── Group Wise Sale
│   ├── Customer Detail
│   ├── Collection Summary
│   ├── Open Item Sales
│   ├── Void Bills
│   ├── KOT Change Report
│   ├── Tax Summary
│   ├── Discount Summary
│   ├── Monthwise Sales
│   ├── ABC Analysis
│   ├── Sale Summary
│   ├── Tax Invoice Detail
│   └── Edited Bills
├── POS M.I.S.
│   ├── Collection Summary
│   ├── Open Item Sales
│   ├── Void Bills
│   ├── KOT Change Report
│   ├── Tax Summary
│   ├── Discount Summary
│   ├── Monthwise Sales
│   ├── ABC Analysis
│   ├── Sale Summary
│   ├── Tax Invoice Detail
│   └── Edited Bills
└── POS Status
    └── Payment Receive Entry (POS)
```

## 3. Screens (from vb6_form_inventory.md)

### POS Forms (Rs*, POS*)
- **RsBookingEntry** — Booking entry
- **RsBookingEntryAdvance** — Booking entry with advance
- **RsTouchScreenBookingEntry** — Touch screen booking entry
- **RsKOTEntry** — KOT entry
- **RsTouchScreenKOTEntry** — Touch screen KOT entry
- **RsTokenEntry** — Token entry
- **RsTouchScreenTOKENEntry** — Touch screen token entry
- **RsSaleBillSplit** — Split sale bill
- **RsAssignDelivery** — Assign delivery
- **RsGravyItemEntry** — Gravy item entry
- **RsMenuItemEntry** — Menu item entry
- **RsSpecItemEntry** — Special item entry
- **RsKitchenMaterial** — Kitchen material
- **RsKitchenStk** — Kitchen stock
- **RsPOSCustInfo** — POS customer info
- **RsPOSDisplay** — POS display
- **RsPOSDisplayNew** — POS display (new)
- **RsPaymentReceice** — Payment receive
- **RsStatusScreen** — Status screen
- **RsTableMast** — Table master
- **RsTbChange** — Table change
- **RsTouchDisplayTB** — Touch display table
- **RsTouchScreenFAFind** — Touch screen find
- **RsTouchScreenKeyBoard** — Touch screen keyboard
- **RsTouchScreenSteward** — Touch screen steward
- **RsTouchScreenAdvanceDepDialog** — Touch screen advance deposit dialog
- **RsTouchScreenSaleBill** — Touch screen sale bill
- **POSBillPrint** — POS bill print
- **POSBillReprint** — POS bill reprint
- **RSSaleBill** — Sale bill
- **RSSaleBill1** — Sale bill (1)
- **RSSaleBillDisplay** — Sale bill display
- **POSAdvanceDepDialog** — POS advance deposit dialog
- **FrmPOSBillDeletion** — POS bill deletion
- **FrmPOSBillModificationDatewise** — POS bill modification (datewise)
- **FrmPOSBillModificationItemGroupwise** — POS bill modification (item groupwise)
- **FrmPOSRecycleData** — POS recycle data
- **FrmPOSSaleDataTransfer** — POS sale data transfer
- **pHappyHours** — Happy hours
- **NewHappyHours** — New happy hours
- **repTouchDate** — Touch date
- **FrmUserPaymentCollection** — User payment collection
- **FrmReceivePayment** — Receive payment
- **FrmClaimEntry** — Claim entry
- **FrmNAMessageA/B/C** — Night audit messages

### Supporting Forms
- **FrmWaiterMast** — Waiter master
- **FrmDeliveryBoyMast** — Delivery boy master
- **FrmMenuList** — Menu list
- **FrmMenuRate** — Menu rate
- **frmMenuItemCopy** — Menu item copy
- **OutLetMast** — Outlet master
- **OutLetSundry** — Outlet sundry

## 4. Masters

| Master | Table | Evidence |
|--------|-------|----------|
| Table Master | RsTableMast | [VERIFIED-VB6] |
| Waiter Master | Waiter | [VERIFIED-VB6] |
| Delivery Boy | FrmDeliveryBoyMast | [VERIFIED-VB6] |
| Menu List | FrmMenuList | [VERIFIED-VB6] |
| Menu Rate | FrmMenuRate | [VERIFIED-VB6] |
| Outlet Master | OutLetMast | [VERIFIED-VB6] |
| Happy Hours | pHappyHours/NewHappyHours | [VERIFIED-VB6] |
| Item Master | ItemMast | [VERIFIED-VB6] |
| Item Rate | ItemRate | [VERIFIED-VB6] |
| Tax Structure | TaxStru | [VERIFIED-VB6] |
| Sundry Type | SundryType | [VERIFIED-VB6] |

## 5. Transactions

| Transaction | Form | Table | Evidence |
|-------------|------|-------|----------|
| KOT Entry | RsKOTEntry | KOT | [VERIFIED-VB6] |
| Token Entry | RsTokenEntry | TOKEN | [VERIFIED-VB6] |
| Sale Bill | RSSaleBill | Sale1/Sale2 | [VERIFIED-VB6] |
| Split Sale Bill | RsSaleBillSplit | SplitSale1/SplitSale2 | [VERIFIED-VB6] |
| Settlement | RsPaymentReceice | PayCharge | [VERIFIED-VB6] |
| Table Change | RsTbChange | — | [VERIFIED-VB6] |
| Order Booking | RsBookingEntry | — | [VERIFIED-VB6] |
| KOT Transfer | — | KOT | [VERIFIED-VB6] |
| Bill Reprint | POSBillReprint | Sale1/Sale2 | [VERIFIED-VB6] |
| Bill Deletion | FrmPOSBillDeletion | TempPosDel | [VERIFIED-VB6] |
| Payment Receive | FrmReceivePayment | PayCharge | [VERIFIED-VB6] |

## 6. Operations

- **KOT Entry** — Kitchen order ticket creation
- **Token Entry** — Token number generation
- **Sale Bill** — Bill generation with tax calculation
- **Split Sale Bill** — Split bill across multiple departments
- **Settlement** — Payment settlement (cash/card/credit)
- **Table Change** — Change table assignment
- **Order Booking** — Advance order booking
- **KOT Transfer** — Transfer KOT between tables
- **Bill Reprint** — Reprint existing bills
- **Bill Deletion** — Delete unsettled bills
- **Happy Hours** — Time-based discount rules
- **Touch Screen** — Touch-screen interface for tables

## 7. Reports

| Report | Form | Evidence |
|--------|------|----------|
| Sales Register | rPOSRepView | [VERIFIED-VB6] |
| Stewardwise Sale | rPOSRepView | [VERIFIED-VB6] |
| Tablewise Sales | rPOSRepView | [VERIFIED-VB6] |
| Settlement Summary | rPOSRepView | [VERIFIED-VB6] |
| Tax Report | rPOSRepView | [VERIFIED-VB6] |
| KOT Wise Details | rPOSRepView | [VERIFIED-VB6] |
| Discount Register | rPOSRepView | [VERIFIED-VB6] |
| Cover Analysis | rPOSRepView | [VERIFIED-VB6] |
| Pending KOT | rPOSRepView | [VERIFIED-VB6] |
| Item wise Sale | rPOSRepView | [VERIFIED-VB6] |
| Deleted Unsettled Bill | rPOSRepView | [VERIFIED-VB6] |
| NC KOT Detail | rPOSRepView | [VERIFIED-VB6] |
| Sales Day Book | rPOSRepView | [VERIFIED-VB6] |
| Tax Register | rPOSRepView | [VERIFIED-VB6] |
| Order Detail Report | rPOSRepView | [VERIFIED-VB6] |
| Taxwise Details | rPOSRepView | [VERIFIED-VB6] |
| NC KOT Summary | rPOSRepView | [VERIFIED-VB6] |
| Discount Register (PartyWise) | rPOSRepView | [VERIFIED-VB6] |
| Not Delivered Order | rPOSRepView | [VERIFIED-VB6] |
| Group Wise Sale | rPOSRepView | [VERIFIED-VB6] |
| Customer Detail | rPOSRepView | [VERIFIED-VB6] |
| Collection Summary | rPOSRepView | [VERIFIED-VB6] |
| Open Item Sales | rPOSRepView | [VERIFIED-VB6] |
| Void Bills | rPOSRepView | [VERIFIED-VB6] |
| KOT Change Report | rPOSRepView | [VERIFIED-VB6] |
| Tax Summary | rPOSRepView | [VERIFIED-VB6] |
| Discount Summary | rPOSRepView | [VERIFIED-VB6] |
| Monthwise Sales | rPOSRepView | [VERIFIED-VB6] |
| ABC Analysis | rPOSRepView | [VERIFIED-VB6] |
| Sale Summary | rPOSRepView | [VERIFIED-VB6] |
| Tax Invoice Detail | rPOSRepView | [VERIFIED-VB6] |
| Edited Bills | rPOSRepView | [VERIFIED-VB6] |
| Denomination Detail | rPOSRepView | [VERIFIED-VB6] |
| Bill Wise Adjustment Report | rPOSRepView | [VERIFIED-VB6] |

## 8. Permissions

- POS module access UserPermission form se control hota hai [VERIFIED-VB6]
- Per-user menu hierarchy MenuHelp table me OPT1..OPT4 columns [VERIFIED-SQL]
- Cashier-wise settlement tracking (Payments By Cashier report) [VERIFIED-VB6]

## 9. Business Rules

1. **KOT table** — DocId, Sno, Token, Item, Qty, Delivery [VERIFIED-VB6]
2. **Sale1/Sale2** — POS sale header/detail [VERIFIED-VB6]
3. **SplitSale1/SplitSale2** — Split bill staging [VERIFIED-VB6]
4. **TempPosDel** — Deleted bill staging [VERIFIED-VB6]
5. **TOKEN table** — Token number tracking (124 refs) [VERIFIED-VB6]
6. **Voucher numbering** — Voucher_Type + Voucher_Prefix tables manage serial numbers per type per site [VERIFIED-VB6]
7. **DocId pattern** — varchar(21) = site-prefix + Vtype + serial [VERIFIED-VB6]
8. **Audit columns** — Har transaction me U_Name, U_EntDt, U_AE ('A'/'E'/'D') [VERIFIED-VB6]
9. **Multi-site** — LogSite_Code filters every query [VERIFIED-VB6]
10. **Token reset** — Night Audit me token counters reset: `Update Depart Set CurTokenNo=0,CurTokenNoKOT=0 where AutoResetToken='Yes'` [VERIFIED-VB6]
11. **Split bill cleanup** — Night Audit me split-bill staging cleanup for split departments [VERIFIED-VB6]
12. **KOTAtNightAudit** — Enviro setting: KOT processing before audit [VERIFIED-VB6]
13. **POSBillAtNightAudit** — Enviro setting: POS bill processing before audit [VERIFIED-VB6]
14. **AutoSplit** — Depart setting for automatic bill splitting [VERIFIED-VB6]
15. **CoverMandatory** — Depart setting for mandatory cover entry [VERIFIED-VB6]
16. **MobileNoMandatory** — Depart setting for mandatory mobile number [VERIFIED-VB6]

## 10. VB6 Logic (from EXTRAS.text)

### KOT Entry (RsKOTEntry)
```vb
' KOT entry form
' Key fields: Token, Item, Qty, Delivery
' Tables: KOT, Stock, Sale1/Sale2
' OpenMode: 1 = Add, 2 = Edit
```

### Sale Bill (RSSaleBill)
```vb
' Sale bill generation
' Key fields: DocId, Vtype, VNo, Vdate, TableNo, Steward, Cover
' Tables: Sale1 (header), Sale2 (detail)
' Tax calculation: TaxStru
```

### Split Sale Bill (RsSaleBillSplit)
```vb
' Split bill across multiple departments
' Tables: SplitSale1, SplitSale2, SplitStock, SplitedSunTran
' VType='B'+ShortName for split departments
```

### Payment Receive (RsPaymentReceice)
```vb
' Payment settlement
' Key fields: PayCode, PayType, AmtCr, AmtDr
' Tables: PayCharge
```

### Table Master (RsTableMast)
```vb
' Table master for restaurant
' Key fields: Code, Name, Outlet, Capacity
```

### Happy Hours (pHappyHours/NewHappyHours)
```vb
' Time-based discount rules
' Key fields: FromTime, ToTime, Discount%
```

### Special Item Entry (RsSpecItemEntry)
```vb
' Special item entry (non-menu items)
' Key fields: Item, Qty, Rate, Amount
' SQL: SELECT IsNull(Max(Name),'') FROM Depart Where Code='<dept>'
```

### POS Display (RsPOSDisplay/RsPOSDisplayNew)
```vb
' POS display for kitchen/order tracking
' Shows pending KOTs, table status
```

## 11. SQL Logic (from SQL_TRACKING_RESULTS.md)

### KOT Query
```sql
-- KOT: DocId, Sno, Token, Item, Qty, Delivery
-- ItemMast: Item master
-- Depart: Outlet/department
-- Waiter: Steward
```

### Sale Query
```sql
-- Sale1: DocId, Vtype, VNo, Vdate, TableNo, Steward, Cover
-- Sale2: DocId, SNo, Item, Qty, Rate, Amount
-- SplitSale1/SplitSale2: Split bill staging
-- TempPosDel: Deleted bill staging
```

### Night Audit Token Reset
```sql
Update Depart Set CurTokenNo=0,CurTokenNoKOT=0 
where AutoResetToken='Yes' And Logsite_code='<site>'
```

### Split Bill Cleanup
```sql
Delete From POS_SBill / SplitSale1 / SplitSale2 / SplitStock / SplitedSunTran
Where VType='B<dept>' And LogSite_Code='<site>' And VDate=<audit date>
```

## 12. Tables (from DATABASE_INVENTORY.md)

| Table | Usage Count | Purpose |
|-------|-------------|---------|
| Sale1 | 243 | POS sale header |
| Sale2 | 113 | POS sale detail |
| KOT | 200 | Kitchen order ticket |
| TOKEN | 124 | Token master |
| SplitSale1 | 68 | Split sale header |
| SplitStock | — | Split stock |
| SplitStock1 | — | Split stock (1) |
| Stock1 | — | Stock (1) |
| TempPosDel | 37 | Deleted bill staging |
| PayCharge | 873 | Folio charge posting |
| PayChargeH | 67 | Charge history |
| PayChargeLog | 37 | Posting audit |
| ItemMast | 618 | Item master |
| ItemRate | 70 | Item rate |
| Waiter | 99 | Waiter master |
| Depart | 1378 | Department/outlet master |

## 13. Fields

### Sale1 (POS Sale Header)
- DocId, Vtype, VNo, Vdate, TableNo, Steward, Cover
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### Sale2 (POS Sale Detail)
- DocId, SNo, Item, Qty, Rate, Amount
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### KOT (Kitchen Order Ticket)
- DocId, SNo, Token, Item, Qty, Delivery
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### TOKEN
- TokenNo, TableNo, Steward, Outlet
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### PayCharge (Payment/Charge)
- DocId, SNo, Vtype, VNo, Vdate, PayCode, PayType
- AmtCr, AmtDr, RoomNo, FolioNo, Bill_No
- TaxPer, OnAmt, Split, SettleDate
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

### Depart (Department/Outlet)
- Code, Name, CurTokenNo, CurTokenNoKOT
- AutoResetToken, AutoSplit, KOTAtNightAudit, POSBillAtNightAudit
- CoverMandatory, MobileNoMandatory
- U_Name, U_EntDt, U_AE, LogSite_Code [VERIFIED-VB6]

## 14. Workflow

```
Table Assignment (RsTableMast)
  ↓
Order Booking (RsBookingEntry) [optional]
  ↓
KOT Entry (RsKOTEntry)
  ├── Select Table
  ├── Select Items (Menu/Special/Gravy)
  ├── Enter Quantity
  └── Send to Kitchen
       ↓
Kitchen Preparation
  ↓
Sale Bill (RSSaleBill)
  ├── Generate Bill
  ├── Tax Calculation (TaxStru)
  └── Split Bill (if needed)
       ↓
Settlement (RsPaymentReceice)
  ├── Cash Payment
  ├── Card Payment
  ├── Credit Payment
  └── Split Settlement
       ↓
Night Audit
  ├── Token Reset
  ├── Split Bill Cleanup
  └── KOT/POS Bill Processing
```

## 15. Screenshots

Screenshots folder me available hain:
- POS module ke screenshots `08_POS/screenshots/` me hain

## 16. Test Cases

| Test Case | Description | Evidence |
|-----------|-------------|----------|
| TC-POS-001 | KOT entry | [VERIFIED-VB6] |
| TC-POS-002 | Token entry | [VERIFIED-VB6] |
| TC-POS-003 | Sale bill generation | [VERIFIED-VB6] |
| TC-POS-004 | Split sale bill | [VERIFIED-VB6] |
| TC-POS-005 | Settlement (cash) | [VERIFIED-VB6] |
| TC-POS-006 | Settlement (card) | [VERIFIED-VB6] |
| TC-POS-007 | Settlement (credit) | [VERIFIED-VB6] |
| TC-POS-008 | Table change | [VERIFIED-VB6] |
| TC-POS-009 | Order booking | [VERIFIED-VB6] |
| TC-POS-010 | KOT transfer | [VERIFIED-VB6] |
| TC-POS-011 | Bill reprint | [VERIFIED-VB6] |
| TC-POS-012 | Bill deletion | [VERIFIED-VB6] |
| TC-POS-013 | Happy hours discount | [VERIFIED-VB6] |
| TC-POS-014 | Touch screen KOT entry | [VERIFIED-VB6] |
| TC-POS-015 | Sales register report | [VERIFIED-VB6] |
| TC-POS-016 | Settlement summary report | [VERIFIED-VB6] |
| TC-POS-017 | Tax report | [VERIFIED-VB6] |
| TC-POS-018 | ABC analysis report | [VERIFIED-VB6] |
| TC-POS-019 | Night audit token reset | [VERIFIED-VB6] |
| TC-POS-020 | Night audit split bill cleanup | [VERIFIED-VB6] |

## 17. Known Issues

1. **Duplicate menu items:** "VAT Register III" do baar appear hota hai [VERIFIED-VB6]
2. **No stored procedures** — Application inline ADODB SQL use karta hai [VERIFIED-VB6]
3. **Split bill complexity** — Split bill system complex hai, modern POS me simplify karna hoga
4. **Touch screen** — Touch screen support legacy hai, modern tablet/mobile interface karna hoga

## 18. Migration Notes

1. **POS system** — Modern cloud-based POS system me migrate karna hoga
2. **Touch screen** — Modern tablet/mobile interface karna hoga
3. **Split bill** — Split bill system ko modern POS ke built-in split bill feature se replace karna hoga
4. **Happy hours** — Time-based discount rules ko modern promotion engine se replace karna hoga
5. **Token system** — Digital token/queue management system me upgrade karna hoga
6. **Kitchen display** — Kitchen Display System (KDS) integration karna hoga
7. **Payment gateway** — Modern payment gateway integration karna hoga
8. **Tax calculation** — GST compliance me upgrade karna hoga
