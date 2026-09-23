"""Per-user menuHelp rights audit (live DB, read-only).

VB6 semantics check:
- sidebar/menubar per user ke APNE rows se banta hai
- Flag V absent, Param_Str A**P/AE*P/***P filtering
- User1 (SA only) ko affect nahi karna chahiye
"""
from collections import Counter
from HMS_py.core import menu_help as mh

USERS = ["SA", "admin", "AMIR", "Abhijit", "Deepak", "POS", "kot", "dev"]


def count_leaves(groups):
    n = 0
    caps = []
    for g in groups:
        for it in g.get("items") or []:
            caps.append(it["name"])
            n += 1 + len(it.get("children") or [])
    return n, caps


def main():
    for u in USERS:
        fa = mh.full_access(u)
        side = mh.sidebar_sources(u)
        total, allcaps = 0, []
        per_mod = {}
        for s in side:
            groups = mh.menubar_for(s["name"], u)
            n, caps = count_leaves(groups)
            per_mod[s["name"]] = n
            total += n
            allcaps.extend(caps)
        flags = Counter()
        for c in allcaps:
            f = mh.flag_for(c, u)
            flags[f] += 1
        # Param_Str distribution for visible E leaves
        params = Counter()
        for c in allcaps:
            row = mh.by_caption(u).get(mh._norm_caption(c))
            if row:
                params[row["param"] or "(null)"] += 1
        print(f"\n=== {u!r} full_access={fa} sidebar={len(side)} "
              f"leaves={total}")
        print("   modules:", per_mod)
        print("   flags:", dict(flags))
        print("   params:", dict(params))

    # spot-check: admin ko 'Voucher Entry' Add right hai? (A**P)
    print("\nSpot checks:")
    print("  admin Voucher Entry can A:", mh.can("admin", "Voucher Entry", "A"))
    print("  admin Voucher Entry can D:", mh.can("admin", "Voucher Entry", "D"))
    print("  admin has Trial Balance row:",
          mh.has_row("admin", "Trial Balance"))
    print("  SA has Trial Balance row:", mh.has_row("SA", "Trial Balance"))
    print("  POS user has 'Payment Receive':",
          mh.has_row("POS", "Payment Receive"))
    print("  kot user sidebar:", [s['name'] for s in mh.sidebar_sources('kot')])


if __name__ == "__main__":
    main()
