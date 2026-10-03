# FORM_MIGRATION_LEDGER

Auto-generated from `VB6_VS_PYTHON_FILE_BY_FILE.txt` Section A by
`_gen_form_ledger.py` — DO NOT hand-edit rows; regenerate instead.

Ledger columns (spec §19): status + VB6 form path/caption + Python UI
target + note. Per-form controls/events/SQL/validation detail is
tracked during that form's spec/plan cycle and referenced in the note
or MIGRATION_MASTER_BUG_REGISTER.md.

**Generated:** 2026-10-03 | **VB6 forms:** 321

## Counts

| Status | Count |
|---|---:|
| MISSING | 1 |
| COMING_SOON | 1 |
| REGISTRY | 177 |
| LIKELY | 48 |
| PY_FILE | 77 |
| SHELL | 2 |
| REPORT_VIEWER | 15 |

Status meaning: `MISSING` = no Python target yet; `COMING_SOON` =
registry stub; `REGISTRY`/`REGISTRY_ONLY` = wired to a (possibly
shared) screen; `LIKELY` = fuzzy match — verify manually; `PY_FILE` =
dedicated Python UI file; `SHELL` = handled by ui/shell.py;
`REPORT_VIEWER` = routed to core/reports.py.

## Ledger

| Status | VB6 .frm | VB6 Form | Caption | Python target | Note |
|---|---|---|---|---|---|
| MISSING | FrmDataRecieving.frm | FrmDataRecieving | Data Recieving Window . . . | - | prior=NOT-IN-REG |
| COMING_SOON | RsPaymentReceice.frm | RsPaymentReceice | Payment Receive Entry (POS) | ui/shell.py | registry -> _coming_soon() |
| REGISTRY | BanqAvailability.frm | BanqAvailability | Venue Availability | ui/shell.py | registry wired (shared screen) |
| REGISTRY | CateringBooking.frm | CateringBooking | Catalog Selection | ui/shell.py | registry wired (shared screen) |
| REGISTRY | DepOpStk.frm | DepOpStk | Location wise Opening Stock Entr | ui/shell.py | registry wired (shared screen) |
| REGISTRY | EmptyInbox.frm | EmptyInbox | Inbox | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FaAdjustDel.frm | FaAdjustDel | Adjustment Delete | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FaCityMast.frm | FaCityMast | City Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FaCountryMast.frm | FaCountryMast | Country Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FaCurrBalUpdate.frm | FaCurrBalUpdate | Current Balance Updation | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FaGrEnt.frm | FaGrEnt | Group Accounts Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FaMagic.frm | FaMagic | Magic | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FaNarrMast.frm | FaNarrMast | Narration Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FaStateMast.frm | FaStateMast | State Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FaSubGroup.frm | FaSubGroup | Ledger Accounts Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FaTDSCat.frm | FaTDSCat | T.D.S.Category Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FaTaxVoucher.frm | FaTaxVoucher | Expense Voucher | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FaVrEnt.frm | FaVrEnt | Voucher Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FaVtype.frm | FaVtype | Define Voucher Type | ui/shell.py | fuzzy -> Voucher Type (score 33, tok 7) |
| REGISTRY | FdCheckOut.frm | FdCheckOut | Room Check Out | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FdGrpCheckOut.frm | FdGrpCheckOut | Room Check Out Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FdGrpdetCheckOut.frm | FdGrpdetCheckOut | Room Check Out Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FdLookUpRoom.frm | FdLookUpRoom | Look Up Room | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FdLookUpRoomNo.frm | FdLookUpRoomNo | Display Rack | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FdReSetlement.frm | FdReSetlement | Post Charges/Payment | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FdRevCheckOut.frm | FdRevCheckOut | Check Out Cancel | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FdRoomDisplay.frm | FdRoomDisplay | Room View | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmBookingInquiry.frm | FrmBookingInquiry | Booking Inquiry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmCalender.frm | FrmCalender | Calender | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmChargeMast.frm | FrmChargeMast | Charge Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmClaimEntry.frm | FrmClaimEntry | Claim Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmComplaintClearing.frm | FrmComplaintClearing | Complaint Clearance | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmComplaintMast.frm | FrmComplaintMast | Complain Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmConsumMast.frm | FrmConsumMast | Consumption Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmControlPanel.frm | FrmControlPanel | Control Panel | ui/shell.py | fuzzy -> Night Audit Control Panel (score 22, tok 7) |
| REGISTRY | FrmDeliveryBoyMast.frm | FrmDeliveryBoyMast | Delivery Boy Master | ui/shell.py | fuzzy -> Delivery Boy (score 22, tok 8) |
| REGISTRY | FrmDenomination.frm | FrmDenomination | Denomination Detail | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmExpense.frm | FrmExpense | Misc.Payment / Received Entry | ui/shell.py | fuzzy -> Payment Receive Entry (score 22, tok 8) |
| REGISTRY | FrmForExRec.frm | FrmForExRec | Forex Receive Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmGuestWakeUp.frm | FrmGuestWakeUp | Register Wake up Calls | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmHallItemCatMast.frm | FrmHallItemCatMast | Category and Charge Master | ui/shell.py | fuzzy -> Item Category (score 22, tok 8) |
| REGISTRY | FrmHouGuestMsg.frm | FrmHouGuestMsg | In House Guest Message | ui/shell.py | fuzzy -> Inhouse Guest Folio (score 22, tok 7) |
| REGISTRY | FrmHouseStatus.frm | FrmHouseStatus | Property Status | ui/shell.py | fuzzy -> Reservation Status In-House (score 22, tok 6) |
| REGISTRY | FrmImage.frm | FrmImage | Image | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmInc.frm | FrmInc | Inconsistency Check | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmItemCatMast.frm | FrmItemCatMast | Category/Charge Master | ui/shell.py | fuzzy -> Item Category (score 22, tok 14) |
| REGISTRY | FrmItemCatRaw.frm | FrmItemCatRaw | Category/Charge Master | ui/shell.py | fuzzy -> Item Category (score 22, tok 14) |
| REGISTRY | FrmItemGroupMastRaw.frm | FrmItemGroupMastRaw | Item Group | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmJobScheduler.frm | FrmJobScheduler | Task Scheduler | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmLocationFacilities.frm | FrmLocationFacilities | Location Facilities | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmLocationMast.frm | FrmLocationMast | Location Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmLostFound.frm | FrmLostFound | Lost && Found | ui/shell.py | fuzzy -> Lost / Found Entry (score 22, tok 5) |
| REGISTRY | FrmMenuRate.frm | FrmMenuRate | Item Rate Entry | ui/shell.py | fuzzy -> Menu Item Rate (score 33, tok 4) |
| REGISTRY | FrmMeterReading.frm | FrmMeterReading | Meter Reading | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmNCType.frm | FrmNCType | NC Type | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmPartyLocations.frm | FrmPartyLocations | Party Locations | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmPlanPackMast.frm | FrmPlanPackMast | Plan Defination Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmReceivePayment.frm | FrmReceivePayment | Misc.Payment / Received Entry | ui/shell.py | fuzzy -> Payment Receive Entry (score 33, tok 8) |
| REGISTRY | FrmReservationStatus.frm | FrmReservationStatus | Reservation Status | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmRoomFeatureMast.frm | FrmRoomFeatureMast | Room Features Master | ui/shell.py | fuzzy -> Room Features (score 33, tok 8) |
| REGISTRY | FrmSMSEnviro.frm | FrmSMSEnviro | Parameter Setting | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmSMSMultiType.frm | FrmSMSMultiType | Common SMS | ui/shell.py | fuzzy -> Multiple SMS Type (score 22, tok 4) |
| REGISTRY | FrmSerialiseVr.frm | FrmSerialiseVr | Voucher Serialisation | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmSmsCenterSettings.frm | FrmSmsCenterSettings | SMS Center Settings | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmStockTransfer.frm | FrmStockTransfer | Stock Transfer | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmTaxMast.frm | FrmTaxMast | Tax Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmTaxStruMast.frm | FrmTaxStruMast | Tax Structure Master | ui/shell.py | fuzzy -> Tax Structure (score 33, tok 9) |
| REGISTRY | FrmUserPaymentCollection.frm | FrmUserPaymentCollection | User Payment Receive Entry | ui/shell.py | fuzzy -> User Collection (score 22, tok 10) |
| REGISTRY | FrmVenueFeat.frm | FrmVenueFeat | VenueFeature | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmVenueMast.frm | FrmVenueMast | Venue Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | FrmWaiterMast.frm | FrmWaiterMast | Server Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | GroupProfile.frm | GroupProfile | Group Profile | ui/shell.py | registry wired (shared screen) |
| REGISTRY | GuestProfile.frm | GuestProfile | Guest Profile | ui/shell.py | registry wired (shared screen) |
| REGISTRY | HHouseKeeping.frm | HHouseKeeping | House Keeping Screen | ui/shell.py | registry wired (shared screen) |
| REGISTRY | HKHouseOpStk.frm | HKHouseOpStk | House Keeping Op. Stock Entry | ui/shell.py | fuzzy -> House Keeping Op.Stock Entry (score 44, tok 7) |
| REGISTRY | HKRoomBlock.frm | HKRoomBlock | Room Block | ui/shell.py | registry wired (shared screen) |
| REGISTRY | HRoomCheckOutClearance.frm | HRoomCheckOutClearance | Check Out Clearance Screen | ui/shell.py | registry wired (shared screen) |
| REGISTRY | HallBillEstimate.frm | HallBillEstimate | Banquet Estimate Bill | ui/shell.py | fuzzy -> Banquet Estimate Billing (score 33, tok 8) |
| REGISTRY | HallChefPreCosting.frm | HallChefPreCosting | Chef Pre-Costing | ui/shell.py | registry wired (shared screen) |
| REGISTRY | HallSundry.frm | HallSundry | Outlet Bill Sundry Setting | ui/shell.py | registry wired (shared screen) |
| REGISTRY | InHouseGuestFolio.frm | InHouseGuestFolio | Inhouse Guest Folio | ui/shell.py | registry wired (shared screen) |
| REGISTRY | MemAssistant.frm | MemAssistant | Member Assistant | ui/shell.py | fuzzy -> Member Assistant (score 22, tok 9) |
| REGISTRY | MemAutoSettleCardBalance.frm | MemAutoSettleCardBalance | Auto Settle Card Balance | ui/shell.py | registry wired (shared screen) |
| REGISTRY | MemBillPrintingModule.frm | MemBillPrintingModule | Member Bill Printing | ui/shell.py | registry wired (shared screen) |
| REGISTRY | MemCatMast.frm | MemCatMast | Member Category Master | ui/shell.py | fuzzy -> Member Select Category (score 22, tok 8) |
| REGISTRY | MemFacilityBilling.frm | MemFacilityBilling | Member Facility Billing | ui/shell.py | registry wired (shared screen) |
| REGISTRY | MemFacilityEntry.frm | MemFacilityEntry | Member Used Facility Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | MemPaymentReceive.frm | MemPaymentReceive | Payment Receive Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | MemRenewalEntry.frm | MemRenewalEntry | Member Renewal | ui/shell.py | fuzzy -> Member Renewal Entry (score 22, tok 7) |
| REGISTRY | MemSelectCategory.frm | MemSelectCategory | Select Member Category | ui/shell.py | fuzzy -> Member Select Category (score 33, tok 8) |
| REGISTRY | MemTagadaLetter.frm | MemTagadaLetter | Payment Due Letter Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | MemVisitEntry.frm | MemVisitEntry | Member Visit Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | MemberShipRevenueMast.frm | MemberShipRevenueMast | MemberShip Revenue Master | ui/shell.py | fuzzy -> Member Age Wise Revenue (score 22, tok 7) |
| REGISTRY | MembershipMast.frm | MembershipMast | Member Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | NewHappyHours.frm | NewHappyHours | Happy Hours [ Free Items ] | ui/shell.py | registry wired (shared screen) |
| REGISTRY | OutLetSundry.frm | OutLetSundry | Outlet Bill Sundry Setting | ui/shell.py | registry wired (shared screen) |
| REGISTRY | PIndent.frm | PIndent | Indent | ui/shell.py | registry wired (shared screen) |
| REGISTRY | POSAdvanceDepDialog.frm | POSAdvanceDepDialog | Order Booking Advance | ui/shell.py | registry wired (shared screen) |
| REGISTRY | PrCategoryMast.frm | PrCategoryMast | Category Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | PrDesigMast.frm | PrDesigMast | Designation Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | PrEmployee.frm | PrEmployee | Employee Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | PrLeavench.frm | PrLeavench | Leave Encashment | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RSSaleBill.frm | RSSaleBill | Sale Bill Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RSSaleBill1.frm | RSSaleBill1 | Sale Bill Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RSTouchScreenSaleBill.frm | RSTouchScreenSaleBill | Sale Bill Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RewardPointParam1.frm | RewardPointParam1 | Reward Points Parameter I | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RrLookUpGuest.frm | RrLookUpGuest | New Reservation By Guest Reserva | ui/shell.py | fuzzy -> Look Up Reservation By Guest Name (score 33, tok 11) |
| REGISTRY | RrRoomReservation.frm | RrRoomReservation | Reservation/Cancellation | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RsAssignDelivery.frm | RsAssignDelivery | Member Category Wise Revenue | ui/shell.py | fuzzy -> Category wise Revenue (score 33, tok 8) |
| REGISTRY | RsBookingEntryAdvance.frm | RsBookingEntryAdvance | Payment Entry | ui/shell.py | fuzzy -> Order Booking Advance (score 22, tok 7) |
| REGISTRY | RsGravyItemEntry.frm | RsGravyItemEntry | Gravy Item Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RsKOTTransfer.frm | RsKOTTransfer | KOT Transfer | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RsKitchenMaterial.frm | RsKitchenMaterial | Excise Invoice Cum Gate Pass | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RsKitchenStk.frm | RsKitchenStk | Stock Transfer | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RsPOSDisplay.frm | RsPOSDisplay | Display Table | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RsSaleBillSplit.frm | RsSaleBillSplit | Split Sale Bill | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RsStatusScreen.frm | RsStatusScreen | POS Status Screen | ui/shell.py | fuzzy -> POS Status (score 22, tok 6) |
| REGISTRY | RsStoreRecEntry.frm | RsStoreRecEntry | Finish Material Receive Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RsTableMast.frm | RsTableMast | Table Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RsTokenEntry.frm | RsTokenEntry | Token Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RsTouchDisplayTB.frm | RsTouchDisplayTB | Display Table | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RsTouchScreenKeyBoard.frm | RsTouchScreenKeyBoard | Touch Screen KeyBoard | ui/shell.py | registry wired (shared screen) |
| REGISTRY | RsTouchScreenTOKENEntry.frm | RsTouchScreenTOKENEntry | KOT Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | SchemeMast.frm | SchemeMast | Scheme Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | SundryMast.frm | SundryMast | Sundry Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | SundryVType.frm | SundryVType | Voucher Wise Sundry Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | TelCallControlMast.frm | TelCallControlMast | Call Control Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | TelExtensionMast.frm | TelExtensionMast | Extension Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | TravelAgencyPost.frm | TravelAgencyPost | Travel Agency Posting | ui/shell.py | registry wired (shared screen) |
| REGISTRY | fdAcPostChrg.frm | fdAcPostChrg | Night Audit Process | ui/shell.py | registry wired (shared screen) |
| REGISTRY | fdAmendEntry.frm | fdAmendEntry | Amend Stay | ui/shell.py | registry wired (shared screen) |
| REGISTRY | fdCheckIn.frm | fdCheckIn | Look Up Reservation By Guest Nam | ui/shell.py | registry wired (shared screen) |
| REGISTRY | fdDisplayFolio.frm | fdDisplayFolio | Guest Ledger | ui/shell.py | registry wired (shared screen) |
| REGISTRY | fdDisplayFolioSumm.frm | fdDisplayFolioSumm | Summerized Guest Ledger | ui/shell.py | registry wired (shared screen) |
| REGISTRY | fdPaymentCharge.frm | fdPaymentCharge | Post Charges & Payment | ui/shell.py | registry wired (shared screen) |
| REGISTRY | fdPostChrg.frm | fdPostChrg | Post Charges /Payments | ui/shell.py | registry wired (shared screen) |
| REGISTRY | fdPrintScreen.frm | fdPrintScreen | Guest Charges Summary | ui/shell.py | registry wired (shared screen) |
| REGISTRY | fdRoomChange.frm | fdRoomChange | Room Change | ui/shell.py | registry wired (shared screen) |
| REGISTRY | fdRoomOcc.frm | fdRoomOcc | Reservation Look Up Room Wise | ui/shell.py | registry wired (shared screen) |
| REGISTRY | fdWalkInEntry.frm | fdWalkInEntry | Walk In / Check In Entry | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmBlockMast.frm | frmBlockMast | Block Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmEnviro.frm | frmEnviro | Parameter Settings | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmFacilityBillAdv.frm | frmFacilityBillAdv | Facility Billing | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmFixedChargeMast.frm | frmFixedChargeMast | Fixed Charge Master | ui/shell.py | fuzzy -> Fixed Charge (score 22, tok 6) |
| REGISTRY | frmGuestComments.frm | frmGuestComments | Guest Comments | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmGuestInfo.frm | frmGuestInfo | Guest Information | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmGuestParamMast.frm | frmGuestParamMast | Guest Parameters Master | ui/shell.py | fuzzy -> Guest Parameters Setting (score 33, tok 10) |
| REGISTRY | frmMenuItemCopy.frm | frmMenuItemCopy | Menu Item Copy | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmMod_Print.frm | frmMod_Print | Printing Setup | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmMod_Print1.frm | frmMod_Print1 | Printing Setup | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmPrintModule.frm | frmPrintModule | Printing Parameters | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmPurEnviro.frm | frmPurEnviro | Purchase Parameter | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmReNightAudit.frm | frmReNightAudit | Reverse Night Audit | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmSeasonMast.frm | frmSeasonMast | Season Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmSessionMast.frm | frmSessionMast | Session Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmTallyExport.frm | frmTallyExport | Tally Export | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmUnitMast.frm | frmUnitMast | Unit Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmYearEnd.frm | frmYearEnd | Year End Updation | ui/shell.py | registry wired (shared screen) |
| REGISTRY | frmmessageKey.frm | frmmessageKey | Key Massage | ui/shell.py | registry wired (shared screen) |
| REGISTRY | memAgeRevMast.frm | memAgeRevMast | Member Category Wise Revenue | ui/shell.py | fuzzy -> Member Age Wise Revenue (score 44, tok 7) |
| REGISTRY | memCatChngCond.frm | memCatChngCond | Member Category Change (Conditio | ui/shell.py | registry wired (shared screen) |
| REGISTRY | memCatChngEntry.frm | memCatChngEntry | Out-Station Member Entry | ui/shell.py | fuzzy -> Outstation Member Entry (score 22, tok 10) |
| REGISTRY | memCatRevMast.frm | memCatRevMast | Member Category Wise Revenue | ui/shell.py | fuzzy -> Category wise Revenue (score 33, tok 8) |
| REGISTRY | memCategoryFacilities.frm | memCategoryFacilities | Category wise Facility | ui/shell.py | registry wired (shared screen) |
| REGISTRY | memFacilityMast.frm | memFacilityMast | Facility Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | memOutStationEntry.frm | memOutStationEntry | Out-Station Member Entry | ui/shell.py | fuzzy -> Outstation Member Entry (score 22, tok 10) |
| REGISTRY | pHappyHours.frm | pHappyHours | Happy Hours | ui/shell.py | registry wired (shared screen) |
| REGISTRY | pMREntry.frm | pMREntry | Material Receive Entry | ui/shell.py | fuzzy -> Finish Material Receive Entry (score 22, tok 8) |
| REGISTRY | pPOrder.frm | pPOrder | Purchase Order | ui/shell.py | registry wired (shared screen) |
| REGISTRY | prHoliday.frm | prHoliday | HoliDay Master | ui/shell.py | registry wired (shared screen) |
| REGISTRY | prOverTime.frm | prOverTime | Over Time | ui/shell.py | registry wired (shared screen) |
| REGISTRY | prSalCreate.frm | prSalCreate | Salary Creation | ui/shell.py | registry wired (shared screen) |
| REGISTRY | repTouchDate.frm | repTouchDate | Select Report Date | ui/shell.py | registry wired (shared screen) |
| REGISTRY | resBanq.frm | resBanq | Reservation Look Up Room Wise | ui/shell.py | registry wired (shared screen) |
| REGISTRY | resGroup.frm | resGroup | Group Reservation | ui/shell.py | registry wired (shared screen) |
| REGISTRY | resRoomNo.frm | resRoomNo | Reservation Look Up Room Wise | ui/shell.py | registry wired (shared screen) |
| REGISTRY | resRoomType.frm | resRoomType | Room Category Wise Reservation L | ui/shell.py | fuzzy -> Reservation Look Up Room Wise (score 44, tok 11) |
| REGISTRY | rsTouchScreenAdvanceDepDialog.frm rsTouchScreenAdvanceDepD | Settlement Entry | ui/shell.py | registry wired (shared screen) | — |
| REGISTRY | salmarCompProfile.frm | salmarCompProfile | Company Profile | ui/shell.py | registry wired (shared screen) |
| LIKELY | CsehDemoForm.frm | CsehDemoForm | CSEH Error Handling Demo | core/error_handling.py | fuzzy -> error_handling (score 18, tok 8) |
| LIKELY | FaEnvron.frm | FaEnvron | Environment Setting | enviro_ui.py | fuzzy -> enviro (score 13, tok 11) |
| LIKELY | FaTDSChal.frm | FaTDSChal | T.D.S.Challan Entry | fa_sub_forms_ui.py | fuzzy -> fa_tds_challan (score 13, tok 7) |
| LIKELY | FindMess.frm | FindMess | misc_parity_ui.py | fuzzy -> messaging_box (score 13, tok 9) | — |
| LIKELY | FrmBdayLookup.frm | FrmBdayLookup | Form1 | fd_forms_ui.py | fuzzy -> lookup_reservation (score 13, tok 6) |
| LIKELY | FrmDeliveredItemDetail.frm | FrmDeliveredItemDetail | Not Delivered Item | pos_masters_ui.py | fuzzy -> itemcat (score 13, tok 7) |
| LIKELY | FrmEventMast.frm | FrmEventMast | Event Type | finance_masters_ui.py | fuzzy -> paymenttype (score 13, tok 11) |
| LIKELY | FrmFacilityMast.frm | FrmFacilityMast | Form1 | facility_billing_ui.py | fuzzy -> facility_billing (score 13, tok 8) |
| LIKELY | FrmForeignExMast.frm | FrmForeignExMast | Foreign Exchange Master | block_master_ui.py | fuzzy -> change_site (score 13, tok 8) |
| LIKELY | FrmGuestAddObj.frm | FrmGuestAddObj | Guest Address & Observation | finance_masters_ui.py | fuzzy -> gueststatus (score 13, tok 11) |
| LIKELY | FrmItemMast.frm | FrmItemMast | Item Entry | pos_masters_ui.py | fuzzy -> itemcat (score 13, tok 7) |
| LIKELY | FrmItemMastRaw.frm | FrmItemMastRaw | Item Entry (Raw) | pos_masters_ui.py | fuzzy -> itemcat (score 13, tok 7) |
| LIKELY | FrmMenuList.frm | FrmMenuList | Main Menu . . . | db_maintenance_ui.py | fuzzy -> db_maintenance (score 13, tok 11) |
| LIKELY | FrmMsgBox.frm | FrmMsgBox | Message Box | messaging_ui.py | fuzzy -> delete_message (score 13, tok 7) |
| LIKELY | FrmNAMessageA.frm | FrmNAMessageA | User Information | p2_masters.py | fuzzy -> usermaster (score 13, tok 10) |
| LIKELY | FrmNAMessageB.frm | FrmNAMessageB | User Information | p2_masters.py | fuzzy -> usermaster (score 13, tok 10) |
| LIKELY | FrmNAMessageC.frm | FrmNAMessageC | User Information | p2_masters.py | fuzzy -> usermaster (score 13, tok 10) |
| LIKELY | FrmPackageMast.frm | FrmPackageMast | Package Defination Master | p2_masters.py | fuzzy -> packagemaster (score 13, tok 13) |
| LIKELY | FrmParty.frm | FrmParty | Suppler Master | misc_sub_forms_ui.py | fuzzy -> party_master (score 13, tok 5) |
| LIKELY | FrmPlanTokenMast.frm | FrmPlanTokenMast | Plan Token Master | p2_masters.py | fuzzy -> planmaster (score 13, tok 10) |
| LIKELY | FrmRoomMast.frm | FrmRoomMast | Room | Master | p2_masters.py |
| LIKELY | FrmUploadProcess.frm | FrmUploadProcess | Upload Process | posting_utility_ui.py | fuzzy -> night_audit_process (score 13, tok 7) |
| LIKELY | HKIssRec.frm | HKIssRec | Issue/Receive Entry | forex_receive_ui.py | fuzzy -> forex_receive (score 13, tok 12) |
| LIKELY | HallAdvanceDepDialog.frm | HallAdvanceDepDialog | Advance Recived | advance_deposit_ui.py | fuzzy -> advance_deposit (score 13, tok 7) |
| LIKELY | HallBill.frm | HallBill | Hall Bill Entry | banquet_ops_ui.py | fuzzy -> banquet_billing (score 13, tok 7) |
| LIKELY | HallEstimate.frm | HallEstimate | Hall Estimate Entry | banquet_ops_ui.py | fuzzy -> banquet_estimate (score 13, tok 8) |
| LIKELY | HallMenuCatalog.frm | HallMenuCatalog | Menu Catalog | banquet_masters_ui.py | fuzzy -> catalog (score 13, tok 7) |
| LIKELY | LockForm.frm | LockForm | Form1 | block_master_ui.py | fuzzy -> block_master (score 13, tok 5) |
| LIKELY | MemberProposedMemInf.frm | MemberProposedMemInf | Propsed Member Information | other_setup_ui.py | fuzzy -> members_mgmt (score 13, tok 7) |
| LIKELY | MemberSMS.frm | MemberSMS | Generate SMS.csv | item_rate_ui.py | fuzzy -> item_rate (score 13, tok 8) |
| LIKELY | OutLetMast.frm | OutLetMast | Outlet Master | finance_masters_ui.py | fuzzy -> outlet_paycodes (score 13, tok 6) |
| LIKELY | PrLoan.frm | PrLoan | Advance/Loan | advance_deposit_ui.py | fuzzy -> advance_deposit (score 13, tok 11) |
| LIKELY | RsBookingEntry.frm | RsBookingEntry | Booking Entry | banquet_ops_ui.py | fuzzy -> banquet_booking (score 13, tok 7) |
| LIKELY | RsPOSCustInfo.frm | RsPOSCustInfo | Customer Information | ui/shell.py | fuzzy -> Guest Information (score 11, tok 11) |
| LIKELY | RsPOSDisplayNew.frm | RsPOSDisplayNew | Table Status | finance_masters_ui.py | fuzzy -> gueststatus (score 13, tok 11) |
| LIKELY | RsTouchOrderPersonDetails.frm | RsTouchOrderPersonDetail | Customer Information | core/orderpersondetails.py fuzzy -> orderpersondetails (score 18, tok 18) | — |
| LIKELY | RsTouchScreenBookingEntry.frm | RsTouchScreenBookingEntr | Booking Entry | banquet_ops_ui.py | fuzzy -> banquet_booking (score 13, tok 7) |
| LIKELY | RsTouchScreenFAFind.frm | RsTouchScreenFAFind | Frame1 | block_master_ui.py | fuzzy -> fa_find (score 13, tok 6) |
| LIKELY | RsTouchScreenSteward.frm | RsTouchScreenSteward | Steward | utility_forms_ui.py | fuzzy -> touch_keyboard (score 13, tok 5) |
| LIKELY | frmComboMast.frm | frmComboMast | Combo Item Master | pos_masters_ui.py | fuzzy -> itemcat (score 13, tok 7) |
| LIKELY | frmCompany.frm | frmCompany | User Information | p2_masters.py | fuzzy -> companymaster (score 13, tok 13) |
| LIKELY | frmFdLeaderRev.frm | frmFdLeaderRev | Leader Revenue Allocation | general_setup_ui.py | fuzzy -> revenuegroupparent (score 13, tok 18) |
| LIKELY | frmMessage.frm | frmMessage | User Information | p2_masters.py | fuzzy -> usermaster (score 13, tok 10) |
| LIKELY | hAdvanceDepDialog.frm | hAdvanceDepDialog | Settlement | banquet_ops_ui.py | fuzzy -> banquet_settlement (score 13, tok 10) |
| LIKELY | pGIss.frm | pGIss | Goods Issue Entry | frm_item_issued_on_cleaning_ui.py fuzzy -> frm_item_issued_on_cleaning (score 13, tok 6) | — |
| LIKELY | pReqSlip.frm | pReqSlip | Requistion Slip Entry | requisition_slip_ui.py | fuzzy -> requisition_slip (score 13, tok 4) |
| LIKELY | rrsAdvanceDepDialog.frm | rrsAdvanceDepDialog | Settlememt Entry | pos_masters_ui.py | fuzzy -> auto_settle_card_balance (score 13, tok 10) |
| LIKELY | rsAdvanceDepDialog.frm | rsAdvanceDepDialog | Settlement | banquet_ops_ui.py | fuzzy -> banquet_settlement (score 13, tok 10) |
| PY_FILE | AccountMerg.frm | AccountMerg | Account Merging | account_merge_ui.py | ui stem contains |
| PY_FILE | CompMast.frm | CompMast | Company Master | comp_mast_form_ui.py | ui stem contains |
| PY_FILE | DMTree.frm | DMTree | Form1 | dm_tree_ui.py | ui stem contains |
| PY_FILE | DepartMast.frm | DepartMast | Department Master | depart_change_ui.py | fuzzy -> changes_department (score 26, tok 10) |
| PY_FILE | DepartSundry.frm | DepartSundry | Outlet Bill Sundry Setting | fd_forms_ui.py | open fn = stem |
| PY_FILE | FAFind.frm | FAFind | Help.? | block_master_ui.py | open fn = stem |
| PY_FILE | FaAdjust.frm | FaAdjust | Adjustment Entry | fa_sub_forms_ui.py | open fn = stem |
| PY_FILE | FaChqClear.frm | FaChqClear | Cheque/DD Clearing Entry | fa_sub_forms_ui.py | open fn = stem |
| PY_FILE | FaGlobeNarr.frm | FaGlobeNarr | {Press <Esc> For Cancel && Exit} | utility_forms_ui.py | fuzzy -> select_report_date (score 26, tok 8) |
| PY_FILE | FaTDSCertificate.frm | FaTDSCertificate | T.D.S.Certificate Entry | fa_sub_forms_ui.py | fuzzy -> fa_tds_cert (score 26, tok 14) |
| PY_FILE | FacilitySundry.frm | FacilitySundry | Outlet Bill Sundry Setting | fd_forms_ui.py | open fn = stem |
| PY_FILE | FrmBusinessSrc.frm | FrmBusinessSrc | Business Source Master | finance_masters_ui.py | fuzzy -> businesssource (score 26, tok 14) |
| PY_FILE | FrmChangeDepart.frm | FrmChangeDepart | Department Change Master | depart_change_ui.py | fuzzy -> changes_department (score 39, tok 10) |
| PY_FILE | FrmChangeKitch.frm | FrmChangeKitch | Kitchen Change Master | inventory.py | fuzzy -> kitchen_stock_report (score 26, tok 7) |
| PY_FILE | FrmChangeRest.frm | FrmChangeRest | Restaurant Change Master | depart_change_ui.py | fuzzy -> restaurant_change (score 39, tok 10) |
| PY_FILE | FrmChangeSite.frm | FrmChangeSite | block_master_ui.py | fuzzy -> change_site (score 26, tok 6) | — |
| PY_FILE | FrmConsumMast9999.frm | FrmConsumMast9999 | Open Item Consumption Master | open_item_consumption_ui.py fuzzy -> open_item_consumption (score 39, tok 11) | — |
| PY_FILE | FrmFomBillDeletion.frm | FrmFomBillDeletion | Fom Bill Delection | pos_bill_deletion_ui.py | fuzzy -> pos_bill_deletion (score 26, tok 8) |
| PY_FILE | FrmGrcBlank.frm | FrmGrcBlank | Guest Registration | Card | pos_masters_ui.py |
| PY_FILE | FrmGuestStat.frm | FrmGuestStat | Guest Status Master | finance_masters_ui.py | fuzzy -> gueststatus (score 39, tok 11) |
| PY_FILE | FrmItemGroupMast.frm | FrmItemGroupMast | Item Group Entry | p2_masters.py | fuzzy -> item_group (score 26, tok 5) |
| PY_FILE | FrmItemIssuedOnCleaning.frm | FrmItemIssuedOnCleaning | Item Issued On Cleaning | frm_item_issued_on_cleaning_ui.py ui stem contains | — |
| PY_FILE | FrmMarketSeg.frm | FrmMarketSeg | Market Segment Master | finance_masters_ui.py | fuzzy -> marketsegment (score 26, tok 13) |
| PY_FILE | FrmMergeCharge.frm | FrmMergeCharge | Room Merge | fo_sub_forms_ui.py | fuzzy -> merge_charge (score 26, tok 6) |
| PY_FILE | FrmOPStock.frm | FrmOPStock | Opening Stock Entry | misc_sub_forms_ui.py | fuzzy -> opening_stock (score 39, tok 7) |
| PY_FILE | FrmPOSBillDeletion.frm | FrmPOSBillDeletion | POS Bill Deletion Entry | pos_bill_deletion_ui.py | fuzzy -> pos_bill_deletion (score 52, tok 8) |
| PY_FILE | FrmPOSBillModificationDatewise.frm FrmPOSBillModificationDa | POS Bill Deletion Entry | pos_bill_deletion_ui.py | fuzzy -> pos_bill_deletion (score 52, tok 8) | — |
| PY_FILE | FrmPOSBillModificationItemGroupwise.frm FrmPOSBillModificationIt | POS Bill Modification (Item Grou | misc_parity_ui.py | fuzzy -> sale_bill_modification (score 39, tok 12) | — |
| PY_FILE | FrmPOSRecycleData.frm | FrmPOSRecycleData | Recycle Outlet Data | pos_recycle_ui.py | fuzzy -> pos_recycle (score 26, tok 10) |
| PY_FILE | FrmPOSSaleDataTransfer.frm | FrmPOSSaleDataTransfer | POS Bill Deletion Entry | pos_bill_deletion_ui.py | fuzzy -> pos_bill_deletion (score 39, tok 8) |
| PY_FILE | FrmPayTypeMast.frm | FrmPayTypeMast | Payment Type Master | finance_masters_ui.py | fuzzy -> paymenttype (score 26, tok 11) |
| PY_FILE | FrmRevMergeCharge.frm | FrmRevMergeCharge | Reverse Transfer Room | fo_sub_forms_ui.py | fuzzy -> reverse_room_merge (score 39, tok 7) |
| PY_FILE | FrmRevenueWiseBudget.frm | FrmRevenueWiseBudget | Revenue Wise Budget | general_setup_ui.py | fuzzy -> revenuewisebudget (score 39, tok 17) |
| PY_FILE | FrmRoomCatMast.frm | FrmRoomCatMast | Room Category Master | p2_masters.py | fuzzy -> roomcategory (score 26, tok 12) |
| PY_FILE | FrmUnSettledBillsInfo.frm | FrmUnSettledBillsInfo | Unsettled Bill Details | pos_masters_ui.py | fuzzy -> auto_settle_card_balance (score 26, tok 9) |
| PY_FILE | Godown.frm | Godown | Location Master | general_setup_ui.py | open fn = stem |
| PY_FILE | HKRoomOpStk.frm | HKRoomOpStk | Room Op.Stock Entry | fd_forms_ui.py | fuzzy -> room_checkout (score 26, tok 6) |
| PY_FILE | HWIHistory.frm | HWIHistory | Walk In by Room History | guest_history_ui.py | fuzzy -> guest_history (score 26, tok 10) |
| PY_FILE | HallAcPostChrg.frm | HallAcPostChrg | A/C Posting | posting_forms_ui.py | fuzzy -> post_chrg (score 39, tok 7) |
| PY_FILE | HallBooking.frm | HallBooking | Banquet Booking | hall_booking_ui.py | ui stem contains |
| PY_FILE | HallItemGroupMast.frm | HallItemGroupMast | Item Group Entry | p2_masters.py | fuzzy -> item_group (score 26, tok 5) |
| PY_FILE | HallMenuItemEntry.frm | HallMenuItemEntry | Menu Item Entry | pos_masters_ui.py | fuzzy -> menu_item_copy (score 26, tok 4) |
| PY_FILE | Inbox.frm | Inbox | Inbox | misc_parity_ui.py | open fn = stem |
| PY_FILE | MemberEnviro.frm | MemberEnviro | Parameter Setting | member_environment_ui.py ui stem contains | — |
| PY_FILE | Outbox.frm | Outbox | Intelligent Outbox | misc_parity_ui.py | open fn = stem |
| PY_FILE | POSBillReprint.frm | POSBillReprint | OutLet Bill Reprint | fo_sub_forms_ui.py | fuzzy -> fom_bill_reprint (score 39, tok 7) |
| PY_FILE | PrAttend1.frm | PrAttend1 | Attendence | pr_attend1_ui.py | ui stem contains |
| PY_FILE | RSSaleBillDisplay.frm | RSSaleBillDisplay | Bill Look Up | misc_parity_ui.py | fuzzy -> sale_bill_modification (score 26, tok 6) |
| PY_FILE | RsKOTEntry.frm | RsKOTEntry | KOT | kot_entry.py | ui stem contains |
| PY_FILE | RsMenuItemEntry.frm | RsMenuItemEntry | Menu Item Entry | pos_masters_ui.py | fuzzy -> menu_item_copy (score 26, tok 4) |
| PY_FILE | RsSpecItemEntry.frm | RsSpecItemEntry | Special Item Entry | utility_forms_ui.py | fuzzy -> special_occasions (score 26, tok 7) |
| PY_FILE | RsTbChange.frm | RsTbChange | Table Transfer | kot_transfer_ui.py | fuzzy -> table_change (score 26, tok 6) |
| PY_FILE | RsTouchScreenKOTEntry.frm | RsTouchScreenKOTEntry | KOT Entry | kot_entry.py | ui stem contains |
| PY_FILE | SmartCardLostReIssue.frm | SmartCardLostReIssue | Smart Lost/ReIssue Entry | pos_masters_ui.py | fuzzy -> smartcard (score 26, tok 9) |
| PY_FILE | SmartCardMast.frm | SmartCardMast | Smart Card Master | pos_masters_ui.py | fuzzy -> smartcard (score 26, tok 9) |
| PY_FILE | SmartCardRecharge.frm | SmartCardRecharge | Smart Card Recharge Entry | pos_masters_ui.py | fuzzy -> smartcard (score 26, tok 9) |
| PY_FILE | SmartCardRefund.frm | SmartCardRefund | Smart Card Refund Entry | pos_masters_ui.py | fuzzy -> smartcard (score 26, tok 9) |
| PY_FILE | SmartCardRegistration.frm | SmartCardRegistration | Smart Card Registration Entry | pos_masters_ui.py | fuzzy -> card_registration (score 26, tok 12) |
| PY_FILE | TelCallCodeMast.frm | TelCallCodeMast | Call Code Master | epabx_ui.py | fuzzy -> callcode (score 26, tok 8) |
| PY_FILE | TelCallEntry.frm | TelCallEntry | Call Code Master | epabx_ui.py | fuzzy -> callcode (score 26, tok 8) |
| PY_FILE | TelCallTypeMast.frm | TelCallTypeMast | Call Type Mast | epabx_ui.py | fuzzy -> calltype (score 26, tok 8) |
| PY_FILE | Transfer.frm | Transfer | Data Transfer | kot_transfer_ui.py | ui stem contains |
| PY_FILE | UserMast.frm | UserMast | User Master | usermaster_ui.py | ui stem contains |
| PY_FILE | UserPermission.frm | UserPermission | User Permissions | user_permission_ui.py | ui stem contains |
| PY_FILE | VoucherSundrySetting.frm | VoucherSundrySetting | Voucher Sundry Setting | voucher_sundry_ui.py | fuzzy -> voucher_sundry_entry (score 26, tok 7) |
| PY_FILE | fdNDAcPostChrg.frm | fdNDAcPostChrg | Posting Utility | posting_forms_ui.py | fuzzy -> post_chrg (score 39, tok 7) |
| PY_FILE | frmAdvanceDepDialog.frm | frmAdvanceDepDialog | Advance Deposit | advance_deposit_ui.py | fuzzy -> advance_deposit (score 26, tok 7) |
| PY_FILE | frmFomB.frm | frmFomB | FOM Bill Reprint | fo_sub_forms_ui.py | fuzzy -> fom_bill_reprint (score 39, tok 7) |
| PY_FILE | frmGodrejLockSettings.frm | frmGodrejLockSettings | Godrej Lock Settings | frm_godrej_lock_settings_ui.py ui stem contains | — |
| PY_FILE | frmLockGodrejSettings.frm | frmLockGodrejSettings | Godrej Locks | frm_lock_godrej_settings_ui.py ui stem contains | — |
| PY_FILE | frmPassword.frm | frmPassword | Authentication Window | ui/shell.py | login / User Information screen |
| PY_FILE | frmRevGroup.frm | frmRevGroup | Revenue Group | general_setup_ui.py | fuzzy -> revenuegroupparent (score 26, tok 18) |
| PY_FILE | frmWelcome.frm | frmWelcome | < | ui/shell.py | splash / welcome screen |
| PY_FILE | hAdvanceDepDialogSecondry.frm | hAdvanceDepDialogSecondr | Advance Deposite | advance_deposit_ui.py | fuzzy -> advance_deposit (score 26, tok 8) |
| PY_FILE | kClStk.frm | kClStk | Kitchen Closing Stock Entry | kitchen_clstk_ui.py | fuzzy -> kitchen_closing_stock (score 39, tok 7) |
| PY_FILE | pPBill.frm | pPBill | Purchase Bill Entry | purchase_bill_ui.py | fuzzy -> purchase_bill (score 39, tok 8) |
| PY_FILE | prAttend.frm | prAttend | Leave | pr_attend1_ui.py | ui stem contains |
| SHELL | Form1.frm | Form1 | Form1 | ui/shell.py | generic VB6 test form (VB6 me bhi demo) |
| SHELL | MDIForm1.frm | MDIForm1 | &Finance | ui/shell.py | VB6 MDI main window -> python MainWindow |
| REPORT_VIEWER | FaRepView.frm | FaRepView | Form1 | core/reports.py | VB6 report-viewer form -> reports engine |
| REPORT_VIEWER | FaReports.frm | FaReports | ReprtForm | core/reports.py | VB6 report-viewer form -> reports engine |
| REPORT_VIEWER | REPVIEW.frm | REPVIEW | Form1 | core/reports.py | VB6 report-viewer form -> reports engine |
| REPORT_VIEWER | rFaRepView.frm | rFaRepView | Financ Report | core/reports.py | VB6 report-viewer form -> reports engine |
| REPORT_VIEWER | rFomRepView.frm | rFomRepView | FomRepView | core/reports.py | VB6 report-viewer form -> reports engine |
| REPORT_VIEWER | rHallRepView.frm | rHallRepView | HallRepView | core/reports.py | VB6 report-viewer form -> reports engine |
| REPORT_VIEWER | rInventRepView.frm | rInventRepView | ReportForm | core/reports.py | VB6 report-viewer form -> reports engine |
| REPORT_VIEWER | rMemberRepView.frm | rMemberRepView | Member Report | core/reports.py | VB6 report-viewer form -> reports engine |
| REPORT_VIEWER | rPOSRepView.frm | rPOSRepView | Pos Report | core/reports.py | VB6 report-viewer form -> reports engine |
| REPORT_VIEWER | rRepHouse.frm | rRepHouse | ReprtForm | core/reports.py | VB6 report-viewer form -> reports engine |
| REPORT_VIEWER | rRepHousePreview.frm | rRepHousePreview | ReprtForm | core/reports.py | VB6 report-viewer form -> reports engine |
| REPORT_VIEWER | rRepPayRoll.frm | rRepPayRoll | ReprtForm | core/reports.py | VB6 report-viewer form -> reports engine |
| REPORT_VIEWER | rRepReserv.frm | rRepReserv | ReprtForm | core/reports.py | VB6 report-viewer form -> reports engine |
| REPORT_VIEWER | rRepTel.frm | rRepTel | ReprtForm | core/reports.py | VB6 report-viewer form -> reports engine |
| REPORT_VIEWER | rRepTelPreview.frm | rRepTelPreview | ReprtForm | core/reports.py | VB6 report-viewer form -> reports engine |
