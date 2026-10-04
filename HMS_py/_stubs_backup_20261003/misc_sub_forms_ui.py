"""Miscellaneous VB6-style sub-forms used by the shell registry.

These screens are intentionally lightweight compatibility shims: the project
expects them to exist as importable GUI entry points, and they must return a
real QWidget/QDialog so the registry can be opened from the desktop shell.
"""
from __future__ import annotations

import sys

from PyQt6.QtWidgets import QApplication, QDialog, QHBoxLayout, QLabel, QVBoxLayout, QPushButton

from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


class _MiscDialog(QDialog):
    def __init__(self, title: str, parent=None):
        super().__init__(parent)
        apply_desktop_surface(self, title.lower().replace(" ", "_"))
        self.setWindowTitle(title)
        self.resize(640, 400)

        layout = QVBoxLayout(self)
        label = QLabel(f"{title}\n\nCompatibility shim for legacy VB6 HMS screen.")
        label.setWordWrap(True)
        layout.addWidget(label)

        button_row = QHBoxLayout()
        btn_close = QPushButton("Close")
        btn_ok = QPushButton("OK")
        mark_desktop_action(btn_close)
        mark_desktop_action(btn_ok)
        btn_close.clicked.connect(self.close)
        btn_ok.clicked.connect(self.accept)
        button_row.addStretch()
        button_row.addWidget(btn_ok)
        button_row.addWidget(btn_close)
        layout.addLayout(button_row)


def open_opening_stock(parent=None):
    dlg = _MiscDialog("Opening Stock", parent)
    dlg.show()
    return dlg


def open_party_master(parent=None, user="SA"):
    dlg = _MiscDialog(f"Party Master ({user})", parent)
    dlg.show()
    return dlg


def open_comp_master(parent=None, user="SA"):
    dlg = _MiscDialog(f"Comp Master ({user})", parent)
    dlg.show()
    return dlg


def open_sundry_master(parent=None):
    dlg = _MiscDialog("Sundry Master", parent)
    dlg.show()
    return dlg


def open_restaurant_master(parent=None):
    dlg = _MiscDialog("Restaurant Master", parent)
    dlg.show()
    return dlg


__all__ = [
    "open_opening_stock",
    "open_party_master",
    "open_comp_master",
    "open_sundry_master",
    "open_restaurant_master",
]


if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = open_opening_stock()
    window.show()
    raise SystemExit(app.exec())
