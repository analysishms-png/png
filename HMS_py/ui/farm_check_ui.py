"""Farm Check UI - HMS Module
Activity check-in interface for farm operations or guest facilities.
VB6-style form pattern with database connectivity.
"""

from __future__ import annotations

from PyQt6.QtWidgets import (QWidget, QVBoxLayout, QHBoxLayout, QFormLayout,
                              QLabel, QLineEdit, QComboBox, QTextEdit,
                              QPushButton, QGroupBox, QMessageBox, QDateEdit,
                              QDoubleSpinBox, QSpinBox, QDialog, QApplication)
from PyQt6.QtCore import Qt, QDate, pyqtSignal
from PyQt6.QtGui import QFont

from HMS_py.core import db
from HMS_py.core import members_masters, facility_billing


class FarmCheckUI(QWidget):
    """Farm/Activity Check-in UI for HMS system."""
    
    entry_submitted = pyqtSignal(dict)  # Emitted when entry is submitted
    
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Farm Activity Check - HMS")
        self.resize(500, 400)
        
        self._setup_ui()
        self._load_data()
    
    def _setup_ui(self):
        """Set up the user interface."""
        main_layout = QVBoxLayout(self)
        main_layout.setSpacing(15)
        main_layout.setContentsMargins(20, 20, 20, 20)
        
        # Form group
        form_group = QGroupBox("Activity Details")
        form_layout = QFormLayout()
        form_layout.setSpacing(10)
        
        # Guest/Member Name
        self.guest_name_edit = QLineEdit()
        self.guest_name_edit.setPlaceholderText("Guest name or membership number")
        form_layout.addRow(QLabel("Guest Name*:"), self.guest_name_edit)
        
        # Farm Activity
        self.activity_combo = QComboBox()
        self.activity_combo.addItems([
            "Facility Usage",
            "Equipment Rental",
            "Workshop Participation",
            "Special Event",
            "Other"
        ])
        form_layout.addRow(QLabel("Activity Type*:"), self.activity_combo)
        
        # Date
        self.date_edit = QDateEdit(QDate.currentDate())
        self.date_edit.setCalendarPopup(True)
        self.date_edit.setDisplayFormat("yyyy-MM-dd")
        form_layout.addRow(QLabel("Date*:"), self.date_edit)
        
        # Duration (hours)
        self.hours_spin = QSpinBox()
        self.hours_spin.setRange(0, 999)
        self.hours_spin.setSuffix(" hours")
        form_layout.addRow(QLabel("Duration (hours):"), self.hours_spin)
        
        # Amount
        self.amount_spin = QDoubleSpinBox()
        self.amount_spin.setRange(0, 999999.99)
        self.amount_spin.setPrefix("₹ ")
        form_layout.addRow(QLabel("Amount*:"), self.amount_spin)
        
        # Membership Category
        self.category_combo = QComboBox()
        self.category_combo.addItems(["General", "Premium", "Member", "Staff"])
        form_layout.addRow(QLabel("Category:"), self.category_combo)
        
        form_group.setLayout(form_layout)
        main_layout.addWidget(form_group)
        
        # Buttons
        button_layout = QHBoxLayout()
        button_layout.addStretch()
        
        self.submit_btn = QPushButton("Submit Entry")
        self.submit_btn.setDefault(True)
        self.submit_btn.clicked.connect(self._submit_entry)
        button_layout.addWidget(self.submit_btn)
        
        self.cancel_btn = QPushButton("Cancel")
        self.cancel_btn.clicked.connect(self.close)
        button_layout.addWidget(self.cancel_btn)
        
        main_layout.addLayout(button_layout)
    
    def _load_data(self):
        """Pre-load lookup data from database."""
        try:
            # Load membership categories from database
            # categories = db.query(...)
            pass
        except Exception as e:
            print(f"Data load error: {e}")
    
    def _submit_entry(self):
        """Validate and submit the farm check entry."""
        guest_name = self.guest_name_edit.text().strip()
        activity = self.activity_combo.currentText()
        date_str = self.date_edit.date().toString("yyyy-MM-dd")
        duration = self.hours_spin.value()
        amount = self.amount_spin.value()
        category = self.category_combo.currentText()
        
        # Validation
        if not guest_name:
            QMessageBox.warning(self, "Validation Error", 
                              "Please enter guest name or membership number")
            self.guest_name_edit.setFocus()
            return
        
        if not activity:
            QMessageBox.warning(self, "Validation Error", "Please select activity type")
            self.activity_combo.setFocus()
            return
        
        # Create entry data
        entry_data = {
            "guest_name": guest_name,
            "activity_type": activity,
            "date": date_str,
            "duration_hours": duration,
            "amount": float(amount),
            "category": category,
            "user": "PYADMIN"  # Current user
        }
        
        # Submit to database
        try:
            # Example: Insert into facility_billing or custom table
            # This is a template - adapt to your specific database schema
            # db.execute("INSERT INTO farm_activities ...", ...)
            
            self.entry_submitted.emit(entry_data)
            QMessageBox.information(self, "Success", 
                                  f"Farm activity recorded successfully:\n\n"
                                  f"Guest: {guest_name}\n"
                                  f"Activity: {activity}\n"
                                  f"Date: {date_str}\n"
                                  f"Duration: {duration} hours\n"
                                  f"Amount: ₹{amount:.2f}")
            self.close()
        except Exception as e:
            QMessageBox.critical(self, "Database Error", 
                               f"Failed to save entry:\n{str(e)[:200]}")
    
    def get_entry_data(self) -> dict:
        """Return the current form data as a dictionary."""
        return {
            "guest_name": self.guest_name_edit.text().strip(),
            "activity_type": self.activity_combo.currentText(),
            "date": self.date_edit.date().toString("yyyy-MM-dd"),
            "duration_hours": self.hours_spin.value(),
            "amount": self.amount_spin.value(),
            "category": self.category_combo.currentText()
        }


def show_farm_check_ui() -> FarmCheckUI | None:
    """Show the Farm Check UI modally."""
    from PyQt6.QtWidgets import QApplication
    app = QApplication.instance()
    if app is None:
        app = QApplication([])
    
    ui = FarmCheckUI()
    result = ui.exec()  # Show modal
    
    if result == QDialog.Accepted:
        return ui
    return None


if __name__ == "__main__":
    import sys
    app = QApplication(sys.argv)
    ui = FarmCheckUI()
    ui.show()
    sys.exit(app.exec())