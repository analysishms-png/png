# -*- coding: utf-8 -*-
"""
dependency_graph.html — LAZY-EXPAND interactive version:
- Click node  -> details panel + uske neighbors graph me add (re-render)
- Chip click  -> wo object bhi expand
- "Full graph" button -> sab 351 objects + saare edges
- "Saare hubs expand karo" button -> top-12 hubs
extract_structure.py ko import karta hai (uske objects/deps/depended reuse).
NOTE: extract_structure.py ke BAAD chalao (dependency_graph.html overwrite hota hai).
"""
import json, sys, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import extract_structure as E   # isse objects/deps/depended/groups milte hain (md/txt bhi regen)

depended = E.depended
deps = E.deps
objects = E.objects

HUBS_N = 12
hubs = sorted(depended, key=lambda t: (-len(depended[t]), t))[:HUBS_N]
total_edges = sum(len(r) for r in deps.values())

# saare objects ka compact data
data = {}
for o in objects:
    n = o["name"]
    data[n] = {
        "l": o["lines"],
        "s": sorted(set(o["subs"])),
        "c": sorted(deps.get(n, set())),
        "u": sorted(depended.get(n, set())),
    }

init_hub = hubs[0] if hubs else (objects[0]["name"] if objects else "MDIForm1")
seed = [init_hub] + sorted(depended.get(init_hub, set()))[:6]

template = r'''<!DOCTYPE html>
<html lang="hi">
<head>
<meta charset="utf-8">
<title>VB6 Object Dependency Graph — EXTRAS.text (lazy-expand)</title>
<script src="https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.min.js"></script>
<style>
  body { font-family: 'Segoe UI', sans-serif; margin: 0; background: #fafafa; }
  header { padding: 16px 24px 8px; }
  h1 { font-size: 20px; margin: 0 0 4px; }
  .stats { color: #555; font-size: 13px; }
  .toolbar { padding: 0 24px 8px; }
  .toolbar button { padding: 6px 14px; margin-right: 8px; border: 1px solid #1F4E78;
                    background: #1F4E78; color: #fff; border-radius: 4px; cursor: pointer; }
  .toolbar button.sec { background: #fff; color: #1F4E78; }
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
          padding: 2px 6px; font-family: Consolas, monospace; font-size: 11px; cursor: pointer; }
  .chip:hover { background: #d9e6f2; }
  .hint { color: #888; font-style: italic; }
  g.node { cursor: pointer; }
  g.node.selected > rect, g.node.selected > polygon { stroke: #e63946; stroke-width: 3px; }
  #st { font-size: 12px; color: #666; padding: 0 24px 8px; }
</style>
</head>
<body>
<header>
  <h1>VB6 Object Dependency Graph — EXTRAS.text (lazy-expand)</h1>
  <div class="stats">Objects: <b>__N_OBJECTS__</b> | Referencing: <b>__N_DEPS__</b> |
    Referenced: <b>__N_DEPENDED__</b> | Total edges: <b>__N_EDGES__</b></div>
</header>
<div class="toolbar">
  <button onclick="reset()">Reset</button>
  <button class="sec" onclick="expandAllHubs()">Saare hubs expand karo</button>
  <button class="sec" onclick="showFull()">Full graph (sab 351)</button>
</div>
<div id="st">Nodes: <span id="nn">0</span> | Edges: <span id="ne">0</span> — node click = details + neighbors add</div>
<div class="wrap">
  <div class="graph"><pre class="mermaid" id="mm"></pre></div>
  <div id="panel">
    <h2>Object Details</h2>
    <p class="hint">Node par click karo — uske details + neighbors graph me add honge (lazy-expand).</p>
  </div>
</div>
<script>
const DATA = __DATA__;
const HUBS = __HUBS__;
let nodes = [], edges = [], sel = null;
const shown = new Set();

function esc(s) { return String(s).replace(/&/g, '&amp;').replace(/</g, '&lt;'); }
function addNode(n) { if (!shown.has(n)) { shown.add(n); nodes.push(n); } }

function addEdgesFor(n) {
  const d = DATA[n] || { c: [], u: [] };
  for (const x of d.c) {
    if (!edges.some(e => e[0] === n && e[1] === x)) edges.push([n, x]);
    addNode(x);
  }
  for (const y of d.u) {
    if (!edges.some(e => e[0] === y && e[1] === n)) edges.push([y, n]);
    addNode(y);
  }
}

function renderGraph() {
  const lines = ['graph TD'];
  for (const n of nodes) {
    const d = DATA[n];
    const hub = d && d.u.length >= 4;
    lines.push(hub ? `    ${n}["${n}<br/><small>${d.u.length} users — click</small>"]`
                   : `    ${n}(${n})`);
  }
  for (const [a, b] of edges) lines.push(`    ${a} --> ${b}`);
  document.getElementById('mm').textContent = lines.join('\n');
  document.getElementById('nn').textContent = nodes.length;
  document.getElementById('ne').textContent = edges.length;
  mermaid.run({ querySelector: '#mm' }).then(bind).catch(e => console.error(e));
}

function bind() {
  document.querySelectorAll('.graph g.node').forEach(g => {
    const m = (g.id || '').match(/^flowchart-(.+?)-\d+$/);
    if (m && DATA[m[1]]) g.onclick = () => select(m[1], g);
    if (m && m[1] === sel) g.classList.add('selected');
  });
}

function select(id, g) {
  sel = id;
  addNode(id); addEdgesFor(id);
  renderGraph();
  showDetail(id);
}
window.select = select;   // chips onclick se access

function expandAllHubs() {
  for (const h of HUBS) { addNode(h); addEdgesFor(h); }
  renderGraph();
}

function showFull() {
  for (const n of Object.keys(DATA)) { addNode(n); addEdgesFor(n); }
  renderGraph();
}

function showDetail(id) {
  const d = DATA[id];
  const subs = d.s.length
    ? '<div class="chips">' + d.s.map(s =>
        '<span class="chip" onclick="select(\'' + esc(s) + '\')">' + esc(s) + '</span>').join('') + '</div>'
    : '<p class="hint">(no subs/functions)</p>';
  document.getElementById('panel').innerHTML =
    '<h2>' + esc(id) + '</h2>' +
    '<p>Lines: <b>' + d.l + '</b> | Subs: <b>' + d.s.length + '</b> | ' +
    'Uses: <b>' + d.c.length + '</b> | Used by: <b>' + d.u.length + '</b></p>' +
    '<h3>Subs/Functions (click chip = expand)</h3>' + subs +
    '<h3>Uses</h3><p>' + (d.c.length ? d.c.map(esc).join(', ') : '—') + '</p>' +
    '<h3>Used by</h3><p>' + (d.u.length ? d.u.map(esc).join(', ') : '—') + '</p>';
}

function reset() {
  nodes = []; edges = []; shown.clear(); sel = null;
__INIT__
  renderGraph();
  document.getElementById('panel').innerHTML =
    '<h2>Object Details</h2><p class="hint">Node par click karo — details + lazy-expand.</p>';
}

mermaid.initialize({ startOnLoad: false, flowchart: { useMaxWidth: true } });
reset();
</script>
</body>
</html>
'''

init_lines = []
for n in seed:
    init_lines.append(f"  addNode({json.dumps(n, ensure_ascii=False)}); addEdgesFor({json.dumps(n, ensure_ascii=False)});")
init_js = "\n".join(init_lines)

html = (template
        .replace("__DATA__", json.dumps(data, ensure_ascii=False))
        .replace("__HUBS__", json.dumps(hubs, ensure_ascii=False))
        .replace("__INIT__", init_js)
        .replace("__N_OBJECTS__", str(len(objects)))
        .replace("__N_DEPS__", str(len(deps)))
        .replace("__N_DEPENDED__", str(len(depended)))
        .replace("__N_EDGES__", str(total_edges)))

with open("dependency_graph.html", "w", encoding="utf-8") as f:
    f.write(html)
print(f"dependency_graph.html written: lazy-expand, {len(hubs)} hubs, full-{len(data)} toggle")
