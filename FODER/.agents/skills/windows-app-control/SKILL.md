---
name: windows-app-control
description: Control Windows desktop applications (especially VB6 IDE) via pywinauto - open apps, click buttons, read dialogs, detect modal hangs, drive menus, type text, and build EXEs. Use whenever the user asks to open Visual Basic, debug a desktop app visually, click IDE dialogs, identify runtime bugs, or when a command-line compile hangs on a modal dialog. Also covers process management (tasklist/taskkill) and window title polling.
---

# Windows App Control (pywinauto)

VB6 IDE aur baaki Windows desktop apps ko programmatically control karne ka
pattern. pywinauto (installed via `pip install pywinauto`) Windows UI
Automation + Win32 API use karta hai — real windows, real clicks.

## 0. Setup check

```bash
python -c "import pywinauto; print(pywinauto.__version__)"
# Missing ho to: pip install pywinauto
```

## 1. Application launch/connect

```python
from pywinauto import Application, Desktop
import time

# Naya instance launch (blocking dialogs se bachne ke liye timeout ke saath)
app = Application(backend="win32").start(
    r"C:\Program Files (x86)\Microsoft Visual Studio\VB98\VB6.EXE",
    timeout=15)

# Pehle se chal rahe app se connect
app = Application(backend="win32").connect(title_re=".*Microsoft Visual Basic.*", timeout=10)

# Sab visible windows ki list (debugging ke liye)
for w in Desktop(backend="win32").windows():
    print(w.window_text(), w.handle)
```

**Backend choice:** VB6 jaise purane Win32 apps ke liye `backend="win32"`.
WPF/modern apps ke liye `"uia"`. VB6 = hamesha win32.

## 2. Modal dialog handling (VB6 ka #1 hang reason)

VB6 compile/open ke waqt modal dialog dikha de (missing OCX, SourceSafe,
"Keep/Lock" conflicts) to command-line compile hang ho jata hai. Pattern:

```python
def dismiss_dialogs(app, keywords=("OK", "Cancel", "No", "Close", "End")):
    """Sab top-level buttons click karke modal dialogs band karo."""
    for _ in range(10):  # nested dialogs ho sakti hain
        try:
            dlg = app.top_window()
            dlg.set_focus()
            texts = [b.window_text() for b in dlg.descendants(control_type="Button")]
            clicked = False
            for kw in ("Cancel", "No", "OK"):   # Cancel pehle - safer
                for t in texts:
                    if kw.lower() in t.lower():
                        dlg.child_window(title=t, control_type="Button").click()
                        clicked = True
                        time.sleep(1)
                        break
            if not clicked:
                return
        except Exception:
            return
```

**Window-title polling se hang detect:**

```bash
tasklist /V /FI "IMAGENAME eq VB6.EXE" /FO CSV   # window title dikhega
# Title mein dialog name aa gaya (jaise "Microsoft Visual SourceSafe")
# = modal dialog pe stuck hai
```

## 3. VB6 IDE drive karna

```python
# Menu via win32 menu structure (VB6 mein reliable)
app.window(title_re=".*Microsoft Visual Basic.*").menu_select("File->Open Project...")

# Open dialog mein path type + Enter
dlg = app.top_window()
dlg.set_focus()
dlg.child_window(control_id=1152, class_name="Edit").set_edit_text(r"C:\path\Project.vbp")
dlg.child_window(title="&Open", class_name="Button").click()

# Keyboard shortcut route (kabhi-kabhi menus se fast)
dlg.type_keys("^O")            # Ctrl+O
dlg.type_keys("%F4")           # Alt+F4
dlg.type_keys("{VK_F5}")       # F5 run
```

**Controls inspect karna (kya clickable hai):**

```python
dlg = app.top_window()
dlg.print_control_identifiers()   # poora tree dump — labels/ids milenge
```

## 4. Error/bug dialog padhna

```python
# Modal error dialog ka text nikaalo (compile errors, runtime errors)
dlg = app.top_window()
title = dlg.window_text()
body = ""
for st in dlg.descendants(class_name="Static"):
    if st.window_text():
        body += st.window_text() + "\n"
print(f"DIALOG: {title}\nBODY:\n{body}")
# Is text ko parse karke ERROR/FILE/LINE nikaalo - VB6 errors ka format:
# "Compile error: <message>" ya "Run-time error 'NN': <message>"
```

## 5. EXE build via IDE automation (jab CLI /make hang ho)

CLI (`VB6.EXE /make`) modal dialogs pe hang hota hai. UI route:

```python
app = Application(backend="win32").connect(title_re=".*Microsoft Visual Basic.*")
m = app.window(title_re=".*Microsoft Visual Basic.*")
m.menu_select("File->Make HMS.exe...")          # project ke hisaab se naam
dlg = app.top_window(); dlg.set_focus()
dlg.child_window(control_id=1152, class_name="Edit").set_edit_text(r"C:\path\out.exe")
dlg.child_window(title="&Save", class_name="Button").click()
time.sleep(10)                                   # build complete hone do
# Phir modal error dialog check karo (section 4) - na aaye to build success
```

## 6. Safety rules

- Sirf user ki maangi hui app/window ko control karo — random windows click mat karo
- Click se pehle `window_text()` read karke confirm karo ki sahi window hai
- `taskkill /F` sirf tab jab user maane ya hang proof ho
- Admin-required operations (regsvr32 etc.) user se karwao, retry mat karo
- Type karne se pehle focus set karo (`set_focus()`), warna text kahin aur jayega
- VB6 ke "Do you want to save changes" pe: user se poochho save karna hai ya nahi

## 7. Quick recipes

**VB6 open + project load:**
```python
app = Application(backend="win32").start(r"...\VB6.EXE")
time.sleep(3)
app.menu_select("File->Open Project...")
# dialog handle karo (section 3)
```

**Hang diagnosis one-liner:**
```bash
tasklist /V /FI "IMAGENAME eq VB6.EXE" /FO CSV | tail -1
```

**Screen-safe wait helper:**
```python
def wait_window(app, title_re, timeout=15):
    end = time.time() + timeout
    while time.time() < end:
        try:
            w = app.window(title_re=title_re)
            if w.exists():
                return w
        except Exception:
            pass
        time.sleep(1)
    return None
```
