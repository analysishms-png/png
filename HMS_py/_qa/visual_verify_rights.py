"""Visual verify (offscreen): SA + restricted user (AMIR) ke liye
sidebar + har module ka menubar; screenshots + enabled-state dump.

Login screen bypass karke seedha MainWindow banate hain (headless QA).
"""
import os
import sys

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from HMS_py.ui import shell
from HMS_py.core import menu_help as mh
from PyQt6.QtWidgets import QApplication

OUTDIR = os.path.join("_qa", "rights_visual")
os.makedirs(OUTDIR, exist_ok=True)


def dump_user(app, user, comp_name="Moon and Mars Resorts"):
    win = shell.MainWindow(user, {"name": comp_name, "short": "MMR",
                                  "year": "2026-27"})
    win.show()
    app.processEvents()

    side = [b.text() for b in win._side_buttons]
    print(f"\n===== {user} =====")
    print("SIDEBAR:", side)
    lines = [f"USER: {user}", f"SIDEBAR: {' | '.join(side)}", ""]

    n_short = 0
    for btn in win._side_buttons:
        name = btn.text()
        win._on_module({"name": name}, btn)
        app.processEvents()
        titles = []
        for act in win.menuBar().actions():
            menu = act.menu()
            n_enabled = 0
            n_total = 0
            sub_names = []

            def walk(m):
                nonlocal n_enabled, n_total
                for a in m.actions():
                    if a.menu() is not None:
                        walk(a.menu())
                    elif a.text() and a.text() != name:
                        n_total += 1
                        if a.isEnabled():
                            n_enabled += 1
                        if len(sub_names) < 3:
                            sub_names.append(
                                f"{a.text()}{'[off]' if not a.isEnabled() else ''}")
            if menu:
                walk(menu)
            titles.append(f"{act.text()}({n_enabled}/{n_total})")
            n_short += (n_total - n_enabled)
        print(f"  {name:16} -> {', '.join(titles)}")
        lines.append(f"{name} -> {', '.join(titles)}")
        # screenshot (sirf 4 key modules per user)
        if name in ("Finance", "Front Office", "Point Of Sale", "EXTRAs"):
            win.grab().save(os.path.join(
                OUTDIR, f"{user}_{name.replace(' ', '').replace('/', '')}.png"))
    print(f"  [{user}] disabled(leaves) total: {n_short}")
    lines.append(f"disabled leaves: {n_short}")
    win.close()
    return lines


def main():
    app = QApplication.instance() or QApplication(sys.argv)
    all_lines = []
    for user in ("SA", "AMIR", "kot"):
        try:
            all_lines.extend(dump_user(app, user))
        except Exception as e:
            print(f"  {user} FAILED: {e}")
            all_lines.append(f"{user} FAILED: {e}")
    out = os.path.join(OUTDIR, "RIGHTS_VISUAL_SUMMARY.txt")
    with open(out, "w", encoding="utf-8") as f:
        f.write("\n".join(all_lines))
    print("\nwritten:", out)
    print("VISUAL_OK")


if __name__ == "__main__":
    main()
