from pywinauto import Desktop

def safe_print(text):
    try:
        print(text)
    except:
        print(text.encode("ascii", errors="replace").decode("ascii"))

def main():
    # List ALL windows including hidden ones using win32 backend
    windows = Desktop(backend="win32").windows()
    print(f"[WIN32 ALL WINDOWS] {len(windows)}")

    # Filter for HMS-related windows
    hms_related = []
    for w in windows:
        t = w.window_text()
        if t and ("HMS" in t or "hms" in t.lower() or "Company" in t or "Login" in t or "Database" in t):
            hms_related.append(w)
            try:
                rect = w.rectangle()
                safe_print(f"  [{w.handle}] '{t}' @({rect.left},{rect.top})-({rect.right},{rect.bottom})")
            except:
                safe_print(f"  [{w.handle}] '{t}'")

    print(f"\n[HMS RELATED] {len(hms_related)}")

    # Also check for any dialog windows
    print("\n[DIALOG WINDOWS]")
    for w in windows:
        t = w.window_text()
        if t and ("OK" in t or "Cancel" in t or "Error" in t or "Warning" in t or "Information" in t):
            safe_print(f"  [{w.handle}] '{t}'")

    # Check for any windows with "Database" or "Company" in title
    print("\n[DATABASE/COMPANY WINDOWS]")
    for w in windows:
        t = w.window_text()
        if t and ("Database" in t or "Company" in t):
            safe_print(f"  [{w.handle}] '{t}'")

if __name__ == "__main__":
    main()
