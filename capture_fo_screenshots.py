import os
import sys
from PyQt6.QtWidgets import QApplication
from PyQt6.QtCore import QTimer
from PyQt6.QtTest import QTest

from HMS_py.ui.theme import apply_theme
from HMS_py.ui.shell import MainWindow
from HMS_py.ui.global_search import GlobalSearchDialog

def take_screenshots():
    app = QApplication.instance() or QApplication(sys.argv)
    apply_theme(app)

    art_dir = r"C:\Users\LENOVO\.gemini\antigravity-ide\brain\eadb5696-6b9f-4445-84e4-235b4b9c48ce"
    os.makedirs(art_dir, exist_ok=True)

    win = MainWindow("SA", {"name": "Moon and Mars Resorts", "short": "MMR", "year": "2026-27"})
    win.resize(1366, 768)
    win.show()
    QTest.qWait(600)

    # 1. Front Office Dashboard Default View
    shot1 = os.path.join(art_dir, "fo_dashboard_modern.png")
    win.grab().save(shot1)
    print("Saved 1:", shot1)

    # 2. Visual Room Rack View
    win.fo_dashboard._toggle_view_mode()
    QTest.qWait(500)
    shot2 = os.path.join(art_dir, "fo_room_rack_modern.png")
    win.grab().save(shot2)
    print("Saved 2:", shot2)

    # Switch back to dual tables
    win.fo_dashboard._toggle_view_mode()
    QTest.qWait(200)

    # 3. World Clock Drawer Open View
    win._toggle_clocks()
    QTest.qWait(400)
    shot3 = os.path.join(art_dir, "fo_world_clocks_drawer.png")
    win.grab().save(shot3)
    print("Saved 3:", shot3)

    # 4. Collapsed Sidebar View
    win._toggle_sidebar()
    QTest.qWait(400)
    shot4 = os.path.join(art_dir, "fo_sidebar_collapsed.png")
    win.grab().save(shot4)
    print("Saved 4:", shot4)

    # Re-expand sidebar and close drawer
    win._toggle_sidebar()
    win._toggle_clocks()
    QTest.qWait(200)

    # 5. Global Search Dialog
    search_dlg = GlobalSearchDialog(win)
    search_dlg.show()
    search_dlg.txtSearch.setText("TEST")
    QTest.qWait(400)
    shot5 = os.path.join(art_dir, "fo_global_search.png")
    search_dlg.grab().save(shot5)
    search_dlg.close()
    print("Saved 5:", shot5)

    win.close()
    print("All screenshots captured successfully!")

if __name__ == "__main__":
    take_screenshots()
