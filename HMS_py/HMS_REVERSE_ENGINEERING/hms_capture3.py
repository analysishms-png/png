"""HMS GUI CAPTURE TOOL v3 — slot walk with robust open-detect (Pass 3).
Slot-1 bhi direct button nikla (dropdown assumption galat thi) — isliye:
  har slot -> click -> 4s tak poll new child windows -> sab capture -> sab close.
Safety: Night Audit blocklist wahi (start/run/post skip); koi Save nahi.
Usage: python hms_capture3.py --mods fo,res,na --limit 6
"""
import os, sys, time, argparse, re
import win32gui, win32api, win32con
import pywinauto.mouse as mouse
from PIL import ImageGrab

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import gui_explore as g
import hms_capture2 as h2

NA_ALLOW = ("report", "gstr", "view", "register", "reconciliation", "list", "day book")
NA_BLOCK = ("start", "run ", "post", "process", "execute", "audit at", "roll", "generate")

def safe(s):
    s = re.sub(r"[^\w\- ]+", "", (s or "").replace("&", ""))
    return s.replace(" ", "_")[:32] or "scr"

def shot(folder, title, tag):
    sdir = os.path.join(g.SS, folder)
    os.makedirs(sdir, exist_ok=True)
    fname = "C3_%s_%s" % (tag, safe(title))
    ImageGrab.grab().save(os.path.join(sdir, fname + ".png"))
    return fname

def robust_close(fh):
    for attempt in range(3):
        try:
            win32gui.SetForegroundWindow(fh)
        except Exception:
            pass
        time.sleep(0.2)
        win32api.keybd_event(win32con.VK_ESCAPE, 0, 0, 0)
        win32api.keybd_event(win32con.VK_ESCAPE, 0, win32con.KEYEVENTF_KEYUP, 0)
        time.sleep(0.7)
        if not win32gui.IsWindow(fh) or not win32gui.IsWindowVisible(fh):
            return "esc"
        win32gui.PostMessage(fh, win32con.WM_CLOSE, 0, 0)
        time.sleep(0.8)
        if not win32gui.IsWindow(fh) or not win32gui.IsWindowVisible(fh):
            return "wm_close"
        # save-prompt -> No
        dlgs = []
        def cb(h, acc):
            if win32gui.GetClassName(h) == "#32770" and win32gui.IsWindowVisible(h):
                acc.append(h)
        win32gui.EnumWindows(cb, dlgs)
        for d in dlgs:
            for c in h2._children(d):
                if win32gui.GetClassName(c) == "Button":
                    bt = win32gui.GetWindowText(c).lower()
                    if bt.startswith("no") or "don" in bt:
                        win32gui.PostMessage(c, win32con.BM_CLICK, 0, 0)
                        time.sleep(0.5)
                        if not win32gui.IsWindowVisible(fh):
                            return "no-dialog"
    return "STUCK"

def allowed(key, title):
    t = (title or "").lower()
    if key != "na":
        return True
    if any(b in t for b in NA_BLOCK):
        return False
    return True  # NA me bhi forms ka title dekh kar blocklist

def capture_slot(mdi, key, folder, si, x0, x1, tag):
    h2.fix_win()
    before = h2.child_forms()
    mouse.click(button="left", coords=((x0 + x1) // 2, 62))
    # 4s tak poll: naya window aaya?
    new = set()
    for _ in range(8):
        time.sleep(0.5)
        h2.force_fg()
        new = h2.child_forms() - before
        if new:
            break
    if not new:
        g.log("C3", folder, "Slot %d" % si, "no window", "", "TopBarLib slot", "")
        return 0
    n = 0
    for fh in sorted(new):
        title = win32gui.GetWindowText(fh)
        if not allowed(key, title):
            g.log("C3", folder, "Blocklist skip: %s" % title, "", "", "safety", "")
            print("   SKIP:", title)
            robust_close(fh)
            continue
        fn = shot(folder, title, tag)
        g.log("C3", folder, "Open slot %d" % si, "window=%r" % title,
              fn + ".png", "TopBarLib slot %d" % si, "")
        print("   ->", repr(title))
        how = robust_close(fh)
        if "STUCK" in how:
            print("   !! stuck:", title)
        n += 1
    return n

def walk_module(key, limit):
    caption, folder = h2.MODULES[key]
    btn = h2.find_strip_btn(caption)
    if not btn:
        print("[%s] strip button missing" % key)
        return 0
    h2.fix_win()
    h2.click_center(btn); time.sleep(1.6)
    h2.force_fg()
    slots = h2.bar_slots()
    if not slots:
        print("[%s] no slots" % key)
        return 0
    print("[%s] slots: %s" % (key, slots))
    done = 0
    for si, (x0, x1) in enumerate(slots):
        if done >= limit:
            break
        tag = "%02d" % (si + 1)
        print(" slot %d..." % (si + 1))
        done += capture_slot(h2.MDI, key, folder, si + 1, x0, x1, tag)
    print("[%s] captured %d" % (key, done))
    return done

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--mods", default="fo")
    ap.add_argument("--limit", type=int, default=6)
    args = ap.parse_args()

    h2.MDI = h2.find_mdi()
    if not h2.MDI:
        print("HMS MDI nahi mila"); return
    h2.fix_win()
    total = 0
    for k in [m.strip() for m in args.mods.split(",") if m.strip()]:
        if k in h2.MODULES:
            total += walk_module(k, args.limit)
    print("PASS3 TOTAL:", total)

if __name__ == "__main__":
    main()
