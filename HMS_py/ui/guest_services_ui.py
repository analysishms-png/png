import sys

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")

from PyQt6.QtWidgets import (
    QDialog,
    QVBoxLayout,
    QHBoxLayout,
    QTabWidget,
    QWidget,
    QTableWidget,
    QTableWidgetItem,
    QPushButton,
    QLabel,
    QLineEdit,
    QMessageBox,
    QHeaderView,
    QFormLayout,
    QGroupBox,
)
from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor

from HMS_py.core import guest_services
from HMS_py.ui import theme as _theme


class GuestServicesDialog(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Guest Services")
        self.resize(950, 650)
        self.setup_ui()

    def setup_ui(self):
        layout = QVBoxLayout(self)

        self.tab_widget = QTabWidget()
        layout.addWidget(self.tab_widget)

        self._build_comments_tab()
        self._build_complaints_tab()
        self._build_wakeup_tab()
        self._build_lostfound_tab()
        self._build_message_tab()

    # ── helpers ──────────────────────────────────────────────────────
    @staticmethod
    def _make_table(headers):
        table = QTableWidget()
        table.setColumnCount(len(headers))
        table.setHorizontalHeaderLabels(headers)
        table.setAlternatingRowColors(True)
        table.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeMode.Stretch)
        table.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        table.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        table.itemSelectionChanged.connect(lambda: None)
        return table

    @staticmethod
    def _fill_table(table, rows, keys):
        table.setRowCount(0)
        for row_data in rows:
            row_idx = table.rowCount()
            table.insertRow(row_idx)
            for col_idx, key in enumerate(keys):
                val = row_data.get(key)
                item = QTableWidgetItem(str(val) if val is not None else "")
                item.setForeground(QColor(_theme.palette()["text"]))
                table.setItem(row_idx, col_idx, item)

    def _make_buttons(self, on_new, on_delete, on_refresh):
        btn_layout = QHBoxLayout()
        btn_new = QPushButton("New")
        btn_new.setToolTip("Add a new record")
        btn_new.clicked.connect(on_new)
        btn_del = QPushButton("Delete")
        btn_del.setToolTip("Delete selected record")
        btn_del.clicked.connect(on_delete)
        btn_ref = QPushButton("Refresh")
        btn_ref.setToolTip("Reload data from database")
        btn_ref.clicked.connect(on_refresh)
        btn_layout.addWidget(btn_new)
        btn_layout.addWidget(btn_del)
        btn_layout.addWidget(btn_ref)
        btn_layout.addStretch()
        return btn_layout

    def _center_row(self, table):
        rows = table.selectionModel().selectedRows()
        if not rows:
            return None
        return rows[0].row()

    # ══════════════════════════════════════════════════════════════════
    #  TAB 1 – Guest Comments
    # ══════════════════════════════════════════════════════════════════
    def _build_comments_tab(self):
        tab = QWidget()
        v = QVBoxLayout(tab)

        keys = ["code", "name", "comments", "mobile", "city"]
        self.tbl_comments = self._make_table(
            ["Code", "GuestName", "Comment", "Mobile", "City"]
        )
        v.addWidget(self.tbl_comments)

        grp = QGroupBox("Add Comment")
        form = QFormLayout()
        self.txt_c_folio = QLineEdit()
        self.txt_c_folio.setPlaceholderText("Folio number")
        self.txt_c_name = QLineEdit()
        self.txt_c_name.setPlaceholderText("Guest name")
        self.txt_c_comment = QLineEdit()
        self.txt_c_comment.setPlaceholderText("Comment text")
        form.addRow("FolioNo:", self.txt_c_folio)
        form.addRow("GuestName:", self.txt_c_name)
        form.addRow("Comment:", self.txt_c_comment)
        grp.setLayout(form)
        v.addWidget(grp)

        def refresh():
            try:
                rows = guest_services.list_comments()
                self._fill_table(self.tbl_comments, rows, keys)
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))

        def add():
            rec = {
                "name": self.txt_c_name.text(),
                "comments": self.txt_c_comment.text(),
                "mobile": "",
            }
            try:
                guest_services.insert_comment(rec)
                refresh()
                self.txt_c_folio.clear()
                self.txt_c_name.clear()
                self.txt_c_comment.clear()
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))

        def delete():
            row = self._center_row(self.tbl_comments)
            if row is None:
                return
            try:
                code = int(self.tbl_comments.item(row, 0).text())
                guest_services.delete_comments(code)
                refresh()
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))

        v.addLayout(self._make_buttons(add, delete, refresh))
        self.tab_widget.addTab(tab, "Guest Comments")
        refresh()

    # ══════════════════════════════════════════════════════════════════
    #  TAB 2 – Complaints
    # ══════════════════════════════════════════════════════════════════
    def _build_complaints_tab(self):
        tab = QWidget()
        v = QVBoxLayout(tab)

        keys = ["code", "description", "category", "status", "cdate"]
        self.tbl_complaints = self._make_table(
            ["Code", "Complaint", "Category", "Status", "Date"]
        )
        v.addWidget(self.tbl_complaints)

        grp = QGroupBox("Add Complaint")
        form = QFormLayout()
        self.txt_co_folio = QLineEdit()
        self.txt_co_folio.setPlaceholderText("Folio number")
        self.txt_co_comp = QLineEdit()
        self.txt_co_comp.setPlaceholderText("Complaint description")
        self.txt_co_cat = QLineEdit()
        self.txt_co_cat.setPlaceholderText("Category")
        self.txt_co_status = QLineEdit()
        self.txt_co_status.setPlaceholderText("e.g. Open")
        form.addRow("FolioNo:", self.txt_co_folio)
        form.addRow("Complaint:", self.txt_co_comp)
        form.addRow("Category:", self.txt_co_cat)
        form.addRow("Status:", self.txt_co_status)
        grp.setLayout(form)
        v.addWidget(grp)

        def refresh():
            try:
                rows = guest_services.list_complaints()
                self._fill_table(self.tbl_complaints, rows, keys)
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))

        def add():
            rec = {
                "description": self.txt_co_comp.text(),
                "category": self.txt_co_cat.text(),
                "status": self.txt_co_status.text() or "Open",
            }
            try:
                guest_services.insert_complaint(rec)
                refresh()
                self.txt_co_folio.clear()
                self.txt_co_comp.clear()
                self.txt_co_cat.clear()
                self.txt_co_status.clear()
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))

        def delete():
            row = self._center_row(self.tbl_complaints)
            if row is None:
                return
            try:
                vno = int(self.tbl_complaints.item(row, 0).text())
                guest_services.delete_complaint(vno)
                refresh()
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))

        v.addLayout(self._make_buttons(add, delete, refresh))
        self.tab_widget.addTab(tab, "Complaints")
        refresh()

    # ══════════════════════════════════════════════════════════════════
    #  TAB 3 – Wake Up
    # ══════════════════════════════════════════════════════════════════
    def _build_wakeup_tab(self):
        tab = QWidget()
        v = QVBoxLayout(tab)

        keys = ["docid", "folio", "roomno", "wtime"]
        self.tbl_wakeup = self._make_table(["DocId", "FolioNo", "RoomNo", "WakeUpTime"])
        v.addWidget(self.tbl_wakeup)

        grp = QGroupBox("Add Wake Up")
        form = QFormLayout()
        self.txt_w_folio = QLineEdit()
        self.txt_w_folio.setPlaceholderText("Folio number")
        self.txt_w_time = QLineEdit()
        self.txt_w_time.setPlaceholderText("HH:MM")
        form.addRow("FolioNo:", self.txt_w_folio)
        form.addRow("WakeUpTime:", self.txt_w_time)
        grp.setLayout(form)
        v.addWidget(grp)

        def refresh():
            try:
                rows = guest_services.list_wakeup()
                self._fill_table(self.tbl_wakeup, rows, keys)
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))

        def add():
            rec = {
                "vtime": self.txt_w_time.text() or "07:00",
                "folio": self.txt_w_folio.text() or 0,
            }
            try:
                guest_services.insert_wakeup(rec)
                refresh()
                self.txt_w_folio.clear()
                self.txt_w_time.clear()
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))

        def delete():
            row = self._center_row(self.tbl_wakeup)
            if row is None:
                return
            try:
                docid = self.tbl_wakeup.item(row, 0).text()
                guest_services.delete_wakeup(docid)
                refresh()
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))

        v.addLayout(self._make_buttons(add, delete, refresh))
        self.tab_widget.addTab(tab, "Wake Up")
        refresh()

    # ══════════════════════════════════════════════════════════════════
    #  TAB 4 – Lost & Found
    # ══════════════════════════════════════════════════════════════════
    def _build_lostfound_tab(self):
        tab = QWidget()
        v = QVBoxLayout(tab)

        keys = ["code", "farea", "description", "status", "fdate"]
        self.tbl_lf = self._make_table(
            ["Code", "ItemName", "Description", "Status", "Date"]
        )
        v.addWidget(self.tbl_lf)

        grp = QGroupBox("Add Lost & Found Item")
        form = QFormLayout()
        self.txt_lf_item = QLineEdit()
        self.txt_lf_item.setPlaceholderText("Item name")
        self.txt_lf_desc = QLineEdit()
        self.txt_lf_desc.setPlaceholderText("Description")
        self.txt_lf_status = QLineEdit()
        self.txt_lf_status.setPlaceholderText("e.g. Found")
        form.addRow("ItemName:", self.txt_lf_item)
        form.addRow("Description:", self.txt_lf_desc)
        form.addRow("Status:", self.txt_lf_status)
        grp.setLayout(form)
        v.addWidget(grp)

        def refresh():
            try:
                rows = guest_services.list_lostfound()
                self._fill_table(self.tbl_lf, rows, keys)
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))

        def add():
            rec = {
                "farea": self.txt_lf_item.text(),
                "description": self.txt_lf_desc.text(),
                "status": self.txt_lf_status.text() or "Open",
            }
            try:
                guest_services.insert_lostfound(rec)
                refresh()
                self.txt_lf_item.clear()
                self.txt_lf_desc.clear()
                self.txt_lf_status.clear()
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))

        def delete():
            row = self._center_row(self.tbl_lf)
            if row is None:
                return
            try:
                code = int(self.tbl_lf.item(row, 0).text())
                guest_services.delete_lostfound(code)
                refresh()
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))

        v.addLayout(self._make_buttons(add, delete, refresh))
        self.tab_widget.addTab(tab, "Lost & Found")
        refresh()

    # ══════════════════════════════════════════════════════════════════
    #  TAB 5 – Guest Message (VB6 FrmHouGuestMsg)
    # ══════════════════════════════════════════════════════════════════
    def _build_message_tab(self):
        tab = QWidget()
        v = QVBoxLayout(tab)

        keys = ["docid", "roomno", "caller", "message", "solved"]
        self.tbl_message = self._make_table(
            ["DocId", "RoomNo", "Caller", "Message", "Solved"]
        )
        v.addWidget(self.tbl_message)

        grp = QGroupBox("Add Message")
        form = QFormLayout()
        self.txt_m_roomno = QLineEdit()
        self.txt_m_roomno.setPlaceholderText("Room number")
        self.txt_m_caller = QLineEdit()
        self.txt_m_caller.setPlaceholderText("Caller name")
        self.txt_m_telephone = QLineEdit()
        self.txt_m_telephone.setPlaceholderText("Telephone")
        self.txt_m_message = QLineEdit()
        self.txt_m_message.setPlaceholderText("Message text")
        form.addRow("RoomNo:", self.txt_m_roomno)
        form.addRow("Caller:", self.txt_m_caller)
        form.addRow("Telephone:", self.txt_m_telephone)
        form.addRow("Message:", self.txt_m_message)
        grp.setLayout(form)
        v.addWidget(grp)

        def refresh():
            try:
                rows = guest_services.list_message()
                self._fill_table(self.tbl_message, rows, keys)
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))

        def add():
            rec = {
                "roomno": self.txt_m_roomno.text(),
                "caller": self.txt_m_caller.text(),
                "telephone": self.txt_m_telephone.text(),
                "message": self.txt_m_message.text(),
            }
            try:
                guest_services.insert_message(rec)
                refresh()
                self.txt_m_roomno.clear()
                self.txt_m_caller.clear()
                self.txt_m_telephone.clear()
                self.txt_m_message.clear()
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))

        def delete():
            row = self._center_row(self.tbl_message)
            if row is None:
                return
            try:
                docid = self.tbl_message.item(row, 0).text()
                guest_services.delete_message(docid)
                refresh()
            except Exception as e:
                QMessageBox.warning(self, "Error", str(e))

        v.addLayout(self._make_buttons(add, delete, refresh))
        self.tab_widget.addTab(tab, "Guest Message")
        refresh()


def open_guest_services(parent=None):
    dlg = GuestServicesDialog(parent)
    dlg.exec()
    return dlg


if __name__ == "__main__":
    from PyQt6.QtWidgets import QApplication

    app = QApplication(sys.argv)
    w = open_guest_services()
    sys.exit(app.exec())
