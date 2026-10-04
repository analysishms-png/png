"""Debug script for ModuleAdd.bas Python migration."""

import sqlite3
import sys
import os

# Add core to path
sys.path.insert(0, os.path.dirname(__file__))

# Import module_add functions directly, bypassing error_handling import issues
with open('core/module_add.py', 'r') as f:
    content = f.read()

# Create a minimal namespace
namespace = {
    '__name__': '__main__',
    '__file__': 'module_add_debug.py',
    'sqlite3': sqlite3,
}

# Execute just the function definitions, not the whole module
# We'll manually test the core logic

print("Testing core logic step by step...")

# Create test database
db_path = os.path.join(os.path.dirname(__file__), 'test_debug.db')
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

# Simulate the procedure logic manually
print("\n=== Manual simulation of proc_165_0_14cc_ec0 ===")

# Step 1: var_90 = CInt(arg_10)
arg_10 = 1
var_90 = int(arg_10) if arg_10 else 0
print(f"var_90 = {var_90}")

# Step 2: var_C4 = Trim(arg_C)
arg_C = "TestCode"
var_C4 = arg_C.strip() if arg_C else ""
print(f"var_C4 = '{var_C4}'")

# Step 3: arg_28 == 0 path
arg_28 = 0
if arg_28 == 0:
    # Execute: "SELECT * FROM UserModule WHERE OutletCode = ? AND Option = ''"
    query = f"SELECT * FROM UserModule WHERE OutletCode = ? AND Option = ''"
    cursor = conn.execute(query, ("TEST001",))
    var_A0 = cursor.fetchall()
    var_D4 = None
    print(f"var_A0 (SELECT result): {var_A0}")
    print(f"len(var_A0) = {len(var_A0) if var_A0 else 0}")
    
    # Check if records exist
    if var_A0 and len(var_A0) > 0:
        print("Records exist - would return 0")
    else:
        print("No records found - continuing...")
        
        # Step 4: arg_14 == 0 path (AEDP)
        arg_14 = 0
        var_92 = 0
        var_94 = 0
        var_96 = 0
        var_9C = 0
        var_104 = 0
        
        # var_1F8 = "SELECT Max(opt2) FROM UserModule WHERE OPT1 = var_90"
        var_1F8 = f"SELECT Max(opt2) FROM UserModule WHERE OPT1 = {var_90}"
        print(f"Executing: {var_1F8}")
        cursor = conn.execute(var_1F8)
        result = cursor.fetchone()
        print(f"Max(opt2) result: {result}")
        var_104 = result[0] if result and result[0] else 0
        print(f"var_104 = {var_104}")
        
        # Step 5: INSERT INTO UserModule
        arg_2C = "TEST001"  # Define arg_2C
        insert_query = (
            f"INSERT INTO UserModule (OPT1, OPT2, OPT3, OPT4, Code, Option, PARAM_STR, flag, OutletCode) "
            f"VALUES ({var_90}, {var_104}, {var_94}, {var_96}, '{var_C4}', '', 'AEDP', 'A', '{arg_2C}')"
        )
        print(f"Executing insert: {insert_query}")
        try:
            conn.execute(insert_query)
            conn.commit()
            print("INSERT SUCCESS")
            
            # Verify
            cursor = conn.execute("SELECT * FROM UserModule")
            rows = cursor.fetchall()
            print(f"UserModule rows after insert: {rows}")
        except Exception as e:
            print(f"INSERT ERROR: {e}")

# Verify final state
print("\n=== Final Database State ===")
cursor = conn.execute("SELECT COUNT(*) FROM UserModule")
count = cursor.fetchone()[0]
print(f"UserModule records: {count}")

cursor = conn.execute("SELECT * FROM UserModule")
rows = cursor.fetchall()
print(f"All UserModule rows: {rows}")

conn.close()

# Clean up
if os.path.exists(db_path):
    os.remove(db_path)

print("\n--- Debug completed ---")