# 03 Reservation - Masters

## Leaves (MenuHelp)

**masters bucket = 0** (`_logic.json`: `masters: []`, count 0) — Reservation module ka apna koi master leaf nahi; guest/room/plan masters dusre modules me (`02_MainSetup`/`04_FrontOffice`).

## Functioning

(Koi leaf nahi.) Reservation flows `Booking`/`GuestProf` entities use karte hain jo `04_FrontOffice` (Guest Profile) aur `02_MainSetup` (Room/Plan masters) ke under register hote hain — is module ke sidebar root me master section khali hai.

## Database Tables (this layer)

(None — is layer ka koi write/read table nahi. `GuestProf` 7802 rows `04_FrontOffice` masters se aati hain; yahan sirf `guestprof.update` cascade (GuestFolio/RoomOcc) ops flow ka part hai — `02_Operations/README.md`.)

## Backend SQL pattern

(None.)

## MenuHelp permission check

```sql
SELECT COUNT(*) FROM menuHelp
WHERE Opt1 = (SELECT TOP 1 Opt1 FROM menuHelp
              WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND Opt1<>0
                AND RTRIM([Option])='Reservation')
  AND RTRIM(Module_Name) = 'Reserv' AND RTRIM([Option]) NOT IN (...ops/report captions);
-- masters rows expected 0 (bucket khali)
```
(No layer screenshots — no leaves.)
