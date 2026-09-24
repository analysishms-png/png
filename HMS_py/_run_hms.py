import subprocess, os, sys, json, time, base64, threading

venv_python = r"C:\HMSRepair\venv-win32mcp\Scripts\python.exe"
env = os.environ.copy()
env["WIN32_MCP_TESSERACT_PATH"] = r"C:\Program Files\Tesseract-OCR\tesseract.exe"
env["WIN32_MCP_SECURITY_PROFILE"] = "unrestricted"

proc = subprocess.Popen(
    [venv_python, "-m", "win32_mcp_server"],
    env=env,
    stdin=subprocess.PIPE,
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE,
    text=True,
    bufsize=1
)

# Read initialization
time.sleep(1)
while True:
    line = proc.stdout.readline()
    if not line:
        break
    try:
        obj = json.loads(line.strip())
        if "result" in obj and "capabilities" in obj.get("result", {}):
            print("Server initialized:", obj["result"]["serverInfo"]["name"])
            break
    except:
        pass

def call(name, args):
    req = {"jsonrpc": "2.0", "id": 1, "method": "tools/call", "params": {"name": name, "arguments": args}}
    proc.stdin.write(json.dumps(req) + "\n")
    proc.stdin.flush()
    time.sleep(0.3)
    results = []
    while time.time() < start_time + 5:
        line = proc.stdout.readline()
        if not line:
            break
        try:
            obj = json.loads(line.strip())
            if obj.get("id") == 1:
                return obj
        except:
            pass
    return None

start_time = time.time()

# Test list_windows
print("\n=== Windows ===")
r = call("list_windows", {})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    data = json.loads(txt)
    for w in data.get("windows", []):
        print(f"  {w.get('title','')} pid={w.get('pid','')} x={w.get('x','')} y={w.get('y','')}")

# Focus HMS
print("\n=== Focus ===")
r = call("focus_window", {"window_title": "User Information"})
print("Focus:", json.dumps(r, indent=2)[:200] if r else "None")

# Screenshot
print("\n=== Screenshot ===")
r = call("capture_window", {"window_title": "User Information"})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    data = json.loads(txt)
    img = base64.b64decode(data["data"])
    with open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_hms_login.png", "wb") as f:
        f.write(img)
    print(f"Screenshot: {len(img)} bytes")

# OCR
print("\n=== OCR ===")
r = call("ocr_window", {"window_title": "User Information"})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    data = json.loads(txt)
    ocr = data.get("ocr_text", "") or str(data)
    print("OCR:", ocr[:500])
    with open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_hms_ocr.txt", "w") as f:
        f.write(ocr)

# UIA
print("\n=== UIA ===")
r = call("uia_inspect_window", {"window_title": "User Information"})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    with open(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_hms_uia.txt", "w") as f:
        f.write(txt)
    print("UIA saved:", txt[:300])

# Try fill_field
print("\n=== Fill field ===")
r = call("fill_field", {"label_text": "User Name", "value": "KK"})
print("Fill:", json.dumps(r, indent=2)[:200] if r else "None")

# Try press_key
print("\n=== Enter ===")
r = call("press_key", {"key": "enter"})
print("Enter:", json.dumps(r, indent=2)[:200] if r else "None")

time.sleep(2)

# Check new window
print("\n=== Windows after login ===")
r = call("list_windows", {})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    data = json.loads(txt)
    for w in data.get("windows", [])[:5]:
        print(f"  {w.get('title','')} pid={w.get('pid','')}")

proc.terminate()
print("\n=== Done ===")
