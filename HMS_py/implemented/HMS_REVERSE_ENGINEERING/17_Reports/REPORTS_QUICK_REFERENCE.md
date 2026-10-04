# HMS REPORTS QUICK REFERENCE

Generated: 2026-09-29
Purpose: Developer ke liye quick lookup card

---

## REPORT NAME -> MODULE -> SCREEN -> SQL MAPPING

### Front Office (Module E)

| Report | Screen | SQL/View | Params |
|---|---|---|---|
| BillPrint.rpt | fdDisplayFolio | PayCharge+GuestFolio+RoomOcc | BillNo |
| FolioPrint.rpt | fdDisplayFolio | PayCharge+GuestFolio | FolioNo |
| FolioPrinting.rpt | fdDisplayFolio | PayCharge+GuestFolio | FolioNo |
| ChkInRegister.rpt | fdCheckIn | RoomOcc+GuestFolio | Date |
| ChkOutRegister.rpt | fdCheckOut | RoomOcc(Type=O) | Date |
| ArrDepReg.rpt | FrmReservationStatus | RoomOcc+Booking | Date |
| ArrivalDepList.rpt | FrmReservationStatus | RoomOcc+Booking | Date |
| CashierReport.rpt | FrmFomB | PayCharge | Date,Cashier |
| CashierCollect.rpt | FrmFomB | PayCharge | Date,Cashier |
| CashierSettlement.rpt | FrmFomB | PayCharge | Date,Cashier |
| SettleRep.rpt | FdReSetlement | PayCharge | Date |
| Settlement Reciept.rpt | fdPaymentCharge | PayCharge | ReceiptNo |
| Advance Reciept.rpt | fdPaymentCharge | PayCharge | ReceiptNo |
| GuestInHouse.rpt | InHouseGuestFolio | RoomOcc(Type=I) | — |
| RoomInventory.rpt | FdRoomDisplay | RoomMast+RoomOcc | — |
| OccupancyReport.rpt | fdRoomOcc | RoomOcc+GuestFolio | Date |
| RoomOccupancyAnalysisReport.rpt | fdRoomOcc | RoomOcc | Date |
| RoomTypeOccupancyReport.rpt | fdRoomOcc | RoomOcc | Date |
| RoomWiseRoomRevenueReport.rpt | fdRoomOcc | RoomOcc+PayCharge | Date |
| RoomRentAuditReport.rpt | fdRoomOcc | RoomOcc+PayCharge | Date |
| RoomChangeHistory.rpt | fdRoomChange | RoomOcc(ChngDate) | Date |
| GuestLedger.rpt | fdDisplayFolio | PayCharge+GuestFolio | GuestProf |
| GuestTrialBalance.rpt | fdDisplayFolio | PayCharge+GuestFolio | Date |
| GuestWiseAnalysis.rpt | FrmGuestStat | GuestProf+PayCharge | Date |
| GrcPrint.rpt | fdCheckIn | GuestFolio+RoomOcc | GRCNo |
| GRCReport.rpt | fdCheckIn | GuestFolio+RoomOcc | GRCNo |
| FOMBillChangeReport.rpt | frmFomB | PayCharge(Log) | Date |
| FOMTaxDetail.rpt | frmFomB | PayCharge+TaxStru | Date |
| FOCC Report.rpt | FrmFomB | PayCharge | Date |
| HtPmtByCashier.rpt | FrmFomB | PayCharge | Date,Cashier |
| InsHouseCount.rpt | fdRoomOcc | RoomOcc(Type=I) | — |
| ExtraChargesDuringStay.rpt | fdPostChrg | PayCharge | Date |
| CancelBillDet.rpt | FrmFomBillDeletion | PayCharge | Date |
| PlanMealTokens.rpt | FrmPlanTokenMast | PayCharge+PlanMast | Date |
| PlanPackSchedule.rpt | FrmPlanPackMast | PlanMast+RoomOcc | Date |
| RegistrCard.rpt | fdCheckIn | Booking+GuestFolio | BookNo |
| ReservStatus.rpt | FrmReservationStatus | Booking | Date |
| BookingDetail.rpt | FrmBookingInquiry | Booking | Date |
| BOOKINGPrint.rpt | FrmBookingInquiry | Booking | BookNo |
| CancellLetter.rpt | FrmBookingInquiry | Booking+GuestProf | BookNo |
| ConfirmLetter.rpt | FrmBookingInquiry | Booking+GuestProf | BookNo |
| ExpectedDeparture.rpt | FrmReservationStatus | Booking | Date |
| DaysForecastRep.rpt | FrmReservationStatus | Booking | Date |
| PackageForecast.rpt | FrmReservationStatus | Booking+PlanMast | Date |
| GuestBDayAnniversaryLookup.rpt | FrmBdayLookup | GuestProf | Date |
| BirthMarrRep.rpt | FrmBdayLookup | GuestProf | Date |
| CompanyGuestDetails.rpt | FrmGuestInfo | GuestProf+Company | — |
| CompanyDetails.rpt | FrmGuestInfo | Company | — |
| RoomNights.rpt | fdRoomOcc | RoomOcc | Date |
| MovementList.rpt | HHouseKeeping | RoomMast+RoomOcc | Date |

### POS / Restaurant (Module P)

| Report | Screen | SQL/View | Params |
|---|---|---|---|
| KOTWiseDetails.rpt | RsKOTEntry | KOT | Date |
| PendKot.rpt | RsKOTEntry | KOT(Pending=Y) | Date |
| KotPrint.rpt | RsKOTEntry | KOT | KOTNo |
| WinKOTPrint.rpt | RsKOTEntry | KOT | KOTNo |
| KotEditDel.rpt | FrmPOSBillDeletion | KOT | Date |
| KOTRateChange.rpt | RsKOTEntry | KOT | Date |
| NCKOTSummary.rpt | RsKOTEntry | KOT(NCKOT=Y) | Date |
| NCKOTWiseDetails.rpt | RsKOTEntry | KOT(NCKOT=Y) | Date |
| TableSale.rpt | RsSaleBillSplit | KOT+RoomMast | Date |
| CoverAnalysis.rpt | RsSaleBillSplit | KOT | Date |
| DenominationDetail.rpt | RsPaymentReceice | PayCharge | Date |
| DiscountReg.rpt | FrmPOSBillDeletion | PayCharge | Date |
| DiscountPartywiseReg.rpt | FrmPOSBillDeletion | PayCharge | Date,Party |
| DiscountSumm.rpt | FrmPOSBillDeletion | PayCharge | Date |
| EditedBills.rpt | FrmPOSBillModification | PayCharge | Date |
| VoidBills.rpt | FrmPOSBillDeletion | PayCharge(VoidYN) | Date |
| OpenItemSale.rpt | RsSaleBillSplit | KOT | Date |
| SalesReg.rpt | RSSaleBill | KOT+PayCharge | Date |
| SalesRegTaxWise.rpt | RSSaleBill | PayCharge+TaxStru | Date |
| SaleRegister.rpt | RSSaleBill | PayCharge | Date |
| SaleRegisterI.rpt | RSSaleBill | PayCharge | Date |
| SaleRegisterSumm.rpt | RSSaleBill | PayCharge | Date |
| SaleSumm.rpt | RSSaleBill | PayCharge | Date |
| SaleSummConsolidated.rpt | RSSaleBill | PayCharge | Date |
| ItemWiseSale.rpt | RSSaleBill | KOT | Date |
| ItemWiseGroupWiseSale.rpt | HallBill | SunTran | Date |
| RestSalesSumm.rpt | RSSaleBill | KOT | Date |
| RestIssue.rpt | RsKOTEntry | KOT | Date |
| CustomerDetail.rpt | RsPOSCustInfo | GuestProf | — |
| PaymentReceiveRep.rpt | RsPaymentReceice | PayCharge | Date |
| UserPaymentCollection.rpt | FrmUserPaymentCollection | PayCharge | Date,User |
| POSBillWinPrint.rpt | POSBillPrint | KOT | BillNo |
| BillTokenPrint.rpt | POSBillPrint | KOT | BillNo |
| FreeItemReport.rpt | RsKOTEntry | KOT(FreeSno) | Date |
| DelBillUnsetBill.rpt | FrmUnSettledBillsInfo | PayCharge | Date |
| OrderBooking.rpt | RsBookingEntry | Booking | Date |
| Order Booking Advance Receipt.rpt | RsBookingEntryAdvance | Booking | ReceiptNo |
| OrderDetailReport.rpt | RsBookingEntry | Booking | Date |

### Banquet (Module B)

| Report | Screen | SQL/View | Params |
|---|---|---|---|
| SaleBillHall.rpt | HallBill | SunTran | BillNo |
| SaleBillHallEstimate.rpt | HallEstimate | SunTran | BillNo |
| SaleBillHallSecondary.rpt | HallBill | SunTran | BillNo |
| HallSaleReg.rpt | HallBill | SunTran | Date |
| HallSaleSumm.rpt | HallBill | SunTran | Date |
| HallItem.rpt | HallBill | SunTran | Date |
| HallItemSale.rpt | HallBill | SunTran | Date |
| HallBooking Advance Receipt.rpt | HallAdvanceDepDialog | SunTran | ReceiptNo |
| SettleRepHall.rpt | HallBill | SunTran | Date |
| SettlementRecieptBanq.rpt | HallBill | SunTran | ReceiptNo |
| TaxReportHall.rpt | HallBill | SunTran | Date |
| TaxSummaryHall.rpt | HallBill | SunTran | Date |
| TaxwiseDetailReportHall.rpt | HallBill | SunTran | Date |
| CoverAnalysisHall.rpt | HallBill | SunTran | Date |
| CashierSummaryHall.rpt | HallBill | SunTran | Date |
| CashierSummaryHallMIS.rpt | HallBill | SunTran | Date |
| DailyFuncSheet.rpt | HallBill | SunTran | Date |
| FuncProspect.rpt | HallBooking | Booking | Date |
| FuncProspectInstructions.rpt | HallBooking | Booking | Date |
| catlog.rpt | HallMenuCatalog | ItemMast | — |
| catlog1.rpt | HallMenuCatalog | ItemMast | — |
| HallMast.rpt | HallMast | VenueMast | — |
| HallItemCatMast.rpt | HallItemGroupMast | ItemCatMast | — |
| HallItemGrp.rpt | HallItemGroupMast | ItemGrp | — |
| SalesRegHall.rpt | HallBill | SunTran | Date |
| SalesRegHallItemWise.rpt | HallBill | SunTran | Date |
| ItemWiseSaleHall.rpt | HallBill | SunTran | Date |
| ItemWiseGroupWiseSaleG.rpt | HallBill | SunTran | Date |

### Night Audit (Module NA)

| Report | Screen | SQL/View | Params |
|---|---|---|---|
| NightAuditReport.rpt | mdlNightAudit | RoomOcc+PayCharge | Date |
| NightAuditReportI.rpt | mdlNightAudit | RoomOcc+PayCharge | Date |
| DailyReport.rpt | mdlNightAudit | RoomOcc+PayCharge | Date |
| DailyRepII.rpt | mdlNightAudit | RoomOcc+PayCharge | Date |
| Day23RoomAvail.rpt | FrmReservationStatus | Booking | Date |
| Day23RoomType.rpt | FrmReservationStatus | Booking | Date |
| DailyStoreIss.rpt | FrmStockTransfer | Stock | Date |
| ExpenseRep.rpt | FrmExpense | ExpenseSheet | Date |
| ExpenseVoucher.rpt | FrmExpense | ExpenseSheet | VoucherNo |
| FBCostStatement.rpt | FoodCost.rpt | KOT+ItemMast | Date |
| FoodCost.rpt | FoodCost.rpt | KOT+ItemMast | Date |
| BudgetAnalysis.rpt | FABudgetRep.rpt | Budget+Ledger | Date |
| FABudgetRep.rpt | FABudgetRep.rpt | Budget+Ledger | Date |
| FABudgetVarience.rpt | FABudgetRep.rpt | Budget+Ledger | Date |

### Finance (Module F)

| Report | Screen | SQL/View | Params |
|---|---|---|---|
| FaJvchr.rpt | FaVoucher | Ledger+LedgerM | VoucherNo |
| SBI.rpt | FaReports | Ledger | Date |
| ChequePrint.rpt | FaVoucher | Ledger | ChequeNo |
| FaLedTrial.ttx | FaReports | Ledger | Date |
| FaDetTrial.ttx | FaReports | Ledger | Date |
| FaSubTrial.ttx | FaReports | Ledger | Date |
| FaGroupTrial.ttx | FaReports | Ledger | Date |
| FaBalSheet.ttx | FaReports | Ledger+ACGROUP | Date |
| FaProfLoss.ttx | FaReports | Ledger+ACGROUP | Date |
| FaMonthSum.ttx | FaReports | Ledger | Date |
| FaDueList.rpt | FaReports | Ledger | Date |
| FaPartyMast.rpt | FaSubGroup | SubGroup | — |
| FaPartyTree.rpt | FaSubGroup | SubGroup+ACGROUP | — |
| FaGrpListTree.rpt | FaSubGroup | ACGROUP | — |
| FaBankRecon.rpt | FaChqClear | Ledger | Date |
| FaTAGADALET.rpt | FaTDSChal | Ledger+TDSCategory | Date |
| Form24AnnexureA.rpt | FaTDSChal | Ledger+TDSCategory | Date |
| LTFORMII.rpt | FaReports | Ledger | Date |
| LTFORMIV.rpt | FaReports | Ledger | Date |
| Article_26(a).rpt | FaReports | Ledger | Date |
| Article_26(b).rpt | FaReports | Ledger | Date |
| UPVATXXIV.rpt | FaReports | Ledger | Date |
| FORMIC.rpt | FaReports | Ledger | Date |
| FORMIII.rpt | FaReports | Ledger | Date |
| VATRegister.rpt | FaReports | Ledger | Date |
| VATRegisterII.rpt | FaReports | Ledger | Date |
| VATRegisterIII.rpt | FaReports | Ledger | Date |
| TaxRegister.rpt | FaReports | Ledger | Date |
| TaxReport.rpt | FaReports | Ledger | Date |
| TaxSumm.rpt | FaReports | Ledger | Date |
| TaxDetails.rpt | FaReports | Ledger | Date |
| TaxMast.rpt | FrmTaxMast | TaxMast | — |
| TaxStructureMast.rpt | FrmTaxStruMast | TaxStructure | — |
| GSTR2(3).rpt | FrmUploadProcess | eInvoiceBill1/2 | Date |
| GSTR2(4A).rpt | FrmUploadProcess | eInvoiceBill1/2 | Date |
| GSTR2(4B).rpt | FrmUploadProcess | eInvoiceBill1/2 | Date |
| EReturn.rpt | FrmUploadProcess | eInvoiceBill1/2 | Date |
| FaAgRefNo.rpt | FaReports | Ledger | — |
| FaCity.rpt | FaCityMast | City | — |
| FaCountry.rpt | FaCountryMast | Country | — |
| FaState.rpt | FaStateMast | State | — |
| FaArea.rpt | FaReports | — | — |

### Inventory (Module I)

| Report | Screen | SQL/View | Params |
|---|---|---|---|
| StoreIss.rpt | pGIss | Stock | Date |
| StoreIssReg.rpt | pGIss | Stock | Date |
| StoreIssueReport.rpt | pGIss | Stock | Date |
| IssueReg.rpt | pGIss | Stock | Date |
| IssueRegister.rpt | pGIss | Stock | Date |
| StockRegister.rpt | FrmStockTransfer | Stock | Date |
| StockSumm.rpt | FrmStockTransfer | Stock | Date |
| StockInHand.rpt | FrmOPStock | Stock | Date |
| StockSummaryPSBasisDT.rpt | FrmOPStock | Stock | Date |
| StockSummaryPSBasisSM.rpt | FrmOPStock | Stock | Date |
| StkRegStore.rpt | FrmStockTransfer | Stock | Date |
| StkSummStoreConsumable.rpt | FrmStockTransfer | Stock | Date |
| StkSummStoreNo.rpt | FrmStockTransfer | Stock | Date |
| StkSummStoreYes.rpt | FrmStockTransfer | Stock | Date |
| RStockRegister.rpt | FrmStockTransfer | Stock | Date |
| RStockSummary.rpt | FrmStockTransfer | Stock | Date |
| KitchenStk.rpt | RsKitchenStk | Stock | Date |
| KitchenStkDetail.rpt | RsKitchenStk | Stock | Date |
| KitchenStockTr.rpt | RsKitchenStk | Stock | Date |
| RKitchenStkSumm.rpt | RsKitchenStk | Stock | Date |
| OpenningStock.rpt | FrmOPStock | Stock | Date |
| StockTransfer.rpt | FrmStockTransfer | Stock | Date |
| Indent.rpt | PIndent | Stock | Date |
| IndentReg.rpt | PIndent | Stock | Date |
| Requisition.rpt | pReqSlip | Stock | Date |
| ReqSlip.rpt | pReqSlip | Stock | Date |
| POrder.rpt | pPOrder | Stock | Date |
| PurchOrder.rpt | pPOrder | Stock | Date |
| PurchaseBillReg.rpt | pPBill | Stock | Date |
| PurchaseLedger.rpt | pPBill | Stock | Date |
| PurchReg.rpt | pPBill | Stock | Date |
| PurchRegSumm.rpt | pPBill | Stock | Date |
| PurchRetBill.rpt | pPBill | Stock | Date |
| PurchSumm.rpt | pPBill | Stock | Date |
| PurchCashCredit.rpt | pPBill | Stock | Date |
| MREntry.rpt | pMREntry | Stock | Date |
| FinishMaterialReceived.rpt | pMREntry | Stock | Date |
| ExcessConsum.rpt | FrmConsumMast | Stock | Date |
| Production.rpt | FrmConsumMast | Stock | Date |
| ABCAnalysis.rpt | FrmItemMast | Stock | Date |
| ABCAnalysisSale.rpt | FrmItemMast | Stock | Date |
| ItemMast.rpt | FrmItemMast | ItemMast | — |
| ItemMastFinish.rpt | FrmItemMast | ItemMast | — |
| ItemMastRaw.rpt | FrmItemMastRaw | ItemMast | — |
| ItemCatMast.rpt | FrmItemCatMast | ItemCatMast | — |
| ItemGrp.rpt | FrmItemGroupMast | ItemGrp | — |
| ItemWiseIssue.rpt | pGIss | Stock | Date |
| ItemLabelFinish.rpt | FrmItemMast | ItemMast | — |
| ConsumMast.rpt | FrmConsumMast | ConsumMast | — |
| GODOWN.RPT | Godown | Godown | — |
| PartyMast.rpt | FrmParty | PartyMast | — |
| Department.rpt | DepartMast | Department | — |
| SundryMast.rpt | SundryMast | SundryMast | — |
| PayTypeMast.rpt | FrmPayTypeMast | PayTypeMast | — |
| WaiterMast.rpt | FrmWaiterMast | Waiter | — |
| TableMast.rpt | RsTableMast | RoomMast | — |
| SessionMast.rpt | frmSessionMast | SessionMast | — |
| Holiday.rpt | prHoliday | Holiday | — |
| RevMast.rpt | FrmRevMast | RevMast | — |
| FixedCharge.rpt | frmFixedChargeMast | FixedCharge | — |
| RoomCategory.rpt | FrmRoomCatMast | RoomCat | — |
| RoomFeatureMast.rpt | FrmRoomFeatureMast | RoomFeature | — |
| RoomMast.rpt | FrmRoomMast | RoomMast | — |
| VenueMast.rpt | FrmVenueMast | VenueMast | — |
| VenueFeat.rpt | FrmVenueFeat | VenueFeature | — |
| EventMast.rpt | FrmEventMast | EventMast | — |

### HR & Payroll (Module H)

| Report | Screen | SQL/View | Params |
|---|---|---|---|
| prAttendanceRep.rpt | prAttend | PayEmpMast | Date |
| prESIState.rpt | PrEmployee | PayEmpMast | Date |
| prLoanAdvSumm.rpt | PrLoan | PayEmpMast | Date |
| prLoanAdvSumm1.rpt | PrLoan | PayEmpMast | Date |
| prLoanLedg.rpt | PrLoan | PayEmpMast | Date |
| prLoanReg.rpt | PrLoan | PayEmpMast | Date |
| prPayRollReg.rpt | prSalCreate | PayEmpMast | Date |
| prPayRollRegOther.rpt | prSalCreate | PayEmpMast | Date |
| prPaySlip.rpt | prSalCreate | PayEmpMast | EmpCode |
| prPaySlip_sa.rpt | prSalCreate | PayEmpMast | EmpCode |
| prPFState.rpt | PrEmployee | PayEmpMast | Date |
| PAttend.rpt | prAttend | PayEmpMast | Date |
| Empl_Detl.rpt | PrEmployee | PayEmpMast | — |
| GratuityReport.rpt | PrEmployee | PayEmpMast | Date |

### House Keeping (Module HK)

| Report | Screen | SQL/View | Params |
|---|---|---|---|
| HouseKeeping.rpt | HHouseKeeping | RoomMast+RoomOcc | — |
| Complaint.rpt | FrmComplaintMast | Complaint | — |
| ComplaintDetail.rpt | FrmComplaintClearing | Complaint | Date |
| LostFound.rpt | FrmLostFound | LostFound | — |
| MovementList.rpt | HHouseKeeping | RoomMast+RoomOcc | Date |

### Member Management (Module M)

| Report | Screen | SQL/View | Params |
|---|---|---|---|
| MemberList.rpt | MembershipMast | MemberMast | — |
| MemberListSummerised.rpt | MembershipMast | MemberMast | — |
| MemBillMissingReport.rpt | MemBillPrintingModule | MemberMast | Date |
| MemFacilityBill.rpt | MemFacilityBilling | MemberMast | Date |
| MemMalingLabels.rpt | MemBillPrintingModule | MemberMast | — |
| MemRevenueBill.rpt | MemBillPrintingModule | MemberMast | Date |
| MemberCardStatement.rpt | MemBillPrintingModule | MemberMast | Date |
| CorporateMemberList.rpt | MembershipMast | MemberMast | — |
| MemCatMast.rpt | MemCatMast | MemCategory | — |

### Sales & Marketing (Module S)

| Report | Screen | SQL/View | Params |
|---|---|---|---|
| MarketSeg.rpt | FrmMarketSeg | MarketSeg | — |
| MarketSegAnalysis.rpt | FrmMarketSeg | MarketSeg+Booking | Date |
| BussSource.rpt | FrmBusinessSrc | BussSource | — |
| BusinessAnalysis.rpt | FrmBusinessSrc | BussSource+Booking | Date |
| CompanyAnalysis.rpt | FrmGuestStat | Company+Booking | Date |
| CompanySumm.rpt | FrmGuestStat | Company+Booking | Date |
| CompanyDetails.rpt | FrmGuestStat | Company | — |
| CompanyGuestDetails.rpt | FrmGuestStat | Company+GuestProf | — |
| TravelAgentAnalysis.rpt | FrmGuestStat | TravelAgency+Booking | Date |
| OccAnalysis.rpt | fdRoomOcc | RoomOcc | Date |

### Tourism Forms (Module T)

| Report | Screen | SQL/View | Params |
|---|---|---|---|
| Form-1.rpt | FrmGuestStat | GuestProf | Date |
| Form-2.rpt | FrmGuestStat | GuestProf | Date |
| Form-4.rpt | FrmGuestStat | GuestProf | Date |
| Form-5.rpt | FrmGuestStat | GuestProf | Date |
| Form-6.rpt | FrmGuestStat | GuestProf | Date |
| Form-C.rpt | FrmGuestStat | GuestProf | Date |
| FORMC.rpt | FrmGuestStat | GuestProf | Date |
| LuxuryTax.rpt | FrmGuestStat | GuestProf | Date |
| LuxuryTaxz.rpt | FrmGuestStat | GuestProf | Date |
| MonthlyStatisticalReturnWinPrint.rpt | FrmGuestStat | GuestProf | Date |

### EPABX (Module EP)

| Report | Screen | SQL/View | Params |
|---|---|---|---|
| EpabxCallRep.rpt | TelCallEntry | CallDetail | Date |
| CallCodeMast.rpt | TelCallCodeMast | CallCode | — |
| CallTypeMast.rpt | TelCallTypeMast | CallType | — |
| TelExt.rpt | TelExtensionMast | TelExt | — |

### System / Utility (Module U)

| Report | Screen | SQL/View | Params |
|---|---|---|---|
| UserMast.rpt | UserMast | UserMast | — |
| UserPermissionReport.rpt | UserPermission | User1+User_Module | — |
| CashCardCollectSumm.rpt | FrmReceivePayment | SmartCardRegistration | Date |
| CashCardTransactionReport.rpt | FrmReceivePayment | SmartCardRegistration | Date |
| CashCardTransDetail.rpt | FrmReceivePayment | SmartCardRegistration | Date |
| CashierSale.rpt | FrmFomB | PayCharge | Date |
| CashierSummaryHall.rpt | HallBill | SunTran | Date |
| CashierSummaryHallMIS.rpt | HallBill | SunTran | Date |
| CashierSettlementSubReport.rpt | FrmFomB | PayCharge | Date |

---

## COMMON REPORTS PER MODULE

### Front Office (Most Used)
1. BillPrint.rpt — Guest bill print
2. FolioPrint.rpt — Folio print
3. CashierReport.rpt — Cashier summary
4. OccupancyReport.rpt — Current occupancy
5. GuestLedger.rpt — Guest ledger
6. ChkInRegister.rpt — Check-in register
7. ChkOutRegister.rpt — Check-out register
8. SettleRep.rpt — Settlement report

### POS (Most Used)
1. KOTWiseDetails.rpt — KOT details
2. SalesReg.rpt — Sales register
3. SaleSumm.rpt — Sale summary
4. TableSale.rpt — Table-wise sales
5. CoverAnalysis.rpt — Cover analysis
6. PendKot.rpt — Pending KOTs
7. DiscountReg.rpt — Discount register

### Banquet (Most Used)
1. SaleBillHall.rpt — Hall bill
2. HallSaleReg.rpt — Hall sales register
3. SettleRepHall.rpt — Hall settlement
4. TaxReportHall.rpt — Hall tax report
5. DailyFuncSheet.rpt — Daily function sheet

### Night Audit (Most Used)
1. NightAuditReport.rpt — Night audit summary
2. DailyReport.rpt — Daily report
3. Day23RoomAvail.rpt — 23-day availability
4. ExpenseRep.rpt — Expense report

### Finance (Most Used)
1. FaJvchr.rpt — Journal voucher
2. SBI.rpt — Ledger
3. TaxReport.rpt — Tax report
4. VATRegister.rpt — VAT register
5. GSTR2(3).rpt — GST return

### Inventory (Most Used)
1. StockRegister.rpt — Stock register
2. StockInHand.rpt — Stock in hand
3. StoreIss.rpt — Store issue
4. PurchReg.rpt — Purchase register
5. KitchenStk.rpt — Kitchen stock

---

## REPORT PARAMETERS QUICK REFERENCE

| Parameter | Reports | Type |
|---|---|---|
| Date range | Most reports | DateTime |
| BillNo | BillPrint, FolioPrint, SaleBillHall | String |
| FolioNo | FolioPrint, FolioPrinting | String |
| ReceiptNo | Settlement Reciept, Advance Receipt | String |
| BookNo | BookingDetail, BOOKINGPrint, RegistrCard | String |
| EmpCode | prPaySlip | String |
| Cashier | CashierReport, CashierCollect, HtPmtByCashier | String |
| GuestProf | GuestLedger | String |
| Party | DiscountPartywiseReg | String |
| ChequeNo | ChequePrint | String |
| VoucherNo | FaJvchr, ExpenseVoucher | String |
| KOTNo | KotPrint, WinKOTPrint | String |
| GRCNo | GrcPrint, GRCReport | String |
| User | UserPaymentCollection | String |

---

## REPORT ENGINE DETAILS

| Property | Value |
|---|---|
| Engine | Crystal Reports ActiveX (Seagate CR 7/8) |
| Path | INI key 2 -> C:\PENDRIVE\HMS\Reports |
| Viewers | REPVIEW, rFomRepView, rHallRepView, rInventRepView, rMemberRepView, rPOSRepView |
| Print Overrides | PrintFormats table (39 refs) |
| Data Source | Direct SQL queries (no stored procedures for reports) |
| Views | BillDet, BillSummary, RoomOccDet, View_Booking, ViewBooking, ViewLedger, ViewLedgerLog, ViewSubgroup, Party_List, SunTransaction |

---

## EVIDENCE LEVELS

| Level | Meaning |
|---|---|
| [VERIFIED-VB6] | Confirmed from decompiled VB6 code |
| [VERIFIED-SQL] | Confirmed from live database catalog |
| [VERIFIED-UI] | Confirmed from menu/screen inventory |
| [VERIFIED-CONFIG] | Confirmed from file listing/INI config |
| [INFERRED] | Deduced from naming convention + context |
| [UNKNOWN] | No evidence found |
