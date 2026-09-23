"""e-Invoice UI (VB6: eInvoice.bas form).

Provides:
- E-invoice generation form
- GST breakdown display
- Invoice status tracking
- IRP submission with mock mode support
- Invoice history/browser

Follows existing UI patterns: QDialog + QTableWidget + VB6-style controls.
"""
from __future__ import annotations

import os
import sys
import json

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import Qt, pyqtSignal
from PyQt6.QtGui import QColor, QShortcut, QKeySequence, QFont
from PyQt6.QtWidgets import (QApplication, QDialog, QHBoxLayout,
                             QLabel, QLineEdit, QMessageBox,
                             QPushButton, QTableWidget, QTableWidgetItem,
                             QVBoxLayout, QWidget, QFormLayout,
                             QComboBox, QSpinBox, QDoubleSpinBox,
                             QGroupBox, QHeaderView, QTextEdit,
                             QAbstractItemView, QSizePolicy)

from HMS_py.core import einvoice as einv
from HMS_py.core import db
from HMS_py.ui import theme as _theme
from HMS_py.ui.base_master import BaseMasterForm, Field, MasterConfig, make_delete_guard


class EInvoiceGeneratorForm(QDialog):
    """E-Invoice Generation Form - VB6 eInvoice.bas port.
    
    Allows creating e-invoices with GST calculation,
    viewing GST breakdown, and submitting to IRP.
    """
    
    invoice_generated = pyqtSignal(str)  # emits invoice_no
    
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("e-Invoice Generator - HMS_py")
        self.resize(900, 750)
        self.setModal(False)
        self.state = "Idle"
        self.mock_mode = True
        
        p = _theme.palette()
        root = QVBoxLayout(self)
        root.setContentsMargins(16, 12, 16, 12)
        root.setSpacing(12)
        
        # ---- Header: Supplier Info ----
        header_grp = QGroupBox("Supplier Information")
        header_form = QFormLayout(header_grp)
        header_form.setSpacing(10)
        
        self.ed_gstin = QLineEdit()
        self.ed_gstin.setMaxLength(15)
        self.ed_gstin.setPlaceholderText("Supplier GSTIN (15 chars)")
        
        self.ed_invoice_no = QLineEdit()
        self.ed_invoice_no.setMaxLength(20)
        self.ed_invoice_no.setPlaceholderText("Invoice Number")
        
        self.ed_customer_name = QLineEdit()
        self.ed_customer_name.setMaxLength(100)
        self.ed_customer_name.setPlaceholderText("Customer Name")
        
        self.ed_customer_gstin = QLineEdit()
        self.ed_customer_gstin.setMaxLength(15)
        self.ed_customer_gstin.setPlaceholderText("Customer GSTIN")
        
        self.ed_place_of_supply = QLineEdit()
        self.ed_place_of_supply.setMaxLength(50)
        self.ed_place_of_supply.setPlaceholderText("Place of Supply (State Code)")
        
        self.ed_invoice_date = QLineEdit()
        self.ed_invoice_date.setPlaceholderText("YYYY-MM-DD (default: today)")
        
        self.ed_document_type = QComboBox()
        self.ed_document_type.addItems(["INV", "DN", "CN"])
        
        self.ed_total_amount = QDoubleSpinBox()
        self.ed_total_amount.setRange(0.01, 999999999.99)
        self.ed_total_amount.setPrefix("₹ ")
        self.ed_total_amount.setDecimals(2)
        self.ed_total_amount.setSingleStep(100.0)
        self.ed_total_amount.setValue(0)
        
        self.ed_gst_rate = QComboBox()
        self.ed_gst_rate.addItems(["5", "12", "18", "28"])
        self.ed_gst_rate.setCurrentText("5")
        self.ed_gst_rate.setToolTip("GST Rate for calculation")
        
        header_form.addRow("GSTIN *", self.ed_gstin)
        header_form.addRow("Invoice No *", self.ed_invoice_no)
        header_form.addRow("Document Type", self.ed_document_type)
        header_form.addRow("Invoice Date", self.ed_invoice_date)
        header_form.addRow("Customer Name *", self.ed_customer_name)
        header_form.addRow("Customer GSTIN *", self.ed_customer_gstin)
        header_form.addRow("Place of Supply *", self.ed_place_of_supply)
        header_form.addRow("Total Amount *", self.ed_total_amount)
        header_form.addRow("GST Rate", self.ed_gst_rate)
        root.addWidget(header_grp)
        
        # ---- Items Section ----
        items_grp = QGroupBox("Invoice Items")
        items_layout = QVBoxLayout(items_grp)
        
        self.tbl_items = QTableWidget(0, 6)
        self.tbl_items.setHorizontalHeaderLabels(
            ["Item Name", "Qty", "Rate", "HSN Code", "Unit", "GST Rate"])
        self.tbl_items.setAlternatingRowColors(True)
        self.tbl_items.setEditTriggers(QAbstractItemView.EditTrigger.DoubleClicked)
        self.tbl_items.horizontalHeader().setStretchLastSection(True)
        self.tbl_items.setMinimumHeight(200)
        items_layout.addWidget(self.tbl_items)
        
        # Item buttons
        item_btns = QHBoxLayout()
        self.btn_add_item = QPushButton("Add Item")
        self.btn_add_item.setToolTip("Add an item to the invoice")
        self.btn_remove_item = QPushButton("Remove Item")
        self.btn_remove_item.setToolTip("Remove selected item")
        self.btn_clear_items = QPushButton("Clear All")
        self.btn_clear_items.setToolTip("Clear all items")
        item_btns.addStretch()
        item_btns.addWidget(self.btn_add_item)
        item_btns.addWidget(self.btn_remove_item)
        item_btns.addWidget(self.btn_clear_items)
        items_layout.addLayout(item_btns)
        root.addWidget(items_grp, stretch=1)
        
        # ---- GST Breakdown ----
        gst_grp = QGroupBox("GST Breakdown")
        gst_layout = QFormLayout(gst_grp)
        gst_layout.setSpacing(10)
        
        self.lbl_cgst = QLabel("₹ 0.00")
        self.lbl_sgst = QLabel("₹ 0.00")
        self.lbl_igst = QLabel("₹ 0.00")
        self.lbl_total_gst = QLabel("₹ 0.00")
        self.lbl_total_inclusive = QLabel("₹ 0.00")
        self.lbl_gst_summary = QLabel("")
        
        gst_layout.addRow("CGST (2.5%)", self.lbl_cgst)
        gst_layout.addRow("SGST (2.5%)", self.lbl_sgst)
        gst_layout.addRow("IGST", self.lbl_igst)
        gst_layout.addRow("Total GST", self.lbl_total_gst)
        gst_layout.addRow("Invoice Value (Incl. GST)", self.lbl_total_inclusive)
        gst_layout.addRow("Summary", self.lbl_gst_summary)
        
        for lbl in [self.lbl_cgst, self.lbl_sgst, self.lbl_igst,
                     self.lbl_total_gst, self.lbl_total_inclusive]:
            lbl.setStyleSheet(f"font-weight: bold; color: {p['text']};")
            lbl.setAlignment(Qt.AlignmentFlag.AlignRight | Qt.AlignmentFlag.AlignVCenter)
        
        root.addWidget(gst_grp)
        
        # ---- Status ----
        self.lbl_status = QLabel("Ready")
        self.lbl_status.setStyleSheet(
            f"font-size: 11px; color: {p['text_dim']}; padding: 4px; "
            f"border-top: 1px solid {p['border']};")
        root.addWidget(self.lbl_status)
        
        # ---- Buttons ----
        btn_grp = QHBoxLayout()
        self.btn_generate = QPushButton("Generate Invoice")
        self.btn_generate.setToolTip("Generate e-invoice payload and calculate GST")
        self.btn_submit = QPushButton("Submit to IRP")
        self.btn_submit.setToolTip("Submit to IRP for IRN generation")
        self.btn_calculate = QPushButton("Calculate GST")
        self.btn_calculate.setToolTip("Recalculate GST")
        self.btn_clear = QPushButton("Clear")
        self.btn_close = QPushButton("Close")
        
        for b in (self.btn_generate, self.btn_calculate,
                   self.btn_submit, self.btn_clear, self.btn_close):
            b.setMinimumHeight(34)
            btn_grp.addWidget(b)
        btn_grp.addStretch()
        root.addLayout(btn_grp)
        
        # ---- Signals ----
        self.btn_add_item.clicked.connect(self._add_item)
        self.btn_remove_item.clicked.connect(self._remove_item)
        self.btn_clear_items.clicked.connect(self._clear_items)
        self.btn_calculate.clicked.connect(self._calculate_gst)
        self.btn_generate.clicked.connect(self._generate_invoice)
        self.btn_submit.clicked.connect(self._submit_to_irp)
        self.btn_clear.clicked.connect(self._clear_form)
        self.btn_close.clicked.connect(self.reject)
        
        # Keyboard shortcuts
        QShortcut(QKeySequence("Ctrl+G"), self, activated=self._generate_invoice)
        QShortcut(QKeySequence("Ctrl+S"), self, activated=self._submit_to_irp)
        QShortcut(QKeySequence("Escape"), self, activated=self.reject)
        
        # Set default date
        from datetime import date as _date
        self.ed_invoice_date.setText(_date.today().strftime("%Y-%m-%d"))
        
        self._update_gst_display()
    
    def _get_items(self) -> list[dict]:
        """Extract items from the items table."""
        items = []
        for r in range(self.tbl_items.rowCount()):
            name_item = self.tbl_items.item(r, 0)
            qty_item = self.tbl_items.item(r, 1)
            rate_item = self.tbl_items.item(r, 2)
            hsn_item = self.tbl_items.item(r, 3)
            unit_item = self.tbl_items.item(r, 4)
            gst_item = self.tbl_items.item(r, 5)
            
            name = name_item.text() if name_item else ""
            if not name:
                continue
            
            try:
                qty = float(qty_item.text() if qty_item else 1)
            except ValueError:
                qty = 1
            try:
                rate = float(rate_item.text() if rate_item else 0)
            except ValueError:
                rate = 0
            
            items.append({
                "name": name,
                "qty": qty,
                "rate": rate,
                "hsn_code": hsn_item.text() if hsn_item else "",
                "unit": unit_item.text() if unit_item else "NOS",
                "gst_rate": gst_item.text() if gst_item else "5",
            })
        return items
    
    def _add_item(self):
        """Add a new empty item row."""
        row = self.tbl_items.rowCount()
        self.tbl_items.insertRow(row)
        
        for col, default in enumerate(["", 1, 0, "", "NOS", "5"]):
            item = QTableWidgetItem(str(default))
            item.setFlags(item.flags() | Qt.ItemFlag.ItemIsEditable)
            item.setForeground(QColor(_theme.palette()["text"]))
            self.tbl_items.setItem(row, col, item)
    
    def _remove_item(self):
        """Remove selected item row."""
        row = self.tbl_items.currentRow()
        if row >= 0:
            self.tbl_items.removeRow(row)
            self._calculate_gst()
    
    def _clear_items(self):
        """Clear all items."""
        self.tbl_items.setRowCount(0)
        self._update_gst_display()
    
    def _calculate_gst(self):
        """Calculate GST based on current form values."""
        try:
            amount = self.ed_total_amount.value()
            rate = self.ed_gst_rate.currentText()
            gst = einv.calculate_gst(amount, rate)
            
            self.lbl_cgst.setText(f"₹ {gst['cgst']:,.2f}")
            self.lbl_sgst.setText(f"₹ {gst['sgst']:,.2f}")
            self.lbl_igst.setText(f"₹ {gst['igst']:,.2f}")
            self.lbl_total_gst.setText(f"₹ {gst['total_gst']:,.2f}")
            self.lbl_total_inclusive.setText(f"₹ {gst['total_inclusive']:,.2f}")
            
            is_intra = self.ed_place_of_supply.text()[:2] == self.ed_gstin.text()[:2]
            if is_intra:
                self.lbl_gst_summary.setText(
                    f"Intra-State | CGST {gst['cgst_rate']}% + SGST {gst['sgst_rate']}%")
            else:
                self.lbl_gst_summary.setText(
                    f"Inter-State | IGST {gst['igst_rate']}%")
        except ValueError as e:
            self.lbl_gst_summary.setText(f"Error: {e}")
    
    def _update_gst_display(self):
        """Update GST display from current values."""
        self._calculate_gst()
    
    def _generate_invoice(self):
        """Generate e-invoice payload."""
        try:
            invoice_no = self.ed_invoice_no.text().strip()
            gstin = self.ed_gstin.text().strip()
            customer_name = self.ed_customer_name.text().strip()
            customer_gstin = self.ed_customer_gstin.text().strip()
            place_of_supply = self.ed_place_of_supply.text().strip()
            total_amount = self.ed_total_amount.value()
            document_type = self.ed_document_type.currentText()
            invoice_date = self.ed_invoice_date.text().strip()
            
            if not invoice_no or not gstin or not customer_name:
                QMessageBox.warning(self, "Validation",
                                   "Invoice No, GSTIN aur Customer Name zaroori hain")
                return
            
            items = self._get_items()
            if not items:
                QMessageBox.warning(self, "Validation",
                                   "At least one item required")
                return
            
            # Calculate total from items
            item_total = 0.0
            for r in range(self.tbl_items.rowCount()):
                name_item = self.tbl_items.item(r, 0)
                qty_item = self.tbl_items.item(r, 1)
                rate_item = self.tbl_items.item(r, 2)
                if name_item and name_item.text():
                    try:
                        qty = float(qty_item.text() if qty_item else 1)
                    except ValueError:
                        qty = 1
                    try:
                        rate = float(rate_item.text() if rate_item else 0)
                    except ValueError:
                        rate = 0
                    item_total += qty * rate
            
            payload = einv.generate_einvoice_json(
                invoice_no=invoice_no,
                gstin=gstin,
                customer_name=customer_name,
                customer_gstin=customer_gstin,
                place_of_supply=place_of_supply,
                items=items,
                total_amount=item_total if item_total > 0 else total_amount,
                invoice_date=invoice_date or None,
                document_type=document_type,
            )
            
            # Update GST display from payload
            self.lbl_cgst.setText(
                f"₹ {payload['CGSTAmount']:,.2f}")
            self.lbl_sgst.setText(
                f"₹ {payload['SGSTAmount']:,.2f}")
            self.lbl_igst.setText(
                f"₹ {payload['IGSTAmount']:,.2f}")
            self.lbl_total_gst.setText(
                f"₹ {payload['TotalTaxAmount']:,.2f}")
            self.lbl_total_inclusive.setText(
                f"₹ {payload['TotalInvoiceValue']:,.2f}")
            
            self.state = "Generated"
            self.lbl_status.setText(
                f"Generated: {invoice_no} | Items: {len(items)} | "
                f"IRN: Pending")
            self.lbl_status.setStyleSheet(
                f"font-size: 11px; color: #059669; padding: 4px; "
                f"font-weight: bold;")
            
            self.invoice_generated.emit(invoice_no)
            
            # Show payload summary
            summary = (
                f"Invoice: {invoice_no}\n"
                f"Customer: {customer_name}\n"
                f"GSTIN: {gstin}\n"
                f"Items: {len(items)}\n"
                f"Total (Incl GST): ₹ {payload['TotalInvoiceValue']:,.2f}\n"
                f"CGST: ₹ {payload['CGSTAmount']:,.2f}\n"
                f"SGST: ₹ {payload['SGSTAmount']:,.2f}\n"
                f"IGST: ₹ {payload['IGSTAmount']:,.2f}\n"
                f"Mode: {'Mock' if self.mock_mode else 'Production'}"
            )
            QMessageBox.information(self, "Invoice Generated", summary)
            
        except ValueError as e:
            QMessageBox.warning(self, "Validation Error", str(e))
        except Exception as e:
            QMessageBox.critical(self, "Generation Error",
                                f"Failed to generate e-invoice: {e}")
    
    def _submit_to_irp(self):
        """Submit e-invoice to IRP for IRN generation."""
        invoice_no = self.ed_invoice_no.text().strip()
        if not invoice_no:
            QMessageBox.warning(self, "Submit",
                               "Generate invoice pehle karo")
            return
        
        try:
            items = self._get_items()
            gstin = self.ed_gstin.text().strip()
            customer_name = self.ed_customer_name.text().strip()
            customer_gstin = self.ed_customer_gstin.text().strip()
            place_of_supply = self.ed_place_of_supply.text().strip()
            
            client = einvoice_client(
                gstin=gstin,
                mock_mode=self.mock_mode,
            )
            
            result = client.generate_and_submit(
                invoice_no=invoice_no,
                customer_name=customer_name,
                customer_gstin=customer_gstin,
                place_of_supply=place_of_supply,
                items=items,
                total_amount=self.ed_total_amount.value(),
                invoice_date=self.ed_invoice_date.text().strip() or None,
            )
            
            irn = result.get("irn", "N/A")
            ack_no = result.get("ack_no", "N/A")
            status = result.get("status", "Unknown")
            
            self.lbl_status.setText(
                f"Submitted: IRN={irn[:20]}... | Ack={ack_no} | "
                f"Status={status}")
            self.lbl_status.setStyleSheet(
                f"font-size: 11px; color: #059669; padding: 4px; "
                f"font-weight: bold;")
            
            QMessageBox.information(
                self, "IRP Submission",
                f"Invoice submitted successfully!\n\n"
                f"IRN: {irn}\n"
                f"Ack No: {ack_no}\n"
                f"Status: {status}\n\n"
                f"Mode: {'Mock' if self.mock_mode else 'Production'}")
            
        except Exception as e:
            QMessageBox.critical(self, "Submission Error",
                                f"IRP submission failed: {e}")
    
    def _clear_form(self):
        """Clear all form fields."""
        self.ed_gstin.clear()
        self.ed_invoice_no.clear()
        self.ed_customer_name.clear()
        self.ed_customer_gstin.clear()
        self.ed_place_of_supply.clear()
        self.ed_invoice_date.clear()
        self.ed_total_amount.setValue(0)
        self._clear_items()
        self._update_gst_display()
        self.state = "Idle"
        self.lbl_status.setText("Ready")
        self.lbl_status.setStyleSheet(
            f"font-size: 11px; color: {_theme.palette()['text_dim']}; padding: 4px;")
    
    def set_mock_mode(self, mock: bool):
        """Enable/disable mock mode."""
        self.mock_mode = mock
        mode_text = "MOCK" if mock else "PRODUCTION"
        self.lbl_status.setText(f"Mode: {mode_text}")


def einvoice_client(
    gstin: str = "",
    api_key: str = "",
    mock_mode: bool = True,
) -> einv.EInvoiceGenerator:
    """Create an EInvoiceGenerator instance."""
    return einv.EInvoiceGenerator(
        gstin=gstin,
        api_key=api_key,
        mock_mode=mock_mode,
    )


# ============================================================
# e-Invoice History Browser
# ============================================================

class EInvoiceBrowser(QDialog):
    """Browse e-invoice history with status tracking."""
    
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("e-Invoice Browser - HMS_py")
        self.resize(1000, 600)

        root = QVBoxLayout(self)
        
        # Title
        title = QLabel("e-Invoice History")
        title.setFont(QFont("Arial", 13, QFont.Weight.Bold))
        title.setStyleSheet(f"color: #000080; background: transparent;")
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(title)
        
        # Filter bar
        filter_bar = QHBoxLayout()
        self.cmb_status = QComboBox()
        self.cmb_status.addItems(["All", "Pending", "Submitted", "Active", "Cancelled"])
        self.cmb_status.setPlaceholderText("Filter by Status")
        self.btn_refresh = QPushButton("Refresh")
        self.btn_refresh.setToolTip("Refresh invoice list")
        filter_bar.addWidget(QLabel("Status:"))
        filter_bar.addWidget(self.cmb_status)
        filter_bar.addStretch()
        filter_bar.addWidget(self.btn_refresh)
        root.addLayout(filter_bar)
        
        # Invoice table
        self.tbl = QTableWidget(0, 8)
        self.tbl.setHorizontalHeaderLabels(
            ["Invoice No", "GSTIN", "Date", "Total (₹)", "CGST", "SGST", "IGST", "Status"])
        self.tbl.setAlternatingRowColors(True)
        self.tbl.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)
        self.tbl.setSelectionBehavior(QTableWidget.SelectionBehavior.SelectRows)
        self.tbl.horizontalHeader().setStretchLastSection(True)
        self.tbl.cellDoubleClicked.connect(self._show_details)
        root.addWidget(self.tbl, stretch=1)
        
        # Buttons
        btn_bar = QHBoxLayout()
        self.btn_view_json = QPushButton("View JSON")
        self.btn_cancel_inv = QPushButton("Cancel Selected")
        self.btn_close = QPushButton("Close")
        btn_bar.addStretch()
        btn_bar.addWidget(self.btn_view_json)
        btn_bar.addWidget(self.btn_cancel_inv)
        btn_bar.addWidget(self.btn_close)
        root.addLayout(btn_bar)
        
        self.btn_refresh.clicked.connect(self.reload)
        self.btn_close.clicked.connect(self.reject)
        self.btn_view_json.clicked.connect(self._view_json)
        self.btn_cancel_inv.clicked.connect(self._cancel_selected)
        
        self.reload()
    
    def reload(self):
        """Reload invoices from database."""
        try:
            status_filter = self.cmb_status.currentText()
            status = None if status_filter == "All" else status_filter
            invoices = einv.list_invoices(status=status)
            
            self.tbl.setRowCount(len(invoices))
            for r, inv in enumerate(invoices):
                vals = [
                    inv.get("invoice_no", ""),
                    inv.get("gstin", ""),
                    str(inv.get("date", ""))[:10] if inv.get("date") else "",
                    f"{inv.get('total_amt', 0):,.2f}",
                    f"{inv.get('cgst', 0):,.2f}",
                    f"{inv.get('sgst', 0):,.2f}",
                    f"{inv.get('igst', 0):,.2f}",
                    inv.get("status", "Pending"),
                ]
                for c, val in enumerate(vals):
                    it = QTableWidgetItem(val)
                    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
                    it.setForeground(QColor(_theme.palette()["text"]))
                    self.tbl.setItem(r, c, it)
            
            self.lbl_count = QLabel(f"{len(invoices)} invoices found")
        except Exception as e:
            QMessageBox.critical(self, "Load Error", str(e))
    
    def _show_details(self, row: int, col: int):
        """Show invoice details."""
        invoice_no = self.tbl.item(row, 0).text() if self.tbl.item(row, 0) else ""
        inv = einv.get_invoice(invoice_no)
        if inv:
            details = json.dumps(inv, indent=2, default=str)
            QMessageBox.information(self, f"Invoice: {invoice_no}", details[:2000])
    
    def _view_json(self):
        """View JSON payload of selected invoice."""
        row = self.tbl.currentRow()
        if row < 0:
            QMessageBox.warning(self, "View JSON", "Select an invoice first")
            return
        invoice_no = self.tbl.item(row, 0).text()
        inv = einv.get_invoice(invoice_no)
        if inv:
            payload = einv.generate_einvoice_json(
                invoice_no=inv["invoice_no"],
                gstin=inv["gstin"],
                customer_name=inv.get("customer_name", ""),
                customer_gstin="",
                place_of_supply=inv.get("place_of_supply", ""),
                items=[],
                total_amount=inv["total_amt"],
                invoice_date=str(inv.get("date", ""))[:10] if inv.get("date") else None,
            )
            QMessageBox.information(self, "JSON Payload",
                json.dumps(payload, indent=2, default=str)[:3000])
    
    def _cancel_selected(self):
        """Cancel selected invoice."""
        row = self.tbl.currentRow()
        if row < 0:
            return
        invoice_no = self.tbl.item(row, 0).text()
        reply = QMessageBox.question(
            self, "Cancel Invoice",
            f"Invoice '{invoice_no}' cancel karein?",
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
            QMessageBox.StandardButton.No
        )
        if reply == QMessageBox.StandardButton.Yes:
            try:
                einv.cancel_invoice(invoice_no)
                self.reload()
                QMessageBox.information(self, "Cancelled", "Invoice cancelled")
            except Exception as e:
                QMessageBox.critical(self, "Error", str(e))


# ============================================================
# Master Config for BaseMasterForm integration
# ============================================================

def einvoice_config() -> MasterConfig:
    """MasterConfig for e-invoice CRUD (if needed)."""
    return MasterConfig(
        title="e-Invoice Master - HMS_py",
        columns=[("Invoice No","invoice_no"),("GSTIN","gstin"),
                 ("Total","total_amt"),("Status","status"),("IRN","irn")],
        fields=[
            Field("invoice_no","Invoice No", max_len=20, required=True),
            Field("gstin","GSTIN", max_len=15, required=True),
            Field("customer_name","Customer Name", max_len=100),
            Field("place_of_supply","Place of Supply", max_len=50),
            Field("total_amt","Total Amount", default="0"),
            Field("status","Status", default="Pending"),
            Field("irn","IRN", max_len=64),
        ],
        api=einv,
        pk_key="invoice_no",
        delete_guard=make_delete_guard("PYT"),
    )


def open_einvoice_generator(parent=None):
    """Open e-invoice generator form."""
    EInvoiceGeneratorForm(parent).exec()


def open_einvoice_browser(parent=None):
    """Open e-invoice browser."""
    EInvoiceBrowser(parent).exec()


def main() -> int:
    app = QApplication(sys.argv)
    w = EInvoiceGeneratorForm()
    w.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())
