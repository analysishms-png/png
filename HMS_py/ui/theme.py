"""Professional Dark Theme for HMS PyQt6 Application.

Provides a modern dark theme with accent colors, consistent typography,
and theme toggle (dark/light). Inspired by VS Code + Material Design.

Usage:
    from HMS_py.ui.theme import apply_theme, toggle_theme, ThemeManager
    apply_theme(app)  # dark by default
    toggle_theme(app)  # toggle dark/light
"""
from __future__ import annotations
from PyQt6.QtWidgets import QApplication, QWidget
from PyQt6.QtGui import QPalette, QColor, QFont
from PyQt6.QtCore import Qt

# ============================================================
# Color Tokens (Material Design 3 inspired)
# ============================================================
# Dark theme
DARK_BG = "#1e1e2e"           # Main background
DARK_SURFACE = "#2a2a3c"      # Cards, panels
DARK_SURFACE_HOVER = "#33334a"
DARK_BORDER = "#3a3a52"
DARK_TEXT = "#e0e0e0"
DARK_TEXT_DIM = "#8888aa"
DARK_ACCENT = "#7c3aed"        # Purple accent
DARK_ACCENT_HOVER = "#6d28d9"
DARK_SUCCESS = "#10b981"       # Green
DARK_WARNING = "#f59e0b"       # Amber
DARK_DANGER = "#ef4444"        # Red
DARK_INFO = "#3b82f6"          # Blue

# Light theme
LIGHT_BG = "#f8f9fc"
LIGHT_SURFACE = "#ffffff"
LIGHT_SURFACE_HOVER = "#f0f0f5"
LIGHT_BORDER = "#e0e0e8"
LIGHT_TEXT = "#1a1a2e"
LIGHT_TEXT_DIM = "#666680"
LIGHT_ACCENT = "#7c3aed"
LIGHT_ACCENT_HOVER = "#6d28d9"
LIGHT_SUCCESS = "#059669"
LIGHT_WARNING = "#d97706"
LIGHT_DANGER = "#dc2626"
LIGHT_INFO = "#2563eb"

# ============================================================
# QSS Stylesheets
# ============================================================

DARK_QSS = f"""
/* ─── Global Reset ─────────────────────────────── */
* {{
    font-family: 'Segoe UI', 'Arial', sans-serif;
    font-size: 13px;
    color: {DARK_TEXT};
    border: none;
    outline: none;
}}

QMainWindow, QDialog {{
    background-color: {DARK_BG};
    color: {DARK_TEXT};
}}

QWidget {{
    background-color: transparent;
    color: {DARK_TEXT};
}}

/* ─── Menu Bar ─────────────────────────────────── */
QMenuBar {{
    background-color: {DARK_SURFACE};
    color: {DARK_TEXT};
    border-bottom: 1px solid {DARK_BORDER};
    padding: 2px;
    spacing: 4px;
}}

QMenuBar::item {{
    background: transparent;
    padding: 6px 12px;
    border-radius: 6px;
}}

QMenuBar::item:selected {{
    background-color: {DARK_SURFACE_HOVER};
}}

QMenu {{
    background-color: {DARK_SURFACE};
    border: 1px solid {DARK_BORDER};
    border-radius: 8px;
    padding: 6px;
}}

QMenu::item {{
    padding: 8px 24px;
    border-radius: 4px;
}}

QMenu::item:selected {{
    background-color: {DARK_ACCENT};
    color: white;
}}

/* ─── QPushButton ──────────────────────────────── */
QPushButton {{
    background-color: {DARK_SURFACE};
    color: {DARK_TEXT};
    border: 1px solid {DARK_BORDER};
    border-radius: 8px;
    padding: 8px 20px;
    font-weight: 500;
    min-height: 20px;
}}

QPushButton:hover {{
    background-color: {DARK_SURFACE_HOVER};
    border-color: {DARK_ACCENT};
}}

QPushButton:pressed {{
    background-color: {DARK_ACCENT_HOVER};
    color: white;
}}

QPushButton:disabled {{
    background-color: {DARK_BG};
    color: {DARK_TEXT_DIM};
    border-color: {DARK_BORDER};
}}

/* Accent button */
QPushButton[accent="true"] {{
    background-color: {DARK_ACCENT};
    color: white;
    border: none;
}}

QPushButton[accent="true"]:hover {{
    background-color: {DARK_ACCENT_HOVER};
}}

/* Success button */
QPushButton[success="true"] {{
    background-color: {DARK_SUCCESS};
    color: white;
    border: none;
}}

/* Danger button */
QPushButton[danger="true"] {{
    background-color: {DARK_DANGER};
    color: white;
    border: none;
}}

/* ─── QLineEdit, QTextEdit, QSpinBox ──────────── */
QLineEdit, QTextEdit, QPlainTextEdit, QSpinBox, QDoubleSpinBox, QDateEdit {{
    background-color: {DARK_SURFACE};
    color: {DARK_TEXT};
    border: 1px solid {DARK_BORDER};
    border-radius: 8px;
    padding: 8px 12px;
    selection-background-color: {DARK_ACCENT};
}}

QLineEdit:focus, QTextEdit:focus, QPlainTextEdit:focus,
QSpinBox:focus, QDoubleSpinBox:focus, QDateEdit:focus {{
    border-color: {DARK_ACCENT};
}}

QLineEdit:read-only {{
    background-color: {DARK_BG};
    color: {DARK_TEXT_DIM};
}}

/* ─── QComboBox ────────────────────────────────── */
QComboBox {{
    background-color: {DARK_SURFACE};
    color: {DARK_TEXT};
    border: 1px solid {DARK_BORDER};
    border-radius: 8px;
    padding: 8px 12px;
    min-width: 120px;
}}

QComboBox:hover {{
    border-color: {DARK_ACCENT};
}}

QComboBox::drop-down {{
    border: none;
    width: 30px;
}}

QComboBox::down-arrow {{
    image: none;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-top: 6px solid {DARK_TEXT};
    margin-right: 8px;
}}

QComboBox QAbstractItemView {{
    background-color: {DARK_SURFACE};
    color: {DARK_TEXT};
    border: 1px solid {DARK_BORDER};
    border-radius: 8px;
    selection-background-color: {DARK_ACCENT};
    selection-color: white;
    padding: 4px;
}}

/* ─── QTableWidget / QTableView ────────────────── */
QTableWidget, QTableView {{
    background-color: {DARK_SURFACE};
    color: {DARK_TEXT};
    border: 1px solid {DARK_BORDER};
    border-radius: 8px;
    gridline-color: {DARK_BORDER};
    selection-background-color: {DARK_ACCENT};
    selection-color: white;
    alternate-background-color: {DARK_BG};
    font-size: 12px;
}}

QTableWidget::item, QTableView::item {{
    padding: 6px 8px;
    border-bottom: 1px solid {DARK_BORDER};
}}

QTableWidget::item:selected, QTableView::item:selected {{
    background-color: {DARK_ACCENT};
    color: white;
}}

QHeaderView::section {{
    background-color: {DARK_BG};
    color: {DARK_TEXT};
    border: none;
    border-bottom: 2px solid {DARK_ACCENT};
    padding: 8px;
    font-weight: bold;
    font-size: 12px;
}}

QHeaderView::section:hover {{
    background-color: {DARK_SURFACE_HOVER};
}}

/* ─── QGroupBox ────────────────────────────────── */
QGroupBox {{
    background-color: {DARK_SURFACE};
    border: 1px solid {DARK_BORDER};
    border-radius: 10px;
    margin-top: 12px;
    padding: 16px 12px 12px 12px;
    font-weight: bold;
    font-size: 13px;
}}

QGroupBox::title {{
    subcontrol-origin: margin;
    subcontrol-position: top left;
    padding: 4px 12px;
    color: {DARK_ACCENT};
    font-weight: bold;
}}

/* ─── QTabWidget ───────────────────────────────── */
QTabWidget::pane {{
    background-color: {DARK_SURFACE};
    border: 1px solid {DARK_BORDER};
    border-radius: 8px;
    padding: 4px;
}}

QTabBar::tab {{
    background-color: {DARK_BG};
    color: {DARK_TEXT_DIM};
    border: 1px solid {DARK_BORDER};
    border-bottom: none;
    border-top-left-radius: 8px;
    border-top-right-radius: 8px;
    padding: 10px 20px;
    margin-right: 2px;
    font-weight: 500;
}}

QTabBar::tab:selected {{
    background-color: {DARK_SURFACE};
    color: {DARK_ACCENT};
    border-bottom: 2px solid {DARK_ACCENT};
}}

QTabBar::tab:hover {{
    background-color: {DARK_SURFACE_HOVER};
    color: {DARK_TEXT};
}}

/* ─── QScrollBar ───────────────────────────────── */
QScrollBar:vertical {{
    background-color: transparent;
    width: 10px;
    margin: 0;
}}

QScrollBar::handle:vertical {{
    background-color: {DARK_BORDER};
    border-radius: 5px;
    min-height: 30px;
}}

QScrollBar::handle:vertical:hover {{
    background-color: {DARK_TEXT_DIM};
}}

QScrollBar::add-line:vertical, QScrollBar::sub-line:vertical {{
    height: 0;
}}

QScrollBar:horizontal {{
    background-color: transparent;
    height: 10px;
    margin: 0;
}}

QScrollBar::handle:horizontal {{
    background-color: {DARK_BORDER};
    border-radius: 5px;
    min-width: 30px;
}}

QScrollBar::handle:horizontal:hover {{
    background-color: {DARK_TEXT_DIM};
}}

QScrollBar::add-line:horizontal, QScrollBar::sub-line:horizontal {{
    width: 0;
}}

/* ─── QLabel ───────────────────────────────────── */
QLabel {{
    background: transparent;
    color: {DARK_TEXT};
}}

/* ─── QStatusBar ────────────────────────────────── */
QStatusBar {{
    background-color: {DARK_SURFACE};
    color: {DARK_TEXT_DIM};
    border-top: 1px solid {DARK_BORDER};
    font-size: 12px;
    padding: 4px 12px;
    min-height: 24px;
}}

/* ─── QToolBar ──────────────────────────────────── */
QToolBar {{
    background-color: {DARK_SURFACE};
    border-bottom: 1px solid {DARK_BORDER};
    spacing: 6px;
    padding: 4px;
}}

/* ─── QSplitter ────────────────────────────────── */
QSplitter::handle {{
    background-color: {DARK_BORDER};
}}

QSplitter::handle:horizontal {{
    width: 2px;
}}

QSplitter::handle:vertical {{
    height: 2px;
}}

/* ─── QCheckBox ────────────────────────────────── */
QCheckBox {{
    spacing: 8px;
    color: {DARK_TEXT};
}}

QCheckBox::indicator {{
    width: 18px;
    height: 18px;
    border: 2px solid {DARK_BORDER};
    border-radius: 4px;
    background: {DARK_SURFACE};
}}

QCheckBox::indicator:checked {{
    background-color: {DARK_ACCENT};
    border-color: {DARK_ACCENT};
}}

/* ─── QRadioButton ─────────────────────────────── */
QRadioButton {{
    spacing: 8px;
    color: {DARK_TEXT};
}}

QRadioButton::indicator {{
    width: 18px;
    height: 18px;
    border: 2px solid {DARK_BORDER};
    border-radius: 10px;
    background: {DARK_SURFACE};
}}

QRadioButton::indicator:checked {{
    background-color: {DARK_ACCENT};
    border-color: {DARK_ACCENT};
}}

/* ─── QProgressBar ─────────────────────────────── */
QProgressBar {{
    background-color: {DARK_BG};
    border: 1px solid {DARK_BORDER};
    border-radius: 6px;
    text-align: center;
    color: {DARK_TEXT};
    height: 20px;
}}

QProgressBar::chunk {{
    background-color: {DARK_ACCENT};
    border-radius: 5px;
}}

/* ─── QToolTip ─────────────────────────────────── */
QToolTip {{
    background-color: {DARK_SURFACE};
    color: {DARK_TEXT};
    border: 1px solid {DARK_BORDER};
    border-radius: 6px;
    padding: 6px 10px;
    font-size: 12px;
}}

/* ─── QFrame (sidebar) ─────────────────────────── */
QFrame[sidebar="true"] {{
    background-color: {DARK_BG};
    border-right: 1px solid {DARK_BORDER};
}}

QPushButton[sidebar-btn="true"] {{
    background-color: transparent;
    color: {DARK_TEXT_DIM};
    border: none;
    border-radius: 8px;
    padding: 10px 16px;
    text-align: left;
    font-size: 13px;
    font-weight: 500;
}}

QPushButton[sidebar-btn="true"]:hover {{
    background-color: {DARK_SURFACE_HOVER};
    color: {DARK_TEXT};
    border-left: 3px solid {DARK_ACCENT};
    padding-left: 13px;
}}

QPushButton[sidebar-btn="true"]:pressed {{
    background-color: {DARK_ACCENT};
    color: white;
}}

QPushButton[sidebar-btn="true"][active="true"] {{
    background-color: qlineargradient(x1:0,y1:0,x2:1,y2:0, stop:0 {DARK_ACCENT}, stop:1 #a855f7);
    color: white;
    font-weight: bold;
    border-left: 3px solid white;
    padding-left: 13px;
}}

/* ─── QStackedWidget ───────────────────────────── */
QStackedWidget {{
    background-color: {DARK_BG};
}}

/* ─── Tooltips on form labels ──────────────────── */
QLabel[header="true"] {{
    font-size: 16px;
    font-weight: bold;
    color: {DARK_TEXT};
    padding: 4px;
}}

QLabel[subtitle="true"] {{
    font-size: 14px;
    color: {DARK_TEXT_DIM};
}}

QPushButton#themeToggle {{
    background: {DARK_SURFACE};
    color: {DARK_TEXT_DIM};
    border: 1px solid {DARK_BORDER};
    border-radius: 16px;
    font-size: 11px;
    font-weight: bold;
}}

QPushButton#themeToggle:hover {{
    background: {DARK_SURFACE_HOVER};
    color: {DARK_TEXT};
}}

QPushButton#themeToggle:checked {{
    background: {DARK_ACCENT};
    color: white;
    border-color: {DARK_ACCENT};
}}
"""

LIGHT_QSS = f"""
* {{
    font-family: 'Segoe UI', 'Arial', sans-serif;
    font-size: 13px;
    color: {LIGHT_TEXT};
    border: none;
    outline: none;
}}

QMainWindow, QDialog {{
    background-color: {LIGHT_BG};
    color: {LIGHT_TEXT};
}}

QWidget {{
    background-color: transparent;
    color: {LIGHT_TEXT};
}}

QMenuBar {{
    background-color: {LIGHT_SURFACE};
    color: {LIGHT_TEXT};
    border-bottom: 1px solid {LIGHT_BORDER};
    padding: 2px;
}}

QMenuBar::item:selected {{
    background-color: {LIGHT_SURFACE_HOVER};
}}

QMenu {{
    background-color: {LIGHT_SURFACE};
    border: 1px solid {LIGHT_BORDER};
    border-radius: 8px;
    padding: 6px;
}}

QMenu::item:selected {{
    background-color: {LIGHT_ACCENT};
    color: white;
}}

QPushButton {{
    background-color: {LIGHT_SURFACE};
    color: {LIGHT_TEXT};
    border: 1px solid {LIGHT_BORDER};
    border-radius: 8px;
    padding: 8px 20px;
    font-weight: 500;
    min-height: 20px;
}}

QPushButton:hover {{
    background-color: {LIGHT_SURFACE_HOVER};
    border-color: {LIGHT_ACCENT};
}}

QPushButton:pressed {{
    background-color: {LIGHT_ACCENT_HOVER};
    color: white;
}}

QPushButton[accent="true"] {{
    background-color: {LIGHT_ACCENT};
    color: white;
    border: none;
}}

QPushButton[success="true"] {{
    background-color: {LIGHT_SUCCESS};
    color: white;
    border: none;
}}

QPushButton[danger="true"] {{
    background-color: {LIGHT_DANGER};
    color: white;
    border: none;
}}

QLineEdit, QTextEdit, QPlainTextEdit, QSpinBox, QDoubleSpinBox, QDateEdit {{
    background-color: {LIGHT_SURFACE};
    color: {LIGHT_TEXT};
    border: 1px solid {LIGHT_BORDER};
    border-radius: 8px;
    padding: 8px 12px;
    selection-background-color: {LIGHT_ACCENT};
}}

QLineEdit:focus, QTextEdit:focus, QPlainTextEdit:focus,
QSpinBox:focus, QDoubleSpinBox:focus, QDateEdit:focus {{
    border-color: {LIGHT_ACCENT};
}}

QComboBox {{
    background-color: {LIGHT_SURFACE};
    color: {LIGHT_TEXT};
    border: 1px solid {LIGHT_BORDER};
    border-radius: 8px;
    padding: 8px 12px;
    min-width: 120px;
}}

QComboBox:hover {{
    border-color: {LIGHT_ACCENT};
}}

QComboBox QAbstractItemView {{
    background-color: {LIGHT_SURFACE};
    color: {LIGHT_TEXT};
    border: 1px solid {LIGHT_BORDER};
    selection-background-color: {LIGHT_ACCENT};
    selection-color: white;
}}

QTableWidget, QTableView {{
    background-color: {LIGHT_SURFACE};
    color: {LIGHT_TEXT};
    border: 1px solid {LIGHT_BORDER};
    border-radius: 8px;
    gridline-color: {LIGHT_BORDER};
    selection-background-color: {LIGHT_ACCENT};
    selection-color: white;
    alternate-background-color: {LIGHT_BG};
    font-size: 12px;
}}

QTableWidget::item:selected, QTableView::item:selected {{
    background-color: {LIGHT_ACCENT};
    color: white;
}}

QHeaderView::section {{
    background-color: {LIGHT_BG};
    color: {LIGHT_TEXT};
    border: none;
    border-bottom: 2px solid {LIGHT_ACCENT};
    padding: 8px;
    font-weight: bold;
}}

QGroupBox {{
    background-color: {LIGHT_SURFACE};
    border: 1px solid {LIGHT_BORDER};
    border-radius: 10px;
    margin-top: 12px;
    padding: 16px 12px 12px 12px;
    font-weight: bold;
}}

QGroupBox::title {{
    subcontrol-origin: margin;
    subcontrol-position: top left;
    padding: 4px 12px;
    color: {LIGHT_ACCENT};
    font-weight: bold;
}}

QTabWidget::pane {{
    background-color: {LIGHT_SURFACE};
    border: 1px solid {LIGHT_BORDER};
    border-radius: 8px;
}}

QTabBar::tab {{
    background-color: {LIGHT_BG};
    color: {LIGHT_TEXT_DIM};
    border: 1px solid {LIGHT_BORDER};
    border-bottom: none;
    border-top-left-radius: 8px;
    border-top-right-radius: 8px;
    padding: 10px 20px;
    margin-right: 2px;
}}

QTabBar::tab:selected {{
    background-color: {LIGHT_SURFACE};
    color: {LIGHT_ACCENT};
    border-bottom: 2px solid {LIGHT_ACCENT};
}}

QScrollBar:vertical {{
    background-color: transparent;
    width: 10px;
}}

QScrollBar::handle:vertical {{
    background-color: {LIGHT_BORDER};
    border-radius: 5px;
    min-height: 30px;
}}

QScrollBar::handle:vertical:hover {{
    background-color: {LIGHT_TEXT_DIM};
}}

QScrollBar::add-line:vertical, QScrollBar::sub-line:vertical {{
    height: 0;
}}

QLabel {{
    background: transparent;
    color: {LIGHT_TEXT};
}}

QStatusBar {{
    background-color: {LIGHT_SURFACE};
    color: {LIGHT_TEXT_DIM};
    border-top: 1px solid {LIGHT_BORDER};
    font-size: 12px;
}}

QCheckBox {{
    spacing: 8px;
}}

QCheckBox::indicator {{
    width: 18px;
    height: 18px;
    border: 2px solid {LIGHT_BORDER};
    border-radius: 4px;
    background: {LIGHT_SURFACE};
}}

QCheckBox::indicator:checked {{
    background-color: {LIGHT_ACCENT};
    border-color: {LIGHT_ACCENT};
}}

QToolTip {{
    background-color: {LIGHT_SURFACE};
    color: {LIGHT_TEXT};
    border: 1px solid {LIGHT_BORDER};
    border-radius: 6px;
    padding: 6px 10px;
}}

QFrame[sidebar="true"] {{
    background-color: {LIGHT_BG};
    border-right: 1px solid {LIGHT_BORDER};
}}

QPushButton[sidebar-btn="true"] {{
    background-color: transparent;
    color: {LIGHT_TEXT_DIM};
    border: none;
    border-radius: 8px;
    padding: 10px 16px;
    text-align: left;
    font-size: 13px;
    font-weight: 500;
}}

QPushButton[sidebar-btn="true"]:hover {{
    background-color: {LIGHT_SURFACE_HOVER};
    color: {LIGHT_TEXT};
    border-left: 3px solid {LIGHT_ACCENT};
    padding-left: 13px;
}}

QPushButton[sidebar-btn="true"][active="true"] {{
    background-color: {LIGHT_ACCENT};
    color: white;
    font-weight: bold;
    border-left: 3px solid {LIGHT_ACCENT};
    padding-left: 13px;
}}

QProgressBar {{
    background-color: {LIGHT_BG};
    border: 1px solid {LIGHT_BORDER};
    border-radius: 6px;
    text-align: center;
    height: 20px;
}}

QProgressBar::chunk {{
    background-color: {LIGHT_ACCENT};
    border-radius: 5px;
}}

QLabel[header="true"] {{
    font-size: 16px;
    font-weight: bold;
    color: {LIGHT_TEXT};
    padding: 4px;
}}

QLabel[subtitle="true"] {{
    font-size: 14px;
    color: {LIGHT_TEXT_DIM};
}}

QPushButton#themeToggle {{
    background: {LIGHT_SURFACE};
    color: {LIGHT_TEXT_DIM};
    border: 1px solid {LIGHT_BORDER};
    border-radius: 16px;
    font-size: 11px;
    font-weight: bold;
}}

QPushButton#themeToggle:hover {{
    background: {LIGHT_SURFACE_HOVER};
    color: {LIGHT_TEXT};
}}

QPushButton#themeToggle:checked {{
    background: {LIGHT_ACCENT};
    color: white;
    border-color: {LIGHT_ACCENT};
}}
"""

# ============================================================
# Theme Manager
# ============================================================
_current_theme = "dark"


def apply_theme(app: QApplication, theme: str = "dark") -> None:
    """Apply dark or light theme to the entire application."""
    global _current_theme
    _current_theme = theme
    if theme == "dark":
        app.setStyleSheet(DARK_QSS)
        palette = QPalette()
        palette.setColor(QPalette.ColorRole.Window, QColor(DARK_BG))
        palette.setColor(QPalette.ColorRole.WindowText, QColor(DARK_TEXT))
        palette.setColor(QPalette.ColorRole.Base, QColor(DARK_SURFACE))
        palette.setColor(QPalette.ColorRole.AlternateBase, QColor(DARK_BG))
        palette.setColor(QPalette.ColorRole.Text, QColor(DARK_TEXT))
        palette.setColor(QPalette.ColorRole.Button, QColor(DARK_SURFACE))
        palette.setColor(QPalette.ColorRole.ButtonText, QColor(DARK_TEXT))
        palette.setColor(QPalette.ColorRole.Highlight, QColor(DARK_ACCENT))
        palette.setColor(QPalette.ColorRole.HighlightedText, QColor("white"))
        app.setPalette(palette)
    else:
        app.setStyleSheet(LIGHT_QSS)
        palette = QPalette()
        palette.setColor(QPalette.ColorRole.Window, QColor(LIGHT_BG))
        palette.setColor(QPalette.ColorRole.WindowText, QColor(LIGHT_TEXT))
        palette.setColor(QPalette.ColorRole.Base, QColor(LIGHT_SURFACE))
        palette.setColor(QPalette.ColorRole.Text, QColor(LIGHT_TEXT))
        palette.setColor(QPalette.ColorRole.Button, QColor(LIGHT_SURFACE))
        palette.setColor(QPalette.ColorRole.ButtonText, QColor(LIGHT_TEXT))
        palette.setColor(QPalette.ColorRole.Highlight, QColor(LIGHT_ACCENT))
        palette.setColor(QPalette.ColorRole.HighlightedText, QColor("white"))
        app.setPalette(palette)


def toggle_theme(app: QApplication) -> str:
    """Toggle between dark and light theme. Returns new theme name."""
    global _current_theme
    new_theme = "light" if _current_theme == "dark" else "dark"
    apply_theme(app, new_theme)
    return new_theme


def current_theme() -> str:
    return _current_theme


def get_font(size: int = 13, bold: bool = False) -> QFont:
    """Get a consistent font."""
    f = QFont("Segoe UI", size)
    f.setBold(bold)
    return f
