import os, sys
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
from PyQt6.QtWidgets import QApplication, QMessageBox

app = QApplication(sys.argv)

# Silence message boxes in headless run
msgs = []
def _cap(parent, text, *a, **k):
    msgs.append(str(text))
    return QMessageBox.StandardButton.Ok
QMessageBox.information = staticmethod(_cap)
QMessageBox.warning = staticmethod(_cap)
QMessageBox.critical = staticmethod(_cap)
QMessageBox.question = staticmethod(lambda *a, **k: QMessageBox.StandardButton.Yes)

from HMS_py.ui.taxstru_ui import TaxStruForm

f = TaxStruForm()
f.resize(1200, 800)
f.show()
app.processEvents()

# 1) list fill
tbl = f.list_tbl
print("LIST_ROWS:", tbl.rowCount())
for r in range(min(tbl.rowCount(), 5)):
    print("  ROW", r, [tbl.item(r, c).text() if tbl.item(r, c) else "" for c in range(tbl.columnCount())])
assert tbl.rowCount() > 0, "structure list empty"

# 2) select first row -> details load
tbl.selectRow(0)
app.processEvents()
code0 = f.ed_code.text()
name0 = f.ed_name.text()
print("SELECTED:", repr(code0), repr(name0), "lbl_lines=", f.lbl_lines.text())
lines0 = f._get_grid_lines()
print("LINES0:", lines0)
print("BROWSE:", f.lbl_browse.text())

# 3) browse nav
f.btn_next.click(); app.processEvents()
print("AFTER_NEXT:", f.ed_code.text(), f.lbl_browse.text())
f.btn_last.click(); app.processEvents()
print("AFTER_LAST:", f.ed_code.text(), f.lbl_browse.text())
f.btn_first.click(); app.processEvents()
print("AFTER_FIRST:", f.ed_code.text(), f.lbl_browse.text())

# 4) New -> state machine
f.btn_new.click(); app.processEvents()
print("NEW_STATE: code=", f.ed_code.text(), "name=", f.ed_name.text(),
      "save_enabled=", f.btn_save.isEnabled(), "find_enabled=", f.btn_find.isEnabled(),
      "browse=", f.lbl_browse.text())
# grid should have at least one blank row for editing
print("GRID_ROWS_NEW:", f.grid.rowCount())
# pick a tax in row 0 combo -> auto append
from PyQt6.QtWidgets import QComboBox
w = f.grid.cellWidget(0, 1)
print("ROW0_COMBO:", type(w).__name__ if w else None)
if isinstance(w, QComboBox) and w.count():
    w.setCurrentIndex(1)
    app.processEvents()
    print("GRID_ROWS_AFTER_PICK:", f.grid.rowCount())

# 5) cancel -> back to idle, reload
f.btn_cancel.click(); app.processEvents()
print("CANCEL_STATE: save_enabled=", f.btn_save.isEnabled(), "find_enabled=", f.btn_find.isEnabled(),
      "browse=", f.lbl_browse.text(), "code=", f.ed_code.text())
assert f.btn_save.isEnabled() is False

# 6) search filter
f.ed_search.setText("KK0002")
app.processEvents()
print("SEARCH_ROWS:", f.list_tbl.rowCount(), f.lbl_browse.text())
f.ed_search.clear(); app.processEvents()

# 7) grid validation still raises on bad rows
f.grid.setRowCount(2)
f.grid.setItem(0, 0, __import__("PyQt6.QtWidgets", fromlist=["QTableWidgetItem"]).QTableWidgetItem("A"))
try:
    f._get_grid_lines()
    print("VALIDATION: FAILED (no raise)")
except ValueError as e:
    print("VALIDATION_OK:", e)

print("MSGS:", msgs)
print("SMOKE_OK")
