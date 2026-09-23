from HMS_py.core import db, auth

cfg = db.load_config()
cn = db.connect(cfg)
cur = cn.cursor()

cur.execute("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='UserMast'")
cols = [r[0] for r in cur.fetchall()]
print(f"UserMast columns: {cols}")

cur.execute("SELECT * FROM UserMast WHERE USER_NAME = ?", ("SA",))
row = cur.fetchone()
if row:
    desc = [d[0] for d in cur.description]
    for d, v in zip(desc, row):
        print(f"  {d}: {v!r}")
else:
    print("SA not found!")

# Test encryption
print()
print("=== Auth tests ===")
ok, msg = auth.check_login("SA", "")
print(f"SA + empty: {ok} - {msg}")

# Check _stored_passwd
stored = auth._stored_passwd("SA", cn=cn)
print(f"SA stored pass: {stored!r}")

if stored:
    dec = auth.decrypt(stored)
    print(f"SA decrypted: {dec!r}")

# Try all users
cur.execute("SELECT USER_NAME FROM UserMast")
users = [r[0] for r in cur.fetchall()]
print(f"\nAll users: {users}")

for u in users:
    s = auth._stored_passwd(u, cn=cn)
    if s:
        d = auth.decrypt(s)
        print(f"  {u}: stored={s!r} decrypted={d!r}")
        ok2, msg2 = auth.check_login(u, d)
        print(f"    login with decrypted: {ok2} - {msg2}")

cn.close()
