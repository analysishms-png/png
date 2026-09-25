import subprocess, json, time, os, sys, base64, threading

# Win32 MCP client - communicates with win32_mcp_server via stdio
# This script starts the MCP server and sends JSON-RPC commands

def run_mcp_command(cmd, params=None):
    """Send a JSON-RPC command to the win32 MCP server"""
    message = {"jsonrpc": "2.0", "id": 1, "method": cmd, "params": params or {}}
    return json.dumps(message)

# Test: check if win32_mcp_server module is available
try:
    import win32_mcp_server as mcp
    print("win32_mcp_server module: AVAILABLE")
    print(f"  Location: {mcp.__file__}")
except ImportError as e:
    print(f"win32_mcp_server module: NOT FOUND - {e}")

# Check if the MCP server binary exists
server_path = r"C:\HMSRepair\venv-win32mcp\Scripts\python.exe"
server_module = "-m win32_mcp_server"
print(f"\nServer path: {server_path}")
print(f"Server module: {server_module}")
print(f"Exists: {os.path.exists(server_path)}")

# List running HMS processes
print("\nHMS processes:")
result = subprocess.run(["powershell", "-Command", "Get-Process -Name HMS | Select-Object Id, ProcessName"], 
                       capture_output=True, text=True, timeout=10)
print(result.stdout)
