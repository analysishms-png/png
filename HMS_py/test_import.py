"""Test importing module_add properly."""

import sqlite3
import sys
import os

# Add core to path
sys.path.insert(0, os.path.dirname(__file__))

# Import module_add properly
import core.module_add as ma

# Create test database
db_path = os.path.join(os.path.dirname(__file__), 'test_import.db')
if os.path.exists(db_path):
    os.remove(db_path)

conn = sqlite3.connect(db_path)
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
print("Testing proc_165_0_14cc_ec0 via proper import...")
result = ma.proc_165_0_14cc_ec0(
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
print(f"Result: {result}")

cursor = conn.execute("SELECT COUNT(*) FROM UserModule")
count = cursor.fetchone()[0]
print(f"UserModule records: {count}")

if count > 0:
    cursor = conn.execute("SELECT flag, Option, PARAM_STR, OutletCode FROM UserModule LIMIT 1")
    row = cursor.fetchone()
    print(f"First row - flag: {row[0]}, Option: {row[1]}, PARAM_STR: {row[2]}, OutletCode: {row[3]}")

conn.close()

if os.path.exists(db_path):
    os.remove(db_path)

print("\nImport test completed successfully")