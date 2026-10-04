"""Room Change UI (VB6 fdRoomChange) - spec003 §5.1.

Cover: FR-7 save gate + `none found` empty state, exact VB6 validation
strings (§1.4), FR-8 change_date/change_time wiring, aur entry-point
unification (§4): registry opener real, legacy shell dialog gone,
frontoffice toolbar P1 window kholti hai (QInputDialog nahi).
"""

from __future__ import annotations

import ast
import datetime
import os
from types import SimpleNamespace

import pytest

pytestmark = pytest.mark.unit

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

_QAPP = None
_ROOT = os.path.abspath(
    os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..")
)
_DOCID = "DKKCHK 2025 1000"


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
    """QMessageBox ko recorder se badlo - offscreen test me dialog block na ho."""
    calls: list[tuple[str, str, str]] = []

    def _make(kind):
        def _f(parent=None, title="", text="", *a, **k):
            calls.append((kind, str(title), str(text)))
            return "Y" if kind == "question" else None

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

    return _Box()


@pytest.fixture
def room_change_rec(fsu, monkeypatch):
    """fo_ops.room_change -> recorder (asli DB write kabhi nahi hoga)."""
    calls: list[dict] = []

    def _rc(docid, new_room, reason="", **k):
        calls.append(
            {"docid": docid, "new_room": new_room, "reason": reason, "kwargs": k}
        )
        return {
            "affected": 1,
            "new_sno": 2,
            "new_room": new_room,
            "old_room": "101",
            "folio": 10,
        }

    monkeypatch.setattr(fsu.fo_ops, "room_change", _rc)
    return calls


@pytest.fixture
def dbq(fsu, monkeypatch):
    """fsu.db.query fake -> validation counts dict se route hota hai."""
    state = {"ro": 1, "kot": 0}

    def _q(sql, params=(), cn=None):
        if "RoomMast" in sql:
            return [(state["ro"],)]
        if "KOT" in sql:
            return [(state["kot"],)]
        return []

    monkeypatch.setattr(fsu, "db", SimpleNamespace(query=_q))
    return state


@pytest.fixture
def window(fsu, msgbox, monkeypatch):
    monkeypatch.setattr(fsu.fo_ops, "free_rooms", lambda *a, **k: ["201", "202"])
    return fsu.RoomChangeWindow()


def _set_loaded(w, old="101", new="201", reason="AC fault"):
    """Loaded-state seed kar (VB6 pre-checks saved state par chalte hain)."""
    w._docid = _DOCID
    w.lbl_oldroom.setText(old)
    w._roomtype = "DLX"
    w._adult = 2
    w._tariff = 2500.0
    w.cmb_newroom.setCurrentText(new)
    w.txt_reason.setText(reason)


# ---------------------------------------------------------------
# FR-7: loading / empty states
# ---------------------------------------------------------------
def test_save_disabled_until_load_and_none_found(window, fsu, monkeypatch):
    # FR-7: folio load se pehle save band
    assert not window.btn_save.isEnabled()
    # FR-7: free rooms khali ho to combo me "none found"
    monkeypatch.setattr(fsu.fo_ops, "free_rooms", lambda *a, **k: [])
    window._fill_free_rooms()
    assert window.cmb_newroom.count() == 1
    assert window.cmb_newroom.itemText(0) == "none found"


def test_load_folio_empty_input_skips_db(window, msgbox, monkeypatch):
    seen = []
    from HMS_py.ui import fo_sub_forms_ui as m

    monkeypatch.setattr(
        m.fo_ops, "open_folio_by_docid", lambda q, cn=None: seen.append(q) or None
    )
    monkeypatch.setattr(
        m.fo_ops, "open_folio_by_room", lambda q, cn=None: seen.append(q) or None
    )
    window.txt_search.setText("   ")
    window._load_folio()
    assert seen == []
    assert msgbox.has("warning", "Room No ya DocId likho", "Input")


def test_load_folio_not_found_keeps_save_disabled(window, msgbox, monkeypatch):
    from HMS_py.ui import fo_sub_forms_ui as m

    monkeypatch.setattr(m.fo_ops, "open_folio_by_docid", lambda q, cn=None: None)
    monkeypatch.setattr(m.fo_ops, "open_folio_by_room", lambda q, cn=None: None)
    window.txt_search.setText("999")
    window._load_folio()
    assert msgbox.has("information", "Koi in-house guest nahi mila")
    assert not window.btn_save.isEnabled()


# ---------------------------------------------------------------
# FR-3 / §1.4: exact VB6 save pre-checks (order: frm 3385-3468)
# ---------------------------------------------------------------
def test_save_empty_reason_vb6_msg(window, msgbox, dbq, room_change_rec):
    _set_loaded(window, reason="")
    window._save()
    assert msgbox.has("warning", "Reason is a required field.", "Validation Error")
    assert "question" not in msgbox.kinds()
    assert room_change_rec == []


def test_save_room_type_required(window, msgbox, dbq, room_change_rec):
    _set_loaded(window)
    window._roomtype = ""
    window._save()
    assert msgbox.has("critical", "Room Type is a required field.")
    assert "question" not in msgbox.kinds()
    assert room_change_rec == []


def test_save_new_room_required(window, msgbox, dbq, room_change_rec):
    _set_loaded(window, new="")
    window._save()
    assert msgbox.has("warning", "Room No is a required field.", "Validation Error")
    assert "question" not in msgbox.kinds()
    assert room_change_rec == []


def test_save_adult_zero_vb6_msg(window, msgbox, dbq, room_change_rec):
    _set_loaded(window)
    window._adult = 0
    window._save()
    assert msgbox.has("critical", "Adult should not be zero.")
    assert "question" not in msgbox.kinds()
    assert room_change_rec == []


def test_save_room_not_ro_re_select(window, msgbox, dbq, room_change_rec):
    dbq["ro"] = 0  # RoomMast Type='RO' count -> nahi mila
    _set_loaded(window)
    window._save()
    assert msgbox.has("information", "Re Select Room No")
    assert "question" not in msgbox.kinds()
    assert room_change_rec == []


def test_save_kot_pending_blocks(window, msgbox, dbq, room_change_rec):
    dbq["kot"] = 1
    _set_loaded(window)
    window._save()
    assert msgbox.has("critical", "There is some KOT Pending for this Room.")
    assert "question" not in msgbox.kinds()
    assert room_change_rec == []


def test_save_same_room_blocked(window, msgbox, dbq, room_change_rec):
    _set_loaded(window, old="101", new="101")
    window._save()
    assert msgbox.has("warning", "New room aur current room same hai")
    assert "question" not in msgbox.kinds()  # confirm se pehle hi abort
    assert room_change_rec == []


def test_save_tariff_zero_validation_error(window, msgbox, dbq, room_change_rec):
    _set_loaded(window)
    window._tariff = 0
    window._save()
    assert msgbox.has(
        "critical", "Tariff should be greater than zero.", "Validation Error"
    )
    assert "question" not in msgbox.kinds()
    assert room_change_rec == []


# ---------------------------------------------------------------
# FR-1 + FR-4 + FR-5 + FR-8: happy path
# ---------------------------------------------------------------
def test_happy_path_stay_block_and_change_datetime(
    window, msgbox, monkeypatch, room_change_rec
):
    from HMS_py.ui import fo_sub_forms_ui as m

    rec = {
        "docid": _DOCID,
        "folio": 10,
        "name": "GUEST ONE",
        "guestprof": "GP01",
        "bookingdocid": "",
        "vprefix": "DKKCHK",
        "vdate": None,
    }
    today = datetime.date.today()
    stay = SimpleNamespace(
        RoomNo="101",
        ChkInDate=today,
        ChkInTime="12:00",
        ChngDate=None,
        RoomType="DLX",
        RoomCat="AC",
        RateCode="RACK",
        RoomRate=2500.0,
        Adult=2,
        Children=1,
        DepDate=today + datetime.timedelta(days=2),
        Company="KKCRED",
        CompanyName="ACME CORP",
    )

    def _q(sql, params=(), cn=None):
        if "TOP 1" in sql and "RoomOcc" in sql:
            return [stay]
        if "RoomMast" in sql:
            return [(1,)]
        if "KOT" in sql:
            return [(0,)]
        return []

    monkeypatch.setattr(m, "db", SimpleNamespace(query=_q))
    monkeypatch.setattr(
        m.fo_ops, "open_folio_by_docid", lambda q, cn=None: rec if q == _DOCID else None
    )
    monkeypatch.setattr(
        m.fo_ops, "open_folio_by_room", lambda q, cn=None: rec if q == "101" else None
    )

    w = window
    w.txt_search.setText("101")  # FR-1: docid miss -> room se resolve
    w._load_folio()
    assert w.btn_save.isEnabled()
    assert w.lbl_oldroom.text() == "101"
    assert "GUEST ONE" in w.lbl_guest.text()
    # stay block (§3.2) ek hi query se bhara
    assert w.lbl_roomtype.text() == "DLX"
    assert w.lbl_roomcat.text() == "AC"
    assert w.lbl_ratecode.text() == "RACK"
    assert w.lbl_adult.text() == "2"
    assert w.lbl_children.text() == "1"
    assert w.lbl_nodays.text() == "2"
    assert "ACME CORP" in w.lbl_company.text()
    assert w.lbl_tariff.text() in ("2500.0", "2500.00")
    # FR-8: change date/time load par capture ho, screen par dikhe
    assert w._change_date == datetime.date.today()
    assert w._change_date.strftime("%d/%b/%Y") in w.lbl_change.text()
    assert w._change_time in w.lbl_change.text()

    w.txt_reason.setText("AC fault")
    w.cmb_newroom.setCurrentText("201")
    w._save()
    assert "question" in msgbox.kinds()  # FR-4 confirm hua
    assert len(room_change_rec) == 1
    call = room_change_rec[0]
    assert call["docid"] == _DOCID
    assert call["new_room"] == "201"
    assert call["reason"] == "AC fault"
    # FR-8: displayed change date/time hi core ko gaya
    assert call["kwargs"]["change_date"] == w._change_date
    assert call["kwargs"]["change_time"] == w._change_time
    assert call["kwargs"]["user"] == m.fo_ops.USER
    # success dialog + reload docid se (purana room ab nahi milna chahiye)
    assert any(
        k == "information" and "Room changed to 201" in t for k, _, t in msgbox.calls
    )
    assert w.txt_search.text() == _DOCID
    assert w.btn_save.isEnabled()


# ---------------------------------------------------------------
# §4 wiring: registry / shell legacy / frontoffice toolbar
# ---------------------------------------------------------------
def test_registry_room_change_is_real_p1_dialog(monkeypatch):
    from HMS_py.ui import fo_sub_forms_ui as m
    from HMS_py.ui.shell import _form_registry

    opened = []
    monkeypatch.setattr(
        m, "open_room_change", lambda w=None, user=None: opened.append(w)
    )
    reg = {str(k).strip().lower(): v for k, v in _form_registry().items()}
    fn = reg.get("room change")
    assert fn, "Room Change registry me nahi hai"
    assert "coming_soon" not in getattr(fn, "__qualname__", ""), (
        "Room Change _coming_soon par downgrade ho gaya"
    )
    fn("PARENT")
    assert opened == ["PARENT"], "registry fosub_ui.open_room_change nahi bulati"


def test_shell_legacy_open_room_change_removed():
    shell = os.path.join(_ROOT, "ui", "shell.py")
    src = open(shell, encoding="utf-8", errors="replace").read()
    tree = ast.parse(src, filename=shell)
    names = {
        n.name
        for n in ast.walk(tree)
        if isinstance(n, (ast.FunctionDef, ast.AsyncFunctionDef))
    }
    assert "_open_room_change" not in names, (
        "legacy dead _open_room_change dialog abhi bhi shell.py me hai"
    )
    assert "checkin_mod.room_change" not in src


def test_frontoffice_toolbar_opens_window_not_qinputdialog(monkeypatch):
    from HMS_py.ui import fo_sub_forms_ui as m
    from HMS_py.ui import frontoffice

    opened = []

    class _Win:
        def __init__(self):
            self._q = ""
            self._loaded = False
            self._cb = None
            self.txt_search = SimpleNamespace(setText=self._set_text)
            self.btn_load = SimpleNamespace(click=self._click)
            self.room_changed = SimpleNamespace(connect=self._connect)

        def _set_text(self, t):
            self._q = t

        def _click(self):
            self._loaded = True

        def _connect(self, cb):
            self._cb = cb

    win = _Win()
    monkeypatch.setattr(
        m,
        "open_room_change",
        lambda parent=None, user=None: opened.append((parent, user)) or win,
    )

    class _QID:
        @staticmethod
        def getText(*a, **k):
            raise AssertionError("QInputDialog.getText abhi bhi use ho raha hai")

        @staticmethod
        def getInt(*a, **k):
            raise AssertionError("QInputDialog.getInt abhi bhi use ho raha hai")

    monkeypatch.setattr(frontoffice, "QInputDialog", _QID)

    class _Timer:
        def __init__(self):
            self.started = 0

        def start(self, ms=0):
            self.started += 1

    class _FO:
        user = "T1"

        def __init__(self):
            self._reload_timer = _Timer()
            self._rc_win = None

        def _selected(self):
            return {"docid": _DOCID, "folio": 10, "name": "G", "roomno": "101"}

    fo = _FO()
    # _on_room_change handler CheckInBrowser (frontoffice toolbar) ka hai
    frontoffice.CheckInBrowser._on_room_change(fo)
    assert len(opened) == 1
    parent, user = opened[0]
    assert parent is fo and user == "T1"
    assert fo._rc_win is win
    assert win._q == _DOCID  # selected folio context pre-fill
    assert win._loaded  # auto FR-1 load
    assert win._cb is not None  # room_changed -> grid reload wired
    win._cb({"old_room": "101", "new_room": "201"})
    assert fo._reload_timer.started == 1
