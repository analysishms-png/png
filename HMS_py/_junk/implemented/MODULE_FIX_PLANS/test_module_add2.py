"""Test script for ModuleAdd.bas Python migration - testing both procedures."""

import sqlite3
import sys
import os
import traceback

# Add core to path
sys.path.insert(0, os.path.dirname(__file__))

# Import error handling functions directly
sys.path.insert(0, os.path.join(os.path.dirname(__file__), 'core'))
from error_handling import log_error, standard_error_handler, rollback_transaction

print("error_handling imported successfully")

# Read and execute module_add.py functions directly
with open('core/module_add.py', 'r') as f:
    content = f.read()

# Create namespace and execute, defining error_handling manually
namespace = {
    '__name__': '__main__',
    '__file__': 'module_add.py',
    'log_error': log_error,
    'standard_error_handler': standard_error_handler,
    'rollback_transaction': rollback_transaction,
}
exec(compile(content, 'module_add.py', 'exec'), namespace)

print("module_add.py functions executed successfully")
print("Available functions:", [k for k in namespace.keys() if not k.startswith('_') and callable(namespace[k])])

# Test with a simple SQLite database
print("\n--- Testing with SQLite ---")
db_path = os.path.join(os.path.dirname(__file__), 'test_module2.db')
if os.path.exists(db_path):
    os.remove(db_path)

conn = sqlite3.connect(db_path)

# Create tables
conn.execute('''CREATE TABLE UserModule (
    OPT1 INTEGER,
    OPT2 INTEGER,
    OPT3 INTEGER,
    OPT4 INTEGER,
    Code TEXT,
    Option TEXT,
    PARAM_STR TEXT,
    flag TEXT,
    OutletCode TEXT
)''')

conn.execute('''CREATE TABLE MenuHelp (
    CompCode TEXT,
    UserName TEXT,
    OPT1 INTEGER,
    OPT2 INTEGER,
    OPT3 INTEGER,
    OPT4 INTEGER,
    Code TEXT,
    Option TEXT,
    Menu_Index INTEGER,
    PARAM_STR TEXT,
    Module_Name TEXT,
    flag TEXT,
    ShowInlist INTEGER,
    OutletCode TEXT
)''')

conn.commit()

# Test proc_165_0_14cc_ec0
print("\n=== Test: proc_165_0_14cc_ec0 ===")

# Reset database
conn.execute("DELETE FROM UserModule")
conn.execute("DELETE FROM MenuHelp")
conn.commit()

print("\nTest: arg_14=0 (AEDP), arg_28=0")
result = namespace['proc_165_0_14cc_ec0'](
    arg_C="TestCode",
    arg_10=1,
    arg_14=0,
    arg_18="",
    arg_1C="",
    arg_20="",
    arg_24="",
    arg_28=0,
    arg_2C="OUTLET001",
    connection=conn
)
print(f"Result: {result} (expected: 0)")

cursor = conn.execute("SELECT COUNT(*) FROM UserModule")
count = cursor.fetchone()[0]
print(f"UserModule records: {count}")

# Test proc_165_1_1ef78bc
print("\n=== Test: proc_165_1_1ef78bc ===")

# Reset database
conn.execute("DELETE FROM UserModule")
conn.execute("DELETE FROM MenuHelp")
conn.commit()

# Test with "$" at position 2 (Financial Setup)
print("\nTest: mem_var_1F92228='$XYZ' (Financial Setup)")
result = namespace['proc_165_1_1ef78bc'](
    mem_var_1f92228="$XYZ",
    connection=conn
)
print(f"Result: {result} (expected: 0 or 255)")

cursor = conn.execute("SELECT COUNT(*) FROM UserModule")
count = cursor.fetchone()[0]
print(f"UserModule records after: {count}")

# Test with "L" at position 2 (Front Office Setup)
print("\nTest: mem_var_1F92228='LXYZ' (Front Office Setup)")
conn.execute("DELETE FROM UserModule")
conn.execute("DELETE FROM MenuHelp")
conn.commit()

result = namespace['proc_165_1_1ef78bc'](
    mem_var_1f92228="LXYZ",
    connection=conn
)
print(f"Result: {result} (expected: 0 or 255)")

cursor = conn.execute("SELECT COUNT(*) FROM UserModule")
count = cursor.fetchone()[0]
print(f"UserModule records after: {count}")

# Test with "$" and longer string
print("\nTest: mem_var_1F92228='$$$' (Multiple financial)")
conn.execute("DELETE FROM UserModule")
conn.execute("DELETE FROM MenuHelp")
conn.commit()

result = namespace['proc_165_1_1ef78bc'](
    mem_var_1f92228="$$$",
    connection=conn
)
print(f"Result: {result} (expected: 0 or 255)")

cursor = conn.execute("SELECT COUNT(*) FROM UserModule")
count = cursor.fetchone()[0]
print(f"UserModule records after: {count}")

# Clean up
if os.path.exists(db_path):
    os.remove(db_path)

print("\n--- All tests completed ---")