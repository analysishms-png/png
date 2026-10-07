# SESSION LOG C — Live SA walkthrough (2026-09-28 ~19:40–20:55 IST)

Operator: agent (OpenCode). Login: SA / ******** (masked; provided by owner).
Mode: 100% READ-ONLY. No keystroke entered into any business form. No Save /
Delete / Post / Settle / Print button pressed anywhere. Night Audit engine
never touched (menu screenshot only, per owner confirmation).

## C1. Login flow [VERIFIED-UI]

1. Old HMS process (PID 12804, running since 19:18) had vanished; relaunched
   HMS.exe (PID 4480) with workdir = app folder.
2. First login attempt failed: keystrokes went to the OpenCode window
   (Validation Error "User Name is a required field" — evidence of VB6-side
   required-field validation). Fixed via pywinauto handle focus.
3. SA + password accepted → "Company Details" dialog (company grid +
   Company Information frame, Select/Exit/Structure Update/Database Update).
   Company auto-accepted (single company) → main MDI.
4. SECURITY NOTE: the login password textbox exposes plaintext via UIA
   (`texts: ['********', ...]`, no PasswordChar). Passwords visible in process
   memory to any local automation. Add to SRN-001 scope. Screenshots of the
   filled login dialog were NOT kept; credential areas blacked out in the one
   Company Details capture (B020).

## C2. Main MDI [VERIFIED-UI] — B030

- Caption: "Moon and Mars Resorts { 2026-27 }".
- Left strip (handles, exact rects in §C6): Finance, Main Setup, Reservation,
  Front Office, House Keeping, Inventory, Point Of Sale, Banquet, Night Audit,
  HR/Payroll, EXTRAs + In Box + Property Status.
- Right: world clocks (India/Canada/Italy/London/Japan/Australia) + Reload/Exit.
- Status bar: SA | Property Site : Kanpur | S/w Dt.:28/Sep/2026 7:50:02 PM.
- MDI child titles carry breadcrumbs: `[Module > Group > Screen]`.

## C3. Navigation mechanics discovered [VERIFIED-UI]

- Strip buttons = real Button handles. Module top-row (Operations|Reports|…)
  = owner-drawn (no handles) — driven by pixel-scan clicks (hms_topclick.py).
- Sub-row buttons = real Button handles once rendered (full rect list
  captured for FO Operations + Reservation Operations).
- Module row appears ONLY on module SWITCH; any module-row click hides it.
- Embedded MDI panels do NOT close on ESC; closed via Exit-handle click or
  WM_CLOSE (no save-prompts appeared anywhere → zero dirty state).
- Leftover stacked forms were all closed; MDI left clean, app left RUNNING
  and logged in.

## C4. Screens captured this session (screenshots/…)

- 01_Login_Security: B020 Company Details (password redacted).
- 00_Project_Discovery: B030 Main MDI.
- 11 module menus B032 (03,02,04,05,06,07,08,09,10,11,EXTRAs).
- 05_Front_Office: Operations sub-row B033; WalkIn CheckIn B034/B035
  (folio 463, SUMIT TOMAR, 461 folios, Browse 1/461); Room Status B036/B037
  (6 in-house rooms, 14 action buttons incl. Bill Print/Cancel/Settle —
  none pressed); Expense=Misc.Payment/Received B038; Display Rack B039
  (TR:28 OR:6 OO:0 OD:6 OC:0); Bill Reprint B040/B052/B053/B054
  (FOM Bill Reprint + eInvoice Info IRN/Ack boxes + Gen eInvoice/eInvoice
  Json/eInvoice Sql buttons); Reverse Check Out B041; Merge Room B042;
  Bill Re-Settlement=Post Charges/Payment B043 (Save NOT pressed);
  Reverse Room Merge B044; Plan Meal Tokens B047 (room/guest list);
  GRC Printing B046 (From/To Folio + Windows Print); Blank GRC B048;
  module-row states B057/B059; scan-debug B062-overlay B061…204130.
- 04_Reservation: module row B058 (Operations | Reservation Status Report |
  Advance Recd. Report | M.I.S.); Reservation/Cancellation B062 (Browse 2/19,
  res. 2/2026 VIRENDRA SINGH DELHI, Cancel/Reg.Card/Verify Web
  Bookings/Open Link buttons); Res With History B063 (DKKRES sister-property
  BookingIds!); Look Up Rooms B064 (30-day availability grid, empty for
  Sep-2026); Status Screen B065 (Confirm/Tentative 10-day grid, empty).
- PRIVACY NOTE: WalkIn/RoomStatus/Reservation captures contain real guest
  PII (names, mobiles, addresses) — production data, internal use only.

## C5. Dead-button finding — candidate BUG-011 [VERIFIED-UI + VERIFIED-SQL]

FO module-row buttons Reports / Tourism Forms / M.I.S. / Tax Reports:
single AND double click = no-op (module row hides, Operations sub-row
reshown, no form, no error). Yet menuHelp HAS SA rows: FDORep 23×R,
FDOMISRep 10×R, FDOTaxr 2×E, FDOForms 10×E. So security data grants them
but UI does nothing. Needs decompiled-handler check (MDI top-bar proc)
before calling it a bug — recorded as candidate BUG-011.

## C6. Exact strip rects (screen px, full-HD)

Finance 0,155-161,220 | Main Setup 219-285 | Reservation 285-350 |
Front Office 350-415 | House Keeping 414-480 | Inventory 480-545 |
POS 545-610 | Banquet 609-675 | Night Audit 675-740 | HR/Payroll 740-805 |
EXTRAs 804-870. FO Operations sub-row: 9×204px slots y35-95
(WalkIn 0-204 … ReverseRoomMerge 1632-1836); row3 y95-155 (Meal/GRC/Blank).
Reservation Operations: Cancellation 0-204, RoomTypes 204-408, Rooms 408-612,
WithHistory 612-816, AdvDeposit 816-1020, ConfLetters 1020-1224,
CancLetters 1224-1428, RegCard 1428-1632, StatusScreen 1632-1836.

## C7. Database state anomaly [VERIFIED-SQL — NOT caused by us]

Live counts at session start AND end (identical → zero writes by us):
NightAuditLog 68, PayChargeLog 117, Booking 19, BookingCancelDetails 100,
GuestFolio 10605, ExpSheet 0. Prior pack (same DB name) recorded
134/253/25/149/11043/4 with last audit 2026-08-03. Live now ends at audit
#2393 dated 2026-06-01 (Deepak); only msdb backup = 2026-06-01 Full.
[INFERRED] DB was restored/rolled back to the 2026-06-01 backup between
sessions (or packs came from different copies). menuHelp now 8475 rows,
SA=456 (was 9212/440). Verify with DBA before treating Aug-2026 docs as
current. App software-date (28/Sep/2026) runs ahead of DB data (June).

## C8. Safety record

- DML/DDL: none (counts proven identical start vs end).
- Forms opened ≈ 20; all closed via Exit-handle/WM_CLOSE; zero save prompts.
- Night Audit: menu screenshot only (B032), engine untouched.
- Password: typed only into login box, masked in all outputs, never written
  to disk (helper scripts take no credentials; redaction boxes used).

## C9. Remaining (next pass)

Reservation letters (Advance Deposit, Confirmation/Cancellation Letters,
Registration Card, Look Up Room types), FO dead-button root cause, then
Main Setup / Finance / Inventory / POS / Banquet / Housekeeping / HR /
EPABX stripless modules (no left-strip entry — via EXTRAs/InBox?), In Box +
Property Status buttons, RBAC live-verify for Deepak (needs password),
SQL trace of WalkIn save path (needs owner-approved test folio or trace-only
observation of real user entry).
