import sys
import os

# Setup paths
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py')
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core')

# Load core.db module first
import importlib.util
spec_db = importlib.util.spec_from_file_location('core.db', r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core\db.py')
core_db = importlib.util.module_from_spec(spec_db)
spec_db.loader.exec_module(core_db)

# Now setup HMS_py namespace
HMS_py = type(sys)('HMS_py')
HMS_py.core = core_db
sys.modules['HMS_py'] = HMS_py

# Load other core modules needed
modules_to_load = ['db', 'country', 'state', 'city', 'area', 'narr', 'unit',
                   'guestprof', 'roommaster', 'reservation', 'facility_billing',
                   'member_billing', 'hr_payroll', 'pos', 'inventory']

for mod_name in modules_to_load:
    mod_path = os.path.join(r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core', f'{mod_name}.py')
    spec = importlib.util.spec_from_file_location(f'core.{mod_name}', mod_path)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    HMS_py.core.__dict__[mod_name] = mod
    sys.modules[f'HMS_py.core.{mod_name}'] = mod

# Now use the functions
from core.db import get_vprefix, get_context, next_vno

cn = cn = connect()

print("=== Voucher Prefix Logic ===")
print(f"get_vprefix(): {get_vprefix()")
print(f"get_context(): {get_context()}")

# Test next_vno with different voucher types
print(f"\nnext_vno(Reservation, RC, 2026): {next_vno('Reservation, 'RC', '2026')}")
print(f"next_vno(Expenditure, EXP, 2026): {next_vno('Expenditure, 'EXP', '2026')}")
</parameter
<|repo_path>"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py