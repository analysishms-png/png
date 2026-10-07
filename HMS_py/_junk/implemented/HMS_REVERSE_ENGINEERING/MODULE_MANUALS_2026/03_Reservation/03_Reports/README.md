# 03 Reservation - Reports

## Leaves (MenuHelp)

classify reports = **5** (`ResStatusRpt`/`AdvRecdRpt`, `Flag='R'`): `Reservation Status`, `Reservation Status Arrival`, `Arrival List`, `Advance Recd.`, `Advance Recd. Arrival`.
Curated capture leaves (registry hits 4): `Reservation Status Report`, `Reservation Status`, `Reservation Status Arrival`, `Reservation Status In-House`.

| # | Option (caption) | Flag | Param_Str (sample) | Module_Name | Screenshot |
|---|---|---|---|---|---|
| 1 | Reservation Status Report | R (caption classify `other` as header; registry leaf hit) | ***P | ResStatusRpt | `screenshots/40_reports_Reservation_Status_Report.png` (skipped_messagebox — PNG nahi) |
| 2 | Reservation Status | R | ***P | ResStatusRpt | `screenshots/50_reports_Reservation_Status.png` |
| 3 | Reservation Status Arrival | R | ***P | ResStatusRpt | `screenshots/60_reports_Reservation_Status_Arrival.png` (skipped_messagebox) |
| 4 | Reservation Status In-House | R | ***P | ResStatusRpt | `screenshots/70_reports_Reservation_Status_In-House.png` (skipped_messagebox) |
| 5 | Arrival List / Advance Recd. (+ Arrival) | R | ***P | AdvRecdRpt | (curated list me nahi — gap) |

## Functioning

- `_open_res_report(mode)` (shell.py:1021) → `reports.res_status(mode)` rows → `res_status_pdf` → **`QMessageBox.information`** (`N rows | PDF: path`) — no report window (FRONTEND §4).
- arrival mode: `Booking WHERE Cancel<>'Y' AND ArrDate >= today`; inhouse mode: occupancy basis.
- `Advance Recd.`/`Arrival List` captions ke registry openers `04_FrontOffice`/reports-center side par hain (capture list curated 4).

## Database Tables (this layer)

Read-only: `Booking` (arrival/inhouse filters). PDF path file-system output (no table). (`Advance Recd.` tables `04_FrontOffice` advance module — yahan shared caption.)

## Backend SQL pattern

```
res_status('arrival') -> SELECT TOP 500 b.BookNo, b.ArrDate, b.DepDate, GuestName,
                         RoomNo, RoomRate, Adult FROM Booking b
                         WHERE ISNULL(b.Cancel,'N')<>'Y' AND ArrDate>=CONVERT(date,GETDATE())
                         ORDER BY b.ArrDate, b.BookNo
res_status_pdf(rows, mode) -> text-PDF builder (Helvetica A4, no external dep)
```

## MenuHelp permission check

```sql
SELECT UserName, RTRIM([Option]) cap, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) IN ('Reservation Status','Arrival List','Advance Recd.');
-- Reservation Status -> Sumit/SA ***P R ResStatusRpt ; Advance Recd. -> AdvRecdRpt rows
```
Layer screenshots: `03_Reports/screenshots/` (root `../screenshots/` se, `ok` items only — 3 skipped leaves ke PNG nahi).
