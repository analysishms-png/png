# -*- coding: utf-8 -*-
"""
EXTRAS.text ke saare VB6 objects (351) ka structure + hamare pipeline ke modules:
- Object name + type (Module/Report/Print/Dialog/Form...)
- Har object ke andar ke Subs/Functions (count + important names)
- Hamari Python pipeline ka module structure
Output: MODULE_STRUCTURE.md + MODULE_STRUCTURE.txt
"""
import re
from collections import defaultdict

lines = open("EXTRAS.text", encoding="utf-8", errors="ignore").read().splitlines()

# ---------------- VB6 objects parse ----------------
objects = []                      # list of dicts
cur = None
sub_re = re.compile(r"^\s*(?:Public |Private |Friend )?(?:Sub|Function)\s+(\w+)")

for ln in lines:
    m = re.match(r"^'Object:\s*(\w+)", ln)
    if m:
        if cur:
            objects.append(cur)
        cur = {"name": m.group(1), "subs": [], "lines": 0}
        continue
    if cur is not None:
        cur["lines"] += 1
        sm = sub_re.match(ln)
        if sm:
            cur["subs"].append(sm.group(1))
if cur:
    objects.append(cur)

# de-dup (kuch objects repeat ho sakte hain)
seen = {}
for o in objects:
    if o["name"] not in seen:
        seen[o["name"]] = o
    else:
        seen[o["name"]]["subs"].extend(o["subs"])
        seen[o["name"]]["lines"] += o["lines"]
objects = sorted(seen.values(), key=lambda o: o["name"].lower())

# ---------------- Type classification ----------------
def obj_type(name):
    n = name.lower()
    if n.startswith("mdl"):
        return "Standard Module (.bas)"
    if n.startswith(("rrep", "rfrm", "rinvent", "rpos", "rfa", "rhall", "rmember", "rfom", "rhouse", "rpayroll", "rtel", "rreserv")):
        return "Report Viewer Form"
    if n.startswith(("p", "pr")) and re.match(r"^p[A-Z]", name):
        return "Print Object (Bill/Slip)"
    if n.endswith("dialog"):
        return "Dialog Form"
    if n.startswith(("rs", "rrs", "res")) and not n.startswith("rest"):
        return "Recordset/Display Class"
    if n.startswith(("frm", "form")):
        return "Form"
    if n.startswith(("mem", "mnu", "sal", "scrd")):
        return "Menu/Form (membership/other)"
    return "Form/Class (other)"

groups = defaultdict(list)
for o in objects:
    groups[obj_type(o["name"])].append(o)

# ---------------- Report markdown ----------------
L = []
A = L.append
A("# MODULE STRUCTURE — EXTRAS.text (VB6) + Pipeline")
A("")
A(f"**Total VB6 objects: {len(objects)}** | Sources: `EXTRAS.text` ('Object:' markers) ")
A("")
A("---")
A("")

# Section 1: VB6 object types
A("## 1. VB6 Objects by Type")
A("")
A("| Type | Count |")
A("|---|---:|")
for t in sorted(groups, key=lambda t: -len(groups[t])):
    A(f"| {t} | {len(groups[t])} |")
A("")

# Section 2: per-type listing with subs (summary table)
A("## 2. Objects Summary (name + size + sub count)")
A("")
for t in sorted(groups, key=lambda t: -len(groups[t])):
    A(f"### {t} ({len(groups[t])})")
    A("")
    A("| Object | Lines | Subs/Functions |")
    A("|---|---:|---:|")
    for o in sorted(groups[t], key=lambda o: o["name"].lower()):
        n = len(set(o["subs"]))
        A(f"| `{o['name']}` | {o['lines']} | {n} |")
    A("")

# Section 2b: SAARE Sub/Function names per object
A("## 2b. Saare Subs/Functions (har object ke saare naam)")
A("")
A("Format: **object** (lines, N subs) → comma-separated sub/function names.")
A("")
for t in sorted(groups, key=lambda t: -len(groups[t])):
    A(f"### {t} ({len(groups[t])})")
    A("")
    for o in sorted(groups[t], key=lambda o: o["name"].lower()):
        subs = sorted(set(o["subs"]))
        A(f"**`{o['name']}`** ({o['lines']} lines, {len(subs)} subs)")
        A("")
        if subs:
            # readability: 4 subs per line, backticked
            for i in range(0, len(subs), 4):
                A("- " + ", ".join(f"`{s}`" for s in subs[i:i+4]))
        else:
            A("- (no subs/functions)")
        A("")

# Section 3: report -> Sub mapping summary (menu handlers)
A("## 3. Report-Menu Handlers (reports se jude Subs)")
A("")
A("### 3a. Known Menu Handlers (inhi se saari 231 reports trigger hoti hain)")
A("")
KNOWN_MENUS = [
    ("MatRep_Click", "Material > Reports"), ("MatStat_Click", "Material > Statistics"),
    ("MatVatR_Click", "Material > VAT Reports"), ("POSRep_Click", "POS > Reports"),
    ("PosTaxRep_Click", "POS > Tax Reports"), ("MISREP_Click", "POS > MIS Reports"),
    ("FDORep_Click", "Front Office > Reports"), ("FDOMISRep_Click", "Front Office > MIS"),
    ("FDOMenu_Click", "Front Office > Menu"), ("FDOForms_Click", "Front Office > Forms"),
    ("FDOTaxr_Click", "Front Office > Tax"), ("FAREPORT_Click", "Accounts > Reports"),
    ("NightAuditRR_Click", "Night Audit > Revenue"), ("NightAuditLR_Click", "Night Audit > Logs"),
    ("NightAuditGSTR_Click", "Night Audit > GST"), ("NightAuditoR_Click", "Night Audit > Other"),
    ("BanqRep_Click", "Banquet > Reports"), ("OdcRep_Click", "Outdoor Catering > Reports"),
    ("HouseREP_Click", "Housekeeping > Reports"), ("PayRep_Click", "Payroll > Reports"),
    ("MemRpt_Click", "Membership > Reports"), ("ResStatusRpt_Click", "Reservation > Status"),
]
# handler kis object me hai wo bhi dhoondo
handler_obj = {}
for o in objects:
    for s in o["subs"]:
        handler_obj.setdefault(s, o["name"])
A("| Menu Handler | Menu | Defined In |")
A("|---|---|---|")
for h, menu in KNOWN_MENUS:
    A(f"| `{h}` | {menu} | `{handler_obj.get(h, '?')}` |")
A("")
A("### 3b. Top Click Handlers (sabhi, count ke saath)")
A("")
handler_counts = defaultdict(int)
for o in objects:
    for s in o["subs"]:
        if s.endswith("_Click"):
            handler_counts[s] += 1
A("| Click Handler | Occurrences |")
A("|---|---:|")
for s, c in sorted(handler_counts.items(), key=lambda kv: -kv[1])[:20]:
    A(f"| `{s}` | {c} |")
A("")

# ---------------- Dependency analysis ----------------
# Har object ke code me doosre objects ke naam ka reference = "call"
# (VB6 decompiled me direct call-graph nahi milta, isliye name-reference analysis)
obj_names = {o["name"] for o in objects}
obj_name_lowers = {n.lower(): n for n in obj_names}

deps = {}   # obj -> set of referenced objects
for o in objects:
    refs = set()
    # object ke code ko ek string me join karo
    pass  # lines store nahi ki thi - dobara scan

# dobara scan: object -> uske lines
obj_lines = defaultdict(list)
cur = None
for ln in lines:
    m = re.match(r"^'Object:\s*(\w+)", ln)
    if m:
        cur = m.group(1)
        continue
    if cur:
        obj_lines[cur].append(ln)

for name, lns in obj_lines.items():
    refs = set()
    # ek hi regex pass: New X / Call X / X.Show patterns
    code = "\n".join(lns)
    for m in re.finditer(r"\b(?:New|Call)\s+(\w+)|\b(\w+)\.(?:Show)\b", code):
        cand = m.group(1) or m.group(2)
        if cand and cand != name and cand in obj_names:
            refs.add(cand)
    if refs:
        deps[name] = refs

# most-depended objects (kitne objects unhe reference karte hain)
depended = defaultdict(set)
for src, refs in deps.items():
    for r in refs:
        depended[r].add(src)

# ---------------- Section 5: Dependency graph (mermaid) ----------------
A("## 5. Object Dependency Graph")
A("")
A("**Method:** code-reference analysis — `New X` / `X.Show` / `Call X` patterns (\"A" 
  "calls B\" = A ke code me B ka reference).")
A("")
A("### 5a. Most-Depended Objects (jinhe sabse zyada objects use karte hain)")
A("")
A("| Object | Used By (count) | Used By (top callers) |")
A("|---|---:|---|")
for tgt in sorted(depended, key=lambda t: -len(depended[t]))[:20]:
    callers = sorted(depended[tgt])
    A(f"| `{tgt}` | {len(callers)} | {', '.join(f'`{c}`' for c in callers[:5])}{'...' if len(callers) > 5 else ''} |")
A("")
A("### 5b. Mermaid Graph (top hub objects + unke callers)")
A("")
A("```mermaid")
A("graph TD")
# top 8 hub objects ka subgraph banao
hubs = [t for t in sorted(depended, key=lambda t: -len(depended[t]))[:8]]
hub_set = set(hubs)
added = set()
for h in hubs:
    A(f"    {h}[{h}]")
for h in hubs:
    for c in sorted(depended[h])[:6]:   # per hub max 6 callers (readable)
        if (c, h) not in added:
            A(f"    {c} --> {h}")
            added.add((c, h))
A("```")
A("")
A("### 5c. Har Object ke References (full list)")
A("")
A("| Object | Calls/Uses (count) | Referenced Objects |")
A("|---|---:|---|")
for src in sorted(deps, key=str.lower):
    refs = sorted(deps[src])
    A(f"| `{src}` | {len(refs)} | {', '.join(f'`{r}`' for r in refs)} |")
A("")
A(f"**Stats:** {len(deps)} objects reference others; {len(depended)} objects are referenced; "
  f"total edges: {sum(len(r) for r in deps.values())}.")
A("")

# ---------------- Section 6: hamari pipeline modules
A("## 6. Pipeline Modules (hamari generated files)")
A("")
A("```")
A("EXTRAS.text / visahl.sql            # source inputs")
A("        |")
A("gen_reports.py                      # 231 txt files generator")
A("  |- sql_queries.py                 # 31 stock + 5 generic queries")
A("  |- report_layouts.py              # output columns per report")
A("  |- report_menu_map.txt            # Sub -> report mapping")
A("  |- all_reports_raw.txt            # raw report names")
A("        |")
A("build_outputs.py                    # SQL file + Excel")
A("        |")
A("build_procs_and_data.py             # SSRS-pattern procs + sample data")
A("        |")
A("validate_sqlite.py                  # SQLite validation harness")
A("        |")
A("OUTPUTS: REPORTS_TXT/ | REPORTS_LIST.xlsx | stock_reports_*.sql | sample_test_data.sql")
A("```")
A("")
A("**Data flow:** `EXTRAS.text` → report names+menus → `gen_reports.py` → txt files;  "
  "`sql_queries.py`+`report_layouts.py` → `build_outputs.py` → Excel/SQL;  "
  "`build_procs_and_data.py` → procs+test data; `validate_sqlite.py` → 36 queries + 31 procs verified.")
A("")

md = "\n".join(L)
with open("MODULE_STRUCTURE.md", "w", encoding="utf-8") as f:
    f.write(md)

# ---------------- Plain txt version (saare subs + dependencies ke saath) ----------------
with open("MODULE_STRUCTURE.txt", "w", encoding="utf-8") as f:
    f.write(f"TOTAL VB6 OBJECTS: {len(objects)}\n")
    f.write("=" * 60 + "\n\n")

    # Section 1: objects + subs
    f.write("SECTION 1: OBJECTS + SAARE SUBS/FUNCTIONS\n")
    f.write("=" * 60 + "\n")
    for t in sorted(groups, key=lambda t: -len(groups[t])):
        f.write(f"\n[{t}] ({len(groups[t])})\n" + "-" * 60 + "\n")
        for o in sorted(groups[t], key=lambda o: o["name"].lower()):
            subs = sorted(set(o["subs"]))
            f.write(f"\n  {o['name']}  (lines={o['lines']}, subs={len(subs)})\n")
            if subs:
                for i in range(0, len(subs), 3):
                    f.write("      " + ", ".join(subs[i:i+3]) + "\n")
            else:
                f.write("      (no subs/functions)\n")

    # Section 2: dependency analysis
    f.write("\n\n" + "=" * 60 + "\n")
    f.write("SECTION 2: OBJECT DEPENDENCIES (code-reference analysis)\n")
    f.write("Method: New X / X.Show / Call X patterns se references\n")
    f.write("=" * 60 + "\n\n")

    f.write(f"[2a] MOST-DEPENDED OBJECTS (top 20, jinhe sabse zyada use kiya)\n")
    f.write("-" * 60 + "\n")
    for tgt in sorted(depended, key=lambda t: -len(depended[t]))[:20]:
        callers = sorted(depended[tgt])
        f.write(f"  {tgt:<34} used-by={len(callers):<4} callers: {', '.join(callers[:6])}{'...' if len(callers) > 6 else ''}\n")

    f.write(f"\n[2b] HAR OBJECT KE REFERENCES ({len(deps)} objects, "
            f"{sum(len(r) for r in deps.values())} edges)\n")
    f.write("-" * 60 + "\n")
    for src in sorted(deps, key=str.lower):
        refs = sorted(deps[src])
        f.write(f"\n  {src}  ->  {len(refs)} objects\n")
        for i in range(0, len(refs), 3):
            f.write("        " + ", ".join(refs[i:i+3]) + "\n")

    f.write("\n" + "=" * 60 + "\n")
    f.write("SECTION 3: PIPELINE MODULES (hamari generated files)\n")
    f.write("=" * 60 + "\n")
    f.write("""
  EXTRAS.text / visahl.sql        -> source inputs
  gen_reports.py                  -> 231 txt files
    |- sql_queries.py             -> 31 stock + 5 generic queries
    |- report_layouts.py          -> output columns per report
  build_outputs.py                -> queries SQL + Excel
  build_procs_and_data.py         -> SSRS procs + sample data
  validate_sqlite.py              -> validation (36 q + 31 p + 16 asserts)
  extract_structure.py            -> ye file
  OUTPUTS: REPORTS_TXT/ | REPORTS_LIST.xlsx | stock_reports_*.sql
""")

# ---------------- Standalone Mermaid HTML (click-to-detail) ----------------
import json
HUBS_N = 12
CALLERS_PER_HUB = 8
hubs12 = [t for t in sorted(depended, key=lambda t: -len(depended[t]))[:HUBS_N]]

nodes, edges, seen_e = [], [], set()
node_set = set()
for h in hubs12:
    nodes.append(f'    {h}["{h}<br/><small>{len(depended[h])} users — click for details</small>"]')
    node_set.add(h)
for h in hubs12:
    for c in sorted(depended[h])[:CALLERS_PER_HUB]:
        if (c, h) not in seen_e:
            edges.append(f"    {c} --> {h}")
            seen_e.add((c, h))
            if c not in node_set:
                nodes.append(f'    {c}({c})')
                node_set.add(c)

total_edges = sum(len(r) for r in deps.values())
mermaid_code = "graph TD\n" + "\n".join(nodes + edges)

# saare 351 objects ka data (click-detail panel ke liye)
data = {}
for o in objects:
    n = o["name"]
    data[n] = {
        "l": o["lines"],
        "s": sorted(set(o["subs"])),
        "c": sorted(deps.get(n, set())),
        "u": sorted(depended.get(n, set())),
    }

template = """<!DOCTYPE html>
<html lang="hi">
<head>
<meta charset="utf-8">
<title>VB6 Object Dependency Graph — EXTRAS.text</title>
<script src="https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.min.js"></script>
<style>
  body { font-family: 'Segoe UI', sans-serif; margin: 0; background: #fafafa; }
  header { padding: 16px 24px 8px; }
  h1 { font-size: 20px; margin: 0 0 4px; }
  .stats { color: #555; font-size: 13px; }
  .wrap { display: flex; gap: 16px; padding: 0 24px 24px; align-items: flex-start; }
  .graph { flex: 1; background: #fff; border: 1px solid #ddd; border-radius: 8px;
           padding: 16px; overflow: auto; min-height: 70vh; }
  #panel { width: 380px; position: sticky; top: 12px; background: #fff;
           border: 1px solid #ddd; border-radius: 8px; padding: 16px;
           max-height: 85vh; overflow: auto; font-size: 13px; }
  #panel h2 { margin: 0 0 8px; font-size: 17px; color: #1F4E78; }
  #panel h3 { margin: 12px 0 6px; font-size: 13px; color: #333;
              border-bottom: 1px solid #eee; padding-bottom: 4px; }
  .chips { display: flex; flex-wrap: wrap; gap: 4px; }
  .chip { background: #eef3f8; border: 1px solid #d5e0ec; border-radius: 4px;
          padding: 2px 6px; font-family: Consolas, monospace; font-size: 11px; }
  .hint { color: #888; font-style: italic; }
  g.node { cursor: pointer; }
  g.node.selected > rect, g.node.selected > polygon { stroke: #e63946; stroke-width: 3px; }
</style>
</head>
<body>
<header>
  <h1>VB6 Object Dependency Graph — EXTRAS.text</h1>
  <div class="stats">Objects: <b>__N_OBJECTS__</b> | Referencing: <b>__N_DEPS__</b> |
    Referenced: <b>__N_DEPENDED__</b> | Total edges: <b>__N_EDGES__</b> |
    Showing top <b>__HUBS_N__</b> hubs × __CPH__ callers</div>
</header>
<div class="wrap">
  <div class="graph"><pre class="mermaid">
__MERMAID__
</pre></div>
  <div id="panel">
    <h2>Object Details</h2>
    <p class="hint">Kisi bhi node par click karo — uske saare Subs/Functions,
    uses aur callers yahan dikhenge.</p>
  </div>
</div>
<script>
const DATA = __DATA__;

function esc(s) { return String(s).replace(/&/g, '&amp;').replace(/</g, '&lt;'); }
let selNode = null;

function show(id, g) {
  const d = DATA[id];
  if (!d) return;
  const subs = d.s.length
    ? '<div class="chips">' + d.s.map(s => '<span class="chip">' + esc(s) + '</span>').join('') + '</div>'
    : '<p class="hint">(no subs/functions)</p>';
  document.getElementById('panel').innerHTML =
    '<h2>' + esc(id) + '</h2>' +
    '<p>Lines: <b>' + d.l + '</b> | Subs: <b>' + d.s.length + '</b> | ' +
    'Uses: <b>' + d.c.length + '</b> | Used by: <b>' + d.u.length + '</b></p>' +
    '<h3>Subs/Functions</h3>' + subs +
    '<h3>Uses (calls)</h3><p>' + (d.c.length ? d.c.map(esc).join(', ') : '—') + '</p>' +
    '<h3>Used by</h3><p>' + (d.u.length ? d.u.map(esc).join(', ') : '—') + '</p>';
  if (selNode) selNode.classList.remove('selected');
  selNode = g; g.classList.add('selected');
}

mermaid.initialize({ startOnLoad: false, flowchart: { useMaxWidth: true } });
window.addEventListener('DOMContentLoaded', async () => {
  await mermaid.run({ querySelector: '.mermaid' });
  document.querySelectorAll('.graph g.node').forEach(g => {
    let id = g.getAttribute('data-id');
    if (!id) {
      const m = (g.id || '').match(/^flowchart-(.+?)-\\d+$/);
      id = m ? m[1] : null;
    }
    if (id && DATA[id]) g.addEventListener('click', () => show(id, g));
  });
});
</script>
</body>
</html>
"""

html = (template
        .replace("__DATA__", json.dumps(data, ensure_ascii=False))
        .replace("__MERMAID__", mermaid_code)
        .replace("__N_OBJECTS__", str(len(objects)))
        .replace("__N_DEPS__", str(len(deps)))
        .replace("__N_DEPENDED__", str(len(depended)))
        .replace("__N_EDGES__", str(total_edges))
        .replace("__HUBS_N__", str(HUBS_N))
        .replace("__CPH__", str(CALLERS_PER_HUB)))

with open("dependency_graph.html", "w", encoding="utf-8") as f:
    f.write(html)
print(f"MODULE_STRUCTURE.md + .txt written: {len(objects)} objects, {len(groups)} types")
print(f"dependency_graph.html written: {len(hubs12)} hubs, {len(edges)} edges, click-details enabled")
