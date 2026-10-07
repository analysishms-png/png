# HMS_SYSTEM_ARCHITECTURE  [VERIFIED-VB6/CONFIG unless marked]

## Technology stack (discovered)
- Presentation: Visual Basic 6 MDI application (HMS.exe, 28.9 MB), 351 forms/classes/modules.
- Data access: ADODB — SQLNCLI.1 (main), SQLOLEDB.1+MSDataShape (shaped recordsets),
  Microsoft.Jet.OLEDB.4.0 (side .mdb), MSDASQL DSN "HotelTrans".
- Database: SQL Server 2008 R2, database MOONData2627, server LOCALHOST (per Analysis.ini).
- Reporting: Crystal Reports (Seagate) — 524 .rpt/.ttx in Reports\.
- Side stores (Jet .mdb in Temp\): DMEPABX.mdb (EPABX calls), Fadata.mdb, Temp.Mdb,
  SaleTransfer.mdb (site-to-site transfer staging, created on demand).
- Hardware: ACR smart-card reader (acr120u.dll, SmartCard_ACR.dll, Analysis_ACR.dll)
  for cash-card/member cards; Godrej door-lock integration (frmGodrejLockSettings);
  MSCOMM32.OCX serial for EPABX.
- Config: Analysis.ini (server, paths, backup dir, db name, site code, city, menu, image dir).
- GST: eInvoice runtime tables + GSTR1 Excel template + EGST.rar report pack.

## Runtime architecture

```
HMS.EXE (VB6 MDI: MDIForm1)
|
|-- frmPassword/frmCompany (login: userMast, user1, module, MenuHelp, company)
|-- Session globals: user, level, LogSite_Code, business date (Enviro.ncur), rights 'AEDP'
|
|-- MDI menus (INI key 9 + MenuHelp per-user filtering)
|     Finance | Main Setup | Reservation | Front Office | House Keeping | Inventory |
|     Point Of Sale | Banquet | Night Audit | HR & PayRoll | EPABX | Messaging |
|     Members Mgmt | Sale && Marketing | Mall Management
|
|-- Module forms (fd* Fd* res* Rs* Hall* Mem* Pr* Tel* HK* Fa* ...)
|      |
|      '-- Business logic in form events + shared libs (MainLib/FaLib/Hotlib/TopBarLib)
|             |
|             '-- ADODB inline SQL (BeginTrans/CommitTrans/RollbackTrans)
|                    |
|                    v
|             SQL Server 2008 R2 - MOONData2627
|               Tables (PayCharge, GuestFolio, RoomOcc, Booking, Stock, Sale1/2, ...)
|               Views (VIEWLEDGER, ViewSubgroup), numbering via Voucher_Prefix/LASTVOU
|
|-- Crystal Reports (.rpt via INI Reports path)  -> printers/PDF
|-- Jet .mdb: DMEPABX.mdb (EPABX), Fadata.mdb, Temp.Mdb, SaleTransfer.mdb
|-- Image\ (IdProof, PurchBill), pic\ (logos)
```

## Key architectural facts
1. Business logic lives in VB6 form events + module helpers — DB side is mostly passive
   (no SP calls found in code); transactions handled client-side.
2. Multi-property: LogSite_Code/Site_Code on every table; company selection at login.
3. Business date is per-site (Enviro.ncur) advanced by Night Audit, not the server date.
4. Numbering: Voucher_Prefix (DATE_FROM/DATE_TO/START_SRL_NO per V_Type) + LASTVOU.
5. Audit trail columns: U_AE/U_Name/U_EntDt (+AU_Name/AU_EntDt on edited bills).
6. Menu security: user1.PARAM_STR = 'AEDP' rights per module form code; MenuHelp filters
   menus per user & company.
7. Night Audit is the daily close: posts revenue/expenses to finance (Ledger/ExpSheet),
   marks dirty rooms, extends due-out folios, rolls Enviro.ncur, resets tokens,
   clears split-bill staging, logs to NightAuditLog. All inside one transaction.
