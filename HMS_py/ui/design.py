"""HMS_py Design System - Reusable UI constants, tokens, and helper functions.

Usage:
    from ui.design import DS, make_card, make_section, styled_button
    from ui.theme import palette, status_colors

All colors reference theme tokens at runtime via theme.palette() / status_colors().
These constants provide consistent spacing, typography, and sizing across all forms.
"""
from __future__ import annotations


# ---------------------------------------------------------------------------
# Spacing scale (px)
# ---------------------------------------------------------------------------
class Spacing:
    XXXS = 2
    XXS = 4
    XS = 6
    SM = 8
    MD = 12
    LG = 16
    XL = 20
    XXL = 24
    XXXL = 32


# ---------------------------------------------------------------------------
# Typography scale (px) - all use Segoe UI
# ---------------------------------------------------------------------------
class Font:
    FAMILY = "Segoe UI"
    XS = 10
    SM = 11
    MD = 13
    LG = 14
    XL = 16
    XXL = 18
    TITLE = 22
    REGULAR = 500
    BOLD = 700


# ---------------------------------------------------------------------------
# Widget sizing
# ---------------------------------------------------------------------------
class Size:
    INPUT_H = 36
    INPUT_H_LG = 40
    BUTTON_H = 34
    BUTTON_H_LG = 40
    BUTTON_H_SM = 28
    SIDEBAR_BTN_H = 38
    HEADER_H = 52
    ROW_H = 32
    SIDEBAR_W = 220
    BUTTON_MIN_W = 80
    DIALOG_MIN_W = 400
    RADIUS = 8
    RADIUS_SM = 6
    RADIUS_LG = 10


# ---------------------------------------------------------------------------
# Layout presets (left, top, right, bottom)
# ---------------------------------------------------------------------------
class Layout:
    CONTENT = (Spacing.XL, Spacing.LG, Spacing.XL, Spacing.LG)
    BUTTON_BAR = (Spacing.XL, Spacing.SM, Spacing.XL, Spacing.MD)
    CARD = (Spacing.XXL, Spacing.XL, Spacing.XXL, Spacing.XL)
    DIALOG = (Spacing.XL, Spacing.XL, Spacing.XL, Spacing.XL)
    SECTION = (Spacing.MD, Spacing.SM, Spacing.MD, Spacing.SM)
    FORM_SPACING = Spacing.MD
    BUTTON_SPACING = Spacing.SM
    GRID_H_SPACING = Spacing.MD
    GRID_V_SPACING = Spacing.SM


# ---------------------------------------------------------------------------
# Window defaults
# ---------------------------------------------------------------------------
class WindowSize:
    MAIN = (1150, 720)
    LOGIN = (440, 480)
    COMPANY = (580, 420)
    MASTER = (720, 520)
    TRANSACTION = (860, 560)
    REPORT = (900, 580)
    ROOM_STATUS = (1150, 680)
    CHECKOUT = (1100, 650)
    POS = (900, 600)


# ---------------------------------------------------------------------------
# Helper functions for building common UI patterns
# ---------------------------------------------------------------------------
def make_card(parent=None, title: str = "", content_layout=None):
    """Create a glass-card frame with optional title and content layout."""
    from PyQt6.QtWidgets import QFrame, QVBoxLayout, QLabel
    from PyQt6.QtCore import Qt

    frame = QFrame(parent)
    frame.setProperty("glassCard", True)
    frame.setFrameShape(QFrame.Shape.NoFrame)

    outer = QVBoxLayout(frame)
    outer.setContentsMargins(*Layout.CARD)
    outer.setSpacing(Spacing.MD)

    if title:
        lbl = QLabel(title)
        lbl.setProperty("glassTitle", True)
        lbl.setAlignment(Qt.AlignmentFlag.AlignLeft)
        outer.addWidget(lbl)

    if content_layout:
        if hasattr(content_layout, "addLayout"):
            outer.addLayout(content_layout)
        else:
            outer.addWidget(content_layout)

    return frame


def make_section(title: str, content, parent=None):
    """Create a labeled section group inside a form."""
    from PyQt6.QtWidgets import QGroupBox, QVBoxLayout
    from ui.theme import palette

    p = palette()
    grp = QGroupBox(title, parent)
    grp.setStyleSheet(
        f"QGroupBox {{ font-weight: 700; font-size: {Font.MD}px; margin-top: 12px; "
        f"padding: 12px 8px 8px 8px; color: {p['text']}; }}"
        f"QGroupBox::title {{ subcontrol-origin: margin; left: 12px; padding: 0 6px; }}"
    )
    inner = QVBoxLayout(grp)
    inner.setContentsMargins(*Layout.SECTION)
    inner.setSpacing(Spacing.SM)
    if content is not None:
        if hasattr(content, "addLayout"):
            inner.addLayout(content)
        else:
            inner.addWidget(content)
    return grp


def status_badge(text: str, status: str = "info") -> str:
    """Return HTML for a colored status badge inside a QLabel.
    Uses theme tokens for consistent appearance.
    """
    try:
        from ui.theme import status_colors, palette
        sc = status_colors()
        p = palette()
        color_map = {
            "success": (sc.get("success_text", "#059669"), sc.get("success_bg", "#ecfdf5")),
            "warning": (sc.get("warning_text", "#d97706"), sc.get("warning_bg", "#fffbeb")),
            "danger": (sc.get("danger_text", "#dc2626"), sc.get("danger_bg", "#fef2f2")),
            "info": (sc.get("info_text", "#0284c7"), sc.get("info_bg", "#f0f9ff")),
            "neutral": (p.get("text_dim", "#64748b"), p.get("surface", "#f8fafc")),
        }
    except ImportError:
        color_map = {
            "success": ("#059669", "#ecfdf5"),
            "warning": ("#d97706", "#fffbeb"),
            "danger": ("#dc2626", "#fef2f2"),
            "info": ("#0284c7", "#f0f9ff"),
            "neutral": ("#64748b", "#f8fafc"),
        }
    fg, bg = color_map.get(status, color_map["info"])
    return (
        f'<span style="color:{fg}; background:{bg}; padding:2px 8px; '
        f'border-radius:4px; font-size:{Font.SM}px; font-weight:600;">{text}</span>'
    )


def styled_button(text: str, role: str = "default", tooltip: str = ""):
    """Create a consistently styled QPushButton.

    role: 'primary', 'danger', 'warning', 'success', 'default'
    """
    from PyQt6.QtWidgets import QPushButton

    btn = QPushButton(text)
    if role == "primary":
        btn.setProperty("accent", True)
    elif role in ("danger", "warning", "success"):
        btn.setProperty("role", role)
    btn.setMinimumHeight(Size.BUTTON_H)
    if tooltip:
        btn.setToolTip(tooltip)
    return btn


def make_button_bar(buttons: list, add_stretch: bool = True):
    """Create a standardized button toolbar.

    buttons: [(text, role, callback, tooltip), ...]
    Returns QWidget with QHBoxLayout.
    """
    from PyQt6.QtWidgets import QWidget, QHBoxLayout

    bar = QWidget()
    lay = QHBoxLayout(bar)
    lay.setContentsMargins(*Layout.BUTTON_BAR)
    lay.setSpacing(Spacing.SM)
    if add_stretch:
        lay.addStretch()

    for item in buttons:
        text = item[0]
        role = item[1] if len(item) > 1 else "default"
        cb = item[2] if len(item) > 2 else None
        tip = item[3] if len(item) > 3 else ""
        btn = styled_button(text, role, tip)
        if cb:
            btn.clicked.connect(cb)
        lay.addWidget(btn)

    return bar


def make_form_row(label_text: str, widget, required: bool = False):
    """Create a labeled form row with consistent styling.

    Returns (QLabel, widget) for use in QFormLayout.
    """
    from PyQt6.QtWidgets import QLabel
    from ui.theme import palette

    p = palette()
    text = label_text
    if required:
        text += ' <span style="color:#dc2626;">*</span>'

    lbl = QLabel(text)
    lbl.setStyleSheet(f"font-size: {Font.SM}px; font-weight: 500; color: {p['text']};")
    return lbl, widget


def add_empty_state(table, message: str = "No records found"):
    """Show an empty-state message in a QTableWidget."""
    from PyQt6.QtWidgets import QTableWidgetItem
    from PyQt6.QtCore import Qt
    from ui.theme import palette

    p = palette()
    table.setRowCount(1)
    table.setColumnCount(1)
    item = QTableWidgetItem(message)
    item.setTextAlignment(Qt.AlignmentFlag.AlignCenter)
    item.setFlags(Qt.ItemFlag.ItemIsEnabled)
    item.setForeground(QColor(p["text_dim"]))
    table.setItem(0, 0, item)


def make_search_bar(placeholder: str = "Search...", on_search=None):
    """Create a search input bar with consistent styling."""
    from PyQt6.QtWidgets import QLineEdit
    from ui.theme import palette

    p = palette()
    search = QLineEdit()
    search.setPlaceholderText(placeholder)
    search.setMinimumHeight(Size.INPUT_H)
    search.setStyleSheet(
        f"QLineEdit {{ padding-left: 28px; border: 1px solid {p['border']}; "
        f"border-radius: {Size.RADIUS}px; font-size: {Font.MD}px; "
        f"color: {p['text']}; background: {p['glass_tint']}; }}"
        f"QLineEdit:focus {{ border: 2px solid {p['accent']}; }}"
    )
    if on_search:
        search.textChanged.connect(on_search)
    return search


def setup_table(table, columns: list, sortable: bool = True,
                alternating: bool = True, select_rows: bool = True,
                read_only: bool = True):
    """Configure a QTableWidget with consistent styling.

    Sets headers, selection behavior, edit triggers, alternating rows,
    and sorting. Call this instead of manual per-table configuration.
    """
    from PyQt6.QtWidgets import QHeaderView, QAbstractItemView
    from PyQt6.QtCore import Qt

    table.setColumnCount(len(columns))
    table.setHorizontalHeaderLabels(columns)

    if read_only:
        table.setEditTriggers(QAbstractItemView.EditTrigger.NoEditTriggers)

    if select_rows:
        table.setSelectionBehavior(QAbstractItemView.SelectionBehavior.SelectRows)

    table.setAlternatingRowColors(alternating)
    table.verticalHeader().setVisible(False)
    table.setShowGrid(True)
    table.setSortingEnabled(sortable)

    header = table.horizontalHeader()
    header.setStretchLastSection(True)
    for i in range(len(columns) - 1):
        header.setSectionResizeMode(i, QHeaderView.ResizeMode.ResizeToContents)


def set_cell_text(table, row: int, col: int, text: str, fg: str = ""):
    """Set a table cell with theme-consistent text color."""
    from PyQt6.QtWidgets import QTableWidgetItem
    from PyQt6.QtGui import QColor
    from ui.theme import palette

    p = palette()
    it = QTableWidgetItem(str(text))
    it.setForeground(QColor(fg or p["text"]))
    table.setItem(row, col, it)


# ---------------------------------------------------------------------------
# Convenience alias
# ---------------------------------------------------------------------------
DS = type("DS", (), {
    "Spacing": Spacing,
    "Font": Font,
    "Size": Size,
    "Layout": Layout,
    "WindowSize": WindowSize,
})()
