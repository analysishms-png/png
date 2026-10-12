# MODULE_TEST_MATRIX.md
Generated baseline for HMS QA + VB6 migration loop. Status vocabulary per spec section 25.

MODULE|SCREEN|VB6 FORM|PYTHON FILE|MENU PATH|ACCESSIBLE|SCREENSHOT|FUNCTIONS TESTED|BUGS|VB6 LOGIC CHECKED|DATABASE CHECKED|REPORT CHECKED|PRINT CHECKED|REGRESSION|STATUS
login|User Information|frmPassword.frm / MDIForm1 Login|HMS_py/ui/shell.py (LoginDialog)|Login window|YES|qa_evidence/screenshots/login/|PASS(SA/kanpur, live-DB usermaster)|0|check_login core/auth.py|N/A|N/A|N/A|N/A|VERIFIED
company|Company Details|Company selection (MDI)|HMS_py/ui/shell.py (CompanyDialog)|Post-login|YES|qa_evidence/screenshots/company/|MMR 2026-27 auto-select + Login|0|-|MOONData2627 connection ok|N/A|N/A|N/A|VERIFIED
business-date|Shell title/status|global vars in modLog/Common|HMS_py core/session|Shell|YES|qa_evidence/screenshots/shell/|Business date surfaced in title year 2026-27|0|-|-|N/A|N/A|N/A|VERIFIED(year ctx)
main-setup|Multiple master screens|CompMast etc.|HMS_py/ui/main_setup|Sidebar > main setup|YES|qa_evidence/screenshots/main-setup/|Main Setup module opened, menubar drives leaf forms; Tax Master/Tax Structure/Payment Type/Parameter/Printing Parameters/Printing Setup opened, data loaded + browse|2 (BUG-MS-09, BUG-MS-10 both fixed + verified)|DONE (audit 20261002)|DONE|Printing report verified 1 row|Printing Setup viewer verified|DONE|VERIFIED
reservation|-|-|-|Sidebar > reservation|PENDING
front-office|Room Status, WalkIn CheckIn|roomstatus/checkin frm|HMS_py/ui/roomstatus_ui.py, checkout_ui|Sidebar > front office > Operations|YES|qa_evidence/screenshots/fo/|Front Office menubar drives; WalkIn CheckIn wizard opens + 3 steps; Room Status grid + occupancy summary + housekeeping actions + folio/guest/departure cols load; 28 rooms, Occ 21.4%|1 (BUG-FO-01 report-hijack, fixed)|rs_ui|FOMBillDetails/RoomMast|N/A|N/A|N/A|IN_PROGRESS
house-keeping|-|-|-|Sidebar > house keeping|PENDING
inventory|-|-|-|Sidebar > inventory|PENDING
pos|-|-|-|Sidebar > point of sale|PENDING
banquet|-|-|-|Sidebar > banquet|PENDING
night-audit|-|-|-|Sidebar > night audit|PENDING
hr-payroll|-|-|-|Sidebar > hr/payroll|PENDING
finance|-|-|-|Sidebar > finance|PENDING
extras|-|-|-|Sidebar > extras|PENDING
epabx|-|-|-|Sidebar > EPABX|PENDING
messaging|-|-|-|Sidebar > Messaging|PENDING
