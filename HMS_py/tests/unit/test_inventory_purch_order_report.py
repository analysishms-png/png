# -*- coding: utf-8 -*-
"""Purchase Order reports (Inventory): VB6 PurchOrder parity + Pending variant.

VB6 evidence: HMS.bas:640378 `Sub PurchOrder(formName, FRow, Fcol)` (called
from rInventRepView when GRepFormName='PurchOrder', dispatched by
ModuleAdd.bas:3638 / HMS.bas:479191 for the "Pending Purchase Order" leaf).

The original Python port read Stock receipts and carried the note
"POrderDet absent live" — but VB6 joins POrder/POrder1 (both live), so the
report was querying the wrong tables. These tests pin the VB6 shape.

DB-free: SQL shape + registry wiring only. Live runs are covered by
`HMS_py/tests/database/test_reports_engine.py` (script, read-only).
"""
from __future__ import annotations

import os
import re
import sys

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", "..")))

from HMS_py.core import reports

KEYS = ("PurchOrder", "PurchOrderPending")


def test_registry_has_both_keys():
    by_key = reports.by_key()
    for k in KEYS:
        assert k in by_key, f"{k} missing from REPORTS registry"


def test_caption_map_wires_the_pending_leaf():
    m = reports.menu_caption_map()
    assert m.get("Purchase Order") == "PurchOrder"
    assert m.get("Pending Purchase Order") == "PurchOrderPending"


def test_sql_is_vb6_faithful_not_stock_receipts():
    """VB6 joins POrder -> POrder1 -> ItemMast(ItemType='Store') -> SubGroup."""
    for k in KEYS:
        sql = reports.by_key()[k]["sql"].upper()
        assert "FROM ((PORDER" in sql, f"{k}: VB6 POrder join missing"
        assert "PORDER1" in sql and "ITEMMAST" in sql and "SUBGROUP" in sql, k
        assert "ITEMTYPE='STORE'" in sql, f"{k}: warehouse item filter missing"
    # The old (wrong) port derived the report from Stock receipt lines;
    # the unfiltered report must not touch Stock at all.
    assert "STOCK" not in reports.by_key()["PurchOrder"]["sql"].upper()


def test_pending_variant_applies_the_vb6_pending_filter():
    sql = reports.by_key()["PurchOrderPending"]["sql"].upper()
    # VB6 loc_1581891: a PO1 line is pending unless a Stock receipt
    # (ContraDocId/ContraSno) already points at it.
    assert "CONTRADOCID" in sql and "CONTRASNO" in sql
    assert "NOT IN" in sql, "pending variant must exclude received lines"
    assert "FROM STOCK" in sql, "VB6 pending filter reads the Stock receipt subquery"
    base = reports.by_key()["PurchOrder"]["sql"].upper()
    assert "NOT IN" not in base, "plain PurchOrder must stay unfiltered"


def test_sql_shape_and_2008r2_compat():
    for k in KEYS:
        r = reports.by_key()[k]
        assert r["title"] and r["module"] == "Inventory"
        sql = r["sql"]
        n = len(re.findall(r"\?", re.sub(r"'(?:[^']|'')*'", "''", sql)))
        assert n % 2 == 0 and n >= 2, f"{k}: bad date param count {n}"
        up = sql.upper()
        for banned in ("FORMAT(", "STRING_AGG", "TRY_CONVERT", "TRY_CAST",
                       "OFFSET", "FETCH", "EOMONTH", "DATEFROMPARTS",
                       "IIF(", "CHOOSE("):
            assert banned not in up, f"{k}: banned 2012+ feature {banned}"


def test_shell_registry_pending_leaf_is_live_not_a_stub():
    from HMS_py.ui import shell

    fn = shell._form_registry().get("Pending Purchase Order")
    assert callable(fn), "Pending Purchase Order must stay registry-wired"
    assert "coming_soon" not in getattr(fn, "__qualname__", ""), (
        "VB6 opens rInventRepView/PurchOrder for this leaf - not an inactive skip"
    )
