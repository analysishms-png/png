import json

result = {
  "vb6_forms_ported": [
    # Part C - Front Office
    {"vb6_form": "fdCheckIn.frm", "python_module": "core/checkin.py (+ ui/registration_entry_ui.py)", "status": "ported"},
    {"vb6_form": "FdCheckOut.frm", "python_module": "core/checkout.py (+ ui/checkout_ui.py)", "status": "ported"},
    {"vb6_form": "FdReSettlelement.frm", "python_module": "core/folio.py", "status": "ported"},
    {"vb6_form": "fdPaymentCharge.frm", "python_module": "core/folio.py", "status": "ported"},
    {"vb6_form": "fdPostChrg.frm", "python_module": "core/expenseentry.py", "status": "ported"},
    {"vb6_form": "RsBookingEntry.frm", "python_module": "core/reservation.py + core/booking.py", "status": "ported"},
    {"vb6_form": "FdRoomDisplay.frm", "python_module": "core/roomstatus.py + ui/roomstatus_ui.py", "status": "ported"},
    {"vb6_form": "GuestProfile.frm", "python_module": "core/guestprof.py", "status": "ported"},
    {"vb6_form": "fdNDAcPostChrg.frm", "python_module": "core/nightaudit.py", "status": "ported"},
    {"vb6_form": "fdRoomOcc.frm", "python_module": "core/room_occ.py", "status": "ported"},
    {"vb6_form": "fdAmendEntry.frm", "python_module": "core/folio.py", "status": "ported"},
    # Part D - Finance & Accounting
    {"vb6_form": "FaVrEnt.frm", "python_module": "core/fa_voucher.py", "status": "ported"},
    {"vb6_form": "FaAdjust.frm", "python_module": "core/fa_ledger_ops.py", "status": "ported"},
    {"vb6_form": "FaMagic.frm", "python_module": "core/fa_reports.py", "status": "ported"},
    {"vb6_form": "FaReports.frm", "python_module": "core/fa_reports.py", "status": "ported"},
    {"vb6_form": "FaSubGroup.frm", "python_module": "core/ledger.py", "status": "ported"},
    {"vb6_form": "FaCurrBalUpdate.frm", "python_module": "core/fa_ledger_ops.py", "status": "ported"},
    {"vb6_form": "FaEnvron.frm", "python_module": "core/fa_enviro.py", "status": "ported"},
    {"vb6_form": "FaVtype.frm", "python_module": "core/voucher_type.py", "status": "ported"},
    {"vb6_form": "FaNarrMast.frm", "python_module": "core/narr.py", "status": "ported"},
    {"vb6_form": "FrmTaxStruMast.frm", "python_module": "core/taxstru.py", "status": "ported"},
    {"vb6_form": "FaGrEnt.frm", "python_module": "core/acgroup.py", "status": "ported"},
    # Part E - POS / Restaurant
    {"vb6_form": "RsKOTEntry.frm", "python_module": "core/pos_kot.py", "status": "ported"},
    {"vb6_form": "RSSaleBill.frm", "python_module": "core/pos_sales.py", "status": "ported"},
    {"vb6_form": "FrmItemMast.frm", "python_module": "core/item.py", "status": "ported"},
    {"vb6_form": "FrmItemGroupMast.frm", "python_module": "core/pos_masters.py", "status": "ported"},
    {"vb6_form": "FrmItemCatMast.frm", "python_module": "core/pos_masters.py", "status": "ported"},
    {"vb6_form": "DepartMast.frm", "python_module": "core/depart.py", "status": "ported"},
    {"vb6_form": "FrmWaiterMast.frm", "python_module": "core/pos_masters.py", "status": "ported"},
    # Part F - Masters & Setup
    {"vb6_form": "frmEnviro.frm", "python_module": "core/enviro.py", "status": "ported"},
    {"vb6_form": "UserMast.frm", "python_module": "core/usermaster.py", "status": "ported"},
    {"vb6_form": "FaCityMast.frm", "python_module": "core/city.py", "status": "ported"},
    {"vb6_form": "FaStateMast.frm", "python_module": "core/state.py", "status": "ported"},
    {"vb6_form": "FaCountryMast.frm", "python_module": "core/country.py", "status": "ported"},
    {"vb6_form": "FrmRoomMast.frm", "python_module": "core/roommaster.py", "status": "ported"},
    {"vb6_form": "frmCompany.frm", "python_module": "core/company.py", "status": "ported"},
    {"vb6_form": "frmFixedChargeMast.frm", "python_module": "core/fixcharge.py", "status": "ported"},
    {"vb6_form": "FrmPlanPackMast.frm", "python_module": "core/plans.py", "status": "ported"},
    {"vb6_form": "FrmRoomCatMast.frm", "python_module": "core/roomcategory.py", "status": "ported"},
    {"vb6_form": "FrmBusinessSrc.frm", "python_module": "core/businesssource.py", "status": "ported"},
    {"vb6_form": "FrmMarketSeg.frm", "python_module": "core/marketsegment.py", "status": "ported"},
    {"vb6_form": "SundryMast.frm", "python_module": "core/sundry.py", "status": "ported"},
    {"vb6_form": "frmUnitMast.frm", "python_module": "core/unit.py", "status": "ported"},
    {"vb6_form": "frmRevGroup.frm", "python_module": "core/revenue_budget.py", "status": "ported"},
    {"vb6_form": "FrmEventMast.frm", "python_module": "core/venue.py", "status": "ported"},
    {"vb6_form": "DMTree.frm", "python_module": "core/menu.py", "status": "ported"},
    # Part G - Night Audit & Reports
    {"vb6_form": "rFomRepView.frm", "python_module": "core/reports.py + core/fa_reports.py", "status": "ported"},
    {"vb6_form": "rFaRepView.frm", "python_module": "core/reports.py + core/fa_reports.py", "status": "ported"},
    {"vb6_form": "FrmRevenueWiseBudget.frm", "python_module": "core/revenue_budget.py", "status": "ported"},
    {"vb6_form": "FrmNAMessage.frm", "python_module": "ui/nightaudit_reports_ui.py", "status": "ported"},
    # Part H - Inventory & Purchase
    {"vb6_form": "pPOrder.frm", "python_module": "core/purchase.py", "status": "ported"},
    {"vb6_form": "DepOpStk.frm", "python_module": "core/inventory.py", "status": "ported"},
    {"vb6_form": "pGIss.frm", "python_module": "core/inventory.py", "status": "ported"},
    {"vb6_form": "pPBill.frm", "python_module": "core/purchase.py", "status": "ported"},
    {"vb6_form": "Godown.frm", "python_module": "core/inventory.py", "status": "ported"},
    {"vb6_form": "PIndent.frm", "python_module": "core/inventory.py", "status": "ported"},
    # Part I - HR, Members, Banquet
    {"vb6_form": "prSalCreate.frm", "python_module": "core/hr_payroll.py", "status": "ported"},
    {"vb6_form": "prAttend.frm", "python_module": "core/hr_payroll.py", "status": "ported"},
    {"vb6_form": "PrLoan.frm", "python_module": "core/hr_payroll.py", "status": "ported"},
    {"vb6_form": "prHoliday.frm", "python_module": "core/hr_payroll.py", "status": "ported"},
    {"vb6_form": "PrEmployee.frm", "python_module": "core/hr_masters.py", "status": "ported"},
    {"vb6_form": "MemBillPrintingModule.frm", "python_module": "core/member_billing.py", "status": "ported"},
    {"vb6_form": "HallBooking.frm", "python_module": "core/hall_booking.py", "status": "ported"},
    {"vb6_form": "HallBill.frm", "python_module": "core/hall_booking.py", "status": "ported"},
    {"vb6_form": "MemCatMast.frm", "python_module": "core/members_masters.py", "status": "ported"},
    {"vb6_form": "MemberEnviro.frm", "python_module": "core/members_masters.py", "status": "ported"},
    {"vb6_form": "SmartCardMast.frm", "python_module": "core/smartcard.py", "status": "ported"},
    {"vb6_form": "SmartCardRegistration.frm", "python_module": "core/smartcard_ops.py", "status": "ported"},
    {"vb6_form": "FrmVenueMast.frm", "python_module": "core/venue.py", "status": "ported"},
  ],
  "vb6_forms_missing": [
    "MDIForm1.frm",
    "frmWelcome.frm",
    "frmYearEnd.frm",
    "eInvoice.bas",
    "frmGodrejLockSettings.frm",
    "MemberSMS.frm",
    "FrmJobScheduler.frm"
  ],
  "missing_tables": [
    "HallBill",
    "CateringBook",
    "EventMast",
    "BanquetSundry",
    "TelCall",
    "Extension",
    "SmartCard",
    "RewardPoint",
    "BookingInquiry"
  ],
  "known_bugs": [
    {"id": "1", "module": "registration_entry_ui.py", "description": "Was bypassing checkin.py core"},
    {"id": "2", "module": "checkout_ui.py", "description": "checkout_yn key error at line 183"},
    {"id": "3", "module": "nightaudit.py", "description": "PayCharge DocId passed to FolioLog"},
    {"id": "4", "module": "nightaudit.py", "description": "Hardcoded '2026' (now fixed with vprefix param)"},
    {"id": "5", "module": "nightaudit.py", "description": "Wrong POS counter"},
    {"id": "6", "module": "folio_ui.py", "description": "Hardcoded 'KK' and '2026'"},
    {"id": "7", "module": "booking_ops_ui.py", "description": "Cancel via broken update()"},
    {"id": "8", "module": "pos_sales.py", "description": "vals[50] duplicate index"},
    {"id": "9", "module": "inventory.py", "description": "Hardcoded KK000265"},
    {"id": "10", "module": "fa_ledger_ops.py", "description": "f-string SQL injection (17 functions)"},
    {"id": "11", "module": "hr_payroll.py", "description": "insert_loan param count mismatch"},
    {"id": "12", "module": "purchase.py", "description": "param count mismatches"},
    {"id": "13", "module": "nightaudit.py", "description": "N+1 query in get_inhouse_rooms"},
    {"id": "14", "module": "multiple", "description": "21 occurrences of SELECT * (use column-specific SELECT)"},
    {"id": "15", "module": "account_merge_ui.py", "description": "Import path issue (pre-existing)"}
  ],
  "unimplemented_features": [
    "Crystal Reports / DataReport integration",
    "Touch Screen UI variants (10+ forms)",
    "Smart Card encode/decode (XOR cipher)",
    "Door Lock integration (Win32 API)",
    "E-Invoice/GST API integration",
    "SMS sending via HTTP (MobWebAPI.bas)",
    "Win32 SendInput automation",
    "ZIP compression (CGZipFiles.cls)",
    "Tally XML export",
    "Multi-site data transfer (mdlDataTransfer.bas)"
  ]
}

with open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\VB6_PYTHON_EXTRACTION.json", "w") as f:
    json.dump(result, f, indent=2)

print("JSON written successfully.")
print(f"Total ported forms: {len(result['vb6_forms_ported'])}")
print(f"Total missing forms: {len(result['vb6_forms_missing'])}")
print(f"Total missing tables: {len(result['missing_tables'])} (document says 20, 9 named)")
print(f"Total known bugs: {len(result['known_bugs'])}")
print(f"Total unimplemented features: {len(result['unimplemented_features'])}")
