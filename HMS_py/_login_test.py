import os, sys
PROJECT = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.dirname(PROJECT))
from HMS_py.core import auth
ok, msg = auth.check_login("SA", "KANPUR")
print("LOGIN SA/KANPUR ->", ok, "|", msg)
ok2, msg2 = auth.check_login("SA", "wrongpass")
print("LOGIN SA/wrong  ->", ok2, "|", msg2)
