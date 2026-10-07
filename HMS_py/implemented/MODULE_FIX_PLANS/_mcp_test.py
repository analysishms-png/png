import subprocess, os, sys, json, time

venv_python = r"C:\HMSRepair\venv-win32mcp\Scripts\python.exe"
env = os.environ.copy()
env["WIN32_MCP_TESSERACT_PATH"] = r"C:\Program Files\Tesseract-OCR\tesseract.exe"
env["WIN32_MCP_SECURITY_PROFILE"] = "unrestricted"

proc = subprocess.Popen(
    [venv_python, "-m", "win32_mcp_server"],
    env=env, stdin=subprocess.PIPE, stdout=subprocess.PIPE,
    stderr=subprocess.PIPE, text=True, bufsize=1
)
time.sleep(1)

# Read init
start = time.time()
while time.time() < start + 3:
    line = proc.stdout.readline()
    if not line:
        break
    try:
        obj = json.loads(line.strip())
        if "result" in obj:
            print("Server ready:", obj["result"].get("serverInfo", {}))
            break
    except:
        pass

def cmd(name, args):
    req = {"jsonrpc": "2.0", "id": 1, "method": "tools/call", "params": {"name": name, "arguments": args}}
    proc.stdin.write(json.dumps(req) + "\n")
    proc.stdin.flush()
    time.sleep(0.3)
    start2 = time.time()
    while time.time() < start2 + 3:
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

# List windows
print("Listing windows...")
r = cmd("list_windows", {})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    data = json.loads(txt)
    wlist = data.get("windows", [])
    print(f"Windows: {len(wlist)}")
    for w in wlist[:5]:
        print(f"  {w['title']} pid={w['pid']}")

# Capture screen
print("Capturing screen...")
r = cmd("capture_screen", {})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    data = json.loads(txt)
    import base64
    img_data = base64.b64decode(data["data"])
    qa_dir = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa"
    os.makedirs(qa_dir, exist_ok=True)
    with open(os.path.join(qa_dir, "HMS_mcp_screen.png"), "wb") as f:
        f.write(img_data)
    print(f"Screen captured: {len(img_data)} bytes")

# OCR screen
print("OCR...")
r = cmd("ocr_screen", {})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    data = json.loads(txt)
    ocr = data.get("ocr_text", "") or str(data)
    print(f"OCR: {ocr[:300]}")
    with open(os.path.join(qa_dir, "HMS_mcp_ocr.txt"), "w") as f:
        f.write(ocr)

# UIA inspect
print("UIA inspect...")
r = cmd("uia_inspect_window", {"window_title": "HMS"})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    with open(os.path.join(qa_dir, "HMS_uia.json"), "w") as f:
        f.write(txt)
    print("UIA saved")

# Click Finance
print("Clicking Finance...")
r = cmd("click_text", {"text": "Finance"})
if r:
    print(f"Click result: {json.dumps(r)[:200]}")

# Click Main Setup
print("Clicking Main Setup...")
r = cmd("click_text", {"text": "Main Setup"})
if r:
    print(f"Click result: {json.dumps(r)[:200]}")

# Click Reservation
print("Clicking Reservation...")
r = cmd("click_text", {"text": "Reservation"})
if r:
    print(f"Click result: {json.dumps(r)[:200]}")

proc.terminate()
print("Done!")
