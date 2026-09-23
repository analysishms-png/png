import json, collections
p = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa\HMSTesting_20260923\soon_flag_map.json"
rows = json.load(open(p, encoding="utf-8"))
print("total SOON", len(rows))
# unique captions by flag
byflag = collections.defaultdict(list)
for r in rows:
    f = r.get("mh_flag") or "None"
    byflag[f].append(r)
for f in ("E","R","N","V","None"):
    caps = sorted({r["caption"] for r in byflag[f]})
    print(f"\nFLAG={f} n={len(byflag[f])} unique={len(caps)}")
    for c in caps:
        print(" ", repr(c))
