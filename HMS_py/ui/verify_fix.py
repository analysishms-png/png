import subprocess
result = subprocess.run(['git', 'show', 'HEAD:HMS_py/ui/sidebar_buttons.py'], capture_output=True, text=True)
content = result.stdout
issues = []
if 'from HMS_py.core import menu as _um' in content:
    issues.append('unused import still present')
if 'housekeping' in content:
    issues.append('typo still present')
if 'VB6_MODE' in content:
    issues.append('VB6_MODE still present')
if 'btn=b' in content:
    issues.append('btn=b still present')
if 'lambda _, ac=item.get' in content and ': ' in content.split('lambda _, ac=item.get')[1].split(chr(10))[0]:
    issues.append('trailing space still present')
if issues:
    print('ISSUES:', issues)
else:
    print('All fixes verified in sidebar_buttons.py')
print('Lines: %d' % len(content.split(chr(10))))
