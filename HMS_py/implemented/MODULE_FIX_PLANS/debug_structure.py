import os
print("HMS_py directory contents:")
for item in os.listdir("HMS_py"):
    full = os.path.join("HMS_py", item)
    isdir = os.path.isdir(full)
    print(f"  {item} {'(dir)' if isdir else ''}")

print("\nui directory:")
ui_dir = os.path.join("HMS_py", "ui")
for item in os.listdir(ui_dir):
    full = os.path.join(ui_dir, item)
    isdir = os.path.isdir(full)
    print(f"  {item} {'(dir)' if isdir else ''}")

print("\ncore directory:")
core_dir = os.path.join("HMS_py", "core")
for item in os.listdir(core_dir):
    full = os.path.join(core_dir, item)
    isdir = os.path.isdir(full)
    print(f"  {item} {'(dir)' if isdir else ''}")