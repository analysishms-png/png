"""Module walk via Button handles (occlusion-safe shots via PrintWindow).
Usage: hms_walkhandles.py <pid> <strip-text> <folder> [na]
- strip click (handle) -> enumerate topbar buttons -> click each ->
  new MDI-child forms -> PrintWindow shot -> Exit/WM_CLOSE (No on prompt).
- 'na' arg enables Night-Audit blocklist (engine words skipped).
Saves module-wise under screenshots/<folder>, logs to action_log.csv.
Safety: never clicks Save/Delete/Post/Settle/Print/Yes; never types.
"""
import sys, os, time, re, ctypes, datetime
from ctypes import wintypes
from PIL import Image
from pywinauto import Application

# 2026-09-29 FIX: these used to read sys.argv and open the DB/process connection at
# import time (IndexError + side effects on any `import hms_walkhandles`).
# They are now initialised inside main() below.
pid = None
strip_want = None
folder = None
NA_MODE = False

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import gui_explore as g

NA_BLOCK = ("start", "run ", "post", "process", "execute", "audit at",
            "roll", "generate", "year end", "month end", "reverse")
DANGER = ("save", "delete", "post", "settle", "print", "yes", "ok")

app = None
mdi = None
user32 = ctypes.windll.user32
gdi32 = ctypes.windll.gdi32
import win32api
import win32con
import win32gui


def fix_win():
    try:
        if win32gui.IsIconic(mdi.handle):
            win32gui.ShowWindow(mdi.handle, 9)
            time.sleep(0.8)
            win32gui.ShowWindow(mdi.handle, 3)
            time.sleep(1.2)
    except Exception as e:
        print('fix_win:', str(e)[:120])


def fg():
    for _ in range(3):
        try:
            win32api.keybd_event(win32con.VK_MENU, 0, 0, 0)
            win32api.keybd_event(win32con.VK_MENU, 0, win32con.KEYEVENTF_KEYUP, 0)
            user32.SetForegroundWindow(mdi.handle)
        except Exception:
            pass
        time.sleep(0.35)
        try:
            if user32.GetForegroundWindow() == mdi.handle:
                return True
        except Exception:
            pass
    return False


def forms_now():
    out = {}
    for w in mdi.descendants():
        try:
            if w.class_name() == 'ThunderRT6FormDC' and w.window_text().strip():
                out[w.handle] = w.window_text()
        except Exception:
            pass
    return out


def topbar_buttons():
    out = []
    for c in mdi.descendants():
        try:
            if c.class_name() != 'Button':
                continue
            t = c.window_text().strip()
            if not t:
                continue
            r = c.rectangle()
            # topbar zone only: right of strip, above MDI client, not clocks/exit
            if r.left >= 161 and r.top < 160 and r.left < 1700 and 'AM' not in t and 'PM' not in t and '/20' not in t:
                if t in ('Exit',) and r.left > 1700:
                    continue
                out.append((t, c))
        except Exception:
            pass
    # dedupe by text preserving order
    seen, res = set(), []
    for t, c in out:
        if t not in seen:
            seen.add(t)
            res.append((t, c))
    return res


def safe(s):
    s = re.sub(r"[^\w\- ]+", "", (s or "").replace("&", ""))
    return s.replace(" ", "_")[:32] or "scr"


def winshot(hwnd, sub, base):
    rect = wintypes.RECT()
    user32.GetWindowRect(hwnd, ctypes.byref(rect))
    w, h = rect.right - rect.left, rect.bottom - rect.top
    if w < 50 or h < 50:
        return None
    hdc_win = user32.GetWindowDC(hwnd)
    hdc_mem = gdi32.CreateCompatibleDC(hdc_win)
    hbmp = gdi32.CreateCompatibleBitmap(hdc_win, w, h)
    gdi32.SelectObject(hdc_mem, hbmp)
    user32.PrintWindow(hwnd, hdc_mem, 2) or user32.PrintWindow(hwnd, hdc_mem, 0)
    bi = ctypes.create_string_buffer(40)
    ctypes.memmove(bi, b'\x28\x00\x00\x00' + w.to_bytes(4, 'little') + h.to_bytes(4, 'little') + b'\x01\x00\x18\x00' + bytes(24), 40)
    bits = ctypes.create_string_buffer(w * h * 3)
    gdi32.GetDIBits(hdc_mem, hbmp, 0, h, bits, bi, 0)
    img = Image.frombytes('RGB', (w, h), bytes(bits), 'raw', 'BGR').transpose(Image.FLIP_TOP_BOTTOM)
    d = os.path.join(g.SS, sub)
    os.makedirs(d, exist_ok=True)
    fp = os.path.join(d, '%s_%s.png' % (base, datetime.datetime.now().strftime('%Y%m%d_%H%M%S')))
    img.save(fp)
    gdi32.DeleteObject(hbmp)
    gdi32.DeleteDC(hdc_mem)
    user32.ReleaseDC(hwnd, hdc_win)
    return fp


def is_open(w):
    try:
        return user32.IsWindow(w.handle) and user32.IsWindowVisible(w.handle)
    except Exception:
        return False


def close_form(w):
    for b in w.descendants():
        try:
            if b.class_name() in ('Button', 'ThunderRT6CommandButton') and b.window_text().lower() in ('e&xit', 'exit', 'cancel', 'close', 'no'):
                b.click()
                time.sleep(0.9)
                if not is_open(w):
                    return 'exit-btn'
                break
        except Exception:
            pass
    try:
        w.close()
        time.sleep(0.9)
        if not is_open(w):
            return 'wm_close'
    except Exception as e:
        return 'close-err %s' % e
    return 'STUCK'


def safe_click(c):
    # raw win32 click (pywinauto click_input misfires privilege check on 32-bit target)
    r = c.rectangle()
    x, y = (r.left + r.right) // 2, (r.top + r.bottom) // 2
    win32api.SetCursorPos((x, y))
    time.sleep(0.05)
    win32api.mouse_event(win32con.MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0)
    time.sleep(0.05)
    win32api.mouse_event(win32con.MOUSEEVENTF_LEFTUP, 0, 0, 0, 0)
    return 'raw'


def open_button(t, c):
    fg()
    before = forms_now()
    safe_click(c)
    new = {}
    for _ in range(5):
        time.sleep(0.6)
        new = {h: x for h, x in forms_now().items() if h not in before}
        if new:
            break
    return new


def walk_level(btns, tag, depth=0):
    done = 0
    for t, c in btns:
        if NA_MODE and any(b in t.lower() for b in NA_BLOCK):
            g.log("C4", folder, "Blocklist skip: %s" % t, "", "", "safety", "")
            print("   SKIP(NA-block):", repr(t))
            continue
        new = open_button(t, c)
        if not new:
            if depth == 0:
                sub = topbar_buttons()
                fresh = [(x, y) for x, y in sub if x not in [a for a, _ in btns]]
                if fresh:
                    print("   sub-row under %r: %s" % (t, [a for a, _ in fresh]))
                    done += walk_level(fresh, tag + "+sub", depth=1)
                else:
                    g.log("C4", folder, "No window/no-subrow: %s" % t, "", "", "topbar", "")
                    print("   no window/no-subrow:", repr(t))
            else:
                g.log("C4", folder, "No window: %s" % t, "", "", "topbar", "")
                print("   no window:", repr(t))
            continue
        for h, title in sorted(new.items(), key=lambda kv: kv[1]):
            if NA_MODE and any(b in title.lower() for b in NA_BLOCK):
                g.log("C4", folder, "Blocklist skip form: %s" % title, "", "", "safety", "")
                print("   SKIP(NA-block form):", repr(title))
                for w in mdi.descendants():
                    try:
                        if w.handle == h:
                            close_form(w)
                    except Exception:
                        pass
                continue
            fp = None
            for w in mdi.descendants():
                try:
                    if w.handle == h:
                        fp = winshot(h, folder, "C4_%s_%s" % (tag, safe(title)))
                        how = close_form(w)
                        break
                except Exception:
                    pass
            g.log("C4", folder, "Open %s" % t, "window=%r close=%s" % (title, how),
                  os.path.basename(fp) if fp else "", "handle-walk", "")
            print("   ->", repr(title), "close:", how)
            done += 1
    return done


def parse_args(argv):
    """2026-09-29 FIX: argv is no longer read at import time (was breaking
    `import hms_walkhandles` and any tooling that merely loaded the module)."""
    if len(argv) < 4:
        print(__doc__)
        raise SystemExit(2)
    return int(argv[1]), argv[2], argv[3], (len(argv) > 4 and argv[4] == 'na')


def main(argv=None):
    global pid, strip_want, folder, NA_MODE, app, mdi
    argv = list(sys.argv if argv is None else argv)
    pid, strip_want, folder, NA_MODE = parse_args(argv)

    app = Application(backend='win32').connect(process=pid)
    mdi = [w for w in app.windows() if w.class_name() == 'ThunderRT6MDIForm'][0]

    fg()
    fix_win()
    fg()
    strip = None
    for c in mdi.descendants():
        try:
            if c.class_name() == 'Button' and c.window_text() == strip_want:
                strip = c
                break
        except Exception:
            pass
    if not strip:
        print("strip not found:", strip_want)
        return 1
    safe_click(strip)
    time.sleep(0.6)
    safe_click(strip)  # EXTRAs needs double-click; harmless elsewhere
    time.sleep(1.0)
    _btns_now = topbar_buttons()
    if not _btns_now:
        # true rapid double-click (separate singles toggle EXTRAs row off)
        try:
            r = strip.rectangle()
            x, y = (r.left + r.right) // 2, (r.top + r.bottom) // 2
            fg()
            win32api.SetCursorPos((x, y))
            for _ in range(2):
                win32api.mouse_event(win32con.MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0)
                time.sleep(0.05)
                win32api.mouse_event(win32con.MOUSEEVENTF_LEFTUP, 0, 0, 0, 0)
                time.sleep(0.15)
        except Exception as e:
            print('dblclick-err:', str(e)[:100])
        time.sleep(1.4)
    btns = topbar_buttons()
    print("TOPBAR:", [t for t, _ in btns])
    total = walk_level(btns, "L1")
    print("WALK TOTAL:", total)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
