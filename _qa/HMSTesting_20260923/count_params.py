import ast, os, re, sys

ROOT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py"

def extract_insert_calls(path):
    src = open(path, encoding="utf-8").read()
    tree = ast.parse(src)
    out = []
    for node in ast.walk(tree):
        if not isinstance(node, ast.Call):
            continue
        # look for execute("INSERT ...", (...))
        if len(node.args) < 2:
            continue
        a0 = node.args[0]
        a1 = node.args[1]
        sql = None
        if isinstance(a0, ast.Constant) and isinstance(a0.value, str) and "INSERT" in a0.value.upper():
            sql = a0.value
        elif isinstance(a0, ast.BinOp) and isinstance(a0.left, ast.Constant) and "INSERT" in str(a0.left.value).upper():
            # concatenated strings
            parts = []
            cur = a0
            while isinstance(cur, ast.BinOp):
                if isinstance(cur.right, ast.Constant):
                    parts.append(cur.right.value)
                cur = cur.left
            if isinstance(cur, ast.Constant):
                parts.append(cur.value)
            sql = "".join(reversed(parts))
        if sql is None:
            continue
        # find params tuple/list length
        params_node = a1
        plen = None
        if isinstance(params_node, (ast.Tuple, ast.List)):
            plen = len(params_node.elts)
        markers = sql.count("?")
        if plen is not None and markers != plen:
            out.append((os.path.basename(path), node.lineno, markers, plen, sql[:90]))
    return out

targets = [
    "HMS_py/core/facility_billing.py",
    "HMS_py/core/hall_booking.py",
    "HMS_py/core/pos_sales.py",
    "HMS_py/core/smartcard_ops.py",
    "HMS_py/core/sms_comm.py",
]

all_mismatches = []
for t in targets:
    p = os.path.join(ROOT, t)
    all_mismatches.extend(extract_insert_calls(p))

print(f"Total mismatches in target files: {len(all_mismatches)}")
for f, ln, m, plen, sql in all_mismatches:
    print(f"  {f}:{ln} markers={m} params={plen} | {sql}")

# print full SQL for each mismatch for careful column mapping
print("\n=== FULL SQL + PARAM COUNT ===")
for f, ln, m, plen, _ in all_mismatches:
    p = os.path.join(ROOT, "HMS_py/core/" + f)
    src = open(p, encoding="utf-8").read()
    tree = ast.parse(src)
    for node in ast.walk(tree):
        if isinstance(node, ast.Call) and getattr(node, "lineno", None) == ln and len(node.args) >= 2:
            a0, a1 = node.args[0], node.args[1]
            sql = None
            if isinstance(a0, ast.Constant) and isinstance(a0.value, str):
                sql = a0.value
            elif isinstance(a0, ast.BinOp):
                parts = []
                cur = a0
                while isinstance(cur, ast.BinOp):
                    if isinstance(cur.right, ast.Constant):
                        parts.append(cur.right.value)
                    cur = cur.left
                if isinstance(cur, ast.Constant):
                    parts.append(cur.value)
                sql = "".join(reversed(parts))
            if sql:
                print(f"\n--- {f}:{ln} markers={sql.count('?')} params={len(a1.elts) if isinstance(a1,(ast.Tuple,ast.List)) else '?'} ---")
                print(sql)
