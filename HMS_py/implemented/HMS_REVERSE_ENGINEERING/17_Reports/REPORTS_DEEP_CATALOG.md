# HMS REPORTS DEEP CATALOG

Generated: 2026-09-29
Source: C:\PENDRIVE\HMS\Reports\ (~524 files)
Evidence: [VERIFIED-VB6] decompiled | [VERIFIED-SQL] live DB | [VERIFIED-UI] menu | [VERIFIED-CONFIG] files | [INFERRED] deduced

---

## 1. INVENTORY SUMMARY

| Type | Count |
|---|---|
| Crystal Reports (.rpt) | ~200+ |
| TTX field stubs (.ttx) | ~60+ |
| Executables (.exe) | 8 |
| Archives (.rar) | 3 |
| **Total** | **~524** |

**Engine:** Crystal Reports ActiveX (Seagate CR 7/8) [VERIFIED-VB6]
**Path:** INI key 2 → C:\PENDRIVE\HMS\Reports [VERIFIED-CONFIG]
**Viewers:** REPVIEW, rFomRepView, rHallRepView, rInventRepView, rMemberRepView, rPOSRepView [VERIFIED-VB6]
**Print overrides:** PrintFormats table (39 refs) [VERIFIED-SQL]

---

## 2. REPORTS BY MODULE

### 2.1 Front Office (Module E) — ~45 reports

| Report | TTX | Category | Screen | Data Source | Params | Ev |
|---|---|---|---|---|---|---|
| ChkInRegister.rpt | ✓ | Register | fdCheckIn | RoomOcc+GuestFolio | Date | [V-UI] |
| ChkOutRegister.rpt | — | Register | fdCheckOut | RoomOcc(Type=O) | Date | [INFERRED] |
| ArrDepReg.rpt | — | Register | FrmReservationStatus | RoomOcc+Booking | Date | [INFERRED] |
| ArrivalDepList.rpt | — | Register | FrmReservationStatus | RoomOcc+Booking | Date | [INFERRED] |
| BillPrint.rpt | ✓ | Invoice | fdDisplayFolio | PayCharge+GuestFolio+RoomOcc | BillNo | [V-VB6] |
| FolioPrint.rpt | ✓ | Invoice | fdDisplayFolio | PayCharge+GuestFolio | FolioNo | [INFERRED] |
| FolioPrintBlank.rpt | — | Invoice | fdDisplayFolio | PayCharge+GuestFolio | FolioNo | [INFERRED] |
| FolioPrinting.rpt | ✓ | Invoice | fdDisplayFolio | PayCharge+GuestFolio | FolioNo | [INFERRED] |
| FolionoBank.rpt | — | Invoice | fdDisplayFolio | PayCharge+GuestFolio | FolioNo | [INFERRED] |
| FolionoBankzzzz.rpt | — | Invoice | fdDisplayFolio | PayCharge+GuestFolio | FolioNo | [INFERRED] |
| CashierReport.rpt | ✓ | Cashier | FrmFomB | PayCharge | Date,Cashier | [V-UI] |
| CashierCollect.rpt | ✓ | Cashier | FrmFomB | PayCharge | Date,Cashier | [INFERRED] |
| CashierSettlement.rpt | ✓ | Cashier | FrmFomB | PayCharge | Date,Cashier | [INFERRED] |
| CashierSettlementSubReport.rpt | — | Cashier | FrmFomB | PayCharge | Date,Cashier | [INFERRED] |
| CashierSummary.rpt | — | Cashier | FrmFomB | PayCharge | Date | [INFERRED] |
| CashierSale.rpt | — | Cashier | FrmFomB | PayCharge | Date | [INFERRED] |
| SettleRep.rpt | ✓ | Settlement | FdReSetlement | PayCharge | Date | [INFERRED] |
| SettleRepHall.rpt | ✓ | Settlement | HallBill | SunTran | Date | [INFERRED] |
| Settlement Reciept.rpt | ✓ | Receipt | fdPaymentCharge | PayCharge | ReceiptNo | [INFERRED] |
| SettlementRecieptBanq.rpt | ✓ | Receipt | HallBill | SunTran | ReceiptNo | [INFERRED] |
| Advance Reciept.rpt | ✓ | Receipt | fdPaymentCharge | PayCharge | ReceiptNo | [INFERRED] |
| Advance Reciept Reservation.rpt | — | Receipt | RrRoomReservation | Booking | ReceiptNo | [INFERRED] |
| AdvanceRecd.rpt | — | Receipt | RrRoomReservation | Booking | ReceiptNo | [INFERRED] |
| GuestInHouse.rpt | — | Occupancy | InHouseGuestFolio | RoomOcc(Type=I) | — | [INFERRED] |
| RoomInventory.rpt | ✓ | Occupancy | FdRoomDisplay | RoomMast+RoomOcc | — | [INFERRED] |
| RoomStatus.rpt | — | Occupancy | FrmHouseStatus | RoomMast+RoomOcc | — | [INFERRED] |
| OccupancyReport.rpt | ✓ | Occupancy | fdRoomOcc | RoomOcc+GuestFolio | Date | [INFERRED] |
| OccupancyReportWithRR.rpt | ✓ | Occupancy | fdRoomOcc | RoomOcc+GuestFolio | Date | [INFERRED] |
| OccupancyReportzz.rpt | — | Occupancy | fdRoomOcc | RoomOcc+GuestFolio | Date | [INFERRED] |
| RoomOccupancyAnalysisReport.rpt | ✓ | Analysis | fdRoomOcc | RoomOcc | Date | [INFERRED] |
| RoomOccupancyReportSummary.rpt | ✓ | Analysis | fdRoomOcc | RoomOcc | Date | [INFERRED] |
| RoomTypeOccupancyReport.rpt | ✓ | Analysis | fdRoomOcc | RoomOcc | Date | [INFERRED] |
| RoomTypeOccupancyAnalysis.ttx | ✓ | Analysis | fdRoomOcc | RoomOcc | Date | [INFERRED] |
| RoomWiseRoomRevenueReport.rpt | ✓ | Revenue | fdRoomOcc | RoomOcc+PayCharge | Date | [INFERRED] |
| RoomRentAuditReport.rpt | ✓ | Audit | fdRoomOcc | RoomOcc+PayCharge | Date | [INFERRED] |
| RoomChangeHistory.rpt | ✓ | Audit | fdRoomChange | RoomOcc(ChngDate) | Date | [INFERRED] |
| GuestLedger.rpt | ✓ | Ledger | fdDisplayFolio | PayCharge+GuestFolio | GuestProf | [INFERRED] |
| GuestTrialBalance.rpt | ✓ | Ledger | fdDisplayFolio | PayCharge+GuestFolio | Date | [INFERRED] |
| GuestTrialBalanceRoyal.rpt | — | Ledger | fdDisplayFolio | PayCharge+GuestFolio | Date | [INFERRED] |
| NaGuestTrialBal.rpt | — | Ledger | fdDisplayFolio | PayCharge+GuestFolio | Date | [INFERRED] |
| GuestWiseAnalysis.rpt | ✓ | MIS | FrmGuestStat | GuestProf+PayCharge | Date | [INFERRED] |
| GuestwiseRevenue.rpt | ✓ | MIS | FrmGuestStat | PayCharge | Date | [INFERRED] |
| GuestDetails.rpt | — | MIS | FrmGuestInfo | GuestProf | — | [INFERRED] |
| GuestComments.rpt | — | MIS | FrmGuestComments | GuestMessage | — | [INFERRED] |
| GuestObservation.rpt | — | MIS | FrmGuestStat | GuestProf | — | [INFERRED] |
| GuestStat.rpt | — | MIS | FrmGuestStat | GuestStat | — | [INFERRED] |
| GuestBillDetailSumm.rpt | ✓ | MIS | fdDisplayFolio | PayCharge | Date | [INFERRED] |
| GuestBillWinPlan.rpt | — | MIS | fdDisplayFolio | PayCharge+PlanMast | Date | [INFERRED] |
| GuestBillWinPrint.rpt | ✓ | MIS | fdDisplayFolio | PayCharge | Date | [INFERRED] |
| GuestBillWinPrintzzzzzzzz.rpt | — | MIS | fdDisplayFolio | PayCharge | Date | [INFERRED] |
| GuestChargesMIS.rpt | — | MIS | fdPostChrg | PayCharge | Date | [INFERRED] |
| GuestBDayAnniversaryLookup.rpt | ✓ | Utility | FrmBdayLookup | GuestProf | Date | [INFERRED] |
| GrcPrint.rpt | — | Registration | fdCheckIn | GuestFolio+RoomOcc | GRCNo | [INFERRED] |
| GRCReport.rpt | ✓ | Registration | fdCheckIn | GuestFolio+RoomOcc | GRCNo | [INFERRED] |
| FOMBillChangeReport.rpt | ✓ | Audit | frmFomB | PayCharge(Log) | Date | [INFERRED] |
| FOMTaxDetail.rpt | ✓ | Tax | frmFomB | PayCharge+TaxStru | Date | [INFERRED] |
| FOMTaxDetailz.rpt | — | Tax | frmFomB | PayCharge+TaxStru | Date | [INFERRED] |
| FOMTaxWiseChargeDetail.rpt | — | Tax | frmFomB | PayCharge+TaxStru | Date | [INFERRED] |
| FOCC Report.rpt | ✓ | FOCC | FrmFomB | PayCharge | Date | [INFERRED] |
| FOCCReport.rpt | — | FOCC | FrmFomB | PayCharge | Date | [INFERRED] |
| HtCashierSumm.rpt | — | Cashier | FrmFomB | PayCharge | Date | [INFERRED] |
| HtGuestChgJournal.rpt | ✓ | Journal | fdPostChrg | PayCharge | Date | [INFERRED] |
| HtGuestChgJournalLog.rpt | ✓ | Journal | fdPostChrg | PayChargeLog | Date | [INFERRED] |
| HtGuestPayJournal.rpt | — | Journal | fdPaymentCharge | PayCharge | Date | [INFERRED] |
| HtPmtByCashier.rpt | ✓ | Cashier | FrmFomB | PayCharge | Date,Cashier | [INFERRED] |
| InsHouseCount.rpt | ✓ | Occupancy | fdRoomOcc | RoomOcc(Type=I) | — | [INFERRED] |
| ExtraChargesDuringStay.rpt | ✓ | Audit | fdPostChrg | PayCharge | Date | [INFERRED] |
| CancelBillDet.rpt | ✓ | Audit | FrmFomBillDeletion | PayCharge | Date | [INFERRED] |
| PlanMealTokens.rpt | ✓ | Token | FrmPlanTokenMast | PayCharge+PlanMast | Date | [INFERRED] |
| PlanMealTokenszz.rpt | — | Token | FrmPlanTokenMast | PayCharge+PlanMast | Date | [INFERRED] |
| PlanPackSchedule.rpt | ✓ | Schedule | FrmPlanPackMast | PlanMast+RoomOcc | Date | [INFERRED] |
| PlanPackService.rpt | — | Schedule | FrmPlanPackMast | PlanMast | Date | [INFERRED] |
| RoomReservationDetail.rpt | — | Reservation | RrRoomReservation | Booking+RoomOcc | Date | [INFERRED] |
| RoomNights.rpt | — | Occupancy | fdRoomOcc | RoomOcc | Date | [INFERRED] |
| MovementList.rpt | — | Housekeeping | HHouseKeeping | RoomMast+RoomOcc | Date | [INFERRED] |
| CompanyGuestDetails.rpt | — | Guest | FrmGuestInfo | GuestProf+Company | — | [INFERRED] |
| CompanyDetails.rpt | — | Guest | FrmGuestInfo | Company | — | [INFERRED] |
| BirthMarrRep.rpt | — | Guest | FrmBdayLookup | GuestProf | Date | [INFERRED] |
| RegistrCard.rpt | ✓ | Registration | fdCheckIn | Booking+GuestFolio | BookNo | [INFERRED] |
| Reservation.ttx | ✓ | Reservation | RrRoomReservation | Booking | — | [INFERRED] |
| ReservStatus.rpt | ✓ | Reservation | FrmReservationStatus | Booking | Date | [INFERRED] |
| ResAdvDetail.ttx | ✓ | Reservation | RrRoomReservation | Booking | — | [INFERRED] |
| ResRegisterCard.ttx | ✓ | Registration | fdCheckIn | Booking | — | [INFERRED] |
| BookingDetail.rpt | — | Reservation | FrmBookingInquiry | Booking | Date | [INFERRED] |
| BOOKINGPrint.rpt | — | Reservation | FrmBookingInquiry | Booking | BookNo | [INFERRED] |
| WinBOOKINGPrint.rpt | — | Reservation | FrmBookingInquiry | Booking | BookNo | [INFERRED] |
| CancellLetter.rpt | — | Letter | FrmBookingInquiry | Booking+GuestProf | BookNo | [INFERRED] |
| ConfirmLetter.rpt | — | Letter | FrmBookingInquiry | Booking+GuestProf | BookNo | [INFERRED] |
| NewCancelationLetters.rpt | ✓ | Letter | FrmBookingInquiry | Booking+GuestProf | BookNo | [INFERRED] |
| NewConfermation.rpt | ✓ | Letter | FrmBookingInquiry | Booking+GuestProf | BookNo | [INFERRED] |
| NewConfermationLetters.rpt | ✓ | Letter | FrmBookingInquiry | Booking+GuestProf | BookNo | [INFERRED] |
| OrderBooking.rpt | — | POS | RsBookingEntry | Booking | Date | [INFERRED] |
| Order Booking Advance Receipt.rpt | ✓ | POS | RsBookingEntryAdvance | Booking | ReceiptNo | [INFERRED] |
| OrderDetailReport.rpt | ✓ | POS | RsBookingEntry | Booking | Date | [INFERRED] |
| ExpectedDeparture.rpt | — | Reservation | FrmReservationStatus | Booking | Date | [INFERRED] |
| DaysForecastRep.rpt | ✓ | Forecast | FrmReservationStatus | Booking | Date | [INFERRED] |
| PackageForecast.rpt | — | Forecast | FrmReservationStatus | Booking+PlanMast | Date | [INFERRED] |
| DDDDD.rpt | — | Test | — | — | — | [UNKNOWN] |
| testRpt123.rpt | — | Test | — | — | — | [UNKNOWN] |
| OTREP.RPT | — | Test | — | — | — | [UNKNOWN] |
| DelBillUnsetBill.rpt | — | POS | FrmUnSettledBillsInfo | PayCharge | Date | [INFERRED] |
| FreeItemReport.rpt | — | POS | RsKOTEntry | KOT(FreeSno) | Date | [INFERRED] |
| KotPrint.rpt | — | POS | RsKOTEntry | KOT | KOTNo | [INFERRED] |
| WinKOTPrint.rpt | — | POS | RsKOTEntry | KOT | KOTNo | [INFERRED] |
| KOTRateChange.rpt | — | POS | RsKOTEntry | KOT | Date | [INFERRED] |
| KotEditDel.rpt | — | POS | FrmPOSBillDeletion | KOT | Date | [INFERRED] |
| KOTWiseDetails.rpt | ✓ | POS | RsKOTEntry | KOT | Date | [INFERRED] |
| Copy of KOTWiseDetails.rpt | — | POS | RsKOTEntry | KOT | Date | [INFERRED] |
| NCKOTSummary.rpt | — | POS | RsKOTEntry | KOT(NCKOT=Y) | Date | [INFERRED] |
| NCKOTWiseDetails.rpt | — | POS | RsKOTEntry | KOT(NCKOT=Y) | Date | [INFERRED] |
| PendKot.rpt | ✓ | POS | RsKOTEntry | KOT(Pending=Y) | Date | [INFERRED] |
| TableSale.rpt | ✓ | POS | RsSaleBillSplit | KOT+RoomMast | Date | [INFERRED] |
| CoverAnalysis.rpt | ✓ | POS | RsSaleBillSplit | KOT | Date | [INFERRED] |
| CoverAnalysisHall.rpt | — | Banquet | HallBill | SunTran | Date | [INFERRED] |
| DenominationDetail.rpt | — | POS | RsPaymentReceice | PayCharge | Date | [INFERRED] |
| DiscountReg.rpt | — | POS | FrmPOSBillDeletion | PayCharge | Date | [INFERRED] |
| DiscountPartywiseReg.rpt | — | POS | FrmPOSBillDeletion | PayCharge | Date,Party | [INFERRED] |
| DiscountSumm.rpt | — | POS | FrmPOSBillDeletion | PayCharge | Date | [INFERRED] |
| EditedBills.rpt | — | POS | FrmPOSBillModification | PayCharge | Date | [INFERRED] |
| VoidBills.rpt | — | POS | FrmPOSBillDeletion | PayCharge(VoidYN) | Date | [INFERRED] |
| OpenItemSale.rpt | — | POS | RsSaleBillSplit | KOT | Date | [INFERRED] |
| SalesReg.rpt | ✓ | POS | RSSaleBill | KOT+PayCharge | Date | [INFERRED] |
| SalesRegHall.rpt | — | Banquet | HallBill | SunTran | Date | [INFERRED] |
| SalesRegHallItemWise.rpt | ✓ | Banquet | HallBill | SunTran | Date | [INFERRED] |
| SalesRegSubRep1.rpt | ✓ | POS | RSSaleBill | PayCharge | Date | [INFERRED] |
| SalesRegTaxWise.rpt | ✓ | POS | RSSaleBill | PayCharge+TaxStru | Date | [INFERRED] |
| SalesRegTaxWise - Copy.rpt | — | POS | RSSaleBill | PayCharge+TaxStru | Date | [INFERRED] |
| SaleRegister.rpt | — | POS | RSSaleBill | PayCharge | Date | [INFERRED] |
| SaleRegisterI.rpt | ✓ | POS | RSSaleBill | PayCharge | Date | [INFERRED] |
| SaleRegisterSumm.rpt | ✓ | POS | RSSaleBill | PayCharge | Date | [INFERRED] |
| SaleSumm.rpt | ✓ | POS | RSSaleBill | PayCharge | Date | [INFERRED] |
| SaleSummConsolidated.rpt | — | POS | RSSaleBill | PayCharge | Date | [INFERRED] |
| SaleBillHall.rpt | ✓ | Banquet | HallBill | SunTran | BillNo | [INFERRED] |
| SaleBillHallEstimate.rpt | — | Banquet | HallEstimate | SunTran | BillNo | [INFERRED] |
| SaleBillHallSecondary.rpt | — | Banquet | HallBill | SunTran | BillNo | [INFERRED] |
| SaleBillHallzzzzz.rpt | — | Banquet | HallBill | SunTran | BillNo | [INFERRED] |
| SaleBillHall_badau.rpt | — | Banquet | HallBill | SunTran | BillNo | [INFERRED] |
| HallSaleReg.rpt | — | Banquet | HallBill | SunTran | Date | [INFERRED] |
| HallSaleSumm.rpt | — | Banquet | HallBill | SunTran | Date | [INFERRED] |
| HallItem.rpt | — | Banquet | HallBill | SunTran | Date | [INFERRED] |
| HallItemCatMast.rpt | — | Banquet | HallItemGroupMast | ItemCatMast | — | [INFERRED] |
| HallItemGrp.rpt | — | Banquet | HallItemGroupMast | ItemGrp | — | [INFERRED] |
| HallItemSale.rpt | — | Banquet | HallBill | SunTran | Date | [INFERRED] |
| HallMast.rpt | — | Banquet | HallMast | VenueMast | — | [INFERRED] |
| HallBooking Advance Receipt.rpt | ✓ | Banquet | HallAdvanceDepDialog | SunTran | ReceiptNo | [INFERRED] |
| catlog.rpt | — | Banquet | HallMenuCatalog | ItemMast | — | [INFERRED] |
| catlog1.rpt | — | Banquet | HallMenuCatalog | ItemMast | — | [INFERRED] |
| FuncProspect.rpt | ✓ | Banquet | HallBooking | Booking | Date | [INFERRED] |
| FuncProspectInstructions.rpt | — | Banquet | HallBooking | Booking | Date | [INFERRED] |
| DailyFuncSheet.rpt | ✓ | Banquet | HallBill | SunTran | Date | [INFERRED] |
| ItemWiseGroupWiseSale.rpt | ✓ | Banquet | HallBill | SunTran | Date | [INFERRED] |
| ItemWiseGroupWiseSaleG.rpt | — | Banquet | HallBill | SunTran | Date | [INFERRED] |
| ItemWiseSale.rpt | ✓ | POS | RSSaleBill | KOT | Date | [INFERRED] |
| ItemWiseSaleHall.rpt | — | Banquet | HallBill | SunTran | Date | [INFERRED] |
| RestSalesSumm.rpt | — | POS | RSSaleBill | KOT | Date | [INFERRED] |
| RestIssue.rpt | — | POS | RsKOTEntry | KOT | Date | [INFERRED] |
| CustomerDetail.rpt | ✓ | POS | RsPOSCustInfo | GuestProf | — | [INFERRED] |
| PaymentReceiveRep.rpt | — | POS | RsPaymentReceice | PayCharge | Date | [INFERRED] |
| UserPaymentCollection.rpt | — | POS | FrmUserPaymentCollection | PayCharge | Date,User | [INFERRED] |
| CashCardCollectSumm.rpt | — | System | FrmReceivePayment | SmartCardRegistration | Date | [INFERRED] |
| CashCardTransactionReport.rpt | — | System | FrmReceivePayment | SmartCardRegistration | Date | [INFERRED] |
| CashCardTransDetail.rpt | — | System | FrmReceivePayment | SmartCardRegistration | Date | [INFERRED] |
| POSBillWinPrint.rpt | ✓ | POS | POSBillPrint | KOT | BillNo | [INFERRED] |
| POSBillWinPrintzzz.rpt | — | POS | POSBillPrint | KOT | BillNo | [INFERRED] |
| POSBillWinPrintzzzzz.rpt | — | POS | POSBillPrint | KOT | BillNo | [INFERRED] |
| BillTokenPrint.rpt | ✓ | POS | POSBillPrint | KOT | BillNo | [INFERRED] |
| SBI.rpt | — | Finance | FaReports | Ledger | Date | [INFERRED] |
| ChequePrint.rpt | — | Finance | FaVoucher | Ledger | ChequeNo | [INFERRED] |
| FaAgRefNo.rpt | — | Finance | FaReports | Ledger | — | [INFERRED] |

### 2.2 Night Audit (Module NA) — ~15 reports

| Report | TTX | Category | Screen | Data Source | Params | Ev |
|---|---|---|---|---|---|---|
| NightAuditReport.rpt | — | Core | mdlNightAudit | RoomOcc+PayCharge | Date | [V-UI] |
| NightAuditReportI.rpt | ✓ | Core | mdlNightAudit | RoomOcc+PayCharge | Date | [V-UI] |
| DailyReport.rpt | ✓ | Core | mdlNightAudit | RoomOcc+PayCharge | Date | [INFERRED] |
| DailyRepII.rpt | — | Core | mdlNightAudit | RoomOcc+PayCharge | Date | [INFERRED] |
| Day23RoomAvail.rpt | ✓ | Forecast | FrmReservationStatus | Booking | Date | [INFERRED] |
| Day23RoomType.rpt | — | Forecast | FrmReservationStatus | Booking | Date | [INFERRED] |
| DailyStoreIss.rpt | — | Inventory | FrmStockTransfer | Stock | Date | [INFERRED] |
| ExpenseRep.rpt | ✓ | Expense | FrmExpense | ExpenseSheet | Date | [INFERRED] |
| ExpenseVoucher.rpt | ✓ | Expense | FrmExpense | ExpenseSheet | VoucherNo | [INFERRED] |
| ExpenseVoucherzzz.rpt | — | Expense | FrmExpense | ExpenseSheet | VoucherNo | [INFERRED] |
| FBCostStatement.rpt | — | Costing | FoodCost.rpt | KOT+ItemMast | Date | [INFERRED] |
| FoodCost.rpt | ✓ | Costing | FoodCost.rpt | KOT+ItemMast | Date | [INFERRED] |
| BudgetAnalysis.rpt | — | Budget | FABudgetRep.rpt | Budget+Ledger | Date | [INFERRED] |
| FABudgetRep.rpt | — | Budget | FABudgetRep.rpt | Budget+Ledger | Date | [INFERRED] |
| FABudgetVarience.rpt | — | Budget | FABudgetRep.rpt | Budget+Ledger | Date | [INFERRED] |

### 2.3 Finance (Module B) — ~35 reports

| Report | TTX | Category | Screen | Data Source | Params | Ev |
|---|---|---|---|---|---|---|
| FaJvchr.rpt | ✓ | Voucher | FaVoucher | Ledger+LedgerM | VoucherNo | [INFERRED] |
| FaJvchr000.rpt | — | Voucher | FaVoucher | Ledger+LedgerM | VoucherNo | [INFERRED] |
| FaJvchrRect.rpt | — | Voucher | FaVoucher | Ledger+LedgerM | VoucherNo | [INFERRED] |
| FaLedTrial.ttx | ✓ | Trial | FaReports | Ledger | Date | [INFERRED] |
| FaDetTrial.ttx | ✓ | Trial | FaReports | Ledger | Date | [INFERRED] |
| FaSubTrial.ttx | ✓ | Trial | FaReports | Ledger | Date | [INFERRED] |
| FaGroupTrial.ttx | ✓ | Trial | FaReports | Ledger | Date | [INFERRED] |
| FaBalSheet.ttx | ✓ | BalanceSheet | FaReports | Ledger+ACGROUP | Date | [INFERRED] |
| FaProfLoss.ttx | ✓ | P&L | FaReports | Ledger+ACGROUP | Date | [INFERRED] |
| FaMonthSum.ttx | ✓ | Summary | FaReports | Ledger | Date | [INFERRED] |
| FaDueList.rpt | ✓ | Outstanding | FaReports | Ledger | Date | [INFERRED] |
| FaPartyMast.rpt | ✓ | Master | FaSubGroup | SubGroup | — | [INFERRED] |
| FaPartyTree.rpt | — | Master | FaSubGroup | SubGroup+ACGROUP | — | [INFERRED] |
| FaGrpListTree.rpt | — | Master | FaSubGroup | ACGROUP | — | [INFERRED] |
| FaBankRecon.rpt | — | Bank | FaChqClear | Ledger | Date | [INFERRED] |
| FaTAGADALET.rpt | — | TDS | FaTDSChal | Ledger+TDSCategory | Date | [INFERRED] |
| FaTAGADALET_Original.rpt | — | TDS | FaTDSChal | Ledger+TDSCategory | Date | [INFERRED] |
| FaArea.rpt | — | Master | FaReports | — | — | [INFERRED] |
| FaCity.rpt | — | Master | FaCityMast | City | — | [INFERRED] |
| FaCountry.rpt | — | Master | FaCountryMast | Country | — | [INFERRED] |
| FaState.rpt | — | Master | FaStateMast | State | — | [INFERRED] |
| Form24AnnexureA.rpt | — | TDS | FaTDSChal | Ledger+TDSCategory | Date | [INFERRED] |
| LTFORMII.rpt | ✓ | Legal | FaReports | Ledger | Date | [INFERRED] |
| LTFORMIV.rpt | ✓ | Legal | FaReports | Ledger | Date | [INFERRED] |
| Article_26(a).rpt | — | Legal | FaReports | Ledger | Date | [INFERRED] |
| Article_26(a)Report.rpt | — | Legal | FaReports | Ledger | Date | [INFERRED] |
| Article_26(b).rpt | — | Legal | FaReports | Ledger | Date | [INFERRED] |
| Article_26(b)Report.rpt | — | Legal | FaReports | Ledger | Date | [INFERRED] |
| UPVATXXIV.rpt | — | VAT | FaReports | Ledger | Date | [INFERRED] |
| FORMIC.rpt | — | VAT | FaReports | Ledger | Date | [INFERRED] |
| FORMIII.rpt | ✓ | VAT | FaReports | Ledger | Date | [INFERRED] |
| GSTR2(3).rpt | ✓ | GST | FrmUploadProcess | eInvoiceBill1/2 | Date | [INFERRED] |
| GSTR2(4A).rpt | ✓ | GST | FrmUploadProcess | eInvoiceBill1/2 | Date | [INFERRED] |
| GSTR2(4B).rpt | ✓ | GST | FrmUploadProcess | eInvoiceBill1/2 | Date | [INFERRED] |
| EGST.rar | — | GST | FrmUploadProcess | eInvoiceBill1/2 | Date | [INFERRED] |
| EReturn.rpt | — | GST | FrmUploadProcess | eInvoiceBill1/2 | Date | [INFERRED] |
| VATRegister.rpt | ✓ | VAT | FaReports | Ledger | Date | [INFERRED] |
| VATRegisterII.rpt | ✓ | VAT | FaReports | Ledger | Date | [INFERRED] |
| VATRegisterIII.rpt | — | VAT | FaReports | Ledger | Date | [INFERRED] |
| VATRegisterII_5Tax.rpt | — | VAT | FaReports | Ledger | Date | [INFERRED] |
| VATRegisterII_7ta.rpt | — | VAT | FaReports | Ledger | Date | [INFERRED] |
| VATRegisterLegal.rpt | — | VAT | FaReports | Ledger | Date | [INFERRED] |
| VATRegister_Tax5.rpt | — | VAT | FaReports | Ledger | Date | [INFERRED] |
| TaxRegister.rpt | ✓ | Tax | FaReports | Ledger | Date | [INFERRED] |
| TaxReport.rpt | ✓ | Tax | FaReports | Ledger | Date | [INFERRED] |
| TaxReportHall.rpt | ✓ | Tax | HallBill | SunTran | Date | [INFERRED] |
| TaxSumm.rpt | ✓ | Tax | FaReports | Ledger | Date | [INFERRED] |
| TaxSummz.rpt | — | Tax | FaReports | Ledger | Date | [INFERRED] |
| TaxSummaryHall.rpt | — | Tax | HallBill | SunTran | Date | [INFERRED] |
| TaxwiseDetailReportHall.rpt | — | Tax | HallBill | SunTran | Date | [INFERRED] |
| TaxDetails.rpt | ✓ | Tax | FaReports | Ledger | Date | [INFERRED] |
| TaxMast.rpt | — | Master | FrmTaxMast | TaxMast | — | [INFERRED] |
| TaxStructureMast.rpt | — | Master | FrmTaxStruMast | TaxStructure | — | [INFERRED] |
| Form-1.rpt | ✓ | Tourism | FrmGuestStat | GuestProf | Date | [INFERRED] |
| Form-2.rpt | — | Tourism | FrmGuestStat | GuestProf | Date | [INFERRED] |
| Form-4.rpt | ✓ | Tourism | FrmGuestStat | GuestProf | Date | [INFERRED] |
| Form-5.rpt | ✓ | Tourism | FrmGuestStat | GuestProf | Date | [INFERRED] |
| Form-6.rpt | ✓ | Tourism | FrmGuestStat | GuestProf | Date | [INFERRED] |
| Form-C.rpt | — | Tourism | FrmGuestStat | GuestProf | Date | [INFERRED] |
| FORMC.rpt | — | Tourism | FrmGuestStat | GuestProf | Date | [INFERRED] |
| LuxuryTax.rpt | — | Tourism | FrmGuestStat | GuestProf | Date | [INFERRED] |
| LuxuryTaxz.rpt | — | Tourism | FrmGuestStat | GuestProf | Date | [INFERRED] |
| MonthlyStatisticalReturnWinPrint.rpt | — | Tourism | FrmGuestStat | GuestProf | Date | [INFERRED] |

### 2.4 Inventory (Module I) — ~30 reports

| Report | TTX | Category | Screen | Data Source | Params | Ev |
|---|---|---|---|---|---|---|
| StoreIss.rpt | ✓ | Issue | pGIss | Stock | Date | [INFERRED] |
| StoreIssReg.rpt | — | Issue | pGIss | Stock | Date | [INFERRED] |
| StoreIssueReport.rpt | — | Issue | pGIss | Stock | Date | [INFERRED] |
| IssueReg.rpt | ✓ | Issue | pGIss | Stock | Date | [INFERRED] |
| IssueRegister.rpt | — | Issue | pGIss | Stock | Date | [INFERRED] |
| IssueRegzz.rpt | — | Issue | pGIss | Stock | Date | [INFERRED] |
| StockRegister.rpt | — | Stock | FrmStockTransfer | Stock | Date | [INFERRED] |
| StockSumm.rpt | — | Stock | FrmStockTransfer | Stock | Date | [INFERRED] |
| StockInHand.rpt | ✓ | Stock | FrmOPStock | Stock | Date | [INFERRED] |
| StockSummaryPSBasisDT.rpt | — | Stock | FrmOPStock | Stock | Date | [INFERRED] |
| StockSummaryPSBasisSM.rpt | ✓ | Stock | FrmOPStock | Stock | Date | [INFERRED] |
| StkRegStore.rpt | ✓ | Stock | FrmStockTransfer | Stock | Date | [INFERRED] |
| StkSummStoreConsumable.rpt | — | Stock | FrmStockTransfer | Stock | Date | [INFERRED] |
| StkSummStoreNo.rpt | — | Stock | FrmStockTransfer | Stock | Date | [INFERRED] |
| StkSummStoreYes.rpt | ✓ | Stock | FrmStockTransfer | Stock | Date | [INFERRED] |
| RStockRegister.rpt | — | Stock | FrmStockTransfer | Stock | Date | [INFERRED] |
| RStockSummary.rpt | — | Stock | FrmStockTransfer | Stock | Date | [INFERRED] |
| KitchenStk.rpt | ✓ | Kitchen | RsKitchenStk | Stock | Date | [INFERRED] |
| KitchenStkDetail.rpt | — | Kitchen | RsKitchenStk | Stock | Date | [INFERRED] |
| KitchenStockTr.rpt | — | Kitchen | RsKitchenStk | Stock | Date | [INFERRED] |
| RKitchenStkSumm.rpt | — | Kitchen | RsKitchenStk | Stock | Date | [INFERRED] |
| kClStk.ttx | ✓ | Mall | DepOpStk | Stock | Date | [INFERRED] |
| OpenningStock.rpt | — | Stock | FrmOPStock | Stock | Date | [INFERRED] |
| StockTransfer.rpt | — | Stock | FrmStockTransfer | Stock | Date | [INFERRED] |
| Indent.rpt | ✓ | Indent | PIndent | Stock | Date | [INFERRED] |
| IndentReg.rpt | ✓ | Indent | PIndent | Stock | Date | [INFERRED] |
| Requisition.rpt | ✓ | Requisition | pReqSlip | Stock | Date | [INFERRED] |
| ReqSlip.rpt | — | Requisition | pReqSlip | Stock | Date | [INFERRED] |
| POrder.rpt | ✓ | Purchase | pPOrder | Stock | Date | [INFERRED] |
| PurchOrder.rpt | — | Purchase | pPOrder | Stock | Date | [INFERRED] |
| PurchaseBillReg.rpt | — | Purchase | pPBill | Stock | Date | [INFERRED] |
| PurchaseLedger.rpt | ✓ | Purchase | pPBill | Stock | Date | [INFERRED] |
| PurchBill.ttx | ✓ | Purchase | pPBill | Stock | Date | [INFERRED] |
| PurchBillOther.rpt | — | Purchase | pPBill | Stock | Date | [INFERRED] |
| PurchBillSaleInvoice.rpt | — | Purchase | pPBill | Stock | Date | [INFERRED] |
| PurchBillTaxInvoice.rpt | — | Purchase | pPBill | Stock | Date | [INFERRED] |
| PurchReg.rpt | ✓ | Purchase | pPBill | Stock | Date | [INFERRED] |
| PurchRegSumm.rpt | — | Purchase | pPBill | Stock | Date | [INFERRED] |
| PurchRetBill.rpt | — | Purchase | pPBill | Stock | Date | [INFERRED] |
| PurchSumm.rpt | — | Purchase | pPBill | Stock | Date | [INFERRED] |
| PurchCashCredit.rpt | ✓ | Purchase | pPBill | Stock | Date | [INFERRED] |
| MREntry.rpt | ✓ | MR | pMREntry | Stock | Date | [INFERRED] |
| FinishMaterialReceived.rpt | — | MR | pMREntry | Stock | Date | [INFERRED] |
| ExcessConsum.rpt | ✓ | Consumption | FrmConsumMast | Stock | Date | [INFERRED] |
| Production.rpt | — | Production | FrmConsumMast | Stock | Date | [INFERRED] |
| ABCAnalysis.rpt | — | Analysis | FrmItemMast | Stock | Date | [INFERRED] |
| ABCAnalysisSale.rpt | — | Analysis | FrmItemMast | Stock | Date | [INFERRED] |
| ItemMast.rpt | ✓ | Master | FrmItemMast | ItemMast | — | [INFERRED] |
| ItemMastFinish.rpt | ✓ | Master | FrmItemMast | ItemMast | — | [INFERRED] |
| ItemMastRaw.rpt | — | Master | FrmItemMastRaw | ItemMast | — | [INFERRED] |
| ItemCatMast.rpt | ✓ | Master | FrmItemCatMast | ItemCatMast | — | [INFERRED] |
| ItemGrp.rpt | ✓ | Master | FrmItemGroupMast | ItemGrp | — | [INFERRED] |
| ItemWiseIssue.rpt | — | Issue | pGIss | Stock | Date | [INFERRED] |
| ItemLabelFinish.rpt | — | Label | FrmItemMast | ItemMast | — | [INFERRED] |
| ConsumMast.rpt | — | Master | FrmConsumMast | ConsumMast | — | [INFERRED] |
| GODOWN.RPT | — | Master | Godown | Godown | — | [INFERRED] |
| PartyMast.rpt | — | Master | FrmParty | PartyMast | — | [INFERRED] |
| Department.rpt | — | Master | DepartMast | Department | — | [INFERRED] |
| SundryMast.rpt | — | Master | SundryMast | SundryMast | — | [INFERRED] |
| PayTypeMast.rpt | — | Master | FrmPayTypeMast | PayTypeMast | — | [INFERRED] |
| WaiterMast.rpt | — | Master | FrmWaiterMast | Waiter | — | [INFERRED] |
| TableMast.rpt | — | Master | RsTableMast | RoomMast | — | [INFERRED] |
| SessionMast.rpt | — | Master | frmSessionMast | SessionMast | — | [INFERRED] |
| Holiday.rpt | — | Master | prHoliday | Holiday | — | [INFERRED] |
| RevMast.rpt | — | Master | FrmRevMast | RevMast | — | [INFERRED] |
| FixedCharge.rpt | — | Master | frmFixedChargeMast | FixedCharge | — | [INFERRED] |
| RoomCategory.rpt | — | Master | FrmRoomCatMast | RoomCat | — | [INFERRED] |
| RoomFeatureMast.rpt | — | Master | FrmRoomFeatureMast | RoomFeature | — | [INFERRED] |
| RoomMast.rpt | — | Master | FrmRoomMast | RoomMast | — | [INFERRED] |
| VenueMast.rpt | ✓ | Master | FrmVenueMast | VenueMast | — | [INFERRED] |
| VenueFeat.rpt | — | Master | FrmVenueFeat | VenueFeature | — | [INFERRED] |
| EventMast.rpt | — | Master | FrmEventMast | EventMast | — | [INFERRED] |
| CallCodeMast.rpt | — | Master | TelCallCodeMast | CallCode | — | [INFERRED] |
| CallTypeMast.rpt | — | Master | TelCallTypeMast | CallType | — | [INFERRED] |
| TelExt.rpt | — | Master | TelExtensionMast | TelExt | — | [INFERRED] |
| DesigMast.rpt | — | Master | PrDesigMast | DesigMast | — | [INFERRED] |
| EmpCatMast.rpt | — | Master | PrCategoryMast | EmpCategory | — | [INFERRED] |
| PayEmpCategory.rpt | — | Master | PrCategoryMast | EmpCategory | — | [INFERRED] |
| PayEmpMast.rpt | — | Master | PrEmployee | PayEmpMast | — | [INFERRED] |
| MemCatMast.rpt | — | Master | MemCatMast | MemCategory | — | [INFERRED] |
| CorporateMemberList.rpt | — | Member | MembershipMast | MemberMast | — | [INFERRED] |
| MemberList.rpt | — | Member | MembershipMast | MemberMast | — | [INFERRED] |
| MemberListSummerised.rpt | — | Member | MembershipMast | MemberMast | — | [INFERRED] |
| MemBillMissingReport.rpt | — | Member | MemBillPrintingModule | MemberMast | Date | [INFERRED] |
| MemFacilityBill.rpt | — | Member | MemFacilityBilling | MemberMast | Date | [INFERRED] |
| MemMalingLabels.rpt | — | Member | MemBillPrintingModule | MemberMast | — | [INFERRED] |
| MemRevenueBill.rpt | — | Member | MemBillPrintingModule | MemberMast | Date | [INFERRED] |
| MemberCardStatement.rpt | — | Member | MemBillPrintingModule | MemberMast | Date | [INFERRED] |
| GratuityReport.rpt | — | HR | PrEmployee | PayEmpMast | Date | [INFERRED] |
| prAttendanceRep.rpt | ✓ | HR | prAttend | PayEmpMast | Date | [INFERRED] |
| prESIState.rpt | — | HR | PrEmployee | PayEmpMast | Date | [INFERRED] |
| prLoanAdvSumm.rpt | — | HR | PrLoan | PayEmpMast | Date | [INFERRED] |
| prLoanAdvSumm1.rpt | — | HR | PrLoan | PayEmpMast | Date | [INFERRED] |
| prLoanLedg.rpt | — | HR | PrLoan | PayEmpMast | Date | [INFERRED] |
| prLoanReg.rpt | — | HR | PrLoan | PayEmpMast | Date | [INFERRED] |
| prPayRollReg.rpt | — | HR | prSalCreate | PayEmpMast | Date | [INFERRED] |
| prPayRollRegOther.rpt | — | HR | prSalCreate | PayEmpMast | Date | [INFERRED] |
| prPaySlip.rpt | ✓ | HR | prSalCreate | PayEmpMast | EmpCode | [INFERRED] |
| prPaySlip_sa.rpt | — | HR | prSalCreate | PayEmpMast | EmpCode | [INFERRED] |
| prPFState.rpt | — | HR | PrEmployee | PayEmpMast | Date | [INFERRED] |
| PAttend.rpt | — | HR | prAttend | PayEmpMast | Date | [INFERRED] |
| Empl_Detl.rpt | — | HR | PrEmployee | PayEmpMast | — | [INFERRED] |
| EpabxCallRep.rpt | — | EPABX | TelCallEntry | CallDetail | Date | [INFERRED] |
| Complaint.rpt | — | HK | FrmComplaintMast | Complaint | — | [INFERRED] |
| ComplaintDetail.rpt | — | HK | FrmComplaintClearing | Complaint | Date | [INFERRED] |
| LostFound.rpt | — | HK | FrmLostFound | LostFound | — | [INFERRED] |
| HouseKeeping.rpt | ✓ | HK | HHouseKeeping | RoomMast+RoomOcc | — | [INFERRED] |
| MovementList.rpt | — | HK | HHouseKeeping | RoomMast+RoomOcc | Date | [INFERRED] |
| UserMast.rpt | — | System | UserMast | UserMast | — | [INFERRED] |
| UserPermissionReport.rpt | — | System | UserPermission | User1+User_Module | — | [INFERRED] |
| CashCardCollectSumm.rpt | — | System | FrmReceivePayment | SmartCardRegistration | Date | [INFERRED] |
| CashCardTransactionReport.rpt | — | System | FrmReceivePayment | SmartCardRegistration | Date | [INFERRED] |
| CashCardTransDetail.rpt | — | System | FrmReceivePayment | SmartCardRegistration | Date | [INFERRED] |
| CashierSale.rpt | — | System | FrmFomB | PayCharge | Date | [INFERRED] |
| CashierSummaryHall.rpt | — | System | HallBill | SunTran | Date | [INFERRED] |
| CashierSummaryHallMIS.rpt | — | System | HallBill | SunTran | Date | [INFERRED] |
| CashierSettlementSubReport.rpt | — | System | FrmFomB | PayCharge | Date | [INFERRED] |
| POSBillWinPrint.rpt | ✓ | System | POSBillPrint | KOT | BillNo | [INFERRED] |
| POSBillWinPrintzzz.rpt | — | System | POSBillPrint | KOT | BillNo | [INFERRED] |
| POSBillWinPrintzzzzz.rpt | — | System | POSBillPrint | KOT | BillNo | [INFERRED] |
| BillTokenPrint.rpt | ✓ | System | POSBillPrint | KOT | BillNo | [INFERRED] |
| KotPrint.rpt | — | System | RsKOTEntry | KOT | KOTNo | [INFERRED] |
| WinKOTPrint.rpt | — | System | RsKOTEntry | KOT | KOTNo | [INFERRED] |
| WinBOOKINGPrint.rpt | — | System | FrmBookingInquiry | Booking | BookNo | [INFERRED] |
| SBI.rpt | — | Finance | FaReports | Ledger | Date | [INFERRED] |
| ChequePrint.rpt | — | Finance | FaVoucher | Ledger | ChequeNo | [INFERRED] |
| FaAgRefNo.rpt | — | Finance | FaReports | Ledger | — | [INFERRED] |

### 2.5 HR & Payroll (Module H) — ~15 reports

| Report | TTX | Category | Screen | Data Source | Params | Ev |
|---|---|---|---|---|---|---|
| prAttendanceRep.rpt | ✓ | Attendance | prAttend | PayEmpMast | Date | [INFERRED] |
| prESIState.rpt | — | ESI | PrEmployee | PayEmpMast | Date | [INFERRED] |
| prLoanAdvSumm.rpt | — | Loan | PrLoan | PayEmpMast | Date | [INFERRED] |
| prLoanAdvSumm1.rpt | — | Loan | PrLoan | PayEmpMast | Date | [INFERRED] |
| prLoanLedg.rpt | — | Loan | PrLoan | PayEmpMast | Date | [INFERRED] |
| prLoanReg.rpt | — | Loan | PrLoan | PayEmpMast | Date | [INFERRED] |
| prPayRollReg.rpt | — | Payroll | prSalCreate | PayEmpMast | Date | [INFERRED] |
| prPayRollRegOther.rpt | — | Payroll | prSalCreate | PayEmpMast | Date | [INFERRED] |
| prPaySlip.rpt | ✓ | Payslip | prSalCreate | PayEmpMast | EmpCode | [INFERRED] |
| prPaySlip_sa.rpt | — | Payslip | prSalCreate | PayEmpMast | EmpCode | [INFERRED] |
| prPFState.rpt | — | PF | PrEmployee | PayEmpMast | Date | [INFERRED] |
| PAttend.rpt | — | Attendance | prAttend | PayEmpMast | Date | [INFERRED] |
| Empl_Detl.rpt | — | Employee | PrEmployee | PayEmpMast | — | [INFERRED] |
| GratuityReport.rpt | — | Gratuity | PrEmployee | PayEmpMast | Date | [INFERRED] |

### 2.6 EPABX (Module EP) — ~3 reports

| Report | TTX | Category | Screen | Data Source | Params | Ev |
|---|---|---|---|---|---|---|
| EpabxCallRep.rpt | — | Call | TelCallEntry | CallDetail | Date | [INFERRED] |
| CallCodeMast.rpt | — | Master | TelCallCodeMast | CallCode | — | [INFERRED] |
| CallTypeMast.rpt | — | Master | TelCallTypeMast | CallType | — | [INFERRED] |
| TelExt.rpt | — | Master | TelExtensionMast | TelExt | — | [INFERRED] |

### 2.7 House Keeping (Module HK) — ~5 reports

| Report | TTX | Category | Screen | Data Source | Params | Ev |
|---|---|---|---|---|---|---|
| HouseKeeping.rpt | ✓ | Status | HHouseKeeping | RoomMast+RoomOcc | — | [INFERRED] |
| Complaint.rpt | — | Complaint | FrmComplaintMast | Complaint | — | [INFERRED] |
| ComplaintDetail.rpt | — | Complaint | FrmComplaintClearing | Complaint | Date | [INFERRED] |
| LostFound.rpt | — | Lost/Found | FrmLostFound | LostFound | — | [INFERRED] |
| MovementList.rpt | — | Movement | HHouseKeeping | RoomMast+RoomOcc | Date | [INFERRED] |

### 2.8 Member Management (Module M) — ~10 reports

| Report | TTX | Category | Screen | Data Source | Params | Ev |
|---|---|---|---|---|---|---|
| MemberList.rpt | — | Member | MembershipMast | MemberMast | — | [INFERRED] |
| MemberListSummerised.rpt | — | Member | MembershipMast | MemberMast | — | [INFERRED] |
| MemBillMissingReport.rpt | — | Billing | MemBillPrintingModule | MemberMast | Date | [INFERRED] |
| MemFacilityBill.rpt | — | Billing | MemFacilityBilling | MemberMast | Date | [INFERRED] |
| MemMalingLabels.rpt | — | Mailing | MemBillPrintingModule | MemberMast | — | [INFERRED] |
| MemRevenueBill.rpt | — | Revenue | MemBillPrintingModule | MemberMast | Date | [INFERRED] |
| MemberCardStatement.rpt | — | Statement | MemBillPrintingModule | MemberMast | Date | [INFERRED] |
| CorporateMemberList.rpt | — | Corporate | MembershipMast | MemberMast | — | [INFERRED] |
| MemCatMast.rpt | — | Master | MemCatMast | MemCategory | — | [INFERRED] |

### 2.9 Sales & Marketing (Module S) — ~10 reports

| Report | TTX | Category | Screen | Data Source | Params | Ev |
|---|---|---|---|---|---|---|
| MarketSeg.rpt | ✓ | MIS | FrmMarketSeg | MarketSeg | — | [INFERRED] |
| MarketSegAnalysis.rpt | ✓ | MIS | FrmMarketSeg | MarketSeg+Booking | Date | [INFERRED] |
| BussSource.rpt | — | MIS | FrmBusinessSrc | BussSource | — | [INFERRED] |
| BusinessAnalysis.rpt | ✓ | MIS | FrmBusinessSrc | BussSource+Booking | Date | [INFERRED] |
| CompanyAnalysis.rpt | ✓ | MIS | FrmGuestStat | Company+Booking | Date | [INFERRED] |
| CompanySumm.rpt | ✓ | MIS | FrmGuestStat | Company+Booking | Date | [INFERRED] |
| CompanyDetails.rpt | — | MIS | FrmGuestStat | Company | — | [INFERRED] |
| CompanyGuestDetails.rpt | — | MIS | FrmGuestStat | Company+GuestProf | — | [INFERRED] |
| TravelAgentAnalysis.rpt | — | MIS | FrmGuestStat | TravelAgency+Booking | Date | [INFERRED] |
| OccAnalysis.rpt | — | MIS | fdRoomOcc | RoomOcc | Date | [INFERRED] |

### 2.10 System / Utility (Module U) — ~8 reports

| Report | TTX | Category | Screen | Data Source | Params | Ev |
|---|---|---|---|---|---|---|
| UserMast.rpt | — | User | UserMast | UserMast | — | [INFERRED] |
| UserPermissionReport.rpt | — | Permission | UserPermission | User1+User_Module | — | [INFERRED] |
| CashCardCollectSumm.rpt | — | SmartCard | FrmReceivePayment | SmartCardRegistration | Date | [INFERRED] |
| CashCardTransactionReport.rpt | — | SmartCard | FrmReceivePayment | SmartCardRegistration | Date | [INFERRED] |
| CashCardTransDetail.rpt | — | SmartCard | FrmReceivePayment | SmartCardRegistration | Date | [INFERRED] |
| CashierSale.rpt | — | Cashier | FrmFomB | PayCharge | Date | [INFERRED] |
| CashierSummaryHall.rpt | — | Cashier | HallBill | SunTran | Date | [INFERRED] |
| CashierSummaryHallMIS.rpt | — | Cashier | HallBill | SunTran | Date | [INFERRED] |
| CashierSettlementSubReport.rpt | — | Cashier | FrmFomB | PayCharge | Date | [INFERRED] |

---

## 3. REPORT → SQL/VIEW MAPPING

### 3.1 Views Used by Reports

| View | Reports | Key Tables | Ev |
|---|---|---|---|
| BillDet | BillPrint, FolioPrint, GuestLedger, GuestTrialBalance | PayCharge+RoomOcc+GuestFolio | [V-SQL] |
| BillSummary | BillPrint, FolioPrint | BillDet+RoomOcc | [V-SQL] |
| RoomOccDet | OccupancyReport, RoomInventory, GuestInHouse | RoomOcc+GuestFolio | [V-SQL] |
| View_Booking | BookingDetail, ReservStatus, ExpectedDeparture | Booking+GrpBookingDetails | [V-SQL] |
| ViewBooking | BookingDetail, ReservStatus | Booking+GrpBookingDetails | [V-SQL] |
| ViewLedger | FaJvchr, SBI, ChequePrint | Ledger+LedgerM | [V-SQL] |
| ViewLedgerLog | FaJvchr, SBI | LedgerLog+LedgerMLog | [V-SQL] |
| ViewSubgroup | FaPartyMast, FaPartyTree | SubGroup+ACGROUP+City | [V-SQL] |
| Party_List | FaPartyMast | SubGroup+City | [V-SQL] |
| SunTransaction | HallBill reports, SettleRepHall | SunTran+SunTranH | [V-SQL] |

### 3.2 Core Tables Used by Reports

| Table | Reports | Ev |
|---|---|---|
| PayCharge | BillPrint, FolioPrint, CashierReport, SettleRep, SalesReg, TaxReport | [V-SQL] |
| GuestFolio | BillPrint, FolioPrint, OccupancyReport, GuestLedger | [V-SQL] |
| RoomOcc | OccupancyReport, RoomInventory, GuestInHouse, RoomChangeHistory | [V-SQL] |
| Booking | BookingDetail, ReservStatus, ExpectedDeparture, DaysForecast | [V-SQL] |
| KOT | KOTWiseDetails, PendKot, TableSale, SalesReg, ItemWiseSale | [V-SQL] |
| SunTran | HallBill reports, SettleRepHall, TaxReportHall | [V-SQL] |
| Ledger | FaJvchr, SBI, ChequePrint, TaxRegister, VATRegister | [V-SQL] |
| Stock | StoreIss, StockRegister, StockInHand, KitchenStk | [V-SQL] |
| GuestProf | GuestWiseAnalysis, GuestDetails, Form-1..6 | [V-SQL] |
| MemberMast | MemberList, MemFacilityBill, MemRevenueBill | [INFERRED] |
| PayEmpMast | prPaySlip, prAttendanceRep, prPayRollReg | [INFERRED] |
| SmartCardRegistration | CashCardCollectSumm, CashCardTransactionReport | [INFERRED] |
| eInvoiceBill1/Bill2 | GSTR2(3), GSTR2(4A), GSTR2(4B), EReturn | [V-SQL] |

---

## 4. REPORT CATEGORIES

| Category | Count | Description |
|---|---|---|
| Financial | ~35 | Vouchers, Ledgers, Trial Balance, Balance Sheet, P&L, Tax, VAT, GST |
| Operational | ~50 | Registers, Invoices, Receipts, Settlements, Cashier reports |
| Statistical/MIS | ~30 | Analysis, Forecasts, Occupancy, Revenue, Guest analysis |
| Inventory | ~30 | Stock, Purchase, Issue, Kitchen, Production |
| HR & Payroll | ~15 | Payslips, Attendance, Loans, PF, ESI |
| House Keeping | ~5 | Status, Complaints, Lost/Found |
| Member Management | ~10 | Member lists, Billing, Statements |
| EPABX | ~3 | Call reports |
| System/Utility | ~8 | Users, Permissions, SmartCard |
| Test/Unknown | ~3 | DDDDD, testRpt123, OTREP |

---

## 5. KEY OBSERVATIONS

1. **Saare reports Crystal Reports engine pe based hain** (Seagate CR 7/8 era) [VERIFIED-VB6]
2. **TTX files ADO field-definition stubs hain** — report ke data source fields batate hain
3. **Koi bhi stored procedure reports ke liye use nahi hota** — sab direct SQL queries hain
4. **Views pre-defined data sources hain** — BillDet, BillSummary, RoomOccDet, View_Booking, ViewBooking, ViewLedger, ViewLedgerLog, ViewSubgroup, Party_List, SunTransaction
5. **PrintFormats table per-form print format overrides karta hai** (39 code references)
6. **Report viewers:** REPVIEW, rFomRepView, rHallRepView, rInventRepView, rMemberRepView, rPOSRepView
7. **Duplicate reports:** Copy of KOTWiseDetails, SalesRegTaxWise - Copy — likely test/development copies
8. **Backup reports:** FolionoBankzzzz, SaleBillHallzzzzz, POSBillWinPrintzzz — likely backup/test versions
9. **EGST.rar** file me GST reports ka compressed set hai
10. **HMSGST.exe variants** alag GST report generators hain
11. **Test reports:** DDDDD.rpt, testRpt123.rpt, OTREP.RPT — unknown purpose
