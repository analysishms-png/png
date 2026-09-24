import subprocess, os, sys, json, time, base64

venv_python = r"C:\HMSRepair\venv-win32mcp\Scripts\python.exe"
env = os.environ.copy()
env["WIN32_MCP_TESSERACT_PATH"] = r"C:\Program Files\Tesseract-OCR\tesseract.exe"
env["WIN32_MCP_SECURITY_PROFILE"] = "unrestricted"

qa_dir = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa"
os.makedirs(qa_dir, exist_ok=True)

proc = subprocess.Popen(
    [venv_python, "-m", "win32_mcp_server"],
    env=env, stdin=subprocess.PIPE, stdout=subprocess.PIPE,
    stderr=subprocess.PIPE, text=True, bufsize=1
)

# Read init
print("Waiting for MCP server...")
start = time.time()
while time.time() - start < 5:
    line = proc.stdout.readline()
    if not line:
        continue
    try:
        obj = json.loads(line.strip())
        if "result" in obj and "serverInfo" in obj.get("result", {}):
            print("MCP server ready:", obj["result"]["serverInfo"]["name"])
            break
    except:
        pass

def send_cmd(name, args, timeout=5):
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

# Test list_windows
print("\n1. List windows...")
r = send_cmd("list_windows", {})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    data = json.loads(txt)
    wlist = data.get("windows", [])
    print(f"   Found {len(wlist)} windows")
    for w in wlist[:5]:
        print(f"   - {w['title']} (pid={w['pid']})")

# Test capture_screen
print("\n2. Capture screen...")
r = send_cmd("capture_screen", {})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    data = json.loads(txt)
    img_data = base64.b64decode(data["data"])
    with open(os.path.join(qa_dir, "HMS_screen.png"), "wb") as f:
        f.write(img_data)
    print(f"   Captured {len(img_data)} bytes")

# Test OCR
print("\n3. OCR screen...")
r = send_cmd("ocr_screen", {})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    data = json.loads(txt)
    ocr = data.get("ocr_text", "") or str(data)
    print(f"   OCR text ({len(ocr)} chars): {ocr[:200]}")

# Test UIA
print("\n4. UIA inspect...")
r = send_cmd("uia_inspect_window", {"window_title": "HMS"})
if r and "result" in r:
    txt = r["result"]["content"][0]["text"]
    with open(os.path.join(qa_dir, "HMS_uia.json"), "w") as f:
        f.write(txt)
    print(f"   UIA saved ({len(txt)} chars)")

# Test click_text
print("\n5. Click Finance...")
r = send_cmd("click_text", {"text": "Finance"})
if r:
    print(f"   Result: {json.dumps(r)[:150]}")

print("\n6. Click Main Setup...")
r = send_cmd("click_text", {"text": "Main Setup"})
if r:
    print(f"   Result: {json.dumps(r)[:150]}")

print("\n7. Click Reservation...")
r = send_cmd("click_text", {"text": "Reservation"})
if r:
    print(f"   Result: {json.dumps(r)[:150]}")

print("\n=== MCP testing complete ===")
proc.terminate()
