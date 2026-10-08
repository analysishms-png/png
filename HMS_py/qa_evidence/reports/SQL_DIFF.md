# SQL 42S22 Diff — by table (sweep failures vs live schema)

Failing captions with 42S22 column errors: **42**
Tables implicated: **15**

## `GuestFolio`
- live columns: `DocId`, `FolioNo`, `Vtype`, `Vdate`, `Site_Code`, `Vprefix`, `GuestProf`, `Name`, `Add1`, `Add2`, `City`, `NoDays`, `SplitFolio`, `Remarks`, `Authorisation`, `Company`, `PurVisit`, `Nationality`, `ArrFrom`, `Destination`, `TravelMode`, `TclFac`, `Remark`, `RODisc`, `RSDisc`, `BookingDocId`, `U_Name`, `U_EntDt`, `U_AE`, `GroupCode`, `BussSource`, `MarketSeg`, `DepDate`, `TravelAgent`, `MFolioNo`, `Comp`, `MFolioNoDocid`, `LogSite_Code`, `RefNo`, `BookingSno`, `MyRate`, `DoorLock_Card_SN`, `RefBookNo`
- missing columns: 7
  - **`RoomRevenue`** — _no close match — check VB6 source_
    - 4 report(s): `Daily Report-II`→`NightAuditReportI`, `Monthly Return`→`MonthlyStatisticalReturn`, `Monthly Statistical Return`→`MonthlyStatisticalReturn`, `Revenue Analysis`→`RevAnalysis`
  - **`ChkInDate`** — _no close match — check VB6 source_
    - 3 report(s): `AMR Morning Report`→`AMRMorningReport`, `Monthly Return`→`MonthlyStatisticalReturn`, `Monthly Statistical Return`→`MonthlyStatisticalReturn`
  - **`PlanCode`** — _no close match — check VB6 source_
    - 2 report(s): `Plan Report`→`PlanReport`, `Room Wise Plan Detail`→`PlanReport`
  - **`Address`** — _no close match — check VB6 source_
    - 1 report(s): `Customer Detail`→`CustomerDetail`
  - **`Phone`** — _no close match — check VB6 source_
    - 1 report(s): `Customer Detail`→`CustomerDetail`
  - **`FNBRevenue`** — _no close match — check VB6 source_
    - 1 report(s): `Daily Report-II`→`NightAuditReportI`
  - **`OtherRevenue`** — _no close match — check VB6 source_
    - 1 report(s): `Revenue Analysis`→`RevAnalysis`

## `Sale1`
- live columns: `DocId`, `Vtype`, `VNo`, `Vtime`, `Site_Code`, `Vprefix`, `Vdate`, `RestCode`, `RoomCat`, `RoomType`, `RoomNo`, `FolioNo`, `Party`, `Total`, `DiscPer`, `DiscAmt`, `NonTaxable`, `Taxable`, `Tax`, `ServiceCharge`, `AddAmt`, `DedAmt`, `RoundOff`, `NetAmt`, `Remark`, `Waiter`, `FrBookDate`, `FrBookTime`, `MenuSpl1`, `MenuSpl2`, `MenuSpl3`, `MenuSpl4`, `FuncName`, `HouseKeep`, `FrontOff`, `Engg`, `Security`, `Chef`, `Board`, `KOTNo`, `TokenNo`, `ExpAtt`, `GuarAtt`, `CoverRate`, `U_Name`, `U_EntDt`, `U_AE`, `ToBookDate`, `ToBookTime`, `HallRent`, `TotalPerCover`, `Amount`, `Advance`, `RecNo`, `RecDate`, `CrCardNo`, `CrCardHolder`, `BookDocId`, `DelFlag`, `PRINTED`, `LogSite_Code`, `DeliveredYN`, `PhoneNo`, `CustName`, `Addr1`, `Addr2`, `CashRecd`, `BookNo`, `SeqNo`, `CardNo`, `ServiceTax`, `FolionoDocid`, `AU_Name`, `AU_EntDt`, `Redemption`, `DiscRemark`, `CGST`, `SGST`, `IGST`, `EditRemark`
- missing columns: 4
  - **`Covers`** — _no close match — check VB6 source_
    - 3 report(s): `Cover Analysis`→`CoverAnalysis`, `Cover Analysis Report`→`CoverAnalysis`, `Sal Reg Per Cover`→`SalRegPerCover`
  - **`Discount`** — _no close match — check VB6 source_
    - 3 report(s): `Discount Party Wise Register`→`DiscountPartyWiseReg`, `Discount Register`→`DiscountReg`, `Discount Summary`→`DiscountSumm`
  - **`Status`** — _no close match — check VB6 source_
    - 2 report(s): `Del/Unset Bill`→`DelBillUnsetBill`, `Deleted Unsettled Bill`→`DelBillUnsetBill`
  - **`TableNo`** — closest: `Taxable`
    - 2 report(s): `Table Wise Sale`→`TableWiseSale`, `Table wise Sale`→`TableWiseSale`

## `Sale2`
- live columns: `DocId`, `Sno`, `SNo1`, `Vtype`, `VNo`, `Site_Code`, `Vprefix`, `Vdate`, `RestCode`, `TaxCode`, `BaseValue`, `TaxPer`, `TaxAmt`, `U_Name`, `U_EntDt`, `U_AE`, `DelFlag`, `LogSite_Code`, `SeqNo`
- missing columns: 3
  - **`Item`** — _no close match — check VB6 source_
    - 6 report(s): `Group Wise Sale`→`ItemWiseGroupWiseSaleReport`, `Item Sale`→`ItemSale`, `Item Wise Group Wise Sale Report`→`ItemWiseGroupWiseSaleReport`, `Item Wise Sale`→`ItemWiseSale`, `Item Wise Sale (Hall)`→`ItemWiseSaleHall`, `Item Wise Sales Report`→`ItemWiseSale`
  - **`ItemGroup`** — _no close match — check VB6 source_
    - 2 report(s): `Group Wise Sale`→`ItemWiseGroupWiseSaleReport`, `Item Wise Group Wise Sale Report`→`ItemWiseGroupWiseSaleReport`
  - **`Party`** — _no close match — check VB6 source_
    - 1 report(s): `Member Tax Report`→`MemTaxReport`

## `HallSale1`
- live columns: `DocId`, `Vtype`, `VNo`, `VTime`, `Site_Code`, `Vprefix`, `Vdate`, `RestCode`, `Party`, `Total`, `DiscPer`, `DiscAmt`, `NonTaxable`, `Taxable`, `Tax`, `ServiceCharge`, `AddAmt`, `DedAmt`, `RoundOff`, `NetAmt`, `FrBookDate`, `FrBookTime`, `U_Name`, `U_EntDt`, `U_AE`, `ToBookDate`, `ToBookTime`, `HallRent`, `Remarks`, `NoOfPax`, `RatePerPax`, `TotalPerCover`, `Amount`, `Advance`, `RectNo`, `rectDate`, `CrCardNo`, `CrCardHolder`, `BookDocId`, `DelFlag`, `Narration`, `LogSite_Code`, `Narration1`, `CGST`, `SGST`, `IGST`
- missing columns: 2
  - **`HallName`** — _no close match — check VB6 source_
    - 1 report(s): `Daily Function Sheet`→`DailyFuncSheet`
  - **`FunctionType`** — _no close match — check VB6 source_
    - 1 report(s): `Daily Function Sheet`→`DailyFuncSheet`

## `HallSale2`
- live columns: `DocId`, `Sno`, `SNo1`, `Vtype`, `VNo`, `Site_Code`, `Vprefix`, `Vdate`, `RestCode`, `TaxCode`, `BaseValue`, `TaxPer`, `TaxAmt`, `U_Name`, `U_EntDt`, `U_AE`, `DelFlag`, `LogSite_Code`
- missing columns: 2
  - **`HallName`** — _no close match — check VB6 source_
    - 1 report(s): `Function Wise Item Detail`→`FunctionWiseItemDetail`
  - **`Item`** — _no close match — check VB6 source_
    - 1 report(s): `Function Wise Item Detail`→`FunctionWiseItemDetail`

## `KOT`
- live columns: `DocId`, `Sno`, `Vtype`, `Vtime`, `VNo`, `Site_Code`, `Vprefix`, `Vdate`, `RestCode`, `RoomCat`, `RoomType`, `RoomNo`, `Item`, `Qty`, `Rate`, `Amount`, `VoidYN`, `Waiter`, `Pending`, `KOTType`, `U_Name`, `U_EntDt`, `U_AE`, `U_Name1`, `U_EntDt1`, `U_AE1`, `DelFlag`, `NCKOT`, `ContraDocId`, `ContraSNo`, `Reasons`, `Remarks`, `LogSite_Code`, `NCTYPE`, `FreeSno`, `Printed`, `Description`, `SchemeCode`, `Party`, `ItemRestCode`, `SeqNo`, `GuarAtt`, `TokenNo`, `PrintFlag`
- missing columns: 2
  - **`KOTNo`** — _no close match — check VB6 source_
    - 1 report(s): `Pending KOT`→`PendingKot`
  - **`TableNo`** — _no close match — check VB6 source_
    - 1 report(s): `Pending KOT`→`PendingKot`

## `ItemMast`
- live columns: `Code`, `Name`, `Unit`, `Type`, `ItemGroup`, `RestCode`, `DirectSale`, `PurchRate`, `MinStock`, `MaxStock`, `ReStock`, `SaleRate`, `RoomRate`, `DiscApp`, `RateEdit`, `LPurRate`, `LPurDate`, `Site_Code`, `U_Name`, `U_EntDt`, `U_AE`, `ItemCatCode`, `DispCode`, `Kitchen`, `DirectYN`, `ConvRatio`, `IssueUnit`, `SChrgApp`, `GravyItem`, `ConsumptionItem`, `Category`, `Specification`, `RateIncTax`, `LogSite_Code`, `ActiveYN`, `NType`, `FinItem`, `ItemType`, `BarCode`, `CommodityCode`, `LabelName`, `LabelQty`, `LabelRemark1`, `LabelRemark2`, `LabelRemark3`, `LabelRemark4`, `LabelRemark5`, `PicPath`, `Status`, `MRP`
- missing columns: 2
  - **`ItemName`** — _no close match — check VB6 source_
    - 1 report(s): `PLU File`→`PLUFile`
  - **`Rate`** — _no close match — check VB6 source_
    - 1 report(s): `PLU File`→`PLUFile`

## `RevMast`
- live columns: `Code`, `Name`, `ShortName`, `ACCode`, `TaxStru`, `Cost`, `SaleRate`, `Site_Code`, `SysYN`, `U_Name`, `U_EntDt`, `U_AE`, `Type`, `AppMode`, `GroupSrNo`, `FlagAMR`, `FlagType`, `DeskCode`, `PAYTYPE`, `FieldType`, `RoundOff`, `BankCommAC`, `BankCommPer`, `ACPosting`, `Sundry`, `LogSite_Code`, `SeqNo`, `Nature`, `SplitSeqNo`, `Active`, `TaxInc`, `PayableAc`, `UnregisteredAc`, `HSNCode`
- missing columns: 2
  - **`SundryName`** — closest: `Sundry`
    - 1 report(s): `Tax Master List`→`tax_master_list`
  - **`ActiveYN`** — closest: `Active`
    - 1 report(s): `Tax Master List`→`tax_master_list`

## `RoomCat`
- live columns: `Type`, `Code`, `Name`, `ShortName`, `RevCode`, `MaxPerson`, `RetChg`, `CancelChg`, `MinAdv`, `NoRooms`, `MultPer`, `InclCount`, `Site_Code`, `U_Name`, `U_EntDt`, `U_AE`, `OLDCODE`, `LogSite_Code`, `ActiveYN`, `OverBooking`, `MapCode`
- missing columns: 1
  - **`ActiveYN`** — ≈ `ActiveYN` (same name ignoring case/underscore)
    - 1 report(s): `23 Day Room Type Availability Forecast`→`RoomTypeAvailForecast23`

## `Enviro`
- live columns: `Cash_Ac`, `DiscountAc`, `RoundOffAc`, `CommAC`, `Editopen`, `PF_LIMIT`, `PF_EMPLOYEE`, `PF_EMPLOYER`, `ESI_LIMIT`, `esi_employee`, `SALARY_AC`, `AttendType`, `Loan_AC`, `AdvanceAc`, `RoundOff`, `Checkout`, `PurchaseAdd1`, `PurchaseDed1`, `PurchaseAdd2`, `PurchaseDed2`, `Variation`, `CheckoutVar`, `HotelLogo`, `RoomChrgDueAc`, `RoomTaxDueAc`, `ReservationPrinting`, `ArrDateTimeEdit`, `DefCompGroup`, `Rate1`, `Rate2`, `Rate3`, `Rate4`, `Rate5`, `LessFreightAc`, `WagesAc`, `CashPayType`, `OutletDiscAc`, `OutletRoundAc`, `CommissionAc`, `RoomPayType`, `calcMethod`, `NCUR`, `SiteCode`, `Bill_Footer`, `Bill_Header`, `CancellationAC`, `HallRoundOff`, `HallDiscAC`, `CashPurchAc`, `Postingtype`, `OutDoorCatering`, `SundryPassword`, `CatalogLimit`, `OutdoorSaleAC`, `IndoorSaleAC`, `OutdoorPartyAC`, `IndoorPartyAC`, `KOTPrinting`, `TaxSummary`, `TOKENPrint`, `DummyTravelAc`, `menuX`, `menuY`, `menuDISP`, `LogSite_Code`, `BookingPartyAc`, `RoomChrgPostingType`, `PlanMastType`, `PostComplimentaryBills`, `PostNilLT`, `AllowRoomSettlement`, `SplitYN`, `PlanCalc`, `AllowBillOnHoldSettlement`, `MultiBillGeneration`, `SmartPurchaseOrder`, `MemberShipModule`, `FomBillCopies`, `SMSMessaging`, `MobileNo`, `SMSOption`, `MobileSet`, `SMSMessage`, `AdvanceRRoomRent`, `PrintRcpt`, `RcptPrinting`, `BillAmendMode`, `AmendRevenue`, `IncCashPurchInFOCC`, `RoomRentBefChkOut`, `RoomRentChkOutPost`, `POSBillAtNightAudit`, `NoShowAtNightAudit`, `DisplayPort`, `DisplayMode`, `FreeItemInKOT`, `POSSaleBillModification`, `VariationBefore`, `BookingSlipFooter1`, `BookingSlipFooter2`, `CashCardDebitAc`, `CashCardCreditAc`, `CashCardSecurityAc`, `OrderBookingPrintType`, `BillPrintingSummerised`, `PurchaseGodown`, `RptCashierSettlementAllUser`, `GRCMandatory`, `NCKOTPercentage`, `KOTHeader1`, `KOTHeader2`, `KOTHeader3`, `KOTHeader4`, `GAppCompYear`, `GMonthConsidered`, `GWorkingDaysInAMonth`, `GDaysSalary`, `POSSaleBillEditLog`, `ImportOptionInPurchase`, `ReqCompWise`, `AcFieldAlterable`, `CreditCardInfoMandatory`, `ExpMfdDateInMR`, `ExciseInvoiceTaxStru`, `AddModifyEntryInBackDate`, `KOTAtNightAudit`, `ResInstruction1`, `ResInstruction2`, `ResInstruction3`, `ResInstruction4`, `ResInstruction5`, `ResInstruction6`, `ResInstruction7`, `ResInstruction8`, `ResInstruction9`, `ResInstruction10`, `ResInstruction11`, `ResInstruction12`, `FPInstruction1`, `FPInstruction2`, `FPInstruction3`, `FPInstruction4`, `FPInstruction5`, `FPInstruction6`, `FPInstruction7`, `FPInstruction8`, `FPInstruction9`, `FPInstruction10`, `FPInstruction11`, `FPInstruction12`, `RateEditableInPO`, `RateEditableInStockIssue`, `RoomRateEditable`, `RoomIncTaxEditable`, `RoomServiceChargeEditable`, `PostRoomDiscSeparately`, `BarCodeFeatureInPurchase`, `SMSFeatureYN`, `ESIBasic`, `ESIDA`, `ESIHRA`, `ESIConvey`, `ESIOther`, `ESILTA`, `KitchenStockReport`, `ItemRateInMRBasedOn`, `ItemRateInPurchaseBillBasedOn`, `PurchaseBillPrinting`, `ReprintingOnSaleBillYN`, `DTCPETakeEffectHeadToSite`, `PostPOSDiscSeparately`, `HideSettledBillsOnSaleBillYN`, `ResetTokenAtNightAudit`, `POSSaleRevenueBifercation`, `KOTPrintEdited`, `RoomCheckOutClearanceYN`, `POSBillCalcType`, `PurchaseTaxVAT`, `POSPrintingDelay`, `ImprestAmount`, `PlanTariffNarration`, `GuestChargesDeleteLog`, `SaleTaxVAT`, `KOTOutletSelection`, `PlanSelectionBasedOn`, `SmartCardItem`, `HTWCurDateEdit`, `MobileInfoMandatory`, `CoversMandatory`, `MobileNoMandatory`, `RRIncTaxDefault`, `RRSerChrgDefault`, `AutoSplitYN`, `ShowTitleBar`, `ShowMenuBar`, `ShowSubMenuBar`, `ShowShortCutsBar`, `ServiceTaxOnServiceChargeYN`, `SeperateReservationLetterAsPerStatusYN`, `NewTarrifForOldGuest`, `ReservationExpandOnSaveYN`, `BlockInvalidTarrifIncTaxYN`, `RoomCheckInClearanceYN`, `RoomRateAsPerRoomMaster`, `IncReservationInBlankGRC`, `StockRecGodown`, `AutoPrintKOTYN`, `AutoFillItemInKitchenClosingYN`, `FOMBillReprintAutoRefresh`, `NegativeStockAllowYN`, `BanquetKitchen`, `ShowAllAcInPurcahseCategoryYN`, `CashCardApplYN`, `UserWiseShowOutletYN`, `PANNOMandatoryYN`, `SMARTCARDRECIEPTPrintingDW`, `U_AE_FOMBillSetE`, `DisplayRackRow`, `DisplayRackCol`, `DisplayRackFontSize`, `PrintSeperateItemInPOSBill`, `DateEditableOnRequisitionYN`
- missing columns: 1
  - **`LogSite_Code`** — ≈ `LogSite_Code` (same name ignoring case/underscore)
    - 3 report(s): `Company Detail`→`company_detail`, `Company Master List`→`company_list`, `User Master List`→`user_master_list`

## `RoomOcc`
- live columns: `DocId`, `SNo`, `FolioNo`, `Vtype`, `Site_Code`, `Vprefix`, `GuestProf`, `RoomCat`, `RoomType`, `RoomNo`, `RateCode`, `RoomRate`, `ChkInDate`, `ChkInTime`, `Adult`, `Children`, `DepDate`, `DepTime`, `ChkOutDate`, `ChkOutTime`, `Type`, `U_Name`, `U_EntDt`, `U_AE`, `UserchkoutDate`, `ChkoutUser`, `NewRoomNo`, `Reason`, `PlanCode`, `PlanAmt`, `IncInRate`, `LogSite_Code`, `PlanDisc`, `PlanDiscAmt`, `PlanDiscAppon`, `RRTaxInc`, `RRServiceChrg`, `ChngDate`, `ExtraBed`, `RoomTarrif`, `RoomTaxStru`, `RackRate`
- missing columns: 1
  - **`Remarks`** — _no close match — check VB6 source_
    - 1 report(s): `House Keeping Report`→`HouseKeeping`

## `RoomFeature`
- live columns: `Code`, `Name`, `Site_Code`, `U_Name`, `U_EntDt`, `U_AE`, `LogSite_Code`
- missing columns: 1
  - **`SysYN`** — _no close match — check VB6 source_
    - 1 report(s): `Room Feature Master List`→`room_feature_list`

## `FOMBillDetails`
- live columns: `Bill_No`, `Bill_Date`, `FolioNo`, `Guestname`, `BillAmt`, `SettMode`, `SettAmt`, `Status`, `U_Name`, `SiteCode`, `U_EntDt`, `U_AE`, `FolioNoDocid`, `LogSite_Code`
- missing columns: 1
  - **`Party`** — _no close match — check VB6 source_
    - 2 report(s): `Settlement  Report`→`SettleRepHall`, `Settlement Report (Hall)`→`SettleRepHall`

## `columns`
- live columns: 
- missing columns: 1
  - **`name`** — 
    - 1 report(s): `System Parameters`→`system_parameters`

## `sys.columns`
- live columns: 
- missing columns: 1
  - **`value`** — 
    - 1 report(s): `System Parameters`→`system_parameters`

## Informational: `report["cols"]` vs live schema (often display aliases — verify before changing SQL)

- `AMRMorningReport` (first seen at `AMR Morning Report`) table `GuestFolio`: `Date`, `Arrivals`, `Departures`, `InHouse`
- `CoverAnalysis` (first seen at `Cover Analysis`) table `Sale1`: `Date`, `Covers`, `PerCover`
- `CustomerDetail` (first seen at `Customer Detail`) table `GuestFolio`: `Address`, `Phone`
- `DailyFuncSheet` (first seen at `Daily Function Sheet`) table `HallSale1`: `Date`, `Hall`, `Function`, `Guests`
- `DelBillUnsetBill` (first seen at `Del/Unset Bill`) table `Sale1`: `Outlet`, `Status`
- `DiscountPartyWiseReg` (first seen at `Discount Party Wise Register`) table `Sale1`: `Bills`
- `DiscountReg` (first seen at `Discount Register`) table `Sale1`: `User`
- `DiscountSumm` (first seen at `Discount Summary`) table `Sale1`: `Bills`
- `FunctionWiseItemDetail` (first seen at `Function Wise Item Detail`) table `HallSale2`: `Hall`, `Item`, `Qty`, `Amount`
- `HouseKeeping` (first seen at `House Keeping Report`) table `RoomOcc`: `Status`, `Remarks`
- `ItemSale` (first seen at `Item Sale`) table `Sale2`: `Item`, `Qty`, `Amount`
- `ItemWiseGroupWiseSaleReport` (first seen at `Group Wise Sale`) table `Sale2`: `ItemGroup`, `Item`, `Qty`, `Amount`
- `ItemWiseSale` (first seen at `Item Wise Sale`) table `Sale2`: `Item`, `Qty`, `Amount`
- `ItemWiseSaleHall` (first seen at `Item Wise Sale (Hall)`) table `Sale2`: `Item`, `Qty`, `Amount`
- `MemTaxReport` (first seen at `Member Tax Report`) table `Sale2`: `Party`, `Taxable`
- `MonthlyStatisticalReturn` (first seen at `Monthly Return`) table `GuestFolio`: `Month`, `Arrivals`, `Departures`, `RoomRevenue`, `TotalRevenue`
- `NightAuditReportI` (first seen at `Daily Report-II`) table `GuestFolio`: `Date`, `RoomRevenue`, `FNBRevenue`, `OtherRevenue`
- `PLUFile` (first seen at `PLU File`) table `ItemMast`: `Item`, `Rate`
- `PendingKot` (first seen at `Pending KOT`) table `KOT`: `KOTNo`, `Table`
- `PlanReport` (first seen at `Plan Report`) table `GuestFolio`: `PlanCode`, `Folios`, `Nights`
- `RevAnalysis` (first seen at `Revenue Analysis`) table `GuestFolio`: `Date`, `RoomRevenue`, `OtherRevenue`, `TotalRevenue`
- `SalRegPerCover` (first seen at `Sal Reg Per Cover`) table `Sale1`: `Outlet`, `Covers`, `PerCover`
- `SettleRepHall` (first seen at `Settlement  Report`) table `FOMBillDetails`: `Party`
- `TableWiseSale` (first seen at `Table wise Sale`) table `Sale1`: `Table`, `Bills`
- `company_detail` (first seen at `Company Detail`) table `Company`: `CompanyName`, `ShortName`, `Address3`, `PAN`, `CST`, `LST`, `ContactPerson`, `ContactTitle`, `CompanyType`, `Active`
- `company_list` (first seen at `Company Master List`) table `Company`: `CompanyName`, `ShortName`, `Active`
- `room_feature_list` (first seen at `Room Feature Master List`) table `RoomFeature`: `SystemDefined`
- `tax_master_list` (first seen at `Tax Master List`) table `RevMast`: `TaxName`, `SundryName`, `LedgerAC`, `SystemDefined`
- `user_master_list` (first seen at `User Master List`) table `UserMast`: `FullName`, `Active`, `AllowDateChange`

## ERROR_BOX with no resolvable report SQL

- **Call Control Master** → key=`None` missing Name
- **Current Balance Updation** → key=`None` missing CurrBal
- **PLU File (W.Scale)** → key=`None` missing ItemName, Rate
