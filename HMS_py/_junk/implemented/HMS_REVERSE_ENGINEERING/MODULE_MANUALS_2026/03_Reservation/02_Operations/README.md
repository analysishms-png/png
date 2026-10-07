# 03 Reservation - Operations

## Leaves (MenuHelp)

classify operations = **2** (`ResOpEnt`, `Flag='E'`): `Reservation/Cancellation`, `Reservation With History`.
Registry-only extra (menuHelp row nahi): `Booking Operations`.

| # | Option (caption) | Flag | Param_Str (sample) | Module_Name | Screenshot |
|---|---|---|---|---|---|
| 1 | Booking Operations | - (no menuHelp row) | - | - (registry leaf) | `screenshots/10_operations_Booking_Operations.png` |
| 2 | Reservation/Cancellation | E | AEDP / A**P | ResOpEnt | `screenshots/20_operations_Reservation-Cancellation.png` |
| 3 | Reservation With History | E | A**P / AEDP | ResOpEnt | `screenshots/30_operations_Reservation_With_History.png` |

## Functioning

- **Booking Operations** → `BookingOpsDialog` (QDialog, modal): new booking form, room conflict check → `Booking` insert + `BookingLog`.
- **Reservation/Cancellation** → `ReservationBrowser` (QDialog, modal): list/search bookings → edit (`UPDATE Booking`) ya cancel (`Cancel='Y'` + `BookingCancelDetails` snapshot).
- **Reservation With History** → same `ReservationBrowser` — `BookingLog` audit history view ke saath.

## Database Tables (this layer)

`Booking` (25), `BookingLog` (274), `BookingCancelDetails` (100); cascade: `GuestProf`/`GuestFolio`/`RoomOcc` (guest edit).

## Backend SQL pattern

```
insert_draft -> INSERT Booking (reservation:167) + INSERT BookingLog (:210)
booking.insert -> INSERT Booking (booking:109/:183) [after check_room_conflict :51]
update       -> UPDATE Booking SET GuestName, ArrDate, DepDate...  (reservation:232)
cancel       -> UPDATE Booking SET Cancel='Y'... (:274)
             + INSERT BookingCancelDetails (:282)   [VB6 EXACT parity]
```

## MenuHelp permission check

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Reservation/Cancellation','Reservation With History');
-- Dinesh AEDP E ResOpEnt ; Deepak A**P E ResOpEnt ; SA AEDP E ResOpEnt
-- Booking Operations: row nahi (registry-only, gap)
```
Layer screenshots: `02_Operations/screenshots/` (root `../screenshots/` se, manifest `ok`).
