"""Debug: VB6 ko end karke fresh run, login form ka control tree dump karo."""
import time
from pywinauto import Application, Desktop

VB6_EXE = r"C:\Program Files (x86)\Microsoft Visual Studio\VB98\VB6.EXE"
PROJECT = r"C:\Users\LENOVO\Desktop\serialkey\vb6 code\repaired\Project_repaired.vbp"


def log(m):
    print(m, flush=True)


def wins():
    try:
        return Desktop(backend="win32").windows()
    except Exception:
        return []


def find(pred):
    for w in wins():
        try:
            if pred(w):
                return w
        except Exception:
            continue
    return None


# STEP 1: agar IDE khuli hai to uska state dekho
ide = find(lambda x: "Microsoft Visual Basic" in x.window_text())
if ide:
    log(f"IDE current state: {ide.window_text()}")
    if "[break]" in ide.window_text() or "[run]" in ide.window_text():
        app = Application(backend="win32").connect(handle=ide.handle)
        w = app.window(handle=ide.handle)
        try:
            w.menu_select("Run->End")
            log("Run->End sent")
        except Exception as e:
            log(f"menu fail: {e}")
        time.sleep(3)
    log(f"IDE ab: {find(lambda x: 'Microsoft Visual Basic' in x.window_text()).window_text()}")
else:
    Application(backend="win32").start(f'"{VB6_EXE}" "{PROJECT}"', timeout=25)
    time.sleep(8)

# STEP 2: fresh run
ide = find(lambda x: "Microsoft Visual Basic" in x.window_text() and x.is_enabled())
app = Application(backend="win32").connect(handle=ide.handle)
w = app.window(handle=ide.handle)
w.set_focus()
time.sleep(2)
w.type_keys("^({F5})", pause=0.05)
log("F5 sent")

# STEP 3: login form ka wait + full control dump
for i in range(20):
    time.sleep(2)
    login = find(lambda x: x.window_text() == "Authentication Window")
    if login:
        log(f"[{i*2}s] LOGIN FORM MILA - control tree:")
        app_l = Application(backend="win32").connect(handle=login.handle)
        lw = app_l.window(handle=login.handle)
        lw.print_control_identifiers()
        break
else:
    log("login form nahi mila; windows with 'Auth' or 'HMS':")
    for x in wins():
        t = x.window_text()
        if "Auth" in t or "HMS" in t:
            log(f"  {t} ({x.class_name()})")
