# LIVE DATABASE DICTIONARY — MOONData2627  [VERIFIED-SQL - live sys.* catalog queries]

Connection used: sqlcmd -S LOCALHOST -E (Windows auth) — READ-ONLY metadata queries only.
Server: DESKTOP-6GGQU0K, SQL Server instance MSSQLSERVER (2008 R2 toolset, folder 100).
No data was modified; only SELECT against catalog views + TOP 3 on NightAuditLog for dates.

## Instance inventory (sys.databases)
BareillyClub (SIMPLE), GrandOrientData2425 (SIMPLE), KrishnaPalaceData2627 (+'a') (FULL),
**MOONData2627 (SIMPLE)**, KPTransferTest/TestSrcDB/TestDstDB(2), SHUDHA_RECOVER/SHUDHA_TEST (RESTORING).
→ One HMS install hosting multiple properties (matches LogSite_Code multi-tenancy).

## Object counts (MOONData2627)
| Type | Count |
|---|---|
| Tables | 277 |
| Views | 10 |
| Stored procedures | 3 (GetFieldNameAs, GetFieldNameAsStr, Proc_WebService) |
| Triggers | 0 |
| Functions | 0 |
| Declared foreign keys | 0 |

→ Referential integrity lives 100% in the VB6 application. Modernization must re-create
FKs/service-layer checks (or accept app-only integrity as the spec).

## Raw extracts (this folder)
- tables_rowcounts.txt      — 277 tables + live row counts
- columns_dictionary.txt    — 5,798 column rows (name, type, len, null, identity, default)
- indexes_pks.txt           — 244 index rows (PK/unique, key columns)
- foreign_keys.txt          — EMPTY (none exist)
- views_procs.txt           — view/procedure names
- view_proc_definitions.txt — full CREATE VIEW / CREATE PROC text

## Views (live definitions captured)
BillDet, BillSummary, Party_List, RoomOccDet, SunTransaction, View_Booking, ViewBooking,
ViewLedger, ViewLedgerLog, ViewSubgroup.
Key joins verified in BillDet: PayCharge.FolioNoDocid → RoomOcc.DocId → GuestFolio.DocId;
RoomOcc.Type='O' = checked-out; bill amount = SUM(AmtDr − AmtCr) grouped by Bill_No.

## Core tables — live verified (rows are live counts)
| Table | Rows | PK (live) | Role |
|---|---|---|---|
| GuestFolio | 4,5xx (see file) | aaaaaGuestFolio_PK (DocId) | folio header |
| RoomOcc | — | aaaaaRoomOcc_PK (DocId,SNo) | room rows |
| PayCharge | — | aaaaaPayCharge_PK (DocId,SNo) | charges/payments |
| Booking | 25 | PK_Booking (DocId,LogSite_Code) | reservations (current-year set) |
| BookingCancelDetails | 149 | — | cancellations |
| Stock | — | aaaaaStock_PK (DocId,Sno) | inventory |
| GuestProf | 7,804 | — | guest profiles |
| menuHelp | 9,212 | — | menu security |
| User1 / User_Module | 617 / 617 | — | per-form AEDP rights |
| Voucher_Prefix | 171 | — | numbering ranges |
| LastVou | 22 | — | last serial per type |
| Enviro | — | per site | settings; NCUR=business date (datetime), ImprestAmount, KOTAtNightAudit, POSBillAtNightAudit, NoShowAtNightAudit, ResetTokenAtNightAudit... |
| UserMast | — | USER_NAME | PASSWD varchar(50) obfuscated, LABEL, ShortName, GodCode, FloorCode, AllowDtChng, ActiveYN, BackColor |
| NightAuditLog | 134 | — | one row per audit; last = 2026-08-03 by 'Deepak' |
| PayChargeLog | 253 | — | posting audit |
| eInvoiceBill1/Bill2 | 211 / 540 | — | GST e-invoice staging (active) |
| eInvoiceEnviro / Token | 1 / 0 | — | GST config/token |
| ExpSheet | 4 | — | night-audit expense source |
| GuestMessage, GuestStat, TOKEN, TempPosDel, SplitSale1/2, POS_SBill, SplitedSunTran | 0 | — | exist, currently empty |
| LocationMast | **DOES NOT EXIST** | — | BUG-001 CONFIRMED LIVE |
| ItemMast | — | — | FreeItemAllow column ABSENT (BUG-006 partially live); Booking.RefBookNo now EXISTS (fixed since 2020 log) |

## Cross-validation code ↔ DB (Phase 2 vs Phase 3)
Every table referenced by decompiled SQL that was checked exists in the live catalog, except
LocationMast (code references it; DB lacks it → Location Master screen fails — matches FaLog.Log).

## Safety record
All queries: sys.* catalog reads + TOP 3 ORDER BY on NightAuditLog. No DML/DDL anywhere.
