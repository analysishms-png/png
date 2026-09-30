import os, sys
PROJECT = os.getcwd()
sys.path.insert(0, os.path.dirname(PROJECT))
from HMS_py.core import db
cn = db.connect()
cur = cn.cursor()
# Top-5 candidate forms ke tables probe (BLOCKED-TBL check pehle)
for t in ["ForexRecv", "Forex", "GroupMast", "MessageIn", "MessageOut",
          "MeterRead", "KOT", "RoomOcc", "RoomMast"]:
    try:
        cur.execute(f"SELECT COUNT(*) FROM {t}")
        print(f"{t}: EXISTS rows={cur.fetchone()[0]}")
    except Exception as e:
        print(f"{t}: ABSENT ({str(e)[:60]})")
cn.close()
