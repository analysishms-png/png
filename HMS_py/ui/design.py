"""HMS_py Design System — Reusable UI constants, tokens, and helper functions.

Usage:
    from HMS_py.ui.design import DS, make_card, make_section, status_badge

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
# Typography scale (px) — all use Segoe UI
# ---------------------------------------------------------------------------
class Font:
    FAMILY = "Segoe UI"
    # Sizes
    XS = 10
    SM = 11
    MD = 13
    LG = 14
    XL = 16
    XXL = 18
    TITLE = 22
    # Weights
    REGULAR = 500
    BOLD = 700


# ---------------------------------------------------------------------------
# Widget sizing
# ---------------------------------------------------------------------------
class Size:
    # Minimum Heights
    INPUT_H = 36
    INPUT_H_LG = 40
    BUTTON_H = 34
    BUTTON_H_LG = 40
    BUTTON_H_SM = 28
    SIDEBAR_BTN_H = 40
    HEADER_H = 52
    ROW_H = 32

    # Widths
    SIDEBAR_W = 220
    BUTTON_MIN_W = 80
    DIALOG_MIN_W = 400

    # Corner radius (overridden by theme at runtime)
    RADIUS = 8
    RADIUS_SM = 6
    RADIUS_LG = 10


# ---------------------------------------------------------------------------
# Layout presets
# ---------------------------------------------------------------------------
class Layout:
    # Margins: (left, top, right, bottom)
    CONTENT = (Spacing.XL, Spacing.LG, Spacing.XL, Spacing.LG)
    BUTTON_BAR = (Spacing.XL, Spacing.SM, Spacing.XL, Spacing.MD)
    CARD = (Spacing.XXL, Spacing.XL, Spacing.XXL, Spacing.XL)
    DIALOG = (Spacing.XL, Spacing.XL, Spacing.XL, Spacing.XL)
    SECTION = (Spacing.MD, Spacing.SM, Spacing.MD, Spacing.SM)

    # Spacings
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
# Reusable QSS fragments — these are injected into the global QSS by theme.py
# ---------------------------------------------------------------------------
QSS_BUTTON_PRIMARY = (
    "QPushButton[accent='true'] {{"
    "  background: {accent}; color: #ffffff; font-weight: 700;"
    "  border: none; padding: 8px 20px; border-radius: {R}px;"
    "  min-height: {btn_h}px;"
    "}}"
    "QPushButton[accent='true']:hover {{ background: {accent_hover}; }}"
    "QPushButton[accent='true']:pressed {{ background: {accent_pressed}; }}"
)

QSS_BUTTON_DANGER = (
    "QPushButton[role='danger'] {{"
    "  background: {danger}; color: #ffffff; font-weight: 600;"
    "  border: none; padding: 6px 16px; border-radius: {R}px;"
    "  min-height: {btn_h}px;"
    "}}"
    "QPushButton[role='danger']:hover {{ background: {danger_hover}; }}"
)

QSS_BUTTON_WARNING = (
    "QPushButton[role='warning'] {{"
    "  background: {warning}; color: #ffffff; font-weight: 600;"
    "  border: none; padding: 6px 16px; border-radius: {R}px;"
    "  min-height: {btn_h}px;"
    "}}"
    "QPushButton[role='warning']:hover {{ background: {warning_hover}; }}"
)

QSS_BUTTON_SUCCESS = (
    "QPushButton[role='success'] {{"
    "  background: {success}; color: #ffffff; font-weight: 600;"
    "  border: none; padding: 6px 16px; border-radius: {R}px;"
    "  min-height: {btn_h}px;"
    "}}"
    "QPushButton[role='success']:hover {{ background: {success_hover}; }}"
)

QSS_TABLE = (
    "QTableWidget {{"
    "  border: 1px solid {border}; border-radius: {R}px;"
    "  gridline-color: {border};"
    "  selection-background-color: {accent_soft};"
    "  selection-color: {text};"
    "  font-size: {tbl_font}px;"
    "}}"
    "QTableWidget::item {{ padding: 4px 6px; }}"
    "QTableWidget::item:selected {{ background: {accent_soft}; }}"
    "QTableWidget::item:hover {{ background: {surface_hover}; }}"
)

QSS_INPUT = (
    "QLineEdit, QTextEdit, QSpinBox, QDoubleSpinBox {{"
    "  border: 1px solid {border}; border-radius: {R}px;"
    "  padding: 6px 10px; font-size: {input_font}px;"
    "  min-height: {input_h}px;"
    "}}"
    "QLineEdit:focus, QTextEdit:focus {{ border: 2px solid {accent}; }}"
)

QSS_COMBO = (
    "QComboBox {{"
    "  border: 1px solid {border}; border-radius: {R}px;"
    "  padding: 6px 10px; font-size: {input_font}px;"
    "  min-height: {input_h}px; min-width: 120px;"
    "}}"
    "QComboBox:focus {{ border: 2px solid {accent}; }}"
    "QComboBox::drop-down {{ border: none; width: 24px; }}"
)


# ---------------------------------------------------------------------------
# Helper functions for building common UI patterns
# ---------------------------------------------------------------------------
def make_card(parent=None, title: str = "", content_layout=None):
    """Create a glass-card frame with optional title and content layout.

    Returns (frame, content_widget, content_layout).
    """
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
        outer.addLayout(content_layout)

    return frame


def make_section(title: str, layout, parent=None):
    """Create a labeled section group inside a form."""
    from PyQt6.QtWidgets import QGroupBox, QVBoxLayout
    grp = QGroupBox(title, parent)
    grp.setStyleSheet(
        "QGroupBox { font-weight: 700; font-size: 13px; margin-top: 12px; "
        "padding: 12px 8px 8px 8px; }"
        "QGroupBox::title { subcontrol-origin: margin; left: 12px; padding: 0 6px; }"
    )
    inner = QVBoxLayout(grp)
    inner.setContentsMargins(*Layout.SECTION)
    inner.setSpacing(Spacing.SM)
    if layout is not None:
        if hasattr(layout, "addLayout"):
            # It's a layout — add it
            inner.addLayout(layout)
        else:
            # It's a widget
            inner.addWidget(layout)
    return grp


def status_badge(text: str, status: str = "info") -> str:
    """Return HTML for a colored status badge inside a QLabel."""
    colors = {
        "success": ("#059669", "#ecfdf5"),
        "warning": ("#d97706", "#fffbeb"),
        "danger": ("#dc2626", "#fef2f2"),
        "info": ("#0284c7", "#f0f9ff"),
        "neutral": ("#64748b", "#f8fafc"),
    }
    fg, bg = colors.get(status, colors["info"])
    return (
        f'<span style="color:{fg}; background:{bg}; padding:2px 8px; '
        f'border-radius:4px; font-size:11px; font-weight:600;">{text}</span>'
    )


def styled_button(text: str, role: str = "default", icon=None):
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
    btn.setCursor(btn.cursor())
    return btn


def make_toolbar(buttons: list):
    """Create a standardized button toolbar.

    buttons: [(text, role, callback), ...]
    Returns QWidget with QHBoxLayout.
    """
    from PyQt6.QtWidgets import QWidget, QHBoxLayout

    bar = QWidget()
    lay = QHBoxLayout(bar)
    lay.setContentsMargins(*Layout.BUTTON_BAR)
    lay.setSpacing(Size.BUTTON_SPACING if hasattr(Size, 'BUTTON_SPACING') else Spacing.SM)
    lay.addStretch()

    for item in buttons:
        text, role, cb = item[0], item[1] if len(item) > 1 else "default", item[2] if len(item) > 2 else None
        btn = styled_button(text, role)
        if cb:
            btn.clicked.connect(cb)
        lay.addWidget(btn)

    return bar


def make_form_row(label_text: str, widget, required: bool = False):
    """Create a labeled form row with consistent styling.

    Returns (QLabel, widget) for use in QFormLayout.
    """
    from PyQt6.QtWidgets import QLabel

    text = label_text
    if required:
        text += ' <span style="color:#dc2626;">*</span>'

    lbl = QLabel(text)
    lbl.setStyleSheet("font-size: 12px; font-weight: 500;")
    return lbl, widget


def add_empty_state(table, message: str = "No records found"):
    """Show an empty-state message in a QTableWidget."""
    from PyQt6.QtWidgets import QTableWidgetItem
    from PyQt6.QtCore import Qt

    table.setRowCount(1)
    table.setColumnCount(1)
    item = QTableWidgetItem(message)
    item.setTextAlignment(Qt.AlignmentFlag.AlignCenter)
    item.setFlags(Qt.ItemFlag.ItemIsEnabled)
    table.setItem(0, 0, item)


def make_search_bar(placeholder: str = "Search...", on_search=None):
    """Create a search input bar with consistent styling."""
    from PyQt6.QtWidgets import QLineEdit
    from PyQt6.QtCore import Qt

    search = QLineEdit()
    search.setPlaceholderText(placeholder)
    search.setMinimumHeight(Size.INPUT_H)
    search.setStyleSheet(
        "QLineEdit {{ padding-left: 28px; border: 1px solid {border}; "
        "border-radius: {R}px; font-size: {font}px; }}"
    )
    # TODO: add search icon via QAction when icon resources available
    if on_search:
        search.textChanged.connect(on_search)
    return search


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
