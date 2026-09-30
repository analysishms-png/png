import os

base = r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\implemented\HMS2526\HMS_REVERSE_ENGINEERING\screenshots'
module = os.path.join(base, '11_HR_Payroll')
files = sorted(os.listdir(module))
print("HR PAYROLL SCREENSHOTS:")
print("=" * 60)
for f in files:
    print(f"  - {f}")