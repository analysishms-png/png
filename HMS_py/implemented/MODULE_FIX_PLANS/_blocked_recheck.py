"""Blocked modules DB feasibility re-check (REMAINING_PRIORITY_PLAN P8).

VB6 modules jo pehle BLOCKED mark the — live DB me tables ab hain ya nahi,
kitni rows hain, python port me reference hai ya nahi.
Run: python MODULE_FIX_PLANS/_blocked_recheck.py
"""
import os
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(ROOT))  # git root (HMS_py package ka parent)
sys.path.insert(0, ROOT)

from HMS_py.core import db  # noqa: E402

# P8 blocked list + partials — VB6 evidence tables per module
CANDIDATES = {
    # Banquet operations (pehle: tables hi nahi)
    "Banquet: HallBooking ops": ["HallBooking", "HallBookingDetail"],
    "Banquet: HallBill billing": ["HallBill", "HallBillDetail"],
    "Banquet: Catering": ["CateringBook", "CateringBookDetail"],
    "Banquet: EventMast": ["EventMast"],
    "Banquet: HallItemCat/Menu": ["HallItemCatMast", "HallMenuItemEntry"],
    "Banquet: HallEstimate": ["HallEstimate"],
    "Banquet: BanqAvailability": ["BanqAvailability"],
    # MemberModule (pehle: 0 rows)
    "Members: MembershipRevMast": ["MembershipRevMast"],
    "Members: MemBill billing": ["MemBill", "MemBill1"],
    "Members: MemVisitEntry": ["MemVisitEntry"],
    "Members: MemRenewalEntry": ["MemRenewalEntry"],
    "Members: MemFacilityBilling": ["MemFacilityBilling"],
    "Members: MemFacilityEntry": ["MemFacilityEntry"],
    "Members: SmartCard ops": ["SmartCardMast", "SmartCardTrans"],
    "Members: MemOutStation": ["MemOutStation"],
    "Members: MemTagadaLetter": ["MemTagadaLetter"],
    "Members: MemCatChng": ["MemCatChngDetail"],
    "Members: MemProposedMemInf": ["MemProposedMemInf"],
    # Other P8 blocked
    "Complaint": ["ComplaintMast", "Complaint"],
    "LostFound": ["LostFound"],
    "Messaging/Inbox": ["messaging"],
    "Payroll attendance": ["Attend", "Attendence"],
    "Payroll salary": ["Salary", "SalCreate"],
    "Payroll loan": ["Loan"],
    "Payroll overtime": ["OverTime"],
    "Payroll leave": ["LeaveNch"],
    "RewardPoints": ["RewardPointParam"],
    "Kitchen stock": ["KClStk", "HKitchenStk"],
    "Token entry": ["TokenEntry"],
    "Denomination": ["Denomination"],
    "PlanToken": ["PlanTokenDetails"],
    "TDS cert/challan": ["TDSChal", "TDSCertificate"],
    "FaAdjust (finance)": ["FaAdjust"],
    "TelCall entry": ["TelCall", "EpabxData"],
    "MeterReading": ["MeterReading"],
    "JobScheduler": ["JobScheduler"],
    "Season calender": ["SeasonCalender"],
}

# Python port coverage: live-table refs in core+ui
py_tables = set()
import re
for base in ("core", "ui"):
    bd = os.path.join(ROOT, base)
    for f in os.listdir(bd):
        if f.endswith(".py"):
            txt = open(os.path.join(bd, f), encoding="utf-8",
                       errors="ignore").read().lower()
            for m in re.finditer(
                    r"\b(?:from|join|into|update)\s+\[?([a-z_][a-z0-9_]*)\]?",
                    txt):
                py_tables.add(m.group(1))


def main():
    cn = db.connect()
    cur = cn.cursor()
    cur.execute("SELECT name FROM sys.tables")
    live = {r[0].lower() for r in cur.fetchall()}

    verdicts = []
    for module, tables in CANDIDATES.items():
        rows_out = []
        any_live = False
        all_zero = True
        all_ported = True
        for t in tables:
            if t.lower() not in live:
                rows_out.append(f"{t}:ABSENT")
                all_ported = False
                continue
            any_live = True
            cur.execute(f"SELECT COUNT(*) FROM [{t}]")
            n = cur.fetchone()[0]
            rows_out.append(f"{t}:{n}")
            if n > 0:
                all_zero = False
            if t.lower() not in py_tables:
                all_ported = False
        if not any_live:
            v = "STILL-BLOCKED (tables absent)"
        elif all_zero:
            v = "STILL-BLOCKED (0 rows)"
        elif all_ported:
            v = "FEASIBLE+PORTED"
        else:
            v = "FEASIBLE (data live, port partial/missing)"
        verdicts.append((module, " | ".join(rows_out), v))
    cn.close()

    print(f"{'MODULE':38s} {'TABLE:ROWS':44s} VERDICT")
    print("-" * 110)
    for m, r, v in verdicts:
        print(f"{m:38s} {r[:44]:44s} {v}")
    counts = {}
    for _, _, v in verdicts:
        key = v.split(" (")[0]
        counts[key] = counts.get(key, 0) + 1
    print("-" * 110)
    print("SUMMARY:", counts)


if __name__ == "__main__":
    main()
