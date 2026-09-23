import os, sys, traceback
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
from PyQt6.QtWidgets import QApplication
app = QApplication.instance() or QApplication(sys.argv)
print("APP_OK")
try:
    from HMS_py.ui.finance_masters_ui import open_taxmaster, taxmaster_config
    print("IMPORT_OK")
    cfg = taxmaster_config()
    print("CFG_OK", cfg.title, "fields", len(cfg.fields), "cols", len(cfg.columns))
    from HMS_py.ui.base_master import BaseMasterForm
    form = BaseMasterForm(cfg, None)
    print("FORM_OK")
    rows = cfg.api.list_all()
    print("ROWS", len(rows) if rows is not None else None)
except Exception:
    traceback.print_exc()
    print("FAIL")
    raise SystemExit(2)
print("DONE")
