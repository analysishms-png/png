# HMS_py UI Redesign v2 — Complete Documentation

**Date:** 2026-09-24
**Research:** VB6 HMS + Web Research (Hotelify, Shadcnblocks, Bookini, Aethel Mono, DEV Community)
**Files:** `HMS_py/ui/theme_v2.py`, `HMS_py/ui/redesign_v2.py`

---

## What Changed

### From (Original v1)
- Light frost glass theme (Ocean Frost default)
- Basic glassmorphism with aurora blobs
- Segoe UI font throughout
- Simple sidebar with module buttons
- Basic QSS styles

### To (Redesign v2)
- **Dark mode default** (deep slate blue #0f172a)
- **Glassmorphism KPI cards** with backdrop-filter blur(12px)
- **Montserrat** for headings, Segoe UI for body
- **Collapsible inset sidebar** with grouped navigation
- **Shift strip** with quick action buttons
- **Status-colored availability calendar**
- **Room status grid** per floor
- **Bidirectional occupancy chart** concept
- **VB6 teal gradient** retained as accent color
- **Premium dark mode** with Noble Bronze accents

---

## Web Research Summary

### Research Sources

| Source | Key Features | Applied In |
|--------|-------------|------------|
| **Hotelify** (Figma) | Clean card-based layout, soft blues, readable typography | Card-based module screens, spacing system |
| **Shadcnblocks Dashboard 18** | Collapsible inset sidebar, shift strip, square-cell booking chart | Sidebar groups, shift strip with quick actions |
| **Shadcnblocks Dashboard 14** | Bidirectional occupancy chart, glow revenue bars, bookings panel | Occupancy calendar, KPI trends |
| **Shadcnblocks Dashboard 15** | Duotone gradient occupancy chart, donut chart, channel breakdown | KPI cards, revenue widgets |
| **Bookini** | Operations-first design, status-color language, modular template-driven | Status colors, modular layout, real-time |
| **Aethel Mono HMS** | Dark theme, Noble Bronze (#a18460) + Deep Charcoal (#2c3436), Montserrat typography | Dark mode palette, typography |
| **DEV Community PMS** | Deep slate blue (#0f172a), glassmorphism stat cards with backdrop blur(12px), CSS Grid | Dark mode QSS, glass cards |

---

## Design Tokens

### Colors (Dark Mode Default)
```
Background: #0f172a (Deep slate blue)
Surface:    #1e293b (Slightly lighter)
Card:       rgba(30, 41, 59, 0.6) (Glassmorphism)
Accent:     #2b8c9d (VB6 teal retained)
Text:       #f8fafc (Light)
Text Dim:   #94a3b8 (Muted)
Border:     rgba(148, 163, 184, 0.15)
```

### Status Colors
```
Vacant:      #10b981 (Green)
Occupied:    #ef4444 (Red)
Dirty:       #f59e0b (Yellow)
Cleaning:    #3b82f6 (Blue)
Maintenance: #6b7280 (Gray)
Reserved:    #8b5cf6 (Purple)
```

### Typography
```
Headings:    Montserrat (24px bold)
Body:        Segoe UI (14px)
Small:       Segoe UI (12px, #94a3b8)
Labels:      Segoe UI (10px, uppercase, letter-spacing)
```

### Spacing Scale
```
XS:  4px
SM:  8px
MD:  12px
LG:  16px
XL:  20px
XXL: 24px
XXXL: 32px
```

### Border Radius
```
SM:  8px
MD:  12px
LG:  16px
XL:  20px
```

---

## Sidebar Navigation

### Structure (VB6 faithful with modern grouping)

```
🏨 HMS PRO
├── Front Office
│   ├── 📊 Dashboard (Alt+D)
│   ├── 📅 Reservation (Alt+R)
│   ├── 📥 Check-In (Alt+C)
│   ├── 📤 Check-Out (Alt+O)
│   ├── 💳 Folio (Alt+F)
│   ├── 👥 Guest Profile (Alt+G)
│   └── 🚪 Room Status (Alt+S)
├── Property
│   ├── 🛏 Rooms (Alt+1)
│   ├── 📋 Room Category (Alt+2)
│   └── ⚙️ Amenities (Alt+3)
├── Operations
│   ├── 🧹 Housekeeping (Alt+H)
│   ├── 🍽 Point of Sale (Alt+P)
│   ├── 📦 Inventory (Alt+I)
│   └── 🥂 Banquet (Alt+B)
├── Revenue
│   ├── 💵 Finance (Alt+V)
│   ├── 📊 Reports (Alt+T)
│   └── 🌙 Night Audit (Alt+N)
└── Admin
    ├── ⚙️ Settings (Alt+A)
    └── 👤 Users (Alt+U)
```

---

## Dashboard Layout

```
┌─────────────────────────────────────────────────────────────┐
│ 🏨 HMS PRO                        👤 kanpur    🔔    ⚙️    │
├─────────────────────────────────────────────────────────────┤
│ 📊 Occupancy Rate  💰 ADR  📈 RevPAR  🏦 Revenue          │
│    68%             $85     $58      $12.4K                   │
│    +2%↑            +$5↑   -$2↓     +$1.2K↑                  │
├─────────────────────────────────────────────────────────────┤
│ 🔴 Morning Shift    Today: 2026-09-24                       │
│ [Assign Rooms] [Check-In] [HK Queue] [VIP Arrivals]         │
├──────────────────────────┬──────────────────────────────────┤
│  Room Availability       │  Quick Access                     │
│  📅 Calendar             │  🏨 Front Office                  │
│  ● Vacant ● Dirty ●      │  📅 Reservation                 │
│    ● Occupied            │  🧹 Housekeeping                  │
│  ● Cleaning              │  🍽 POS                          │
│  ● Reserved              │  💵 Finance                       │
│  ● Maintenance           │  📦 Inventory                     │
│                          │                                  │
└──────────────────────────┴──────────────────────────────────┘
```

---

## KPI Cards (Glassmorphism)

Each KPI card has:
- **Icon + Label** (uppercase, dimmed)
- **Value** (24px bold, Montserrat)
- **Trend** (colored, up/down arrow)
- **Glass effect** (backdrop blur(12px), 1px border)
- **Hover effect** (glow shadow, translateY(-2px))

```css
.stat-card {
    background: rgba(30, 41, 59, 0.6);
    border: 1px solid rgba(255, 255, 255, 0.08);
    border-radius: 16px;
    padding: 20px;
    backdrop-filter: blur(12px);
}
.stat-card:hover {
    border-color: #2b8c9d;
    box-shadow: 0 0 20px rgba(43, 140, 157, 0.2);
    transform: translateY(-2px);
}
```

---

## Room Status Grid (Bookini Style)

Each room card shows:
- **Room number** (colored)
- **Room type** (dimmed)
- **Status indicator** (colored badge)
- **Hover glow** effect

```
┌─────┐  ┌─────┐  ┌─────┐  ┌─────┐
│101  │  │102  │  │103  │  │104  │
│Deluxe│  │Suite │  │Deluxe│  │Suite │
│ ●   │  │ ●   │  │ ██  │  │ ●   │
└─────┘  └─────┘  └─────┘  └─────┘
Vacant   Dirty   Occupied  Reserved
```

---

## Theme Presets

| Preset | Mode | Background | Accent | Use Case |
|--------|------|-----------|--------|----------|
| **Midnight Glass** (default) | Dark | #141425 | #8b5cf6 | Standard dark mode |
| **Graphite Pro** | Dark | #0f172a | #38bdf8 | Professional dark |
| **Ocean Frost** | Light | #eef3fb | #2563eb | Light mode |
| **Emerald Breeze** | Light | #ecfdf5 | #059669 | Green theme |
| **Sunset Amber** | Light | #fff7ed | #ea580c | Warm theme |
| **Rose Quartz** | Light | #fdf2f8 | #e11d48 | Pink theme |

---

## VB6 Compatibility

The redesign preserves VB6 compatibility:

1. **Teal sidebar gradient** (`#2b8c9d` → `#0d4f60`) from VB6 app
2. **Alt+key shortcuts** for all 16 modules
3. **Same module names** from `menu_help.py`
4. **Same database tables** (MOONData2627)
5. **Same business logic** (VB6 rules preserved)
6. **Authentication** (`Process_153_30_EEFAD0` encryption)
7. **Same login flow** (User Information → Company Details → Main)

---

## Files Created/Modified

| File | Description | Lines |
|------|-------------|-------|
| `HMS_py/ui/theme_v2.py` | Design tokens, QSS templates, KPI styles | 380+ |
| `HMS_py/ui/redesign_v2.py` | Sidebar, Dashboard, KPI cards, Room grid | 400+ |
| `HMS_py/ui/theme.py` | Original theme (preserved) | 700 |
| `HMS_py/ui/design.py` | Original design system (preserved) | 662 |
| `HMS_py/ui/glass.py` | Original glass widgets (preserved) | 480 |
| `HMS_py/ui/shell.py` | Original shell (preserved) | 2506 |
| `HMS_py/ui/sidebar_buttons.py` | Original sidebar (preserved) | 527 |

---

## Implementation Status

- ✅ Design tokens and QSS templates complete
- ✅ Sidebar with grouped navigation complete
- ✅ KPI cards with glassmorphism complete
- ✅ Shift strip with quick actions complete
- ✅ Occupancy calendar with status colors complete
- ✅ Room status grid per floor complete
- ✅ Dashboard widget complete
- ✅ Module screen card-based layout complete
- ✅ Dark/Light theme QSS complete
- ✅ VB6 compatibility preserved
- ✅ Documentation complete

## Next Steps

1. **Integration**: Merge v2 into existing `shell.py` sidebar
2. **KPI data binding**: Connect KPI cards to database queries
3. **Calendar data**: Populate availability calendar from `RoomOcc`
4. **Room grid data**: Bind room status grid to `RoomMast`
5. **Shift strip actions**: Implement quick action button handlers
6. **Responsive**: Add resize handling for different screen sizes
7. **Animations**: Add Framer Motion-style transitions
8. **Mobile**: Add tablet/mobile responsive layouts

---

## Web Research Credit

All design inspiration from:
- shadcnblocks.com (Dashboard 14, 15, 17, 18)
- peterdraw.studio (Hotelify template)
- contra.com (Bookini operating system)
- github.com/Callixes1820 (Aethel Mono HMS)
- dev.to (Dark Mode PMS Dashboard)
- uxpilot.ai (Glassmorphism guide)
