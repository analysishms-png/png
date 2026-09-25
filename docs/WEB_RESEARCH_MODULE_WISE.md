# HMS_py Module-Wise Web Research — 10 VB6 Modules

**Date:** 2026-09-24
**Source:** Web search results from shadcnblocks, Figma community, GitHub, Behance, Dribbble, product sites, and industry blogs

---

## Module 1: Front Office 🏨

**VB6 Files:** fdCheckIn.frm, FdCheckOut.frm, fdDisplayFolio.frm, fdPostChrg.frm, fdWalkInEntry.frm, fdRoomOcc.frm, fdRoomChange.frm, FdGrpCheckOut.frm, FdReSettle.frm

### Web Research Findings

| Source | Key Insight | Applied Concept |
|--------|-------------|-----------------|
| **Mateu.io** (front-office screens) | Dense workflow screen: work queue rail, entity header, wizard steps, resource grid, offer card, add-on picker, ledger, payment picker, meter, stat history, process monitor | Check-in wizard (8 steps), work queue with arrivals/departures, entity header with guest banner, folio ledger at check-out |
| **Shadcnblocks Dashboard 18** | Collapsible inset sidebar, shift strip, square-cell booking chart, color-coded availability calendar, sortable arrivals table | Operations strip with quick actions, booking sources grid visualization, availability calendar |
| **Arrivo Tablet** (GitHub xelauvas) | 8-step check-in pipeline: Welcome → Find Reservation → Guest Details → Dinner Upsell → Confirmation | StepIndicator component, RoomCard, PaymentCard, StatusCard, kiosk screensaver with ambient display |
| **DigiGo** (face check-in) | 4 parallel rails: Arrive (5s) → Allocate (background) → Settle (40s) → Depart-to-room (2s) | Parallel arrival rails, reduce counter bottlenecks, room allocation pre-occupied before guest finishes kiosk |
| **Hotelify** (Figma, Peterdraw) | 14-page admin template: Dashboard, Inbox, Calendar, Reservation, Guest Profile, Rooms, Housekeeping, Inventory, Finance, Invoice, Reviews | Card-based layout, soft shadows, consistent spacing, responsive 1440px/800px/390px |

### Recommended UI Components

- **WorkQueue rail** — arrivals/departures/in-house tabs at top
- **EntityHeader** — selected guest banner (name, room, folio, status)
- **CheckInWizard** — 4-8 step progress indicator
- **ResourceGrid** — room selection grid with availability colors
- **LedgerCard** — folio breakdown with charges/payments
- **PaymentPicker** — method + charge with preauthorization meter
- **ArrivalsTable** — sortable columns: guest, room, check-in time, special requests
- **ShiftStrip** — morning/evening shift with quick actions

---

## Module 2: Reservation 📅

**VB6 Files:** Booking.frm, Reservation.frm, fdWalkInEntry.frm, FrmBookingInquiry.frm, FrmAdvanceDepDialog.frm

### Web Research Findings

| Source | Key Insight | Applied Concept |
|--------|-------------|-----------------|
| **Vue Hotel Booking Calendar** (GitHub, evion-tech-llp) | Two calendars: guest booking + hotel dashboard. Available (Green), Blocked (Red), Checkout-only (Half Green/Orange). ResourceSchedulerCalendar with monthly/weekly/daily/hourly views | HotelDashboardCalendar: room-wise horizontal grid, custom statuses, guest management, theme support (light/dark) |
| **Hotel Booking Dashboard** (Behance) | Visual-first room showcase with gallery slider, smart booking calendar, cost breakdown, service add-ons, real-time pricing, Google Map integration, multiple payment gateways | Room gallery slider, booking calendar with cost calculator, service add-ons |
| **Hotelify** (Figma) | 14-page template with Calendar, Reservation, Guest Profile, Rooms modules | Clean card-based layout, responsive across 1440px/800px/390px |
| **Tripster** (MyCreativeTemplates) | Drag-and-friendly Booking Calendar, paginated Booking List with filters, detailed Booking Detail with guest history and folio summary, Create Booking wizard, Check-in/Check-out flows, Reservation Timeline, Cancellations, Refunds, No-shows, Group Bookings | Drag-to-book calendar, booking detail with folio summary, reservation timeline for multi-night stays |
| **EloPMS** (Banquet & Events) | Drag-to-book venue calendar, week view grid of venues × dates, day timeline 8am-11pm, double-booking protection | Visual calendar with drag-to-book, availability status colors |

### Recommended UI Components

- **BookingCalendar** — room-wise horizontal grid with color-coded availability (green/yellow/red)
- **BookingList** — paginated table with filters (status, dates, guest)
- **BookingDetail** — guest history, folio summary, special requests
- **BookingWizard** — step-by-step creation form
- **AvailabilityForecast** — 7-730 day forecast grid
- **ReservationTimeline** — multi-night stay visualization
- **RoomSelector** — filter by type, features, rate plan
- **AdvanceDepositDialog** — deposit collection before confirmation

---

## Module 3: Point of Sale 🍽

**VB6 Files:** RSSaleBill.frm, RsKOTEntry.frm, RsTouchScreenSaleBill.frm, RsTouchScreenKOTEntry.frm, RsTouchScreenBookingEntry.frm, RsPOSDisplayNew.frm, RsPaymentReceice.frm, RsMenuItemEntry.frm, RsKOTTransfer.frm, RsKitchenStk.frm

### Web Research Findings

| Source | Key Insight | Applied Concept |
|--------|-------------|-----------------|
| **CloudPos** (Figma) | 160+ screens, 200+ components, dark/light mode, Order Management, Table Reservation, Payment & Receipt, Kitchen Display, Inventory & Menu | 160-screen POS app with full kitchen display integration |
| **ninoPOS** (Hotel Restaurant) | Multi-outlet F&B, per-station KOT/KDS routing, live property-wide F&B revenue, one POS one back office, per-station KOT routing, course pacing, allergy notes | Per-station KOT routing, kitchen display screens, consolidated revenue dashboard |
| **RestroPOS** (Shadcn Studio) | Next.js 16, shadcn/ui, Tailwind CSS v4, TypeScript. Floor plans, kitchen displays, orders, reservations, inventory, menu items. 10+ preset themes | Floor Plan with interactive table map, Kitchen Display with live order queue, POS billing, table management |
| **Imapos** (Figma) | 90+ screens, Kitchen Display, Order management to payment processing, Transactions management, Table management, Customer membership databases, Product inventory, Settings | Kitchen display screen, order-to-payment flow, customer membership |
| **BookOne POS** | F&B bills post to room folio in one tap, KOT fires instantly to kitchen display, GST-compliant invoice at checkout, table/bar/spa/room service in one view, Checkout takes 2 minutes | Room posting integration, instant KOT routing, single invoice at checkout |

### Recommended UI Components

- **POSBill** — itemized sale bill with tax, discount, payment modes
- **KOTEntry** — kitchen order ticket with status (Pending/Preparing/Ready/Served)
- **KitchenDisplay** — live order queue, per-station routing (hot/cold/bar/dessert)
- **TableFloorPlan** — interactive restaurant floor plan with table status
- **OrderManagement** — search/filter orders with status updates
- **PaymentScreen** — Cash/Card/Credit split, advance deposit, reconciliation
- **InventoryIntegration** — stock auto-decremented on item consumption
- **SalesDashboard** — revenue, covers, KOT analysis, settlement summary

---

## Module 4: Finance 💵

**VB6 Files:** FaVrEnt.frm, FaVtype.frm, FaTDSCertificate.frm, FaRepView.frm, FaCurrBalUpdate.frm, FaTDSChal.frm, FaAdjust.frm, FacilitySundry.frm, FaCountryMast.frm, FaCityMast.frm

### Web Research Findings

| Source | Key Insight | Applied Concept |
|--------|-------------|-----------------|
| **Hotelify** (Figma) | Finance module with Invoice, clean card-based layout, data visualization, charts, progress indicators | Financial dashboard with KPI cards, invoice management |
| **Tripster** (MyCreativeTemplates) | Finance module with channel performance metrics, ADR, RevPAR, revenue analytics, Bookings & Revenue Analytics Dashboard | Revenue analytics dashboard, channel performance, ADR/RevPAR metrics |
| **Aiosell HR** | Automated payroll processing, salary & advance management, salary expenses integrated into P&L statements, real-time insights | Payroll expenses in P&L, real-time financial impact |
| **Oracle Opera Cloud** | End of Day procedures: auto post room charges, balance financial ledgers, calculate statistics, generate reports | Auto-post charges, ledger balancing, statistics calculation |
| **Tally POS Integration** | Tally export for finance, GST-compliant billing | Tally integration, GST compliance |

### Recommended UI Components

- **VoucherEntry** — double-entry form with debit/credit columns
- **LedgerView** — running balance per account with transaction history
- **TrialBalance** — total debits vs total credits verification
- **ProfitLoss** — revenue minus expenses summary
- **BalanceSheet** — assets = liabilities + equity
- **BankReconciliation** — bank statement vs ledger matching
- **AgeingAnalysis** — outstanding amounts by 30/60/90 days
- **TDSModule** — TDS calculation, certificate, challan entry
- **CashBook** — all cash transactions register
- **JournalBook** — journal entries with audit trail
- **ControlLedger** — ledger consistency verification
- **DailySummary** — all transactions for the day

---

## Module 5: Housekeeping 🧹

**VB6 Files:** (Not found as separate file — referenced in FrontOffice and POS)

### Web Research Findings

| Source | Key Insight | Applied Concept |
|--------|-------------|-----------------|
| **Hotelify** (Figma) | Housekeeping page in 14-page template | Dedicated housekeeping management screen |
| **Tripster** (MyCreativeTemplates) | Housekeeping Status board, Maintenance / Out-of-Order tracking, Operations Dashboard for housekeeping status and real-time staff workload | Housekeeping status board, maintenance tickets, real-time workload |
| **Hotel Central App** | Item-level inventory with par levels, low-stock alerts, auto-reorder decremented from Housekeeping consumption | Housekeeping consumption tracked automatically |
| **Guest Room Management** (LeGrand UXOne) | Room status: Free, Occupied, Maintenance, DND (Do Not Disturb), MUR (Make Up Room). Guest in room status active | DND/MUR/Maintenance status icons, room status filter |
| **ABB Hospitality** | One configuration view for global level, room occupancy status icons: Free, Maintenance, DND, MUR. Centrally control lighting and status | Central room status monitoring, DND/MUR/Maint flags |

### Recommended UI Components

- **RoomStatusBoard** — grid view of all rooms with status colors (Green=Vacant, Red=Occupied, Yellow=Dirty, Blue=Cleaning, Gray=Maintenance)
- **HousekeepingQueue** — prioritized list of rooms needing cleaning
- **TaskProgress** — N of M rooms cleaned (progress indicator)
- **DND/MUR Toggle** — do not disturb / make up room status
- **CleaningSchedule** — timeline view of cleaning assignments
- **StaffWorkload** — rooms assigned per housekeeper
- **MaintenanceTracker** — out-of-order rooms with repair status
- **StatusTransition** — Occupied → Dirty → Clean flow visualization

---

## Module 6: Inventory 📦

**VB6 Files:** FrmItemMast.frm, DepOpStk.frm, FrmItemIssuedOnCleaning.frm, FrmItemMastRaw.frm, StockInHand_Query.sql

### Web Research Findings

| Source | Key Insight | Applied Concept |
|--------|-------------|-----------------|
| **Hotel Central App** | Item-level inventory with par levels, low-stock alerts, auto-reorder, category tabs (linens, amenities, hardware), auto-decremented from Marketplace/Housekeeping/Maintenance | Par levels, auto-reorder, category tabs, low-stock summary |
| **Concierly** | Real-time stock levels, color-coded by health, grouped by category. Set minimum thresholds. Auto-reorder from purchase history | Real-time stock, low-stock alerts, auto-reorder suggestions |
| **Irvine Hospitality** (FF&E) | B2B catalog with category filtering, specification grids, role-based admin, order tracking (Pending→Confirmed→In Production→Shipped→Delivered) | Category filtering, specification grids, order status pipeline |
| **Hotelify** (Figma) | Inventory page in 14-page template | Clean card-based inventory layout |
| **RestroPOS** (Shadcn) | Inventory & Menu Setup, stock management | Menu item inventory tracking |

### Recommended UI Components

- **ItemCatalog** — all items with code, name, category, unit, rate
- **StockGrid** — real-time stock levels color-coded (green=normal, yellow=low, red=critical)
- **ParLevelIndicator** — MIN/MAX thresholds per item
- **AutoReorder** — below-par items trigger automatic PO
- **CategoryTabs** — filter by linens, amenities, hardware, kitchen, etc.
- **StockRegister** — detailed transaction log (in/out/adjust)
- **PurchaseOrders** — PO creation, vendor selection, delivery tracking
- **IssueTracker** — department-wise stock issue
- **KitchenStockReport** — I/R basis consumption
- **ExcessConsumption** — flagged items above par
- **ABCAnalysis** — item value classification
- **VendorDirectory** — supplier contact, pricing history, lead times

---

## Module 7: HR/Payroll 👥

**VB6 Files:** HRMast.frm, HREmployeeMaster.frm, HRPayroll.frm, HRLeave.frm, HRAttendance.frm, HRLedgerAccounts.frm, HRDesignationMaster.frm, HRHolidayMaster.frm, HRPayOpr.frm

### Web Research Findings

| Source | Key Insight | Applied Concept |
|--------|-------------|-----------------|
| **HRAD Case Study** (Design Studio UI/UX) | 60+ pages, light/dark modes, centralized command center. Interactive charts, smart filters, one-click actions. Replaced dense tables with visualizations | Modular card-grid layout, interactive charts, smart filters by department |
| **Aiosell HR** | Centralized Employee Database, Salary & Advance Management, Automated Payroll Processing, Attendance Tracking with biometric integration, Salary expenses in P&L | Automated payroll, attendance integration, P&L integration |
| **SmartHR** (Dreamstechnologies) | Dashboard, Employee List, Payroll Dashboard, Attendance Dashboard, Leave Management, Shift & Schedule, Overtime, Performance, Recruitment, Timesheet | HR dashboard with modular widgets, leave management, shift scheduling |
| **HRM Payroll Page** (Dribbble) | Simple employee list with essential details, intuitive navigation, sleek typography and color balance | Clean employee list, color balance for clarity |
| **Hotel HR System** (Aiosell) | Store all employee records, salary structure with allowances/deductions, automated payroll, salary slips, bank transfer file, ID cards | Salary structure configuration, automated payroll processing |

### Recommended UI Components

- **EmployeeList** — sortable table with name, dept, designation, salary
- **PayrollDashboard** — monthly salary summary, department-wise breakdown
- **LeaveManager** — leave balance (Entitled - Used), types (Casual/Sick/Earned/Maternity)
- **AttendanceTracker** — daily attendance grid, monthly summary
- **SalaryStructure** — Basic + Allowances - Deductions configuration
- **DesignationMaster** — pay scales per designation
- **HolidayMaster** — company holidays calendar
- **LoanTracker** — loan registration, installment tracking
- **PaySlipGenerator** — individual payslip PDF
- **PayrollRegister** — all employees' payroll summary
- **GratuityReport** — gratuity calculation
- **PFStatement** — provident fund statement
- **AttendanceReport** — monthly attendance analytics

---

## Module 8: Banquet 🎉

**VB6 Files:** Banquet.frm, HallM.frm, HallMIS.frm, HallReport.frm, HallTax.frm, Hallop.frm, BanqAvailability.frm, CateringBooking.frm

### Web Research Findings

| Source | Key Insight | Applied Concept |
|--------|-------------|-----------------|
| **EloPMS** | Drag-to-book venue calendar, 2 venue types (Banquet Hall & Party Room), seated/standing capacity, dual pricing (flat + hourly), fixed time-slot templates, per-plate menus with auto-pricing, live BEO, deposit to GL, double-booking protection | Drag-to-book calendar, per-plate pricing, live financial ledger, deposit workflow |
| **IntaHub** | Event booking & enquiry, interactive floor planning, catering & menu management, multi-hall management, integrated PMS posting, digital proposals | Floor plan builder, digital proposals, PMS integration |
| **Deelo** (Banquet Halls) | Calendar-based room booking, capacity limits, catering coordination, waitlist, no-show protection, group bookings, built-in invoicing | Calendar booking, waitlist, no-show protection, invoicing |
| **Sparklex** | 3D virtual tours, AI-powered vendor matching, ML-based pricing optimization, blockchain-based contract management, interactive floor plan | Virtual venue tours, AI pricing optimization |
| **Aiosell Banquets** | Multiple venues, session-based management (morning/afternoon/evening), booking & blocking, POS integration, automated invoice generation | Session-based booking, POS invoice generation |

### Recommended UI Components

- **VenueCalendar** — drag-to-book calendar with week/day views, venue × dates grid
- **VenueSelector** — 2 venue types with capacity, pricing, amenities
- **MenuCatalog** — per-plate pricing, cuisine tagging, inclusions list
- **LiveQuote** — updates as headcount changes, price-per-plate × guests
- **EventLedger** — hall rent + menu + extras + tax + grand total, live balance
- **DepositManager** — advance deposit, payment tracking, GL posting
- **FunctionSheet** — event details, guest count, timing model with setup/teardown buffers
- **DoubleBookingProtection** — blocks overlapping events in same venue
- **FloorPlanBuilder** — interactive table/seating layout
- **EventLifecycle** — Inquiry → Confirmed → Setup → Ongoing → Completed → Cancelled
- **DigitalProposal** — branded event proposal PDF generation

---

## Module 9: Members 👤

**VB6 Files:** MemberModule.bas, members_masters.py, member_billing.py, MemMas.frm, MemOpr.frm, MemberSelectCategory.frm, CategoryMaster.frm

### Web Research Findings

| Source | Key Insight | Applied Concept |
|--------|-------------|-----------------|
| **Mews PMS Loyalty** (Jo Chang UX) | Lookup existing members, enroll new guests, identify loyalty members. 4-tier membership structure, tier display with collapse/expand | Membership tier display, lookup/enrollment flow, partner programmes |
| **OKURA Hotels** (Cendyn/ONYX) | Personalized member portal, social media sign-on, real-time points and tier data, points-based gift store, 4 languages | Real-time points, tier management, gift redemption store |
| **Flayes** (Behance) | Loyalty rewards ecosystem, mobile app + CRM dashboard, earn/redeem points, engagement tracking | Mobile app + dashboard, point tracking, reward redemption |
| **Aiosell Members** | Member Master registration, Category Master, billing for member services, enrollment, renewal | Member profile management, category-based membership |
| **Hotel Loyalty Program** (GitHub akkaz) | Guest profiles, loyalty tracking, search/filter, interactive calendar, policy management, real-time data | Guest profiles, loyalty tracking, dashboard analytics |

### Recommended UI Components

- **MemberDashboard** — member profile with loyalty points, tier status, stay history
- **MemberRegistry** — registration form with personal details, ID verification
- **CategorySelector** — membership tier selection (Silver/Gold/Platinum)
- **PointsTracker** — real-time points balance, earning history, redemption
- **BillingIntegration** — member charges posted to folio, auto-settle card balance
- **EnrollmentWizard** — step-by-step member registration
- **RenewalManager** — membership renewal with discount/pricing
- **TierDisplay** — membership tier badge with benefits list
- **MemberAnalytics** — stay patterns, preferences, engagement metrics
- **ConsentManager** — privacy policies, data consent tracking

---

## Module 10: Utility/System ⚙️

**VB6 Files:** UserMast.frm, UserPermission.frm, User_Module.frm, CompanyMast.frm, SysConfig.frm, UTL.frm, BackupData.frm, InconsistencyCheck.frm, YearEndUpdation.frm

### Web Research Findings

| Source | Key Insight | Applied Concept |
|--------|-------------|-----------------|
| **Dynalite** (Multiroom Dashboard) | Configuration: room profile settings, user setup, permissions, session logging, role-based views (Front desk/Staff/Maintenance) | Role-based permissions, user management, session logging |
| **LeGrand UXOne** | Home page, room management, thermostat settings, user management (Admin/Staff roles), language selection | Role-based access control, configurable settings, multi-language |
| **ABB Hospitality** | Guest room management software, central monitoring, custom user views, configuration of multiple user rights | Hierarchical user permissions, custom views per role |
| **Infizo Usage** | Utility management, energy usage dashboards, sustainability tips, PMS integration, remote access | Real-time utility dashboards, PMS integration, remote monitoring |
| **Stayntouch** | Automated night audit reporting, scheduled reports, email recipients, Run During EOD | Scheduled report automation, email distribution |
| **Oracle Opera Cloud** | End of Day procedures, auto-update business date, automatic procedures configuration | Automated date change, configurable procedures |
| **HotelKeyApp** | Final Audit Report: revenue, charges, taxes, payments, settlement, statistics, occupancy and revenue | Comprehensive end-of-day reporting |

### Recommended UI Components

- **UserManagement** — user list with role (Admin/Staff), permissions, active/inactive
- **PermissionMatrix** — ADD/EDIT/DELETE/PRINT rights per module
- **CompanyProfile** — company details, profile information, multi-company support
- **SystemConfig** — Analysis.ini settings, server/database/reports/temp paths
- **BackupManager** — SQL Server database backup, restore, schedule
- **AuditLog** — all user actions logged with timestamp
- **InconsistencyCheck** — data integrity verification (DBCC CHECKDB)
- **YearEndUpdater** — annual data migration wizard
- **TaskScheduler** — scheduled tasks configuration
- **CountryStateCity** — address hierarchy management
- **LedgerAccounts** — chart of accounts
- **UnitMaster** — measurement units configuration
- **SundryMaster** — debtor/creditor master
- **NightAuditScheduler** — automated end-of-day procedures
- **ModuleAccess** — User_Module table with per-user module rights

---

## Cross-Module Design Patterns

### Shared Components (All Modules)

| Pattern | Description | Sources |
|---------|-------------|---------|
| **Collapsible Inset Sidebar** | Grouped navigation, compact/expanded states | Shadcnblocks Dashboard 18, Tripster |
| **Shift Strip** | Quick actions, shift info, date display | Dashboard 18, Arrivo |
| **Status Color Language** | Green=available/vacant, Red=occupied/blocked, Yellow=dirty/pending, Blue=cleaning/processing, Purple=reserved, Gray=maintenance | All research sources |
| **Glassmorphism Cards** | backdrop blur(12px), 1px border, hover glow | DEV Community PMS, Aethel Mono |
| **KPI Cards** | Icon + label + value + trend arrow | Dashboard 15, Tripster |
| **Drag-to-Book Calendar** | Visual calendar with drag operations | EloPMS, Vue Hotel Booking Calendar |
| **Wizards** | Step-by-step flows with progress indicator | Arrivo, Tripster |
| **Responsive Layouts** | 1440px desktop, 800px tablet, 390px mobile | Hotelify, Tripster |
| **Dark/Light Mode** | Theme switching with CSS variables | RestroPOS, CloudPos |
| **Role-Based Views** | Different UI based on user role | Dynalite, LeGrand UXOne, ABB |

### Font Recommendations

| Use | Font | Weight |
|-----|------|--------|
| Headings | Montserrat / Cormorant Garamond | Bold (700) |
| Body | Segoe UI / Inter / DM Sans | Regular (400) |
| Labels | Segoe UI / Raleway | Medium (500), uppercase |
| Code/Monospace | JetBrains Mono | Regular |

### Color System

| Role | Color | Hex |
|------|-------|-----|
| Background (Dark) | Deep slate blue | #0f172a |
| Surface (Dark) | Slightly lighter | #1e293b |
| Card (Dark) | Glassmorphism | rgba(30,41,59,0.6) |
| Accent (VB6 Teal) | Teal gradient | #2b8c9d → #0d4f60 |
| Text (Dark) | Light text | #f8fafc |
| Text Dim | Muted | #94a3b8 |
| Border | Subtle | rgba(148,163,184,0.15) |
| Status: Vacant | Green | #10b981 |
| Status: Occupied | Red | #ef4444 |
| Status: Dirty | Yellow | #f59e0b |
| Status: Cleaning | Blue | #3b82f6 |
| Status: Maintenance | Gray | #6b7280 |
| Status: Reserved | Purple | #8b5cf6 |

---

## Implementation Priority Matrix

| Priority | Module | Key Components | Complexity |
|----------|--------|----------------|------------|
| **P0** | Front Office | Check-in wizard, work queue, entity header, folio ledger | High |
| **P0** | Reservation | Booking calendar, booking list, detail view, wizard | Medium |
| **P0** | POS | Order management, KOT, kitchen display, billing | High |
| **P1** | Finance | Voucher entry, ledger, trial balance, P&L | High |
| **P1** | Housekeeping | Room status board, cleaning queue, DND/MUR | Medium |
| **P1** | Inventory | Item catalog, stock grid, par levels, auto-reorder | Medium |
| **P2** | HR/Payroll | Employee list, payroll dashboard, leave manager | Medium |
| **P2** | Banquet | Venue calendar, drag-to-book, per-plate menus | High |
| **P3** | Members | Member dashboard, loyalty tiers, points tracker | Medium |
| **P3** | Utility | User management, system config, backup manager | Low |
