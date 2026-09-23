import os
base = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\ui"
if os.path.exists(base):
    for f in sorted(os.listdir(base)):
        if f.endswith('_ui.py'):
            print(f)