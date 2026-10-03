# DATABASE_MAPPING_LEDGER

Auto-generated from `VB6_VS_PYTHON_FILE_BY_FILE.txt` Section C by
`_gen_ledgers.py` — DO NOT hand-edit rows; regenerate instead.

Spec §20 columns: VB6 table → Python coverage → live DB rows →
evidence (referencing files). Per-table CRUD/joins/SP detail is added
in the note when that table's migration unit is worked.

Status vocabulary (spec §17): MIGRATED / PARTIALLY_MIGRATED /
NOT_YET_MIGRATED / OBSOLETE_WITH_PROOF / DUPLICATE_WITH_PROOF /
BLOCKED_WITH_DOCUMENTED_REASON. C1 (VB6-only) rows start as
NOT_YET_MIGRATED until evidence says otherwise.

**Generated:** 2026-10-03 | **live base tables:** 280 | **ledger rows:** 262

## VB6-ONLY (Python kabhi query nahi karta) — INVESTIGATE — 25

| Table | VB6 | PY | DB | Rows | Status | Evidence (files) |
|---|:--:|:--:|:--:|---:|---|---|
| suntranlog | Y | - | YES | 329 | NOT_YET_MIGRATED | VB6:HMS.bas,RSSaleBill.frm,RSTouchScreenSaleBill.frm |
| creditcardhistory | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:FrmPayTypeMast.frm,HMS.bas,HallAdvanceDepDialog.frm |
| departrwscheme | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,Hotlib.bas,RSSaleBill.frm |
| fombillchangedetails | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:FdReSetlement.frm,HMS.bas,frmFomB.frm |
| groupfoliomore | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,RrRoomReservation.frm,fdWalkInEntry.frm |
| guestprofveh | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:GuestProfile.frm,HMS.bas,fdWalkInEntry.frm |
| help | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,MainLib.bas |
| leaderrev | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,Hotlib.bas,fdWalkInEntry.frm |
| memcatrevwise | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,MemFacilityBilling.frm,memCatChngEntry.frm |
| memfacilitymast | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,MemAssistant.frm,MemFacilityBilling.frm |
| memoutstation | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,memOutStationEntry.frm |
| memrevenueforperiod | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,MemFacilityBilling.frm,memCatChngEntry.frm |
| memrevwise | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,MemAssistant.frm,MembershipMast.frm |
| memtagadaletter | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,MemTagadaLetter.frm,rMemberRepView.frm |
| memvisitentry | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,MemVisitEntry.frm |
| outletbarcodepartdetail | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,OutLetMast.frm,RSSaleBill.frm |
| profileimages | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:GuestProfile.frm,HMS.bas,fdWalkInEntry.frm |
| schemeoutletdiscount | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,OutLetMast.frm,RSSaleBill.frm |
| splitedsuntran | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:FrmPOSRecycleData.frm,HMS.bas,Hotlib.bas |
| splitstock | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:FrmPOSRecycleData.frm,HMS.bas,Hotlib.bas |
| splitsuntran | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,Hotlib.bas,RsSaleBillSplit.frm |
| subgrouplog | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,MembershipMast.frm |
| tradeinfo_btwin | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,RSSaleBill.frm |
| transout | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:HMS.bas,Transfer.frm |
| usercollection | Y | - | YES | 0 | NOT_YET_MIGRATED | VB6:FrmUserPaymentCollection.frm,HMS.bas,rPOSRepView.frm |

## PYTHON-ONLY (VB6 me nahi) — investigate before delete — 1

| Table | VB6 | PY | DB | Rows | Status | Evidence (files) |
|---|:--:|:--:|:--:|---:|---|---|
| combopackhead | - | Y | YES | 0 | INVESTIGATE | PY:pos_masters.py |

## BOTH SIDES (VB6 + Python dono use karte hain) — 236

| Table | VB6 | PY | DB | Rows | Status | Evidence (files) |
|---|:--:|:--:|:--:|---:|---|---|
| suntran | Y | Y | YES | 45832 | BOTH_SIDES | VB6:FaTaxVoucher.frm,FrmPOSBillDeletion.frm,FrmPOSBillModificationDate |
| sale2 | Y | Y | YES | 32580 | BOTH_SIDES | VB6:FaTaxVoucher.frm,FrmPOSBillDeletion.frm,FrmPOSBillModificationDate |
| stock | Y | Y | YES | 30369 | BOTH_SIDES | VB6:DepOpStk.frm,FaCurrBalUpdate.frm,FaTaxVoucher.frm; PY:db_maintenan |
| ledger | Y | Y | YES | 18474 | BOTH_SIDES | VB6:CompMast.frm,DepOpStk.frm,FaAdjust.frm; PY:account_merge.py,comp_m |
| ledgerlog | Y | Y | YES | 14241 | BOTH_SIDES | VB6:FaVrEnt.frm,HMS.bas; PY:fa_ledger_ops.py,fa_voucher.py |
| dbsendsms | Y | Y | YES | 14180 | BOTH_SIDES | VB6:FrmSMSMultiType.frm,HMS.bas,MDIForm1.frm; PY:sms_comm.py,sms_envir |
| kot | Y | Y | YES | 13907 | BOTH_SIDES | VB6:FrmHouseStatus.frm,FrmPOSBillDeletion.frm,FrmPOSBillModificationDa |
| paycharge | Y | Y | YES | 13737 | BOTH_SIDES | VB6:FOMModule.bas,FaCurrBalUpdate.frm,FdCheckOut.frm; PY:advance_depos |
| paychargeh | Y | Y | YES | 11079 | BOTH_SIDES | VB6:BanqModule.bas,CateringBooking.frm,FaCurrBalUpdate.frm; PY:banquet |
| roomocc | Y | Y | YES | 11002 | BOTH_SIDES | VB6:FdCheckOut.frm,FdGrpCheckOut.frm,FdGrpdetCheckOut.frm; PY:advance_ |
| guestfolio | Y | Y | YES | 10605 | BOTH_SIDES | VB6:FOMModule.bas,FdCheckOut.frm,FdGrpCheckOut.frm; PY:checkin.py,chec |
| menuhelp | Y | Y | YES | 8475 | BOTH_SIDES | VB6:FaVoucher.bas,FrmPayTypeMast.frm,FrmSMSMultiType.frm; PY:menu_help |
| guestreward | Y | Y | YES | 8067 | BOTH_SIDES | VB6:FrmPOSBillDeletion.frm,HMS.bas,Hotlib.bas; PY:pos_bill_deletion_op |
| comp_plandet | Y | Y | YES | 7756 | BOTH_SIDES | VB6:CompMast.frm,HMS.bas,RrRoomReservation.frm; PY:comp_master.py |
| guestprof | Y | Y | YES | 7215 | BOTH_SIDES | VB6:FOMModule.bas,FaCurrBalUpdate.frm,FdCheckOut.frm; PY:checkout.py,f |
| indent1 | Y | Y | YES | 6176 | BOTH_SIDES | VB6:FrmInc.frm,HMS.bas,PIndent.frm; PY:inventory.py,purchase.py,requis |
| sale1 | Y | Y | YES | 5952 | BOTH_SIDES | VB6:FaTaxVoucher.frm,FrmDeliveredItemDetail.frm,FrmPOSBillDeletion.frm |
| mcurstk | Y | Y | YES | 3498 | BOTH_SIDES | VB6:HMS.bas,fdNDAcPostChrg.frm,rFomRepView.frm; PY:mcurstk.py |
| itemmast | Y | Y | YES | 3292 | BOTH_SIDES | VB6:CateringBooking.frm,DepOpStk.frm,FaTaxVoucher.frm; PY:consumption_ |
| item | Y | Y | YES | 3125 | BOTH_SIDES | VB6:FrmItemMast.frm,FrmItemMastRaw.frm,HMS.bas; PY:gravy_item.py,kot_e |
| subgroup | Y | Y | YES | 3110 | BOTH_SIDES | VB6:AccountMerg.frm,CompMast.frm,FOMModule.bas; PY:account_merge.py,co |
| subgroupcurrbal | Y | Y | YES | 2862 | BOTH_SIDES | VB6:CompMast.frm,FaCurrBalUpdate.frm,FaLib.bas; PY:account_merge.py,co |
| ledgermlog | Y | Y | YES | 2160 | BOTH_SIDES | VB6:FaVrEnt.frm,HMS.bas; PY:fa_ledger_ops.py,fa_voucher.py |
| bom | Y | Y | YES | 2046 | BOTH_SIDES | VB6:FrmConsumMast.frm,FrmConsumMast9999.frm,HMS.bas; PY:consumption_ma |
| purch2 | Y | Y | YES | 1785 | BOTH_SIDES | VB6:FaTaxVoucher.frm,FrmInc.frm,HMS.bas; PY:inventory.py,purchase.py,r |
| roomdiscount | Y | Y | YES | 1532 | BOTH_SIDES | VB6:CompMast.frm,HMS.bas,RrRoomReservation.frm; PY:comp_master.py |
| ledgerm | Y | Y | YES | 1389 | BOTH_SIDES | VB6:FaAdjust.frm,FaEnvron.frm,FaVoucher.bas; PY:fa_ledger_ops.py,fa_vo |
| menuhelp1 | Y | Y | YES | 1234 | BOTH_SIDES | VB6:DMTree.frm,HMS.bas,MDIForm1.frm; PY:dm_tree_ui.py,sys_config.py,us |
| foliolog | Y | Y | YES | 978 | BOTH_SIDES | VB6:HMS.bas,Hotlib.bas; PY:checkin.py,checkout.py,folio.py |
| acgroupcurrbal | Y | Y | YES | 977 | BOTH_SIDES | VB6:FaCurrBalUpdate.frm,FaLib.bas,HMS.bas; PY:fa_ledger_ops.py,fa_vouc |
| indent | Y | Y | YES | 959 | BOTH_SIDES | VB6:FrmInc.frm,HMS.bas,PIndent.frm; PY:inventory.py,requisition_slip_u |
| itemrate | Y | Y | YES | 697 | BOTH_SIDES | VB6:CateringBooking.frm,FrmItemIssuedOnCleaning.frm,FrmMenuRate.frm; P |
| kotlog | Y | Y | YES | 624 | BOTH_SIDES | VB6:HMS.bas,RsKOTEntry.frm,RsTokenEntry.frm; PY:pos.py,pos_kot.py |
| user1 | Y | Y | YES | 617 | BOTH_SIDES | VB6:HMS.bas,MDIForm1.frm,UserMast.frm; PY:menu.py,usermaster.py |
| user_module | Y | Y | YES | 617 | BOTH_SIDES | VB6:HMS.bas,MDIForm1.frm,UserMast.frm; PY:menu.py,user_permission_ui.p |
| usermodule1 | Y | Y | YES | 617 | BOTH_SIDES | VB6:DMTree.frm,HMS.bas,MDIForm1.frm; PY:dm_tree_ui.py,usermodule1.py |
| sale2log | Y | Y | YES | 510 | BOTH_SIDES | VB6:HMS.bas,RSSaleBill.frm,RSTouchScreenSaleBill.frm; PY:sale2log.py |
| rawconsumption | Y | Y | YES | 467 | BOTH_SIDES | VB6:HMS.bas,Hotlib.bas,rFomRepView.frm; PY:rawconsumption.py |
| city | Y | Y | YES | 463 | BOTH_SIDES | VB6:AccountMerg.frm,CompMast.frm,FaCityMast.frm; PY:area.py,city.py,co |
| usermodule | Y | Y | YES | 450 | BOTH_SIDES | VB6:HMS.bas,MDIForm1.frm,ModuleAdd.bas; PY:module_add.py |
| gin | Y | Y | YES | 421 | BOTH_SIDES | VB6:FaTaxVoucher.frm,HMS.bas,pMREntry.frm; PY:inventory.py |
| guestfolioprofdetail | Y | Y | YES | 400 | BOTH_SIDES | VB6:FdGrpCheckOut.frm,GuestProfile.frm,HMS.bas; PY:checkin.py,folio.py |
| purch1 | Y | Y | YES | 396 | BOTH_SIDES | VB6:DepOpStk.frm,FaTaxVoucher.frm,HMS.bas; PY:inventory.py,purchase.py |
| attend | Y | Y | YES | 384 | BOTH_SIDES | VB6:HMS.bas,PrAttend1.frm,PrEmployee.frm; PY:hr_payroll.py,reports.py |
| fombilldetails | Y | Y | YES | 330 | BOTH_SIDES | VB6:FdGrpCheckOut.frm,FrmFomBillDeletion.frm,HMS.bas; PY:checkout.py,f |
| stocklog | Y | Y | YES | 266 | BOTH_SIDES | VB6:HMS.bas,RSSaleBill.frm,RSTouchScreenSaleBill.frm; PY:stocklog.py |
| bookinglog | Y | Y | YES | 253 | BOTH_SIDES | VB6:HMS.bas,Hotlib.bas; PY:reservation.py |
| einvoicebill2 | Y | Y | YES | 189 | BOTH_SIDES | VB6:HMS.bas,HallBill.frm,Hotlib.bas; PY:einvoicebill.py |
| ledgertds | Y | Y | YES | 179 | BOTH_SIDES | VB6:FaTDSChal.frm,FaVoucher.bas,FaVrEnt.frm; PY:fa_ledger_ops.py,fa_td |
| voucher_prefix | Y | Y | YES | 171 | BOTH_SIDES | VB6:CateringBooking.frm,CompMast.frm,DepOpStk.frm; PY:fa_ledger_ops.py |
| voucher_type | Y | Y | YES | 171 | BOTH_SIDES | VB6:CateringBooking.frm,CompMast.frm,DepOpStk.frm; PY:fa_reports.py,fa |
| revmast | Y | Y | YES | 168 | BOTH_SIDES | VB6:DepartMast.frm,DepartSundry.frm,FOMModule.bas; PY:advance_deposit_ |
| venueocc | Y | Y | YES | 150 | BOTH_SIDES | VB6:CateringBooking.frm,FaCurrBalUpdate.frm,FrmBookingInquiry.frm; PY: |
| itemgrp | Y | Y | YES | 138 | BOTH_SIDES | VB6:CateringBooking.frm,FaTaxVoucher.frm,FrmItemGroupMast.frm; PY:banq |
| suntranh | Y | Y | YES | 126 | BOTH_SIDES | VB6:HMS.bas,HallBill.frm,HallEstimate.frm; PY:hall_booking.py,schema_u |
| employee | Y | Y | YES | 120 | BOTH_SIDES | VB6:CompMast.frm,FdCheckOut.frm,FdGrpCheckOut.frm; PY:comp_master.py,h |
| sundrytype | Y | Y | YES | 118 | BOTH_SIDES | VB6:DepartSundry.frm,FaTaxVoucher.frm,FacilitySundry.frm; PY:sundry_ty |
| paychargelog | Y | Y | YES | 117 | BOTH_SIDES | VB6:FdCheckOut.frm,HMS.bas,RSSaleBill.frm; PY:expenseentry.py,folio.py |
| ledgeradj | Y | Y | YES | 100 | BOTH_SIDES | VB6:FaAdjust.frm,FaAdjustDel.frm,FaReports.frm; PY:account_merge.py,fa |
| hallbook | Y | Y | YES | 97 | BOTH_SIDES | VB6:BanqModule.bas,CateringBooking.frm,FaCurrBalUpdate.frm; PY:banquet |
| salary | Y | Y | YES | 93 | BOTH_SIDES | VB6:HMS.bas,PrAttend1.frm,PrEmployee.frm; PY:hr_payroll.py |
| guestfolioamend | Y | Y | YES | 90 | BOTH_SIDES | VB6:HMS.bas,fdAmendEntry.frm; PY:folio.py |
| bookingcanceldetails | Y | Y | YES | 88 | BOTH_SIDES | VB6:FaCurrBalUpdate.frm,HMS.bas,RrRoomReservation.frm; PY:reservation. |
| roommast | Y | Y | YES | 86 | BOTH_SIDES | VB6:FdCheckOut.frm,FdGrpCheckOut.frm,FdGrpdetCheckOut.frm; PY:advance_ |
| user2 | Y | Y | YES | 82 | BOTH_SIDES | VB6:HMS.bas,UserMast.frm,frmCompany.frm; PY:usermaster.py |
| vouchercat | Y | Y | YES | 79 | BOTH_SIDES | VB6:FaVtype.frm,FrmInc.frm,HMS.bas; PY:general_setup.py,voucher_type.p |
| departpay | Y | Y | YES | 75 | BOTH_SIDES | VB6:FdReSetlement.frm,FrmPayTypeMast.frm,HMS.bas; PY:depart_pay.py,pay |
| userpermission | Y | Y | YES | 74 | BOTH_SIDES | VB6:FdCheckOut.frm,HMS.bas,InHouseGuestFolio.frm; PY:sys_config.py |
| acgroup | Y | Y | YES | 73 | BOTH_SIDES | VB6:CompMast.frm,FaAdjust.frm,FaEnvron.frm; PY:acgroup.py,comp_master. |
| nightauditlog | Y | Y | YES | 69 | BOTH_SIDES | VB6:HMS.bas,Hotlib.bas,rFomRepView.frm; PY:nightaudit.py |
| usermast | Y | Y | YES | 68 | BOTH_SIDES | VB6:EmptyInbox.frm,FrmUserPaymentCollection.frm,HMS.bas; PY:auth.py,me |
| depart | Y | Y | YES | 67 | BOTH_SIDES | VB6:CateringBooking.frm,DepOpStk.frm,DepartMast.frm; PY:consumption_ma |
| einvoicebill1 | Y | Y | YES | 67 | BOTH_SIDES | VB6:HMS.bas,HallBill.frm,Hotlib.bas; PY:einvoicebill.py |
| godownmast | Y | Y | YES | 64 | BOTH_SIDES | VB6:DepOpStk.frm,DepartMast.frm,FaTaxVoucher.frm; PY:depart.py,excise_ |
| ratelist | Y | Y | YES | 62 | BOTH_SIDES | VB6:FdLookUpRoomNo.frm,FrmRoomCatMast.frm,FrmRoomMast.frm; PY:ratelist |
| desig | Y | Y | YES | 61 | BOTH_SIDES | VB6:HMS.bas,PrAttend1.frm,PrDesigMast.frm; PY:hr_masters.py,hr_payroll |
| waiter | Y | Y | YES | 58 | BOTH_SIDES | VB6:FrmGuestAddObj.frm,FrmUnSettledBillsInfo.frm,FrmWaiterMast.frm; PY |
| taxstru | Y | Y | YES | 56 | BOTH_SIDES | VB6:FaTaxVoucher.frm,FdGrpCheckOut.frm,FdReSetlement.frm; PY:excise_ga |
| state | Y | Y | YES | 55 | BOTH_SIDES | VB6:FaCityMast.frm,FaStateMast.frm,FrmComplaintClearing.frm; PY:state. |
| itemcatmast | Y | Y | YES | 50 | BOTH_SIDES | VB6:CateringBooking.frm,FaTaxVoucher.frm,FrmHallItemCatMast.frm; PY:gr |
| sale1log | Y | Y | YES | 47 | BOTH_SIDES | VB6:HMS.bas,RSSaleBill.frm,RSTouchScreenSaleBill.frm; PY:folio.py,pos_ |
| grpbookingdetails | Y | Y | YES | 46 | BOTH_SIDES | VB6:FOMModule.bas,FaCurrBalUpdate.frm,FrmReservationStatus.frm; PY:boo |
| packingorderdetail2 | Y | Y | YES | 42 | BOTH_SIDES | VB6:HMS.bas,RSSaleBill.frm,RsBookingEntry.frm; PY:packingorderdetail.p |
| memberfamily | Y | Y | YES | 37 | BOTH_SIDES | VB6:FrmSMSMultiType.frm,HMS.bas,MemAssistant.frm; PY:member_billing.py |
| unitmast | Y | Y | YES | 32 | BOTH_SIDES | VB6:FrmInc.frm,FrmItemMastRaw.frm,HMS.bas; PY:gravy_item.py,unit.py |
| venuecapacity | Y | Y | YES | 32 | BOTH_SIDES | VB6:FrmBookingInquiry.frm,FrmVenueMast.frm,HMS.bas; PY:venue.py |
| memaddrwa | Y | Y | YES | 31 | BOTH_SIDES | VB6:HMS.bas,MembershipMast.frm,rMemberRepView.frm; PY:memaddrwa.py |
| guestproffor | Y | Y | YES | 30 | BOTH_SIDES | VB6:FOMModule.bas,FdGrpCheckOut.frm,GuestProfile.frm; PY:guest_foreign |
| lastvoucher | Y | Y | YES | 26 | BOTH_SIDES | VB6:FaVrEnt.frm,HMS.bas; PY:fa_ledger_ops.py,year_end.py |
| hallsale1 | Y | Y | YES | 21 | BOTH_SIDES | VB6:CateringBooking.frm,HMS.bas,HallAdvanceDepDialog.frm; PY:banquet_o |
| booking | Y | Y | YES | 19 | BOTH_SIDES | VB6:FOMModule.bas,FaCurrBalUpdate.frm,FdLookUpRoomNo.frm; PY:advance_d |
| sundrymast | Y | Y | YES | 19 | BOTH_SIDES | VB6:DepartSundry.frm,FacilitySundry.frm,FrmInc.frm; PY:banquet_ops_ui. |
| emailsmsforward | Y | Y | YES | 18 | BOTH_SIDES | VB6:FdCheckOut.frm,FrmSMSEnviro.frm,FrmSmsCenterSettings.frm; PY:sms_c |
| printformats | Y | Y | YES | 18 | BOTH_SIDES | VB6:HMS.bas,Hotlib.bas,frmPrintModule.frm; PY:printformats.py |
| lastvou | Y | Y | YES | 17 | BOTH_SIDES | VB6:CateringBooking.frm,FaTaxVoucher.frm,HKHouseOpStk.frm; PY:lastvou. |
| nctypemast | Y | Y | YES | 15 | BOTH_SIDES | VB6:FrmNCType.frm,HMS.bas,RsKOTEntry.frm; PY:pos.py,pos_masters.py |
| country | Y | Y | YES | 13 | BOTH_SIDES | VB6:FOMModule.bas,FaCityMast.frm,FaCountryMast.frm; PY:country.py,gues |
| packingorderdetail1 | Y | Y | YES | 12 | BOTH_SIDES | VB6:HMS.bas,RSSaleBill.frm,RsBookingEntry.frm; PY:packingorderdetail.p |
| marketseg | Y | Y | YES | 10 | BOTH_SIDES | VB6:CateringBooking.frm,FOMModule.bas,FrmBookingInquiry.frm; PY:market |
| venuemast | Y | Y | YES | 10 | BOTH_SIDES | VB6:BanqAvailability.frm,CateringBooking.frm,FrmBookingInquiry.frm; PY |
| planmast | Y | Y | YES | 9 | BOTH_SIDES | VB6:CompMast.frm,FOMModule.bas,FdGrpCheckOut.frm; PY:comp_master.py,fo |
| sundrytypefix | Y | Y | YES | 9 | BOTH_SIDES | VB6:DepartSundry.frm,FacilitySundry.frm,FrmInc.frm; PY:banquet_ops_ui. |
| functiontype | Y | Y | YES | 8 | BOTH_SIDES | VB6:CateringBooking.frm,FrmBookingInquiry.frm,FrmEventMast.frm; PY:ban |
| porder1 | Y | Y | YES | 8 | BOTH_SIDES | VB6:FrmInc.frm,HMS.bas,PIndent.frm; PY:inventory.py,purchase.py |
| busssource | Y | Y | YES | 6 | BOTH_SIDES | VB6:CateringBooking.frm,FOMModule.bas,FrmBookingInquiry.frm; PY:busine |
| dispcolor | Y | Y | YES | 6 | BOTH_SIDES | VB6:FdLookUpRoomNo.frm,HMS.bas,RsPOSDisplay.frm; PY:pos_display.py,pos |
| orderpersondetails | Y | Y | YES | 6 | BOTH_SIDES | VB6:HMS.bas,RSTouchScreenSaleBill.frm,RsBookingEntry.frm; PY:orderpers |
| packingorder | Y | Y | YES | 6 | BOTH_SIDES | VB6:HMS.bas,Hotlib.bas,POSAdvanceDepDialog.frm; PY:order_advance_ui.py |
| packingorderdetail | Y | Y | YES | 6 | BOTH_SIDES | VB6:HMS.bas,Hotlib.bas,POSAdvanceDepDialog.frm; PY:pos_display.py,pos_ |
| porder | Y | Y | YES | 6 | BOTH_SIDES | VB6:HMS.bas,pPOrder.frm; PY:inventory.py |
| roundoffsetting | Y | Y | YES | 5 | BOTH_SIDES | VB6:FaTaxVoucher.frm,FdGrpCheckOut.frm,HMS.bas; PY:general_setup.py,sy |
| empcategory | Y | Y | YES | 4 | BOTH_SIDES | VB6:HMS.bas,PrCategoryMast.frm,PrEmployee.frm; PY:hr_masters.py |
| groupcatalog | Y | Y | YES | 4 | BOTH_SIDES | VB6:CateringBooking.frm,HMS.bas,HallMenuCatalog.frm; PY:banquet_master |
| tdscat | Y | Y | YES | 4 | BOTH_SIDES | VB6:CompMast.frm,FaSubGroup.frm,FaTDSCat.frm; PY:fa_masters_ops.py,fa_ |
| jobscheduleddetail | Y | Y | YES | 2 | BOTH_SIDES | VB6:FrmSMSEnviro.frm,HMS.bas,SMSModule.bas; PY:sms_comm.py,sms_enviro. |
| narrmast | Y | Y | YES | 2 | BOTH_SIDES | VB6:FaGlobeNarr.frm,FaNarrMast.frm,HMS.bas; PY:fa_masters_ops.py,narr. |
| roomcat | Y | Y | YES | 2 | BOTH_SIDES | VB6:CompMast.frm,FOMModule.bas,FdCheckOut.frm; PY:advance_deposit_ui.p |
| sessionmast | Y | Y | YES | 2 | BOTH_SIDES | VB6:HMS.bas,POSBillReprint.frm,RSSaleBill.frm; PY:pos_masters.py |
| comp_inclusive | Y | Y | YES | 1 | BOTH_SIDES | VB6:CompMast.frm,HMS.bas,fdWalkInEntry.frm; PY:comp_master.py |
| company | Y | Y | YES | 1 | BOTH_SIDES | VB6:HMS.bas,Hotlib.bas,MDIForm1.frm; PY:company.py,db_backup.py,pos_re |
| einvoiceenviro | Y | Y | YES | 1 | BOTH_SIDES | VB6:HMS.bas,eInvoice.bas,frmCompany.frm; PY:inventory.py |
| enviro | Y | Y | YES | 1 | BOTH_SIDES | VB6:CateringBooking.frm,CompMast.frm,DepartSundry.frm; PY:checkout.py, |
| faenviro | Y | Y | YES | 1 | BOTH_SIDES | VB6:BanqAvailability.frm,FaChqClear.frm,FaEnvron.frm; PY:fa_enviro.py, |
| fixedcharge | Y | Y | YES | 1 | BOTH_SIDES | VB6:FdGrpCheckOut.frm,FrmPackageMast.frm,FrmPlanPackMast.frm; PY:fixch |
| jobschedule | Y | Y | YES | 1 | BOTH_SIDES | VB6:FrmJobScheduler.frm,FrmSMSEnviro.frm,HMS.bas; PY:sms_comm.py,sms_e |
| memcatmast | Y | Y | YES | 1 | BOTH_SIDES | VB6:FdReSetlement.frm,FrmSMSMultiType.frm,HMS.bas; PY:fa_masters_ops.p |
| memenviro | Y | Y | YES | 1 | BOTH_SIDES | VB6:HMS.bas,MemBillPrintingModule.frm,MemFacilityBilling.frm; PY:membe |
| smsenviro | Y | Y | YES | 1 | BOTH_SIDES | VB6:FdCheckOut.frm,FrmSMSEnviro.frm,FrmSMSMultiType.frm; PY:sms_enviro |
| areamast | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,MemAssistant.frm,MembershipMast.frm; PY:area.py |
| assigndelivery | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmDeliveredItemDetail.frm,FrmPOSBillDeletion.frm,HMS.bas; PY:pos_ |
| attendence | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,PrAttend1.frm,PrEmployee.frm; PY:hr_payroll.py,pr_attend1_ |
| blockmast | Y | Y | YES | 0 | BOTH_SIDES | VB6:HKRoomBlock.frm,HMS.bas,frmBlockMast.frm; PY:blockmast.py |
| bookingdetail | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmBookingInquiry.frm,HMS.bas,HallBooking.frm; PY:bookingdetail.py |
| bookinginquiry | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmBookingInquiry.frm,HMS.bas,HallBooking.frm; PY:banquet_ops.py,s |
| bookingmore | Y | Y | YES | 0 | BOTH_SIDES | VB6:FaCurrBalUpdate.frm,HMS.bas,RrRoomReservation.frm; PY:booking.py |
| bookingplandetails | Y | Y | YES | 0 | BOTH_SIDES | VB6:FOMModule.bas,FaCurrBalUpdate.frm,HMS.bas; PY:booking.py |
| budget | Y | Y | YES | 0 | BOTH_SIDES | VB6:FaReports.frm,HMS.bas,rFaRepView.frm; PY:fa_ledger_ops.py,year_end |
| budgetdetails | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmRevenueWiseBudget.frm,HMS.bas,rFomRepView.frm; PY:revenue_budge |
| catalogmast | Y | Y | YES | 0 | BOTH_SIDES | VB6:CateringBooking.frm,HMS.bas,HallChefPreCosting.frm; PY:banquet_mas |
| category | Y | Y | YES | 0 | BOTH_SIDES | VB6:CompMast.frm,FaSubGroup.frm,FrmParty.frm; PY:category.py |
| combopackdetail | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,Hotlib.bas,RsBookingEntry.frm; PY:pos_masters.py |
| companyprofile | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,salmarCompProfile.frm; PY:company_profile.py |
| complaintcategory | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmComplaintClearing.frm,FrmComplaintMast.frm,HMS.bas; PY:guest_se |
| complaintdetail | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmComplaintClearing.frm,FrmComplaintMast.frm,HMS.bas; PY:guest_se |
| datelock | Y | Y | YES | 0 | BOTH_SIDES | VB6:DepOpStk.frm,FaVrEnt.frm,HMS.bas; PY:sys_config.py,year_end.py |
| deliveryboy | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmDeliveredItemDetail.frm,FrmDeliveryBoyMast.frm,HMS.bas; PY:pos_ |
| denominationdetail | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmDenomination.frm,HMS.bas; PY:denomination.py,facility_billing.p |
| denominationformat | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmDenomination.frm,HMS.bas; PY:denomination.py,denomination_ui.py |
| depart1 | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,RSSaleBill.frm,RsBookingEntry.frm; PY:depart1.py |
| epabx_data | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,rRepTel.frm,rRepTelPreview.frm; PY:epabx_ops.py,shell.py |
| expsheet | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmExpense.frm,FrmReceivePayment.frm,HMS.bas; PY:expsheet.py |
| facilitybill | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,frmCompany.frm,frmFacilityBillAdv.frm; PY:facility_billing |
| facilitybill1 | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,frmCompany.frm,frmFacilityBillAdv.frm; PY:facility_billing |
| facilitybill2 | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,frmFacilityBillAdv.frm,rFomRepView.frm; PY:facility_billin |
| facilitymast | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmFacilityMast.frm,FrmLocationFacilities.frm,FrmMeterReading.frm; |
| featuremast | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmVenueFeat.frm,FrmVenueMast.frm,HMS.bas; PY:featuremast.py |
| forex | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmForExRec.frm,FrmForeignExMast.frm,HMS.bas; PY:forex_txn.py,fore |
| forextrans | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmExpense.frm,FrmForExRec.frm,FrmReceivePayment.frm; PY:forex_rec |
| freeitemdetail | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,NewHappyHours.frm,RSSaleBill.frm; PY:pos_happy.py |
| groupprof | Y | Y | YES | 0 | BOTH_SIDES | VB6:GroupProfile.frm,HMS.bas,RrRoomReservation.frm; PY:banquet_masters |
| guestcomments | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,frmGuestComments.frm; PY:banquet_ops_ui.py,guest_services. |
| guestmessage | Y | Y | YES | 0 | BOTH_SIDES | VB6:FindMess.frm,FrmHouGuestMsg.frm,HMS.bas; PY:checkin.py,fo_ops.py,g |
| guestparam | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,frmGuestParamMast.frm; PY:general_setup_ui.py |
| gueststat | Y | Y | YES | 0 | BOTH_SIDES | VB6:FOMModule.bas,FdCheckOut.frm,FdGrpCheckOut.frm; PY:guest_services. |
| guestwakeup | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmGuestWakeUp.frm,HMS.bas; PY:guest_services.py |
| hallbook1 | Y | Y | YES | 0 | BOTH_SIDES | VB6:CateringBooking.frm,FaCurrBalUpdate.frm,HMS.bas; PY:banquet_ops.py |
| hallprecosting | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,HallChefPreCosting.frm; PY:banquet_ops_ui.py,pos_hall.py |
| hallsale1est | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,HallBillEstimate.frm; PY:pos_hall.py |
| hallsale2 | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,HallBill.frm,rFomRepView.frm; PY:banquet_ops.py,reports.py |
| hallstock | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,HallBill.frm,HallEstimate.frm; PY:hall_booking.py,pos_hall |
| hallstockest | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,HallBillEstimate.frm; PY:pos_hall.py |
| happyhours | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,RsKOTEntry.frm,RsTokenEntry.frm; PY:pos_happy.py,scheme.py |
| happyhourshead | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,pHappyHours.frm; PY:pos_happy.py,scheme.py |
| holiday | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,PrAttend1.frm,prHoliday.frm; PY:hr_masters.py |
| kclstk | Y | Y | YES | 0 | BOTH_SIDES | VB6:DepOpStk.frm,HMS.bas,kClStk.frm; PY:fa_masters_ops.py,kitchen_clst |
| leave_ench | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,PrEmployee.frm,PrLeavench.frm; PY:hr_payroll.py |
| ledgermerge | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmSerialiseVr.frm,HMS.bas; PY:voucher_serialisation_ops.py |
| ledgermmerge | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmSerialiseVr.frm,HMS.bas; PY:voucher_serialisation_ops.py |
| ledgerref | Y | Y | YES | 0 | BOTH_SIDES | VB6:FaReports.frm,FaVrEnt.frm,HMS.bas; PY:fa_ledger_ops.py,fa_voucher. |
| loan | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,PrEmployee.frm,PrLoan.frm; PY:hr_payroll.py |
| locationfacility | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmLocationFacilities.frm,FrmMeterReading.frm,HMS.bas; PY:facility |
| lostfounddetail | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmClaimEntry.frm,FrmLostFound.frm,HMS.bas; PY:guest_services.py,s |
| membershiprevmast | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,MemAssistant.frm,MemFacilityBilling.frm; PY:members_master |
| membill | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,MemAssistant.frm,MemBillPrintingModule.frm; PY:member_bill |
| membill1 | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,MemAssistant.frm,MemFacilityBilling.frm; PY:membill1.py |
| memcatchngdetail | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,MemberModule.bas,memCatChngEntry.frm; PY:member_billing.py |
| memcatfacility | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,MemFacilityEntry.frm,memCategoryFacilities.frm; PY:memcatf |
| memfacilitybilling | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,MemFacilityEntry.frm,RsStatusScreen.frm; PY:memfacilitybil |
| memproposedmeminf | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,MemberProposedMemInf.frm,MembershipMast.frm; PY:member_bil |
| messaging | Y | Y | YES | 0 | BOTH_SIDES | VB6:EmptyInbox.frm,HMS.bas,Inbox.frm; PY:messaging_ops.py,misc_parity_ |
| overtime | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,PrEmployee.frm,prOverTime.frm; PY:hr_payroll.py |
| plan1 | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmPackageMast.frm,FrmPlanPackMast.frm,HMS.bas; PY:packagemaster.p |
| plandetails | Y | Y | YES | 0 | BOTH_SIDES | VB6:FdGrpCheckOut.frm,FdReSetlement.frm,HMS.bas; PY:fo_ops.py,folio.py |
| plantokendetails | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmPackageMast.frm,HMS.bas,rFomRepView.frm; PY:packagemaster.py,pl |
| pos_sbill | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmPOSRecycleData.frm,HMS.bas,Hotlib.bas; PY:nightaudit.py,pos_sal |
| printersetup | Y | Y | YES | 0 | BOTH_SIDES | VB6:FaTaxVoucher.frm,FdCheckOut.frm,FdGrpCheckOut.frm; PY:printersetup |
| printmast | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,frmMod_Print.frm,frmMod_Print1.frm; PY:printersetup.py,pri |
| roomblockout | Y | Y | YES | 0 | BOTH_SIDES | VB6:FdLookUpRoom.frm,FdLookUpRoomNo.frm,FrmHouseStatus.frm; PY:room_oc |
| roomcheckoutstatus | Y | Y | YES | 0 | BOTH_SIDES | VB6:FdCheckOut.frm,FdGrpCheckOut.frm,FdGrpdetCheckOut.frm; PY:roomchec |
| roomfeature | Y | Y | YES | 0 | BOTH_SIDES | VB6:FdLookUpRoomNo.frm,FrmRoomFeatureMast.frm,FrmRoomMast.frm; PY:gene |
| roommast1 | Y | Y | YES | 0 | BOTH_SIDES | VB6:FdLookUpRoomNo.frm,FrmRoomMast.frm,HMS.bas; PY:roommast1.py |
| rwparameter | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,Hotlib.bas,RewardPointParam1.frm; PY:rwparameter.py |
| salarylog | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,prSalCreate.frm; PY:salarylog.py |
| schemeitemdetail | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,NewHappyHours.frm,RSSaleBill.frm; PY:pos_happy.py |
| schememast | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,NewHappyHours.frm,OutLetMast.frm; PY:pos_masters.py,scheme |
| seasonmast | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,Hotlib.bas,RrRoomReservation.frm; PY:seasonmaster.py |
| seasonmast1 | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,Hotlib.bas,RrRoomReservation.frm; PY:seasonmaster.py |
| shiftmast | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,RSSaleBill.frm,RsKitchenStk.frm; PY:pos_masters.py |
| site | Y | Y | YES | 0 | BOTH_SIDES | VB6:CompMast.frm,FaMagic.frm,FaReports.frm; PY:sys_config.py |
| smartcardledger | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,Hotlib.bas,ModuleSmartCard.bas; PY:smartcard_ops.py |
| smartcardmaster | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,ModuleSmartCard.bas,SmartCardLostReIssue.frm; PY:smartcard |
| smartcardregistration | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,Hotlib.bas,MemAutoSettleCardBalance.frm; PY:folio.py,smart |
| smartcardreissuedetail | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,SmartCardLostReIssue.frm; PY:smartcard_ops.py |
| splitbilldetail | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,Hotlib.bas,RsSaleBillSplit.frm; PY:pos_kot.py |
| splitsale1 | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmPOSRecycleData.frm,HMS.bas,Hotlib.bas; PY:folio.py,nightaudit.p |
| splitsale2 | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmPOSRecycleData.frm,HMS.bas,Hotlib.bas; PY:pos_sales.py |
| suntranest | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,HallBillEstimate.frm; PY:pos_hall.py |
| suntranfacility | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,frmCompany.frm,frmFacilityBillAdv.frm; PY:facility_billing |
| suntranhest | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,HallBillEstimate.frm; PY:pos_hall.py |
| tdscerti | Y | Y | YES | 0 | BOTH_SIDES | VB6:FaTDSCertificate.frm,HMS.bas; PY:tdscerti.py |
| tdschal | Y | Y | YES | 0 | BOTH_SIDES | VB6:FaTDSCertificate.frm,FaTDSChal.frm,HMS.bas; PY:fa_tds_ops.py,repor |
| tdschal1 | Y | Y | YES | 0 | BOTH_SIDES | VB6:FaTDSCertificate.frm,FaTDSChal.frm,HMS.bas; PY:fa_tds_ops.py,repor |
| telcallcode | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,TelCallCodeMast.frm,TelCallTypeMast.frm; PY:epabx_masters. |
| telcalltype | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmInc.frm,HMS.bas,TelCallCodeMast.frm; PY:epabx_masters.py,shell. |
| telext | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,TelCallEntry.frm,TelExtensionMast.frm; PY:epabx_masters.py |
| tempposdel | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmFomBillDeletion.frm,FrmPOSBillDeletion.frm,FrmPOSBillModificati |
| token | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,RSSaleBill.frm,RsTokenEntry.frm; PY:pos_kot.py |
| transdel | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,Transfer.frm,mdlDataTransfer.bas; PY:data_transfer.py |
| transin | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,Transfer.frm,mdlDataTransfer.bas; PY:data_transfer.py |
| transundetail | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,RsKitchenMaterial.frm; PY:excise_gate_pass.py |
| trantaxdetail | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,RsKitchenMaterial.frm; PY:excise_gate_pass.py |
| travel1 | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,TravelAgencyPost.frm; PY:travel_post.py |
| travel2 | Y | Y | YES | 0 | BOTH_SIDES | VB6:HMS.bas,TravelAgencyPost.frm; PY:travel_post.py |
| venuefeatures | Y | Y | YES | 0 | BOTH_SIDES | VB6:FrmVenueMast.frm,HMS.bas; PY:banquet_masters.py |
| voucher_exclude | Y | Y | YES | 0 | BOTH_SIDES | VB6:FaVrEnt.frm,FaVtype.frm,HMS.bas; PY:fa_ledger_ops.py,general_setup |
| voucher_include | Y | Y | YES | 0 | BOTH_SIDES | VB6:FaVrEnt.frm,FaVtype.frm,HMS.bas; PY:fa_ledger_ops.py,general_setup |
