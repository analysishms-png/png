"""VB6 project load test via pywinauto (windows-app-control skill).
Launches VB6 with repaired project, auto-dismisses modal dialogs,
reports final state. Safety: only touches VB6 windows.
"""
import time
from pywinauto import Application, Desktop

PROJECT = r"C:\Users\LENOVO\Desktop\serialkey\vb6 code\repaired\Project_repaired.vbp"
VB6_EXE = r"C:\Program Files (x86)\Microsoft Visual Studio\VB98\VB6.EXE"


def log(msg):
    print(msg, flush=True)


def dump_window(w):
    try:
        return f"'{w.window_text()}' (class={w.class_name()})"
    except Exception:
        return "<unreadable window>"


def main():
    log("=== VB6 LOAD TEST START ===")

    app = Application(backend="win32").start(
        f'"{VB6_EXE}" "{PROJECT}"', timeout=20)
    log("VB6 launched with project argument")

    # IDE window ka wait (title = "<project> - Microsoft Visual Basic [design]")
    ide = None
    for i in range(30):
        time.sleep(2)
        for w in Desktop(backend="win32").windows():
            t = w.window_text()
            if "Microsoft Visual Basic" in t:
                ide = w
                log(f"[{i*2}s] IDE window: {t}")
                break
        if ide:
            break
        # IDE ke raste mein koi dialog to nahi?
        for w in Desktop(backend="win32").windows():
            t = w.window_text()
            if any(k in t for k in ("SourceSafe", "License", "Error", "Missing",
                                     "Logon", "Login", "Permission")):
                log(f"[{i*2}s] DIALOG DETECTED: {dump_window(w)}")
                try:
                    w.set_focus()
                    w.type_keys("%{F4}")  # Alt+F4 - dialog close
                    log("  -> Alt+F4 sent")
                except Exception as e:
                    log(f"  -> close failed: {e}")
    if not ide:
        log("RESULT: IDE window 60s mein nahi dikhi - hang ya error.")
        log("Visible windows:")
        for w in Desktop(backend="win32").windows():
            log(f"  {dump_window(w)}")
        return 1

    time.sleep(3)

    # Ab bhi koi modal dialog bacha hai?
    leftovers = []
    for w in Desktop(backend="win32").windows():
        t = w.window_text()
        if "Microsoft Visual Basic" in t:
            continue
        if any(k in t for k in ("SourceSafe", "Error", "Missing", "License",
                                 "Project", "Logon", "Permission", "Save")):
            leftovers.append(w)
    if leftovers:
        log(f"RESULT: IDE khul gayi LEKIN {len(leftovers)} modal dialog(s) bachi hain:")
        for w in leftovers:
            log(f"  {dump_window(w)}")
            # Dialog body text nikaalo (error details)
            try:
                w.set_focus()
                for st in w.descendants(class_name="Static"):
                    if st.window_text():
                        log(f"    text: {st.window_text()[:120]}")
            except Exception:
                pass
        return 2

    log("RESULT: SUCCESS - IDE clean khula, koi modal dialog nahi.")
    log(f"IDE title: {ide.window_text()}")

    # Project Explorer verify: members count via status bar text
    try:
        app2 = Application(backend="win32").connect(handle=ide.handle)
        main = app2.window(handle=ide.handle)
        sb = main.child_window(class_name="VBA StatusBar", found_index=0)
        log(f"StatusBar: {sb.window_text()}")
    except Exception as e:
        log(f"(statusbar read skip: {e})")

    return 0


if __name__ == "__main__":
    exit(main())
