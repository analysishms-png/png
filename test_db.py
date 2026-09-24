"""Test database connection"""
from HMS_py.core.db import load_config, connect

cfg = load_config()
print("Config:", cfg)

try:
    cn = connect(cfg)
    cur = cn.cursor()
    cur.execute("SELECT @@SERVERNAME, DB_NAME()")
    srv, dbn = cur.fetchone()
    print(f"Connected: {srv} / {dbn}")
    cn.close()
except Exception as e:
    print(f"Connect error: {e}")