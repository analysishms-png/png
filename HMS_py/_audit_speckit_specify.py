"""speckit-specify workflow validation (test).

Checks:
  1. feature.json valid + points to existing feature dir
  2. sequential numbering correct (002 = next after 001)
  3. spec.md has all mandatory sections in template order
  4. zero [NEEDS CLARIFICATION] markers
  5. no implementation vocabulary leaks (tech-stack words)
  6. checklist complete (all items checked)
  7. skills plugin: 10 speckit SKILL.md files with valid frontmatter
     (source .github/skills/ has 10 speckit-* dirs; 11th SKILL.md in
     .agents/skills/ is the pre-existing vb6-python-parity)
  8. specs/001 untouched (no regression from specify run)
Exit 0 = all pass.
"""
import json
import os
import re
import sys

ROOT = os.path.dirname(os.path.abspath(__file__))
fails: list[str] = []


def ok(cond, msg):
    if cond:
        print(f"  PASS  {msg}")
    else:
        fails.append(msg)
        print(f"  FAIL  {msg}")


# 1. feature.json
with open(os.path.join(ROOT, ".specify", "feature.json"), encoding="utf-8") as f:
    feat = json.load(f)
fdir = feat.get("feature_directory", "")
ok(fdir == "specs/002-fdpostchg-room-posting-parity",
   f"feature.json points to 002 dir (got {fdir!r})")
ok(os.path.isdir(os.path.join(ROOT, fdir)), "feature dir exists")

# 2. sequential numbering
specs = [d for d in os.listdir(os.path.join(ROOT, "specs"))
         if os.path.isdir(os.path.join(ROOT, "specs", d))]
ok("001-vb6-parity-baseline" in specs and
   "002-fdpostchg-room-posting-parity" in specs,
   f"specs/ has 001 + 002 (found: {sorted(specs)})")
ok(not any(d.startswith("003") for d in specs),
   "no stray 003 dir created by this run")

# 3. mandatory sections in template order
spec_path = os.path.join(ROOT, fdir, "spec.md")
with open(spec_path, encoding="utf-8") as f:
    spec = f.read()
order = ["## User Scenarios & Testing", "### User Story 1",
         "### Edge Cases", "## Requirements",
         "### Functional Requirements", "### Key Entities",
         "## Success Criteria", "## Assumptions"]
pos = -1
seq_ok = True
for h in order:
    p = spec.find(h)
    if p < 0 or p < pos:
        seq_ok = False
        break
    pos = p
ok(seq_ok, "mandatory sections present in template order")
ok(spec.count("### User Story") >= 2, ">=2 user stories")
ok("**FR-001**" in spec and "FR-" in spec, "FR requirements numbered")
ok("SC-001" in spec, "SC success criteria numbered")
ok(re.search(r"\*\*Given\*\*.*\*\*When\*\*.*\*\*Then\*\*", spec, re.S) is not None,
   "Given/When/Then acceptance scenarios present")

# 4. no clarification markers
ok("[NEEDS CLARIFICATION" not in spec, "zero NEEDS CLARIFICATION markers")

# 5. implementation-vocabulary leak scan (business parity spec)
banned = [r"\bPython\b", r"\bpytest\b", r"\bSQL\b", r"\bSELECT\b",
          r"\bINSERT\b", r"post_room_charge", r"\bPayCharge\b",
          r"\bPyQt\b", r"\bAPI\b", r"\bSQL Server\b", r"\bCREATE TABLE\b"]
leaks = [w for w in banned if re.search(w, spec, re.I)]
ok(not leaks, f"no implementation vocabulary (leaks: {leaks})")

# 6. checklist complete
cl_path = os.path.join(ROOT, fdir, "checklists", "requirements.md")
ok(os.path.isfile(cl_path), "checklists/requirements.md exists")
with open(cl_path, encoding="utf-8") as f:
    cl = f.read()
items = re.findall(r"- \[( |x)\]", cl)
ok(items and all(i == "x" for i in items),
   f"all {len(items)} checklist items checked")

# 7. skills plugin
skills_dir = os.path.join(ROOT, ".agents", "skills")
names = sorted(d for d in os.listdir(skills_dir) if d.startswith("speckit-"))
ok(len(names) == 10, f"10 speckit skills plugged (found {len(names)})")
for n in names:
    p = os.path.join(skills_dir, n, "SKILL.md")
    if not os.path.isfile(p):
        ok(False, f"{n}/SKILL.md exists")
        continue
    with open(p, encoding="utf-8") as f:
        head = f.read(600)
    valid = head.startswith("---") and "name:" in head and "description:" in head
    ok(valid, f"{n} frontmatter valid")

# 8. 001 untouched
with open(os.path.join(ROOT, "specs", "001-vb6-parity-baseline", "spec.md"),
          encoding="utf-8") as f:
    s1 = f.read()
ok("VB6 → Python Migration Baseline" in s1, "specs/001 spec intact")

print()
if fails:
    print(f"RESULT: {len(fails)} FAILED")
    sys.exit(1)
print("RESULT: ALL CHECKS PASSED")
