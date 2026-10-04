# 03 - Reservation - Database Workflow

Live counts (2026-09-25, `Moondata2627`, read-only):

## 1. Tables (this module)

| Table | Rows | Role |
|---|---|---|
| `Booking` | 25 | Reservation header (DocId/BookNo, Cancel flag) |
| `BookingLog` | 274 | Draft/edit audit log per DocId |
| `BookingCancelDetails` | 100 | Cancel snapshot lines |
| `GuestProf` | 7802 | Guest master (VB6 GuestProf) |
| `GuestFolio` | 11042 | Guest folio history |
| `RoomOcc` | 11463 | Occupancy (update during check-in; guestprof update cascades `RoomOcc.GuestProf`) |

## 2. Read flows (SELECT patterns)

- Browser list: `reservation.list_reservations(top=200)` → `SELECT ... FROM Booking WHERE Site_Code=?` (reservation.py:111); `reservation.get(bookno)` (:127).
- Search: `booking.search(term)` (booking.py:148), `guestprof.search(name_part)` (guestprof.py:89).
- Status reports: `reports.res_status(mode)` → arrival: `SELECT TOP 500 b.BookNo, b.ArrDate, b.DepDate, GuestName, RoomNo, RoomRate, Adult FROM Booking b WHERE ISNULL(Cancel,'N')<>'Y' AND ArrDate >= CONVERT(date, GETDATE()) ORDER BY ArrDate, BookNo` (core/reports.py); inhouse mode alag WHERE.
- History: `booking.list_more(docid)` → `BookingLog` rows (booking.py:260).

## 3. Write flows (transaction diagrams)

**Draft booking** (`reservation.insert_draft`, reservation.py:149):
```
voucher_config + make_docid/_make_docid_atomic (next_bookno :88)
  -> INSERT INTO Booking ( ... )                        (:167)
  -> INSERT INTO BookingLog (Id, Bookingdocid, Flag,...) (:210, _log :201)
COMMIT
```
**Booking insert (VB6 booking path)** (`booking.insert`, booking.py:86/160):
```
_validate (:46) + check_room_conflict(roomno, arr, dep) (:51)
  -> INSERT INTO Booking (DocId, Vtype, BookNo, Site_Code, Vprefix, ...) (:109/:183)
```
**Edit** (`reservation.update`, :216): `UPDATE Booking SET GuestName=?, ArrDate=?, DepDate=? ...` (:232) + `_log`.
**Cancel** (`reservation.cancel`, :250 — VB6 RrRoomReservation.frm UPDATE #1 EXACT):
```
UPDATE Booking SET Cancel='Y', CancelDate=getdate(), CancelUName=?   (:274)
INSERT INTO BookingCancelDetails (DocId, SNo, VType, VNo, ...)       (:282)
COMMIT  (double-cancel guard: cancel already 'Y' → no-op, test_front_office:83)
```
**Guest profile** (`guestprof.insert/update`, guestprof.py:116/130): `INSERT GuestProf` (:119) / `UPDATE GuestProf` (:140) + cascades `UPDATE GuestFolio` (:150) + `UPDATE RoomOcc SET GuestProf` (:155).
**Delete draft**: `reservation.delete_draft` (:298) cleanup rows (tests use after each cycle).

## 4. VNo / race safety

- `next_bookno` (reservation.py:88) + `_make_docid_atomic` (:57) — DocId banane me atomic path (SELECT + INSERT race ko lock se guard, VB6 `make_docid` :45 legacy).
- `Voucher_Prefix`/`voucher_config` (:25) reservation prefix padhta hai (site+vprefix per company).
- Cancel idempotent: dobara cancel → guard (no second `BookingCancelDetails` row) — `test_front_office.py:83`.
- Orphan risk pattern (Finance KI se analog): partial transaction par header log split — `_log` alag statement hai (commit param cn se atomic rakha jata hai).

## 5. MenuHelp permission check SQL

```sql
-- ops (Flag='E', Module_Name='ResOpEnt')
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Reservation/Cancellation','Reservation With History');
-- -> Dinesh AEDP E ResOpEnt ; Deepak A**P E ResOpEnt ; SA AEDP E ResOpEnt

-- reports (Flag='R', Module_Name='ResStatusRpt')
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option])='Reservation Status';
-- -> Sumit/SA ***P R ResStatusRpt

-- Booking Operations: menuHelp row hi nahi (registry-only leaf) -> permission check khali (gap)
```
`Param_Str` 4-char rights mask — rules `00_GLOBAL/MenuHelp_Module_Map.md`.
