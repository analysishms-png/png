import os
ui_dir = r'HMS_py/ui'
files = os.listdir(ui_dir)
utility_files = [f for f in files if 'util' in f.lower() or 'utility' in f.lower()]
for f in utility_files:
    print('=== ' + f + ' ===')
    path = os.path.join(ui_dir, f)
    with open(path) as fh:
        lines = fh.readlines()
        print('  Lines: ' + str(len(lines)))
        first = lines[0].strip() if len(lines) > 0 else ''
        second = lines[1].strip() if len(lines) > 1 else ''
        third = lines[2].strip() if len(lines) > 2 else ''
        print('  First 3: ' + first + ', ' + second + ', ' + third)