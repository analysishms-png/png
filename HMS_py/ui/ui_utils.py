"""Common UI Utilities - VB6 parity helpers for PyQt6 forms.

Provides reusable patterns for:
- DataCombo replacement (QCompleter + live ACGROUP search)
- Numeric validation (VB6 TXTADJ_AMT_Validate parity)
- Tab order management (VB6 TabIndex parity)
- Form resize handling (VB6 Form_Resize parity)
- Error handling (VB6 On Error Goto parity)
"""

from __future__ import annotations

from PyQt6.QtCore import Qt, QStringListModel
from PyQt6.QtWidgets import (
    QCompleter,
    QLineEdit,
    QMessageBox,
    QTableWidget,
    QTableWidgetItem,
)
from PyQt6.QtGui import QDoubleValidator


# ============================================================
# DataCombo Replacement (VB6 DataCombo -> QCompleter)
# ============================================================


def setup_acgroup_completer(line_edit: QLineEdit, parent=None) -> QCompleter:
    """Setup QCompleter for ACGROUP search (VB6 DataCombo TXT_ACCOUNT parity).

    VB6: DataCombo bound to ACGROUP via Proc_183_43_EF7D54
    - BoundText shows GroupName
    - BoundIndex stores GroupCode
    - Dropdown with search/filter

    Python: QCompleter on live acgroup_list() with MatchContains filter.
    """
    from HMS_py.core import fa_masters_ops as fmo

    try:
        accounts = fmo.acgroup_list()
    except Exception:
        accounts = []

    # Build name->code map for tooltip lookup
    acgroup_map = {}
    for a in accounts:
        name = (a.get("name") or "").strip()
        code = (a.get("code") or "").strip()
        if name:
            acgroup_map[name] = code
        if code:
            acgroup_map[code] = code

    names = sorted({(a.get("name") or "").strip() for a in accounts if a.get("name")})

    model = QStringListModel()
    model.setStringList(names)

    completer = QCompleter(model, parent or line_edit)
    completer.setCaseSensitivity(Qt.CaseSensitivity.CaseInsensitive)
    completer.setFilterMode(Qt.MatchFlag.MatchContains)
    line_edit.setCompleter(completer)

    # Store map for tooltip lookup
    line_edit.setProperty("acgroup_map", acgroup_map)

    def on_text_changed(text: str):
        text = text.strip()
        acgroup_map = line_edit.property("acgroup_map") or {}
        if text in acgroup_map:
            line_edit.setToolTip(f"SubCode: {acgroup_map[text]}")
        else:
            # Partial match search
            for name, code in acgroup_map.items():
                if text.lower() in name.lower():
                    line_edit.setToolTip(f"SubCode: {code}")
                    return
            line_edit.setToolTip("")

    line_edit.textChanged.connect(on_text_changed)

    return completer


def setup_subcode_field(
    line_edit: QLineEdit, placeholder: str = "SubCode/Group Name", parent=None
) -> QCompleter:
    """Setup a SubCode field with ACGROUP completer.

    Usage:
        self.txt_subcode = QLineEdit()
        setup_subcode_field(self.txt_subcode, "SubCode/Group Name", self)
    """
    line_edit.setPlaceholderText(placeholder)
    return setup_acgroup_completer(line_edit, parent)


# ============================================================
# Numeric Validation (VB6 TXTADJ_AMT_Validate parity)
# ============================================================


def validate_amount(
    line_edit: QLineEdit,
    min_value: float = 0.01,
    max_value: float = 9999999999.99,
    parent=None,
) -> tuple[bool, float]:
    """Validate amount field like VB6 TXTADJ_AMT_Validate.

    VB6 checks:
    - Numeric only (KeyPress filter)
    - Non-empty
    - Against pending amount (global_60 equivalent)

    Returns: (is_valid, amount)
    """
    amt_text = line_edit.text().strip()

    if not amt_text:
        if parent:
            QMessageBox.warning(parent, "Input", "Amount zaroori hai")
        line_edit.setFocus()
        return False, 0.0

    try:
        amt = float(amt_text)
    except ValueError:
        if parent:
            QMessageBox.warning(parent, "Input", "Sirf numeric values allowed")
        line_edit.setFocus()
        return False, 0.0

    if amt < min_value:
        if parent:
            QMessageBox.warning(
                parent, "Input", f"Amount {min_value:.2f} se bada hona chahiye"
            )
        line_edit.setFocus()
        return False, 0.0

    if amt > max_value:
        if parent:
            QMessageBox.warning(
                parent, "Input", f"Amount {max_value:,.2f} se kam hona chahiye"
            )
        line_edit.setFocus()
        return False, 0.0

    return True, amt


def setup_amount_field(
    line_edit: QLineEdit,
    decimals: int = 2,
    min_value: float = 0.0,
    max_value: float = 9999999999.99,
):
    """Setup QLineEdit with QDoubleValidator for amount fields."""
    validator = QDoubleValidator(min_value, max_value, decimals, line_edit)
    validator.setNotation(QDoubleValidator.Notation.StandardNotation)
    line_edit.setValidator(validator)


def check_pending_amount(docid: str, sno: int, amount: float, parent=None) -> bool:
    """Check amount against pending adjustment (VB6 global_60 check).

    VB6: CDbl(Val(CStr(Me.FgridAdjust.TextMatrix))) < CDbl(Val(var_158))
    Shows: "Amount is Greater Then Pending Adj.Amt. You Can Adjust Only X"
    """
    from HMS_py.core import fa_ledger_ops as falo

    try:
        pending_amt = falo.adj_pending(docid, sno)
    except Exception:
        pending_amt = 0.0

    if amount > pending_amt:
        if parent:
            msg = (
                f" Amount is Greater Then Pendng Adj.Amt. "
                f"You Can Adjust Only {pending_amt:.2f} Here"
            )
            QMessageBox.warning(parent, "Adjustment", msg)
        return False

    return True


# ============================================================
# Tab Order Management (VB6 TabIndex parity)
# ============================================================


def set_tab_order(widget, *widgets):
    """Set tab order for a sequence of widgets.

    Usage:
        set_tab_order(self, self.txt_date, self.txt_account,
                      self.txt_group, self.btn_save, self.btn_exit)
    """
    all_widgets = (widget,) + widgets
    for i in range(len(all_widgets) - 1):
        widget.setTabOrder(all_widgets[i], all_widgets[i + 1])


def set_form_tab_order(form, field_order: list):
    """Set tab order based on field name list.

    Usage:
        set_form_tab_order(self, ['txt_date', 'txt_account',
                                  'txt_group', 'btn_save', 'btn_exit'])
    """
    widgets = [getattr(form, name) for name in field_order if hasattr(form, name)]
    for i in range(len(widgets) - 1):
        form.setTabOrder(widgets[i], widgets[i + 1])


# ============================================================
# Form Resize Handling (VB6 Form_Resize parity)
# ============================================================


def add_resize_handler(widget, handler):
    """Add resize event handler to widget (VB6 Form_Resize parity).

    Usage:
        def _on_resize(self, event):
            # Recalculate layout proportions
            super().resizeEvent(event)

        add_resize_handler(self, _on_resize)
    """
    original_resize = widget.resizeEvent

    def new_resize_event(event):
        handler(widget, event)
        if original_resize:
            original_resize(event)

    widget.resizeEvent = new_resize_event


# ============================================================
# Error Handling (VB6 On Error Goto parity)
# ============================================================


class VB6ErrorHandler:
    """Port of VB6 error handling pattern to Python.

    VB6 Pattern:
    - On Error Goto label
    - Error restoration with RollbackTrans
    - Global error handler: Proc_183_57_104AA84
    """

    def __init__(self, parent=None):
        self.parent = parent
        self.error_count = 0
        self.last_error = None

    def handle(self, error_obj, context="", rollback=False, cn=None):
        """Handle error like VB6 On Error Goto."""
        import traceback

        self.error_count += 1
        self.last_error = error_obj

        # Format error message like VB6
        err_msg = f"Error {self.error_count}: {context}"
        if hasattr(error_obj, "__str__"):
            err_msg += f" - {str(error_obj)}"

        # Show message like VB6 MsgBox
        if self.parent:
            QMessageBox.critical(self.parent, "Error", err_msg)
        else:
            QMessageBox.critical(None, "Error", err_msg)

        # Log traceback like VB6 error handler
        log = traceback.format_exc()
        self._log_error(log)

        # Rollback if needed (equivalent of RollbackTrans)
        if rollback and cn:
            try:
                cn.rollback()
            except Exception:
                pass

        return False

    def _log_error(self, log_text):
        """Log error like VB6 Proc_183_57_104AA84."""
        import traceback
        from datetime import datetime

        with open("error_log.txt", "a", encoding="utf-8") as f:
            f.write(f"[{datetime.now()}] {log_text}\n")

        print(f"ERROR LOG: {log_text}")


def handle_error(error_obj, context="", parent=None, rollback=False, cn=None):
    """Quick error handling function."""
    eh = VB6ErrorHandler(parent)
    return eh.handle(error_obj, context, rollback, cn)


# ============================================================
# Table Helpers (VB6 MSFlexGrid parity)
# ============================================================


def fill_table(
    table: QTableWidget,
    headers: list,
    rows: list,
    editable_cols: list = None,
    color_map: dict = None,
):
    """Fill QTableWidget with data (VB6 MSFlexGrid fill parity).

    Args:
        table: QTableWidget to fill
        headers: List of column headers
        rows: List of row data (list of lists or list of dicts)
        editable_cols: List of column indices that should be editable
        color_map: Dict mapping column index to color for foreground
    """
    from PyQt6.QtGui import QColor

    table.setColumnCount(len(headers))
    table.setHorizontalHeaderLabels(headers)
    table.setRowCount(len(rows))

    editable_set = set(editable_cols or [])

    for r, row in enumerate(rows):
        if isinstance(row, dict):
            values = [row.get(h, "") for h in headers]
        else:
            values = list(row) + [""] * (len(headers) - len(row))

        for c, v in enumerate(values):
            it = QTableWidgetItem(str(v))
            if c not in editable_set:
                it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
            if color_map and c in color_map:
                it.setForeground(QColor(color_map[c]))
            table.setItem(r, c, it)


def get_table_row_data(table: QTableWidget, row: int, cols: list) -> dict:
    """Get row data from QTableWidget as dict (VB6 TextMatrix parity)."""
    data = {}
    for c, col_name in enumerate(cols):
        item = table.item(row, c)
        data[col_name] = item.text() if item else ""
    return data


# ============================================================
# Message Box Helpers (VB6 MsgBox parity)
# ============================================================


def msgbox_info(parent, title: str, message: str):
    """VB6 MsgBox vbInformation parity."""
    QMessageBox.information(parent, title, message)


def msgbox_warning(parent, title: str, message: str):
    """VB6 MsgBox vbExclamation parity."""
    QMessageBox.warning(parent, title, message)


def msgbox_error(parent, title: str, message: str):
    """VB6 MsgBox vbCritical parity."""
    QMessageBox.critical(parent, title, message)


def msgbox_question(parent, title: str, message: str) -> bool:
    """VB6 MsgBox vbYesNo parity. Returns True for Yes."""
    return (
        QMessageBox.question(
            parent,
            title,
            message,
            QMessageBox.StandardButton.Yes | QMessageBox.StandardButton.No,
            QMessageBox.StandardButton.No,
        )
        == QMessageBox.StandardButton.Yes
    )


# ============================================================
# Form Base Class with VB6 Parity
# ============================================================


class VB6FormMixin:
    """Mixin class providing VB6 parity methods for PyQt6 forms.

    Usage:
        class MyForm(QMainWindow, VB6FormMixin):
            def __init__(self, parent=None):
                super().__init__(parent)
                self.setup_vb6_parity()

            def setup_vb6_parity(self):
                self.setup_tab_order(['txt_date', 'txt_account', 'btn_save'])
                self.setup_resize_handler()
    """

    def setup_tab_order(self, field_names: list):
        """Set tab order from field name list."""
        set_form_tab_order(self, field_names)

    def setup_resize_handler(self):
        """Add VB6 Form_Resize handler."""
        add_resize_handler(self, self._on_vb6_resize)

    def _on_vb6_resize(self, event):
        """Override in subclass for VB6 Form_Resize logic."""
        pass

    def setup_acgroup_field(
        self, field_name: str, placeholder: str = "SubCode/Group Name"
    ):
        """Setup ACGROUP completer for a field."""
        line_edit = getattr(self, field_name, None)
        if line_edit:
            setup_subcode_field(line_edit, placeholder, self)

    def setup_amount_field(self, field_name: str, decimals: int = 2):
        """Setup amount field with validator."""
        line_edit = getattr(self, field_name, None)
        if line_edit:
            setup_amount_field(line_edit, decimals)

    def validate_amount_field(
        self, field_name: str, min_value: float = 0.01
    ) -> tuple[bool, float]:
        """Validate amount field."""
        line_edit = getattr(self, field_name, None)
        if line_edit:
            return validate_amount(line_edit, min_value, parent=self)
        return False, 0.0


# ============================================================
# Convenience Functions for Common Patterns
# ============================================================


def create_labeled_field(
    label_text: str, placeholder: str = "", field_type: str = "lineedit", parent=None
):
    """Create a labeled field (label + input) for form layouts.

    Returns: (label, field_widget)
    """
    from PyQt6.QtWidgets import QLabel, QLineEdit, QComboBox, QDateEdit
    from PyQt6.QtCore import QDate

    label = QLabel(label_text)
    label.setStyleSheet("color: #000080; font-weight: bold; background: transparent;")

    if field_type == "lineedit":
        field = QLineEdit()
        field.setPlaceholderText(placeholder)
    elif field_type == "combo":
        field = QComboBox()
    elif field_type == "date":
        field = QDateEdit()
        field.setCalendarPopup(True)
        field.setDisplayFormat("dd/MM/yyyy")
        field.setDate(QDate.currentDate())
    else:
        field = QLineEdit()
        field.setPlaceholderText(placeholder)

    if parent:
        field.setParent(parent)

    return label, field


def add_form_row(form_layout, label_text: str, field, placeholder: str = ""):
    """Add a row to QFormLayout with label and field."""
    label, field_widget = create_labeled_field(label_text, placeholder)
    if hasattr(field, "setPlaceholderText"):
        field.setPlaceholderText(placeholder)
    form_layout.addRow(label, field)
    return field_widget


if __name__ == "__main__":
    # Self-test
    print("UI Utils module loaded successfully")
    print("Available functions:")
    print("  - setup_acgroup_completer / setup_subcode_field")
    print("  - validate_amount / setup_amount_field / check_pending_amount")
    print("  - set_tab_order / set_form_tab_order")
    print("  - add_resize_handler")
    print("  - VB6ErrorHandler / handle_error")
    print("  - fill_table / get_table_row_data")
    print("  - msgbox_info / msgbox_warning / msgbox_error / msgbox_question")
    print("  - VB6FormMixin")
    print("  - create_labeled_field / add_form_row")
