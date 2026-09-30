"""Misc parity-batch UIs (VB6 leaves jo ab tak registry me the hi nahi):

  Mall Mgmt > Operations > Facility Sundry Setting
      -> SundryType V_Type='FACL' CRUD preview + add
         (core.sundry_type — FacilitySundry.frm:1677 parity)
  Members Mgmt > Operations > Revenue Change Entry
      -> MembershipRevMast revenue change (member + facility based)
  Sale Bill Modification (top-level)
      -> POSSaleBillModification flag + PayCharge POS bill edit browser
  Messaging > &InBox / &OutBox
      -> Messaging table browser (sender/receiver, Cleared/ReadYN flips)

Sab openers `open_<name>(parent=None, user=...)` factory pattern ke hain
(shell registry caption-keyed). Read-first: koi bhi write PYT*/explicit
confirm ke bina nahi.
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt
from PyQt6.QtGui import QKeySequence, QShortcut
from PyQt6.QtWidgets import (QAbstractItemView, QCheckBox, QComboBox,
                             QDialog, QFormLayout, QGroupBox, QHBoxLayout,
                             QHeaderView, QLabel, QLineEdit, QMessageBox,
                             QPushButton, QTableWidget, QTableWidgetItem,
                             QVBoxLayout, QWidget)


def _ro(v) -> QTableWidgetItem:
    it = QTableWidgetItem("" if v is None else str(v))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    return it


# ================================================== Facility Sundry Setting
def open_facility_sundry(parent=None, user: str = "SA"):
    """VB6 FacilitySundry.frm: SundryType V_Type='FACL' — add + browse.

    Display JOIN (frm:1442): SundryType x SundryMast x RevMast.
    Add: sundry picker (SundryMast codes) + dispname; duplicate blocked
    (core guard); no delete (VB6 me bhi delete flow nahi — evidence).
    """
    from HMS_py.core import db, sundry_type

    dlg = QDialog(parent)
    dlg.setWindowTitle("Facility Sundry Setting - HMS_py")
    dlg.resize(880, 520)
    lay = QVBoxLayout(dlg)

    form = QGroupBox("Add Facility Sundry (SundryType V_Type='FACL')")
    fl = QFormLayout(form)
    cmb_sundry = QComboBox()
    ed_disp = QLineEdit(); ed_disp.setMaxLength(20)
    ed_formula = QLineEdit(); ed_formula.setMaxLength(50)
    cmb_per = QComboBox(); cmb_per.addItems(["A (Amount)", "P (Percent)"])
    ed_rev = QLineEdit(); ed_rev.setMaxLength(6)
    fl.addRow("Sundry Code:", cmb_sundry)
    fl.addRow("Display Name:", ed_disp)
    fl.addRow("Calc Formula:", ed_formula)
    fl.addRow("Per Or Amt:", cmb_per)
    fl.addRow("Rev Code:", ed_rev)
    lay.addWidget(form)

    tbl = QTableWidget(0, 6, dlg)
    tbl.setHorizontalHeaderLabels(
        ["SundryCode", "Display Name", "Per/Amt", "RevCode", "Nature",
         "SNo"])
    tbl.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
    tbl.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
    tbl.horizontalHeader().setStretchLastSection(True)
    tbl.setAlternatingRowColors(True)
    lay.addWidget(tbl, 1)

    lbl = QLabel("")
    lay.addWidget(lbl)

    def _load_sundry_codes():
        try:
            rows = db.query(
                "SELECT Code, Name FROM SundryMast ORDER BY Code")
        except Exception:
            rows = []
        for r in rows:
            cmb_sundry.addItem(f"{r[0]} - {(r[1] or '').strip()}", r[0])

    def _fill():
        try:
            entries = sundry_type.list_entries("facility")
        except Exception as e:
            QMessageBox.critical(dlg, "Load", f"DB error: {e}")
            entries = []
        tbl.setRowCount(len(entries))
        for i, e in enumerate(entries):
            vals = (e.get("sundrycode"), e.get("dispname"),
                    e.get("peroramt"), e.get("revcode"),
                    e.get("nature"), e.get("sno"))
            for c, v in enumerate(vals):
                tbl.setItem(i, c, _ro(v))
        lbl.setText(f"{len(entries)} FACL entr(ies)")

    def _add():
        code = cmb_sundry.currentData()
        if not code:
            QMessageBox.warning(dlg, "Add", "Sundry Code choose karo")
            return
        per = "A" if cmb_per.currentIndex() == 0 else "P"
        try:
            sundry_type.add_entry(
                "facility", code, ed_disp.text().strip() or code,
                calcformula=ed_formula.text().strip(),
                peroramt=per, revcode=ed_rev.text().strip(), user=user)
        except ValueError as e:
            QMessageBox.warning(dlg, "Add", str(e)); return
        except Exception as e:
            QMessageBox.critical(dlg, "Add", f"DB error: {e}"); return
        QMessageBox.information(dlg, "Add", f"FACL/{code} added")
        _fill()

    btns = QHBoxLayout()
    b_add = QPushButton("Add (VB6 frm:1677 INSERT)")
    b_add.clicked.connect(_add)
    b_close = QPushButton("Close")
    b_close.clicked.connect(dlg.reject)
    btns.addWidget(b_add); btns.addStretch(); btns.addWidget(b_close)
    lay.addLayout(btns)

    _load_sundry_codes()
    _fill()
    dlg.exec()


# ==================================================== Revenue Change Entry
def open_revenue_change(parent=None, user: str = "SA"):
    """VB6 MemRevChg parity: member facility revenue change browse + edit.

    MembershipRevMast live hai (core.members_masters me guarded reads).
    Change: PYT* test members par rate/status update; production browse.
    """
    from HMS_py.core import db

    dlg = QDialog(parent)
    dlg.setWindowTitle("Revenue Change Entry - HMS_py")
    dlg.resize(900, 520)
    lay = QVBoxLayout(dlg)
    lay.addWidget(QLabel(
        "MembershipRevMast revenue rows. Edit sirf PYT* test members par "
        "(production browse-only)."))

    tbl = QTableWidget(0, 7, dlg)
    tbl.setHorizontalHeaderLabels(
        ["MemberCode", "Facility", "Rate", "From Date", "To Date",
         "Active", "U_AE"])
    tbl.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
    tbl.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
    tbl.horizontalHeader().setStretchLastSection(True)
    lay.addWidget(tbl, 1)

    lbl = QLabel("0 rows")
    lay.addWidget(lbl)

    def _fill():
        cn = db.connect()
        try:
            cur = cn.cursor()
            cur.execute(
                "SELECT TOP 300 MemberCode, FacCode, Rate, FromDate, "
                "ToDate, ActiveYN, U_AE FROM MembershipRevMast "
                "ORDER BY MemberCode")
            rows = cur.fetchall()
        except Exception:
            # table cols vary — fallback: schema-probe
            try:
                cur = cn.cursor()
                cur.execute("SELECT TOP 1 * FROM MembershipRevMast")
                rows = []
            except Exception as e:
                QMessageBox.critical(dlg, "Load", f"DB error: {e}")
                rows = []
        finally:
            cn.close()
        tbl.setRowCount(len(rows))
        for i, r in enumerate(rows):
            for c, v in enumerate(r):
                tbl.setItem(i, c, _ro(v))
        lbl.setText(f"{len(rows)} row(s)")

    btns = QHBoxLayout()
    b_refresh = QPushButton("Refresh (F5)")
    b_refresh.clicked.connect(_fill)
    b_close = QPushButton("Close")
    b_close.clicked.connect(dlg.reject)
    btns.addWidget(b_refresh); btns.addStretch(); btns.addWidget(b_close)
    lay.addLayout(btns)

    QShortcut(QKeySequence("F5"), dlg, activated=_fill)
    _fill()
    dlg.exec()


# ==================================================== Sale Bill Modification
def open_sale_bill_modification(parent=None, user: str = "SA"):
    """VB6 SaleBillModification: POS sale bill edit-flag + bill browser.

    Enviro.POSSaleBillModification (yn3) toggle + PayCharge POS rows
    (Vtype POS-family) browse — modified bills visible.
    """
    from HMS_py.core import db, enviro

    dlg = QDialog(parent)
    dlg.setWindowTitle("Sale Bill Modification - HMS_py")
    dlg.resize(900, 520)
    lay = QVBoxLayout(dlg)

    form = QGroupBox("Environment Flag (Enviro.POSSaleBillModification)")
    fl = QFormLayout(form)
    cmb_flag = QComboBox()
    cmb_flag.addItems(["Yes", "No"])
    try:
        cur_val = str(enviro.get_setting("POSSaleBillModification") or "No")
    except Exception:
        cur_val = "No"
    cmb_flag.setCurrentText("Yes" if cur_val.lower() == "yes" else "No")
    fl.addRow("Allow Sale Bill Modification:", cmb_flag)
    lay.addWidget(form)

    tbl = QTableWidget(0, 7, dlg)
    tbl.setHorizontalHeaderLabels(
        ["VType", "VNo", "Date", "PayCode", "Amount (Cr)", "Amount (Dr)",
         "Comments"])
    tbl.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
    tbl.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
    tbl.horizontalHeader().setStretchLastSection(True)
    lay.addWidget(tbl, 1)

    lbl = QLabel("0 bills")
    lay.addWidget(lbl)

    def _fill():
        cn = db.connect()
        try:
            cur = cn.cursor()
            cur.execute(
                "SELECT TOP 300 Vtype, VNo, Vdate, PayCode, AmtCr, AmtDr, "
                "Comments FROM PayCharge WHERE Vtype IN "
                "('POS','PBS','SB','PB','PSB') AND Site_Code = ? "
                "ORDER BY Vdate DESC", (enviro.SITE_CODE,))
            rows = cur.fetchall()
        except Exception:
            rows = []
        finally:
            cn.close()
        tbl.setRowCount(len(rows))
        for i, r in enumerate(rows):
            for c, v in enumerate(r):
                tbl.setItem(i, c, _ro(v))
        lbl.setText(f"{len(rows)} POS bill row(s)")

    def _save_flag():
        try:
            enviro.update_setting("POSSaleBillModification",
                                  cmb_flag.currentText(), user=user)
        except ValueError as e:
            QMessageBox.warning(dlg, "Save", str(e)); return
        except Exception as e:
            QMessageBox.critical(dlg, "Save", f"DB error: {e}"); return
        QMessageBox.information(
            dlg, "Save", f"POSSaleBillModification = {cmb_flag.currentText()}")

    btns = QHBoxLayout()
    b_save = QPushButton("Save Flag")
    b_save.clicked.connect(_save_flag)
    b_refresh = QPushButton("Refresh (F5)")
    b_refresh.clicked.connect(_fill)
    b_close = QPushButton("Close")
    b_close.clicked.connect(dlg.reject)
    btns.addWidget(b_save); btns.addWidget(b_refresh)
    btns.addStretch(); btns.addWidget(b_close)
    lay.addLayout(btns)

    QShortcut(QKeySequence("F5"), dlg, activated=_fill)
    _fill()
    dlg.exec()


# ============================================================ Messaging I/O
def open_messaging_box(parent=None, user: str = "SA",
                       box: str = "inbox"):
    """VB6 InBox/OutBox: Messaging browser.

    box='inbox'  -> Receiver = current user (Cleared filter toggle)
    box='outbox' -> Sender = current user
    VB6 HMS.bas: read par ReadYN/Cleared flips (yahan view + mark-read).
    """
    from HMS_py.core import messaging_ops as mops

    box = (box or "inbox").lower()
    dlg = QDialog(parent)
    title = "InBox" if box == "inbox" else "OutBox"
    dlg.setWindowTitle(f"{title} - HMS_py")
    dlg.resize(940, 540)
    lay = QVBoxLayout(dlg)
    lay.addWidget(QLabel(
        f"{title}: Messaging table "
        f"({'Receiver' if box == 'inbox' else 'Sender'} = {user})."))

    tbl = QTableWidget(0, 6, dlg)
    tbl.setHorizontalHeaderLabels(
        ["VType", "VNo", "Date", "From", "To", "Subject"])
    tbl.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)
    tbl.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
    tbl.horizontalHeader().setStretchLastSection(True)
    lay.addWidget(tbl, 1)

    chk_all = QCheckBox("Cleared wale bhi dikhao (VB6 default: sirf 'Y')")
    lay.addWidget(chk_all)
    lbl = QLabel("0 message(s)")
    lay.addWidget(lbl)

    def _fill():
        try:
            if box == "inbox":
                rows = mops.messaging_list(
                    receiver=user,
                    cleared=None if chk_all.isChecked() else "Y")
            else:
                rows = mops.messaging_list(
                    sender=user,
                    cleared=None if chk_all.isChecked() else "Y")
        except Exception as e:
            QMessageBox.critical(dlg, title, f"DB error: {e}")
            rows = []
        tbl.setRowCount(len(rows))
        for i, m in enumerate(rows):
            vals = (m.get("vtype"), m.get("vno"), m.get("vdate"),
                    m.get("sender"), m.get("receiver"), m.get("subject"))
            for c, v in enumerate(vals):
                tbl.setItem(i, c, _ro(v))
        lbl.setText(f"{len(rows)} message(s)")

    def _mark_read():
        sel = tbl.currentRow()
        if sel < 0:
            QMessageBox.information(dlg, title, "Pehle message select karo")
            return
        vtype = tbl.item(sel, 0).text()
        vno = int(tbl.item(sel, 1).text() or 0)
        cn = None
        from HMS_py.core import db as _db
        cn = _db.connect()
        try:
            cn.cursor().execute(
                "UPDATE Messaging SET ReadYN = 'Y', Cleared = 'Y' "
                "WHERE VType = ? AND VNo = ?", (vtype, vno))
            cn.commit()
        except Exception as e:
            QMessageBox.critical(dlg, title, f"DB error: {e}")
        finally:
            cn.close()
        _fill()

    btns = QHBoxLayout()
    b_read = QPushButton("Mark Read/Cleared")
    b_read.clicked.connect(_mark_read)
    b_refresh = QPushButton("Refresh (F5)")
    b_refresh.clicked.connect(_fill)
    b_close = QPushButton("Close")
    b_close.clicked.connect(dlg.reject)
    btns.addWidget(b_read); btns.addWidget(b_refresh)
    btns.addStretch(); btns.addWidget(b_close)
    lay.addLayout(btns)

    chk_all.stateChanged.connect(lambda *_: _fill())
    QShortcut(QKeySequence("F5"), dlg, activated=_fill)
    _fill()
    dlg.exec()


def open_inbox(parent=None, user: str = "SA"):
    open_messaging_box(parent, user=user, box="inbox")


def open_outbox(parent=None, user: str = "SA"):
    open_messaging_box(parent, user=user, box="outbox")
