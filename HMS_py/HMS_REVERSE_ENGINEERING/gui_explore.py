"""HMS GUI exploration helper (pywinauto, win32 backend).
Provides: launch/connect, login, screenshot with standard naming, action log,
window/menu discovery. Driven interactively by the agent turn-by-turn.
Safety: read-only walkthrough — masters/transactions are only VIEWED, never saved."""
import os, sys, time
from datetime import datetime

from pywinauto import Application, Desktop
from PIL import ImageGrab

BASE = os.path.dirname(os.path.abspath(__file__))
SS = os.path.join(BASE, "screenshots")
LOG = os.path.join(BASE, "action_log.csv")

MODULES = {
    "login": "01_Login_Security", "setup": "02_Main_Setup", "finance": "03_Finance",
    "reservation": "04_Reservation", "fo": "05_Front_Office", "hk": "06_House_Keeping",
    "inventory": "07_Inventory", "pos": "08_POS", "banquet": "09_Banquet",
    "na": "10_Night_Audit", "hr": "11_HR_Payroll", "epabx": "12_EPABX",
    "msg": "13_Messaging", "members": "14_Members_Management",
    "sales": "15_Sales_Marketing", "mall": "16_Mall_Management",
    "reports": "17_Reports", "misc": "00_Project_Discovery",
}

# ---------------- logging ----------------
def log(step, screen, action, result, shot="", code="", sql=""):
    if not os.path.exists(LOG):
        with open(LOG, "w", encoding="utf-8") as f:
            f.write("Step|Timestamp|Screen|Action|Result|Screenshot|Related Code|Related SQL\n")
    with open(LOG, "a", encoding="utf-8") as f:
        f.write("%s|%s|%s|%s|%s|%s|%s|%s\n" % (
            step, datetime.now().strftime("%H:%M:%S"), screen, action, result, shot, code, sql))
    print("LOG:", step, "|", action, "|", result)

# ---------------- screenshots ----------------
def snap(module_key, name):
    """Standard naming: MODULE_SCREEN_OPERATION_STATE.png -> <ModuleFolder>/<name>.png"""
    folder = os.path.join(SS, MODULES.get(module_key, "99_Misc"))
    os.makedirs(folder, exist_ok=True)
    fname = name if name.lower().endswith(".png") else name + ".png"
    path = os.path.join(folder, fname)
    ImageGrab.grab().save(path)
    print("SHOT:", path)
    return path

# ---------------- app control ----------------
def connect_or_start():
    """Attach to a real HMS process (by exe path of its windows) or start it.
    Uses absolute exe path; avoids false title matches."""
    exe = os.path.join(os.path.dirname(BASE), "HMS.exe")  # HMS folder is parent of workspace
    # try attach: find any top-level window whose owning process runs HMS.exe
    import subprocess, win32process, win32gui
    def hms_pids():
        out = subprocess.run(["tasklist", "/FI", "IMAGENAME eq HMS.exe", "/FO", "CSV"],
                             capture_output=True, text=True).stdout
        pids = []
        for line in out.splitlines()[1:]:
            parts = [p.strip('"') for p in line.split(",")]
            if parts and parts[0].lower().startswith("hms"):
                pids.append(int(parts[1]))
        return pids
    pids = hms_pids()
    if pids:
        app = Application(backend="win32").connect(process=pids[0], timeout=5)
        print("Connected to running HMS, pid", pids[0])
        return app
    app = Application(backend="win32").start(exe, timeout=30)
    time.sleep(5)
    print("Started HMS.exe:", exe)
    return app

def windows(app=None):
    d = Desktop(backend="win32")
    wins = [(w.window_text(), w.class_name()) for w in d.windows() if w.window_text()]
    for t, c in wins:
        print(repr(t), "->", c)
    return wins

def dlg(app):
    return app.top_window()

def print_controls(d):
    d.set_focus()
    d.print_control_identifiers(depth=2)

def menu_items(d):
    """Walk a window's menu hierarchy (top level + one submenu) via win32 HMENU."""
    out = []
    try:
        import win32gui, win32con
        hwnd = d.handle
        hmenu = win32gui.GetMenu(hwnd)
        if not hmenu:
            return out
        def walk(hmenu, pos, depth):
            info = win32gui.GetMenuItemInfo(hmenu, pos, True)
            text = info["text"] or ""
            text = text.replace("&", "").split("\t")[0].strip()
            submenu = info["hSubMenu"]
            out.append(("  " * depth) + text)
            if submenu and depth < 1:  # one level deep for the inventory pass
                for j in range(win32gui.GetMenuItemCount(submenu)):
                    walk(submenu, j, depth + 1)
        for i in range(win32gui.GetMenuItemCount(hmenu)): 
            walk(hmenu, i, 0)
    except Exception as e:
        print("menu walk error:", e)
    return out

def type_keys(d, keys, wait=0.8):
    d.set_focus()
    d.type_keys(keys, with_spaces=True)
    time.sleep(wait)

# ---------------- login ----------------
def do_login(app, user, password, company_hint=None):
    """Drive the login form (frmPassword/frmCompany). Credentials are used in-memory
    only — never logged, never written to disk."""
    d = dlg(app)
    d.set_focus()
    time.sleep(1)
    return d  # interactive continuation happens turn-by-turn with control discovery

if __name__ == "__main__":
    cmd = sys.argv[1] if len(sys.argv) > 1 else "windows"
    app = connect_or_start()
    if cmd == "windows":
        windows(app)
    elif cmd == "shot":
        snap(sys.argv[2], sys.argv[3])
    elif cmd == "controls":
        print_controls(dlg(app))
