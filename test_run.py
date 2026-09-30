import sys
import os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from HMS_py.core.db import load_config
import json

config = load_config()
print("Configuration loaded:")
print(json.dumps(config, default=str, indent=2))