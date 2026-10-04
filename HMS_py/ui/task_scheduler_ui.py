"""Task Scheduler UI — VB6 FrmJobScheduler.frm port (PyQt6).

VB6 evidence
------------
Form     : HMS_REVERSE_ENGINEERING/HMS/FrmJobScheduler.frm
           (Caption "Task Scheduler", BorderStyle=1 Fixed Single).
Dispatch : ModuleAdd.bas loc_1E4A177 — menu leaf "Task Scheduler"
           (Utility group) -> New FrmJobScheduler ... Show.
Table    : JobSchedule (27 cols, LIVE-verified; core/task_scheduler_ops.py
           ka docstring authoritative field->column map hai).

Combo lists (authoritative — FrmJobScheduler.frx me binary se extract kiye):
  CMBSchduleType   = ["Recurring", "One Time"]
  CMBOccurType     = ["Daily", "Weekly", "Monthly"]
  CMBDFOccurUnit   = ["hour(s)", "minute(s)"]
  CMBMonthlyThe    = ["first", "second", "third", "forth", "last"]
  CMBMonthlyTheDay = ["Monday","Tuesday","Wednesday","Thursday","Friday",
                      "Saturday","Sunday","day","weekday","weekend day"]

VB6 behaviour ported here
-------------------------
  * Visibility (CMBOccurType_Click loc_FDB9B1): Daily -> FrRecur "day(s)"
    (spin idx0 max 365); Weekly -> FrRecur "week(s) on" + FrWeekly
    (max 0x34=52); Monthly -> FrMonthly only (FrRecur hidden; spins
    idx1 1..31, idx2/idx3 1..12).
  * Sub-enables (OptMonthlyFreq_Click / OptDailyFreq_Click /
    OptSchEndDate_Click / CMBSchduleType_Click / CMBDFOccurUnit_Click):
    Day->spins(1,2), The->combos+spin(3); Once->DTPDFOccurOnce,
    Every->spin(4)+unit+start+end (unit hour max 24 / minute max 59);
    End Date->DTPSchEndDate; One Time->DTPOTMDate/Time.
  * Edit enable master (Proc_320_37_11A5E3C arg_C) + Add me
    ChkEnabled.Enabled=False (loc_EBD18E) + CmdScheduledJobs.Enabled =
    Not(editing) (loc_11A5A7A).
  * BlankText (Proc_320_38_101F788): naam empty, saare spins=1,
    ChkEnabled=1, combos=List(0) (Recurring/Daily/hour(s)/first/Monday).
  * MoveRec (Proc_320_39_14320F8) se load; eSave (loc_1586C78 insert /
    loc_158725A update) me save — sab core/task_scheduler_ops.py me hai.
  * MsgBoxes: name -> "Name is a required field." (&H10 "Validation
    Error", FaLib Proc_183_19_E8DAFC); dup -> "Duplicate Name" (&H40
    "Information"); site edit/delete guard -> "Record is Created at Other
    Site, Can't Edit/Delete it" (&H10); child rows ->
    "Related Record Exist in Message Schedule, Entry Can't Be Deleted"
    (&H40 "Validation Check"); delete confirm -> "Delete Record ?"
    (&H24 "Confirmation"); cancel confirm -> "Cancel ?" (4 "Terminate
    Process"); find-empty -> "Records Not Present For Searching." (&H40).

Deviation known-gap list
------------------------
  * ui/shell.py line ~1628 "Task Scheduler" ko abhi bhi _coming_soon par
    map karta hai — integration ke liye shell edit chahiye (FORBIDDEN thi
    is task me), isliye opener directly import karke chalao.
  * CmdScheduledJobs ("Scheduled Tasks") ka VB6 me koi click handler
    hi nahi hai (sirf view-mode enable) — yahan no-op hai (tooltip me
    document hai).
  * Txt(1) "Summary" box ka VB6 generation logic decompile me nahi mila
    — yahan current field values se text banaya ja raha hai.
  * Find/DGHelp search grid + Crystal print + VB6 navigation buttons
    (First/Prev/Next/Last) port nahi — left list + filter uska
    equivalent hai; VB6 ka modal "Records Not Present For Searching."
    yahan status-bar message hai.
  * FreqWeekdays sirf FreqOccurs='Weekly' par checkbox-bitmask se banta
    hai (VB6 global_68 ka computation decompile me nahi mila; live Daily
    row FreqWeekdays=0). Bit order: Sunday=1 .. Saturday=64
    (ChkWeekDay Index 1..7 = 2^(i-1)).
  * Design-time me OptDailyFreq/OptMonthlyFreq ki koi Value=255 nahi
    mili (.frm me dono unchecked) — sane defaults rakhe: Daily
    Frequency="Occurs Once at" (live row DFreq=0), Monthly="Day"
    (first-drawn), End Date="No End Date" (OptSchEndDate(1) ki Value=255
    design se confirm hai).

Run: python -m HMS_py.ui.task_scheduler_ui
"""
from __future__ import annotations

import datetime
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
    os.path.abspath(__file__)))))

from PyQt6.QtCore import QDate, QTime, Qt
from PyQt6.QtGui import QColor, QFont
from PyQt6.QtWidgets import (QApplication, QButtonGroup, QCheckBox,
                             QComboBox, QDateEdit, QGridLayout, QGroupBox,
                             QHBoxLayout, QHeaderView, QLabel, QLineEdit,
                             QMainWindow, QMessageBox, QPushButton,
                             QRadioButton, QSpinBox, QTableWidget,
                             QTableWidgetItem, QTextEdit, QTimeEdit,
                             QVBoxLayout, QWidget)

from HMS_py.core import task_scheduler_ops as tso
from HMS_py.ui.desktop_style import mark_desktop_action
from HMS_py.ui.theme import palette

DATE_FMT = "dd/MMM/yyyy"
TIME_FMT = "HH:mm:ss"

# ChkWeekDay Index(1..7) -> bitmask 2^(i-1) (VB6 .frm Index property)
WEEKDAY_BITS = {"Sunday": 1, "Monday": 2, "Tuesday": 4, "Wednesday": 8,
                "Thursday": 16, "Friday": 32, "Saturday": 64}

# VB6 FrWeekly grid positions (Top=105 row / Top=435 row, Left twips):
# Mon(135,105) Wed(1845,105) Fri(3555,105) Sat(5265,105)
# Tue(135,435) Thu(1845,435) Sun(5265,435)
WEEKDAY_GRID = (("Monday", 0, 0), ("Wednesday", 0, 1), ("Friday", 0, 2),
                ("Saturday", 0, 3), ("Tuesday", 1, 0), ("Thursday", 1, 1),
                ("Sunday", 1, 3))

SCHEDULE_TYPES = ["Recurring", "One Time"]
OCCUR_TYPES = ["Daily", "Weekly", "Monthly"]
DF_UNITS = ["hour(s)", "minute(s)"]
MONTH_THE = ["first", "second", "third", "forth", "last"]
MONTH_THE_DAY = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday",
                 "Saturday", "Sunday", "day", "weekday", "weekend day"]

NO_END_DATE = datetime.date(9999, 12, 31)   # VB6 DTPSchEndDate.MaxDate


def _qdate(value) -> QDate:
    if isinstance(value, datetime.datetime):
        value = value.date()
    if isinstance(value, datetime.date):
        return QDate(value.year, value.month, value.day)
    return QDate.currentDate()


def _pydate(qd: QDate) -> datetime.date:
    return datetime.date(qd.year(), qd.month(), qd.day())


def _pytime(qt: QTime) -> datetime.time:
    return datetime.time(qt.hour(), qt.minute(), qt.second())


def _qtime(value, default=(0, 0, 0)) -> QTime:
    if isinstance(value, datetime.datetime) or isinstance(value, datetime.time):
        return QTime(value.hour, value.minute, value.second)
    return QTime(*default)


def _text_item(value) -> QTableWidgetItem:
    it = QTableWidgetItem("" if value is None else str(value))
    it.setFlags(it.flags() & ~Qt.ItemFlag.ItemIsEditable)
    it.setForeground(QColor(palette()["text"]))
    return it


def _set_combo(combo: QComboBox, text: str) -> None:
    i = combo.findText(text)
    if i < 0 and text:
        combo.insertItem(0, text)
        i = 0
    combo.setCurrentIndex(i if i >= 0 else 0)


class TaskSchedulerWindow(QMainWindow):
    """VB6 FrmJobScheduler — list + form CRUD, modes view/add/edit."""

    def __init__(self, parent=None, user: str | None = None):
        super().__init__(parent)
        self.user = user or tso.USER_DEFAULT
        self._rows: list[dict] = []
        self._current: str | None = None
        self._mode = "view"
        self.setWindowTitle("Task Scheduler")
        self.resize(1240, 760)
        self._build()
        self.reload_list()
        if self._rows:
            self._select_row(0)
        else:
            self._blank()
        self._apply_mode("view")

    # ── build ─────────────────────────────────────────────────────
    def _build(self) -> None:
        central = QWidget()
        self.setCentralWidget(central)
        root = QVBoxLayout(central)

        title = QLabel("Task Scheduler")
        title.setFont(QFont("Segoe UI", 14, QFont.Weight.Bold))
        title.setAlignment(Qt.AlignmentFlag.AlignCenter)
        root.addWidget(title)

        main = QHBoxLayout()
        root.addLayout(main, 1)

        # left: list (VB6 Form_Load/eFind list + DGHelp search equivalent)
        left = QVBoxLayout()
        left.addWidget(QLabel("Schedules"))
        self.filter_edit = QLineEdit()
        self.filter_edit.setPlaceholderText("Filter code / name ...")
        self.filter_edit.textChanged.connect(self._apply_filter)
        left.addWidget(self.filter_edit)
        self.grid = QTableWidget(0, 2)
        self.grid.setHorizontalHeaderLabels(["Code", "Name"])
        self.grid.setAlternatingRowColors(True)
        self.grid.setSelectionBehavior(
            QTableWidget.SelectionBehavior.SelectRows)
        self.grid.setSelectionMode(
            QTableWidget.SelectionMode.SingleSelection)
        self.grid.setEditTriggers(QTableWidget.EditTrigger.NoEditTriggers)
        self.grid.verticalHeader().setVisible(False)
        self.grid.horizontalHeader().setSectionResizeMode(
            1, QHeaderView.ResizeMode.Stretch)
        self.grid.itemSelectionChanged.connect(self._on_select)
        left.addWidget(self.grid, 1)
        left_widget = QWidget()
        left_widget.setLayout(left)
        left_widget.setMinimumWidth(320)
        main.addWidget(left_widget)

        # right: form
        right = QVBoxLayout()
        ident = QHBoxLayout()
        ident_form = QVBoxLayout()
        name_row = QHBoxLayout()
        name_row.addWidget(QLabel("Name"))
        self.edit_name = QLineEdit()
        self.edit_name.setMaxLength(35)          # VB6 Txt(0).MaxLength=35
        name_row.addWidget(self.edit_name)
        ident_form.addLayout(name_row)
        type_row = QHBoxLayout()
        type_row.addWidget(QLabel("Schedule Type"))
        self.combo_schedule_type = QComboBox()
        self.combo_schedule_type.addItems(SCHEDULE_TYPES)
        self.combo_schedule_type.currentTextChanged.connect(
            lambda _t: self._refresh_conds())
        type_row.addWidget(self.combo_schedule_type)
        ident_form.addLayout(type_row)
        ident.addLayout(ident_form, 1)
        self.chk_enabled = QCheckBox("Enabled")
        self.chk_enabled.setChecked(True)
        ident.addWidget(self.chk_enabled)
        self.btn_scheduled = QPushButton("Scheduled Tasks")
        self.btn_scheduled.setToolTip(
            "VB6 CmdScheduledJobs — click handler form me kahin nahi hai "
            "(sirf view-mode enable hota hai), isliye yahan no-op.")
        self.btn_scheduled.clicked.connect(self._scheduled_tasks)
        ident.addWidget(self.btn_scheduled)
        right.addLayout(ident)

        # One Time Occurance
        grp_otm = QGroupBox("One Time Occurance")
        otm = QHBoxLayout(grp_otm)
        otm.addWidget(QLabel("Date :"))
        self.date_otm = QDateEdit()
        self.date_otm.setDisplayFormat(DATE_FMT)
        self.date_otm.setCalendarPopup(True)
        otm.addWidget(self.date_otm)
        otm.addWidget(QLabel("Time :"))
        self.time_otm = QTimeEdit()
        self.time_otm.setDisplayFormat(TIME_FMT)
        otm.addWidget(self.time_otm)
        otm.addStretch()
        right.addWidget(grp_otm)

        # Frequency
        self.grp_freq = QGroupBox("Frequency")
        freq = QVBoxLayout(self.grp_freq)
        occur_row = QHBoxLayout()
        occur_row.addWidget(QLabel("Occurs :"))
        self.combo_occur = QComboBox()
        self.combo_occur.addItems(OCCUR_TYPES)
        self.combo_occur.currentTextChanged.connect(
            lambda _t: self._on_occur_type())
        occur_row.addWidget(self.combo_occur)
        occur_row.addWidget(QLabel("Recurs Every :"))
        self.spin_recurs = self._spin(1, 365)
        occur_row.addWidget(self.spin_recurs)
        self.lbl_freq_recur = QLabel("day(s)")
        occur_row.addWidget(self.lbl_freq_recur)
        occur_row.addStretch()
        freq.addLayout(occur_row)

        self.grp_weekly = QGroupBox("Week(s) on")
        grid = QGridLayout(self.grp_weekly)
        self.weekday_checks: dict[str, QCheckBox] = {}
        for day, row, col in WEEKDAY_GRID:
            cb = QCheckBox(day)
            self.weekday_checks[day] = cb
            grid.addWidget(cb, row, col)
        freq.addWidget(self.grp_weekly)

        self.grp_monthly = QGroupBox("Monthly")
        monthly = QVBoxLayout(self.grp_monthly)
        day_row = QHBoxLayout()
        self.radio_day = QRadioButton("Day")
        self.radio_day.setChecked(True)
        day_row.addWidget(self.radio_day)
        self.spin_month_day = self._spin(1, 31)
        day_row.addWidget(self.spin_month_day)
        day_row.addWidget(QLabel("of every"))
        self.spin_month_every = self._spin(1, 12)
        day_row.addWidget(self.spin_month_every)
        day_row.addWidget(QLabel("month(s)"))
        day_row.addStretch()
        monthly.addLayout(day_row)
        the_row = QHBoxLayout()
        self.radio_the = QRadioButton("The")
        the_row.addWidget(self.radio_the)
        self.combo_month_the = QComboBox()
        self.combo_month_the.addItems(MONTH_THE)
        the_row.addWidget(self.combo_month_the)
        self.combo_month_the_day = QComboBox()
        self.combo_month_the_day.addItems(MONTH_THE_DAY)
        the_row.addWidget(self.combo_month_the_day)
        the_row.addWidget(QLabel("of every"))
        self.spin_the_every = self._spin(1, 12)
        the_row.addWidget(self.spin_the_every)
        the_row.addWidget(QLabel("month(s)"))
        the_row.addStretch()
        monthly.addLayout(the_row)
        self.grp_monthly_months = QButtonGroup(self)
        self.grp_monthly_months.addButton(self.radio_day, 0)
        self.grp_monthly_months.addButton(self.radio_the, 1)
        self.grp_monthly_months.idClicked.connect(
            lambda _i: self._refresh_conds())
        freq.addWidget(self.grp_monthly)
        right.addWidget(self.grp_freq)

        # Daily Frequency
        grp_df = QGroupBox("Daily Frequency")
        df = QVBoxLayout(grp_df)
        once_row = QHBoxLayout()
        self.radio_once = QRadioButton("Occurs Once at :")
        self.radio_once.setChecked(True)
        once_row.addWidget(self.radio_once)
        self.time_df_once = QTimeEdit()
        self.time_df_once.setDisplayFormat(TIME_FMT)
        once_row.addWidget(self.time_df_once)
        once_row.addStretch()
        df.addLayout(once_row)
        every_row = QHBoxLayout()
        self.radio_every = QRadioButton("Occurs Every :")
        every_row.addWidget(self.radio_every)
        self.spin_df_every = self._spin(1, 24)
        every_row.addWidget(self.spin_df_every)
        self.combo_df_unit = QComboBox()
        self.combo_df_unit.addItems(DF_UNITS)
        self.combo_df_unit.currentTextChanged.connect(
            lambda _t: self._on_unit())
        every_row.addWidget(self.combo_df_unit)
        every_row.addStretch()
        df.addLayout(every_row)
        times_row = QHBoxLayout()
        times_row.addWidget(QLabel("Starting at :"))
        self.time_df_start = QTimeEdit()
        self.time_df_start.setDisplayFormat(TIME_FMT)
        times_row.addWidget(self.time_df_start)
        times_row.addWidget(QLabel("Ending at :"))
        self.time_df_end = QTimeEdit()
        self.time_df_end.setDisplayFormat(TIME_FMT)
        times_row.addWidget(self.time_df_end)
        times_row.addStretch()
        df.addLayout(times_row)
        self.grp_df_days = QButtonGroup(self)
        self.grp_df_days.addButton(self.radio_once, 0)
        self.grp_df_days.addButton(self.radio_every, 1)
        self.grp_df_days.idClicked.connect(lambda _i: self._refresh_conds())
        right.addWidget(grp_df)

        # Duration
        grp_dur = QGroupBox("Duration")
        dur = QHBoxLayout(grp_dur)
        dur.addWidget(QLabel("Start Date :"))
        self.date_start = QDateEdit()
        self.date_start.setDisplayFormat(DATE_FMT)
        self.date_start.setCalendarPopup(True)
        dur.addWidget(self.date_start)
        self.radio_end = QRadioButton("End Date :")
        dur.addWidget(self.radio_end)
        self.radio_noend = QRadioButton("No End Date")
        self.radio_noend.setChecked(True)
        dur.addWidget(self.radio_noend)
        self.date_end = QDateEdit()
        self.date_end.setDisplayFormat(DATE_FMT)
        self.date_end.setCalendarPopup(True)
        self.date_end.setDate(QDate(NO_END_DATE.year, NO_END_DATE.month,
                                    NO_END_DATE.day))
        dur.addWidget(self.date_end)
        dur.addStretch()
        self.grp_dur = QButtonGroup(self)
        self.grp_dur.addButton(self.radio_end, 0)
        self.grp_dur.addButton(self.radio_noend, 1)
        self.grp_dur.idClicked.connect(lambda _i: self._refresh_conds())
        right.addWidget(grp_dur)

        # Summary (VB6 Txt(1) under Lbl(4) "Summary", locked multiline)
        grp_sum = QGroupBox("Summary")
        sum_lay = QVBoxLayout(grp_sum)
        self.summary = QTextEdit()
        self.summary.setReadOnly(True)
        self.summary.setMaximumHeight(90)
        sum_lay.addWidget(self.summary)
        right.addWidget(grp_sum)

        # buttons
        btns = QHBoxLayout()
        self.btn_new = QPushButton("New")
        self.btn_new.clicked.connect(self._new)
        self.btn_edit = QPushButton("Edit")
        self.btn_edit.clicked.connect(self._edit)
        self.btn_save = QPushButton("Save")
        mark_desktop_action(self.btn_save, "primary")
        self.btn_save.clicked.connect(self._save)
        self.btn_delete = QPushButton("Delete")
        self.btn_delete.clicked.connect(self._delete)
        self.btn_cancel = QPushButton("Cancel")
        self.btn_cancel.clicked.connect(self._cancel)
        self.btn_refresh = QPushButton("Refresh")
        self.btn_refresh.clicked.connect(self._refresh)
        self.btn_close = QPushButton("Close")
        mark_desktop_action(self.btn_close)
        self.btn_close.clicked.connect(self.close)
        for b in (self.btn_new, self.btn_edit, self.btn_save,
                  self.btn_delete, self.btn_cancel, self.btn_refresh,
                  self.btn_close):
            btns.addWidget(b)
        btns.addStretch()
        right.addLayout(btns)

        right_widget = QWidget()
        right_widget.setLayout(right)
        main.addWidget(right_widget, 1)

    @staticmethod
    def _spin(lo: int, hi: int) -> QSpinBox:
        s = QSpinBox()
        s.setRange(lo, hi)
        return s

    # ── list ──────────────────────────────────────────────────────
    def reload_list(self) -> None:
        try:
            self._rows = tso.list_schedules()
        except Exception as exc:
            self._rows = []
            self.statusBar().showMessage(f"Load error: {exc}")
            return
        self.grid.setRowCount(len(self._rows))
        for i, r in enumerate(self._rows):
            self.grid.setItem(i, 0, _text_item(r["code"]))
            self.grid.setItem(i, 1, _text_item(r["name"]))
        if not self._rows:
            # VB6 eFind loc_EEFB4E modal MsgBox (yahan status bar)
            self.statusBar().showMessage(
                "Records Not Present For Searching.")
        else:
            self.statusBar().showMessage(f"{len(self._rows)} record(s)")
        self._apply_filter(self.filter_edit.text())

    def _apply_filter(self, text: str) -> None:
        needle = (text or "").strip().lower()
        for i, r in enumerate(self._rows):
            hit = (not needle
                   or needle in r["code"].lower()
                   or needle in r["name"].lower())
            self.grid.setRowHidden(i, not hit)

    def _on_select(self) -> None:
        if self._mode != "view":
            return
        rows = {i.row() for i in self.grid.selectedIndexes()}
        if rows:
            self._select_row(rows.pop())

    def _select_row(self, row: int) -> None:
        if 0 <= row < len(self._rows):
            self._current = self._rows[row]["code"]
            self._show_rec(self._current)

    # ── load / blank ──────────────────────────────────────────────
    def _show_rec(self, schedule_id: str) -> None:
        try:
            rec = tso.get_schedule(schedule_id)
        except Exception as exc:
            self.statusBar().showMessage(f"Load error: {exc}")
            return
        if rec is None:
            self._current = None
            self._blank()
            return
        self._current = schedule_id
        self.edit_name.setText(rec["name"])
        _set_combo(self.combo_schedule_type, rec["schedule_type"])
        self.chk_enabled.setChecked(bool(rec["enabled"]))
        self.date_start.setDate(_qdate(rec["start_date"]))
        end = rec["end_date"]
        end_d = _pydate(_qdate(end))
        if end_d >= NO_END_DATE:
            self.radio_noend.setChecked(True)
            self.date_end.setDate(QDate(9999, 12, 31))
        else:
            self.radio_end.setChecked(True)
            self.date_end.setDate(_qdate(end))
        ot = rec["one_time"]
        self.date_otm.setDate(_qdate(ot))
        self.time_otm.setTime(_qtime(ot))
        _set_combo(self.combo_occur, rec["freq_occurs"])
        self._on_occur_type()
        self.spin_recurs.setValue(max(1, int(rec["freq_recurs"] or 1)))
        mask = int(rec["freq_weekdays"] or 0)
        for day, bit in WEEKDAY_BITS.items():
            self.weekday_checks[day].setChecked(bool(mask & bit))
        day_mode = int(rec["freq_month"] or 0) == 0
        (self.radio_day if day_mode else self.radio_the).setChecked(True)
        self.spin_month_day.setValue(
            max(1, int(rec["freq_month_day"] or 1)))
        self.spin_month_every.setValue(
            max(1, int(rec["freq_month_day_of_every_month"] or 1)))
        _set_combo(self.combo_month_the, rec["freq_month_the"])
        _set_combo(self.combo_month_the_day, rec["freq_month_the_day"])
        self.spin_the_every.setValue(
            max(1, int(rec["freq_month_the_day_of_every_month"] or 1)))
        once = int(rec["dfreq"] or 0) == 0
        (self.radio_once if once else self.radio_every).setChecked(True)
        self.time_df_once.setTime(_qtime(rec["dfreq_occurs_once"]))
        self.spin_df_every.setValue(
            max(1, int(rec["dfreq_occurs_every"] or 1)))
        _set_combo(self.combo_df_unit, rec["dfreq_occurs_type"] or "hour(s)")
        self._on_unit()
        self.time_df_start.setTime(_qtime(rec["dfreq_start_time"]))
        self.time_df_end.setTime(_qtime(rec["dfreq_end_time"], (23, 59, 59)))
        self._refresh_conds()

    def _blank(self) -> None:
        """VB6 BlankText (Proc_320_38_101F788): spins=1, ChkEnabled=1,
        combos=List(0), naam empty."""
        self._current = None
        self.edit_name.clear()
        self.combo_schedule_type.setCurrentIndex(0)     # "Recurring"
        self.chk_enabled.setChecked(True)
        today = QDate.currentDate()
        self.date_start.setDate(today)
        self.date_otm.setDate(today)
        self.date_end.setDate(QDate(9999, 12, 31))
        self.radio_noend.setChecked(True)
        self.time_otm.setTime(QTime(0, 0, 0))
        self.combo_occur.setCurrentIndex(0)             # "Daily"
        self._on_occur_type()
        for s in (self.spin_recurs, self.spin_month_day,
                  self.spin_month_every, self.spin_the_every,
                  self.spin_df_every):
            s.setValue(1)
        for cb in self.weekday_checks.values():
            cb.setChecked(False)
        self.radio_day.setChecked(True)
        _set_combo(self.combo_month_the, MONTH_THE[0])
        _set_combo(self.combo_month_the_day, MONTH_THE_DAY[0])
        self.radio_once.setChecked(True)
        self.time_df_once.setTime(QTime(0, 0, 0))
        self.combo_df_unit.setCurrentIndex(0)           # "hour(s)"
        self._on_unit()
        self.time_df_start.setTime(QTime(0, 0, 0))
        self.time_df_end.setTime(QTime(23, 59, 59))
        self._refresh_conds()

    # ── VB6 click-handler equivalents ─────────────────────────────
    def _on_occur_type(self) -> None:
        occur = self.combo_occur.currentText()
        self.grp_weekly.setVisible(occur == "Weekly")
        self.grp_monthly.setVisible(occur == "Monthly")
        visible = occur in ("Daily", "Weekly")
        self.grp_freq.setVisible(True)
        self.lbl_freq_recur.setVisible(visible)
        self.spin_recurs.setVisible(visible)
        if occur == "Daily":
            self.lbl_freq_recur.setText("day(s)")
            self.spin_recurs.setRange(1, 365)
        elif occur == "Weekly":
            self.lbl_freq_recur.setText("week(s) on")
            self.spin_recurs.setRange(1, 52)
        self._refresh_conds()

    def _on_unit(self) -> None:
        if self.combo_df_unit.currentText() == "hour(s)":
            self.spin_df_every.setRange(1, 24)
        else:
            self.spin_df_every.setRange(1, 59)

    def _refresh_conds(self) -> None:
        editable = self._mode in ("add", "edit")
        one_time = self.combo_schedule_type.currentText() == "One Time"
        otm_ok = editable and one_time
        self.edit_name.setEnabled(editable)
        self.combo_schedule_type.setEnabled(editable)
        # VB6 loc_EBD18E: Add mode me ChkEnabled disabled
        self.chk_enabled.setEnabled(editable and self._mode == "edit")
        self.date_start.setEnabled(editable)
        self.date_otm.setEnabled(otm_ok)
        self.time_otm.setEnabled(otm_ok)
        self.combo_occur.setEnabled(editable)
        self.spin_recurs.setEnabled(editable)
        for cb in self.weekday_checks.values():
            cb.setEnabled(editable)
        day_on = self.radio_day.isChecked()
        self.radio_day.setEnabled(editable)
        self.radio_the.setEnabled(editable)
        self.spin_month_day.setEnabled(editable and day_on)
        self.spin_month_every.setEnabled(editable and day_on)
        self.combo_month_the.setEnabled(editable and not day_on)
        self.combo_month_the_day.setEnabled(editable and not day_on)
        self.spin_the_every.setEnabled(editable and not day_on)
        once_on = self.radio_once.isChecked()
        self.radio_once.setEnabled(editable)
        self.radio_every.setEnabled(editable)
        self.time_df_once.setEnabled(editable and once_on)
        self.spin_df_every.setEnabled(editable and not once_on)
        self.combo_df_unit.setEnabled(editable and not once_on)
        self.time_df_start.setEnabled(editable and not once_on)
        self.time_df_end.setEnabled(editable and not once_on)
        self.radio_end.setEnabled(editable)
        self.radio_noend.setEnabled(editable)
        self.date_end.setEnabled(editable and self.radio_end.isChecked())
        # top toolbar per mode (VB6 Proc_320_37 + TopCtrl states)
        view = self._mode == "view"
        self.btn_new.setEnabled(view)
        self.btn_edit.setEnabled(view)
        self.btn_delete.setEnabled(view)
        self.btn_save.setEnabled(not view)
        self.btn_cancel.setEnabled(not view)
        self.btn_scheduled.setEnabled(view)   # loc_11A5A7A Not(editing)
        self._update_summary()

    def _apply_mode(self, mode: str) -> None:
        self._mode = mode
        if mode == "add":
            self.chk_enabled.setChecked(True)
        self._refresh_conds()

    # ── collect / summary ─────────────────────────────────────────
    def _collect(self) -> dict:
        occur = self.combo_occur.currentText()
        mask = 0
        if occur == "Weekly":      # see module docstring deviation
            for day, bit in WEEKDAY_BITS.items():
                if self.weekday_checks[day].isChecked():
                    mask |= bit
        end = None if self.radio_noend.isChecked() \
            else _pydate(self.date_end.date())
        rec = {
            "name": self.edit_name.text().strip(),
            "schedule_type": self.combo_schedule_type.currentText(),
            "enabled": self.chk_enabled.isChecked(),
            "start_date": _pydate(self.date_start.date()),
            "end_date": end,
            "one_time": datetime.datetime.combine(
                _pydate(self.date_otm.date()),
                _pytime(self.time_otm.time())),
            "freq_occurs": occur,
            "freq_recurs": self.spin_recurs.value(),
            "freq_weekdays": mask,
            "freq_month": 0 if self.radio_day.isChecked() else 1,
            "freq_month_day": self.spin_month_day.value(),
            "freq_month_day_of_every_month": self.spin_month_every.value(),
            "freq_month_the": self.combo_month_the.currentText(),
            "freq_month_the_day": self.combo_month_the_day.currentText(),
            "freq_month_the_day_of_every_month":
                self.spin_the_every.value(),
            "dfreq": 0 if self.radio_once.isChecked() else 1,
            "dfreq_occurs_once": _pytime(self.time_df_once.time()),
            "dfreq_occurs_every": self.spin_df_every.value(),
            "dfreq_occurs_type": self.combo_df_unit.currentText(),
            "dfreq_start_time": _pytime(self.time_df_start.time()),
            "dfreq_end_time": _pytime(self.time_df_end.time()),
        }
        return rec

    def _update_summary(self) -> None:
        occur = self.combo_occur.currentText()
        lines = [
            f"{self.edit_name.text().strip() or '(unnamed)'}  "
            f"[{self.combo_schedule_type.currentText()}, "
            f"{'Enabled' if self.chk_enabled.isChecked() else 'Disabled'}]"
        ]
        start = self.date_start.date().toString(DATE_FMT)
        if self.radio_end.isChecked():
            dur = (f"{start} .. {self.date_end.date().toString(DATE_FMT)}")
        else:
            dur = f"{start} .. No End Date"
        lines.append(f"Duration: {dur}")
        if self.combo_schedule_type.currentText() == "One Time":
            lines.append(
                "One Time Occurance: "
                f"{self.date_otm.date().toString(DATE_FMT)} "
                f"{self.time_otm.time().toString(TIME_FMT)}")
        if occur == "Daily":
            lines.append(f"Frequency: every {self.spin_recurs.value()} "
                         "day(s)")
        elif occur == "Weekly":
            picked = [d for d in ("Monday", "Tuesday", "Wednesday",
                                  "Thursday", "Friday", "Saturday", "Sunday")
                      if self.weekday_checks[d].isChecked()]
            lines.append(
                f"Frequency: every {self.spin_recurs.value()} week(s) on "
                + (", ".join(picked) if picked else "(no day)"))
        else:
            if self.radio_day.isChecked():
                lines.append(
                    f"Frequency: on day {self.spin_month_day.value()} of "
                    f"every {self.spin_month_every.value()} month(s)")
            else:
                lines.append(
                    f"Frequency: on the "
                    f"{self.combo_month_the.currentText()} "
                    f"{self.combo_month_the_day.currentText()} of every "
                    f"{self.spin_the_every.value()} month(s)")
        if self.radio_once.isChecked():
            lines.append(
                "Daily Frequency: once at "
                f"{self.time_df_once.time().toString(TIME_FMT)}")
        else:
            lines.append(
                f"Daily Frequency: every {self.spin_df_every.value()} "
                f"{self.combo_df_unit.currentText()} between "
                f"{self.time_df_start.time().toString(TIME_FMT)} - "
                f"{self.time_df_end.time().toString(TIME_FMT)}")
        self.summary.setPlainText("\n".join(lines))

    # ── actions ───────────────────────────────────────────────────
    def _show_vb6_error(self, text: str) -> None:
        if text == "Duplicate Name":
            QMessageBox.information(self, "Information", text)
        elif text.startswith("Related Record Exist"):
            QMessageBox.information(self, "Validation Check", text)
        elif text.startswith("Record is Created at Other Site"):
            QMessageBox.critical(self, "Validation Check", text)
        elif text.endswith("is a required field."):
            QMessageBox.critical(self, "Validation Error", text)
        else:
            QMessageBox.critical(self, "Validation Check", text)

    def _new(self) -> None:
        self.grid.clearSelection()
        self._blank()
        self._apply_mode("add")
        self.edit_name.setFocus()
        self.statusBar().showMessage("Add mode")

    def _edit(self) -> None:
        if not self._current:
            self.statusBar().showMessage("Select a record first")
            return
        try:
            tso.assert_editable(self._current)
        except ValueError as exc:
            self._show_vb6_error(str(exc))
            return
        self._apply_mode("edit")
        self.edit_name.setFocus()
        self.edit_name.selectAll()
        self.statusBar().showMessage(f"Edit mode: {self._current}")

    def _save(self) -> None:
        rec = self._collect()
        try:
            if self._mode == "add":
                new_id = tso.create_schedule(rec, user=self.user)
                self.statusBar().showMessage(f"Saved: {new_id}")
                target = new_id
            else:
                rec["schedule_id"] = self._current
                tso.update_schedule(rec, user=self.user)
                self.statusBar().showMessage(f"Saved: {self._current}")
                target = self._current
        except ValueError as exc:
            self._show_vb6_error(str(exc))
            return
        except Exception as exc:
            QMessageBox.critical(self, "Validation Check", f"Save failed: {exc}")
            return
        self._apply_mode("view")
        self.reload_list()
        for i, r in enumerate(self._rows):
            if r["code"] == target:
                self.grid.selectRow(i)
                self._select_row(i)
                break
        else:
            self._show_rec(target)

    def _delete(self) -> None:
        if not self._current:
            self.statusBar().showMessage("Select a record first")
            return
        try:
            tso.assert_deletable(self._current)
        except ValueError as exc:
            self._show_vb6_error(str(exc))
            return
        if QMessageBox.question(
                self, "Confirmation", "Delete Record ?",
                QMessageBox.StandardButton.Yes |
                QMessageBox.StandardButton.No
        ) != QMessageBox.StandardButton.Yes:
            return
        code = self._current
        try:
            tso.delete_schedule(code)
        except ValueError as exc:
            self._show_vb6_error(str(exc))
            return
        self.statusBar().showMessage(f"Deleted: {code}")
        self._current = None
        self.reload_list()
        if self._rows:
            self._select_row(0)
        else:
            self._blank()

    def _cancel(self) -> None:
        if QMessageBox.question(
                self, "Terminate Process", "Cancel ?",
                QMessageBox.StandardButton.Yes |
                QMessageBox.StandardButton.No
        ) != QMessageBox.StandardButton.Yes:
            return
        self._apply_mode("view")
        if self._current:
            self._show_rec(self._current)
        else:
            self._blank()
            self.reload_list()
            if self._rows:
                self.grid.selectRow(0)
        self.statusBar().showMessage("Cancelled")

    def _refresh(self) -> None:
        self.reload_list()
        if self._current:
            self._show_rec(self._current)
        self.statusBar().showMessage("Refreshed")

    def _scheduled_tasks(self) -> None:
        self.statusBar().showMessage(
            "Scheduled Tasks: VB6 CmdScheduledJobs ka koi click handler "
            "nahi hai (decompile me) — yahan no-op.")


def open_task_scheduler(parent=None, user: str | None = None):
    """VB6 dispatch (ModuleAdd.bas loc_1E4A177) ka Python equivalent —
    shell abhi 'Task Scheduler' ko _coming_soon dikhata hai, isliye yeh
    opener direct call karo."""
    w = TaskSchedulerWindow(parent, user=user)
    w.show()
    return w


if __name__ == "__main__":
    app = QApplication(sys.argv)
    win = TaskSchedulerWindow()
    win.show()
    sys.exit(app.exec())
