"""FA Voucher/Reconciliation/Display UI (VB6 FaVrEnt + FaChqClear + FaRepView).

Run: python -m HMS_py.ui.fa_voucher_ui
Menu wiring (VB6 captions):
  Transaction > Voucher Entry          -> VoucherEntryDialog
  Transaction > Bank Reconciliation    -> BankReconDialog
  Display/Reports > Trial Balance, Profit And Loss Account, Balance Sheet,
  Cash And Bank Books, Journal Books, Bank Register, Daily Transaction Summary
  -> ReportViewer (read-only).
PYT-guard: test/docid rows only delete.
"""
from __future__ import annotations

import datetime
import inspect
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, QDate
from PyQt6.QtWidgets import (QComboBox, QDateEdit, QDialog, QFormLayout,
                             QHBoxLayout, QHeaderView, QLabel, QLineEdit,
                             QMessageBox, QPushButton, QTableWidget,
                             QTableWidgetItem, QVBoxLayout)

from HMS_py.core import fa_voucher as fv
from HMS_py.ui import theme as _theme


def _cell(v) -> QTableWidgetItem:
    it = QTableWidgetItem("" if v is None else str(v))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    return it


from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action


class VoucherEntryDialog(QDialog):
    """VB6 FaVrEnt: date/type/narration + DR/CR lines grid + Post."""

    def __init__(self, parent=None, user: str = "SA"):
        super().__init__(parent)
        self.user = user
        apply_desktop_surface(self, "faVoucher")
        self.setWindowTitle("Voucher Entry - HMS_py")
        self.resize(820, 520)
        root = QVBoxLayout(self)

        form = QFormLayout()
        self.dtVdate = QDateEdit()
        self.dtVdate.setCalendarPopup(True)
        self.dtVdate.setDisplayFormat("dd/MM/yyyy")
        self.dtVdate.setDate(QDate(datetime.date.today().year,
                                   datetime.date.today().month,
                                   datetime.date.today().day))
        self.cmbVType = QComboBox()
        vtypes = ["JV", "HPOST", "F_AO"]
        try:
            from HMS_py.core import voucher_type as vt
            loaded = [x["vtype"] for x in vt.list_entry_types() if x["vtype"]]
            if loaded:
                vtypes = loaded
        except Exception:
            pass
        self.cmbVType.addItems(vtypes)
        self.edNarr = QLineEdit()
        self.edNarr.setPlaceholderText("Enter voucher narration...")
        self.edNarr.setReadOnly(False)
        btn_pick = QPushButton("...")
        btn_pick.setToolTip("Global Narration se chuno (VB6 FaGlobeNarr)")
        btn_pick.setMaximumWidth(36)
        btn_pick.clicked.connect(self._pick_global_narration)
        narr_row = QHBoxLayout()
        narr_row.addWidget(self.edNarr, 1)
        narr_row.addWidget(btn_pick)
        form.addRow("Voucher Date:", self.dtVdate)
        form.addRow("Voucher Type:", self.cmbVType)
        form.addRow("Narration:", narr_row)
        root.addLayout(form)

        self.tbl = QTableWidget(0, 4)
        self.tbl.setHorizontalHeaderLabels(
            ["SubCode", "Name", "Debit", "Credit"])
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setAlternatingRowColors(True)
        root.addWidget(self.tbl)

        btns = QHBoxLayout()
        btns.setSpacing(8)
        bAdd = QPushButton("+ Line")
        bAdd.setMinimumHeight(32)
        bAdd.setToolTip("Add a new debit/credit line to the voucher")
        bAdd.clicked.connect(self._add_line)
        bDel = QPushButton("- Line")
        bDel.setMinimumHeight(32)
        bDel.setToolTip("Remove the currently selected line")
        bDel.clicked.connect(self._del_line)
        bPost = QPushButton("Post Voucher")
        bPost.setProperty("accent", True)
        bPost.setMinimumHeight(34)
        bPost.setDefault(True)
        bPost.setToolTip("Post the voucher to the ledger (Ctrl+Enter)")
        bPost.clicked.connect(self._post)
        btns.addWidget(bAdd)
        btns.addWidget(bDel)
        btns.addWidget(bPost)
        btns.addStretch(1)
        root.addLayout(btns)

        self.lblStatus = QLabel("Debit must equal Credit (double entry)")
        self.lblStatus.setStyleSheet(f"font-size: 11px; color: {_theme.palette()['text_dim']}; padding: 2px 0;")
        root.addWidget(self.lblStatus)

        # FIX #6: Set tab order matching VB6 TabIndex
        # VB6 order: TXT_DATE(0) -> TXT_ACCOUNT -> TXT_Group -> BTSAVE(22) -> ADJ_OK(9) -> ADJ_CANCLE(8)
        # Python voucher entry tab sequence
        self.setTabOrder(self.dtVdate, self.cmbVType)
        self.setTabOrder(self.cmbVType, self.edNarr)
        self.setTabOrder(self.edNarr, self.tbl)
        self.setTabOrder(self.tbl, self.tbl.item(0, 0) if self.tbl.rowCount() > 0 else self.tbl)
        self.setTabOrder(self.tbl, self.lblStatus)

        self._add_line()
        self._add_line()

    def _add_line(self):
        r = self.tbl.rowCount()
        self.tbl.insertRow(r)
        self.tbl.setItem(r, 0, QTableWidgetItem(""))   # SubCode editable
        for c in (1, 2, 3):
            self.tbl.setItem(r, c, QTableWidgetItem(""))

    def _del_line(self):
        r = self.tbl.currentRow()
        if r >= 0:
            self.tbl.removeRow(r)

    def _pick_global_narration(self):
        """VB6 FaVrEnt se FaGlobeNarr picker — selected narration field me."""
        from HMS_py.ui.partial_forms_ui import (
            open_global_narration_picker as _pick)
        try:
            name = _pick(self)
        except Exception:
            return
        if name:
            self.edNarr.setText(name)

    def _post(self):
        lines = []
        for r in range(self.tbl.rowCount()):
            sc = (self.tbl.item(r, 0).text() if self.tbl.item(r, 0)
                  else "").strip()
            if not sc:
                continue
            def _num(c):
                txt = self.tbl.item(r, c).text() if self.tbl.item(r, c) else ""
                try:
                    return float(txt or 0)
                except ValueError:
                    return 0.0
            lines.append({"subcode": sc, "amt_dr": _num(2),
                          "amt_cr": _num(3)})
        try:
            res = fv.post_voucher(
                lines, self.dtVdate.date().toPyDate(),
                narration=self.edNarr.text(),
                vtype=self.cmbVType.currentText(), user=self.user)
        except ValueError as e:
            QMessageBox.warning(self, "Voucher Entry", str(e))
            return
        except Exception as e:
            QMessageBox.critical(self, "Voucher Entry", str(e)[:300])
            return
        self.lblStatus.setText(
            f"Posted: {res['docid']}  DR=CR={res['dr']:,.2f}")
        QMessageBox.information(
            self, "Voucher Entry",
            f"Voucher {res['docid']} posted (V_No {res['vno']}, "
            f"amount {res['dr']:,.2f})")


class BankReconDialog(QDialog):
    """VB6 FaChqClear: pending cheques grid + mark-cleared."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Bank Reconciliation - HMS_py")
        self.resize(880, 480)
        root = QVBoxLayout(self)
        self.lbl = QLabel("Pending cheques (Clg_Date IS NULL)")
        root.addWidget(self.lbl)
        self.tbl = QTableWidget(0, 8)
        self.tbl.setHorizontalHeaderLabels(
            ["DocId", "Sno", "Vdate", "Account", "Chq No", "Chq Date",
             "Debit", "Credit"])
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.setAlternatingRowColors(True)
        root.addWidget(self.tbl)
        btns = QHBoxLayout()
        b = QPushButton("Mark Cleared (today)")
        b.setToolTip("Mark the selected cheque as cleared with today's date")
        b.clicked.connect(self._clear)
        b2 = QPushButton("Reload")
        b2.setToolTip("Refresh the pending cheques list from database")
        b2.clicked.connect(self._load)
        btns.addWidget(b)
        btns.addWidget(b2)
        btns.addStretch(1)
        root.addLayout(btns)
        self._load()

    def _load(self):
        rows = fv.cheque_pending()
        self.tbl.setRowCount(0)
        for w in rows:
            r = self.tbl.rowCount()
            self.tbl.insertRow(r)
            vals = [w["docid"], w["sno"],
                    w["vdate"].strftime("%d/%m/%Y") if w["vdate"] else "",
                    w["name"], w["chq_no"],
                    w["chq_date"].strftime("%d/%m/%Y") if w["chq_date"] else "",
                    f"{w['amt_dr'] or 0:,.2f}", f"{w['amt_cr'] or 0:,.2f}"]
            for c, v in enumerate(vals):
                self.tbl.setItem(r, c, _cell(v))
        self.lbl.setText(f"{len(rows)} pending cheques")

    def _clear(self):
        r = self.tbl.currentRow()
        if r < 0:
            QMessageBox.information(self, "Bank Recon",
                                    "Pehle ek row select karo")
            return
        docid = self.tbl.item(r, 0).text()
        sno = int(self.tbl.item(r, 1).text())
        try:
            fv.cheque_mark_cleared(docid, sno)
        except Exception as e:
            QMessageBox.critical(self, "Bank Recon", str(e)[:200])
            return
        self._load()


class ReportViewer(QDialog):
    """Generic read-only finance report (dates optional)."""

    def __init__(self, parent=None, title: str = "", fn=None,
                 needs_dates: bool = True):
        super().__init__(parent)
        self.fn = fn
        self.setWindowTitle(f"{title} - HMS_py")
        self.resize(880, 520)
        root = QVBoxLayout(self)
        top = QHBoxLayout()
        top.addWidget(QLabel("From:"))
        self.dtFrom = QDateEdit()
        self.dtFrom.setCalendarPopup(True)
        self.dtFrom.setDisplayFormat("dd/MM/yyyy")
        self.dtFrom.setDate(QDate(2016, 1, 1))
        top.addWidget(self.dtFrom)
        top.addWidget(QLabel("To:"))
        self.dtTo = QDateEdit()
        self.dtTo.setCalendarPopup(True)
        self.dtTo.setDisplayFormat("dd/MM/yyyy")
        self.dtTo.setDate(QDate(datetime.date.today().year,
                                datetime.date.today().month,
                                datetime.date.today().day))
        top.addWidget(self.dtTo)
        b = QPushButton("Run")
        b.setToolTip("Run the report for the selected date range")
        b.clicked.connect(self._run)
        top.addWidget(b)
        top.addStretch(1)
        root.addLayout(top)
        if not needs_dates:
            self.dtFrom.setEnabled(False)
            self.dtTo.setEnabled(False)
        self.tbl = QTableWidget(0, 0)
        self.tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.setAlternatingRowColors(True)
        root.addWidget(self.tbl)
        self.lbl = QLabel("Ready (read-only)")
        root.addWidget(self.lbl)
        self._run()

    def _accepts_dates(self) -> bool:
        """ReportViewer supports both fn(f, t) and fn() query callables."""
        try:
            params = inspect.signature(self.fn).parameters
        except (TypeError, ValueError):
            return True
        if any(p.kind is p.VAR_POSITIONAL for p in params.values()):
            return True
        positional = [p for p in params.values()
                      if p.kind in (p.POSITIONAL_ONLY, p.POSITIONAL_OR_KEYWORD)]
        return len(positional) > 0

    def _run(self):
        try:
            if self._accepts_dates():
                data = self.fn(self.dtFrom.date().toPyDate(),
                               self.dtTo.date().toPyDate())
            else:
                data = self.fn()
        except Exception as e:
            QMessageBox.critical(self, "Report", str(e)[:300])
            return
        self._fill(data)

    @staticmethod
    def _as_dicts(data):
        if not data:
            return []
        out = []
        for w in data:
            if hasattr(w, "get"):
                out.append(w)
                continue
            d = {}
            for k in dir(w):
                if k.startswith("_"):
                    continue
                v = getattr(w, k)
                if not callable(v):
                    d[k] = v
            out.append(d)
        return out

    def _fill(self, data):
        if isinstance(data, dict):
            rows = data.get("income", []) + data.get("expense", []) + \
                data.get("assets", []) + data.get("liab", [])
            if rows and "groupcode" in rows[0]:
                cols = ["Group", "Name", "Amount"]
                self.tbl.setColumnCount(3)
                self.tbl.setHorizontalHeaderLabels(cols)
                self.tbl.setRowCount(0)
                for w in rows:
                    r = self.tbl.rowCount()
                    self.tbl.insertRow(r)
                    self.tbl.setItem(r, 0, _cell(w.get("groupcode", "")))
                    self.tbl.setItem(r, 1, _cell(w.get("name", "")))
                    self.tbl.setItem(r, 2, _cell(f"{w.get('amount', 0):,.2f}"))
                self.lbl.setText(
                    f"{len(rows)} groups | read-only")
                return
            rows = [data]
        if not data:
            self.tbl.setRowCount(0)
            self.lbl.setText("0 rows")
            return
        data = self._as_dicts(data)
        if not data:
            self.tbl.setRowCount(0)
            self.lbl.setText("0 rows")
            return
        cols = list(data[0].keys())
        self.tbl.setColumnCount(len(cols))
        self.tbl.setHorizontalHeaderLabels(cols)
        self.tbl.setRowCount(0)
        for w in data:
            r = self.tbl.rowCount()
            self.tbl.insertRow(r)
            for c, k in enumerate(cols):
                v = w.get(k)
                if isinstance(v, float):
                    v = f"{v:,.2f}"
                elif hasattr(v, "strftime"):
                    v = v.strftime("%d/%m/%Y")
                self.tbl.setItem(r, c, _cell(v))
        self.lbl.setText(f"{len(data)} rows | read-only")


def open_voucher_entry(parent=None, user: str = "SA"):
    VoucherEntryDialog(parent, user=user).exec()


def open_bank_recon(parent=None):
    BankReconDialog(parent).exec()


def _viewer(title, fn, needs_dates=True):
    def go(parent=None):
        ReportViewer(parent, title=title, fn=fn, needs_dates=needs_dates).exec()
    return go


def open_trial_balance(parent=None):
    _viewer("Trial Balance", fv.trial_balance, needs_dates=False)(parent)


def open_pnl(parent=None):
    def run(f, t):
        return fv.profit_and_loss(f, t)
    ReportViewer(parent, title="Profit And Loss Account",
                 fn=run).exec()


def open_balance_sheet(parent=None):
    def run(f, t):
        return fv.balance_sheet()
    ReportViewer(parent, title="Balance Sheet", fn=run,
                 needs_dates=False).exec()


def open_cash_bank_books(parent=None):
    ReportViewer(parent, title="Cash And Bank Books",
                 fn=fv.cash_and_bank_books).exec()


def open_bank_register(parent=None):
    ReportViewer(parent, title="Bank Register", fn=fv.bank_register).exec()


def open_journal_book(parent=None):
    ReportViewer(parent, title="Journal Books", fn=fv.journal_book).exec()


def open_daily_txn_summary(parent=None):
    ReportViewer(parent, title="Daily Transaction Summary",
                 fn=fv.daily_transaction_summary).exec()


# ============================================================
# Current Balance Updation (VB6 FaCurrBalUpdate.frm)
# ============================================================


def open_global_narration_picker(parent=None) -> str:
    """VB6 FaGlobeNarr modal-picker entry (FaVrEnt narration field ke liye).

    GlobalNarrationWindow ko picker-mode me kholta hai — selected narration
    return karta hai ('' cancel par). Sweep-safe: QDialog.exec stubbed hota
    hai offscreen runs me.
    """
    from HMS_py.ui.partial_forms_ui import GlobalNarrationWindow
    w = GlobalNarrationWindow(parent)
    return w.pick_narration()


def open_currbal_update(parent=None, user: str = "SA"):
    """Current Balance Updation (VB6 FaCurrBalUpdate).

    VB6: SubGroupCurrBal/ACGroupCurrBal rebuild — Ledger (Dr-Cr) running
    balance se SubGroup.CurrBal dobara compute + out-of-sync rows fix.
    Read-only preview + PYT-guarded rebuild.
    """
    dlg = QDialog(parent)
    dlg.setWindowTitle("Current Balance Updation - HMS_py")
    dlg.resize(860, 520)
    root = QVBoxLayout(dlg)
    root.addWidget(QLabel(
        "SubGroup CurrBal vs Ledger (Dr-Cr) out-of-sync rows.\n"
        "Rebuild sirf PYT* test accounts par chalta hai "
        "(production balances protected)."))

    tbl = QTableWidget(0, 5, dlg)
    tbl.setHorizontalHeaderLabels(
        ["SubCode", "Name", "Ledger Bal (Dr-Cr)", "CurrBal (stored)", "Diff"])
    tbl.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
    tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
    tbl.horizontalHeader().setStretchLastSection(True)
    tbl.setAlternatingRowColors(True)
    root.addWidget(tbl, 1)

    lbl = QLabel("0 rows")
    root.addWidget(lbl)

    btns = QHBoxLayout()
    btn_load = QPushButton("Load (F5)")
    btn_rebuild = QPushButton("Rebuild PYT* Only")
    btn_close = QPushButton("Close")
    btns.addStretch(); btns.addWidget(btn_load)
    btns.addWidget(btn_rebuild); btns.addWidget(btn_close)
    root.addLayout(btns)

    def _load():
        from HMS_py.core import db as _db
        cn = _db.connect()
        try:
            rows = cn.cursor().execute(
                "SELECT s.GroupCode, s.GroupName, s.CurrBal, "
                "ISNULL(SUM(l.AmtDr - l.AmtCr), 0) AS LedgerBal "
                "FROM ACGROUP s "
                "LEFT JOIN Ledger l ON RTRIM(l.SubCode) = RTRIM(s.GroupCode) "
                "GROUP BY s.GroupCode, s.GroupName, s.CurrBal"
            ).fetchall()
        except Exception as e:
            QMessageBox.critical(dlg, "Load", f"DB error: {e}")
            rows = []
        finally:
            cn.close()
        bad = []
        for r in rows:
            subcode, name, currbal, ledger_bal = r[0], r[1], float(r[2] or 0), float(r[3] or 0)
            diff = round(ledger_bal - currbal, 2)
            if abs(diff) > 0.005:
                bad.append((subcode, name, ledger_bal, currbal, diff))
        tbl.setRowCount(len(bad))
        for i, (sc, nm, lb, cb, df) in enumerate(bad):
            for c, v in enumerate((sc, nm, f"{lb:,.2f}", f"{cb:,.2f}", f"{df:,.2f}")):
                tbl.setItem(i, c, _cell(v))
        lbl.setText(f"{len(bad)} out-of-sync row(s)")

    def _rebuild():
        from HMS_py.core import db as _db
        sel = tbl.currentRow()
        if sel < 0:
            QMessageBox.information(dlg, "Rebuild",
                                    "Pehle out-of-sync row select karo")
            return
        subcode = (tbl.item(sel, 0).text() or "").strip()
        if not subcode.upper().startswith("PYT"):
            QMessageBox.warning(dlg, "Rebuild",
                                "Safety: sirf PYT* test accounts rebuild ho "
                                "sakte hain (production CurrBal protected)")
            return
        cn = _db.connect()
        try:
            cur = cn.cursor()
            cur.execute(
                "SELECT ISNULL(SUM(AmtDr - AmtCr), 0) FROM Ledger "
                "WHERE RTRIM(SubCode) = ?", (subcode,))
            bal = float(cur.fetchone()[0] or 0)
            cur.execute("UPDATE ACGROUP SET CurrBal = ? WHERE GroupCode = ?",
                        (bal, subcode))
            cn.commit()
            QMessageBox.information(dlg, "Rebuild",
                                    f"{subcode}: CurrBal = {bal:,.2f}")
        except Exception as e:
            QMessageBox.critical(dlg, "Rebuild", f"DB error: {e}")
        finally:
            cn.close()
        _load()

    btn_load.clicked.connect(_load)
    btn_rebuild.clicked.connect(_rebuild)
    btn_close.clicked.connect(dlg.reject)
    from PyQt6.QtGui import QShortcut, QKeySequence
    QShortcut(QKeySequence("F5"), dlg, activated=_load)
    _load()
    dlg.exec()


if __name__ == "__main__":
    os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
    from PyQt6.QtWidgets import QApplication
    app = QApplication([])
    open_trial_balance()
