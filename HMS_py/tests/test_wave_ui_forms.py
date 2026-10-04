"""Wave 5-7 UI windows + SundryType save-flow tests.

UI tests offscreen Qt pe, DB offline-graceful (DB down ho to skip —
existing test_ui_walkthroughs.py convention). Core SundryType tests
db_transaction fixture use karte hain (conftest: BEGIN + ROLLBACK per
test — production data untouched, master-prompt safety rules).

Covers:
- fd_forms_ui: 10 openers + grid population + registry captions
- posting_forms_ui: 4 openers + registry captions
- walkin_rack_ui: 4 openers + registry captions
- core.sundry_type: vtype_for, add_entry guards (required/duplicate/
  unknown-code), rollback safety, next_sno, list_entries
"""
from __future__ import annotations

import os
import sys
from pathlib import Path

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

pytestmark = [pytest.mark.unit] if hasattr(pytest.mark, "unit") else []

_QAPP = None

# modal-hang guard (offscreen pe hidden C++ modals hang karte hain —
# verify_fd_forms.py pattern; windows construction ke dauran dialogs
# khol sakti hain, e.g. DB errors)
def _stub_msgboxes():
    from PyQt6.QtWidgets import QDialog, QMessageBox
    QDialog.exec = lambda self, *a, **k: QDialog.DialogCode.Rejected
    QMessageBox.information = staticmethod(
        lambda *a, **k: QMessageBox.StandardButton.Ok)
    QMessageBox.warning = staticmethod(
        lambda *a, **k: QMessageBox.StandardButton.Ok)
    QMessageBox.critical = staticmethod(
        lambda *a, **k: QMessageBox.StandardButton.Ok)
    QMessageBox.question = staticmethod(
        lambda *a, **k: QMessageBox.StandardButton.Yes)


@pytest.fixture(autouse=True)
def _modal_guard():
    """UI tests ke dauran modals stub; baad me originals restore (dusri
    test files pe leak na ho)."""
    import PyQt6.QtWidgets as W
    saved = {n: getattr(W.QMessageBox, n)
             for n in ("information", "warning", "critical", "question")}
    saved_exec = W.QDialog.exec
    _stub_msgboxes()
    yield
    for n, fn in saved.items():
        setattr(W.QMessageBox, n, fn)
    W.QDialog.exec = saved_exec


def _qapp():
    global _QAPP
    if _QAPP is None:
        from PyQt6.QtWidgets import QApplication
        _QAPP = QApplication.instance() or QApplication([])
    return _QAPP


def _db_up() -> bool:
    try:
        from HMS_py.core import db
        db.query("SELECT 1")
        return True
    except Exception:
        return False


DB = pytest.mark.skipif(not _db_up(), reason="DB offline")


# =================================================================
# fd_forms_ui (Wave 5)
# =================================================================
class TestFdFormsUi:
    def test_ten_openers_construct_and_close(self):
        from HMS_py.ui import fd_forms_ui as m
        _qapp()
        for fn in (m.open_amend_stay, m.open_lookup_reservation,
                   m.open_room_checkout, m.open_guest_ledger,
                   m.open_guest_ledger_summ, m.open_group_checkout,
                   m.open_group_detail_checkout, m.open_lookup_room,
                   m.open_depart_sundry, m.open_facility_sundry):
            w = fn()
            assert w is not None
            w.close()

    def test_lookup_reservation_search_populates_grid(self):
        from HMS_py.ui import fd_forms_ui as m
        _qapp()
        w = m.open_lookup_reservation()
        try:
            w.txt_search.setText("PYT")
            w._search()
            assert w.grid.columnCount() == 7
        finally:
            w.close()

    def test_lookup_reservation_arrivals_and_checkin_prefill(self,
                                                             monkeypatch):
        # Phase 11 fdCheckIn iteration: arrivals grid (VB6 Form_Load) +
        # Check In button -> early-arrival warn -> WalkInEntryWindow
        # prefill (GuestProf + booking docid).
        import datetime
        from HMS_py.ui import fd_forms_ui as m
        from HMS_py.ui import walkin_rack_ui as wu
        _qapp()
        row = {"docid": "DKKRES   2026       9", "bookno": 9,
               "name": "PYT ARR GUEST", "guestprof": "PYT0001",
               "arrdate": datetime.date.today() + datetime.timedelta(days=2),
               "depdate": datetime.date.today() + datetime.timedelta(days=3),
               "nodays": 1, "noofrooms": 2, "roomcat": "KK003",
               "roomtype": "RO", "roomno": "", "roomrate": 3000.0}
        monkeypatch.setattr(m.booking, "list_arrivals",
                            lambda **kw: [row])
        opened = {}

        class _FakeTxt:
            def __init__(self):
                self.value = ""

            def setText(self, v):
                self.value = v

        class _FakeWalkin:
            def __init__(self):
                self.txt_guestprof = _FakeTxt()
                self.txt_booking = _FakeTxt()
                self.steps = []
                self.said = []

            def _show_step(self, i):
                self.steps.append(i)

            def _say(self, s):
                self.said.append(s)

        def _open(parent=None, **kw):
            f = _FakeWalkin()
            opened["w"] = f
            return f

        monkeypatch.setattr(wu, "open_walkin_entry", _open)
        warned = {"n": 0}

        def _q(*a, **k):
            warned["n"] += 1
            return m.QMessageBox.StandardButton.Yes

        monkeypatch.setattr(m.QMessageBox, "question", _q)
        w = m.open_lookup_reservation()
        try:
            assert w.grid.columnCount() == 7
            assert len(w._rows) == 1, "arrivals row grid me load nahi"
            w.grid.selectRow(0)
            w._checkin_selected()
            assert warned["n"] == 1, "early-arrival warn fire nahi hua"
            fw = opened["w"]
            assert fw.txt_guestprof.value == "PYT0001"
            assert fw.txt_booking.value == "DKKRES   2026       9"
            assert fw.steps == [0]
        finally:
            w.close()

    def test_group_detail_checkout_has_balance_column(self):
        from HMS_py.ui import fd_forms_ui as m
        _qapp()
        w = m.open_group_detail_checkout()
        try:
            w._fill()
            assert w.grid.columnCount() >= 6
        finally:
            w.close()

    def test_sundry_windows_have_add_flow(self):
        from HMS_py.ui import fd_forms_ui as m
        _qapp()
        for cls in (m.DepartSundryWindow, m.FacilitySundryWindow):
            w = cls()
            try:
                assert w.windowTitle() == "Outlet Bill Sundry Setting"
                assert hasattr(w, "cmb_sundry")
                assert hasattr(w, "grid")
            finally:
                w.close()

    def test_registry_captions_wired(self):
        from HMS_py.ui import shell
        reg = shell._form_registry()
        for cap in ("Amend Stay", "Look Up Reservation By Guest Name",
                    "Room Check Out", "Guest Ledger",
                    "Summerized Guest Ledger", "Room Check Out Entry",
                    "Look Up Room", "Depart Sundry Setting"):
            fn = reg.get(cap)
            assert fn is not None, f"{cap} registry me nahi"
            assert "coming_soon" not in repr(fn), f"{cap} coming_soon"


# =================================================================
# posting_forms_ui (Wave 6)
# =================================================================
class TestPostingFormsUi:
    def test_four_openers_construct_and_close(self):
        from HMS_py.ui import posting_forms_ui as m
        _qapp()
        for fn in (m.open_post_chrg, m.open_payment_charge,
                   m.open_re_settlement, m.open_rev_checkout):
            w = fn()
            assert w is not None
            w.close()

    def test_receipts_grid_columns(self):
        from HMS_py.ui import posting_forms_ui as m
        _qapp()
        w = m.open_payment_charge()
        try:
            assert w.grid.columnCount() == 9
        finally:
            w.close()

    # ---- Phase 11 iteration 4: fdPostChrg batch posting wiring ----

    def test_post_chrg_title_and_date_widget(self):
        # spec 002 FR-001: VB6 caption 'Post Charges /Payments', 'Date For'
        # QDateEdit (business-date default), red lbl_display progress.
        from PyQt6.QtWidgets import QDateEdit
        from HMS_py.ui import posting_forms_ui as m
        _qapp()
        w = m.open_post_chrg()
        try:
            assert w.windowTitle() == "Post Charges /Payments"
            assert w.findChild(QDateEdit) is not None, "Date For missing"
            assert w.lbl_display is not None
            # manual amount entry VB6 fdPostChrg me nahi tha (spec 002:
            # batch-only) - wo controls ab is window pe nahi
            assert not hasattr(w, "txt_amt")
            assert not hasattr(w, "cmb_room")
        finally:
            w.close()

    def test_post_chrg_enviro_gate_blocks_engine(self, monkeypatch):
        # FR-003: RoomChrgPostingType='While Printing Bill' -> no-op
        from HMS_py.ui import posting_forms_ui as m
        _qapp()
        w = m.open_post_chrg()
        try:
            monkeypatch.setattr(m.nightaudit, "billed_folios_for_date",
                                lambda *a, **k: [])
            monkeypatch.setattr(
                m.nightaudit, "get_night_audit_flags",
                lambda *a, **k: {"room_chrg_type": "While Printing Bill"})
            monkeypatch.setattr(
                m.nightaudit, "post_room_charges_for_date",
                lambda *a, **k: (_ for _ in ()).throw(
                    AssertionError("gate ke baad engine nahi chalna chahiye")))
            info = []
            monkeypatch.setattr(
                m.QMessageBox, "information",
                lambda *a, **k: info.append(a) or
                m.QMessageBox.StandardButton.Ok)
            w._post()
            assert info, "gate info message expected"
            assert "Posting disabled" in w.lbl_display.text()
        finally:
            w.close()

    def test_post_chrg_billed_guard_exact_message(self, monkeypatch):
        # FR-004/SC-003: VB6 Proc_62_23 exact message + no engine call
        from HMS_py.ui import posting_forms_ui as m
        _qapp()
        w = m.open_post_chrg()
        try:
            monkeypatch.setattr(
                m.nightaudit, "billed_folios_for_date",
                lambda *a, **k: [{"folio": 458, "roomno": "303"}])
            monkeypatch.setattr(
                m.nightaudit, "post_room_charges_for_date",
                lambda *a, **k: (_ for _ in ()).throw(
                    AssertionError("guard ke baad engine nahi chalna chahiye")))
            warn = []
            monkeypatch.setattr(
                m.QMessageBox, "warning",
                lambda *a, **k: warn.append(a) or
                m.QMessageBox.StandardButton.Ok)
            w._post()
            assert warn, "guard warning expected"
            text = warn[0][2]
            assert ("There is some unsettled guest bill,\n"
                    "First Settle it then Process this operation") in text
            assert "303" in text
            assert "Blocked" in w.lbl_display.text()
        finally:
            w.close()

    def test_post_chrg_nothing_to_post(self, monkeypatch):
        # FR-006: zero eligible -> explicit message, no writes
        from HMS_py.ui import posting_forms_ui as m
        _qapp()
        w = m.open_post_chrg()
        try:
            monkeypatch.setattr(m.nightaudit, "billed_folios_for_date",
                                lambda *a, **k: [])
            monkeypatch.setattr(m.nightaudit, "get_night_audit_flags",
                                lambda *a, **k: {"room_chrg_type": "Daily"})
            monkeypatch.setattr(m.nightaudit, "get_inhouse_rooms",
                                lambda *a, **k: [])
            monkeypatch.setattr(m.db, "query", lambda *a, **k: [])
            monkeypatch.setattr(
                m.nightaudit, "post_room_charges_for_date",
                lambda *a, **k: (_ for _ in ()).throw(
                    AssertionError("nothing-to-post pe engine nahi chalna")))
            info = []
            monkeypatch.setattr(
                m.QMessageBox, "information",
                lambda *a, **k: info.append(a) or
                m.QMessageBox.StandardButton.Ok)
            w._post()
            assert info, "nothing-to-post message expected"
            assert "Nothing to post" in info[0][2]
            assert "Nothing to post" == w.lbl_display.text()
        finally:
            w.close()

    def test_post_chrg_success_flow_progress_and_summary(self, monkeypatch):
        # FR-005/FR-009: VB6 lblDisplay text + completion label + summary
        from HMS_py.ui import posting_forms_ui as m
        _qapp()
        w = m.open_post_chrg()
        try:
            fake_room = {"folio": 99001, "docid": "DKKCHK   2026  99001",
                         "roomno": "801", "guest": "PYT UI GUEST",
                         "roomrate": 1000.0, "mfolio": 0,
                         "guestprof": "PYT0001", "roomcat": "KK001",
                         "roomtype": "RO", "plancode": ""}
            monkeypatch.setattr(m.nightaudit, "billed_folios_for_date",
                                lambda *a, **k: [])
            monkeypatch.setattr(m.nightaudit, "get_night_audit_flags",
                                lambda *a, **k: {"room_chrg_type": "Daily"})
            monkeypatch.setattr(m.nightaudit, "get_inhouse_rooms",
                                lambda *a, **k: [fake_room])
            monkeypatch.setattr(m.db, "query", lambda *a, **k: [])
            label_during_progress = []

            def fake_engine(vdate, vprefix=None, user=None, cn=None,
                            commit=True, progress=None):
                if progress:
                    progress(0, 1, "801")
                    label_during_progress.append(w.lbl_display.text())
                return {"posted": 1, "skipped": 0, "eligible": 1,
                        "errors": []}

            monkeypatch.setattr(m.nightaudit, "post_room_charges_for_date",
                                fake_engine)
            info = []
            monkeypatch.setattr(
                m.QMessageBox, "information",
                lambda *a, **k: info.append(a) or
                m.QMessageBox.StandardButton.Ok)
            w._post()
            # VB6 exact progress text
            assert label_during_progress == \
                ["Posting Charges For Room : 801"]
            assert w.lbl_display.text() == "Posting Room Charges Completed"
            assert info, "completion summary expected"
            assert "Posted: 1" in info[0][2]
            assert "Eligible: 1" in info[0][2]
        finally:
            w.close()

    def test_registry_captions_wired(self):
        from HMS_py.ui import shell
        reg = shell._form_registry()
        for cap in ("Post Charges /Payments", "Post Charges & Payment",
                    "Post Charges/Payment", "Check Out Cancel"):
            fn = reg.get(cap)
            assert fn is not None, f"{cap} registry me nahi"
            assert "coming_soon" not in repr(fn), f"{cap} coming_soon"


# =================================================================
# walkin_rack_ui (Wave 7)
# =================================================================
class TestWalkinRackUi:
    def test_four_openers_construct_and_close(self):
        from HMS_py.ui import walkin_rack_ui as m
        _qapp()
        for fn in (m.open_room_view, m.open_display_rack,
                   m.open_roomocc_lookup, m.open_walkin_entry):
            w = fn()
            assert w is not None
            w.close()

    def test_walkin_requires_name(self, monkeypatch):
        from HMS_py.ui import walkin_rack_ui as m
        from PyQt6.QtWidgets import QMessageBox
        _qapp()
        w = m.open_walkin_entry()
        try:
            w.txt_name.setText("")
            seen = []

            def _fake_warn(*a, **k):
                seen.append(a)
                return QMessageBox.StandardButton.Ok
            monkeypatch.setattr(QMessageBox, "warning", _fake_warn)
            w._checkin()
            assert seen, "empty-name warning expected"
        finally:
            w.close()

    def test_walkin_checkin_passes_field_map_fields(self, monkeypatch):
        """CHECKIN_FIELD_MAP left/right-zone fields create_checkin tak
        pahunchte hain (Phase 11 walk-in parity wiring proof)."""
        from PyQt6.QtCore import QTime
        from PyQt6.QtWidgets import QMessageBox
        from HMS_py.ui import walkin_rack_ui as m
        _qapp()
        monkeypatch.setattr(m.roomstatus, "room_rack", lambda: [])
        w = m.open_walkin_entry()
        captured = {}

        def _fake_create(**kw):
            captured.update(kw)
            return 9999

        monkeypatch.setattr(m.checkin, "create_checkin", _fake_create)
        monkeypatch.setattr(
            m.checkin, "get",
            lambda folio, cn=None, vprefix="2026": {"roomno": "201"})
        monkeypatch.setattr(
            QMessageBox, "question",
            lambda *a, **k: QMessageBox.StandardButton.Yes)
        try:
            w.txt_name.setText("PYT FIELD MAP")
            w.txt_add1.setText("H-1 Test Nagar")
            w.txt_add2.setText("Sector 42")
            w.txt_nationality.setText("Indian")
            w.txt_arrfrom.setText("Delhi")
            w.txt_destination.setText("Goa")
            w.txt_travelmode.setText("Air")
            w.txt_company.setText("PYTCO")
            w.txt_travelagent.setText("PYTTA")
            w.txt_rodisc.setText("10")
            w.txt_remark.setText("parity run")
            w.txt_roomrate.setText("1750")
            w.time_dep.setTime(QTime(12, 30))
            w._checkin()
        finally:
            w.close()
        assert captured.get("add1") == "H-1 Test Nagar"
        assert captured.get("add2") == "Sector 42"
        assert captured.get("nationality") == "Indian"
        assert captured.get("arrfrom") == "Delhi"
        assert captured.get("destination") == "Goa"
        assert captured.get("travelmode") == "Air"
        assert captured.get("company") == "PYTCO"
        assert captured.get("travelagent") == "PYTTA"
        assert captured.get("rodisc") == 10.0
        assert captured.get("remarks") == "parity run"
        assert captured.get("roomrate") == 1750.0
        assert captured.get("deptime") == "12:30"

    def test_walkin_entry_uses_progressive_steps(self, monkeypatch):
        from HMS_py.ui import walkin_rack_ui as m
        _qapp()
        monkeypatch.setattr(m.roomstatus, "room_rack", lambda: [])
        w = m.open_walkin_entry()
        try:
            assert w.step_stack.currentIndex() == 0
            w.btn_next.click()
            assert w.step_stack.currentIndex() == 0
            w.txt_name.setText("PYT Wizard Guest")
            w.btn_next.click()
            assert w.step_stack.currentIndex() == 1
            w.btn_next.click()
            assert w.step_stack.currentIndex() == 2
            assert "PYT Wizard Guest" in w.lbl_review.text()
        finally:
            w.close()

    def test_front_office_walkin_routes_to_entry(self, monkeypatch):
        from HMS_py.ui import frontoffice, shell, walkin_rack_ui
        calls = []

        def _fake_entry(parent=None, user="PYADMIN"):
            calls.append((parent, user))
            return object()

        monkeypatch.setattr(walkin_rack_ui, "open_walkin_entry", _fake_entry)
        monkeypatch.setattr(frontoffice, "open_checkin",
                            lambda *a, **k: pytest.fail(
                                "WalkIn CheckIn must use the VB6 entry window"))
        reg = shell._form_registry()
        reg["WalkIn CheckIn"](None)
        reg["Check In"](None)
        assert calls == [(None, "PYADMIN"), (None, "PYADMIN")]

    def test_walkin_entry_has_visual_hierarchy(self, monkeypatch):
        from PyQt6.QtWidgets import QFrame
        from HMS_py.ui import walkin_rack_ui as m
        _qapp()
        monkeypatch.setattr(m.roomstatus, "room_rack", lambda: [])
        w = m.open_walkin_entry()
        try:
            assert w.findChild(QFrame, "walkinHeader") is not None
            assert w.findChild(QFrame, "stepBar") is not None
            assert w.btn_next.property("accent") is True
            assert w.btn_checkin.property("success") is True
        finally:
            w.close()

    def test_room_view_tiles_render(self):
        from HMS_py.ui import walkin_rack_ui as m
        _qapp()
        w = m.open_room_view()
        try:
            assert w.info.text() != ""
        finally:
            w.close()

    def test_registry_captions_wired(self):
        from HMS_py.ui import shell
        reg = shell._form_registry()
        for cap in ("Room View", "Display Rack",
                    "Reservation Look Up Room Wise",
                    "Walk In / Check In Entry"):
            fn = reg.get(cap)
            assert fn is not None, f"{cap} registry me nahi"
            assert "coming_soon" not in repr(fn), f"{cap} coming_soon"


# =================================================================
# core.sundry_type — SundryType save-flow (rollback-safe)
# =================================================================
class TestSundryTypeCore:
    def test_vtype_for(self):
        from HMS_py.core import sundry_type as st
        assert st.vtype_for("depart") == "KKPURC"
        assert st.vtype_for("facility") == "FACL"

    @DB
    def test_add_entry_and_duplicate_guard(self, db_transaction):
        from HMS_py.core import db, sundry_type as st
        cn = db_transaction
        # pick a SundryMast code jo KKPURC me abhi use NAHI ho raha
        # (VB6 duplicate-guard live data pe bhi deterministic test ho)
        rows = db.query(
            "SELECT TOP 1 RTRIM(m.Code) FROM SundryMast m WHERE NOT EXISTS "
            "(SELECT 1 FROM SundryType s WHERE s.V_Type = 'KKPURC' AND "
            "s.SundryCode = m.Code) ORDER BY m.Code", cn=cn)
        if not rows:
            pytest.skip("SundryMast me free code hi nahi (sab KKPURC me)")
        code = rows[0][0]
        before = db.query(
            "SELECT COUNT(*) FROM SundryType WHERE V_Type = 'KKPURC'",
            cn=cn)[0][0]
        st.add_entry("depart", code, "TEST DISP", cn=cn, commit=False)
        after = db.query(
            "SELECT COUNT(*) FROM SundryType WHERE V_Type = 'KKPURC'",
            cn=cn)[0][0]
        assert after == before + 1
        # duplicate must raise
        with pytest.raises(ValueError, match="Duplicate"):
            st.add_entry("depart", code, "AGAIN", cn=cn, commit=False)
        # unknown sundry code must raise
        with pytest.raises(ValueError, match="SundryMast"):
            st.add_entry("depart", "ZZZZZZ", "X", cn=cn, commit=False)

    @DB
    def test_add_entry_rollback_no_residue(self, db_connection):
        from HMS_py.core import db, sundry_type as st
        cn = db_connection
        code = db.query(
            "SELECT TOP 1 RTRIM(Code) FROM SundryMast ORDER BY Code",
            cn=cn)[0][0]
        before = db.query(
            "SELECT COUNT(*) FROM SundryType", cn=cn)[0][0]
        st.add_entry("facility", code, "RB TEST", cn=cn, commit=False)
        mid = db.query("SELECT COUNT(*) FROM SundryType", cn=cn)[0][0]
        assert mid == before + 1, "uncommitted row visible in-txn"
        cn.rollback()
        after = db.query("SELECT COUNT(*) FROM SundryType", cn=cn)[0][0]
        assert after == before, "residue after rollback!"

    @DB
    def test_next_sno_monotonic(self, db_transaction):
        from HMS_py.core import db, sundry_type as st
        cn = db_transaction
        code = db.query(
            "SELECT TOP 1 RTRIM(Code) FROM SundryMast ORDER BY Code",
            cn=cn)[0][0]
        s1 = st.next_sno("FACL", cn=cn)
        st.add_entry("facility", code, "SNO TEST", cn=cn, commit=False)
        s2 = st.next_sno("FACL", cn=cn)
        assert s2 == s1 + 1

    @DB
    def test_list_entries_shape(self, db_transaction):
        from HMS_py.core import sundry_type as st
        rows = st.list_entries("depart", cn=db_transaction)
        for r in rows:
            assert set(r) >= {"vtype", "sundrycode", "sno", "dispname",
                              "sundry_name", "rev_name", "postyn"}
            assert r["vtype"] == "KKPURC"


# =================================================================
# roomstatus_ui: Room Category Wise lookup (VB6 resRoomType)
# =================================================================
class TestRoomTypeLookup:
    def test_opener_constructs_and_filters(self, monkeypatch):
        from HMS_py.ui import roomstatus_ui as m
        from HMS_py.ui import shell
        _qapp()
        rack = [
            {'roomno': '101', 'cat': 'DELUXE', 'status': 'Vacant',
             'guest': '', 'folio': None},
            {'roomno': '201', 'cat': 'EXECUTIVE', 'status': 'Occupied',
             'guest': 'G', 'folio': 1},
            {'roomno': '202', 'cat': 'EXECUTIVE', 'status': 'Vacant',
             'guest': '', 'folio': None},
        ]
        monkeypatch.setattr(m.roomstatus, 'room_rack', lambda: rack)
        w = m.RoomTypeLookupDialog()
        try:
            assert w.windowTitle() == 'Room Category Wise Reservation Look Up'
            assert w.cmb_cat.count() == 2
            w.cmb_cat.setCurrentText('EXECUTIVE')
            assert w.tbl.rowCount() == 2
            w.cmb_cat.setCurrentText('DELUXE')
            assert w.tbl.rowCount() == 1
        finally:
            w.close()

    def test_registry_key_present(self):
        from HMS_py.ui import shell
        fn = shell._form_registry().get('Room Category Wise')
        assert fn is not None
        assert 'coming_soon' not in repr(fn)

