# PROCEDURE_MIGRATION_LEDGER

Auto-generated from `VB6_VS_PYTHON_FILE_BY_FILE.txt` Sections B +
D5 by `_gen_ledgers.py` — regenerate, don't hand-edit.

Spec §18 columns: VB6 file, procedure, type, Python target/file,
mapping/business/SQL/UI/error/transaction status, test, evidence.
Rows start at DISCOVERED; Python target gets filled when the unit's
comparison pass runs (target column stays `TBD` until then).

**Generated:** 2026-10-03 | **named procs total:** 1065 | **ported:** 50 | **missing (D5a business/report):** 396

## B — per-module proc coverage (t/o/n = total/obfuscated/named)

| Status | VB6 .bas | total | obfuscated | named |
|---|---|---:|---:|---:|
| FULL | BanqModule.bas | 3 | 3 | 0 |
| FULL | CodeModule.bas | 12 | 12 | 0 |
| FULL | CommonDialog.bas | 2 | 2 | 0 |
| FULL | DatabaseSecurityModule.bas | 14 | 0 | 14 |
| PARTIAL | ErrorHandlingModule.bas | 15 | 0 | 15 |
| FULL | FOMModule.bas | 5 | 5 | 0 |
| FULL | FaLib.bas | 26 | 26 | 0 |
| FULL | FaVoucher.bas | 4 | 4 | 0 |
| FULL | Functions.bas | 1 | 1 | 0 |
| FULL | GridPrint.bas | 1 | 1 | 0 |
| PARTIAL | HMS.bas | 2482 | 1469 | 1013 |
| PARTIAL | Hotlib.bas | 88 | 88 | 0 |
| FULL | JSON.bas | 11 | 11 | 0 |
| FULL | MSendInput.bas | 13 | 13 | 0 |
| PARTIAL | MainLib.bas | 76 | 76 | 0 |
| PARTIAL | MemberModule.bas | 5 | 5 | 0 |
| FULL | MobWebAPI.bas | 2 | 2 | 0 |
| FULL | Module1.bas | 0 | 0 | 0 |
| FULL | ModuleAdd.bas | 5 | 5 | 0 |
| FULL | ModuleDoorLock.bas | 2 | 2 | 0 |
| FULL | ModuleSmartCard.bas | 14 | 14 | 0 |
| FULL | POSBillPrint.bas | 13 | 13 | 0 |
| FULL | Picture.bas | 1 | 1 | 0 |
| FULL | SMSModule.bas | 15 | 15 | 0 |
| FULL | SperialFolderPath.bas | 0 | 0 | 0 |
| FULL | TmpTable.bas | 24 | 24 | 0 |
| FULL | TopBarLib.bas | 3 | 3 | 0 |
| PARTIAL | ValidationModule.bas | 11 | 0 | 11 |
| FULL | eInvoice.bas | 6 | 6 | 0 |
| FULL | mdlDataTransfer.bas | 4 | 4 | 0 |
| FULL | mdlNightAudit.bas | 4 | 4 | 0 |
| FULL | modLog.bas | 12 | 0 | 12 |

## D5a — missing business/report procedures (396)

| VB6 file | Procedure | Type | Python target | Status | Evidence |
|---|---|---|---|---|---|
| (see parity D5 context) | ABCAnalysis | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ABCAnalysisSale | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | AddFile | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | AdvanceRecd | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | AdvanceRecdInHouse | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Amount | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Append | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | AppendByVal | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | AppendNL | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ArrDepReg | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ArrivalDepList | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | BTNPRINT_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | BatchNo | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | BillWiseAdjustmentReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | BookingDetail | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | BudgetAnalysis | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | BusinessAnalysis | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | BussSourceOccupancyReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CCNo | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CalTotal | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CancelBillDet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CardStatusReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CashCardCollectSumm | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CashCardTransRep | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CashCrPurch | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CashierCollection | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CashierCollectionMIS | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CashierSettlement | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ChequeDt | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ChequeNo | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ChkInRegister | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ChkOutRegister | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Clear | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CmNC_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CmSteward_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CmdAdd_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CmdCardIss_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CmdCatType_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CmdCtrl_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CmdDiscType_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CmdExit_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CmdFind_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CmdMainMenu_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CmdQty_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CmdSubMenu_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Cmd_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ColorLabel | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CompanyAnalysis | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CompanyDetails | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CompanyGuestDetails | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CompanySumm | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CompanyWiseSaleHall | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ComplaintList | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CoverAnalysis | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CreditReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Ctrl_GetFocus | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CurrModeGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CurrModePut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | CustomerDetail | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DGHelp_UnknownEvent_1B | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DGridTxtPointSet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DailyDietRep | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DailyFuncSheet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DailyRep2 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DailyRepII | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DailyReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DailyReportPart1 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DailyReportPart2 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DailyStoreIssRpt | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Day23RoomAvail | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Day23RoomType | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DaysForecastRep | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DelBillUnsetBill | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DeliveryStatus | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DiscountPartyWiseReg | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DiscountReg | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DiscountSumm | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Disp_Text | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Display_Lines | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DocIDGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | DocIDPut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | EditedBills | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | EpabxCallRep | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Eval | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ExcessConsumption | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ExecCommand | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ExpDt | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ExpectedDeparture | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ExtraChargesDuringStay | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FAGrid_UnknownEvent_A | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FAGrid_UnknownEvent_C | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FAGrid_UnknownEvent_D | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FBCostStatement | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGDisc_UnknownEvent_A | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGDisc_UnknownEvent_C | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGPoint_UnknownEvent_A | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGrid2_UnknownEvent_A | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGrid2_UnknownEvent_C | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGrid3_UnknownEvent_A | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGrid3_UnknownEvent_C | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGridRef_UnknownEvent_A | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGridRef_UnknownEvent_C | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGridRef_UnknownEvent_D | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGrid_UnknownEvent_10 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGrid_UnknownEvent_A | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGrid_UnknownEvent_C | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGrid_UnknownEvent_D | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGrid_UnknownEvent_E | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FGrid_UnknownEvent_F | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FOCCReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FOCCReportSummerised | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FOMBillChangeReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FPGrid_UnknownEvent_A | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FPGrid_UnknownEvent_C | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FPGrid_UnknownEvent_D | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FRGrid_UnknownEvent_A | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FRGrid_UnknownEvent_C | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FRGrid_UnknownEvent_D | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FacilityBillReg | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FacilityListView_UnknownEvent_C | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Fgrid1_UnknownEvent_A | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Fgrid1_UnknownEvent_C | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Fgrid1_UnknownEvent_D | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FillDetail | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Find | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FindMove | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FoodCost | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Form_Deactivate | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Form_Paint | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Form_QueryUnload | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Form_Terminate | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | FunctionWiseItemDetail | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GRepFormNameGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GRepFormNamePut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GSTR23 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GSTR24A | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GSTR24B | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GetActiveFormsCount | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GetCurrentUserID | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GetDatabaseConnectionCount | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GetDiskSpace | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GetLastMessage | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GetMemoryUsage | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GetSeverityText | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GetSystemState | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GridSel_UnknownEvent_0 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GridSel_UnknownEvent_10 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GridSel_UnknownEvent_12 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GridSel_UnknownEvent_13 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GridSel_UnknownEvent_14 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GridSel_UnknownEvent_8 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GridSel_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GridSel_UnknownEvent_A | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GridSel_UnknownEvent_C | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GridSel_UnknownEvent_E | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Grid_Hide | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GuestBillDetailSumm | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GuestChargesMIS | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GuestChgJournal | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GuestChgJournalLog | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GuestDetails | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GuestInHouse | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GuestPayments | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GuestRegisCard | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GuestWiseAnalysis | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | GuestwiseRevenue | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | HandleCriticalError | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | HeapMinimize | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | HouseKeeping | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | HtCashierSumm | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | IndentReg | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | IniGrid | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Ini_Grid | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | InsHouseCount | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | InsertByVal | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | IssueReg | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | IssueRegister | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ItemWiseGroupWiseSaleReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ItemWiseGroupWiseSaleReportG | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ItemWiseSaleHall | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | KOTMessage | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | KOTRateChange | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | KOTWiseDetails | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | KitchenStkDetailRep | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | KitchenStkRep | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | KitchenStkRep_Old | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | KitchenStkSumm | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | LabelListView_UnknownEvent_C | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | LiquorSaleRep | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ListView_Items_RecordSet_Local | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | LocalRestCodeGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | LocalRestCodePut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | LocalRestTypeGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | LocalRestTypePut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MadFaSelGridKeyPress | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MagicStackGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MagicStackPut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MagicStackSet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MakeZipFile | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MarketSegAnalysis | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MasterFormExitGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MasterFormExitPut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MemBirthAnnvDtls | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MemLabels | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MemSalesReg | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MemSelGridKeyPress | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MemTaxReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MemVisitDetail | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MoveRec | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | MovementList | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | NCKOTDetailsRoSer | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | NCKOTSummary | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | NCKOTWiseDetails | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Narration | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | NightAuditReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | NightAuditReportI | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | OccAnalysis | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | OccupancyReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | OpenItemSale | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | OutLetPaymentAdjustment | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | OutStanding | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | PackageForecast | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | PartyOutStanding | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | PaymentDueLetterReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | PendKot | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | PlanMealTokens | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | PlanPackSchedule | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | PlanPackService | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | PlanReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | PmtByCashier | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ProductionReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | PurchBill | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | PurchOrder | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | PurchReg | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | PurchSumm | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | PurchaseLedger | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RStockSummary | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ReconciliationR2A | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RegisteredGuestDetail | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Remove | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RemoveFile | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ReservStatus | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ReservStatusInHouse | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RestIssue | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RestNameGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RestNamePut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RetBack | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RetriveRoomRate | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RevAnalysis | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RoomChangeDuringDay | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RoomChangeHistory | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RoomInventory | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RoomNights | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RoomOccupancyAnalysisReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RoomOccupancyReportSummary | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RoomRentAuditRpt | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RoomStatus | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RoomTypeOccupancyAnalysis | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RoomTypeOccupancyReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RoomWiseRoomRevenueDetails | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RoomWiseRoomRevenueReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RstEnviroGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RstEnviroPut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | RstEnviroSet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SEARCHBACK | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SEARCHBACKBANQUET | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SEARCHBACKHISTORY | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SEARCHBACKPARENT | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SEARCHBACKRoomNo | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SEARCHBACKRoomType | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SEARCHBACK_TransferKOT | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SSPGroup_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SSPItem_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SSPKey_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SaleRegister | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SaleSumm | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SalesDayBook | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SalesReg | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SalesRegHall | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SalesRegHallItemWise | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SalesRegTaxWise | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SearchCodeGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SearchCodePut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SelGridKeyPressLocal | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SetOnLineBookingDetail | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SetOnLineCustDetail | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SetOnLineSalingCustDetail | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SetReservationDetail | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SettleReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ShowDetailGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | ShowDetailPut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SpecialRateGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | SpecialRatePut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | StkINHand | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | StkRegStore | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | StkSummStore | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | StockSumm | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | StockSummaryPSBasis | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | StockSummaryPSBasisS | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | StoreIssReg | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | StoreIssueReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TIP | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TXT_GNAME_UnknownEvent_B | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TableSale | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TaxDetails | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TaxDetailsBanq | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TaxRegister | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TaxReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TaxReportHall | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TaxSumm | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TaxSummaryHall | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TestValidationFunctions | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TmpCheqNew | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TravelAgentAnalysis | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TxtMask_UnknownEvent_0 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TxtMask_UnknownEvent_1 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | TxtMask_UnknownEvent_8 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Unzip | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | UpDown1_UnknownEvent_A | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | UpDown1_UnknownEvent_B | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | UpdateDetail | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | Varify_Member | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | VnoRCGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | VnoRCPut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | VnoRTGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | VnoRTPut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | VoidBills | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | VprefixRCGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | VprefixRCPut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | VprefixRTGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | VprefixRTPut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | WaiterSale | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | X11Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | X11Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | X11Set | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | frmcmd_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_100Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_100Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_100Set | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_104Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_104Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_104Set | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_108Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_108Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_52Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_52Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_5395796Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_54Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_54Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_56Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_56Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_5789636Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_5969516Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_60Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_60Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_6138900Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_64Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_64Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_64Set | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_68Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_68Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_72Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_72Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_76Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_76Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_80Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_80Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_80Set | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_84Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_84Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_88Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_88Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_92Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_92Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_96Get | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | global_96Put | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | intStaIdGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | intStaIdPut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | mAgeingReport | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | mDetailTrial | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | mFaJournalLog | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | mREFRESHGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | mREFRESHPut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | mVTypeGet | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | mVTypePut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | sbar_UnknownEvent_9 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | sckControlPanel_UnknownEvent_B | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | sckControlPanel_UnknownEvent_D | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | txtMEd_UnknownEvent_0 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | txtMEd_UnknownEvent_8 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | txtMEd_UnknownEvent_B | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | txtM_UnknownEvent_0 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | txtM_UnknownEvent_1 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | txtM_UnknownEvent_8 | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | vPrefixPut | function | TBD | DISCOVERED | parity report D5a |
| (see parity D5 context) | zzTaxRegister | function | TBD | DISCOVERED | parity report D5a |

## D5b — missing event handlers (context, 619 unique names)

Ye VB6 control event handlers hain; Python me inhe button callbacks /
signals se map kiya jata hai — isliye naam-match fail hota hai aur
functional check Section A (FORM PARITY) se hota hai. Unique names:

```
ADJ_CANCLE_Click, ADJ_OK_Click, AdvRecdRpt_Click, BTNPRINT_Click, BTNRefresh_Click, BTNSITEOK_Click, BTNVLCLOSE_Click, BTNVLOK_Click, BTSADJUST_Click, BTS_AUTO_ADJ_Click, BanqRepMIS_Click, BanqRep_Click, BillImage_Click, BillImage_DblClick, BtnClose_Click, BtnCompose_Click, BtnDelete_Click, BtnExecute_Click, BtnParam_Click, BtnRefAdjOK_Click, BtnSite_Click, BtnVisa_Click, CCenterMas_Click, CHANGEHK_Click, CMBDFOccurUnit_Click, CMBOccurType_Click, CMBSchduleType_Click, CMDSET_Click, Check1_Click, Check1_GotFocus, Check1_KeyDown, Check1_Validate, Check2_Click, Check2_KeyDown, Check3_KeyDown, Check4_KeyDown, Check5_KeyDown, Check6_KeyDown, Check_Click, Check_GotFocus, Check_KeyDown, Chk1_Click, Chk2_Click, ChkCategory_Click, ChkDepart_Click, ChkEmp_Click, ChkFGrid2_Click, ChkFGrid2_KeyDown, ChkMobile_Click, ChkModule_Click, ChkNCBOOKING_Click, ChkNCKOT_Click, ChkNCTOKEN_Click, ChkOrders_Click, ChkParty_Click, ChkResStatus_Click, ChkSetDeno_Click, CmFgrid_Click, CmdAdd1_Click, CmdAdd2_Click, CmdAdd_Click, CmdAddition_Click, CmdAdv_Click, CmdAdvance_Click, CmdAutoBilling_Click, CmdAutoSettlement_Click, CmdBanquetTrans_Click, CmdBlock_Click, CmdBookDate_Click, CmdBookDetails_Click, CmdBookTime_Click, CmdCashCardStatement_Click, CmdChange_Click, CmdCheck_Click, CmdClose1_Click, CmdClose_Click, CmdClose_GotFocus, CmdClose_LostFocus, CmdConDet_Click, CmdConvert1_Click, CmdConvert_Click, CmdCopyUserPerm_Click, CmdCopyUser_Click, CmdCustDetails_Click, CmdCustomer_Click, CmdDatewise_Click, CmdDebitCard_Click, CmdDefaPString_Click, CmdDelDate_Click, CmdDelTime_Click, CmdDeleteJobs_Click, CmdDeletePOSMsg_Click, CmdDelete_Click, CmdDiscount_Click, CmdDown2_Click, CmdDown_Click, CmdDummyGuestProf_Click, CmdEditSave_Click, CmdEdit_Click, CmdExit_Click, CmdFillDetail_Click, CmdFillGrid_Click, CmdFillLastDetail_Click, CmdFill_Click, CmdFind_Click, CmdGeneInvoice_Click, CmdGroupwise_Click, CmdImgDelete_Click, CmdImport_Click, CmdIss_Click, CmdLastEntry_Click, CmdLogin_Click, CmdMemberAc_Click, CmdNextRoom_Click, CmdNext_Click, CmdOK_Click, CmdOPTransfer_Click, CmdPackOk_Click, CmdPass_Click, CmdPaste_Click, CmdPev_Click, CmdPhone_Click, CmdPosting_Click, CmdPrintCard_Click, CmdPrint_Click, CmdProposedMemInf_Click, CmdPwd_Click, CmdQty_Click, CmdRate_Click, CmdRec_Click, CmdRef_Click, CmdReference_Click, CmdRefreshCategory_Click, CmdRefreshDatabase_Click, CmdReload_Click, CmdRemoveEmpDetail_Click, CmdRenuval_Click, CmdReserveTrans_Click, CmdReset_Click, CmdRoomDetail_Click, CmdRoomNo_Click, CmdSTOPTransfer_Click, CmdSaveExit_Click, CmdSave_Click, CmdSendSms_Click, CmdSerialize_Click, CmdShow_Click, CmdSoftBlock_Click, CmdTChange_Click, CmdTExit_Click, CmdTables_Click, CmdTax_Click, CmdTemplate_Click, CmdTerm_Click, CmdTokenFill_Click, CmdToken_Click, CmdTransIn_Click, CmdTransOnline_Click, CmdTransOut_Click, CmdUp2_Click, CmdUp_Click, CmdUpdateJobs_Click, CmdUpdatePOSMsg_Click, CmdVarifyCard_Click, CmdVerifyMember_Click, CmdWaiveoff_Click, Cmd_Click, CmdeInvoiceJson_Click, CmdeInvoiceSql_Click, CmdmultiPrint_Click, Command1_Click, Command2_Click, Command3_Click, Command4_Click, Command5_Click, Command6_Click, ConnectCmd_Click, Ctrl_validate, DRLK_Click, DTRO_Click, Del_Click, DisconnectCmd_Click, EXTRWREP_Click, EXTSCOP_Click, EXTSCRP_Click, EXTSMSOPR_Click, EXTSMSSETUP_Click, EmployeeImage_DblClick, EmployeeImage_MouseDown, Exit_Click, FAREPORTD_Click, FAREPORT_Click, FDOForms_Click, FDOMISRep_Click, FDOMenu_Click, FDORep_Click, FDOTaxr_Click, FNSR_Click, FSR_Click, Form_Activate, Form_Click, Form_Initialize, Form_KeyDown, Form_KeyPress, Form_Load, Form_MouseDown, Form_MouseMove, Form_Resize, Form_Unload, FrmMore_Click, FrmPackage_Click, Frmrate_Click, GENMas_Click, GuestImage_Click, GuestImage_DblClick, GuestSign_Click, HallEnt_Click, HallM_Click, Hallop_Click, Head_Click, HouseEnt_Click, HouseREP_Click, HouseSet_Click, IdProofImage_Click, IdProofImage_DblClick, IdProofImage_MouseDown, ImageExit_Click, ImgFamilyMemPhoto_DblClick, ImgFamilyMemPhoto_MouseDown, ImgFamilyMemSign_DblClick, ImgFamilyMemSign_MouseDown, ImgMemPhoto_DblClick, ImgMemPhoto_MouseDown, ImgMemSign_DblClick, ImgMemSign_MouseDown, Label1_Click, Label2_Click, Label3_Click, Label4_Click, LblWebProfile_Click, Lbl_Click, LockBttn_Click, MDIForm_Load, MDIForm_Resize, MDIForm_Unload, MISREP_Click, MNUCANCEL_Click, MNUSAVE_Click, MallMgmt_Click, MallRep_Click, Mas_Click, MatRep_Click, MatStat_Click, MatVatR_Click, MemMas_Click, MemOpr_Click, MemRpt_Click, NightAuditGSTR_Click, NightAuditLR_Click, NightAuditRR_Click, NightAuditoR_Click, OdcEnt1_Click, OdcMis_Click, OdcOP_Click, OdcRep_Click, Opt2_Click, Opt3_Click, OptArticles_Click, OptDailyFreq_Click, OptMonthlyFreq_Click, OptMsgType_Click, OptRoundOff_Click, OptSchEndDate_Click, Opt_Click, Opt_GotFocus, Opt_KeyDown, Option1_Click, Option1_KeyDown, Option2_Click, Option3_Click, POSRep_Click, PP_Click, PRM_Click, Panelgrid_MouseDown, PayOpr_Click, PayRep_Click, PictShortCuts_MouseDown, PictShortCuts_MouseMove, PictShortCuts_MouseUp, Picture1_DblClick, PosTaxRep_Click, Print_Click, Print_KOT_Timer_Timer, Purch_Click, RF_Click, RR_Click, RWP_Click, Remove_Click, ResOpEnt_Click, ResStatusRpt_Click, ReservationMIS_Click, Rest_Click, SA_Click, SCRD_Click, SD_Click, SMSGEN_Click, SMSJobTimer_Timer, SMSSEND_Click, SMSTimer_Timer, TDSDelete_Click, TEXT_GotFocus, TEXT_KeyDown, TEXT_KeyPress, TEXT_KeyUp, TEXT_LostFocus, TEXT_Validate, TXTADJ_AMT_GotFocus, TXTADJ_AMT_KeyDown, TXTADJ_AMT_KeyPress, TXTADJ_AMT_Validate, TXTChDate_GotFocus, TXTChDate_KeyDown, TXTChDate_LostFocus, TXTChDate_Validate, TXTClrDate_GotFocus, TXTClrDate_KeyDown, TXTClrDate_LostFocus, TXTClrDate_Validate, TXTE_DATE_KeyDown, TXTE_DATE_Validate, TXTS_DATE_KeyDown, TXTS_DATE_Validate, TXTVDATE1_GotFocus, TXTVDATE1_KeyDown, TXTVDATE1_LostFocus, TXTVDATE1_Validate, TXTVDATE2_GotFocus, TXTVDATE2_KeyDown, TXTVDATE2_LostFocus, TXTVDATE2_Validate, TXT_DATE_GotFocus, TXT_DATE_Validate, TelMaast_Click, Text1_GotFocus, Text1_KeyDown, Text1_KeyPress, Text1_KeyUp, Text1_LostFocus, Text1_Validate, Text2_GotFocus, Text2_KeyUp, Text2_Validate, Text3_GotFocus, Text3_KeyDown, Text3_KeyPress, Text3_KeyUp, Text3_LostFocus, Text3_Validate, TextGt_GotFocus, TextGt_KeyDown, TextGt_KeyPress, TextGt_KeyUp, TextGt_LostFocus, TextGt_Validate, TextPer_GotFocus, TextPer_KeyDown, TextPer_KeyPress, TextPer_KeyUp, TextPer_LostFocus, Timer1_Timer, Timer2_Timer, Txt1_GotFocus, Txt1_KeyDown, Txt1_LostFocus, Txt1_MouseMove, Txt1_Validate, Txt2_GotFocus, Txt2_KeyDown, Txt2_KeyPress, Txt2_KeyUp, Txt2_LostFocus, Txt2_Validate, TxtA_GotFocus, TxtA_KeyDown, TxtA_KeyPress, TxtA_LostFocus, TxtA_Validate, TxtAcName_GotFocus, TxtAcName_KeyDown, TxtAcName_KeyPress, TxtAcName_LostFocus, TxtAcName_Validate, TxtAmtCr_GotFocus, TxtAmtCr_KeyDown, TxtAmtCr_KeyPress, TxtAmtCr_LostFocus, TxtAmtCr_Validate, TxtBarCode_KeyDown, TxtBarCode_Validate, TxtCHno_GotFocus
...
```
