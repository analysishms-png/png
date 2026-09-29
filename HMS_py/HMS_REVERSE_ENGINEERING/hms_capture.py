"""
HMS GUI CAPTURE TOOL — source-driven, safe, repeatable.
=======================================================
Kaise kaam karta hai (source code se samajh kar):
1. menu_tree_raw.txt (EXTRAS.text ke decompiled menu-builder Proc_165_0_14C1708 se
   extract kiya gaya) padhta hai: ModuleHex|Type|Parent|Caption
   Type: 0=screen, 1=report, 2=other screen, 3=group(header), 4=root
2. Live HMS ki TreeView se items cross-process padhta hai (TVM_GETITEMW + VirtualAllocEx)
3. Source captions ko live tree items se MATCH karta hai — koi andha-click nahi
4. Matched screen/report item pe click + Enter → naya child form khulta hai
5. Window title (VERIFIED evidence) log karke screenshot leta hai → module folder me
6. Form band karta hai (ESC → WM_CLOSE → 'No' on any save-prompt) — kabhi Save nahi

Safety: sirf screens/report viewers kholta hai; koi Save/Post/Run nahi; production DB
sirf SELECT hota hai (forms khulne se). Credentials kabhi log nahi hote.

Usage:
  python hms_capture.py --list-mods
  python hms_capture.py --mods fo --limit 5
  python hms_capture.py --mods fo,res,na --limit 4
  python hms_capture.py --mods setup --type screens
"""
import os, sys, time, argparse, ctypes, struct
from ctypes import wintypes as wt
import win32gui, win32api, win32con
import pywinauto.mouse as mouse

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import gui_explore as g  # snap/log reuse (standard naming + action_log.csv)

user32 = ctypes.windll.user32
kernel32 = ctypes.windll.kernel32

# ---------------- config: source of truth ----------------
MODULES = {  # key -> (topbar index 1..15, screenshot folder, INI caption)
    "finance": (1, "03_Finance", "Finance"),
    "setup":   (2, "02_Main_Setup", "Main Setup"),
    "res":     (3, "04_Reservation", "Reservation"),
    "fo":      (4, "05_Front_Office", "Front Office"),
    "hk":      (5, "06_House_Keeping", "House Keeping"),
    "inv":     (6, "07_Inventory", "Inventory"),
    "pos":     (7, "08_POS", "Point Of Sale"),
    "banq":    (8, "09_Banquet", "Banquet"),
    "na":      (9, "10_Night_Audit", "Night Audit"),
    "hr":      (10, "11_HR_Payroll", "HR & Payroll"),
    "epabx":   (11, "12_EPABX", "EPABX"),
    "msg":     (12, "13_Messaging", "Messaging"),
    "mem":     (13, "14_Members_Management", "Members Mgmt"),
    "sal":     (14, "15_Sales_Marketing", "Sale && Marketing"),
    "mall":    (15, "16_Mall_Management", "Mall Management"),
}

def load_source_menu():
    """menu_tree_raw.txt se per-module caption->type map banao (source evidence)."""
    mod_items = {}
    raw = os.path.join(HERE, "19_VB6_Logic", "menu_tree_raw.txt")
    with open(raw, encoding="utf-8", errors="replace") as f:
        for line in f:
            p = line.strip().split("|")
            if len(p) >= 4:
                mod, typ, parent, cap = p[0].upper(), p[1], p[2], p[3]
                mod_items.setdefault(mod, []).append((int(typ), parent, cap))
    return mod_items

HEX2KEY = {"B":"finance","C":"setup","D":"res","E":"fo","F":"hk","10":"inv","11":"pos",
           "12":"banq","13":"na","14":"hr","15":"epabx","16":"msg","17":"mem","18":"sal","19":"mall"}

# ---------------- win32 helpers ----------------
def find_mdi():
    """Chalu HMS process ka ThunderRT6MDIForm dhundo (visible)."""
    out = []
    def cb(h, acc):
        if win32gui.GetClassName(h) == "ThunderRT6MDIForm" and win32gui.IsWindowVisible(h):
            acc.append(h)
    win32gui.EnumWindows(cb, out)
    return out[0] if out else None

def ensure_max(mdi):
    try:
        if win32gui.IsIconic(mdi):
            win32gui.ShowWindow(mdi, 9); time.sleep(0.8)
        win32gui.ShowWindow(mdi, 3); time.sleep(1.2)
        win32gui.SetForegroundWindow(mdi)
    except Exception:
        pass
    time.sleep(0.5)

def find_tree(mdi):
    out = []
    def cb(h, acc):
        if win32gui.GetClassName(h) == "TreeView20WndClass":
            acc.append(h)
    win32gui.EnumChildWindows(mdi, cb, out)
    return out[0] if out else None

def _norm(s):
    return (s or "").replace("&", "").replace("/", " ").replace("  ", " ").strip().lower()

def _strip_button(mdi, caption):
    """Left-strip (x 0-107) module button by caption [VERIFIED-UI]."""
    found = []
    def cb(h, _):
        if win32gui.GetClassName(h) == "Button" and win32gui.IsWindowVisible(h):
            t = win32gui.GetWindowText(h)
            if t:
                found.append((t, h))
    win32gui.EnumChildWindows(mdi, cb, None)
    want = _norm(caption)
    for t, h in found:
        if _norm(t) == want:
            return h
    for t, h in found:
        n = _norm(t)
        if want and (want in n or n in want):
            return h
    return None

def _mdi_menu_command(mdi, caption):
    """Select an MDI top-level menu item (INI key 9) via WM_COMMAND."""
    try:
        hmenu = win32gui.GetMenu(mdi)
    except Exception:
        return False
    if not hmenu:
        return False
    want = _norm(caption)
    for i in range(win32gui.GetMenuItemCount(hmenu)):
        try:
            info = win32gui.GetMenuItemInfo(hmenu, i, True)
        except Exception:
            continue
        if _norm(info.get("text") or "") == want:
            wid = info.get("wID")
            if wid:
                win32gui.PostMessage(mdi, win32con.WM_COMMAND, wid, 0)
                return True
    return False

def select_module(mdi, caption, idx):
    """FIX 2026-09-29: old code only clicked guessed full-width pixel columns at
    y=+55 (there is no full-width tab strip; CAPTURE_INDEX documents a left strip
    x 0-107). Now: strip button -> MDI menu -> legacy pixel guess as last resort."""
    btn = _strip_button(mdi, caption)
    if btn:
        r = win32gui.GetWindowRect(btn)
        mouse.click(button="left", coords=((r[0] + r[2]) // 2, (r[1] + r[3]) // 2))
        time.sleep(1.4)
        return "strip"
    if _mdi_menu_command(mdi, caption):
        time.sleep(1.4)
        return "menu"
    click_module_tab(mdi, idx)
    return "pixel"

def click_module_tab(mdi, idx):
    r = win32gui.GetWindowRect(mdi)
    n = len(MODULES)
    x = int((r[0] + 60) + (r[2] - r[0] - 120) * (idx - 0.5) / n)
    y = r[1] + 55
    mouse.click(button="left", coords=(x, y))
    time.sleep(1.4)

def child_forms(mdi):
    out = set()
    def cb(h, acc):
        cls = win32gui.GetClassName(h)
        t = win32gui.GetWindowText(h)
        if cls == "ThunderRT6FormDC" and t and win32gui.IsWindowVisible(h):
            acc.add(h)
    win32gui.EnumChildWindows(mdi, cb, out)
    return out

# ---------------- cross-process TreeView reading ----------------
TVIF_TEXT = 0x0001
TVM_GETITEMCOUNT, TVM_GETNEXTITEM, TVM_GETITEMW, TVM_GETITEMRECT = 0x1100, 0x110A, 0x113E, 0x1104
TVGN_ROOT, TVGN_NEXTVISIBLE = 0, 6

def tree_items(tree_hwnd, max_items=400):
    """Live tree ke visible items: [(text, (L,T,R,B))]. 32-bit target, 64-bit python OK."""
    items = []
    pid = wt.DWORD()
    user32.GetWindowThreadProcessId(tree_hwnd, ctypes.byref(pid))
    hproc = kernel32.OpenProcess(0x0038, False, pid.value)  # VM_OP|READ|WRITE
    if not hproc:
        return items
    SIZE = 40 + 1024
    remote = kernel32.VirtualAllocEx(hproc, None, SIZE, 0x3000, 4)
    if not remote:
        kernel32.CloseHandle(hproc); return items
    try:
        def tvi(hitem):
            # 32-bit TVITEMW: mask,hItem,state,stateMask,pszText,cch,iImg,iSel,cChildren,lParam
            buf = ctypes.create_string_buffer(struct.pack("IIIIIiiiii", TVIF_TEXT, hitem, 0, 0,
                                                          remote + 40, 256, 0, 0, 0, 0), 40)
            kernel32.WriteProcessMemory(hproc, remote, buf, 40, None)
            user32.SendMessageW(tree_hwnd, TVM_GETITEMW, 0, remote)
            out = ctypes.create_string_buffer(1024)
            kernel32.ReadProcessMemory(hproc, remote + 40, out, 1024, None)
            return out.raw.decode("utf-16-le").split("\x00")[0]
        def rect_of(hitem):
            r = ctypes.create_string_buffer(16)
            kernel32.WriteProcessMemory(hproc, remote, r, 16, None)
            user32.SendMessageW(tree_hwnd, TVM_GETITEMRECT, 1, remote)
            got = ctypes.create_string_buffer(16)
            kernel32.ReadProcessMemory(hproc, remote, got, 16, None)
            L, T, R, B = struct.unpack("iiii", got.raw)
            pt = wt.POINT(L, T)
            user32.MapWindowPoints(tree_hwnd, 0, ctypes.byref(pt), 1)
            w, hgt = R - L, B - T
            return (pt.x, pt.y, pt.x + w, pt.y + hgt)
        h = user32.SendMessageW(tree_hwnd, TVM_GETNEXTITEM, TVGN_ROOT, 0)
        while h and len(items) < max_items:
            items.append((tvi(h), rect_of(h)))
            h = user32.SendMessageW(tree_hwnd, TVM_GETNEXTITEM, TVGN_NEXTVISIBLE, 0)
    finally:
        kernel32.VirtualFreeEx(hproc, remote, 0, 0x8000)
        kernel32.CloseHandle(hproc)
    return items

def click_rect(r):
    mouse.click(button="left", coords=(int((r[0]+r[2])/2), int((r[1]+r[3])/2)))

def press_enter():
    for f in (0, win32con.KEYEVENTF_KEYUP):
        win32api.keybd_event(win32con.VK_RETURN, 0, f, 0)
    time.sleep(2.6)

def close_form(hwnd):
    """ESC → WM_CLOSE → save-prompt aaye to 'No' (kabhi save nahi)."""
    try:
        win32gui.SetForegroundWindow(hwnd)
    except Exception:
        pass
    time.sleep(0.3)
    win32api.keybd_event(win32con.VK_ESCAPE, 0, 0, 0)
    win32api.keybd_event(win32con.VK_ESCAPE, 0, win32con.KEYEVENTF_KEYUP, 0)
    time.sleep(1.0)
    if not win32gui.IsWindow(hwnd) or not win32gui.IsWindowVisible(hwnd):
        return "esc"
    try:
        win32gui.PostMessage(hwnd, win32con.WM_CLOSE, 0, 0)
    except Exception:
        pass
    time.sleep(1.2)
    # koi prompt?
    dlgs = []
    def cb(h, acc):
        if win32gui.GetClassName(h) == "#32770" and win32gui.IsWindowVisible(h):
            acc.append(h)
    win32gui.EnumWindows(cb, dlgs)
    if dlgs:
        txt = " | ".join(win32gui.GetWindowText(h) for h in dlgs)
        btn = _dialog_button(dlgs[0], ("No", "Don't Save", "Cancel", "OK"))
        _click_dialog_button(btn)
        g.log("CAP", "ClosePrompt", "Dialog on close", txt[:120], "", "ESC/WM_CLOSE", "")
        return "closed-with-dialog"
    return "wm_close"

def _dialog_button(dlg, prefer):
    # FIX 2026-09-29: was `win32gui.EnumChildWindows and _children(dlg) or []`
    # (always truthy function object -> worked by accident, but returned [] when
    # EnumChildWindows was falsy). Now plainly iterates the child handles.
    kids = _children(dlg)
    for want in prefer:
        for c in kids:
            if win32gui.GetClassName(c) == "Button" and want.lower() in win32gui.GetWindowText(c).lower():
                return c
    return None

def _children(h):
    out = []
    def cb(x, acc):
        acc.append(x)
    win32gui.EnumChildWindows(h, cb, out)
    return out

def _click_dialog_button(hwnd):
    if not hwnd:
        return
    win32gui.PostMessage(hwnd, win32con.BM_CLICK, 0, 0)
    time.sleep(0.8)

# ---------------- main capture ----------------
def capture_module(mdi, tree, key, limit, only_type):
    idx, folder, caption = MODULES[key]
    how = select_module(mdi, caption, idx)
    g.log("CAP", "Module " + caption, "Select module (%s)" % how, "", "", "strip/HMENU", "")
    items = tree_items(tree)
    g.log("CAP", "Module " + caption, "Read live tree", "%d items" % len(items), "", "TreeView cross-process", "")
    if not items:
        print("[%s] tree not readable (fallback off)" % key)
        return
    # source expectations: raw me modhex -> type,cap
    hexmod = next((k for k, v in HEX2KEY.items() if v == key), None)
    if hexmod is None:
        print("[%s] no menu-tree hex mapping (source cross-check skipped)" % key)
        src = []
    else:
        src = load_source_menu().get(hexmod, [])
    src_caps = {c.lower(): t for t, _, c in src}
    done = 0
    for text, r in items:
        if done >= limit:
            break
        t = text.strip()
        if not t or t.lower() not in src_caps:
            continue  # sirf source-matched items (groups/root skip)
        typ = src_caps[t.lower()]
        if only_type == "screens" and typ not in (0, 2):
            continue
        if only_type == "reports" and typ != 1:
            continue
        before = child_forms(mdi)
        click_rect(r)
        time.sleep(0.6)
        press_enter()
        new = child_forms(mdi) - before
        if not new:
            g.log("CAP", caption, "Open '%s'" % t, "NO WINDOW (maybe group)", "", "raw type=%d" % typ, "")
            continue
        fh = sorted(new)[0]
        wtitle = win32gui.GetWindowText(fh)
        g.snap(folder, "%s_%s" % (t.replace(" ", "_").replace("/", "_").replace("&", "")[:28], "screen"))
        g.log("CAP", caption, "Open '%s'" % t, "window='%s'" % wtitle,
              "%s_%s.png" % (t.replace(" ", "_")[:28], "screen"),
              "MENU caption match (type=%d)" % typ, "")
        print("[%s] %s -> %s" % (key, t, wtitle))
        close_form(fh)
        done += 1
    print("[%s] captured %d" % (key, done))

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--mods", default="fo")
    ap.add_argument("--limit", type=int, default=4)
    ap.add_argument("--type", default="all", choices=["all", "screens", "reports"])
    ap.add_argument("--list-mods", action="store_true")
    args = ap.parse_args()

    mdi = find_mdi()
    if not mdi:
        print("HMS MDI nahi mila — HMS chalu karo aur login karo.")
        return
    ensure_max(mdi)
    tree = find_tree(mdi)
    if not tree:
        print("TreeView nahi mila!")
        return

    if args.list_mods:
        items = tree_items(tree)
        print("Current module tree (%d visible items):" % len(items))
        for t, r in items:
            print("  ", t)
        return

    keys = [k.strip() for k in args.mods.split(",") if k.strip()]
    for k in keys:
        if k not in MODULES:
            print("unknown module key:", k); continue
        capture_module(mdi, tree, k, args.limit, args.type)

if __name__ == "__main__":
    main()
