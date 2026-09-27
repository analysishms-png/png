# 08 Banquet - Operations

## Leaves (MenuHelp)

**operations bucket = 2**: `Banquet Booking`, `Banquet Booking Advance` (both `Hallop`, Flag=E).
Curated capture leaf: **`Banquet Booking`** (shell:1400 → `hall_ui.open_hall_booking`). Related registry ops: `Banquet Billing`, `Banquet Settlement`, `Banquet Estimate Billing`, `Chef Pre-Costing`, `Venue Availability` (shell:1401-1406 same opener), `Booking Operations` (shell:1492 → `book_ui.open_booking_ops`).

## Functioning

- `Banquet Booking` → `hall_ui.open_hall_booking(w)` — hall booking window → `banquet_ops.hallbook_insert` (header `HallBook` + lines `HallBook1`), edit `hallbook_update`, delete `hallbook_delete`.
- `Banquet Booking Advance` → advance against a booking (same opener family).
- Billing/Settlement flows → `HallSale1/HallSale2` (`_calc_bill_amounts` banquet_ops:478).
- `Booking Operations` → `book_ui.open_booking_ops` (VB6 "Add/Edit/Delete Group With Reservation" alias shell:1648).

## Database Tables (this layer)

| Table | Rows | Role |
|---|---|---|
| `HallBook` | 147 | Booking headers |
| `HallBook1` | 0 | Booking lines |
| `HallSale1` | 38 | Sale bill headers |
| `HallSale2` | — | Sale bill lines |

## Backend SQL pattern

```sql
-- _next_vno(vtype, vprefix) → _make_hall_docid (banquet_ops:80-85, KI-1 family)
INSERT INTO HallBook (...) VALUES (...)     -- banquet_ops:249
INSERT INTO HallBook1 (...)                 -- :382  (header+lines, cn txn)
INSERT INTO HallSale1 (...)                 -- :554  (after _calc_bill_amounts :478)
INSERT INTO HallSale2 (...)                 -- :576
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Banquet Booking','Banquet Booking Advance','Booking Inquiry');
-- Banquet Booking: Gopi ***P E Hallop ; Deepak/AWDHESH A**P
-- Booking Inquiry: AHSAN AE*P E Hallop ; Gopi ***P
```
Screenshot: `screenshots/20_operations_Banquet_Booking.png` (copy: `02_Operations/screenshots/`).
