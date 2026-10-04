"""FAEnviro settings editor (VB6: FaEnvron.frm - Finance -> FA Parameter).

VB6 form ke 42 Txt controls (Index 0-41, Form_Load + btnok_Click mapping) ke
saath-saath BtnIntegrity ke DateLock/RunPIF flags bhi editable hain. Y/N
columns FAEnviro me varchar(3) ('Yes'/'No') ya varchar(1) ('Y'/'N') hain.
"""
from __future__ import annotations

import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtWidgets import (
    QApplication,
    QCheckBox,
    QDialog,
    QFormLayout,
    QGroupBox,
    QHBoxLayout,
    QLabel,
    QLineEdit,
    QMessageBox,
    QPushButton,
    QScrollArea,
    QTabWidget,
    QVBoxLayout,
    QWidget,
)

from HMS_py.core import fa_enviro
from HMS_py.ui.desktop_style import apply_desktop_surface, mark_desktop_action

# Tagada lines FAEnviro me varchar(75) hain (HMS_REVERSE_ENGINEERING\18_Database\
# columns_dictionary.txt FaEnviro|13..22,58). FaEnvron.frm me Tagada ka koi Txt
# control hi nahi (sirf BtnIntegrity fixed defaults likhta hai) - isliye length
# DB schema se li gayi.
TAGADA_MAXLEN = 75


def _is_yes(value) -> bool:
    """VB6 Y/N flag load: 'Y' ya 'Yes' -> checked (live DB me dono milte hain)."""
    return str(value or "").strip().upper() in ("Y", "YES")


def _text(value) -> str:
    """NULL -> khali, par 0 ko 0 hi rakho (VB6 Age1=0 dikhata hai)."""
    return "" if value is None else str(value)


class FAEnviroDialog(QDialog):
    """VB6 FaEnvron.frm parity - 42 Txt (Index 0-41) + BtnIntegrity flags.

    Frame mapping: Frame1 Ageing -> Tab1 g_ageing, Frame2 Voucher Entry ->
    Tab1 g_limits + Tab4 g_voucher, Frame3 Define Voucher -> Tab4 g_define,
    Frame4 Display -> Tab3 g_disp, Frame5 Dos Printing -> Tab4 g_dos,
    Frame6 Stock -> Tab3 g_stock, Frame7 Reports -> Tab4 g_reports.
    """

    def __init__(self, parent=None, current_user: str = "SA"):
        super().__init__(parent)
        apply_desktop_surface(self, "desktopFAEnvironment")
        self.current_user = current_user
        self.setWindowTitle("FA Environment Settings - HMS_py")
        self.resize(780, 700)

        root = QVBoxLayout(self)

        tabs = QTabWidget()

        # --- Tab 1: Ageing Slabs & Credit Limits ---
        t1 = QWidget()
        t1_lay = QVBoxLayout(t1)

        g_ageing = QGroupBox("Ageing Slabs (Days & Amounts)")
        f_ageing = QFormLayout(g_ageing)
        self.ed_age = [QLineEdit() for _ in range(6)]
        self.ed_amt = [QLineEdit() for _ in range(6)]
        for i in range(6):
            h = QHBoxLayout()
            self.ed_age[i].setPlaceholderText(f"Slab {i+1} Days")
            self.ed_amt[i].setPlaceholderText(f"Slab {i+1} Max Amount")
            h.addWidget(QLabel("Days:"))
            h.addWidget(self.ed_age[i])
            h.addWidget(QLabel("Amount:"))
            h.addWidget(self.ed_amt[i])
            f_ageing.addRow(f"Ageing Bucket {i+1}", h)
        t1_lay.addWidget(g_ageing)

        # VB6 Frame2 "Voucher Entry": Txt(6)=DebitLimit, Txt(7)=CreditLimit,
        # Txt(8)=NegativeCashBalance - teeno Y/N flags hain (FAEnviro varchar(3),
        # live value 'Yes'/'No'), amount nahi.
        g_limits = QGroupBox("Credit & Financial Limit Checks")
        f_limits = QFormLayout(g_limits)
        self.chk_debit_limit = QCheckBox("Limit Check for Debtors (Y/N)")
        self.chk_credit_limit = QCheckBox("Limit Check for Creditors (Y/N)")
        self.chk_neg_cash = QCheckBox("Warn on Negative Cash Balance (Y/N)")
        f_limits.addRow("", self.chk_debit_limit)
        f_limits.addRow("", self.chk_credit_limit)
        f_limits.addRow("", self.chk_neg_cash)
        t1_lay.addWidget(g_limits)
        t1_lay.addStretch()
        tabs.addTab(t1, "Ageing & Limits")

        # --- Tab 2: Tagada Templates ---
        t2 = QWidget()
        t2_lay = QVBoxLayout(t2)
        scroll2 = QScrollArea()
        scroll2.setWidgetResizable(True)
        t2_content = QWidget()
        f_tagada = QFormLayout(t2_content)

        g_headers = QGroupBox("Tagada Letter Headers")
        fh = QFormLayout(g_headers)
        self.ed_headers = [QLineEdit() for _ in range(5)]
        for ed in self.ed_headers:
            ed.setMaxLength(TAGADA_MAXLEN)
        for i in range(5):
            fh.addRow(f"Header Line {i+1}", self.ed_headers[i])
        f_tagada.addRow(g_headers)

        g_footers = QGroupBox("Tagada Letter Footers")
        ff = QFormLayout(g_footers)
        self.ed_footers = [QLineEdit() for _ in range(5)]
        for ed in self.ed_footers:
            ed.setMaxLength(TAGADA_MAXLEN)
        for i in range(5):
            lbl = f"Footer Line {i+1}" if i != 2 else "Footer Line 3 (FA)"
            ff.addRow(lbl, self.ed_footers[i])
        f_tagada.addRow(g_footers)

        scroll2.setWidget(t2_content)
        t2_lay.addWidget(scroll2)
        tabs.addTab(t2, "Tagada Letters")

        # --- Tab 3: Stock & Display Settings ---
        t3 = QWidget()
        t3_lay = QVBoxLayout(t3)

        g_stock = QGroupBox("Opening & Closing Stock Values")
        f_stock = QFormLayout(g_stock)
        self.ed_op_qty = QLineEdit()
        self.ed_op_val = QLineEdit()
        self.ed_cl_qty = QLineEdit()
        self.ed_cl_val = QLineEdit()
        f_stock.addRow("Opening Stock Qty", self.ed_op_qty)
        f_stock.addRow("Opening Stock Value", self.ed_op_val)
        f_stock.addRow("Closing Stock Qty", self.ed_cl_qty)
        f_stock.addRow("Closing Stock Value", self.ed_cl_val)
        t3_lay.addWidget(g_stock)

        # VB6 Frame4 "Display" ke saare flags + Frame2 ke To/By, Prev-Balance.
        g_disp = QGroupBox("Display & Printing Flags")
        f_disp = QFormLayout(g_disp)
        self.chk_show_currbal = QCheckBox("Show Current Balance in Entry (Y/N)")
        self.chk_show_qty = QCheckBox("Show Quantity Columns (Y/N)")
        self.chk_show_city = QCheckBox("Show City Name in Ledger (Y/N)")
        # VB6 Txt(38): "Use To/By Instead of Cr/Dr During Entry (Y/N) ?"
        self.chk_toby = QCheckBox("Use To/By Instead of Cr/Dr During Entry (Y/N)")
        self.chk_prebal = QCheckBox("Show Previous Balance in Ledger (Y/N)")
        self.chk_vert_bs = QCheckBox("Show Verticle Balance Sheet (Y/N)")
        self.chk_led_div = QCheckBox("Show Division Code in Ledger (Y/N)")
        self.chk_led_site = QCheckBox("Show Site Code in Ledger (Y/N)")
        self.chk_led_prefix = QCheckBox("Show Vr.Prefix in Ledger (Y/N)")
        self.chk_cash_bal = QCheckBox("Show Balance in Cash/Bank Book (Y/N)")
        self.chk_month_total = QCheckBox("Show Monthly Summary (Y/N)")
        # VB6 Txt(36): "Show City Names With A/C Name (Y/N) ?"
        self.chk_city_disp = QCheckBox("Show City Names With A/C Name (Y/N)")
        for chk in (self.chk_show_currbal, self.chk_show_qty, self.chk_show_city,
                    self.chk_toby, self.chk_prebal, self.chk_vert_bs,
                    self.chk_led_div, self.chk_led_site, self.chk_led_prefix,
                    self.chk_cash_bal, self.chk_month_total, self.chk_city_disp):
            f_disp.addRow("", chk)
        t3_lay.addWidget(g_disp)
        t3_lay.addStretch()
        tabs.addTab(t3, "Stock & Display")

        # --- Tab 4: Voucher, DOS Printing & Reports ---
        t4 = QWidget()
        t4_lay = QVBoxLayout(t4)
        scroll4 = QScrollArea()
        scroll4.setWidgetResizable(True)
        t4_content = QWidget()
        t4_inner = QVBoxLayout(t4_content)

        # VB6 Frame3 "Define Voucher": Txt(9)=ShowGroup, Txt(16)=DonotShowGroup
        g_define = QGroupBox("Define Voucher")
        f_define = QFormLayout(g_define)
        self.chk_show_group = QCheckBox(
            "Only System defined A/C Group in Must Show A/C List (Y/N)")
        self.chk_dont_show_group = QCheckBox(
            "Only System defined A/C Group in Don't Show A/C List (Y/N)")
        f_define.addRow("", self.chk_show_group)
        f_define.addRow("", self.chk_dont_show_group)
        t4_inner.addWidget(g_define)

        # VB6 Frame2 "Voucher Entry" ke baaki flags + DateLock/RunPIF
        # (BtnIntegrity dono ko 'Y' set karta hai; FaEnvron.frm me inka Txt nahi).
        g_voucher = QGroupBox("Voucher Entry")
        f_voucher = QFormLayout(g_voucher)
        self.chk_filter_ac = QCheckBox("Enable A/c Help Filter (Y/N)")
        self.chk_addr_help = QCheckBox("Show A/c Group & Address (Y/N)")
        self.chk_online_adj = QCheckBox("Online Adjustment (Y/N)")
        self.chk_pdc_dt = QCheckBox("Accept Post Dated Cheque (Y/N)")
        self.chk_date_lock = QCheckBox("Date Lock (Y/N)")
        self.chk_run_pif = QCheckBox("Run PIF (Y/N)")
        for chk in (self.chk_filter_ac, self.chk_addr_help,
                    self.chk_online_adj, self.chk_pdc_dt,
                    self.chk_date_lock, self.chk_run_pif):
            f_voucher.addRow("", chk)
        t4_inner.addWidget(g_voucher)

        # VB6 Frame5 "Dos Printing": Txt(23)=pagenofill, Txt(24)=linefiller,
        # Txt(25)=daterfill, Txt(26)=titlerfill.
        g_dos = QGroupBox("Dos Printing")
        f_dos = QFormLayout(g_dos)
        self.chk_pageno_fill = QCheckBox(
            "Page No. Should be Printed on the Report (Y/N)")
        self.chk_date_fill = QCheckBox(
            "Report Date Should be Printed on the Report (Y/N)")
        # VB6 Txt(26) MaxLength=6, 'Middle'/'Left' dikhata hai, DB me 'M'/'L'.
        self.ed_title_fill = QLineEdit()
        self.ed_title_fill.setMaxLength(6)
        self.ed_title_fill.setPlaceholderText("Left / Middle")
        # FAEnviro linefiller varchar(1) hai (VB6 Txt(24) MaxLength=3 tha).
        self.ed_line_filler = QLineEdit()
        self.ed_line_filler.setMaxLength(1)
        f_dos.addRow("", self.chk_pageno_fill)
        f_dos.addRow("", self.chk_date_fill)
        f_dos.addRow("Report Title Position", self.ed_title_fill)
        f_dos.addRow("Line Fill Character", self.ed_line_filler)
        t4_inner.addWidget(g_dos)

        # VB6 Frame7 "Reports": Txt(37)=CashBookPage, Txt(39)=RepToBy
        g_reports = QGroupBox("Reports")
        f_reports = QFormLayout(g_reports)
        self.chk_cash_page = QCheckBox(
            "Separate Page for each day in Cash/Bank Book (Y/N)")
        self.chk_rep_toby = QCheckBox(
            "Want to Print To/By in place of Cr/Dr (Y/N)")
        f_reports.addRow("", self.chk_cash_page)
        f_reports.addRow("", self.chk_rep_toby)
        t4_inner.addWidget(g_reports)
        t4_inner.addStretch()

        scroll4.setWidget(t4_content)
        t4_lay.addWidget(scroll4)
        tabs.addTab(t4, "Voucher & Reports")

        root.addWidget(tabs, 1)

        # (checkbox, FAEnviro col, YES token, NO token) - varchar(3) flags
        # 'Yes'/'No' rakhte hain (VB6 btnok raw text save karta hai, live DB
        # values bhi 'Yes'/'No' hain); varchar(1) flags me VB6 Left(text, 1)
        # save karta hai, isliye 'Y'/'N'. ShowQty ka FaEnvron.frm me Txt nahi
        # (BtnIntegrity 'No' likhta hai) - Python UI se editable rakha hai.
        self._flags = [
            (self.chk_debit_limit, "DebitLimit", "Yes", "No"),
            (self.chk_credit_limit, "CreditLimit", "Yes", "No"),
            (self.chk_neg_cash, "NegativeCashBalance", "Yes", "No"),
            (self.chk_show_group, "ShowGroup", "Yes", "No"),
            (self.chk_dont_show_group, "DonotShowGroup", "Yes", "No"),
            (self.chk_show_currbal, "ShowCurrentBalance", "Yes", "No"),
            (self.chk_show_qty, "ShowQty", "Yes", "No"),
            (self.chk_show_city, "ShowCityName", "Yes", "No"),
            (self.chk_toby, "ToBy", "Yes", "No"),
            (self.chk_prebal, "PreBal", "Yes", "No"),
            (self.chk_vert_bs, "VerticleBalanceSheet", "Yes", "No"),
            (self.chk_led_div, "LedDivCode", "Yes", "No"),
            (self.chk_led_site, "LedSiteCode", "Yes", "No"),
            (self.chk_led_prefix, "LedPrefix", "Yes", "No"),
            (self.chk_cash_bal, "CashBookBalance", "Yes", "No"),
            (self.chk_month_total, "MonthTotal", "Yes", "No"),
            (self.chk_city_disp, "CityNameDisp", "Yes", "No"),
            (self.chk_filter_ac, "FilterAC", "Yes", "No"),
            (self.chk_addr_help, "AddressHelp", "Yes", "No"),
            (self.chk_online_adj, "OnLineAdjustment", "Yes", "No"),
            (self.chk_pdc_dt, "PDCDt", "Yes", "No"),
            (self.chk_cash_page, "CashBookPage", "Yes", "No"),
            (self.chk_rep_toby, "RepToBy", "Yes", "No"),
            (self.chk_date_fill, "daterfill", "Y", "N"),
            (self.chk_pageno_fill, "pagenofill", "Y", "N"),
            (self.chk_date_lock, "DateLock", "Y", "N"),
            (self.chk_run_pif, "RunPIF", "Y", "N"),
        ]

        # --- Footer Controls ---
        footer = QHBoxLayout()
        self.status = QLabel("Ready")
        self.status.setObjectName("desktopStateLabel")
        footer.addWidget(self.status)
        footer.addStretch()

        self.btn_save = QPushButton("&Save")
        mark_desktop_action(self.btn_save, "primary")
        self.btn_cancel = QPushButton("&Cancel")
        mark_desktop_action(self.btn_cancel)
        self.btn_close = QPushButton("E&xit")
        mark_desktop_action(self.btn_close)

        footer.addWidget(self.btn_save)
        footer.addWidget(self.btn_cancel)
        footer.addWidget(self.btn_close)

        self.btn_save.clicked.connect(self.save)
        self.btn_cancel.clicked.connect(self.reload)
        self.btn_close.clicked.connect(self.close)

        root.addLayout(footer)
        self.reload()

    def reload(self):
        try:
            val = fa_enviro.get()
        except Exception as exc:
            self.status.setText(f"Load failed: {exc}")
            return

        for i in range(6):
            self.ed_age[i].setText(_text(val.get(f"Age{i+1}")))
            self.ed_amt[i].setText(_text(val.get(f"Amt{i+1}")))

        for i in range(5):
            self.ed_headers[i].setText(_text(val.get(f"TagadaHeader{i+1}")))
            fkey = f"TagadaFooter{i+1}" if i != 2 else "TagadaFooter3fa"
            self.ed_footers[i].setText(_text(val.get(fkey)))

        for box, col, _yes, _no in self._flags:
            box.setChecked(_is_yes(val.get(col)))

        self.ed_op_qty.setText(_text(val.get("OpStockQTY")))
        self.ed_op_val.setText(_text(val.get("OpStockValue")))
        self.ed_cl_qty.setText(_text(val.get("ClStockQTY")))
        self.ed_cl_val.setText(_text(val.get("ClStockValue")))

        # VB6 Form_Load: titlerfill = IIf(value="M", "Middle", "Left")
        title = _text(val.get("titlerfill")).strip().upper()
        self.ed_title_fill.setText("Middle" if title == "M" else "Left")
        self.ed_line_filler.setText(_text(val.get("linefiller")))

        self.status.setText("Settings loaded from database")

    def save(self):
        changes = {}
        # Validate and harvest age/amt (VB6 Txt_Validate numeric rule)
        age_vals, amt_vals = [], []
        for i in range(6):
            age_str = self.ed_age[i].text().strip()
            amt_str = self.ed_amt[i].text().strip()
            if age_str:
                try:
                    age_vals.append((i, int(age_str)))
                except ValueError:
                    QMessageBox.warning(self, "Save Error", f"Ageing Slab {i+1} Days integer hona chahiye")
                    return
            if amt_str:
                try:
                    amt_vals.append((i, float(amt_str)))
                except ValueError:
                    QMessageBox.warning(self, "Save Error", f"Ageing Slab {i+1} Amount numeric hona chahiye")
                    return

        # VB6 btnok_Click: "Time Periods Must be in Increasing Order" /
        # "Amount Slab Must be in Increasing Order"
        for label, seq in (("Ageing Slab Days", age_vals),
                           ("Ageing Slab Amount", amt_vals)):
            values = [v for _i, v in seq]
            if any(b <= a for a, b in zip(values, values[1:])):
                QMessageBox.warning(
                    self, "Save Error",
                    f"{label} strictly increasing order me honi chahiye")
                return
        for i, v in age_vals:
            changes[f"Age{i+1}"] = v
        for i, v in amt_vals:
            changes[f"Amt{i+1}"] = v

        # Tagadas (VB6 btnok me nahi, FaReports/BtnIntegrity likhta hai)
        for i in range(5):
            header = self.ed_headers[i].text().strip()
            if len(header) > TAGADA_MAXLEN:
                QMessageBox.warning(self, "Save Error",
                                    f"Tagada Header {i+1} max {TAGADA_MAXLEN} characters")
                return
            changes[f"TagadaHeader{i+1}"] = header
            fkey = f"TagadaFooter{i+1}" if i != 2 else "TagadaFooter3fa"
            footer = self.ed_footers[i].text().strip()
            if len(footer) > TAGADA_MAXLEN:
                QMessageBox.warning(self, "Save Error",
                                    f"Tagada Footer {i+1} max {TAGADA_MAXLEN} characters")
                return
            changes[fkey] = footer

        # Stocks
        for fld, ed in [("OpStockQTY", self.ed_op_qty), ("OpStockValue", self.ed_op_val),
                        ("ClStockQTY", self.ed_cl_qty), ("ClStockValue", self.ed_cl_val)]:
            val = ed.text().strip()
            if val:
                try:
                    changes[fld] = float(val)
                except ValueError:
                    QMessageBox.warning(self, "Save Error", f"{fld} numeric hona chahiye")
                    return

        # VB6 Frame5: daterfill/pagenofill = Left(text, 1); titlerfill = 'M'/'L'
        changes["titlerfill"] = (self.ed_title_fill.text().strip() or "Left")[:1].upper()
        changes["linefiller"] = self.ed_line_filler.text().strip()

        # Y/N flags
        for box, col, yes, no in self._flags:
            changes[col] = yes if box.isChecked() else no

        try:
            n = fa_enviro.update_settings(changes, user=self.current_user)
            self.status.setText(f"Successfully saved ({n} row updated)")
            QMessageBox.information(self, "Save", "FA Environment settings successfully updated.")
            self.reload()
        except Exception as exc:
            self.status.setText(f"Save failed: {exc}")
            QMessageBox.critical(self, "Save Error", f"DB error: {exc}")


def open_fa_environment(parent=None, current_user: str = "SA"):
    dialog = FAEnviroDialog(parent, current_user=current_user)
    dialog.show()
    return dialog


if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = open_fa_environment()
    raise SystemExit(app.exec())
