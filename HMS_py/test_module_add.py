"""Test script for ModuleAdd.bas Python migration - direct test with debugging."""

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
db_path = os.path.join(os.path.dirname(__file__), 'test_module.db')
if os.path.exists(db_path):
    os.remove(db_path)

conn = sqlite3.connect(db_path)

# Create simple tables matching the VB6 schema (using Option without brackets for SQLite)
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

# Verify tables created
cursor = conn.execute("SELECT name FROM sqlite_master WHERE type='table'")
tables = cursor.fetchall()
print(f"Tables created: {tables}")

# Test 1: Simple insert to verify connection works
print("\nTest 1: Simple insert test...")
try:
    conn.execute("INSERT INTO UserModule (OPT1, Option, flag, OutletCode) VALUES (1, 'A', 'A', 'TEST001')")
    conn.commit()
    print("Simple insert: SUCCESS")
    
    # Verify the insert
    cursor = conn.execute("SELECT * FROM UserModule")
    rows = cursor.fetchall()
    print(f"After insert, UserModule rows: {rows}")
except Exception as e:
    print(f"Simple insert ERROR: {e}")
    traceback.print_exc()

# Test 2: Manual execution of the procedure logic step by step
print("\nTest 2: Manual step-by-step procedure execution...")
try:
    # Replicate the beginning of proc_165_0_14cc_ec0
    arg_C = "TestCode"
    arg_10 = 1
    arg_14 = 0
    arg_18 = ""
    arg_1C = ""
    arg_20 = ""
    arg_24 = ""
    arg_28 = 0
    arg_2C = "TEST001"
    
    var_90 = int(arg_10) if arg_10 else 0
    var_C4 = arg_C.strip() if arg_C else ""
    
    print(f"var_90 = {var_90}")
    print(f"var_C4 = '{var_C4}'")
    
    # arg_28 == 0 path
    if arg_28 == 0:
        query = f"SELECT * FROM UserModule WHERE OutletCode = ? AND Option = ''"
        print(f"Executing query: {query}")
        print(f"With param: ('{arg_2C}',)")
        cursor = conn.execute(query, (arg_2C,))
        var_A0 = cursor.fetchall()
        var_D4 = None
        print(f"var_A0 (fetchall): {var_A0}")
        print(f"len(var_A0) = {len(var_A0) if var_A0 else 0}")
    else:
        query = f"SELECT * FROM UserModule WHERE Option = ? AND OPT1 = ? AND Flag != 'N'"
        cursor = conn.execute(query, ("", var_90))
        var_A0 = cursor.fetchall()
        var_D4 = None
    
    # Check if records exist
    records_exist = var_A0 and len(var_A0) > 0
    print(f"Records exist: {records_exist}")
    
    if records_exist:
        print("Records exist, returning 0")
        result = 0
    else:
        print("No records found, continuing with arg_14 logic...")
        # Continue with arg_14 = 0 path
        var_92 = 0
        var_94 = 0
        var_96 = 0
        var_9C = 0
        var_104 = 0
        var_F4 = -1
        
        # arg_14 == 0 path
        if arg_14 == 0:
            # var_1F8 = "SELECT Max(opt2) FROM UserModule WHERE OPT1 = var_90 AND opt2 * 10000 + var_92 * 10000"
            var_1F8 = f"SELECT Max(opt2) FROM UserModule WHERE OPT1 = {var_90}"
            print(f"Executing: {var_1F8}")
            cursor = conn.execute(var_1F8)
            fetch_result = cursor.fetchone()
            print(f"Max(opt2) result: {fetch_result}")
            var_104 = fetch_result[0] if fetch_result and fetch_result[0] else 0
            print(f"var_104 = {var_104}")
            
            # Insert into UserModule
            insert_query = (
                f"INSERT INTO UserModule (OPT1, OPT2, OPT3, OPT4, Code, Option, PARAM_STR, flag, OutletCode) "
                f"VALUES ({var_90}, {var_104}, {var_94}, {var_96}, '{var_C4}', '', 'AEDP', 'A', '{arg_2C}')"
            )
            print(f"Executing insert: {insert_query}")
            try:
                connection_exec = conn.execute(insert_query)
                conn.commit()
                print(f"Insert SUCCESS")
            except Exception as insert_e:
                print(f"Insert ERROR: {insert_e}")
                traceback.print_exc()
                
                # Insert into MenuHelp
                menu_help_query = (
                    f"INSERT INTO MenuHelp (CompCode, UserName, OPT1, OPT2, OPT3, OPT4, Code, Option, Menu_Index, PARAM_STR, Module_Name, flag, ShowInlist, OutletCode) "
                    f"VALUES ('MEM', 'SA', {var_90}, {var_104}, {var_94}, {var_96}, '{var_C4}', '', 0, '', '', 'A', 1, '{arg_2C}')"
                )
                print(f"Executing menu_help: {menu_help_query}")
                try:
                    connection_exec = conn.execute(menu_help_query)
                    conn.commit()
                    print(f"MenuHelp insert SUCCESS")
                except Exception as menu_e:
                    print(f"MenuHelp insert ERROR: {menu_e}")
        
        result = 0  # Success
    
    print(f"Final result: {result}")
    
except Exception as e:
    print(f"ERROR in test step: {e}")
    traceback.print_exc()

# Verify data was inserted
print("\n--- Database state after test ---")
cursor = conn.execute("SELECT COUNT(*) FROM UserModule")
count = cursor.fetchone()[0]
print(f"UserModule records: {count}")

cursor = conn.execute("SELECT COUNT(*) FROM MenuHelp")
count = cursor.fetchone()[0]
print(f"MenuHelp records: {count}")

if count > 0:
    cursor = conn.execute("SELECT flag, Option, PARAM_STR, OutletCode FROM UserModule LIMIT 1")
    row = cursor.fetchone()
    print(f"First UserModule - flag: {row[0]}, Option: {row[1]}, PARAM_STR: {row[2]}, OutletCode: {row[3]}")

cursor = conn.execute("SELECT * FROM UserModule")
rows = cursor.fetchall()
print(f"All UserModule rows: {rows}")

conn.close()

# Clean up
if os.path.exists(db_path):
    os.remove(db_path)

print("\n--- Test completed ---")