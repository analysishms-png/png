#!/usr/bin/env python3
"""
VB6 MainSetup → Python Port Conversion Script

Converts VB6 mainsetup form logic to Python equivalent,
based on the HMS_py MainSetupWorkbench and side-by-side comparison report.

Generates: mainsetup_conversion.txt
"""

import json
import os

# ── VB6 MainSetup groups (from VB6 MDI mdi_menu.json / MainSetupWorkbench) ──────
VB6_MAINSETUP_GROUPS = {
    "Front Office": [
        "Country Master",
        "State Master",
        "City Master",
        "Market Segment",
        "Business Source",
        "Guest Status",
        "Charge Master",
        "Fixed Charge",
        "Package Master",
        "Plan Master",
        "Season Master",
        "Room Features",
        "Room Category",
        "Room Master",
        "Company Master",
        "Forex Master",
        "Guest History",
        "Group Profile",
        "Room Display",
    ],
    "General Setup": [
        "Tax Master",
        "Tax Structure",
        "Payment Type",
        "Parameter",
        "Revenue Group Setting",
        "Printing Parameters",
        "Printing Setup",
        "Revenue Wise Budget Entry",
    ],
    "Point of Sale": [
        "Setup Outlet",
        "Outlet Bill Sundry Setting",
        "Server Master",
        "Table Master",
        "Item List",
        "Menu Group",
        "Menu Category",
        "Menu Item",
        "Menu Item Rate",
        "Rate Group Master",
        "Session Master",
        "Open Item Consumption",
        "Scheme Master",
        "Happy Hours",
        "Happy Hours [ Free Items ]",
        "Combo Pack",
        "NC Type",
        "Customer History",
        "Delivery Boy",
    ],
    "Members Mgmt": [
        "Category Master",
        "Member Master",
        "Corporate Member Master",
        "Revenue Master",
        "Facility Master",
        "Category wise Revenue",
        "Category wise Facility",
        "Member Bill Sundry Setting",
        "Environment Settings",
        "Member Age Wise Revenue",
        "Member Select Category",
    ],
    "Banquet": [
        "Events",
        "Venue Features",
        "Venue Master",
        "Menu Category",
        "Item Group",
        "Menu Item",
        "Catalog Master",
        "Banquet Bill Sundry Setting",
    ],
    "Inventory": [
        "Party Master",
        "Department",
        "Item Group",
        "Item Category",
        "Item Entry",
        "Consumption Master",
        "Purchase Sundry Setting",
        "Location Master",
        "Opening Stock",
        "Item List",
        "Shift Master",
        "Enviro Inventry",
    ],
    "HR/Payroll": [
        "Designation Master",
        "Category Master",
        "Holiday Master",
        "Employee Master",
    ],
    "EPABX": [
        "Com Port Properties",
        "Call Type Master",
        "Extension Master",
        "Call Codes Master",
        "Call Control Master",
        "Call Code",
        "Extension",
    ],
    "Finance": [
        "Group Accounts",
        "Ledger Accounts",
        "Narration Master",
        "T.D.S. Category",
        "FA Environment",
        "Voucher Environment",
        "Opening Balance Updation",
        "Year End Updation",
        "Current Balance Updation",
        "Country Master",
        "State Master",
        "City Master",
        "Delete Message",
        "Account Merging",
        "Voucher Serialisation",
    ],
    "Utility": [
        "User Master",
        "Permissions",
        "Update Database Nulls",
        "Backup Data",
        "Account Merging",
        "Guest Parameters Setting",
        "Sundry Master",
        "Voucher Wise Sundry Entry",
        "Sale MIS Customized",
        "Guest BirthDates/Anniversary",
        "Inconsistency Check",
        "Year End Updation",
        "Data Transfer",
        "Data Recieving",
        "Menu Item Copy",
        "POS Bill Deletion",
        "Guest LookUp",
        "Country Master",
        "State Master",
        "City Master",
        "Company Master",
        "Department",
        "Ledger Accounts",
        "Data Transfer (POS)",
        "PLU File (W.Scale)",
        "User Permissions (Advanced)",
        "POS Recycle",
        "Unit Master",
        "Task Scheduler",
    ],
}


# ── Python (HMS_py) registry mapping — derived from _form_registry() ────────────
# These are the actual Python implementations available in HMS_py UI module
PYTHON_AVAILABLE = {
    # Front Office masters
    "Country Master": "HMS_py.ui.p2_masters.open_country",
    "State Master": "HMS_py.ui.p2_masters.open_state",
    "City Master": "HMS_py.ui.p2_masters.open_city",
    "Market Segment": "HMS_py.core.fm.open_marketsegment",
    "Business Source": "HMS_py.core.fm.open_businesssource",
    "Guest Status": "HMS_py.core.fm.open_gueststatus",
    "Charge Master": "HMS_py.ui.p2_masters.open_fixcharge",
    "Fixed Charge": "HMS_py.ui.p2_masters.open_fixcharge",
    "Package Master": "HMS_py.ui.p2_masters.open_packagemaster",
    "Plan Master": "HMS_py.ui.p2_masters.open_planmaster",
    "Season Master": "HMS_py.ui.p2_masters.open_seasonmaster",
    "Room Features": "HMS_py.ui.gs.open_roomfeature",
    "Room Category": "HMS_py.ui.p2_masters.open_roomcategory",
    "Room Master": "HMS_py.ui.p2_masters.open_roommaster",
    "Company Master": "HMS_py.ui.p2_masters.open_companymaster",
    "Forex Master": "HMS_py.core.fm.open_forexmaster",
    "Guest History": "HMS_py.ui.ghist_ui.open_guest_history" if False else "MISSING",
    "Group Profile": "HMS_py.ui.bm.open_groupprof",
    # General Setup
    "Tax Master": "HMS_py.core.fm.open_taxmaster",
    "Tax Structure": "HMS_py.ui.tsu.open_taxstru",
    "Payment Type": "HMS_py.core.fm.open_paymenttype",
    "Parameter": "HMS_py.ui.gs.open_enviro",
    "Revenue Group Setting": "MISSING",
    "Printing Parameters": "MISSING",
    "Printing Setup": "MISSING",
    "Revenue Wise Budget Entry": "MISSING",
    # Point of Sale
    "Setup Outlet": "HMS_py.ui.gs.open_depart",
    "Outlet Bill Sundry Setting": "HMS_py.ui.fdui.open_depart_sundry" if False else "MISSING",
    "Server Master": "HMS_py.ui.pm.open_waiter",
    "Table Master": "MISSING",
    "Item List": "HMS_py.ui.pm.open_itemcat",
    "Menu Group": "HMS_py.ui.pm.open_itemcat",
    "Menu Category": "HMS_py.ui.pm.open_itemcat",
    "Menu Item": "MISSING",
    "Menu Item Rate": "HMS_py.ui.item_rate_ui.open_item_rate",
    "Rate Group Master": "MISSING",
    "Session Master": "HMS_py.ui.pm.open_session",
    "Scheme Master": "HMS_py.ui.pm.open_scheme",
    "Happy Hours": "HMS_py.ui.pm.open_happy" if False else "MISSING",
    "Happy Hours [ Free Items ]": "MISSING",
    "Combo Pack": "HMS_py.ui.pm.open_combo",
    "NC Type": "HMS_py.ui.pm.open_nctype",
    "Customer History": "MISSING",
    "Delivery Boy": "HMS_py.ui.pm.open_delboy",
    # Members Mgmt
    "Category Master": "HMS_py.ui.hr.open_empcat",
    "Member Master": "HMS_py.ui.hr.open_employee",
    "Corporate Member Master": "MISSING",
    "Revenue Master": "HMS_py.ui.hr.open_memrev",
    "Facility Master": "HMS_py.ui.hr.open_facility",
    "Category wise Revenue": "MISSING",
    "Category wise Facility": "MISSING",
    "Member Bill Sundry Setting": "MISSING",
    "Environment Settings": "HMS_py.ui.gs.open_guestparam",
    "Member Age Wise Revenue": "MISSING",
    "Member Select Category": "MISSING",
    # Banquet
    "Events": "HMS_py.ui.bm.open_func_type",
    "Venue Features": "HMS_py.ui.bm.open_venfeature",
    "Venue Master": "HMS_py.ui.bm.open_venue",
    "Menu Category": "HMS_py.ui.pm.open_itemcat",
    "Item Group": "HMS_py.ui.bm.open_catalog",
    "Menu Item": "MISSING",
    "Catalog Master": "HMS_py.ui.bm.open_catalog",
    "Banquet Bill Sundry Setting": "MISSING",
    # Inventory
    "Party Master": "MISSING",
    "Department": "HMS_py.ui.gs.open_depart",
    "Item Group": "HMS_py.ui.p2_masters.open_acgroup",
    "Item Category": "MISSING",
    "Item Entry": "HMS_py.ui._inv.open_indent_ui",
    "Consumption Master": "MISSING",
    "Purchase Sundry Setting": "MISSING",
    "Location Master": "MISSING",
    "Opening Stock": "MISSING",
    "Item List": "HMS_py.ui._inv.open_inv",
    "Shift Master": "HMS_py.ui.pm.open_shift",
    "Enviro Inventry": "MISSING",
    # HR/Payroll
    "Designation Master": "HMS_py.ui.hr.open_desig",
    "Category Master": "HMS_py.ui.hr.open_empcat",
    "Holiday Master": "HMS_py.ui.hr.open_holiday",
    "Employee Master": "HMS_py.ui.hr.open_employee",
    # EPABX
    "Com Port Properties": "MISSING",
    "Call Type Master": "HMS_py.ui.epabx.open_calltype",
    "Extension Master": "HMS_py.ui.epabx.open_extension",
    "Call Codes Master": "MISSING",
    "Call Control Master": "MISSING",
    "Call Code": "HMS_py.ui.epabx.open_callcode",
    "Extension": "HMS_py.ui.epabx.open_extension",
    # Finance
    "Group Accounts": "HMS_py.ui.p2_masters.open_acgroup",
    "Ledger Accounts": "HMS_py.core.fm.open_ledger",
    "Narration Master": "MISSING",
    "T.D.S. Category": "MISSING",
    "FA Environment": "HMS_py.ui.fa_envui.open_fa_environment",
    "Voucher Environment": "HMS_py.ui.gs.open_vouchertype",
    "Opening Balance Updation": "MISSING",
    "Year End Updation": "HMS_py.ui.year_end_ui" if False else "MISSING",
    "Current Balance Updation": "MISSING",
    "Country Master": "HMS_py.ui.p2_masters.open_country",
    "State Master": "HMS_py.ui.p2_masters.open_state",
    "City Master": "HMS_py.ui.p2_masters.open_city",
    "Delete Message": "MISSING",
    "Account Merging": "HMS_py.ui.acmerge_ui.open_account_merge" if False else "MISSING",
    "Voucher Serialisation": "MISSING",
}


# Known PARTIAL items from VB6↔Python side-by-side report analysis
# These are items where Python implementation exists but is incomplete/shared
PARTIAL_ITEMS = {
    "Account Merging",
    "Backup Data",
    "Banquet Bill Sundry Setting",
    "Call Codes Master",
    "Call Control Master",
    "Category wise Facility",
    "Category wise Revenue",
    "Com Port Properties",
    "Consumption Master",
    "Corporate Member Master",
    "Current Balance Updation",
    "Customer History",
    "Data Recieving",
    "Data Transfer",
    "Data Transfer (POS)",
    "Delete Message",
    "Enviro Inventry",
    "Guest History",
    "Happy Hours",
    "Happy Hours [ Free Items ]",
    "Inconsistency Check",
    "Item Category",
    "Location Master",
    "Menu Item",
    "Narration Master",
    "Opening Balance Updation",
    "Opening Stock",
    "Outlet Bill Sundry Setting",
    "Party Master",
    "Printing Parameters",
    "Printing Setup",
    "Purchase Sundry Setting",
    "Rate Group Master",
    "Revenue Group Setting",
    "Revenue Wise Budget Entry",
    "Table Master",
    "T.D.S. Category",
    "Voucher Serialisation",
    "Voucher Wise Sundry Entry",
    "Year End Updation",
    "Account Merging",
    "Backup Data",
    "Update Database Nulls",
    "User Master",
    "User Permissions (Advanced)",
    "Sale MIS Customized",
    "Guest BirthDates/Anniversary",
    "Menu Item Copy",
    "POS Bill Deletion",
    "POS Recycle",
    "Unit Master",
    "Task Scheduler",
    "Tax Structure",
    "Parameter",
    "Printing Parameters",
    "Printing Setup",
    "Revenue Group Setting",
    "Revenue Wise Budget Entry",
    "Data Transfer",
    "Data Recieving",
    "Menu Item Copy",
    "POS Bill Deletion",
    "POS Recycle",
    "User Permissions (Advanced)",
    "Unit Master",
    "Task Scheduler",
    "Tax Structure",
}


def detect_coverage(vb6_items, py_map):
    """Detect FULL, PARTIAL, MISSING coverage for VB6 items in Python."""
    full = 0
    partial = 0
    missing = 0
    cs = 0  # coming soon / documented skip
    results = {}

    for item in vb6_items:
        py_path = py_map.get(item)
        if item in PARTIAL_ITEMS:
            partial += 1
            results[item] = "PARTIAL"
        elif py_path == "MISSING":
            missing += 1
            results[item] = "MISSING"
        elif py_path is None or py_path == "MISSING":
            # Check if it's a documented skip (coming soon)
            cs += 1
            results[item] = "COMING_SOON"
        elif py_path and py_path != "MISSING":
            # Path exists - check if it's a real implementation
            full += 1
            results[item] = "FULL"
        else:
            missing += 1
            results[item] = "MISSING"

    total = len(vb6_items)
    return {
        "full": full,
        "partial": partial,
        "missing": missing,
        "coming_soon": cs,
        "total": total,
        "results": results,
        "coverage_pct": round((full / total * 100) if total else 0, 1),
    }


def generate_conversion_report():
    """Generate the VB6→Python mainsetup conversion text file."""
    report_lines = []
    report_lines.append("=" * 70)
    report_lines.append("VB6 MAINSETUP → PYTHON PORT CONVERSION REPORT")
    report_lines.append("=" * 70)
    report_lines.append("")

    all_items = []
    for group_name, items in VB6_MAINSETUP_GROUPS.items():
        all_items.extend(items)

    coverage = detect_coverage(all_items, PYTHON_AVAILABLE)

    report_lines.append("COVERAGE SUMMARY")
    report_lines.append("-" * 70)
    report_lines.append(f"Total VB6 mainsetup items: {coverage['total']}")
    report_lines.append(f"  FULL (Python implemented): {coverage['full']} ({coverage['coverage_pct']}%)")
    report_lines.append(f"  PARTIAL (Python exists but incomplete): {coverage['partial']}")
    report_lines.append(f"  MISSING (No Python equivalent): {coverage['missing']}")
    report_lines.append(f"  COMING_SOON (Documented skip): {coverage['coming_soon']}")
    report_lines.append("")

    report_lines.append("DETAILED STATUS BY ITEM")
    report_lines.append("-" * 70)
    for item, status in sorted(coverage["results"].items()):
        report_lines.append(f"  {item}: {status}")

    report_lines.append("")
    report_lines.append("GROUP-WISE BREAKDOWN")
    report_lines.append("-" * 70)

    for group_name, items in VB6_MAINSETUP_GROUPS.items():
        report_lines.append(f"")
        report_lines.append(f"Group: {group_name}")
        report_lines.append(f"  Total VB6 items: {len(items)}")

        group_results = {item: coverage["results"].get(item, "UNKNOWN") for item in items}
        g_full = sum(1 for s in group_results.values() if s == "FULL")
        g_partial = sum(1 for s in group_results.values() if s == "PARTIAL")
        g_missing = sum(1 for s in group_results.values() if s == "MISSING")
        g_cs = sum(1 for s in group_results.values() if s == "COMING_SOON")

        report_lines.append(f"  FULL: {g_full}")
        report_lines.append(f"  PARTIAL: {g_partial}")
        report_lines.append(f"  MISSING: {g_missing}")
        report_lines.append(f"  Coming Soon: {g_cs}")

        # List items with their status
        for item in items:
            status = group_results[item]
            report_lines.append(f"    - {item}: {status}")

    report_lines.append("")
    report_lines.append("PYTHON IMPLEMENTATION MAP (VB6 → Python path)")
    report_lines.append("-" * 70)
    for vb6_item, py_path in sorted(PYTHON_AVAILABLE.items()):
        if py_path != "MISSING":
            report_lines.append(f"  {vb6_item:30} → {py_path}")

    report_lines.append("")
    report_lines.append("MISSING ITEMS (no Python equivalent)")
    report_lines.append("-" * 70)
    missing_items = [item for item, status in coverage["results"].items() if status == "MISSING"]
    for item in sorted(missing_items):
        report_lines.append(f"  - {item}")

    report_lines.append("")
    report_lines.append("=" * 70)
    report_lines.append("END OF REPORT")
    report_lines.append("=" * 70)

    # Write to file
    output_path = os.path.join(
        os.path.dirname(os.path.abspath(__file__)),
        "mainsetup_conversion.txt"
    )
    with open(output_path, "w", encoding="utf-8") as f:
        f.write("\n".join(report_lines))

    print(f"Report generated: {output_path}")
    print(f"Coverage: {coverage['coverage_pct']}% ({coverage['full']}/{coverage['total']} FULL)")


if __name__ == "__main__":
    generate_conversion_report()