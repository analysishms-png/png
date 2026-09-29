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
def _vb6_edits(d):
    """VB6 TextBox controls (class ThunderRT6TextBox) + plain Edit, visible only."""
    try:
        kids = d.descendants()
    except Exception:
        kids = []
    out = []
    for w in kids:
        try:
            if w.class_name() in ("ThunderRT6TextBox", "Edit") and w.is_visible():
                r = w.rectangle()
                if r.width() > 20 and r.height() > 8:
                    out.append(w)
        except Exception:
            pass
    out.sort(key=lambda w: (w.rectangle().top, w.rectangle().left))
    return out


def _msgbox_text(app):
    """Visible VB6/Win32 message box text, or ''."""
    import win32gui
    txt = []
    def cb(h, _):
        if win32gui.GetClassName(h) == "#32770" and win32gui.IsWindowVisible(h):
            t = win32gui.GetWindowText(h)
            # static text children hold the message
            def inner(ch, _a):
                if win32gui.GetClassName(ch) in ("Static",) :
                    s = win32gui.GetWindowText(ch)
                    if s:
                        txt.append(s)
            win32gui.EnumChildWindows(h, inner, None)
            if t:
                txt.append("TITLE:" + t)
    win32gui.EnumWindows(cb, None)
    return " | ".join(txt)


def _dismiss_msgbox(app):
    """Click OK/Yes on a message box; returns its text (masked callers log nothing)."""
    import win32gui, win32con
    found = []
    def cb(h, _):
        if win32gui.GetClassName(h) == "#32770" and win32gui.IsWindowVisible(h):
            found.append(h)
    win32gui.EnumWindows(cb, None)
    if not found:
        return ""
    text = _msgbox_text(app)
    def inner(ch, _a):
        if win32gui.GetClassName(ch) == "Button":
            t = win32gui.GetWindowText(ch).lower()
            if t in ("ok", "yes", "&ok"):
                win32gui.PostMessage(ch, win32con.BM_CLICK, 0, 0)
    win32gui.EnumChildWindows(found[0], inner, None)
    time.sleep(0.6)
    return text


def do_login(app, user, password, company_hint=None, settle_company=True):
    """Drive frmPassword -> company selection -> MDI.

    SECURITY: `user`/`password` are used in-memory only. They are never passed to
    log(), never printed, never written to any file. Only the outcome is logged.
    Returns a status dict (never contains the password).
    """
    d = dlg(app)
    try:
        d.set_focus()
    except Exception:
        pass
    time.sleep(1.0)

    edits = _vb6_edits(d)
    if not edits:
        # maybe already logged in / MDI showing
        return {"ok": False, "stage": "locate-fields",
                "detail": "no login text boxes found", "msgbox": _msgbox_text(app)}

    # Username field: prefer the one whose tab/id looks first; else top-most.
    target = edits[0]
    try:
        target.set_focus()
    except Exception:
        pass
    time.sleep(0.3)
    target.type_keys(user, with_spaces=True)          # username
    time.sleep(0.2)

    if len(edits) > 1:
        # password = next edit in visual order (skip empty non-secret fields)
        pw_field = edits[1]
        try:
            pw_field.set_focus()
        except Exception:
            win = target
            win.type_keys("{TAB}")
        time.sleep(0.2)
        pw_field.type_keys(password, with_spaces=True)
    time.sleep(0.3)

    # Trigger login: Enter (VB6 default button) then look for outcome.
    try:
        d.type_keys("{ENTER}")
    except Exception:
        pass
    time.sleep(2.0)

    mb = _msgbox_text(app)
    if mb:
        low = mb.lower()
        _dismiss_msgbox(app)
        if "invalid user" in low or "invalid password" in low or "not currently active" in low:
            log("LOGIN", "Login", "Rejected by server check", "msgbox-dismissed", "",
                "frmPassword validation [VERIFIED-VB6]", "")
            return {"ok": False, "stage": "rejected", "detail": mb[:120]}
        # any other informational box: dismiss and continue
        time.sleep(1.0)

    # Company selection grid may appear (DBGrid "Select Company").
    if settle_company:
        time.sleep(1.0)
        settled = _select_company(app, company_hint)
    else:
        settled = "skipped"

    log("LOGIN", "Login", "Credentials submitted", "company=%s" % settled, "",
        "frmPassword + company grid [VERIFIED-VB6]", "")
    return {"ok": True, "stage": "post-login", "company": settled}


def _select_company(app, hint=None):
    """Pick the property/company row in the selection grid. Returns 'grid'/'none'.
    Uses only Enter/double-click — never writes data."""
    import win32gui, win32con
    d = dlg(app)
    grids = []
    try:
        for w in d.descendants():
            if w.class_name() in ("ThunderRT6GridDC", "ThunderRT6DBGrid",
                                  "MSHierarchicalFlexGridLib2.Control", "Grid"):
                if w.is_visible():
                    grids.append(w)
    except Exception:
        pass
    if not grids:
        # maybe MDI already up
        return "no-grid"
    g0 = grids[0]
    try:
        g0.set_focus()
        time.sleep(0.4)
        # double-click first data row selects the company in this app
        r = g0.rectangle()
        import pywinauto.mouse as _mouse
        _mouse.click(button="left", coords=((r.left + 40), (r.top + 28)), click_count=2)
        time.sleep(1.2)
        return "grid"
    except Exception:
        try:
            g0.type_keys("{ENTER}")
            time.sleep(1.0)
            return "grid-enter"
        except Exception:
            return "grid-failed"

if __name__ == "__main__":
    cmd = sys.argv[1] if len(sys.argv) > 1 else "windows"
    app = connect_or_start()
    if cmd == "windows":
        windows(app)
    elif cmd == "shot":
        snap(sys.argv[2], sys.argv[3])
    elif cmd == "controls":
        print_controls(dlg(app))
