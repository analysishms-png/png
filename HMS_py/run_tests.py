import subprocess
import sys
result = subprocess.run([sys.executable, '-m', 'pytest', 'tests/unit/test_menuhelp_dynamic.py', '-v'], capture_output=True, text=True, cwd='C:/Users/LENOVO/Desktop/serialkey/PROJECT_REPAIR - Copy/HMS_py/HMS_py')
print(result.stdout)
print(result.stderr[:500] if result.stderr else '')
