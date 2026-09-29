"""HMS GUI CAPTURE TOOL v2 — source-driven screen capture (Hinglish docs).
=========================================================
Source se samajh kar chalta hai:
1. Left strip buttons (Finance, Main Setup, ... EXTRAs) = module selector.
   Button captions Win32 EnumChildWindows se milte hain [VERIFIED-UI].
2. Top bar (y 23..103) = current module ke 5 menu buttons (owner-drawn, TopBarLib).
   Positions dark-pixel column analysis se milti hain [VERIFIED-UI].
3. Menu button click -> child form (ThunderRT6FormDC) khulta hai -> title padho
   (VERIFIED evidence) -> screenshot -> ESC/WM_CLOSE band karo (Save kabhi nahi).

Usage:
  python hms_capture2.py --mods fo --limit 5
  python hms_capture2.py --mods fo,res,na --limit 3
  python hms_capture2.py --slots           # sirf current module ke slots scan
"""
import os, sys, time, argparse, re
import win32gui, win32api, win32con
import pywinauto.mouse as mouse
from PIL import ImageGrab
import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import gui_explore as g

# module key -> (left-strip button caption, screenshots folder)
MODULES = {
    "finance": ("Finance", "03_Finance"),
    "setup":   ("Main Setup", "02_Main_Setup"),
    "res":     ("Reservation", "04_Reservation"),
    "fo":      ("Front Office", "05_Front_Office"),
    "hk":      ("House Keeping", "06_House_Keeping"),
    "inv":     ("Inventory", "07_Inventory"),
    "pos":     ("Point Of Sale", "08_POS"),
    "banq":    ("Banquet", "09_Banquet"),
    "na":      ("Night Audit", "10_Night_Audit"),
    "hr":      ("HR/Payroll", "11_HR_Payroll"),
    "msg":     ("EXTRAs", "13_Messaging"),   # EXTRAs strip me messaging/epabx/extra tools
}
DEFAULT_MODS = ["fo", "res", "na", "finance", "setup", "hk", "inv", "pos", "banq", "hr", "msg"]

def safe_name(s):
    s = re.sub(r"[^\w\- ]+", "", s.replace("&", ""))
    return s.replace(" ", "_")[:36] or "screen"

def find_mdi():
    out = []
    def cb(h, acc):
        if win32gui.GetClassName(h) == "ThunderRT6MDIForm" and win32gui.IsWindowVisible(h):
            acc.append(h)
    win32gui.EnumWindows(cb, out)
    return out[0] if out else None

def force_fg():
    for _ in range(3):
        win32api.keybd_event(win32con.VK_MENU, 0, 0, 0)
        win32api.keybd_event(win32con.VK_MENU, 0, win32con.KEYEVENTF_KEYUP, 0)
        try:
            win32gui.SetForegroundWindow(MDI)
        except Exception:
            pass
        time.sleep(0.35)
        if win32gui.GetForegroundWindow() == MDI:
            return True
    return False

def fix_win():
    if win32gui.IsIconic(MDI):
        win32gui.ShowWindow(MDI, 9); time.sleep(0.8)
        win32gui.ShowWindow(MDI, 3); time.sleep(1.2)
    force_fg()

def child_forms():
    out = set()
    def cb(h, acc):
        if win32gui.GetClassName(h) == "ThunderRT6FormDC" and win32gui.GetWindowText(h) and win32gui.IsWindowVisible(h):
            acc.add(h)
    win32gui.EnumChildWindows(MDI, cb, out)
    return out

def find_strip_btn(caption):
    res = []
    def cb(h, _):
        if win32gui.GetClassName(h) == "Button" and win32gui.IsWindowVisible(h) and win32gui.GetWindowText(h) == caption:
            res.append(h)
    win32gui.EnumChildWindows(MDI, cb, None)
    return res[0] if res else None

def click_center(hwnd):
    r = win32gui.GetWindowRect(hwnd)
    mouse.click(button="left", coords=((r[0] + r[2]) // 2, (r[1] + r[3]) // 2))

def bar_slots():
    """Top bar (y 23..103) ke dark runs = menu buttons."""
    bar = ImageGrab.grab(bbox=(0, 23, 1440, 103)).convert("RGB")
    a = np.asarray(bar).astype(int)
    mask = (a.sum(axis=2) < 330)
    colsum = mask.sum(axis=0)
    runs, cur = [], None
    for x in range(1440):
        on = colsum[x] > 2
        if on and cur is None: cur = [x, x]
        elif on: cur[1] = x
        elif cur:
            if cur[1] - cur[0] >= 10: runs.append(tuple(cur))
            cur = None
    if cur and cur[1] - cur[0] >= 10: runs.append(tuple(cur))
    return runs

def close_form(fh):
    try:
        win32gui.SetForegroundWindow(fh)
    except Exception:
        pass
    time.sleep(0.3)
    win32api.keybd_event(win32con.VK_ESCAPE, 0, 0, 0)
    win32api.keybd_event(win32con.VK_ESCAPE, 0, win32con.KEYEVENTF_KEYUP, 0)
    time.sleep(1.0)
    if not win32gui.IsWindow(fh) or not win32gui.IsWindowVisible(fh):
        return "esc"
    win32gui.PostMessage(fh, win32con.WM_CLOSE, 0, 0)
    time.sleep(1.2)
    # save-prompt? -> 'No' click (kabhi save nahi)
    dlgs = []
    def cb(h, acc):
        if win32gui.GetClassName(h) == "#32770" and win32gui.IsWindowVisible(h):
            acc.append(h)
    win32gui.EnumWindows(cb, dlgs)
    if dlgs:
        for c in _children(dlgs[0]):
            if win32gui.GetClassName(c) == "Button":
                t = win32gui.GetWindowText(c).lower()
                if t.startswith("no") or "don't" in t:
                    win32gui.PostMessage(c, win32con.BM_CLICK, 0, 0)
                    time.sleep(0.8)
                    return "closed-no"
        return "dialog-unclosed"
    return "wm_close"

def _children(h):
    out = []
    def cb(x, acc):
        acc.append(x)
    win32gui.EnumChildWindows(h, cb, out)
    return out

def capture_module(key, limit):
    caption, folder = MODULES[key]
    btn = find_strip_btn(caption)
    if not btn:
        print("[%s] strip button nahi mila (%s)" % (key, caption))
        return 0
    fix_win()
    click_center(btn); time.sleep(1.6)
    force_fg()
    slots = bar_slots()
    print("[%s] menu slots: %s" % (key, slots))
    if not slots:
        g.snap(folder, "Module_%s_Bar" % key)
        print("[%s] bar read fail (screenshot saved)" % key)
        return 0
    done = 0
    for i, (x0, x1) in enumerate(slots):
        if done >= limit:
            break
        fix_win()
        before = child_forms()
        mouse.click(button="left", coords=((x0 + x1) // 2, 62))
        time.sleep(2.2)
        force_fg()
        new = child_forms() - before
        if not new:
            # dropdown popup? (#32768) -> ESC + skip (iss pass me sirf direct screens)
            pop = []
            def cbp(h, acc):
                if win32gui.GetClassName(h) == "#32768":
                    acc.append(h)
            win32gui.EnumWindows(cbp, None)
            if pop:
                win32api.keybd_event(win32con.VK_ESCAPE, 0, 0, 0)
                win32api.keybd_event(win32con.VK_ESCAPE, 0, win32con.KEYEVENTF_KEYUP, 0)
                time.sleep(0.5)
                g.log("C2", caption, "Slot %d = dropdown" % (i + 1), "skipped (pass-2 items)", "", "#32768", "")
            else:
                g.log("C2", caption, "Slot %d click" % (i + 1), "no window", "", "TopBarLib", "")
            continue
        fh = sorted(new)[0]
        title = win32gui.GetWindowText(fh)
        # direct folder path banao (gui_explore.MODULES me ye keys nahi hain)
        sdir = os.path.join(g.SS, folder)
        os.makedirs(sdir, exist_ok=True)
        fname = "C2_%02d_%s" % (i + 1, safe_name(title))
        fpath = os.path.join(sdir, fname + ".png")
        from PIL import ImageGrab as _IG
        _IG.grab().save(fpath)
        print("SHOT:", fpath)
        g.log("C2", caption, "Open menu slot %d" % (i + 1), "window=%r" % title,
              fname + ".png", "TopBarLib slot %d/%d" % (i + 1, len(slots)), "")
        print("  slot %d -> %r" % (i + 1, title))
        how = close_form(fh)
        print("    close:", how)
        done += 1
        if "dialog" in how:
            break
    return done

MDI = None

def main():
    global MDI
    ap = argparse.ArgumentParser()
    ap.add_argument("--mods", default="fo")
    ap.add_argument("--limit", type=int, default=5)
    ap.add_argument("--slots", action="store_true")
    args = ap.parse_args()

    MDI = find_mdi()
    if not MDI:
        print("HMS MDI nahi mila — HMS chalu karo aur login karo pehle.")
        return
    fix_win()

    if args.slots:
        print("current module slots:", bar_slots())
        return

    total = 0
    for k in [m.strip() for m in args.mods.split(",") if m.strip()]:
        if k not in MODULES:
            print("unknown module:", k); continue
        n = capture_module(k, args.limit)
        total += n
        print("[%s] captured %d" % (k, n))
    print("TOTAL captured:", total)

if __name__ == "__main__":
    main()
