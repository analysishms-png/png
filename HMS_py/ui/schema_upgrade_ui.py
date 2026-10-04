"""Schema Upgrade / Structure Update dialog - admin-gated port of the SAFE
SUBSET of VB6 frmCompany `btnStruUpdNew` (statement list + execution UI).

VB6 chain (evidence, same as core/schema_upgrade.py):
  frmCompany.frm:2735-2837  Private Sub btnStruUpdNew_UnknownEvent_9
      frmCompany.frm:2773-2831  22 Execute DDLs ("Chain-A")
      frmCompany.frm:2774  hop -> Hotlib.bas:40649-41388
                                 Public Sub Proc_96_94_1F2C2C8
                                 (573x Proc_6_144 ensure column,
                                  18x  Proc_6_145 create table,
                                  17x  Proc_6_146 create PK)
      frmCompany.frm:2764-2832 per-company loop over Company list
      frmCompany.frm:2833-2834 MsgBox "All Company database updated" + `End`
  (So the VB6 UI is: iterate every company DB, run the DDL set, MsgBox, End.)

Port shape (this file):
  - a QDialog with a read-only SQL preview of ALL 630 statements
    (id + kind + statement), a Results tab, a non-modal status label and
    Run/Cancel buttons. Construction NEVER executes anything.
  - admin gate in the opener AND in the constructor:
        role_of(user) in ("SA", "Supervisor")  else VB6's exact text
        "Only Supervisor is Authorised."       (ModuleAdd.bas loc_1E43E5A)
  - Run -> QMessageBox big-confirm (default = Cancel/No, icon Warning)
    "Run N idempotent schema statements?" with the target DB name and the
    guard-audit counts -> then core.schema_upgrade.run(CONFIRM_TOKEN).
    Wrong token / audit failure raises before any DDL is sent; per-statement
    failures are recorded, the whole run commits once and rolls back on a
    connection-level failure.

DEVIATIONS from VB6 (all intentional, none silent):
  - no per-company loop: the port runs ONCE against the currently connected
    database (the confirm box prints DB_NAME() so the operator sees it).
  - VB6 had no preview and no Run/Cancel confirm (its MsgBox came AFTER the
    work); both are safety adds - the statement list is shown verbatim first.
  - the guarded `CREATE VIEW`s of frmCompany:2791/2796 additionally carry an
    `if not exists (... IsView)` guard (see core/schema_upgrade.py docstring).
  - VB6 `End` (app kill) and the login-time auto-run do not exist here.

Run: python -m HMS_py.ui.schema_upgrade_ui
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtGui import QColor, QFontDatabase
from PyQt6.QtWidgets import (QAbstractItemView, QApplication, QDialog,
                             QHBoxLayout, QLabel, QMessageBox, QPlainTextEdit,
                             QPushButton, QTabWidget, QTableWidget,
                             QTableWidgetItem, QVBoxLayout)

from HMS_py.core import db
from HMS_py.core import permission
from HMS_py.core import schema_upgrade

#: VB6 deny text verbatim (ModuleAdd.bas loc_1E43E5A, &H10 vbCritical).
DENY_TEXT = "Only Supervisor is Authorised."
_ALLOWED_ROLES: tuple[str, ...] = ("SA", "Supervisor")
_RESULT_COLS: tuple[str, ...] = ("Statement ID", "Kind", "Status", "Error")
_STATUS_COLORS: dict[str, QColor] = {
    "ok": QColor(0, 130, 0),
    "skip": QColor(120, 120, 120),
    "error": QColor(200, 0, 0),
}


def _is_allowed(user) -> bool:
    """role_of() gate: SA / Supervisor hi chalte hain (fail-closed)."""
    try:
        return permission.role_of(user) in _ALLOWED_ROLES
    except Exception:
        return False


def _target_db() -> str:
    """Read-only DB_NAME() for the confirm box (VB6 ran per company DB)."""
    try:
        rows = db.query("SELECT DB_NAME()")
        return str(rows[0][0]) if rows else "(unknown)"
    except Exception:
        return "(unknown)"


class SchemaUpgradeDialog(QDialog):
    """Structure Update preview + admin-gated runner (see module docstring)."""

    def __init__(self, parent=None, user="SA"):
        super().__init__(parent)
        self._user = user
        self._plan = schema_upgrade.plan()
        self._allowed = _is_allowed(user)
        self.setWindowTitle("Structure Update (Schema Upgrade)")
        self.resize(1080, 680)
        self._build_ui()
        if not self._allowed:
            # non-modal deny (opener shows the modal box; a directly
            # constructed dialog must not block a headless caller)
            self.status.setText(DENY_TEXT)
            self.btn_run.setEnabled(False)
        else:
            self.status.setText(
                f"Ready - {len(self._plan)} statements, nothing executed "
                "yet. Review the SQL preview, then Run.")

    # ---- UI ----------------------------------------------------------
    def _build_ui(self) -> None:
        root = QVBoxLayout(self)

        title = QLabel("Structure Update (Schema Upgrade)")
        f = title.font()
        f.setPointSize(f.pointSize() + 4)
        f.setBold(True)
        title.setFont(f)
        root.addWidget(title)

        audit = schema_upgrade.guard_audit()
        kinds = ", ".join(f"{k} {v}" for k, v in sorted(
            audit["kinds"].items(), key=lambda kv: (-kv[1], kv[0])))
        info = QLabel(
            f"{audit['statements']} statements | {kinds}\n"
            f"every statement guarded by: "
            f"{' / '.join(audit['guard_keywords'])} | guarded DROPs: "
            f"{', '.join(audit['guarded_drops'])} | audit violations: "
            f"{len(audit['violations'])}")
        info.setWordWrap(True)
        root.addWidget(info)

        tabs = QTabWidget()
        self.preview = QPlainTextEdit()
        self.preview.setReadOnly(True)
        self.preview.setFont(
            QFontDatabase.systemFont(QFontDatabase.SystemFont.FixedFont))
        self.preview.setPlainText(self._preview_text())
        tabs.addTab(self.preview, f"SQL preview ({len(self._plan)})")

        self.table = QTableWidget(0, len(_RESULT_COLS))
        self.table.setHorizontalHeaderLabels(_RESULT_COLS)
        self.table.setEditTriggers(
            QAbstractItemView.EditTrigger.NoEditTriggers)
        self.table.setSelectionBehavior(
            QAbstractItemView.SelectionBehavior.SelectRows)
        tabs.addTab(self.table, "Results")
        root.addWidget(tabs, stretch=1)

        self.status = QLabel("")
        self.status.setWordWrap(True)
        root.addWidget(self.status)

        bar = QHBoxLayout()
        bar.addStretch()
        self.btn_run = QPushButton("Run Upgrade")
        self.btn_run.clicked.connect(self._on_run)
        self.btn_cancel = QPushButton("Close")
        self.btn_cancel.clicked.connect(self.reject)
        bar.addWidget(self.btn_run)
        bar.addWidget(self.btn_cancel)
        root.addLayout(bar)

    @staticmethod
    def _preview_text() -> str:
        blocks = [f"-- {s['id']} [{s['kind']}]\n{s['sql']}"
                  for s in schema_upgrade.plan()]
        return "\n\n".join(blocks) + "\n"

    # ---- run ---------------------------------------------------------
    def _confirm(self, n: int, dbname: str) -> bool:
        """VB6 MsgBox parity + safety add: default button = Cancel."""
        audit = schema_upgrade.guard_audit()
        box = QMessageBox(self)
        box.setIcon(QMessageBox.Icon.Warning)
        box.setWindowTitle("Structure Update (Schema Upgrade)")
        box.setText(f"Run {n} idempotent schema statements?")
        detail = [f"Target database: {dbname}",
                  "Order: frmCompany:2773, 608 hop statements, "
                  "frmCompany:2776-2831",
                  f"Guarded: {audit['guarded']}/{audit['statements']} "
                  "(IF [NOT] EXISTS)",
                  "No DML, no unguarded DROP, no FaEnviro/Company "
                  "one-time block."]
        box.setInformativeText("\n".join(detail))
        yes = box.addButton("Run", QMessageBox.ButtonRole.YesRole)
        no = box.addButton("Cancel", QMessageBox.ButtonRole.NoRole)
        box.setDefaultButton(no)
        box.exec()
        return box.clickedButton() is yes

    def _on_run(self) -> None:
        if not self._allowed:
            QMessageBox.critical(self, "Structure Update", DENY_TEXT)
            return
        n = len(self._plan)
        if not self._confirm(n, _target_db()):
            self.status.setText("Cancelled - nothing was executed.")
            return
        self.btn_run.setEnabled(False)
        self.status.setText(f"Running {n} statements ...")
        QApplication.processEvents()
        try:
            result = schema_upgrade.run(schema_upgrade.CONFIRM_TOKEN)
        except Exception as exc:
            self.status.setText(
                "Schema upgrade aborted - transaction rolled back.")
            QMessageBox.critical(self, "Structure Update", str(exc))
            return
        finally:
            self.btn_run.setEnabled(True)
        self._render(result)

    def _render(self, result: dict) -> None:
        rows = result["results"]
        self.table.setRowCount(len(rows))
        for i, r in enumerate(rows):
            vals = (r["id"], r["kind"], r["status"], r["error"])
            for j, val in enumerate(vals):
                it = QTableWidgetItem(str(val))
                if j == 2:
                    it.setForeground(
                        _STATUS_COLORS.get(r["status"], QColor(0, 0, 0)))
                self.table.setItem(i, j, it)
        self.table.resizeColumnsToContents()
        summary = (f"Completed: {result['ok']} ok, {result['skip']} "
                   f"skipped (already present), {result['error']} failed.")
        self.status.setText(summary)
        if result["error"]:
            bad = [r for r in rows if r["status"] == "error"][:8]
            QMessageBox.warning(
                self, "Structure Update",
                summary + "\n\n" + "\n".join(
                    f"{r['id']}: {r['error']}" for r in bad))


def open_schema_upgrade(parent=None, user="SA"):
    """Admin-gated opener (ui/pos_recycle_ui.open_pos_recycle jaisa).

    Non-SA/Supervisor ko VB6 text "Only Supervisor is Authorised."
    dikhakar block + None return; allowed user ke liye modal dialog.
    """
    if not _is_allowed(user):
        QMessageBox.critical(parent, "Structure Update", DENY_TEXT)
        return None
    w = SchemaUpgradeDialog(parent, user=user)
    w.exec()
    return w


if __name__ == "__main__":
    app = QApplication(sys.argv)
    win = open_schema_upgrade(user="SA")
    if win is None:
        sys.exit(1)
    sys.exit(app.exec())
