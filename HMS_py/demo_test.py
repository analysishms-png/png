import sys
import os
import time

# Make sure we can import HMS_py
sys.path.insert(0, '.')

os.environ["QT_QPA_PLATFORM"] = "offscreen"

from PyQt6.QtWidgets import QApplication
app = QApplication.instance() or QApplication(sys.argv)

# Try login with configured credentials
from HMS_py.ui.shell import LoginDialog, CompanyDialog, MainWindow
from HMS_py.core import company

print("Step 1: Show Login Dialog")
login = LoginDialog()
login.resize(800, 480)
login.show()
app.processEvents()

time.sleep(2)

# Check login result
print("Step 2: Checking login...")
try:
    login.accept()
    print("Login accepted")
except Exception as e:
    print(f"Login accept error: {type(e).__name__}: {str(e)[:200]}")

time.sleep(2)

# If login was accepted, proceed to company selection
print("\nStep 3: Show Company Dialog")
try:
    comp = CompanyDialog("PYADMIN")
    comp.resize(1000, 560)
    comp.show()
    app.processEvents()
    time.sleep(2)
    
    # Select Kanpur-related company
    print("\nStep 4: Trying to select Kanpur company...")
    comp.accept()
    app.processEvents()
    time.sleep(2)
    
    print("\nStep 5: Show Main Window")
    try:
        win = MainWindow("PYADMIN", {"name": "Moon and Mars Resorts", "short": "MMR", "year": company.current_year()})
        win.resize(1200, 750)
        win.show()
        app.processEvents()
        time.sleep(3)
        print("Main window displayed successfully")
    except Exception as e:
        print(f"Error showing main window: {type(e).__name__}: {str(e)[:200]}")
except Exception as e:
    print(f"Error in company selection: {type(e).__name__}: {str(e)[:200]}")

app.quit()
print("\nDemo entry test complete")