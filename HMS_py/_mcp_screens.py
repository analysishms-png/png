import subprocess, os, sys, json, time, base64

# Use win32 MCP server to capture HMS.exe screenshots
venv_python = r"C:\HMSRepair\venv-win32mcp\Scripts\python.exe"
env = os.environ.copy()
env["WIN32_MCP_TESSERACT_PATH"] = r"C:\Program Files\Tesseract-OCR\tesseract.exe"
env["WIN32_MCP_SECURITY_PROFILE"] = "unrestricted"

qa_dir = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa"
os.makedirs(qa_dir, exist_ok=True)

# Start MCP server
proc = subprocess.Popen(
    [venv_python, "-m", "win32_mcp_server"],
    env=env, stdin=subprocess.PIPE, stdout=subprocess.PIPE,
    stderr=subprocess.PIPE, text=True, bufsize=1
)
time.sleep(1)

# Read init
start = time.time()
while time.time() - start < 3:
    line = proc.stdout.readline()
    if not line:
        continue
    try:
        obj = json.loads(line.strip())
        if "result" in obj and "serverInfo" in obj.get("result", {}):
            print("MCP server ready")
            break
    except:
        pass

def cmd(name, args, timeout=3):
    req = {"jsonrpc": "2.0", "id": 1, "method": "tools/call", "params": {"name": name, "arguments": args}}
    proc.stdin.write(json.dumps(req) + "\n")
    proc.stdin.flush()
    start2 = time.time()
    while time.time() - start2 < timeout:
        line = proc.stdout.readline()
        if not line:
            continue
        try:
            obj = json.loads(line.strip())
            if obj.get("id") == 1:
                return obj
        except:
            pass
    return None

# Capture full screen
print("Capturing full screen...")
r = cmd("capture_screen", {})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    data = json.loads(txt)
    img_data = base64.b64decode(data["data"])
    with open(os.path.join(qa_dir, "kanpur_full_screen.png"), "wb") as f:
        f.write(img_data)
    print(f"Full screen: {len(img_data)} bytes")

# OCR
print("OCR...")
r = cmd("ocr_screen", {})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    data = json.loads(txt)
    ocr = data.get("ocr_text", "") or str(data)
    print(f"OCR text ({len(ocr)} chars): {ocr[:200]}")
    with open(os.path.join(qa_dir, "kanpur_ocr.txt"), "w") as f:
        f.write(ocr)

# UIA inspect
print("UIA inspect...")
r = cmd("uia_inspect_window", {"window_title": "HMS"})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    with open(os.path.join(qa_dir, "kanpur_uia.json"), "w") as f:
        f.write(txt)
    print(f"UIA saved ({len(txt)} chars)")

# Click Finance
print("Clicking Finance...")
r = cmd("click_text", {"text": "Finance"})
if r:
    print(f"Click result: {json.dumps(r)[:150]}")

time.sleep(1)

# Capture after click
print("Capturing after click...")
r = cmd("capture_screen", {})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    data = json.loads(txt)
    img_data = base64.b64decode(data["data"])
    with open(os.path.join(qa_dir, "kanpur_02_Finance.png"), "wb") as f:
        f.write(img_data)
    print(f"Finance: {len(img_data)} bytes")

# OCR after click
r = cmd("ocr_screen", {})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    data = json.loads(txt)
    ocr = data.get("ocr_text", "") or str(data)
    print(f"Finance OCR: {ocr[:200]}")

proc.terminate()
print("Done!")
