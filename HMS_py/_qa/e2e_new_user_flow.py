"""E2E: naya user create (editor backend) -> login -> restricted menu -> cleanup.

Headless QA flow (real DB, par test-user DB se delete ho jaata hai):
1. mh.create_user('E2ETST', 'pw', template 'SA') -> UserMast + menuHelp rows
2. auth.check_login('E2ETST', 'pw') -> True
3. Restricted-user semantics: full_access False, sidebar sirf menuHelp modules
4. Cleanup: menuHelp + UserMast rows delete (DB pristine)
"""
import os
import sys

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from HMS_py.core import db, menu_help as mh
from HMS_py.core.auth import check_login

TEST_USER = "E2ETST"
TEST_PW = "e2etest123"


def cleanup():
    mh.delete_user_rights(TEST_USER)
    from HMS_py.core import usermaster
    usermaster.delete(TEST_USER)


def main():
    cleanup()  # pichhla residue
    # 1. create_user (editor backend path)
    res = mh.create_user(TEST_USER, TEST_PW, label="E2E Test User",
                         template_user="SA")
    print(f"1. create_user: {res}")
    assert res["usermast_rows"] == 1
    assert res["menuhelp_rows"] > 300, "SA template se rows copy honi chahiye"

    # 2. login
    ok, msg = check_login(TEST_USER, TEST_PW)
    print(f"2. check_login: ok={ok} msg={msg!r}")
    assert ok, f"login fail: {msg}"
    # galat password
    ok2, msg2 = check_login(TEST_USER, "wrongpw")
    print(f"   wrong pw: ok={ok2} msg={msg2!r}")
    assert not ok2

    # 3. restricted semantics
    assert mh.full_access(TEST_USER) is False, \
        "apne menuHelp rows hone se restricted hona chahiye"
    side = mh.sidebar_sources(TEST_USER)
    print(f"3. restricted: sidebar modules={len(side)} "
          f"(SA ke {len(mh.sidebar_sources('SA'))} me se)")
    assert 0 < len(side) <= 14
    # ek leaf ka right check (SA template = AEDP sab)
    fin = next(s for s in side if s["name"].lower() == "finance")
    groups = mh.menubar_for("Finance", TEST_USER)
    assert groups, "Finance menubar build hona chahiye"
    print(f"   Finance groups: {[g['name'] for g in groups]}")

    # rights filter: leaf rights AEDP (template copy se)
    caps = []
    for g in groups:
        for it in g["items"]:
            caps.append((it["name"], it.get("flag") or "N"))
    leaf_name = next(n for n, f in caps if f == "E")
    r = mh.rights(TEST_USER, leaf_name)
    print(f"   leaf {leaf_name!r} rights={r!r}")
    assert r == "AEDP"

    # 4. UI smoke: editor me naya user dikhe
    from PyQt6.QtWidgets import QApplication
    from HMS_py.ui.user_permissions_ui import UserPermissionsDialog
    app = QApplication.instance() or QApplication(sys.argv)
    dlg = UserPermissionsDialog(user="SA")
    dlg.show()
    users = [dlg.cmb_user.itemText(i) for i in range(dlg.cmb_user.count())]
    assert TEST_USER in users, "naya user editor combo me dikhna chahiye"
    dlg.cmb_user.setCurrentText(TEST_USER)
    assert dlg.tree.topLevelItemCount() > 0
    status = dlg.lbl_status.text()
    print(f"4. editor: {status!r}")
    dlg.close()

    # 5. cleanup + verify
    cleanup()
    n_left = db.query(
        "SELECT COUNT(*) FROM menuHelp WHERE UserName = ?",
        (TEST_USER,))[0][0]
    assert n_left == 0, f"menuHelp rows bache: {n_left}"
    from HMS_py.core import usermaster
    assert not usermaster.exists(TEST_USER)
    # no-rows fallback: bina rows ke user wapas full-access bucket me (VB6
    # semantics) — par UserMast row gayi hai to login hi nahi hoga:
    assert mh.full_access(TEST_USER), "no-rows = full-access fallback"
    ok3, _ = check_login(TEST_USER, TEST_PW)
    assert not ok3, "deleted user login na kare"
    print("5. cleanup: UserMast + menuHelp rows deleted, login blocked")
    print("E2E_OK")


if __name__ == "__main__":
    main()
