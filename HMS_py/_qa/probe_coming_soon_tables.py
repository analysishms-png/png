"""Probe live DB for COMING_SOON candidate form tables.

VB6 parity: VB6_VS_PYTHON_FILE_BY_FILE.txt Section A (COMING_SOON bucket).
Rule (vb6-python-parity skill): schema probe FIRST — absent table = BLOCKED-TBL.
Read-only: SELECT COUNT(*) only. No writes.
"""
import os, sys

sys.path.insert(0, os.path.dirname(os.getcwd()))  # parent of HMS_py (package = this dir)
sys.path.insert(0, os.getcwd())

from HMS_py.core import db  # noqa: E402

CANDIDATES = {
    # form -> tables it needs (VB6 evidence inline SQL)
    "HRoomCheckOutClearance (Check Out Clearance Screen)": ["RoomOcc", "Enviro"],
    "FrmRevMergeCharge (Reverse Transfer Room)": ["RoomOcc", "PayCharge", "GuestFolio"],
    "RsKOTTransfer (KOT Transfer)": ["KOT", "Sale", "Sale1"],
    "frmMenuItemCopy (Menu Item Copy)": ["ItemMast", "ItemCatMast"],
    "FrmInc (Inconsistency Check)": ["GuestFolio", "RoomOcc", "PayCharge", "FolioLog"],
    "FrmSMSMultiType (Common SMS)": ["SMSLog", "SMSType", "GuestProf"],
    "FdLookUpRoomNo (Display Rack)": ["RoomMast", "RoomOcc"],
    "FrmForExRec (Forex Receive Entry)": ["ForexRecv", "ForexReceipt"],
}


def main() -> int:
    cn = db.connect()
    cur = cn.cursor()
    for form, tables in CANDIDATES.items():
        verdicts = []
        for t in tables:
            try:
                cur.execute(f"SELECT COUNT(*) FROM [{t}]")
                n = cur.fetchone()[0]
                verdicts.append(f"{t}=OK({n})")
            except Exception as exc:
                msg = str(exc).split("]")[-1].strip()[:40]
                verdicts.append(f"{t}=ABSENT({msg})")
        print(f"{form}\n    " + "  ".join(verdicts))
    cn.close()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
