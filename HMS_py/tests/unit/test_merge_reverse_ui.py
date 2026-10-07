"""Merge Room / Reverse Room Merge UI (VB6 FrmMergeCharge / FrmRevMergeCharge)
— report fo-parity-recheck §2.1/§2.2, GAP-05..13.

Cover: GAP-06 missing-leader message, GAP-09 charge-selection-required,
GAP-07 confirm-gates-action, GAP-08 success, VB6 captions/labels,
GAP-13 ALL checkbox, remove-room confirm gate, plan charge_docids pass-through.
"""

from __future__ import annotations

import os
from types import SimpleNamespace

import pytest

pytestmark = pytest.mark.unit

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

_QAPP = None
TICK = "\u2713"


def _qapp():
    global _QAPP
    from PyQt6.QtWidgets import QApplication

    _QAPP = QApplication.instance() or QApplication([])
    return _QAPP


# ---------------------------------------------------------------
# fixtures
# ---------------------------------------------------------------
@pytest.fixture
def fsu():
    _qapp()
    from HMS_py.ui import fo_sub_forms_ui as m

    return m


@pytest.fixture
def msgbox(monkeypatch, fsu):
    """QMessageBox recorder — offscreen me dialog block na ho.

    question aur critical-with-buttons (Yes|No confirm) `state["confirm"]`
    return karte hain; default "Y" (Yes). set_confirm(None) = user ne No dabaya.
    """
    calls: list[tuple[str, str, str]] = []
    state = {"confirm": "Y"}

    def _make(kind):
        def _f(parent=None, title="", text="", *a, **k):
            calls.append((kind, str(title), str(text)))
            if kind == "question":
                return state["confirm"]
            if kind == "critical" and a:  # Yes|No confirm gate
                return state["confirm"]
            return None

        return _f

    class _SB:
        Yes = "Y"

    class _MB:
        StandardButton = _SB

    _MB.warning = _make("warning")
    _MB.critical = _make("critical")
    _MB.information = _make("information")
    _MB.question = _make("question")
    monkeypatch.setattr(fsu, "QMessageBox", _MB)

    class _Box:
        @property
        def calls(self):
            return list(calls)

        def kinds(self):
            return [k for k, _, _ in calls]

        def has(self, kind, text, title=None):
            return any(
                k == kind and t == text and (title is None or ti == title)
                for k, ti, t in calls
            )

        def set_confirm(self, v):
            state["confirm"] = v

    return _Box()


class FakeConn:
    def __init__(self, log):
        self.log = log

    def commit(self):
        self.log.append("commit")

    def rollback(self):
        self.log.append("rollback")

    def close(self):
        self.log.append("close")


def _mk_folio(folio, name, docid):
    return {"folio": folio, "name": name, "docid": docid}


@pytest.fixture
def merge_env(fsu, monkeypatch, msgbox):
    """Merge window ke liye db/fo_ops/expenseentry fakes + recorder."""
    log = SimpleNamespace(merge=[], conn=[], openf=[], charges=[], total=[])
    state = {
        "rooms": [
            SimpleNamespace(
                RoomNo="101",
                GuestName="Guest A",
                FolioNoDocid="DOC1",
                FolioNo=10,
            ),
            SimpleNamespace(
                RoomNo="102",
                GuestName="Guest B",
                FolioNoDocid="DOC2",
                FolioNo=11,
            ),
        ],
        "folios": {
            "101": _mk_folio(10, "Guest A", "DOC1"),
            "103": _mk_folio(13, "Leader", "DOCL"),
        },
        "charges": [
            {"docid": "CH1", "vtype": "EX", "vno": 1, "paycode": "CF", "amount": 100.0},
            {"docid": "CH2", "vtype": "EX", "vno": 2, "paycode": "CF", "amount": 200.0},
        ],
    }

    monkeypatch.setattr(
        fsu,
        "db",
        SimpleNamespace(
            get_site_code=lambda cfg=None: "HS",
            query=lambda sql, params=(), cn=None: state["rooms"],
            connect=lambda: FakeConn(log.conn),
        ),
    )

    def _open(room, cn=None, **k):
        log.openf.append(room)
        return state["folios"].get(room)

    def _merge_charge(
        from_room, to_room, cn=None, commit=True, charge_docids=None, **k
    ):
        log.merge.append((from_room, to_room, charge_docids))
        return {"rows_moved": 1}

    monkeypatch.setattr(fsu.fo_ops, "open_folio_by_room", _open)
    monkeypatch.setattr(fsu.fo_ops, "merge_charge", _merge_charge)
    monkeypatch.setattr(fsu.fo_ops, "folio_charge_total", lambda docid, **k: 300.0)
    monkeypatch.setattr(
        fsu.expenseentry,
        "list_folio_charges",
        lambda folio, cn=None, **k: list(state["charges"]),
    )

    w = fsu.MergeChargeWindow()
    w.log = log
    w.state = state
    return w


@pytest.fixture
def rev_env(fsu, monkeypatch, msgbox):
    """Reverse window ke liye fo_ops fakes + recorder."""
    log = SimpleNamespace(reverse=[], removed=[], openf=[], lc=[])
    state = {
        "folios": {"103": _mk_folio(13, "Leader", "DOCL")},
        "children": [
            {
                "room": "101",
                "folio": 10,
                "name": "Guest A",
                "docid": "DOC1",
                "charges": 2,
            },
            {
                "room": "102",
                "folio": 11,
                "name": "Guest B",
                "docid": "DOC2",
                "charges": 0,
            },
        ],
        "child_charges": [
            {"docid": "CH1", "vtype": "EX", "vno": 1, "paycode": "CF", "amount": 100.0},
            {"docid": "CH2", "vtype": "EX", "vno": 2, "paycode": "CF", "amount": 200.0},
        ],
    }

    def _open(room, cn=None, **k):
        log.openf.append(room)
        return state["folios"].get(room)

    def _children(q, cn=None, **k):
        return list(state["children"])

    def _child_charges(master, room, **k):
        log.lc.append((master, room))
        if room == "101":
            return list(state["child_charges"])
        return []

    def _reverse(master, room, charge_docids=None, **k):
        log.reverse.append((master, room, charge_docids))
        return {"rows_moved": 1}

    def _remove(master, room, **k):
        log.removed.append((master, room))
        return True

    monkeypatch.setattr(fsu.fo_ops, "open_folio_by_room", _open)
    monkeypatch.setattr(fsu.fo_ops, "list_merge_children", _children)
    monkeypatch.setattr(fsu.fo_ops, "list_child_charges_on_master", _child_charges)
    monkeypatch.setattr(fsu.fo_ops, "reverse_merge_charge", _reverse)
    monkeypatch.setattr(fsu.fo_ops, "remove_room_from_group", _remove)

    w = fsu.ReverseMergeWindow()
    w.log = log
    w.state = state
    return w


def _tick(table, row, on=True):
    it = table.item(row, 0)
    assert it is not None, f"row {row} col0 item missing"
    it.setText(TICK if on else "")


# ---------------------------------------------------------------
# Merge Charge (GAP-05..09)
# ---------------------------------------------------------------
def test_merge_missing_leader_message(merge_env, msgbox):
    w = merge_env
    w.btn_merge.click()
    assert msgbox.has("information", "Please Select Leader Room No.", "Error.."), (
        msgbox.calls
    )
    assert w.log.merge == []
    # leader text present but folio resolve nahi hota
    msgbox.calls.clear()
    w.txt_to_room.setText("999")
    w.btn_merge.click()
    assert msgbox.has("information", "Please Select Leader Room No.", "Error.."), (
        msgbox.calls
    )
    assert w.log.merge == []


def test_merge_charge_selection_required(merge_env, msgbox):
    w = merge_env
    w.txt_to_room.setText("103")
    # focus room with charges, ticked in rooms grid, lekin koi charge unticked
    w.txt_from_room.setText("101")
    assert w.table_charges.rowCount() == 2
    _tick(w.table_rooms, 0)
    w.btn_merge.click()
    assert msgbox.has(
        "information", "Please select any charges to be transfer", "Save..."
    ), msgbox.calls
    assert w.log.merge == []
    # kuch bhi checked na ho -> bhi same refusal
    msgbox.calls.clear()
    _tick(w.table_rooms, 0, on=False)
    w.txt_from_room.clear()
    w.btn_merge.click()
    assert msgbox.has(
        "information", "Please select any charges to be transfer", "Save..."
    ), msgbox.calls
    assert w.log.merge == []


def test_merge_confirm_gates_action(merge_env, msgbox):
    w = merge_env
    w.txt_to_room.setText("103")
    w.txt_from_room.setText("101")
    _tick(w.table_rooms, 0)
    _tick(w.table_charges, 0)
    # user ne No dabaya -> execution nahi honi chahiye
    msgbox.set_confirm(None)
    w.btn_merge.click()
    assert any(
        k == "critical" and "Do You Want Transfer Remainning" in t
        for k, ti, t in msgbox.calls
    ), msgbox.calls
    assert w.log.merge == []
    # user ne Yes dabaya -> ek hi transaction
    msgbox.calls.clear()
    msgbox.set_confirm("Y")
    w.btn_merge.click()
    assert any(
        k == "critical" and "Do You Want Transfer Remainning" in t
        for k, ti, t in msgbox.calls
    ), msgbox.calls
    assert w.log.merge == [("101", "103", ["CH1"])]
    assert w.log.conn == ["commit", "close"], w.log.conn
    assert msgbox.has("information", "Charges Transfered Successfully", "Save...")


def test_merge_checked_room_without_focus(merge_env, msgbox):
    """Check1 se ticked room (no focus) → saare charges, charge_docids=None."""
    w = merge_env
    w.txt_to_room.setText("103")
    _tick(w.table_rooms, 1)  # 102, focus empty
    w.btn_merge.click()
    assert w.log.merge == [("102", "103", None)]
    assert w.log.conn == ["commit", "close"]


def test_merge_error_rolls_back(merge_env, msgbox, monkeypatch):
    w = merge_env
    w.txt_to_room.setText("103")
    w.txt_from_room.setText("101")
    _tick(w.table_rooms, 0)
    _tick(w.table_charges, 0)

    def _boom(*a, **k):
        raise RuntimeError("boom")

    monkeypatch.setattr(merge_env, "merge", None)  # no-op, keeps attribute
    monkeypatch.setattr(merge_env.log, "merge", [])
    monkeypatch.setattr(merge_env.state, "folios", merge_env.state["folios"])
    from HMS_py.ui import fo_sub_forms_ui as fsu_mod

    monkeypatch.setattr(fsu_mod.fo_ops, "merge_charge", _boom)
    w.btn_merge.click()
    assert msgbox.has("critical", "boom", "Save...")
    assert w.log.conn == ["rollback", "close"], w.log.conn


def test_merge_captions_labels(merge_env):
    from PyQt6.QtWidgets import QCheckBox, QGroupBox, QLabel

    w = merge_env
    assert w.windowTitle() == "Room Merge"
    assert w.btn_merge.text().replace("&&", "&") == "Transfer &Charges"
    assert w.btn_exit.text() == "Exit"
    gb = [g.title() for g in w.findChildren(QGroupBox)]
    assert "Rooms" in gb
    assert "List of Room" in gb
    assert "List of Room's Charge" in gb
    labels = [lb.text() for lb in w.findChildren(QLabel)]
    assert "Select Leader Room" in labels
    assert "From Room:" in labels
    checks = [c.text() for c in w.findChildren(QCheckBox)]
    assert checks.count("Check1") == 2
    assert w.table_rooms.columnCount() == 4
    assert w.table_charges.columnCount() == 6
    assert w.table_charges.isColumnHidden(5)
    # rooms load ho chuke hain (candidate SQL path)
    assert w.table_rooms.rowCount() == 2


def test_merge_rooms_sql_locked(fsu):
    """GAP-05: locked VB6 loc_13C471D SQL — structure + both site params."""
    sql = fsu.MergeChargeWindow._ROOMS_SQL
    assert sql.count("?") == 2
    assert "RoomMast.Code AS RoomNo" in sql
    assert "mFolioNo" in sql
    assert "RoomOcc.Type) NOT IN ('C','O')" in sql
    assert "Settledate IS NULL" in sql
    assert "ORDER BY RoomMast.Code" in sql


# ---------------------------------------------------------------
# Reverse Merge (GAP-10..13)
# ---------------------------------------------------------------
def test_reverse_missing_leader_message(rev_env, msgbox):
    w = rev_env
    w.btn_reverse.click()
    assert msgbox.has("information", "Please Select Leader Room No.", "Error.."), (
        msgbox.calls
    )
    assert w.log.reverse == []
    msgbox.calls.clear()
    w.txt_master.setText("999")
    w.btn_reverse.click()
    assert msgbox.has("information", "Please Select Leader Room No.", "Error.."), (
        msgbox.calls
    )
    assert w.log.reverse == []


def test_reverse_charge_selection_required(rev_env, msgbox):
    w = rev_env
    w.txt_master.setText("103")
    w._load_children()
    assert w.table.rowCount() == 2
    w.table.selectRow(0)  # room 101, 2 charges rendered
    assert w.table_charges.rowCount() == 2
    w.btn_reverse.click()
    assert msgbox.has(
        "information", "Please select any charges to be transfer", "Save..."
    ), msgbox.calls
    assert w.log.reverse == []


def test_reverse_success_passes_checked_ids(rev_env, msgbox):
    w = rev_env
    w.txt_master.setText("103")
    w._load_children()
    w.table.selectRow(0)
    _tick(w.table_charges, 0)
    w.btn_reverse.click()
    assert w.log.reverse == [("103", "101", ["CH1"])]
    assert msgbox.has("information", "Charges Transfered Successfully", "Save...")


def test_reverse_empty_charge_grid_all(rev_env, msgbox):
    """Charge grid khali -> charge_docids=None (poora folio reverse)."""
    w = rev_env
    w.txt_master.setText("103")
    w._load_children()
    w.table.selectRow(1)  # room 102, koi charge nahi
    assert w.table_charges.rowCount() == 0
    w.btn_reverse.click()
    assert w.log.reverse == [("103", "102", None)]


def test_reverse_remove_confirm_gates(rev_env, msgbox):
    w = rev_env
    w.txt_master.setText("103")
    w._load_children()
    item = w.table.item(1, 1)  # col >= 1, room "102"
    # user ne No -> removal nahi
    msgbox.set_confirm(None)
    w.table.itemDoubleClicked.emit(item)
    assert any(
        k == "question" and "Do You Want Remove Room No. 102" in t
        for k, ti, t in msgbox.calls
    ), msgbox.calls
    assert w.log.removed == []
    # user ne Yes -> removal + silent refresh
    msgbox.calls.clear()
    msgbox.set_confirm("Y")
    w.table.itemDoubleClicked.emit(item)
    assert w.log.removed == [("103", "102")]
    assert w.log.lc[-1] == ("103", "101")  # refresh ne children reload kiye


def test_reverse_remove_silent_guards(rev_env, msgbox):
    w = rev_env
    w.txt_master.setText("103")
    w._load_children()
    col0 = w.table.item(0, 0)
    w.table.itemDoubleClicked.emit(col0)  # col-0 -> silent
    assert msgbox.kinds() == []
    assert w.log.removed == []
    # master folio row (room == leader) -> silent
    w.state["children"].insert(
        0, {"room": "103", "folio": 13, "name": "Leader", "docid": "DOCL", "charges": 1}
    )
    w._load_children()
    item = w.table.item(0, 1)
    w.table.itemDoubleClicked.emit(item)
    assert w.log.removed == []


def test_reverse_missing_leader_load(rev_env, msgbox):
    w = rev_env
    w.btn_load.click()
    assert msgbox.has("information", "Please Select Leader Room No.", "Error.."), (
        msgbox.calls
    )
    assert w.table.rowCount() == 0


def test_reverse_captions_labels(rev_env):
    from PyQt6.QtWidgets import QCheckBox, QGroupBox, QLabel

    w = rev_env
    assert w.windowTitle() == "Reverse Room Merge"
    assert w.btn_reverse.text().replace("&&", "&") == "Transfer &Charges"
    labels = [lb.text() for lb in w.findChildren(QLabel)]
    assert "Enter Leader Room No" in labels
    checks = [c.text() for c in w.findChildren(QCheckBox)]
    assert "ALL" in checks
    gb = [g.title() for g in w.findChildren(QGroupBox)]
    assert "List of Room's Charge" in gb
    assert w.table_charges.columnCount() == 6
    assert w.table_charges.isColumnHidden(5)
    # kids table cols (report :133 — remove col SKIP)
    heads = [
        w.table.horizontalHeaderItem(i).text() for i in range(w.table.columnCount())
    ]
    assert heads == ["", "Room", "Folio", "Guest", "Master par charges"]


def test_reverse_all_checkbox_toggles_charge_grid(rev_env):
    w = rev_env
    w.txt_master.setText("103")
    w._load_children()
    w.table.selectRow(0)
    assert w.table_charges.rowCount() == 2
    w.chk_all.setChecked(True)  # GAP-13
    assert all(
        w.table_charges.item(i, 0).text() == TICK
        for i in range(w.table_charges.rowCount())
    )
    w.chk_all.setChecked(False)
    assert all(
        w.table_charges.item(i, 0).text() == ""
        for i in range(w.table_charges.rowCount())
    )
