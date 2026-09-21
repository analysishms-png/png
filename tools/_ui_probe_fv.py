import os, sys
os.environ["QT_QPA_PLATFORM"] = "offscreen"
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, ROOT)
from PyQt6.QtWidgets import QApplication
from PyQt6.QtCore import QTimer
app = QApplication([])

def clos(): [w.close() for w in QApplication.topLevelWidgets()]
t = QTimer(); t.setInterval(400); t.timeout.connect(clos); t.start()

from HMS_py.ui import fa_voucher_ui
names = sys.argv[1:] or ["open_voucher_entry", "open_bank_recon",
                         "open_trial_balance", "open_pnl",
                         "open_balance_sheet", "open_cash_bank_books",
                         "open_bank_register", "open_journal_book",
                         "open_daily_txn_summary"]
for n in names:
    fn = getattr(fa_voucher_ui, n, None)
    assert fn, "missing opener: " + n
    try:
        fn()
        print("OK", n, flush=True)
    except Exception as e:
        print("FAIL", n, type(e).__name__, e, flush=True)
print("RETURNED", flush=True)
