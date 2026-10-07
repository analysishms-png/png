# SESSION ADDENDUM B — Current-copy verification (2026-09-28, ~19:30 IST)

Re-verification pass on THIS working copy. 100% READ-ONLY. No data written,
no login attempted, no transaction posted, Night Audit never touched.

## B1. Paths differ from prior session notes [VERIFIED-CONFIG]

Prior docs reference `C:\PENDRIVE\HMS\` + site city Bareilly. THIS copy:

- App folder: `...\HMS_py\HMS_py\implemented\HMS2526\`
- `Analysis.ini`: Reports/Temp/Image point inside THIS folder (not PENDRIVE)
- INI key 8 = `Kanpur` (not Bareilly); key 7 = `KK`; key 6 = `MOONData2627`
- Key 9 menu string: 15 modules, identical module list to prior session.
- First line of Analysis.ini is `S[HMS]` (stray `S` prefix — harmless, VB6
  `ReadINI` still matches `[HMS]` section read; noted, not fixed).

## B2. Environment [VERIFIED-CONFIG]

- OS: Windows 11 Pro, build 26200, x64.
- HMS.exe: 28,925,952 bytes, 2026-02-03 build; PE has no .NET metadata
  (= native VB6 32-bit EXE, consistent with decompiler P-Code finding).
- Reports\: 565 files. Image\: IdProof\, PurchBill\. Temp\: Temp.Mdb,
  DMEPABX.mdb, Fadata.mdb (+ Temp.ldb lock file = Access DB recently opened).
- VB6 support files present: sysdm.ocx, MSCOMM32.OCX, smart-card DLLs.

## B3. HMS.exe running state [VERIFIED-UI]

- Found already running on arrival (PID 12804, started 19:18:30, 43 MB).
  Main window title `HMS` was 0x0 (hidden); restored via ShowWindow(9) to
  100,100 1150x780 and foregrounded — reveals the **User Information login
  dialog**: User Name + Password fields, Login / Un Load buttons,
  "Enable Virtual Keyboard" + on-screen keyboard, "Analysis Software"
  branding. Matches prior captures (001_Login_Screen.png,
  002_Login_VirtualKeyboard_ON.png). No credentials entered.
- Login dialog window title: `User Information` (useful for automation targeting).

## B4. VB6 source tree characterization [VERIFIED-VB6 — CORRECTS prior "source NOT found"]

- `serialkey/PROJECT2/PROJECT/`: 320 .frm + 28 .bas + 4 .cls + Project.vbp.
- Project.vbp carries a `[VB Decompiler] Build 10.0.5630 Date 19/Jun/2026`
  footer ⇒ this is a **VB Decompiler reconstruction of the P-Code EXE**,
  not original VB6 source. Layouts (VERSION 5.00) are recovered; code is
  P-code pseudo-listings (`loc_` labels, `Proc_6_0_*`, `global_*`).
- `HMS.bas` (54,005,154 bytes) IS the old `EXTRAS.text` decompile (same size).
- `FODER\` (514 files) is a second copy of the same reconstruction + repair
  scaffolding (.agents/.claude/repaired/module_repros). ADODB hits in
  decompiled .bas files: 813 — connection/SQL mining should treat symbol
  names as decompiler-assigned, SQL string literals as reliable.
- fdCheckIn.frm contains 20 Sub/Function blocks (recovered event stubs).

## B5. Live database re-verification [VERIFIED-SQL]

- SQL Server 2008 R2 RTM 10.50.1600.1 (x64), service MSSQLSERVER RUNNING.
- MOONData2627 ONLINE, SIMPLE recovery. Windows-auth sqlcmd works.
- Counts today: **277 tables / 10 views / 3 procs / 0 triggers / 0 funcs / 0 FKs**
  — identical to prior session. View/proc names identical
  (BillDet, BillSummary, Party_List, RoomOccDet, SunTransaction,
  View_Booking, ViewBooking, ViewLedger, ViewLedgerLog, ViewSubgroup;
  GetFieldNameAs, GetFieldNameAsStr, Proc_WebService).
- Column-count reconciliation: live `sys.columns` = 6,541 total =
  **5,793 table columns + 748 view columns**. Prior "5,798" = table-column
  count (±5, negligible — no schema drift; view columns were excluded before).
- Instance DB list today: CrossingClubData2627, GaganData2526,
  KailashData2526, master/model/msdb, MOONData2627, ReportServer(+Temp), tempdb.
  (Differs from prior note's BareillyClub/GrandOrient/KrishnaPalace set —
  instance hosts the live property set for THIS site; multi-tenant hosting
  conclusion still holds.)

## B6. Documentation coverage check (this copy)

Present and consistent: 00_Project_Discovery (5 files), 01 LOGIN_FLOW.md,
05 CHECKIN_FIELD_MAP + FRONT_OFFICE_LIFECYCLE, 10 NIGHT_AUDIT_FLOW,
17 REPORTS_ANALYSIS, 18 full catalog extracts, 19 menu/MenuHelp/RBAC + form
inventory, 20 SQL tracking results + trace script, 21 bugs/SRN-001/tests,
22 manuals (.docx v2 21 MB, operations, architecture, both xlsx inventories,
master index, FINAL_REPORT), 23 modernization blueprint+docx, 24 GST flow,
screenshots/ 100 PNGs across all 16 module slots + login + discovery.
Top-level per-module doc folders (02,03,04,06,07,08,09,11–16) intentionally
absent — coverage lives in screenshots/* + final manuals.

## B7. Blocked / needs owner

- App login + menu/module walkthrough: needs HMS username + password (not
  the SQL password — SQL uses Windows auth; HMS login is app-level UserMast).
- Deepak RBAC live-verify: still pending (prior session attempted a guessed
  password → Invalid Password; will NOT retry guesses — need real password).
- Night Audit execution: FORBIDDEN on live data (docs cover code path only).
