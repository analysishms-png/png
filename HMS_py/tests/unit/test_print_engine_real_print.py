import os
import sys

import pytest

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

pytestmark = pytest.mark.unit


def test_print_engine_uses_real_qt_print_dialog(monkeypatch):
    from HMS_py.core import print_engine
    from HMS_py.ui import print_preview

    calls = []

    monkeypatch.setattr(
        print_preview,
        "print_text",
        lambda text, title="Print", parent=None: calls.append((text, title, parent)) or True,
    )

    engine = print_engine.PrintEngine()
    job = print_engine.PrintJob(
        report_key="test_report",
        title="Test Report",
        d_from="2024-01-01",
        d_to="2024-12-31",
        headers=["Code", "Name"],
        rows=[["A", "Alpha"], ["B", "Beta"]],
        user="SA",
        site_code="KK",
        business_date="01/JAN/2024",
    )

    assert engine.print(job, parent=None) is True
    assert calls
    assert calls[0][1] == "Test Report"
    assert "Code" in calls[0][0]


def test_create_job_preserves_report_inputs(monkeypatch):
    from HMS_py.core import print_engine
    from HMS_py.core import report_params

    monkeypatch.setattr(
        report_params,
        "get_report_params",
        lambda report_key, d_from=None, d_to=None, cn=None: {
            "d_from": d_from,
            "d_to": d_to,
            "user": "SA",
            "site_code": "KK",
            "business_date": "01/JAN/2024",
        },
    )
    monkeypatch.setattr(
        report_params,
        "get_print_params",
        lambda cn=None: {"printer": "Front Desk", "copies": 2},
    )

    job = print_engine.PrintEngine().create_job(
        report_key="daily_sales",
        d_from="2024-01-01",
        d_to="2024-01-31",
        headers=["Code", "Amount"],
        rows=[["A1", 125.0]],
    )

    assert job.report_key == "daily_sales"
    assert (job.d_from, job.d_to) == ("2024-01-01", "2024-01-31")
    assert job.headers == ["Code", "Amount"]
    assert (job.printer, job.copies) == ("Front Desk", 2)


def test_print_engine_forwards_printer_and_copy_options(monkeypatch):
    from HMS_py.core import print_engine
    from HMS_py.ui import print_preview

    calls = []
    monkeypatch.setattr(
        print_preview,
        "print_text",
        lambda text, title="Print", parent=None, printer_name=None,
        copies=None: calls.append((printer_name, copies)) or True,
    )
    job = print_engine.PrintJob(
        report_key="daily_sales",
        title="Daily Sales",
        d_from="2024-01-01",
        d_to="2024-01-31",
        headers=["Amount"],
        rows=[[125.0]],
        printer="Front Desk",
        copies=2,
    )

    assert print_engine.PrintEngine().print(job, parent=None) is True
    assert calls == [("Front Desk", 2)]


def test_print_text_applies_printer_and_copy_options(monkeypatch):
    from PyQt6.QtWidgets import QDialog
    from HMS_py.ui import print_preview

    calls = []

    class FakePrinter:
        def setPrinterName(self, name):
            calls.append(("printer", name))

        def setCopyCount(self, count):
            calls.append(("copies", count))

    class FakeDialog:
        def __init__(self, printer, parent):
            calls.append(("dialog", printer, parent))

        def exec(self):
            return int(QDialog.DialogCode.Accepted)

    class FakeDocument:
        def print(self, printer):
            calls.append(("print", printer))

    printer = FakePrinter()
    monkeypatch.setattr(print_preview, "_make_printer", lambda title: printer)
    monkeypatch.setattr(print_preview, "QPrintDialog", FakeDialog)
    monkeypatch.setattr(print_preview, "_make_document", lambda **kwargs: FakeDocument())

    assert print_preview.print_text(
        "report", "Daily Sales", printer_name="Front Desk", copies=3) is True
    assert calls == [
        ("printer", "Front Desk"),
        ("copies", 3),
        ("dialog", printer, None),
        ("print", printer),
    ]
