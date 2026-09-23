import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
os.environ['QT_QPA_FONTDIR'] = 'HMS_py/fonts'

import sys
sys.path.insert(0, 'HMS_py')

from PyQt6.QtWidgets import QApplication
from PyQt6.QtTest import QTest
from PyQt6.QtCore import Qt
from HMS_py.ui.theme import apply_theme
from HMS_py.ui.shell import LoginDialog, CompanyDialog, MainWindow

app = QApplication.instance() or QApplication([])
apply_theme(app, 'light')

output_dir = "test_screenshots/organized/auth"
os.makedirs(output_dir, exist_ok=True)

# 1. Login Dialog - Empty
login = LoginDialog()
login.show()
QTest.qWait(300)
login.grab().save(os.path.join(output_dir, "login_empty.png"))
print("✅ login_empty.png")

# 2. Login Dialog - With SA/kanpur (correct field names: txtUser, txtPass)
login.txtUser.setText("SA")
login.txtPass.setText("kanpur")
QTest.qWait(200)
login.grab().save(os.path.join(output_dir, "login_filled.png"))
print("✅ login_filled.png")

# 3. Try login using check_login
from HMS_py.core import auth
from HMS_py.core import db
try:
    # SA password in DB - user said "kanpur" works
    result = auth.check_login("SA", "kanpur")
    print(f"Login SA/kanpur: {result}")
    
    if result[0]:
        # Get company info from Company table
        companies = db.query("SELECT Comp_Name, SName, cyear FROM Company ORDER BY Start_Dt DESC")
        print(f"Companies: {companies}")
        
        # 4. Company Dialog
        company = CompanyDialog("SA")
        company.show()
        QTest.qWait(300)
        company.grab().save(os.path.join(output_dir, "company_dialog.png"))
        print("✅ company_dialog.png")
        
        if companies:
            company_name = companies[0][0] if companies else "Moon and Mars Resorts"
            company_code = companies[0][1] if companies else "MMR"
            year = companies[0][2] if companies else "2026"
            
            # 5. Main Window
            main = MainWindow("SA", {"name": company_name, "short": company_code, "year": year})
            main.show()
            QTest.qWait(500)
            main.grab().save(os.path.join(output_dir, "main_window_logged_in.png"))
            print("✅ main_window_logged_in.png")
            
            # 6. Main Setup Workbench
            from HMS_py.ui.shell import MainSetupWorkbench
            ws = MainSetupWorkbench(user='SA')
            ws.show()
            QTest.qWait(300)
            ws.grab().save(os.path.join(output_dir, "main_setup_workbench.png"))
            print("✅ main_setup_workbench.png")
            
            main.hide()
            ws.hide()
        company.hide()
    else:
        print("Login failed - capturing company dialog anyway")
        company = CompanyDialog("SA")
        company.show()
        QTest.qWait(300)
        company.grab().save(os.path.join(output_dir, "company_dialog.png"))
        print("✅ company_dialog.png")
        company.hide()
        
except Exception as e:
    print(f"Login test error: {e}")
    import traceback
    traceback.print_exc()

login.hide()
print("\n✅ Login flow screenshots complete!")