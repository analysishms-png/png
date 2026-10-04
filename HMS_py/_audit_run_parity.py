import importlib.util
import sys
import traceback
import re

ROOT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py"
TOOL = ROOT + r"\tools\vb6_py_file_parity.py"

spec = importlib.util.spec_from_file_location("parity", TOOL)
m = importlib.util.module_from_spec(spec)
spec.loader.exec_module(m)


def probe_verbose(candidates):
    live = {}
    all_live = set()
    try:
        sys.path.insert(0, ROOT)
        from core import db

        rows = db.query(
            "SELECT LOWER(TABLE_NAME) FROM INFORMATION_SCHEMA.TABLES "
            "WHERE TABLE_TYPE='BASE TABLE'"
        )
        all_live = {r[0] for r in rows if r[0]}
        print("stage: live tables =", len(all_live))
        names = {n.lower() for n in candidates if re.fullmatch(r"[A-Za-z_][\w#$]*", n)}
        names |= all_live
        for n in sorted(names):
            if n in all_live:
                try:
                    cnt = db.query(f"SELECT COUNT(*) AS c FROM [{n}]")[0][0]
                except Exception:
                    cnt = None
                live[n] = (True, cnt)
            else:
                live[n] = (False, None)
        print("stage: probe complete, entries =", len(live))
    except Exception:
        traceback.print_exc()
    return live, all_live


m.live_db_probe = probe_verbose
rc = m.main()
print("main rc =", rc)
