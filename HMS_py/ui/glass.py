"""HMS_py Glass UI widgets: aurora backdrop + appearance dialog.

AuroraCanvas : soft radial-gradient blobs wala background — glass panels
               ko depth deta hai (glassmorphism rule #1: glass ke peeche
               kuch hona chahiye).
AppearanceDialog : user apne colors choose kare — presets, color pickers,
               glass opacity, radius. Live preview + QSettings persist.
"""
from __future__ import annotations

from PyQt6.QtCore import Qt, QRectF, QPointF, pyqtSignal
from PyQt6.QtGui import (QBrush, QColor, QFont, QPainter, QPixmap,
                         QRadialGradient)
from PyQt6.QtWidgets import (QColorDialog, QComboBox, QDialog, QFormLayout,
                             QFrame, QGridLayout, QHBoxLayout, QLabel,
                             QPushButton, QScrollArea, QSlider, QVBoxLayout,
                             QWidget)

from HMS_py.ui import theme
from HMS_py.ui.theme import (DEFAULTS, PRESETS, apply_tokens, load_tokens,
                             palette, preset_tokens, reset_tokens,
                             save_tokens, apply_theme)

_EDITABLE_COLORS = (
    ("accent", "Accent (buttons, focus)"),
    ("bg", "Background"),
    ("surface_solid", "Card surface"),
    ("text", "Text"),
    ("text_dim", "Dim text"),
    ("header_grad_top", "Table header top"),
    ("header_grad_bottom", "Table header bottom"),
    ("blob1", "Aurora blob 1"),
    ("blob2", "Aurora blob 2"),
    ("blob3", "Aurora blob 3"),
    ("blob4", "Aurora blob 4"),
)

# Semantic status hues — bg/text/on_* derived hote hain (mode-adaptive).
_STATUS_EDITABLE = (
    ("success", "Success (Vacant / Receipt)"),
    ("warning", "Warning (Dirty)"),
    ("danger", "Danger (Occupied / Expense)"),
    ("neutral", "Neutral (Maintenance)"),
)


# ============================================================ aurora
class AuroraCanvas(QWidget):
    """Background canvas: bg color + 5 soft radial blobs (aurora).

    QPixmap cache — resize pe hi repaint hota hai, har frame nahi.
    Theme change pe refresh() call karo.
    """

    _SPOTS = (  # (fx, fy, radius-factor) — deterministic layout
        (0.14, 0.12, 0.55), (0.86, 0.16, 0.50),
        (0.10, 0.88, 0.48), (0.88, 0.84, 0.55),
        (0.52, 0.48, 0.70),
    )

    def __init__(self, parent=None):
        super().__init__(parent)
        self._cache: QPixmap | None = None

    def refresh(self):
        self._cache = None
        self.update()

    def paintEvent(self, ev):  # noqa: N802 (Qt name)
        t = palette()
        w, h = self.width(), self.height()
        if w <= 0 or h <= 0:
            return
        if self._cache is None or self._cache.size() != self.size():
            pm = QPixmap(self.size())
            pm.fill(QColor(t["bg"]))
            p = QPainter(pm)
            p.setRenderHint(QPainter.RenderHint.Antialiasing)
            rmax = max(w, h)
            colors = (t["blob1"], t["blob2"], t["blob3"], t["blob4"],
                      t["blob1"])
            base_alpha = 95 if t["mode"] == "dark" else 130
            for (fx, fy, fr), col in zip(self._SPOTS, colors):
                cx, cy, r = fx * w, fy * h, fr * rmax
                g = QRadialGradient(cx, cy, r)
                c0 = QColor(col)
                c0.setAlpha(base_alpha)
                c1 = QColor(col)
                c1.setAlpha(0)
                g.setColorAt(0.0, c0)
                g.setColorAt(1.0, c1)
                p.setBrush(QBrush(g))
                p.setPen(Qt.PenStyle.NoPen)
                p.drawEllipse(QPointF(cx, cy), r, r)
            p.end()
            self._cache = pm
        painter = QPainter(self)
        painter.drawPixmap(0, 0, self._cache)
        painter.end()


# ============================================================ swatch
class SwatchButton(QPushButton):
    """28px color chip; click pe QColorDialog."""

    def __init__(self, color: str, on_change, parent=None):
        super().__init__(parent)
        self._color = color
        self._on_change = on_change
        self.setFixedSize(34, 26)
        self.setCursor(Qt.CursorShape.PointingHandCursor)
        self._apply_style()
        self.clicked.connect(self._pick)

    def _apply_style(self):
        self.setStyleSheet(
            f"QPushButton {{ background: {self._color};"
            f" border: 2px solid {palette()['border_strong']};"
            f" border-radius: 7px; min-width: 0; padding: 0; }}")

    def _pick(self):
        c = QColorDialog.getColor(QColor(self._color), self,
                                  "Choose color")
        if c.isValid():
            self._color = c.name()
            self._apply_style()
            self._on_change(self._color)

    def set_color(self, color: str):
        self._color = color
        self._apply_style()


# ============================================================ dialog
class AppearanceDialog(QDialog):
    """User-defined colors: presets + pickers + sliders, live preview.

    Live preview: har change pe apply_tokens() — dialog ke peeche poora
    app turant naya roop le leta hai. Cancel -> saved tokens restore.
    Save -> QSettings persist. Status hues (success/warning/danger/neutral)
    bhi editable — bg/text/on_* derived mode-adaptive generate hote hain.
    """

    appearanceChanged = pyqtSignal()

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setWindowTitle("Appearance — Colors & Glass")
        self.resize(620, 680)
        self.setModal(True)

        self._start = {**{k: v for k, v in DEFAULTS.items()},
                       **load_tokens()}
        self._tokens = dict(self._start)

        root = QVBoxLayout(self)
        root.setContentsMargins(18, 14, 18, 14)
        root.setSpacing(10)

        title = QLabel("Appearance")
        title.setProperty("glassTitle", True)
        root.addWidget(title)

        # ---- preset row
        prow = QHBoxLayout()
        prow.addWidget(QLabel("Preset:"))
        self.cmbPreset = QComboBox()
        self.cmbPreset.addItems(list(PRESETS.keys()))
        self.cmbPreset.setMinimumHeight(32)
        prow.addWidget(self.cmbPreset, stretch=1)
        self.btnApplyPreset = QPushButton("Apply")
        self.btnApplyPreset.setProperty("accent", True)
        prow.addWidget(self.btnApplyPreset)
        root.addLayout(prow)

        # ---- mode row
        mrow = QHBoxLayout()
        mrow.addWidget(QLabel("Glass mode:"))
        self.cmbMode = QComboBox()
        self.cmbMode.addItems(["light", "dark"])
        self.cmbMode.setMinimumHeight(32)
        mrow.addWidget(self.cmbMode)
        mrow.addStretch()
        root.addLayout(mrow)

        # ---- color grid
        grid_box = QFrame()
        grid_box.setProperty("glassCard", True)
        grid_lay = QGridLayout(grid_box)
        grid_lay.setContentsMargins(14, 12, 14, 12)
        grid_lay.setHorizontalSpacing(12)
        grid_lay.setVerticalSpacing(8)
        self._swatches: dict[str, SwatchButton] = {}
        for i, (key, label) in enumerate(_EDITABLE_COLORS):
            r, c = divmod(i, 2)
            lbl = QLabel(label)
            lbl.setProperty("glassSub", True)
            grid_lay.addWidget(lbl, r, c * 2)
            sw = SwatchButton(self._tokens.get(key, "#000000"),
                              self._make_color_cb(key))
            self._swatches[key] = sw
            grid_lay.addWidget(sw, r, c * 2 + 1)
        root.addWidget(grid_box)

        # ---- status hues (derived: bg tint / text / on_* auto)
        stat_box = QFrame()
        stat_box.setProperty("glassCard", True)
        stat_lay = QHBoxLayout(stat_box)
        stat_lay.setContentsMargins(14, 10, 14, 10)
        stat_lay.setSpacing(10)
        stat_lbl = QLabel("Status hues:\n(bg/text derived)")
        stat_lbl.setProperty("glassSub", True)
        stat_lay.addWidget(stat_lbl)
        for key, label in _STATUS_EDITABLE:
            sw = SwatchButton(self._tokens.get(key, "#000000"),
                              self._make_color_cb(key))
            sw.setToolTip(label)
            self._swatches[key] = sw
            stat_lay.addWidget(sw)
        stat_lay.addStretch()
        root.addWidget(stat_box)

        # ---- sliders
        slab = QFrame()
        slab.setProperty("glassCard", True)
        sform = QFormLayout(slab)
        sform.setContentsMargins(14, 12, 14, 12)

        self.sldOpacity = QSlider(Qt.Orientation.Horizontal)
        self.sldOpacity.setRange(10, 92)
        self.sldOpacity.setValue(int(float(self._tokens.get(
            "glass_opacity", "0.62")) * 100))
        self.lblOpacity = QLabel()
        self._hook_slider(self.sldOpacity, self.lblOpacity,
                          lambda v: f"Glass opacity: {v/100:.2f}")
        sform.addRow(self.lblOpacity, self.sldOpacity)

        self.sldRadius = QSlider(Qt.Orientation.Horizontal)
        self.sldRadius.setRange(2, 18)
        self.sldRadius.setValue(int(self._tokens.get("radius", "10")))
        self.lblRadius = QLabel()
        self._hook_slider(self.sldRadius, self.lblRadius,
                          lambda v: f"Corner radius: {v}px")
        sform.addRow(self.lblRadius, self.sldRadius)
        root.addWidget(slab)

        root.addStretch()

        # ---- buttons
        btns = QHBoxLayout()
        self.btnReset = QPushButton("Reset to default")
        btns.addWidget(self.btnReset)
        btns.addStretch()
        self.btnSave = QPushButton("Save")
        self.btnSave.setProperty("accent", True)
        self.btnSave.setMinimumWidth(110)
        self.btnCancel = QPushButton("Cancel")
        btns.addWidget(self.btnCancel)
        btns.addWidget(self.btnSave)
        root.addLayout(btns)

        # ---- wiring
        self.btnApplyPreset.clicked.connect(self._apply_preset)
        self.cmbMode.currentTextChanged.connect(self._set_mode)
        self.sldOpacity.valueChanged.connect(self._collect)
        self.sldRadius.valueChanged.connect(self._collect)
        self.btnSave.clicked.connect(self._save)
        self.btnCancel.clicked.connect(self._cancel)
        self.btnReset.clicked.connect(self._reset)

        self._sync_ui()

    # ------------------------------------------------------------ utils
    def _hook_slider(self, sld, lbl, fmt):
        def upd(v):
            lbl.setText(fmt(v))
            lbl.setProperty("glassSub", True)
        upd(sld.value())
        sld.valueChanged.connect(upd)

    def _make_color_cb(self, key: str):
        def cb(color: str):
            self._tokens[key] = color
            apply_tokens(self._app(), self._tokens)
            self.appearanceChanged.emit()
        return cb

    @staticmethod
    def _app():
        from PyQt6.QtWidgets import QApplication
        return QApplication.instance()

    def _sync_ui(self):
        for key, sw in self._swatches.items():
            sw.set_color(self._tokens.get(key, "#000000"))
        self.cmbMode.setCurrentText(self._tokens.get("mode", "light"))
        self.sldOpacity.blockSignals(True)
        self.sldOpacity.setValue(int(float(self._tokens.get(
            "glass_opacity", "0.62")) * 100))
        self.sldOpacity.blockSignals(False)
        self.sldRadius.blockSignals(True)
        self.sldRadius.setValue(int(self._tokens.get("radius", "10")))
        self.sldRadius.blockSignals(False)

    # ------------------------------------------------------------ slots
    def _apply_preset(self):
        # Preset base colors load karo, par user ke status hues preserve
        # (presets status define nahi karte — wo user-personal hain).
        status = {k: v for k, v in self._tokens.items()
                  if k in ("success", "warning", "danger", "neutral")}
        self._tokens = preset_tokens(self.cmbPreset.currentText())
        self._tokens.update(status)
        apply_tokens(self._app(), self._tokens)
        self._sync_ui()
        self.appearanceChanged.emit()

    def _set_mode(self, mode: str):
        self._tokens["mode"] = mode
        apply_tokens(self._app(), self._tokens)
        self.appearanceChanged.emit()

    def _collect(self, *_):
        self._tokens["glass_opacity"] = f"{self.sldOpacity.value()/100:.2f}"
        self._tokens["radius"] = str(self.sldRadius.value())
        apply_tokens(self._app(), self._tokens)
        self.appearanceChanged.emit()

    def _save(self):
        self._collect()
        save_tokens(self._tokens)
        apply_theme(self._app())
        self.appearanceChanged.emit()
        self.accept()

    def _cancel(self):
        apply_theme(self._app())      # saved tokens restore
        self.appearanceChanged.emit()
        self.reject()

    def _reset(self):
        reset_tokens()
        self._tokens = dict(DEFAULTS)
        apply_theme(self._app())
        self._sync_ui()
        self.appearanceChanged.emit()
