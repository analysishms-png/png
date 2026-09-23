"""VB6-style Login + Company dialogs verify (headless offscreen):

1. LoginDialog: VB6 title 'User Information', mint bg, maroon labels,
   pale-yellow &Accept/E&xit buttons, real auth flow (SA/KANPUR)
2. CompanyDialog: pink 'Company Information' frame + green caption,
   VB6 grid, &Accept/E&xit/St&ructure Update, selection flow
3. Full chain: login -> company select -> selected dict (login-flow test
   jaisa) — existing test_live_login_flow.py compatible
Screenshots: _qa/vb6_ui/login_vb6.png, company_vb6.png
"""
import os
import io
import sys

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8",
                              errors="replace")
sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from PyQt6.QtWidgets import QApplication, QLabel  # noqa: E402

app = QApplication.instance() or QApplication([])

from HMS_py.ui import shell  # noqa: E402

OUT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\_qa\vb6_ui"
os.makedirs(OUT, exist_ok=True)
errs = []

# ---------- 1. LoginDialog
dlg = shell.LoginDialog()
dlg.show()
app.processEvents()

if dlg.windowTitle() != "User Information":
    errs.append(f"login title: {dlg.windowTitle()!r}")
qss = dlg.styleSheet()
for c in ("#c2e0ce", "#ffffc0"):
    if c not in qss:
        errs.append(f"login qss missing {c}")
# maroon labels + navy title per-widget styles me hain
if "color: #800000;" not in dlg.txtUser.parentWidget().styleSheet() and \
   "#800000" not in (lbl.styleSheet() for lbl in dlg.findChildren(QLabel)).__next__() if False else True:
    pass
_maroon = any("#800000" in l.styleSheet() for l in dlg.findChildren(QLabel))
_navy = any("#0000c0" in l.styleSheet() for l in dlg.findChildren(QLabel))
if not _maroon:
    errs.append("login maroon label missing")
if not _navy:
    errs.append("login navy title missing")
if dlg.btnLogin.text() != "&Accept" or dlg.btnUnLoad.text() != "E&xit":
    errs.append(f"login buttons: {dlg.btnLogin.text()!r}/{dlg.btnUnLoad.text()!r}")
print(f"1. LOGIN: title={dlg.windowTitle()!r}, "
      f"buttons={dlg.btnLogin.text()!r}+{dlg.btnUnLoad.text()!r}, "
      f"db_status={dlg.lblDb.text()[:40]!r}")
dlg.grab().save(os.path.join(OUT, "login_vb6.png"))

# real auth flow (SA/KANPUR — test_live_login_flow jaisa)
dlg.txtUser.setText("SA")
dlg.txtPass.setText("KANPUR")
dlg._do_login()
if dlg.result() != int(dlg.DialogCode.Accepted) and not dlg.user:
    # result check fallback: user set hua?
    pass
if dlg.user != "SA":
    errs.append(f"login flow failed: user={dlg.user!r}, msg={dlg.lblMsg.text()!r}")
else:
    print("2. AUTH: SA/KANPUR -> accepted, user='SA'")
dlg.close()

# wrong password path
d2 = shell.LoginDialog()
d2.txtUser.setText("SA")
d2.txtPass.setText("wrongpass")
d2._do_login()
if d2.user:
    errs.append("wrong password accepted!")
elif not d2.lblMsg.text():
    errs.append("no error message on wrong password")
else:
    print(f"3. AUTH-FAIL path: msg={d2.lblMsg.text()[:40]!r}")
d2.close()

# ---------- 4. CompanyDialog
cd = shell.CompanyDialog("SA")
cd.show()
app.processEvents()
if cd.windowTitle() != "User Information":
    errs.append(f"company title: {cd.windowTitle()!r}")
cqss = cd.styleSheet()
if "#ffffc0" not in cqss:
    errs.append("company qss missing #ffffc0")
# pink frame + green caption: frame widget ke styleSheet me
from PyQt6.QtWidgets import QFrame as _QF, QLabel as _QL
_pink = any("#ffc0ff" in f.styleSheet() for f in cd.findChildren(_QF))
_green = any("#00c000" in l.styleSheet() for l in cd.findChildren(_QL))
if not _pink:
    errs.append("company pink frame missing")
if not _green:
    errs.append("company green caption missing")
if cd.btnLogin.text() != "&Accept" or cd.btnDbUpd.text() != "St&ructure Update":
    errs.append(f"company buttons: {cd.btnLogin.text()!r}/{cd.btnDbUpd.text()!r}")
rows = cd.tbl.rowCount()
hdrs = [cd.tbl.horizontalHeaderItem(i).text()
        for i in range(cd.tbl.columnCount())]
print(f"4. COMPANY: rows={rows}, headers={hdrs}, "
      f"buttons={cd.btnLogin.text()!r}+{cd.btnUnLoad.text()!r}+{cd.btnDbUpd.text()!r}")
if rows < 1:
    errs.append("company grid empty")
if hdrs != ["Company Name", "Short Name", "Current Year"]:
    errs.append(f"headers wrong: {hdrs}")
cd.grab().save(os.path.join(OUT, "company_vb6.png"))

# selection flow (row 0 select -> _do_login -> selected dict)
if rows:
    cd.tbl.selectRow(0)
    cd._do_login()
    if not cd.selected or "name" not in cd.selected:
        errs.append("company selection failed")
    else:
        print(f"5. SELECT: {cd.selected!r}")
cd.close()

if errs:
    print("\nFAILURES:")
    for e in errs:
        print(f"  - {e}")
    sys.exit(1)
print("\nVB6_DIALOGS_OK")
