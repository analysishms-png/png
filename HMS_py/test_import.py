import sys
import os

# Add the project root to path
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

# Try importing key modules
try:
    from HMS_py.ui.login_ui import show_login, LoginDialog
    print("✓ login_ui imported successfully")
except Exception as e:
    print("✗ login_ui import failed: " + str(e))

try:
    from HMS_py.core import auth, company, menu
    print("✓ core imported successfully")
except Exception as e:
    print("✗ core import failed: " + str(e))

try:
    from HMS_py.core.db import load_config
    cfg = load_config()
    print("✓ db loaded: server=" + str(cfg.get('server')) + ", database=" + str(cfg.get('database')))
except Exception as e:
    print("✗ db import failed: " + str(e))

try:
    from HMS_py.ui import theme
    print("✓ theme imported successfully")
except Exception as e:
    print("✗ theme import failed: " + str(e))

print("\nAll import tests complete.")