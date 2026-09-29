# INVENTORY MODULE

## 1. Purpose

Inventory module hotel ki material management, purchasing, stock tracking, aur consumption management ke liye hai. Purchase order se lekar stock issue tak ka complete flow is module me hai. POS aur Banquet modules se integrated hai — kitchen consumption is module se track hota hai.

**Evidence:** [VERIFIED-VB6] — 40 menu items, 2 sub-groups: Transactions, Reports.

## 2. Menu Structure (from MENU_INVENTORY.md)

```
Inventory
├── Transactions
│   ├── Gravy Item Entry
│   ├── Indent
│   ├── Purchase Order
│   ├── M.R. Entry
│   ├── Purchase Bill
│   ├── Requisition Slip
│   ├── Stock Issue on Requisition
│   ├── Kitchen Closing Stock
│   ├── Stock Transfer
│   └── Finish Material Receive Entry
│   └── Excise Invoice Cum Gate Pass
└── Reports
    ├── Store Issue Report
    ├── Liquor Sale Report
    ├── Kitchen Stock Report I/R Basis
    ├── Purchase Register
    ├── Purchase Summary
    ├── Cash/Credit Purchase
    ├── Stock Register
    ├── Stock Summary
    ├── Stock In Hand
    ├── Excess Consumption Report
    ├── Store Issue Register
    ├── Indent Register
    ├── Purchase Order Register
    ├── Daily Store Issue Reports
    ├── VAT Register
    ├── Purchase Ledger
    ├── Issue CheckList
    ├── M.R. Register
    ├── Stock Summary P/S Basis
    ├── ABC Analysis
    ├── Production Report I/R Basis
    ├── VAT Register II
    ├── VAT Register III
    ├── VAT Register III (duplicate)
    ├── Form III
    └── UPVAT XXIV
```

## 3. Screens (from vb6_form_inventory.md)

### Inventory Forms (Item*/Godown/Stock)
- **FrmItemMast** — Item master
- **FrmItemMastRaw** — Raw item master
- **FrmItemCatMast** — Item category master
- **FrmItemCatRaw** — Raw item category
- **FrmItemGroupMast** — Item group master
- **FrmItemGroupMastRaw** — Raw item group
- **FrmConsumMast** — Consumption master
- **FrmConsumMast9999** — Consumption master (variant)
- **FrmStockTransfer** — Stock transfer
- **FrmOPStock** — Opening stock
- **FrmDenomination** — Denomination
- **Godown** — Godown master
- **kClStk** — Kitchen closing stock
- **DepOpStk** — Department opening stock
- **FrmUnitMast** — Unit master
- **FrmExpense** — Expense entry
- **PIndent** — Purchase indent
- **pPBill** — Purchase bill
- **pPOrder** — Purchase order
- **pGIss** — Purchase goods issue
- **pMREntry** — Material receive entry
- **pReqSlip** — Requisition slip
- **FrmDeliveryBoyMast** — Delivery boy master
- **FrmWaiterMast** — Waiter master
- **FrmMenuList** — Menu list
- **FrmMenuRate** — Menu rate
- **frmMenuItemCopy** — Menu item copy

## 4. Masters

| Master | Table | Evidence |
|--------|-------|----------|
| Item Master | ItemMast | [VERIFIED-VB6] |
| Item Category | ItemCatMast | [VERIFIED-VB6] |
| Item Group | ItemGrp | [VERIFIED-VB6] |
| Unit Master | UnitMast | [VERIFIED-VB6] |
| Godown Master | GodownMast | [VERIFIED-VB6] |
| Consumption Master | FrmConsumMast | [VERIFIED-VB6] |
| Party Master | SubGroup | [VERIFIED-VB6] |
| Department | Depart | [VERIFIED-VB6] |
| Voucher Type | Voucher_Type | [VERIFIED-VB6] |
| Voucher Prefix | Voucher_Prefix | [VERIFIED-VB6] |

## 5. Transactions

| Transaction | Form | Table | Evidence |
|-------------|------|-------|----------|
| Purchase Indent | PIndent | Indent | [VERIFIED-VB6] |
| Purchase Order | pPOrder | Purch1 | [VERIFIED-VB6] |
| Purchase Bill | pPBill | Purch1/Purch2 | [VERIFIED-VB6] |
| Material Receive | pMREntry | — | [VERIFIED-VB6] |
| Requisition Slip | pReqSlip | — | [VERIFIED-VB6] |
| Stock Issue | pGIss | Stock | [VERIFIED-VB6] |
| Stock Transfer | FrmStockTransfer | Stock | [VERIFIED-VB6] |
| Opening Stock | FrmOPStock | Stock | [VERIFIED-VB6] |
| Kitchen Closing Stock | kClStk | KClStk | [VERIFIED-VB6] |
| Department Opening Stock | DepOpStk | DepOpStk | [VERIFIED-VB6] |
| Gravy Item Entry | RsGravyItemEntry | — | [VERIFIED-VB6] |
| Expense Entry | FrmExpense | — | [VERIFIED-VB6] |

## 6. Operations

- **Purchase Management** — Indent → Purchase Order → Purchase Bill → Material Receive
- **Stock Management** — Opening stock, stock transfer, stock issue
- **Consumption Tracking** — Kitchen closing stock, department-wise consumption
- **Requisition** — Inter-department material requisition
- **Godown Management** — Multi-godown stock tracking
- **ABC Analysis** — Item classification by value/consumption

## 7. Reports

| Report | Form | Evidence |
|--------|------|----------|
| Store Issue Report | rInventRepView | [VERIFIED-VB6] |
| Liquor Sale Report | rInventRepView | [VERIFIED-VB6] |
| Kitchen Stock Report I/R Basis | rInventRepView | [VERIFIED-VB6] |
| Purchase Register | rInventRepView | [VERIFIED-VB6] |
| Purchase Summary | rInventRepView | [VERIFIED-VB6] |
| Cash/Credit Purchase | rInventRepView | [VERIFIED-VB6] |
| Stock Register | rInventRepView | [VERIFIED-VB6] |
| Stock Summary | rInventRepView | [VERIFIED-VB6] |
| Stock In Hand | rInventRepView | [VERIFIED-VB6] |
| Excess Consumption Report | rInventRepView | [VERIFIED-VB6] |
| Store Issue Register | rInventRepView | [VERIFIED-VB6] |
| Indent Register | rInventRepView | [VERIFIED-VB6] |
| Purchase Order Register | rInventRepView | [VERIFIED-VB6] |
| Daily Store Issue Reports | rInventRepView | [VERIFIED-VB6] |
| VAT Register | rInventRepView | [VERIFIED-VB6] |
| Purchase Ledger | rInventRepView | [VERIFIED-VB6] |
| Issue CheckList | rInventRepView | [VERIFIED-VB6] |
| M.R. Register | rInventRepView | [VERIFIED-VB6] |
| Stock Summary P/S Basis | rInventRepView | [VERIFIED-VB6] |
| ABC Analysis | rInventRepView | [VERIFIED-VB6] |
| Production Report I/R Basis | rInventRepView | [VERIFIED-VB6] |
| VAT Register II | rInventRepView | [VERIFIED-VB6] |
| VAT Register III | rInventRepView | [VERIFIED-VB6] |
| Form III | rInventRepView | [VERIFIED-VB6] |
| UPVAT XXIV | rInventRepView | [VERIFIED-VB6] |

## 8. Permissions

- Inventory module access UserPermission form se control hota hai [VERIFIED-VB6]
- Per-user menu hierarchy MenuHelp table me OPT1..OPT4 columns [VERIFIED-SQL]
- Voucher types Voucher_Type table me Category field se classify hote hain ('PurchBill','EXPENT', etc.) [VERIFIED-VB6]

## 9. Business Rules

1. **Item master** — ItemMast: Code, ItemType('Store'), LPurRate, PURCHRATE, IssueUnit, CONVRATIO [VERIFIED-VB6]
2. **Stock tracking** — Stock table: Item, GodownCode, Qty, Rate [VERIFIED-VB6]
3. **Voucher numbering** — Voucher_Type + Voucher_Prefix tables manage serial numbers per type per site [VERIFIED-VB6]
4. **DocId pattern** — varchar(21) = site-prefix + Vtype + serial [VERIFIED-VB6]
5. **Audit columns** — Har transaction me U_Name, U_EntDt, U_AE ('A'/'E'/'D') [VERIFIED-VB6]
6. **Multi-site** — LogSite_Code filters every query [VERIFIED-VB6]
7. **Purchase flow** — Indent → Purchase Order → Purchase Bill → Material Receive → Stock [VERIFIED-VB6]
8. **Stock issue** — Requisition Slip → Stock Issue on Requisition → Stock [VERIFIED-VB6]
9. **Kitchen closing stock** — kClStk table for kitchen closing stock [VERIFIED-VB6]
10. **Department closing stock** — DepOpStk/KClStk for department closing stock [VERIFIED-VB6]
11. **BOM** — Bill of Material for production items [VERIFIED-VB6]
12. **SplitStock** — Split stock for split departments [VERIFIED-VB6]

## 10. VB6 Logic (from EXTRAS.text)

### Item Master (FrmItemMast)
```vb
' Item master with Code, Name, ItemType, LPurRate, PURCHRATE, IssueUnit, CONVRATIO
' Linked to: Stock, KOT, BOM
```

### Purchase Flow
```vb
' PIndent → Purchase Indent
' pPOrder → Purchase Order (Purch1 header)
' pPBill → Purchase Bill (Purch1/Purch2 detail)
' pMREntry → Material Receive Entry
' pGIss → Purchase Goods Issue
```

### Stock Transfer (FrmStockTransfer)
```vb
' Stock transfer between godowns
' Voucher_Type 'ST' for stock transfer
```

### Kitchen Closing Stock (kClStk)
```vb
' Kitchen closing stock entry
' KClStk table
```

### Godown Master (Godown)
```vb
' Godown master with Code, Name, ShortName, DepartCode, SysYn
' SQL: Select Code,Name From Godownmast Where (LOGSITE_CODE='KK' or LOGSITE_CODE='HO') Order by Name
```

### Department Opening Stock (DepOpStk)
```vb
' Department opening stock entry
' DepOpStk table
```

## 11. SQL Logic (from SQL_TRACKING_RESULTS.md)

### Godown Query
```sql
Select E.ImportOptionInPurchase,E.AcFieldAlterable,E.AddModifyEntryInBackDate,
       E.PurChaseGodown,G.Name PurChaseGodownName,E.BarCodeFeatureInPurchase,
       E.ItemRateInPurchaseBillBasedOn 
From Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code 
WHERE E.LOGSITE_CODE='KK'

Select Code,Name From Godownmast Where (LOGSITE_CODE='KK' or LOGSITE_CODE='HO') Order by Name
```

### Indent Query
```sql
Select I.*,Description,d.Name as DepartmentName 
From (Indent I Inner join Voucher_Type VT on Vt.V_type=I.VType) 
     Inner join GodownMast D on D.CODE=I.Department 
where DocID='DKK PIND 2026       1'
```

### Stock Query
```sql
-- Stock: Item, GodownCode, Qty, Rate
-- StockLog: Stock transaction log
-- SplitStock: Split stock for split departments
```

## 12. Tables (from DATABASE_INVENTORY.md)

| Table | Usage Count | Purpose |
|-------|-------------|---------|
| ItemMast | 618 | Item master |
| ItemCatMast | 246 | Item category |
| ItemGrp | 223 | Item group |
| ItemRate | 70 | Item rate |
| Stock | 473 | Stock balance |
| GodownMast | 130 | Godown master |
| UnitMast | 54 | Unit master |
| Purch1 | 64 | Purchase header |
| Purch2 | 44 | Purchase detail |
| BOM | 50 | Bill of material |
| PackingOrder | 48 | Packing order |
| PackingOrderDetail | 48 | Packing order detail |
| StockLog | — | Stock transaction log |
| SplitStock | — | Split stock |
| SplitStock1 | — | Split stock (1) |
| Stock1 | — | Stock (1) |
| Indent | — | Purchase indent |
| KClStk | — | Kitchen closing stock |
| DepOpStk | — | Department opening stock |

## 13. Fields

### ItemMast
- Code, Name, ItemType('Store'), LPurRate, PURCHRATE, IssueUnit, CONVRATIO [VERIFIED-VB6]

### GodownMast
- Code (varchar(6)), Name (varchar(25)), ShortName (varchar(6))
- DepartCode (varchar(6)), SysYn (varchar(1))
- Site_Code (varchar(2)), LogSite_Code (varchar(2)) [VERIFIED-VB6]

### Stock
- Item, GodownCode, Qty, Rate [VERIFIED-VB6]

### Purch1 (Purchase Header)
- DocId, Vtype, VNo, Vdate, PartyCode, SunCode, ROff, RestCode, SunAppDate, RevCode [VERIFIED-VB6]

### Purch2 (Purchase Detail)
- DocId, SNo, Item, Qty, Rate, Amount [VERIFIED-VB6]

### Indent
- DocId, VType, Department, Godown [VERIFIED-VB6]

### BOM (Bill of Material)
- Item, Component, Qty [VERIFIED-VB6]

## 14. Workflow

```
Purchase Flow
  ├── Purchase Indent (PIndent) → Indent table
  ├── Purchase Order (pPOrder) → Purch1 header
  ├── Purchase Bill (pPBill) → Purch1/Purch2 detail
  ├── Material Receive (pMREntry) → Stock update
  └── Stock Issue (pGIss) → Stock update
       ↓
Stock Management
  ├── Opening Stock (FrmOPStock) → Stock
  ├── Stock Transfer (FrmStockTransfer) → Stock
  ├── Kitchen Closing Stock (kClStk) → KClStk
  └── Department Opening Stock (DepOpStk) → DepOpStk
       ↓
Consumption
  ├── Requisition Slip (pReqSlip)
  ├── Stock Issue on Requisition (pGIss)
  └── Excess Consumption Report
       ↓
Reports
  ├── Stock Register, Stock Summary, Stock In Hand
  ├── Purchase Register, Purchase Summary
  ├── ABC Analysis
  └── VAT Register
```

## 15. Screenshots

Screenshots folder me available hain:
- Inventory module ke screenshots `07_Inventory/screenshots/` me hain

## 16. Test Cases

| Test Case | Description | Evidence |
|-----------|-------------|----------|
| TC-INV-001 | Item master create/edit | [VERIFIED-VB6] |
| TC-INV-002 | Purchase indent entry | [VERIFIED-VB6] |
| TC-INV-003 | Purchase order creation | [VERIFIED-VB6] |
| TC-INV-004 | Purchase bill entry | [VERIFIED-VB6] |
| TC-INV-005 | Material receive entry | [VERIFIED-VB6] |
| TC-INV-006 | Stock transfer | [VERIFIED-VB6] |
| TC-INV-007 | Opening stock entry | [VERIFIED-VB6] |
| TC-INV-008 | Kitchen closing stock | [VERIFIED-VB6] |
| TC-INV-009 | Stock issue on requisition | [VERIFIED-VB6] |
| TC-INV-010 | ABC analysis report | [VERIFIED-VB6] |
| TC-INV-011 | Stock register report | [VERIFIED-VB6] |
| TC-INV-012 | Excess consumption report | [VERIFIED-VB6] |

## 17. Known Issues

1. **Duplicate menu items:** "VAT Register III" do baar appear hota hai [VERIFIED-VB6]
2. **No stored procedures** — Application inline ADODB SQL use karta hai [VERIFIED-VB6]
3. **SplitStock complexity** — Split stock system complex hai, modern inventory management me simplify karna hoga

## 18. Migration Notes

1. **Item master** — ItemMast ko modern inventory management system me migrate karna hoga
2. **Stock tracking** — Real-time stock tracking with barcode/RFID integration karna hoga
3. **Purchase flow** — Purchase order system ko modern procurement system se replace karna hoga
4. **BOM** — Bill of Material ko modern manufacturing/ERP system se integrate karna hoga
5. **VAT reports** — GST compliance me upgrade karna hoga
6. **ABC Analysis** — Modern inventory classification techniques implement karna hoga
7. **Godown management** — Multi-warehouse management system me upgrade karna hoga
