import os
import sys
sys.path.insert(0, os.getcwd())
os.environ["QT_QPA_PLATFORM"] = "offscreen"
from HMS_py.ui.shell import run_flow
run_flow()