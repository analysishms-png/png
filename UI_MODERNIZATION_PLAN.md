# Analysis HMS Front Office UI Modernization Plan

## 1. Executive Summary
The legacy Analysis HMS application shell previously presented an outdated visual paradigm: a legacy purple top menubar, a fixed dark green left menu, a large empty background canvas displaying only textual selection hints, a permanent right sidebar clock panel consuming valuable screen real estate, and hardcoded Windows 98/VB6 styling.

This modernization overhaul transforms the Front Office and application shell into an **enterprise-grade, commercial Hotel Management System (PMS)** built on PyQt6. The new interface provides reception and front-office desk staff with a data-dense, intuitive, and responsive workflow while strictly safeguarding all business logic, database transactions, and legacy menu parity.

---

## 2. Key Objectives & Principles
1. **Preserve 100% Business Logic & Backend Parity**:
   - No database schema alterations or deletions.
   - Retain all core API interactions (`reservation.py`, `checkin.py`, `checkout.py`, `folio.py`, `roomstatus.py`, `guestprof.py`).
   - Preserve delete guards, authorization flags (`Param_Str`), and audit log trails.
2. **Modern PMS Layout Hierarchy**:
   - **Top Header**: Brand logo, Property title ("Moon and Mars Resorts"), Fiscal Year badge ("2026-27"), Global Command Search bar (`Ctrl+F`), Notifications, Help (`F1`), User badge (`SA`), Database settings, Dark/Light theme toggle, and World Clock drawer trigger.
   - **Collapsible Categorized Sidebar**: Organized into `MAIN`, `OPERATIONS`, `REPORTS`, and `ADMINISTRATION`. Supports expanded (205px) and collapsed (56px) modes.
   - **Live Front Office Dashboard**: Instant operational visibility with 8 live KPI summary cards, quick action panel, compact room occupancy gauges, today's arrivals table, today's departures table, and an interactive visual room rack.
   - **World Clock Slide-out Drawer**: Converts the previous permanent right sidebar into an on-demand slide-out panel featuring live clocks for India, Canada, Italy, London, Japan, and Australia.
   - **Modern Status Bar**: Live software datetime tick, connected database instance (`Localhost/Moondata2627`), CAPS/NUM lock indicators, and workspace toggles.

---

## 3. Screen & Functional Roadmap
| Modern Component | Legacy VB6 / Old UI Anchor | Target Modern Implementation |
| :--- | :--- | :--- |
| **Top Shell Header** | Blue Title Bar / Purple MenuBar | `QFrame#pmsTopBar` with Hotel branding, global command search, user profile, theme toggle, and clock drawer button. |
| **Global Search** | None (manual table browsing) | `GlobalSearchDialog` (`Ctrl+F`): instant indexed query across Guests, Reservations, Folios, and Rooms. |
| **PMS Navigation** | Flat Green Sidebar | Collapsible sidebar with categories (`MAIN`, `OPERATIONS`, `REPORTS`, `ADMINISTRATION`). |
| **Front Office Dashboard** | Blank Canvas (`<< Modul select karein`) | `FrontOfficeDashboard`: 8 live KPI metric cards, quick action bar, dual arrivals/departures tables, and room rack preview. |
| **Visual Room Rack** | Legacy Form (0 rows / blocked) | Responsive color-coded grid (`RoomRackItem`) with status filters (`Available`, `Occupied`, `Dirty`, `Maintenance`). |
| **World Clocks** | Fixed 160px Right Panel | Sleek slide-out drawer toggleable via header button, status bar, or `Ctrl+Alt+C`. |
| **Reservation UI** | `reservation_browser.py` | Integrated with Quick Action Bar (`Ctrl+N`); filters and live CRUD. |
| **Check-In UI** | `frontoffice.py` (CheckInBrowser) | Integrated with Quick Action Bar (`Ctrl+I`); auto-generating guest profile codes. |
| **Check-Out UI** | `checkout_ui.py` | Integrated with Quick Action Bar (`Ctrl+O`); real-time balance calculations. |
| **Room Status** | `roomstatus_ui.py` | Integrated with Quick Action Bar (`Ctrl+R`); direct housekeeping status toggles. |
