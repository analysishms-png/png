"""Dynamic Main Setup module menu regeneration from database tables.

Rebuilds the form registry and MainSetupWorkbench entirely from:
- User_Module table (menu structure: code, name, flag, srno, Module_Name)
- User1 table (user rights: USER_NAME, SRNO)
- menuHelp table (per-user permissions: Option, Param_Str, Flag, Module_Name)
- Analysis.ini key 9 (sidebar module order)

Uses integer indexing for pyodbc.Row objects (r[0], r[1], r[2], r[3]).
"""

from __future__ import annotations

from collections import defaultdict
from HMS_py.core import db, menu, menu_help
from HMS_py.ui import p2_masters as p2
from HMS_py.ui.plan_master import PlanMasterForm
from HMS_py.ui.reservation_browser import ReservationBrowser
from HMS_py.ui import frontoffice as fo
from HMS_py.ui.theme import apply_theme, current_theme, palette
from PyQt6.QtWidgets import (QVBoxLayout, QWidget, QLabel, QGridLayout,
                              QPushButton, QSizePolicy)


def _normalize_menu_name(value: str) -> str:
    """Normalize menu name for matching (strip -HMS, parens, collapse spaces)."""
    v = str(value).strip()
    v = v.replace("- HMS_py", "").strip()
    v = v.replace("- HMS", "").strip()
    v = "".join(ch for ch in v if ch not in "\r\n")
    while "  " in v:
        v = v.replace("  ", " ")
    if "(" in v and v.rstrip().endswith(")"):
        base = v.rsplit("(", 1)[0].strip()
        if base:
            v = base
    return v.strip().lower()


def _get_user_allowed_srnos(username: str) -> set | None:
    """Get User1 SRNO set for user; None = full access."""
    rows = db.query("SELECT SRNO FROM User1 WHERE USER_NAME = ?", (username,))
    if not rows:
        return None
    return {r[0] for r in rows}


def _flag_val(r, idx: int) -> str:
    """Get flag value from pyodbc.Row by index.
    
    pyodbc.Row has exactly 4 columns (code, name, flag, srno).
    Index 0=code, 1=name, 2=flag, 3=srno.
    """
    val = r[idx]  # pyodbc.Row always has 4 cols when query selects 4 cols
    return str(val).strip() if val else ""


def _build_menu_from_db(module_name: str, allowed_srnos: set | None) -> list[dict]:
    """Build menu structure from User_Module table for a given Module_Name.

    Implements VB6 nesting logic:
    - flag=1 => submenu header (creates dropdown)
    - same-code flag=0 rows => children of that parent
    """
    rows = db.query(
        "SELECT code, name, flag, srno FROM User_Module "
        "WHERE Module_Name = ? AND flag <> '9' ORDER BY srno",
        (module_name,))

    out = []
    cur = None

    def leaf_ok(it: dict) -> bool:
        return allowed_srnos is None or it["srno"] is None or it["srno"] in allowed_srnos

    for r in rows:
        code = r[0]
        name = r[1] if r[1] else ""
        flag = str(r[2]) if r[2] else ""
        srno = r[3]
        it = {"name": name, "code": code, "srno": srno, "flag": flag, "children": []}
        if flag == "1":
            cur = it
            out.append(cur)
        elif cur is not None and code == cur["code"]:
            if leaf_ok(it):
                cur["children"].append(it)
        else:
            cur = None
            if leaf_ok(it):
                out.append(it)

    # Prune empty submenus (rights ne sab children kaat diye)
    return [it for it in out if it["children"] or leaf_ok(it)]


def _build_menubar_from_db(username: str = "SA") -> list[dict]:
    """Build the menubar from User_Module distinct Module_Name values.

    Groups = DISTINCT Module_Name, ordered by MIN(srno) within each group.
    Uses TOP n instead of LIMIT (SQL Server syntax).
    """
    allowed = _get_user_allowed_srnos(username)

    # Get all Module_Name groups with their MIN(srno) for ordering
    groups = db.query(
        "SELECT TOP 100 Module_Name, MIN(srno) as min_srno "
        "FROM User_Module WHERE flag <> '9' "
        "GROUP BY Module_Name ORDER BY min_srno")

    # Build a lookup of Module_Name -> first srno for ordering
    module_order = {}
    for r in groups:
        mod = r[0]
        # Get all items in this module to find the true first srno
        items = db.query(
            "SELECT TOP 100 srno FROM User_Module "
            "WHERE Module_Name = ? AND flag <> '9'",
            (mod,))
        all_srnos = [r[0] for r in items]
        module_order[mod] = min(all_srnos) if all_srnos else 0

    # Sort modules by their minimum srno
    sorted_modules = sorted(module_order.keys(), key=lambda m: module_order[m])

    out = []
    for mod in sorted_modules:
        items = _build_menu_from_db(mod, allowed)
        if items:
            # Get the group name from the first flag=1 item or the module name itself
            group_name = mod
            # Try to find a flag=1 item for the group title
            mod_items = db.query(
                "SELECT TOP 1 name FROM User_Module "
                "WHERE Module_Name = ? AND flag = '1'",
                (mod,))
            if mod_items and mod_items[0][0]:
                group_name = mod_items[0][0]

            # Check if this is a title-only group (single flag=1 row = the action item)
            # VB6 pattern: single flag=1 row = kid action item, e.g. Messaging InBox/OutBox
            if len(items) == 1 and items[0].get("flag") == "1":
                pass  # Single flag=1 item - could be the action itself

            out.append({"name": group_name, "items": items})

    return out


def _check_menu_rights(username: str, caption: str) -> dict:
    """Check menu rights from menuHelp table.

    Returns: {'allowed': bool, 'flag': str | None, 'param_str': str}
    """
    normalized = _normalize_menu_name(caption)
    allowed = True
    flag = None
    param_str = "AEDP"  # default full access

    # Check menuHelp for this user
    try:
        rows = db.query(
            "SELECT [Option], Param_Str, Flag, Module_Name, Opt1, Opt2, Opt3, Opt4 "
            "FROM menuHelp WHERE UserName = ? AND CompCode = ?",
            (username or "SA", db.get_comp_code() or "2"))

        for r in rows:
            row_caption = str(r[0] or "")
            row_norm = _normalize_menu_name(row_caption)
            if row_norm == normalized:
                allowed = True
                flag = _flag_val(r, 2)
                param_str = str(r[1] or "").strip() or "AEDP"
                break
    except Exception:
        pass

    # If no menuHelp row and User1 has no rows => full access
    user_allowed = _get_user_allowed_srnos(username)
    # The 'rows' variable above is from the for-loop; check if we found a match
    # Re-query to check if any rows existed at all
    try:
        all_rows = db.query(
            "SELECT [Option], Param_Str, Flag, Module_Name, Opt1, Opt2, Opt3, Opt4 "
            "FROM menuHelp WHERE UserName = ? AND CompCode = ?",
            (username or "SA", db.get_comp_code() or "2"))
        has_rows = len(all_rows) > 0
    except Exception:
        has_rows = False

    if not has_rows and (user_allowed is None):
        allowed = True
        flag = None
        param_str = "AEDP"

    return {"allowed": allowed, "flag": flag, "param_str": param_str}


def _get_module_category(module_name: str) -> str:
    """Map Module_Name to display category for Main Setup workbench."""
    category_map = {
        "Finance": "Finance & Reports",
        "General Setup": "General Setup",
        "HR/Payroll": "HR & Members",
        "Inventory": "Inventory & Reports",
        "Point of Sale": "POS & Banquet",
        "Banquet": "POS & Banquet",
        "Front Office": "Front Office",
        "EPABX": "HR & Members",
        "Messaging": "Utility",
        "Members Mgmt": "HR & Members",
    }
    for map_mod, map_cat in category_map.items():
        if map_mod.lower() in module_name.lower():
            return map_cat
    return "General Setup"


def _open_dynamic_form(code: str, user: str):
    """Open form based on User_Module code from database.

    Maps the code from User_Module to the appropriate UI form opener.
    """
    form_map = {
        # Front Office masters
        "Mas": lambda: p2.open_city(None),
        "Country": lambda: p2.open_country(None),
        "State": lambda: p2.open_state(None),
        "City": lambda: p2.open_area(None),
        "Room Category": lambda: p2.open_roomcategory(None),
        "Room Master": lambda: p2.open_roommaster(None),
        "Package Master": lambda: p2.open_packagemaster(None),
        "Season Master": lambda: p2.open_seasonmaster(None),
        "Company Master": lambda: p2.open_companymaster(None),
        # General Setup
        "FixCharge": lambda: p2.open_fixcharge(None),
        "Unit Master": lambda: p2.open_unit(None),
        "Item Master": lambda: p2.open_item(None),
        "Sundry Master": lambda: p2.open_sundry(None),
        "Narration Master": lambda: p2.open_narr(None),
        "Department": lambda: p2.open_depart(None),
        "Godown Master": lambda: p2.open_godown(None),
        "Voucher Environment": lambda: p2.open_vouchertype(None),
        "FA Environment": lambda: p2.open_enviro(None),
        "Parameter": lambda: p2.open_enviro(None),
        "Voucher Category": lambda: p2.open_vouchcat(None),
        "Voucher Type": lambda: p2.open_vouchertype(None),
        # Finance
        "Tax Master": lambda: p2.open_taxmaster(None),
        "Payment Type": lambda: p2.open_paymenttype(None),
        "Market Segment": lambda: p2.open_marketsegment(None),
        "Business Source": lambda: p2.open_businesssource(None),
        "Guest Status": lambda: p2.open_gueststatus(None),
        "Forex Master": lambda: p2.open_forexmaster(None),
        "Ledger Accounts": lambda: p2.open_ledger(None),
        "Group Accounts": lambda: p2.open_acgroup(None),
        # HR/Payroll
        "Category Master": lambda: p2.open_empcat(None),
        "Holiday Master": lambda: p2.open_holiday(None),
        "Employee Master": lambda: p2.open_employee(None),
        "Designation": lambda: p2.open_desig(None),
        # Members
        "Category Master (Mem)": lambda: p2.open_memcat(None),
        "Facility Master": lambda: p2.open_facility(None),
        "Revenue Master": lambda: p2.open_memrev(None),
    }

    if code in form_map:
        try:
            form_map[code]()
        except Exception as e:
            print(f"Form open error for code={code}: {e}")
    else:
        print(f"No direct map for code={code}, trying generic")


def rebuild_menu_from_database(username: str = "SA") -> dict:
    """Complete rebuild of menu system from database tables.

    Returns dict with:
    - menubar: list of {name, items: [{name, code, children: [{name, code, srno}]}}]
    - sidebar: list of {code, name, srno} from flag=9 roots
    - user_rights: dict with full_access and allowed_srnos
    - total_modules: count of unique modules
    - total_items: count of total menu items
    """
    allowed_srnos = _get_user_allowed_srnos(username)

    # Build menubar
    menubar = _build_menubar_from_db(username)

    # Build sidebar from User_Module flag=9 roots
    sidebar_rows = db.query("SELECT code, name, srno FROM User_Module WHERE flag='9' ORDER BY srno")
    sidebar = [{"code": r[0], "name": r[1] if r[1] else "", "srno": r[2]} for r in sidebar_rows]

    # Count totals
    all_module_names = set()
    total_items = 0
    for g in menubar:
        all_module_names.add(g["name"])
        total_items += len(g.get("items", []))

    user_rights = {
        "full_access": allowed_srnos is None,
        "allowed_srnos": allowed_srnos,
    }

    # Sample menu help rights check
    try:
        mr = _check_menu_rights(username, "Tax Master")
        user_rights["tax_master_rights"] = mr
    except Exception:
        user_rights["tax_master_rights"] = {"allowed": True, "flag": None, "param_str": "AEDP"}

    return {
        "menubar": menubar,
        "sidebar": sidebar,
        "user_rights": user_rights,
        "total_modules": len(all_module_names),
        "total_items": total_items,
    }


# Example usage when running standalone
if __name__ == "__main__":
    result = rebuild_menu_from_database("SA")
    print(f"Menubar groups: {len(result['menubar'])}")
    print(f"Sidebar roots: {len(result['sidebar'])}")
    print(f"Total menu items: {result['total_items']}")
    print(f"User full access: {result['user_rights']['full_access']}")
    print(f"Total unique modules: {result['total_modules']}")
    
    # Show first few menubar groups
    for g in result['menubar'][:5]:
        item_names = [it['name'][:25] for it in g.get('items', [])[:3]]
        print(f"  Group: {g['name']} -> {item_names}...")