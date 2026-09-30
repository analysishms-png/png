import os
import sys

# Add HMS_py to path
sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'HMS_py'))

print("Python path entries:")
for p in sys.path:
    print(f"  {p}")

print("\nTrying imports from HMS_py...")

# Try importing core
try:
    from core import db, auth
    print("✓ core.db and core.auth imported successfully")
except Exception as e:
    print(f"✗ core import failed: {type(e).__name__}: {e}")

# Try importing ui
try:
    from ui import login_ui, theme
    print("✓ ui.login_ui and ui.theme imported successfully")
except Exception as e:
    print(f"✗ ui import failed: {type(e).__name__}: {e}")

# Try importing main
try:
    from main import main
    print("✓ main.py imported successfully")
except Exception as e:
    print(f"✗ main import failed: {type(e).__name__}: {e}")

# Try running the app flow partially
try:
    from HMS_py.core.db import load_config
    cfg = load_config()
    print(f"✓ DB config loaded: server={cfg.get('server')}, database={cfg.get('database')}")
except Exception as e:
    print(f"✗ DB config failed: {type(e).__name__}: {e}")