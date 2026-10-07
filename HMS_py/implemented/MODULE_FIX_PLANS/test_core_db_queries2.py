import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')

from HMS_py.core import db

# Test mcurstk using the new module
print("=== Testing mcurstk module ===")
from HMS_py.core import mcurstk

cn = db.connect()
try:
    # Test transactions
    txns = mcurstk.mcurstk_transactions(limit=5, cn=cn)
    print(f"Transactions: {len(txns)} rows")
    for t in txns[:3]:
        print(f"  {t['doc_id']} {t['vdate']} {t['item']} Iss={t['qty_iss']} Rec={t['qty_rec']} @ {t['godown_code']}")
    
    # Test balances
    balances = mcurstk.mcurstk_current_balances(limit=5, cn=cn)
    print(f"\nBalances: {len(balances)} rows")
    for b in balances[:5]:
        print(f"  {b['item']} @ {b['godown_code']} = {b['qty_on_hand']}")
finally:
    cn.close()

# Test usermodule1
print("\n=== Testing usermodule1 module ===")
from HMS_py.core import usermodule1

cn = db.connect()
try:
    rows = usermodule1.usermodule1_list(limit=5, cn=cn)
    print(f"User modules: {len(rows)} rows")
    for r in rows:
        print(f"  Code={r['code']}, Option={r['option']}, Flag={r['flag']}, Param={r['param_str']}")
finally:
    cn.close()

# Test sale2log
print("\n=== Testing sale2log module ===")
from HMS_py.core import sale2log

cn = db.connect()
try:
    rows = sale2log.sale2log_list(limit=5, cn=cn)
    print(f"Sale2log: {len(rows)} rows")
    for r in rows:
        print(f"  {r['doc_id']} {r['vdate']} Rest={r['rest_code']} Tax={r['tax_code']} Base={r['base_value']} TaxAmt={r['tax_amt']}")
finally:
    cn.close()