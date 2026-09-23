from pathlib import Path
p = Path(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa\HMSTesting_20260922\test_phase1_launch.py")
lines = p.read_text(encoding="utf-8").splitlines(True)
out = []
for i, line in enumerate(lines, 1):
    if i == 76 and line.startswith("        if txt:"):
        out.append("    if txt:\n")
    elif i == 77 and line.startswith("            try:"):
        out.append("        try:\n")
    elif i == 78 and line.startswith("                print"):
        out.append("    " + line[4:] if False else "            print" + line.split("print", 1)[1] if False else "            " + line.strip() + "\n")
    elif i == 79 and line.startswith("            except:"):
        out.append("        except:\n")
    elif i == 80 and line.startswith("                print"):
        out.append("            " + line.strip() + "\n")
    else:
        out.append(line)
p.write_text("".join(out), encoding="utf-8")
print("rewritten")
for i, l in enumerate(p.read_text(encoding="utf-8").splitlines()[73:81], 74):
    print(i, repr(l))
