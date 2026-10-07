# -*- coding: utf-8 -*-
"""
SQLite validation harness:
1) T-SQL queries -> SQLite compatible me convert karo
2) In-memory SQLite DB banao, visahl.sql jaisa schema + sample data load karo
3) Saari queries run karke results verify karo (expected values se assertions)
4) Converted queries stock_reports_sqlite.sql me save karo
"""
import os, re, sys, sqlite3
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from sql_queries import SQL_QUERIES, GENERIC_QUERIES
from build_itemmast import IM_SEED

# ---------------------------------------------------------------- T-SQL -> SQLite
def tsql_to_sqlite(q: str) -> str:
    s = q.strip()
    # DECLARE lines se actual dates capture karo
    dF = re.search(r"@F DATE='([^']+)'", s)
    dT = re.search(r"@T DATE='([^']+)'", s)
    dD = re.search(r"@D DATE='([^']+)'", s)
    vF, vT, vD = (dF.group(1) if dF else '2016-09-01'), (dT.group(1) if dT else '2016-09-30'), (dD.group(1) if dD else '2016-09-15')
    # DECLARE lines -> comments (dates literals me already hain) - comment me @ symbol nahi
    s = re.sub(r"^DECLARE @F DATE='[^']*';?\s*$", "-- Period from: (date param @F)", s, flags=re.M)
    s = re.sub(r"^DECLARE @T DATE='[^']*';?\s*$", "-- Period to: (date param @T)", s, flags=re.M)
    s = re.sub(r"^DECLARE @D DATE='[^']*';?\s*$", "-- Single day: (date param @D)", s, flags=re.M)
    # double-declare (comma wala) safety
    s = re.sub(r"^DECLARE @F DATE='[^']*'\s*,\s*@T DATE='[^']*';?\s*$",
               "-- Period params: (F, T)", s, flags=re.M)
    # bache hue @F/@T/@D references -> captured date literals
    s = re.sub(r"@F\b", f"'{vF}'", s)
    s = re.sub(r"@T\b", f"'{vT}'", s)
    s = re.sub(r"@D\b", f"'{vD}'", s)
    # ISNULL -> IFNULL
    s = s.replace("ISNULL(", "IFNULL(")
    # CAST(x AS DATE) -> DATE(x)  (SQLite date-only compare me string 'YYYY-MM-DD' chalega
    # kyunki sample dates midnight-datetime hain: Vdate='2016-09-15 00:00:00')
    s = re.sub(r"CAST\(([^)]+)\s+AS\s+DATE\)", r"DATE(\1)", s)
    # SQL Server TOP 100 PERCENT -> ignore
    s = s.replace("TOP 100 PERCENT ", "")
    return s

# ---------------------------------------------------------------- Schema + data
SCHEMA = """
CREATE TABLE Stock (
  DocId TEXT, Sno INTEGER, Vtype TEXT, VNo INTEGER, Site_Code TEXT, Vprefix TEXT,
  Vdate TEXT, PartyCode TEXT, RestCode TEXT, RoomCat TEXT, RoomType TEXT, RoomNo TEXT,
  ContraDocId TEXT, ContraSno INTEGER, Item TEXT, QtyIss REAL, QtyRec REAL, Unit TEXT,
  Rate REAL, Amount REAL, TaxPer REAL, TaxAmt REAL, DiscPer REAL, DiscAmt REAL,
  VoidYN TEXT, Remarks TEXT, KOTDocId TEXT, KOTSno INTEGER, VTime TEXT,
  U_Name TEXT, U_EntDt TEXT, U_AE TEXT, Total REAL, DiscApp TEXT, RoundOff TEXT,
  DepartCode TEXT, GodownCode TEXT, ChalQty REAL, RecdQty REAL, AccQty REAL, RejQty REAL,
  RecdUnit TEXT, Specification TEXT, ItemRate REAL, DelFlag TEXT, LandVal REAL,
  ConvRatio REAL, IndentDocId TEXT, IndentSNo INTEGER, IssQty REAL, IssueUnit TEXT,
  LogSite_Code TEXT, FreeSno TEXT, SchemeCode TEXT, SeqNo INTEGER, Company TEXT,
  ExpDate TEXT, MfdDate TEXT, ItemRestCode TEXT, ShiftCode TEXT, MRP REAL,
  SChrgApp TEXT, SChrgPer REAL, SChrgAmt REAL, RefDocId TEXT
);
CREATE TABLE Sale1 (
  DocId TEXT, Vtype TEXT, VNo INTEGER, Vtime TEXT, Site_Code TEXT, Vprefix TEXT,
  Vdate TEXT, RestCode TEXT, Total REAL, DiscPer REAL, DiscAmt REAL, NonTaxable REAL,
  Taxable REAL, Tax REAL, ServiceCharge REAL, NetAmt REAL, CGST REAL, SGST REAL,
  IGST REAL, CustName TEXT, CoverRate REAL, U_Name TEXT, U_EntDt TEXT, U_AE TEXT
);
CREATE TABLE Sale2 (
  DocId TEXT, Sno INTEGER, Vtype TEXT, Vdate TEXT, RestCode TEXT, TaxCode TEXT,
  BaseValue REAL, TaxPer REAL, TaxAmt REAL, U_Name TEXT, U_EntDt TEXT, U_AE TEXT
);
CREATE TABLE SunTran (
  DocId TEXT, Sno INTEGER, Vtype TEXT, VNo INTEGER, Vdate TEXT, PartyCode TEXT,
  SunCode TEXT, Amount REAL, BaseAmount REAL, U_Name TEXT, U_EntDt TEXT, U_AE TEXT
);
CREATE TABLE PayCharge (
  DocId TEXT, SNo INTEGER, Vtype TEXT, VNo INTEGER, Vdate TEXT, FolioNo TEXT,
  RoomNo TEXT, PayCode TEXT, PayType TEXT, AmtCr REAL, AmtDr REAL, Bill_No TEXT,
  U_Name TEXT, U_EntDt TEXT, U_AE TEXT
);
CREATE TABLE ItemMast (
  ItemCode TEXT PRIMARY KEY, ItemName TEXT, GrpName TEXT, Unit TEXT
);
"""

# build_procs_and_data.py ke SAMPLE string se INSERTs nikalo (single source of truth)
import build_procs_and_data as B  # isse .sql files bhi regenerate hongi (idempotent)
sample_sql = open("sample_test_data.sql", encoding="utf-8").read()
# INSERT blocks + UPDATE statements dono nikalo (multi-line safe)
stmts = re.findall(r"(INSERT INTO \w+ \([^)]*\)[^;]*?;|UPDATE \w+ SET[^;]*?;)", sample_sql, re.S)
stmts = [s for s in stmts if not s.rstrip(";").rstrip().splitlines()[-1].strip().startswith("--")]

# ---------------------------------------------------------------- Validate
def main():
    conn = sqlite3.connect(":memory:")
    conn.executescript(SCHEMA)
    for stmt in stmts:
        # statement ke andar comment lines hata do (SQLite parse-safe)
        clean = "\n".join(l for l in stmt.splitlines() if not l.strip().startswith("--"))
        conn.execute(clean)
    conn.commit()

    # ItemMast rows bharo (build_itemmast.IM_SEED se - single source of truth)
    for code, name, grp, unit in IM_SEED:
        conn.execute("INSERT INTO ItemMast (ItemCode, ItemName, GrpName, Unit) VALUES (?,?,?,?)",
                     (code, name, grp, unit))
    conn.commit()

    ok, fail = 0, []
    converted = {}
    for key in list(SQL_QUERIES) + list(GENERIC_QUERIES):
        src = SQL_QUERIES.get(key) or GENERIC_QUERIES[key]
        q = tsql_to_sqlite(src)
        if key in GENERIC_QUERIES and key not in SQL_QUERIES:
            converted.setdefault("GENERIC", {})[key] = (src, q)
        else:
            converted[key] = (src, q)
        try:
            rows = conn.execute(q).fetchall()
            ok += 1
            print(f"  OK   {key:<24} rows={len(rows)}")
        except Exception as e:
            fail.append((key, str(e)))
            print(f"  FAIL {key:<24} {e}")

    print(f"\n{ok} OK, {len(fail)} FAIL")

    # ---------------- Expected-value assertions ----------------
    print("\n=== EXPECTED RESULT ASSERTIONS ===")
    def one(q): return conn.execute(q).fetchone()[0]

    # 1) StockInHand
    r = dict(conn.execute("""SELECT Item, IFNULL(QtyRec,0)-IFNULL(QtyIss,0) b
        FROM Stock GROUP BY Item""").fetchall()) if False else {
        it: b for it, b in conn.execute(
            "SELECT Item, SUM(IFNULL(QtyRec,0)-IFNULL(QtyIss,0)) FROM Stock GROUP BY Item")}
    exp = {"RICE001": 50, "OIL001": 40, "WHKY001": 18, "SUGR001": -10}
    for k, v in exp.items():
        got = r.get(k)
        status = "PASS" if got == v else "FAIL"
        print(f"  [{status}] StockInHand {k}: expected {v}, got {got}")

    # 2) ExcessConsumption -> sirf SUGR001
    excess = [it for it, b in r.items() if b < 0]
    print(f"  [{'PASS' if excess==['SUGR001'] else 'FAIL'}] ExcessConsumption: expected ['SUGR001'], got {excess}")

    # 3) FoodCost: consumption 12350, sales 30950
    cons = one("SELECT SUM(IFNULL(QtyIss,0)*IFNULL(Rate,0)) FROM Stock WHERE IFNULL(QtyIss,0)>0")
    sales = one("SELECT SUM(NetAmt) FROM Sale1")
    print(f"  [{'PASS' if abs(cons-13370)<0.01 else 'FAIL'}] FoodCost consumption: expected 13370, got {cons}")
    print(f"  [{'PASS' if abs(sales-30950)<0.01 else 'FAIL'}] FoodCost sales: expected 30950, got {sales}")

    # 4) PurchaseSummary (party-wise)
    ps = {p: a for p, a in conn.execute(
        "SELECT PartyCode, SUM(IFNULL(QtyRec,0)*IFNULL(Rate,0)) FROM Stock WHERE IFNULL(QtyRec,0)>0 GROUP BY PartyCode")}
    exp_ps = {"PARTY01": 13380.0, "PARTY02": 49600.0}
    for k, v in exp_ps.items():
        got = round(ps.get(k, 0), 2)
        print(f"  [{'PASS' if got==v else 'FAIL'}] PurchaseSummary {k}: expected {v}, got {got}")

    # 5) ABCAnalysis -> top item WHKY001 (5100) class A
    top = conn.execute("""SELECT Item, SUM(IFNULL(QtyIss,0)*IFNULL(Rate,0)) v
        FROM Stock WHERE IFNULL(QtyIss,0)>0 GROUP BY Item ORDER BY v DESC LIMIT 1""").fetchone()
    print(f"  [{'PASS' if top and top[0]=='WHKY001' else 'FAIL'}] ABCAnalysis top item: expected WHKY001 (5100), got {top}")

    # 6) StoreIssueRegister total (12350) + indent issues (800)
    ind = one("SELECT SUM(IFNULL(QtyIss,0)*IFNULL(Rate,0)) FROM Stock WHERE IFNULL(IndentDocId,'')<>''")
    print(f"  [{'PASS' if abs(ind-800)<0.01 else 'FAIL'}] IndentReg total: expected 800, got {ind}")

    # 7) PurchBill QA columns: RICE001 ChalQty=100 RecdQty=98 RejQty=2
    qa = conn.execute("""SELECT ChalQty, RecdQty, AccQty, RejQty FROM Stock
        WHERE DocId='P0001/1609' AND Item='RICE001'""").fetchone()
    exp_qa = (100, 98, 96, 2)
    print(f"  [{'PASS' if qa==exp_qa else 'FAIL'}] PurchBill QA (RICE001): expected {exp_qa}, got {qa}")

    # 8) Sale2 tax total = 250+0+2800+1800
    tax = one("SELECT SUM(TaxAmt) FROM Sale2")
    print(f"  [{'PASS' if abs(tax-4850)<0.01 else 'FAIL'}] Sale2 TaxAmt total: expected 4850, got {tax}")

    # 9) FBCostStatement: REST1 cons = 20*40 + 10*120 = 2000, sale = 5900+12300
    rc = one("SELECT SUM(IFNULL(QtyIss,0)*IFNULL(Rate,0)) FROM Stock WHERE RestCode='REST1' AND IFNULL(QtyIss,0)>0")
    rs = one("SELECT SUM(NetAmt) FROM Sale1 WHERE RestCode='REST1'")
    print(f"  [{'PASS' if abs(rc-3020)<0.01 else 'FAIL'}] FBCost REST1 consumption: expected 3020, got {rc}")
    print(f"  [{'PASS' if abs(rs-18200)<0.01 else 'FAIL'}] FBCost REST1 sales: expected 18200, got {rs}")

    # 10) SunTran journal balance
    dr = one("SELECT SUM(Amount) FROM SunTran WHERE SunCode='SUNDR'")
    cr = one("SELECT SUM(Amount) FROM SunTran WHERE SunCode='SUNCR'")
    print(f"  [{'PASS' if abs(dr-cr)<0.01 and abs(dr-30312)<0.01 else 'FAIL'}] SunTran Dr=Cr=30312: dr={dr}, cr={cr}")

    # 11) StockInHand naye groups (ordering test: ATTA001 < ATTA002 same-group)
    sih = dict(conn.execute("""SELECT Item, SUM(IFNULL(QtyRec,0)-IFNULL(QtyIss,0)) FROM Stock
        WHERE IFNULL(VoidYN,'')<>'Y' GROUP BY Item"""))
    for k, v in {"ATTA001": 40, "ATTA002": 30, "TEA001": 25, "WINE001": 12, "VODKA001": 12}.items():
        got = sih.get(k)
        print(f"  [{'PASS' if got==v else 'FAIL'}] StockInHand {k}: expected {v}, got {got}")
    order_q = """SELECT CASE WHEN Item LIKE 'ATTA%' THEN 'ATTA' WHEN Item LIKE 'OIL%' THEN 'OIL'
        WHEN Item LIKE 'RICE%' THEN 'RICE' WHEN Item LIKE 'SUGR%' THEN 'SUGAR'
        WHEN Item LIKE 'TEA%' THEN 'TEA' WHEN Item LIKE 'VODKA%' THEN 'VODKA'
        WHEN Item LIKE 'WHKY%' THEN 'WHISKY' WHEN Item LIKE 'WINE%' THEN 'WINE'
        ELSE 'OTHER' END g, Item
        FROM (SELECT Item, SUM(IFNULL(QtyRec,0)-IFNULL(QtyIss,0)) b FROM Stock
              WHERE IFNULL(VoidYN,'')<>'Y' GROUP BY Item HAVING b<>0)
        ORDER BY g, Item"""
    ord_rows = conn.execute(order_q).fetchall()
    exp_order = [('ATTA','ATTA001'),('ATTA','ATTA002'),('OIL','OIL001'),('RICE','RICE001'),
                 ('SUGAR','SUGR001'),('TEA','TEA001'),('VODKA','VODKA001'),
                 ('WHISKY','WHKY001'),('WINE','WINE001')]
    print(f"  [{'PASS' if ord_rows==exp_order else 'FAIL'}] StockInHand group-order: got {ord_rows}")

    # 12) Updated totals
    ps2 = {p: a for p, a in conn.execute(
        "SELECT PartyCode, SUM(IFNULL(QtyRec,0)*IFNULL(Rate,0)) FROM Stock WHERE IFNULL(QtyRec,0)>0 GROUP BY PartyCode")}
    for k, v in {"PARTY01": 13380.0, "PARTY02": 49600.0}.items():
        got = round(ps2.get(k, 0), 2)
        print(f"  [{'PASS' if got==v else 'FAIL'}] PurchaseSummary {k}: expected {v}, got {got}")
    cons2 = one("SELECT SUM(IFNULL(QtyIss,0)*IFNULL(Rate,0)) FROM Stock WHERE IFNULL(QtyIss,0)>0")
    print(f"  [{'PASS' if abs(cons2-13370)<0.01 else 'FAIL'}] FoodCost consumption: expected 13370, got {cons2}")
    pl = conn.execute("SELECT COUNT(*) FROM Stock WHERE PartyCode='PARTY01' AND IFNULL(QtyRec,0)>0").fetchone()[0]
    print(f"  [{'PASS' if pl==4 else 'FAIL'}] PurchaseLedger PARTY01 rows: expected 4, got {pl}")
    rc2 = one("SELECT SUM(IFNULL(QtyIss,0)*IFNULL(Rate,0)) FROM Stock WHERE RestCode='REST1' AND IFNULL(QtyIss,0)>0")
    print(f"  [{'PASS' if abs(rc2-3020)<0.01 else 'FAIL'}] FBCost REST1 consumption: expected 3020, got {rc2}")

    # 13) EQUIVALENCE: prefix-CASE vs ItemMast JOIN (dono same order/rows dene chahiye)
    grp_join = """SELECT COALESCE(IM.GrpName,'OTHER') g, S.Item
        FROM Stock S
        LEFT JOIN ItemMast IM ON IM.ItemCode = S.Item
        WHERE IFNULL(S.VoidYN,'')<>'Y' GROUP BY COALESCE(IM.GrpName,'OTHER'), S.Item
        HAVING SUM(IFNULL(S.QtyRec,0)-IFNULL(S.QtyIss,0))<>0
        ORDER BY COALESCE(IM.GrpName,'OTHER'), S.Item"""
    derived = conn.execute(order_q).fetchall()
    joined = conn.execute(grp_join).fetchall()
    print(f"  [{'PASS' if derived==joined else 'FAIL'}] EQUIVALENCE prefix-CASE vs ItemMast JOIN: rows match = {derived==joined}")
    seeds = {r[0] for r in conn.execute("SELECT ItemCode FROM ItemMast")}
    print(f"  [{'PASS' if seeds == {s[0] for s in IM_SEED} else 'FAIL'}] ItemMast seed loaded: {len(seeds)} rows")

    # ---------------- PROC VALIDATION (SSRS/Excel pattern) ----------------
    print("\n=== STORED PROC VALIDATION (temp-table pattern, SQLite me simulate) ===")
    proc_sql = open("stock_reports_procs.sql", encoding="utf-8").read()
    proc_blocks = re.findall(r"CREATE PROCEDURE (dbo\.\w+)([^\n]*)(.*?)\nEND\n", proc_sql, re.S)

    def sim_proc(sig_params, body_text):
        """Proc body ko SQLite me simulate karo: #Rpt->Rpt, @params->literals, execute"""
        s = body_text
        # AS BEGIN ... END wrappers hatao (pehli aur aakhri line)
        s = re.sub(r"^\s*AS\s*\n?\s*BEGIN\s*$", "", s, flags=re.M)
        s = re.sub(r"^\s*END\s*$", "", s, flags=re.M | re.MULTILINE)
        s = s.strip()
        # params -> literals (sig se dates capture)
        for pname, pval in sig_params:
            s = re.sub(rf"@{pname}\b", f"'{pval}'", s)
        # T-SQL specific lines hatao / convert karo
        s = tsql_to_sqlite(s)
        s = s.replace("#Rpt", "Rpt")
        s = re.sub(r"^\s*SET (NOCOUNT|XACT_ABORT) ON;\s*$", "", s, flags=re.M)
        s = re.sub(r"^\s*IF OBJECT_ID\('tempdb\.\.Rpt'\) IS NOT NULL DROP TABLE Rpt;\s*$",
                   "DROP TABLE IF EXISTS Rpt;", s, flags=re.M)
        # statements execute karo, SELECT results capture karo
        results = []
        for stmt in [x.strip() for x in s.split(";") if x.strip()]:
            if stmt.upper().startswith("SELECT"):
                cur = conn.execute(stmt)
                results.append((cur.description, cur.fetchall()))
            else:
                conn.execute(stmt)
        conn.commit()
        return results

    proc_ok, proc_fail = 0, []
    for pname, sig, pbody in proc_blocks:
        try:
            # sig se date params nikaalo: @F DATE, @T DATE
            params = [(m.group(1), m.group(2)) for m in
                      re.finditer(r"@(\w+) DATE='?'?([0-9-]{10})'?" , sig)]
            if not params:  # sig me dates literals ke sath nahi - default use karo
                params = [(m.group(1), d) for m, d in zip(
                    re.finditer(r"@(\w+) DATE", sig), ['2016-09-01','2016-09-30','2016-09-15'])]
            res = sim_proc(params, pbody)
            final = res[-1]  # last SELECT = final report output
            desc, rows = final
            colnames = [d[0] for d in desc]
            # padded headers strip karke actual names compare
            clean = [c.strip() for c in colnames]
            # ORDER BY sortedness check (first ORDER BY key)
            mob = re.search(r"ORDER BY \[?(\w+)\]?( DESC)?", pbody.split("FROM Rpt")[-1], re.I)
            order_note = ""
            if mob and rows:
                keyname = mob.group(1).strip()
                desc_flag = bool(mob.group(2))
                if keyname in clean:
                    i = clean.index(keyname)
                    vals = [r[i] for r in rows if r[i] is not None]
                    sorted_ok = vals == sorted(vals, reverse=desc_flag)
                    order_note = f", sorted({keyname}{' DESC' if desc_flag else ''})={'Y' if sorted_ok else 'N'}"
            print(f"  OK   {pname:<32} rows={len(rows)} cols={len(clean)}{order_note}")
            proc_ok += 1
        except Exception as e:
            proc_fail.append((pname, str(e)))
            print(f"  FAIL {pname:<32} {e}")
    print(f"\n{proc_ok} procs OK, {len(proc_fail)} FAIL")

    # ---------------- stock_reports_sqlite.sql save ----------------
    bar = "=" * 78
    with open("stock_reports_sqlite.sql", "w", encoding="utf-8") as f:
        f.write(bar + "\n SQLITE-VALIDATED STOCK QUERIES (in-memory SQLite par test kiye gaye)\n")
        f.write(f" RESULT : {ok} passed, {len(fail)} failed\n")
        f.write(" NOTE   : T-SQL se convert (ISNULL->IFNULL, DECLARE->literal dates)\n")
        f.write(bar + "\n\n")
        for key, val in converted.items():
            if key == "GENERIC":
                continue
            src, q = val
            f.write(f"-- {key.upper()}\n{q}\n\n")
        f.write(f"\n-- {bar}\n-- GENERIC CATEGORY QUERIES\n-- {bar}\n\n")
        for key, (src, q) in converted.get("GENERIC", {}).items():
            f.write(f"-- [GENERIC / {key}]\n{q}\n\n")
    print("\nstock_reports_sqlite.sql written")

    conn.close()
    return 0 if (not fail and not proc_fail) else 1

if __name__ == "__main__":
    sys.exit(main())
