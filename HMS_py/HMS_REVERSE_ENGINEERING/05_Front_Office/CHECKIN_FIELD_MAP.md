# WalkIn CheckIn — FIELD-LEVEL MAP  [VERIFIED-UI + VERIFIED-VB6]

Screen: 'Front Office > Operations > WalkIn CheckIn' (fdWalkInEntry family)
Evidence: live control dump (win32 EnumChildWindows) + C4_WalkInCheckIn_Form.png
+ decompiled Insert column lists (EXTRAS.text @942575/@942284/@149589)
Raw measured layout: 20_SQL_Tracking/checkin_field_map_raw.txt

## 1. Screen structure (measured)
- **Entry chooser panel (left, x≈453)**: 6 vertical buttons
  Guest Profile (y173) → Check In (y239) → Duplicate Last Check In (y305)
  → Check In with Guest History (y371) → Advance Entry (y437) → Rooms Display (y503)
- **Guest detail form (after 'Check In')** — full form: 89 TextBoxes, 15 DataGrids,
  11 CommandButtons, 7 Frames, 5 MSHFlexGrids, 2 ListViews, toolbar, 1 CheckBox('All')

## 2. Full form controls (VERIFIED-UI, live dump)
CommandButtons: Verify Member, Display Rack, Guest Profile, Check In,
Advance Deposit, Walk In with Guest History, Duplicate Last Check In, '...' (3x lookups), '+'
CheckBox: 'All' (grid filter)
DataGrids (15) incl. **DGNationality** (name from code @44379) — lookup dropdown grids embedded
Frames: Frame2 (main guest area 116,194→1047,660)

## 3. Two-column field zones (measured, 48 visible edits)
LEFT ZONE (x≈225–375, y 201–619) — guest master fields ~18 rows @ ~21px pitch:
  y201 Name | y222 Address1 | y243 Address2/City pair (x305, x338)
  y264 City/State pair | y285 Country/Phone | y306 Mobile | y327 Nationality pair (x374)
  y348 ID proof pair (x373) | y369–436 Arrival details (ArrFrom, TravelMode pairs)
  y451–619 Stay params (Company/TA, Plan, Rate pairs)
RIGHT ZONE (x≈671–806, y 331–600) — room/stay grid area pairs (18 rows):
  RoomNo, RoomCat, Plan, Pax, Rate, Arrival/Depart date-time pairs, Discount/Remarks
TOP (x≈593–694, y140) — Folio/FolioNo display pair
BOTTOM (x≈275, y598–619) — action row (Save/Cancel area)

## 4. UI field → DB column mapping [VERIFIED-VB6 — Insert column order]
GuestFolio (header) ← left zone:
  Name→Name, Add1→Add1, Add2→Add2, City→City, Nationality→Nationality,
  ArrFrom→ArrFrom, Destination→Destination, TravelMode→TravelMode,
  Company→Company(SubGroup), TravelAgent→TravelAgent, RoDisc→RoDisc, DepDate→DepDate,
  NoDays→NoDays, Remarks→Remark, Vdate→chk-in date (business date)
RoomOcc (per room) ← right zone:
  RoomNo→RoomNo, RoomCat→RoomCat, RateCode→RateCode, RoomRate→RoomRate,
  aDult/Children→aDult/Children, ChkInDate/Time→ChkInDate/ChkInTime,
  DepDate/Time→DepDate/DepTime, PlanCode/PlanAmt→Plancode/PlanAmt,
  PlanDisc(Amt/AppOn)→PlanDisc*, RRTaxInc/RRServiceChrg→RRTaxInc/RRServiceChrg,
  RoomTarrif/RackRate→RoomTarrif/RackRate, RoomTaxStru→RoomTaxStru
Audit columns (auto): U_Name, U_EntDt, U_AE='A', LogSite_Code='KK', Site_Code
DocId: <Site><Vtype><serial> via Voucher_Prefix/LASTVOU (RES/CHK types)

## 5. Special behaviors observed in code (same form family)
- DGNationality: nationality validation "Nationality Not Defined!" (@44247)
- 'Verify Member': membership card check (SmartCardRegistration/MemCatMast)
- 'Duplicate Last Check In': copies last guest's RoomOcc row set
- 'Advance Entry': Advance Deposit dialog (frmAdvanceDepDialog)
- On open/close: staging cleanup Delete GuestFolioProfDetail Where Docid='' (trace-me live dekha)

## 6. Safety note
Form sirf khula/gaya, koi field bhari nahi gayi, koi Save nahi. 48-edit dump is
layout-measurement only. Full column lists: 05_Front_Office/FRONT_OFFICE_LIFECYCLE.md §2.
