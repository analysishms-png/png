with open('ui/shell.py', 'rb') as f:
    content = f.read()
idx = content.find(b'class LoginDialog')
if idx >= 0:
    start = max(0, idx - 100)
    end = min(len(content), idx + 1000)
    chunk = content[start:end]
    try:
        text = chunk.decode('latin-1', errors='replace')
        print(text[:1000])
    except Exception as e:
        print(f'Error: {e}')