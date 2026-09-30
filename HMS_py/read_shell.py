# Read shell.py for login logic
with open('ui/shell.py', 'r', encoding='latin-1', errors='replace') as f:
    content = f.read()
# Print first 2000 chars
print(content[:2000])