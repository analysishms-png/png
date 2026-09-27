"""Bisect: run each batch caption in its own subprocess; print crashers.

Run: python -u _qa/bisect_batch.py
"""
import os
import subprocess
import sys

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, ROOT)

BATCH = [
    'Leave', 'Attendance', 'Loan/Advance', 'Over Time', 'Leave Encashment',
    'Member Master', 'Corporate Member Master', 'Category wise Revenue',
    'Category wise Facility', 'Member Age Wise Revenue',
    'Member Select Category', 'Member Bill Printing', 'Member Assistant',
    'Outstation Member Entry', 'Member Category Change Entry',
    'Member Category Change (Conditional)', 'Member Visit Entry',
    'Member Used Facility Entry', 'Member Renewal Entry',
    'Member Facility Billing', 'Auto Settle Card Balance',
    'InBox', 'OutBox', 'Multiple SMS Type', 'SMS (API)', 'SMS (Scheduled)',
    'SMS (Conditional)', 'SMS Center Settings', 'SMS Environment Settings',
    'Meter Reading', 'User Collection', 'KOT Transfer', 'Token Entry',
    'Table Change Entry', 'Kitchen Closing Stock', 'Issue/Recd. Entry',
    'House Keeping Op.Stock Entry', 'Payment Due Letter Entry',
    'Complain Master', 'Parameter Settings', 'Purchase Parameter',
    'Parameter Setting', 'Company Profile', 'Guest Information',
    'Group Reservation', 'Inhouse Guest Folio', 'User Permissions', 'KOT',
    'Register Wake up Calls', 'Check Out Clearance Screen',
    'Card Registration',
]


def main() -> None:
    from HMS_py.ui import shell
    reg = shell._form_registry()

    def wired(fn):
        return (fn is not None and "coming_soon" not in repr(fn))

    crashers = []
    for cap in BATCH:
        if not wired(reg.get(cap)):
            print("SKIP(not wired):", cap, flush=True)
            continue
        r = subprocess.run(
            [sys.executable, "-u", os.path.join(ROOT, "_qa",
                                                "sweep_one_cap.py"), cap],
            capture_output=True, text=True, timeout=180)
        if r.returncode != 0:
            crashers.append((cap, r.returncode))
            print(f"CRASH({r.returncode}): {cap}", flush=True)
            tail = (r.stdout or "").strip().splitlines()[-2:]
            for t in tail:
                print("   |", t, flush=True)
        else:
            print("ok:", cap, flush=True)
    print()
    print("CRASHERS:", crashers if crashers else "NONE")


if __name__ == "__main__":
    main()
