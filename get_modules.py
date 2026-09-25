import os, sys
sys.path.insert(0, os.getcwd())
os.environ["QT_QPA_PLATFORM"] = "offscreen"
from HMS_py.core import menu_help
try:
    rows = menu_help._load_user("kanpur")
    print(f"Total menuHelp rows for kanpur: {len(rows)}")
    modules = {}
    for r in rows:
        mod = r["module"]
        if mod not in modules:
            modules[mod] = []
        modules[mod].append(r)
    for mod, items in sorted(modules.items()):
        print(f"\n=== {mod} ({len(items)} items) ===")
        for item in items:
            print(f"  flag={item['flag']} caption={item['caption_disp']} code={item['code']}")
except Exception as e:
    print(f"Error: {e}")
