import os
os.environ['QT_QPA_PLATFORM'] = 'offscreen'
import sys
sys.path.insert(0, r'C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py')

from HMS_py.core import db
from HMS_py.core import mcurstk

cn = db.connect()
try:
    txns = mcurstk.mcurstk_transactions(limit=5, cn=cn)
    print(f"Transactions: {len(txns)} rows")
    for t in txns[:3]:
        print(f"  {t['doc_id']} {t['vdate']} {t['item']} Iss={t['qty_iss']} Rec={t['qty_rec']} @ {t['godown_code']}")
except Exception as e:
    print(f"Error: {e}")
    import traceback
    traceback.print_exc()
finally:
    cn.close()