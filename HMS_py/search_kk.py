import os
for root, dirs, files in os.walk("."):
    for fn in files:
        if fn.endswith(".py"):
            path = os.path.join(root, fn)
            try:
                with open(path, encoding="utf-8") as fh:
                    content = fh.read()
                    if "KK000265" in content:
                        lines = content.split("\n")
                        for i, line in enumerate(lines):
                            if "KK000265" in line or "000265" in line:
                                print(f"{path}:{i+1}: {line.strip()[:100]}")
            except:
                pass
