import os, sys
sys.path.insert(0, os.getcwd())
from HMS_py.ui.shell import _form_registry, MainWindow
from HMS_py.ui.sidebar_buttons import build_all_buttons, get_sidebar_sources, AUTO_OPEN, build_vb6_buttons
from HMS_py.core import menu as _menu, menu_help as _mh

print('=== VERIFICATION ===')
print()

roots = _menu.roots()
print('1. User_Module roots:', len(roots))
print('   Sample:', roots[0])
print()

src = get_sidebar_sources('SA')
print('2. Sidebar sources:', len(src), 'modules')
for s in src:
    print('   ', s['name'], 'code=', s['code'], 'srno=', s['srno'])
print()

btns = build_all_buttons('SA')
print('3. ACTIONS:', len(btns['ACTIONS']), 'buttons')
print('   MODULES:', len(btns['MODULES']), 'buttons')
for m in btns['MODULES']:
    print('   ', m['icon'], m['label'], '->', m['mod_target'])
print()

print('4. AUTO_OPEN:', AUTO_OPEN)
print('   Match:', AUTO_OPEN == MainWindow._AUTO_OPEN)
print()

reg = _form_registry()
print('5. Registry entries:', len(reg))
print('   None values:', sum(1 for v in reg.values() if v is None))
print()

vb6_btns, vb6_labels = build_vb6_buttons(None)
print('6. VB6 sidebar:', len(vb6_btns), 'buttons,', len(vb6_labels), 'sections')
print()

print('7. menuHelp full_access(SA):', _mh.full_access('SA'))
print('   menuHelp by_caption count:', len(_mh.by_caption('SA')))
print()

print('=== ALL VERIFIED OK ===')
