from pywinauto import Desktop

def safe_print(text):
    try:
        print(text)
    except:
        print(text.encode("ascii", errors="replace").decode("ascii"))

def main():
    # List ALL windows including hidden ones
    windows = Desktop(backend="uia").windows()
    print(f"[ALL WINDOWS] {len(windows)}")
    for w in windows:
        t = w.window_text()
        try:
            rect = w.rectangle()
            safe_print(f"  [{w.handle}] '{t}' @({rect.left},{rect.top})-({rect.right},{rect.bottom}) visible={w.is_visible()}")
        except:
            safe_print(f"  [{w.handle}] '{t}'")

    # Also try win32 backend
    print("\n[WIN32 WINDOWS]")
    windows = Desktop(backend="win32").windows()
    print(f"[WIN32 ALL WINDOWS] {len(windows)}")
    for w in windows:
        t = w.window_text()
        if t:
            safe_print(f"  [{w.handle}] '{t}'")

if __name__ == "__main__":
    main()
