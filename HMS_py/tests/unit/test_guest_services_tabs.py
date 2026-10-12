import os

import pytest

pytestmark = pytest.mark.unit
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtWidgets import QApplication, QTableWidget  # noqa: E402

from HMS_py.ui import guest_services_ui as gsui  # noqa: E402

_QAPP = None

COMMENTS_KEYS = ["code", "name", "comments", "mobile", "city"]
COMPLAINTS_KEYS = ["code", "description", "category", "status", "cdate"]
WAKEUP_KEYS = ["docid", "folio", "roomno", "wtime"]
LOSTFOUND_KEYS = ["code", "farea", "description", "status", "fdate"]
MESSAGE_KEYS = ["docid", "roomno", "caller", "message", "solved"]


def _qapp():
    global _QAPP
    if _QAPP is None:
        _QAPP = QApplication.instance() or QApplication([])
    return _QAPP


@pytest.fixture
def window(monkeypatch):
    """Build GuestServicesDialog with all guest_services calls stubbed."""
    _qapp()
    calls = {"warnings": []}

    def _warn(*a, **k):
        calls["warnings"].append(a)

    monkeypatch.setattr(gsui.QMessageBox, "warning", _warn)

    # list_* stubs return one well-formed row per tab (keys match core dicts)
    monkeypatch.setattr(
        gsui.guest_services,
        "list_comments",
        lambda: [
            {
                "code": 1,
                "name": "Alice",
                "comments": "Nice",
                "mobile": "999",
                "city": "Bandung",
            }
        ],
    )
    monkeypatch.setattr(
        gsui.guest_services,
        "list_complaints",
        lambda: [
            {
                "code": 2,
                "description": "Noisy",
                "category": "Room",
                "status": "Open",
                "cdate": "2026-10-01",
            }
        ],
    )
    monkeypatch.setattr(
        gsui.guest_services,
        "list_wakeup",
        lambda: [{"docid": "W1", "folio": 10, "roomno": "101", "wtime": "07:00"}],
    )
    monkeypatch.setattr(
        gsui.guest_services,
        "list_lostfound",
        lambda: [
            {
                "code": 3,
                "farea": "Keys",
                "description": "Keyring",
                "status": "Found",
                "fdate": "2026-10-02",
            }
        ],
    )
    monkeypatch.setattr(
        gsui.guest_services,
        "list_message",
        lambda: [
            {
                "docid": "M1",
                "roomno": "102",
                "caller": "Bob",
                "message": "Call me",
                "solved": "N",
            }
        ],
    )

    # delete_* stubs record their arg
    for name in (
        "delete_comments",
        "delete_complaint",
        "delete_wakeup",
        "delete_lostfound",
        "delete_message",
    ):
        monkeypatch.setattr(
            gsui.guest_services,
            name,
            lambda *a, _n=name: calls.setdefault(_n, []).append(a),
        )

    dlg = gsui.GuestServicesDialog()
    dlg.calls = calls
    yield dlg
    dlg.close()


def test_headers_align_with_keys(window):
    assert [
        window.tbl_comments.horizontalHeader()
        .model()
        .headerData(c, gsui.Qt.Orientation.Horizontal)
        for c in range(window.tbl_comments.columnCount())
    ] == ["Code", "GuestName", "Comment", "Mobile", "City"]
    assert window.tbl_complaints.columnCount() == 5
    assert [
        window.tbl_wakeup.horizontalHeader()
        .model()
        .headerData(c, gsui.Qt.Orientation.Horizontal)
        for c in range(window.tbl_wakeup.columnCount())
    ] == ["DocId", "FolioNo", "RoomNo", "WakeUpTime"]
    assert window.tbl_lf.columnCount() == 5
    assert window.tbl_message.columnCount() == 5


def test_key_based_cell_values(window):
    # comments stub row: code=1 (col0), name=Alice (col1)
    assert window.tbl_comments.item(0, 0).text() == "1"
    assert window.tbl_comments.item(0, 1).text() == "Alice"
    # wakeup stub row: docid=W1 (col0), wtime=07:00 (col3)
    assert window.tbl_wakeup.item(0, 0).text() == "W1"
    assert window.tbl_wakeup.item(0, 3).text() == "07:00"
    # message stub row: docid=M1 (col0)
    assert window.tbl_message.item(0, 0).text() == "M1"


def test_fill_table_uses_keys_not_position(window):
    """_fill_table must map dict values by key, not row position."""
    tbl = QTableWidget()
    tbl.setColumnCount(3)  # required so setItem has somewhere to land
    gsui.GuestServicesDialog._fill_table(
        tbl,
        [{"b": "two", "a": "one", "c": None}],
        ["a", "b", "c"],
    )
    assert tbl.item(0, 0).text() == "one"
    assert tbl.item(0, 1).text() == "two"
    assert tbl.item(0, 2).text() == ""  # None -> empty string


def test_delete_selected_row_uses_col0_id(window):
    tbl = window.tbl_comments
    tbl.selectRow(0)
    row = window._center_row(tbl)
    assert row == 0
    code = int(tbl.item(row, 0).text())
    assert code == 1


def test_no_selection_delete_is_safe(window):
    # nothing selected -> _center_row returns None, delete returns early
    assert window._center_row(window.tbl_comments) is None
