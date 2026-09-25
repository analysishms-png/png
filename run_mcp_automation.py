import subprocess, json, time, os, sys, base64, threading, io, select

SCREENSHOT_DIR = os.path.join(os.getcwd(), "HMS_py", "_qa", "kanpur_menu_wise")
os.makedirs(SCREENSHOT_DIR, exist_ok=True)

# Start win32 MCP server with proper pipe configuration
server_script = r"C:\HMSRepair\venv-win32mcp\Scripts\python.exe"
server_module = "-m win32_mcp_server"

# Use PIPE and create the process with proper flags
startupinfo = subprocess.STARTUPINFO()
startupinfo.dwFlags |= subprocess.STARTF_USESTDHANDLES

proc = subprocess.Popen(
    [server_script, server_module],
    stdin=subprocess.PIPE,
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE,
    startupinfo=startupinfo,
    bufsize=0
)

def send_cmd(method, params=None):
    """Send JSON-RPC command and read response"""
    msg = {"jsonrpc": "2.0", "id": int(time.time() * 1000000), "method": method, "params": params or {}}
    line = json.dumps(msg) + "\n"
    try:
        proc.stdin.write(line.encode("utf-8"))
        proc.stdin.flush()
    except Exception as e:
        print(f"  WRITE ERROR: {e}")
        return None
    
    # Read response - use select to check if data is available
    timeout = 5
    start = time.time()
    while time.time() - start < timeout:
        try:
            line = proc.stdout.readline()
            if line:
                return json.loads(line.decode("utf-8").strip())
        except Exception:
            pass
        time.sleep(0.1)
    return None

# Initialize
print("Initializing MCP...")
r = send_cmd("initialize", {"protocolVersion": "2024-11-05"})
print(f"Init: {'OK' if r and 'result' in r else 'FAILED'}")

# List windows
print("\n1. Listing windows...")
r = send_cmd("list_windows")
if r:
    print(f"  Result: {'OK'}")
    # Check for HMS window
    if "result" in r:
        for w in r["result"]:
            if isinstance(w, dict) and "HMS" in str(w.get("title", "")):
                print(f"  Found HMS window: {w.get('title')} at {w.get('rect', 'unknown')}")
else:
    print("  FAILED")

# Focus HMS
print("\n2. Focusing HMS window...")
r = send_cmd("focus_window", {"window_title": "HMS"})
print(f"  Focus: {'OK' if r and 'result' in r else 'FAILED'}")

time.sleep(1)

# Take screenshot
print("\n3. Taking HMS window screenshot...")
r = send_cmd("capture_window", {"window_title": "HMS", "format": "png"})
if r and "content" in r:
    content = r["content"][0]
    data = content["data"]
    if isinstance(data, str):
        img_data = base64.b64decode(data)
        path = os.path.join(SCREENSHOT_DIR, "00_startup.png")
        with open(path, "wb") as f:
            f.write(img_data)
        print(f"  Saved: {path} ({len(img_data)} bytes)")
    else:
        path = os.path.join(SCREENSHOT_DIR, "00_startup.png")
        with open(path, "wb") as f:
            f.write(data)
        print(f"  Saved: {path} ({len(data)} bytes)")
else:
    print(f"  Capture failed: {r}")

# Try OCR
print("\n4. Running OCR on HMS window...")
r = send_cmd("ocr_window", {"window_title": "HMS"})
if r and "result" in r:
    result = r["result"]
    if isinstance(result, str):
        print(f"  OCR text: {result[:500]}")
        # Save OCR text
        with open(os.path.join(SCREENSHOT_DIR, "00_startup_ocr.txt"), "w") as f:
            f.write(result)
    else:
        print(f"  OCR result: {str(result)[:500]}")
else:
    print(f"  OCR failed: {r}")

# Try hotkey (Alt+F for Finance)
print("\n5. Testing Alt+F (Finance)...")
r = send_cmd("hotkey", {"keys": ["alt", "f"]})
print(f"  Hotkey: {'OK' if r and 'result' in r else 'FAILED'}")
time.sleep(2)

# Screenshot after navigation
print("\n6. Taking screenshot after navigation...")
r = send_cmd("capture_window", {"window_title": "HMS", "format": "png"})
if r and "content" in r:
    content = r["content"][0]
    data = content["data"]
    if isinstance(data, str):
        img_data = base64.b64decode(data)
        path = os.path.join(SCREENSHOT_DIR, "01_finance.png")
        with open(path, "wb") as f:
            f.write(img_data)
        print(f"  Saved: {path}")
    else:
        path = os.path.join(SCREENSHOT_DIR, "01_finance.png")
        with open(path, "wb") as f:
            f.write(data)
        print(f"  Saved: {path}")

# Try click_text
print("\n7. Testing click_text...")
r = send_cmd("click_text", {"text": "Finance"})
print(f"  Click: {'OK' if r and 'result' in r else 'FAILED'}")

print("\nDone!")
proc.terminate()
proc.wait()
