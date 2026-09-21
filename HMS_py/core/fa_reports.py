"""Financial Aggregate Reports (VB6: FaMagic port).

7 report types that Python was missing:
1. Balance Sheet
2. Profit & Loss Account
3. Trial Balance (Group-wise)
4. Trial Balance (Ledger-wise)
5. Cash Flow
6. Fund Flow
7. Cash & Bank Summary
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")


def _get_group_nature_map(cn=None) -> dict:
    """Load ACGROUP -> GroupNature mapping for classification."""
    rows = db.query(
        "SELECT GroupCode, GroupName, GroupNature FROM ACGROUP ORDER BY GroupCode",
        cn=cn,
    )
    return {r.GroupCode: {"name": r.GroupName or "", "nature": r.GroupNature or ""}
            for r in rows}


def _ledger_summary(date_to=None, cn=None) -> list[dict]:
    """SUM(AmtDr), SUM(AmtCr) per SubCode with group info.

    VB6 FaMagic: open-type reports aggregate LEDGER by SubCode,
    then join ACGROUP for GroupNature classification.
    """
    if date_to:
        rows = db.query(
            "SELECT L.SubCode, S.Name, S.GroupCode, S.GroupNature, "
            "SUM(L.AmtDr) AS DrTotal, SUM(L.AmtCr) AS CrTotal "
            "FROM LEDGER L "
            "LEFT JOIN SubGroup S ON S.SubCode = L.SubCode "
            "WHERE L.V_Date <= ? "
            "GROUP BY L.SubCode, S.Name, S.GroupCode, S.GroupNature "
            "ORDER BY S.GroupCode, L.SubCode",
            (date_to,), cn=cn,
        )
    else:
        rows = db.query(
            "SELECT L.SubCode, S.Name, S.GroupCode, S.GroupNature, "
            "SUM(L.AmtDr) AS DrTotal, SUM(L.AmtCr) AS CrTotal "
            "FROM LEDGER L "
            "LEFT JOIN SubGroup S ON S.SubCode = L.SubCode "
            "GROUP BY L.SubCode, S.Name, S.GroupCode, S.GroupNature "
            "ORDER BY S.GroupCode, L.SubCode",
            cn=cn,
        )
    result = []
    for r in rows:
        dr = float(r.DrTotal or 0)
        cr = float(r.CrTotal or 0)
        net = dr - cr
        result.append({
            "subcode": r.SubCode or "",
            "name": (r.Name or "").strip(),
            "groupcode": r.GroupCode or "",
            "groupnature": r.GroupNature or "",
            "dr_total": dr,
            "cr_total": cr,
            "net": net,
        })
    return result


def _group_summary(date_to=None, cn=None) -> list[dict]:
    """SUM(AmtDr-AmtCr) per GroupCode with group info."""
    if date_to:
        rows = db.query(
            "SELECT S.GroupCode, S.GroupNature, "
            "SUM(L.AmtDr) AS DrTotal, SUM(L.AmtCr) AS CrTotal "
            "FROM LEDGER L "
            "LEFT JOIN SubGroup S ON S.SubCode = L.SubCode "
            "WHERE L.V_Date <= ? "
            "GROUP BY S.GroupCode, S.GroupNature "
            "ORDER BY S.GroupCode",
            (date_to,), cn=cn,
        )
    else:
        rows = db.query(
            "SELECT S.GroupCode, S.GroupNature, "
            "SUM(L.AmtDr) AS DrTotal, SUM(L.AmtCr) AS CrTotal "
            "FROM LEDGER L "
            "LEFT JOIN SubGroup S ON S.SubCode = L.SubCode "
            "GROUP BY S.GroupCode, S.GroupNature "
            "ORDER BY S.GroupCode",
            cn=cn,
        )
    result = []
    for r in rows:
        dr = float(r.DrTotal or 0)
        cr = float(r.CrTotal or 0)
        net = dr - cr
        result.append({
            "groupcode": r.GroupCode or "",
            "groupnature": r.GroupNature or "",
            "dr_total": dr,
            "cr_total": cr,
            "net": net,
        })
    return result


def _group_detail(date_to=None, cn=None) -> list[dict]:
    """Per-subcode detail with group info for drill-down reports."""
    return _ledger_summary(date_to=date_to, cn=cn)


def _ledgers_by_group_nature(nature: str, date_to=None, cn=None) -> list[dict]:
    """Get all ledger accounts under a specific GroupNature, with balances."""
    ledgers = _ledger_summary(date_to=date_to, cn=cn)
    groups = _get_group_nature_map(cn=cn)

    result = []
    for entry in ledgers:
        gn = entry["groupnature"]
        if not gn:
            grp = groups.get(entry["groupcode"])
            if grp:
                gn = grp["nature"]
        if gn == nature:
            result.append(entry)
    return result


def _ledgers_by_nature_grouped(nature: str, date_to=None, cn=None) -> list[dict]:
    """Ledgers grouped by their ACGROUP for balance sheet / P&L layout."""
    ledgers = _ledger_summary(date_to=date_to, cn=cn)
    groups = _get_group_nature_map(cn=cn)

    by_group: dict[str, list[dict]] = {}
    for entry in ledgers:
        gn = entry["groupnature"]
        if not gn:
            grp = groups.get(entry["groupcode"])
            if grp:
                gn = grp["nature"]
        if gn == nature:
            gc = entry["groupcode"]
            if gc not in by_group:
                by_group[gc] = []
            by_group[gc].append(entry)

    result = []
    for gc, items in by_group.items():
        grp_name = groups.get(gc, {}).get("name", gc)
        total = sum(i["net"] for i in items)
        children = [
            {"group": gc, "name": i["name"], "amount": i["net"]}
            for i in items if abs(i["net"]) > 0.005
        ]
        result.append({
            "group": gc,
            "group_name": grp_name,
            "amount": total,
            "children": children,
        })
    return result


# ============================================================
# 1. Balance Sheet
# ============================================================
def balance_sheet(cn=None, date_to=None) -> dict:
    """VB6 FaMagic OpenType='BALSHEET'.

    Query ACGROUP where GroupNature='A' (Assets) and 'L' (Liabilities).
    For each group, SUM(AmtDr-AmtCr) from LEDGER as opening balance.

    Returns: {assets: [{group, name, amount}], liabilities: [{group, name, amount}],
              total_assets, total_liabilities, balanced: bool}
    """
    assets = _ledgers_by_nature_grouped("A", date_to=date_to, cn=cn)
    liabilities = _ledgers_by_nature_grouped("L", date_to=date_to, cn=cn)

    total_assets = sum(a["amount"] for a in assets)
    total_liabilities = sum(l["amount"] for l in liabilities)

    return {
        "assets": assets,
        "liabilities": liabilities,
        "total_assets": total_assets,
        "total_liabilities": total_liabilities,
        "balanced": abs(total_assets - total_liabilities) < 0.01,
    }


# ============================================================
# 2. Profit & Loss Account
# ============================================================
def profit_and_loss(cn=None, date_from=None, date_to=None) -> dict:
    """VB6 FaMagic OpenType='PROFLOSS'.

    Query ACGROUP where GroupNature='E' (Expenditure) and 'R' (Revenue).
    When date_from is provided, filter LEDGER entries within the date range.

    Returns: {expenditure: [{group, name, amount}], revenue: [{group, name, amount}],
              total_expenditure, total_revenue, net_profit_or_loss}
    """
    if date_from:
        ledgers = _ledger_by_date_range(date_from, date_to, cn=cn)
    else:
        ledgers = _ledger_summary(date_to=date_to, cn=cn)

    groups = _get_group_nature_map(cn=cn)

    def _classify(entries):
        by_group: dict[str, list[dict]] = {}
        for entry in entries:
            gn = entry["groupnature"]
            if not gn:
                grp = groups.get(entry["groupcode"])
                if grp:
                    gn = grp["nature"]
            if gn:
                if gn not in by_group:
                    by_group[gn] = []
                by_group[gn].append(entry)
        return by_group

    classified = _classify(ledgers)

    expenditure = []
    for entry in classified.get("E", []):
        grp_name = groups.get(entry["groupcode"], {}).get("name", entry["groupcode"])
        expenditure.append({
            "group": entry["groupcode"],
            "name": entry["name"],
            "amount": entry["net"],
        })

    revenue = []
    for entry in classified.get("R", []):
        grp_name = groups.get(entry["groupcode"], {}).get("name", entry["groupcode"])
        revenue.append({
            "group": entry["groupcode"],
            "name": entry["name"],
            "amount": entry["net"],
        })

    total_expenditure = sum(e["amount"] for e in expenditure)
    total_revenue = sum(r["amount"] for r in revenue)
    net_profit_or_loss = total_revenue - total_expenditure

    return {
        "expenditure": expenditure,
        "revenue": revenue,
        "total_expenditure": total_expenditure,
        "total_revenue": total_revenue,
        "net_profit_or_loss": net_profit_or_loss,
    }


def _ledger_by_date_range(date_from, date_to=None, cn=None) -> list[dict]:
    """Get ledger summary within a date range."""
    if date_to:
        rows = db.query(
            "SELECT L.SubCode, S.Name, S.GroupCode, S.GroupNature, "
            "SUM(L.AmtDr) AS DrTotal, SUM(L.AmtCr) AS CrTotal "
            "FROM LEDGER L "
            "LEFT JOIN SubGroup S ON S.SubCode = L.SubCode "
            "WHERE L.V_Date BETWEEN ? AND ? "
            "GROUP BY L.SubCode, S.Name, S.GroupCode, S.GroupNature "
            "ORDER BY S.GroupCode, L.SubCode",
            (date_from, date_to), cn=cn,
        )
    else:
        rows = db.query(
            "SELECT L.SubCode, S.Name, S.GroupCode, S.GroupNature, "
            "SUM(L.AmtDr) AS DrTotal, SUM(L.AmtCr) AS CrTotal "
            "FROM LEDGER L "
            "LEFT JOIN SubGroup S ON S.SubCode = L.SubCode "
            "WHERE L.V_Date >= ? "
            "GROUP BY L.SubCode, S.Name, S.GroupCode, S.GroupNature "
            "ORDER BY S.GroupCode, L.SubCode",
            (date_from,), cn=cn,
        )
    result = []
    for r in rows:
        dr = float(r.DrTotal or 0)
        cr = float(r.CrTotal or 0)
        result.append({
            "subcode": r.SubCode or "",
            "name": (r.Name or "").strip(),
            "groupcode": r.GroupCode or "",
            "groupnature": r.GroupNature or "",
            "dr_total": dr,
            "cr_total": cr,
            "net": dr - cr,
        })
    return result


# ============================================================
# 3. Trial Balance (Group-wise)
# ============================================================
def trial_balance_group(cn=None, date_to=None) -> list[dict]:
    """VB6 FaMagic OpenType='GROUPTRIAL'.

    Group LEDGER by GroupCode, show DR/CR totals per group.

    Returns: [{groupcode, groupname, groupnature, dr_total, cr_total, net}]
    """
    groups = _get_group_nature_map(cn=cn)
    summary = _group_summary(date_to=date_to, cn=cn)

    result = []
    for g in summary:
        gc = g["groupcode"]
        grp = groups.get(gc, {})
        result.append({
            "groupcode": gc,
            "groupname": grp.get("name", ""),
            "groupnature": g["groupnature"],
            "dr_total": g["dr_total"],
            "cr_total": g["cr_total"],
            "net": g["net"],
        })
    return result


# ============================================================
# 4. Trial Balance (Ledger-wise)
# ============================================================
def trial_balance_ledger(cn=None, date_to=None) -> list[dict]:
    """VB6 FaMagic OpenType='LEDTRIAL'.

    Group LEDGER by SubCode, show DR/CR/Net per ledger account.

    Returns: [{subcode, name, groupcode, dr_total, cr_total, net}]
    """
    summary = _ledger_summary(date_to=date_to, cn=cn)

    result = []
    for entry in summary:
        result.append({
            "subcode": entry["subcode"],
            "name": entry["name"],
            "groupcode": entry["groupcode"],
            "dr_total": entry["dr_total"],
            "cr_total": entry["cr_total"],
            "net": entry["net"],
        })
    return result


# ============================================================
# 5. Cash Flow
# ============================================================
def cash_flow(cn=None, date_from=None, date_to=None) -> dict:
    """VB6 FaMagic OpenType='CASHFLOW'.

    Classify LEDGER entries as cash vs non-cash based on GroupNature.
    Operating: current assets/liabilities (GroupNature A/L with cash-like groups)
    Investing: fixed assets
    Financing: long-term liabilities / equity

    Returns: {operating_inflow, operating_outflow, investing_inflow,
              investing_outflow, financing_inflow, financing_outflow,
              net_operating, net_investing, net_financing, net_change}
    """
    if date_from:
        ledgers = _ledger_by_date_range(date_from, date_to, cn=cn)
    else:
        ledgers = _ledger_summary(date_to=date_to, cn=cn)

    groups = _get_group_nature_map(cn=cn)

    # Cash/bank group codes (common VB6 pattern - groups with "Cash" or "Bank" in name)
    cash_keywords = ("cash", "bank", "cash in hand", "bank account")

    def _is_cash_group(groupcode: str) -> bool:
        grp = groups.get(groupcode)
        if not grp:
            return False
        name_lower = (grp.get("name", "") or "").lower()
        return any(kw in name_lower for kw in cash_keywords)

    # Classification based on VB6 FaMagic patterns:
    # Cash groups: operating cash flow
    # Non-cash asset groups (e.g., debtors, inventory): operating
    # Fixed asset groups: investing
    # Capital/reserve groups: financing
    # Loan groups: financing

    operating_inflow = 0.0
    operating_outflow = 0.0
    investing_inflow = 0.0
    investing_outflow = 0.0
    financing_inflow = 0.0
    financing_outflow = 0.0

    for entry in ledgers:
        gn = entry["groupnature"]
        if not gn:
            grp = groups.get(entry["groupcode"])
            if grp:
                gn = grp["nature"]

        net = entry["net"]
        is_cash = _is_cash_group(entry["groupcode"])

        if gn == "A":
            if is_cash:
                # Cash movements are part of operating
                if net > 0:
                    operating_inflow += net
                else:
                    operating_outflow += abs(net)
            else:
                # Other assets - investing
                if net > 0:
                    investing_inflow += net
                else:
                    investing_outflow += abs(net)
        elif gn == "L":
            if is_cash:
                if net > 0:
                    operating_inflow += net
                else:
                    operating_outflow += abs(net)
            else:
                # Liabilities - financing
                if net > 0:
                    financing_inflow += net
                else:
                    financing_outflow += abs(net)
        elif gn == "R":
            # Revenue - operating
            if net > 0:
                operating_inflow += net
            else:
                operating_outflow += abs(net)
        elif gn == "E":
            # Expenditure - operating
            if net > 0:
                operating_inflow += net
            else:
                operating_outflow += abs(net)

    return {
        "operating_inflow": operating_inflow,
        "operating_outflow": operating_outflow,
        "investing_inflow": investing_inflow,
        "investing_outflow": investing_outflow,
        "financing_inflow": financing_inflow,
        "financing_outflow": financing_outflow,
        "net_operating": operating_inflow - operating_outflow,
        "net_investing": investing_inflow - investing_outflow,
        "net_financing": financing_inflow - financing_outflow,
        "net_change": (operating_inflow - operating_outflow +
                       investing_inflow - investing_outflow +
                       financing_inflow - financing_outflow),
    }


# ============================================================
# 6. Fund Flow
# ============================================================
def fund_flow(cn=None, date_to=None) -> dict:
    """VB6 FaMagic OpenType='FUNDFLOW'.

    Changes in working capital from SUBGROUPCURRBAL.
    Sources: increase in liabilities, decrease in assets
    Applications: decrease in liabilities, increase in assets

    Returns: {sources: [...], applications: [...], net_change}
    """
    rows = db.query(
        "SELECT SC.SubCode, SG.Name, SG.GroupCode, SG.GroupNature, "
        "SC.Curr_Bal "
        "FROM SUBGROUPCURRBAL SC "
        "LEFT JOIN SubGroup SG ON SG.SubCode = SC.SubCode "
        "WHERE SC.LogSite_Code = ? "
        "ORDER BY SG.GroupCode, SC.SubCode",
        (SITE_CODE,), cn=cn,
    )

    sources = []
    applications = []

    for r in rows:
        bal = float(r.Curr_Bal or 0)
        gn = r.GroupNature or ""
        if abs(bal) < 0.005:
            continue

        entry = {
            "subcode": r.SubCode or "",
            "name": (r.Name or "").strip(),
            "groupcode": r.GroupCode or "",
            "groupnature": gn,
            "amount": bal,
        }

        if gn == "L":
            # Liability increase = source of funds
            if bal > 0:
                sources.append(entry)
            else:
                applications.append(entry)
        elif gn == "A":
            # Asset increase = application of funds
            if bal > 0:
                applications.append(entry)
            else:
                sources.append(entry)

    net_change = sum(s["amount"] for s in sources) - sum(a["amount"] for a in applications)

    return {
        "sources": sources,
        "applications": applications,
        "net_change": net_change,
    }


# ============================================================
# 7. Cash & Bank Summary
# ============================================================
def cash_bank_summary(cn=None, date_to=None) -> list[dict]:
    """VB6 FaMagic OpenType='CASHBANKSUM'.

    Summarize cash and bank accounts from LEDGER.
    Shows opening (from SUBGROUPCURRBAL), receipts (DR total), payments (CR total),
    and closing balance.

    Returns: [{subcode, name, opening, receipts, payments, closing}]
    """
    groups = _get_group_nature_map(cn=cn)
    cash_keywords = ("cash", "bank", "cash in hand", "bank account")

    def _is_cash_bank(groupcode: str) -> bool:
        grp = groups.get(groupcode)
        if not grp:
            return False
        name_lower = (grp.get("name", "") or "").lower()
        return any(kw in name_lower for kw in cash_keywords)

    # Get current balances
    cbal_rows = db.query(
        "SELECT SC.SubCode, SG.Name, SG.GroupCode, SC.Curr_Bal "
        "FROM SUBGROUPCURRBAL SC "
        "LEFT JOIN SubGroup SG ON SG.SubCode = SC.SubCode "
        "WHERE SC.LogSite_Code = ? "
        "ORDER BY SC.SubCode",
        (SITE_CODE,), cn=cn,
    )

    # Get DR/CR totals from LEDGER
    if date_to:
        ledger_rows = db.query(
            "SELECT SubCode, SUM(AmtDr) AS DrTotal, SUM(AmtCr) AS CrTotal "
            "FROM LEDGER WHERE V_Date <= ? "
            "GROUP BY SubCode ORDER BY SubCode",
            (date_to,), cn=cn,
        )
    else:
        ledger_rows = db.query(
            "SELECT SubCode, SUM(AmtDr) AS DrTotal, SUM(AmtCr) AS CrTotal "
            "FROM LEDGER GROUP BY SubCode ORDER BY SubCode",
            cn=cn,
        )

    ledger_map = {}
    for r in ledger_rows:
        ledger_map[r.SubCode] = {
            "dr_total": float(r.DrTotal or 0),
            "cr_total": float(r.CrTotal or 0),
        }

    result = []
    for r in cbal_rows:
        gc = r.GroupCode or ""
        if not _is_cash_bank(gc):
            continue

        sc = r.SubCode or ""
        name = (r.Name or "").strip()
        closing_bal = float(r.Curr_Bal or 0)

        lg = ledger_map.get(sc, {"dr_total": 0, "cr_total": 0})
        receipts = lg["dr_total"]
        payments = lg["cr_total"]

        # Opening = closing - receipts + payments (reverse calculation)
        opening = closing_bal - receipts + payments

        result.append({
            "subcode": sc,
            "name": name,
            "opening": opening,
            "receipts": receipts,
            "payments": payments,
            "closing": closing_bal,
        })

    return result
