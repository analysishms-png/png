from pywinauto import Desktop

windows = Desktop(backend="uia").windows()
for w in windows:
    t = w.window_text()
    if t and t not in ("Taskbar",):
        # Replace problematic chars
        safe = t.encode("ascii", errors="replace").decode("ascii")
        print(f"  Window: {safe}")
