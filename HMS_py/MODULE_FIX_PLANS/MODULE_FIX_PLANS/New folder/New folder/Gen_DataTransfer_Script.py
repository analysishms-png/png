#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Gen_DataTransfer_Script.py
--------------------------
VijayData2627.sql (SSMS schema dump) parse karke TABLE-WISE data transfer
T-SQL script banata hai. Do modes:

1) SAME-SERVER mode (source aur destination DB ek hi SQL Server par):
       python Gen_DataTransfer_Script.py <DestinationDB> [--only=T1,T2*] [--out=F.sql]
                                          [--batch=5000] [--verify]
   Output: Transfer_VijayData2627.sql

2) LINKED-SERVER mode (destination server ALAG hai):
       python Gen_DataTransfer_Script.py linked <LinkedServerName> [--only=...] [--out=F.sql]
                                                  [--batch=5000] [--verify]
   Output (default): Transfer_VijayData2627_Linked.sql
   Ye script DESTINATION server par chalegi aur source server se data PULL karegi.

BATCHING (default ON, @B = 5000 rows/batch):
   * Har table pehle local #staging temp-table me aati hai (source se EK read),
     phir wahan se @B rows ke batches me destination me insert hoti hai.
   * Har batch apne transaction me -> transaction log chhota rehta hai,
     koi ek bade INSERT ka timeout/log-pressure nahi.
   * Beench me batch fail ho to pichhle batches committed rehte hain;
     script dobara chalao to PK-guard sirf bache hue rows lega.

VERIFY (--verify):
   Row-count comparison script banata hai (SrcCnt vs DstCnt per table).

INCREMENTAL (--months=N ya --since=YYYY-MM-DD):
   * Sirf nayi rows: har table ka pehla available date column auto-detect hota
     hai (priority: Vdate -> U_EntDt -> EntDate -> Entrydate) aur staging read
     par WHERE [DateCol] >= cutoff lagta hai (filter SOURCE par hi chalta hai).
   * Jis table me koi date column nahi hai, wo FULL copy hogi (PK-guard ke saath)
     aur PRINT me note dikhega.
   * Cutoff generation time par baked literal (YYYYMMDD) hota hai - naya window
     chahiye to generator dobara chalao ya script me literal edit karo.
   * Incremental mode me output filename me _Inc suffix lagta hai.
"""

import calendar
import datetime
import fnmatch
import io
import re
import sys

SRC_FILE = "VijayData2627.sql"

CHAR_TYPES = {"CHAR", "VARCHAR", "NCHAR", "NVARCHAR", "SYSNAME"}
DEFAULT_BATCH = 5000
DATE_PRIORITY = ["Vdate", "U_EntDt", "EntDate", "Entrydate", "EntryDate"]


def months_ago(n):
    t = datetime.date.today()
    m, y = t.month - n, t.year
    while m <= 0:
        m += 12
        y -= 1
    d = min(t.day, calendar.monthrange(y, m)[1])
    return datetime.date(y, m, d)

# ---------------------------------------------------------------------------
# Parse dump
# ---------------------------------------------------------------------------
raw = io.open(SRC_FILE, encoding="utf-16", newline="").read()

m_src = re.search(r"USE\s+\[([^\]]+)\]", raw)
SRC_DB = m_src.group(1) if m_src else "VijayData2627"

# SSMS comment banners hatao
text = re.sub(r"/\*{2,}.*?\*{2,}/", "", raw, flags=re.S)

tab_pat = re.compile(
    r"CREATE TABLE \[dbo\]\.\[([^\]]+)\]\((.*?)\)\s*ON \[PRIMARY\]", re.S)


def split_top_commas(body):
    parts, depth, cur = [], 0, ""
    for ch in body:
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
        if ch == "," and depth == 0:
            parts.append(cur)
            cur = ""
        else:
            cur += ch
    parts.append(cur)
    return parts


def parse_table(body):
    """returns (cols=[(name,type)], pk=[names], has_identity)"""
    cols, pk, ident = [], [], False
    for p in split_top_commas(body):
        p = p.strip()
        if not p:
            continue
        u = p.upper()
        m = re.match(r"\[([^\]]+)\]\s+\[([^\]]+)\]", p)
        if m:
            typ = m.group(2).upper()
            if typ in ("TIMESTAMP", "ROWVERSION"):
                continue
            cols.append((m.group(1), typ))
            if "IDENTITY" in u:
                ident = True
        elif u.startswith("CONSTRAINT") and "PRIMARY KEY" in u and "(" in p:
            found = re.findall(r"\[([^\]]+)\]", p.split("(", 1)[1])
            pk = [c for c in found if c.upper() not in ("ASC", "DESC")]
    return cols, pk, ident


tables, order = {}, []
for m in tab_pat.finditer(text):
    name = m.group(1)
    if name in tables:
        continue
    cols, pk, ident = parse_table(m.group(2))
    if not cols:
        print("  ! skip (parse fail):", name)
        continue
    tables[name] = (cols, pk, ident)
    order.append(name)

ident_tables = [t for t in order if tables[t][2]]
nopk_tables = [t for t in order if not tables[t][1]]
print("Source DB : %s" % SRC_DB)
print("Tables    : %d" % len(order))
print("Identity  : %d" % len(ident_tables))
print("No-PK     : %d" % len(nopk_tables))


def q(s):
    return s.replace("'", "''")


# ---------------------------------------------------------------------------
# Arg parsing
# ---------------------------------------------------------------------------
args = sys.argv[1:]
positional, ONLY, OUT_OVERRIDE, VERIFY, BATCH = [], None, None, False, DEFAULT_BATCH
MONTHS, SINCE = None, None
for a in args:
    al = a.lower()
    if al.startswith("--only="):
        ONLY = a.split("=", 1)[1]
    elif al.startswith("--out="):
        OUT_OVERRIDE = a.split("=", 1)[1]
    elif al == "--verify":
        VERIFY = True
    elif al.startswith("--months="):
        try:
            MONTHS = int(a.split("=", 1)[1])
        except ValueError:
            sys.exit("--months=N me integer chahiye (jaise --months=3)")
    elif al.startswith("--since="):
        SINCE = a.split("=", 1)[1]
    elif al.startswith("--batch="):
        try:
            BATCH = int(a.split("=", 1)[1])
        except ValueError:
            sys.exit("--batch=N me integer chahiye (jaise --batch=10000)")
        if BATCH < 100:
            sys.exit("--batch kam se kam 100 rakho")
    else:
        positional.append(a)

LINKED = bool(positional) and positional[0].lower() == "linked"

# ---- incremental cutoff (--months=N / --since=YYYY-MM-DD) ----
CUT = None
if SINCE:
    try:
        CUT = datetime.datetime.strptime(SINCE, "%Y-%m-%d").date().strftime("%Y%m%d")
    except ValueError:
        sys.exit("--since format: YYYY-MM-DD (jaise --since=2026-06-13)")
elif MONTHS is not None:
    CUT = months_ago(MONTHS).strftime("%Y%m%d")
INC = CUT is not None

# ---- table filter (--only=Name1,Prefix*,...) : exact ya wildcard match ----
if ONLY:
    pats = [p.strip() for p in ONLY.split(",") if p.strip()]
    matched, hit = [], set()
    for t in order:
        tl = t.lower()
        for p in pats:
            pl = p.lower()
            if ("*" in pl and fnmatch.fnmatchcase(tl, pl)) or tl == pl:
                matched.append(t)
                hit.add(p)
                break
    for p in pats:
        if p not in hit:
            print("  ! pattern se koi table match nahi hui: %s" % p)
    order = matched
    print("Selected tables (%d): %s" % (len(order), ", ".join(order)))
    if not order:
        sys.exit("ERROR: --only pattern se koi table match nahi hui")

SUF = ("_Selected" if ONLY else "") + ("_Inc" if INC else "")

if LINKED:
    if len(positional) < 2:
        sys.exit("Linked mode: python Gen_DataTransfer_Script.py linked <LinkedServerName> "
                 "[--only=T1,T2*] [--out=F.sql] [--batch=5000] [--months=3|--since=YYYY-MM-DD] [--verify]")
    LS = positional[1]
    if OUT_OVERRIDE:
        OUT_FILE = OUT_OVERRIDE
    elif VERIFY:
        OUT_FILE = "Transfer_%s_Verify_Linked%s.sql" % (SRC_DB, SUF)
    else:
        OUT_FILE = "Transfer_%s_Linked%s.sql" % (SRC_DB, SUF)
else:
    DEST_DB = positional[0] if positional else "DESTINATION_DB"
    if OUT_OVERRIDE:
        OUT_FILE = OUT_OVERRIDE
    elif VERIFY:
        OUT_FILE = "Transfer_%s_Verify%s.sql" % (SRC_DB, SUF)
    else:
        OUT_FILE = "Transfer_%s%s.sql" % (SRC_DB, SUF)

# ---- per-table date column (incremental) ----
date_col = {}
if INC:
    for t in order:
        lowmap = {c.lower(): c for c, ty in tables[t][0]}
        date_col[t] = next((lowmap[p.lower()] for p in DATE_PRIORITY
                            if p.lower() in lowmap), None)
    stats = {}
    for t in order:
        k = date_col[t] or "(no date col -> FULL copy)"
        stats[k] = stats.get(k, 0) + 1
    print("Incremental cutoff : >= %s" % CUT)
    for k, v in sorted(stats.items()):
        print("   %-30s %d tables" % (k, v))


# ---------------------------------------------------------------------------
# Shared: staging + batch-loop DML (dono modes me same logic)
# ---------------------------------------------------------------------------
def build_stage_loop(tname, src_from):
    cols, pk, ident = tables[tname]
    dc = date_col.get(tname)
    names = [c for c, t in cols]
    col_list = ", ".join("[%s]" % c for c in names)

    # re-run guard: PK wali tables me sirf missing rows insert honge
    if pk:
        typemap = dict(cols)
        conds = []
        for c in pk:
            coll = " COLLATE DATABASE_DEFAULT" if typemap[c] in CHAR_TYPES else ""
            conds.append("d.[%s] = st.[%s]%s" % (c, c, coll))
        guard = ("\n                       AND NOT EXISTS (SELECT 1 FROM [dbo].[%s] AS d\n"
                 "                                        WHERE %s)"
                 % (tname, " AND ".join(conds)))
    else:
        guard = ""

    L = []
    A = L.append
    if INC and dc:
        A("            PRINT 'Transferring [%s] ... (only [%s] >= %s)';"
          % (tname, dc, CUT))
    elif INC:
        A("            PRINT 'Transferring [%s] ... (no date column -> FULL copy with PK guard)';"
          % tname)
    else:
        A("            PRINT 'Transferring [%s] ...';" % tname)
    A("")
    A("            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;")
    A("")
    A("            -- (1) source data ek baar local staging me (single read)")
    A("            SELECT IDENTITY(int, 1, 1) AS _xf_rid, %s" % col_list)
    A("            INTO #S_T")
    A("            %s;" % src_from)
    A("")
    A("            CREATE CLUSTERED INDEX _xf_ix ON #S_T (_xf_rid);")
    A("")
    A("            SET @MaxRid = ISNULL((SELECT MAX(_xf_rid) FROM #S_T), 0);")
    A("            SET @lo = 1; SET @hi = 0; SET @BN = 0; SET @Tot = 0;")
    A("")
    A("            -- (2) batch-wise copy: har batch apne transaction me (@B rows)")
    A("            WHILE @lo <= @MaxRid")
    A("            BEGIN")
    A("                SET @hi = @lo + @B - 1;")
    A("                BEGIN TRANSACTION;")
    if ident:
        A("                    SET IDENTITY_INSERT [dbo].[%s] ON;" % tname)
    A("                    INSERT INTO [dbo].[%s] (%s)" % (tname, col_list))
    A("                    SELECT %s" % col_list)
    A("                    FROM #S_T AS st")
    A("                    WHERE st._xf_rid >= @lo AND st._xf_rid <= @hi%s" % guard)
    A("                    SET @RC = @@ROWCOUNT;")
    if ident:
        A("                    SET IDENTITY_INSERT [dbo].[%s] OFF;" % tname)
    A("                    COMMIT TRANSACTION;")
    A("")
    A("                    SET @Tot = @Tot + @RC;")
    A("                IF @RC > 0")
    A("                BEGIN")
    A("                    SET @BN = @BN + 1;")
    A("                    PRINT '   batch ' + CAST(@BN AS varchar(10)) + ': '")
    A("                          + CAST(@RC AS varchar(20)) + ' rows (total '")
    A("                          + CAST(@Tot AS varchar(20)) + ')';")
    A("                END")
    A("                SET @lo = @hi + 1;")
    A("            END")
    A("")
    A("            PRINT '   DONE [%s]: ' + CAST(@Tot AS varchar(20)) + ' rows, '" % tname)
    A("                  + CAST(@BN AS varchar(10)) + ' batch(es)';")
    A("")
    A("            DROP TABLE #S_T;")
    return "\n".join(L), ident


def build_block_common(tname, preflight, src_from):
    loop_text, ident = build_stage_loop(tname, src_from)
    catch_extra = ("            SET IDENTITY_INSERT [dbo].[%s] OFF;\n" % tname) if ident else ""
    return """%s
    ELSE
    BEGIN
        BEGIN TRY
%s
        END TRY
        BEGIN CATCH
            IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
            IF OBJECT_ID(N'tempdb..#S_T', N'U') IS NOT NULL DROP TABLE #S_T;
%s            PRINT '   FAILED [%s] -> ' + ERROR_MESSAGE();
        END CATCH;
    END
END
""" % (preflight, loop_text, catch_extra, tname)


# ---------------------------------------------------------------------------
# SAME-SERVER emit
# ---------------------------------------------------------------------------
def build_block_local(tname):
    cols, pk, ident = tables[tname]
    names = [c for c, t in cols]
    n = len(names)
    check_list = ", ".join("'%s'" % q(c) for c in names)

    preflight = """PRINT 'Table : [{T}]';

IF OBJECT_ID(N'{S}.dbo.[{T}]', N'U') IS NULL
    PRINT '   SKIPPED  -> source table missing';
ELSE IF OBJECT_ID(N'[dbo].[{T}]', N'U') IS NULL
    PRINT '   SKIPPED  -> destination table missing';
ELSE IF (SELECT COUNT(*) FROM sys.columns
         WHERE object_id = OBJECT_ID(N'[dbo].[{T}]')
           AND name IN ({CHK})) < {N}
    PRINT '   SKIPPED  -> destination me kuch columns missing hain'""".format(
        T=tname, S=SRC_DB, CHK=check_list, N=n)

    src_from = "FROM [%s].[dbo].[%s] AS s" % (SRC_DB, tname)
    dc = date_col.get(tname)
    if INC and dc:
        src_from += "\n            WHERE s.[%s] >= '%s'" % (dc, CUT)
    block = build_block_common(tname, preflight, src_from)
    return block + "\nGO\n"


def build_local():
    head = """/* ============================================================================
   DATA TRANSFER SCRIPT   :   [{S}]  ->  [{D}]   (same SQL Server instance)
   ----------------------------------------------------------------------------
   KAAM KAISE KARE:
     1) SSMS me ye script kholo.
     2) Sabse upar 'USE [{D}]' line me destination DB ka naam theek karo.
     3) F5 dabao. Messages window me har table ka status dikhega:
          DONE [Table]: n rows, k batches  /  SKIPPED (reason)  /  FAILED (reason)

   RULES:
     * BATCH-WISE transfer (@B = {B} rows per batch/transaction):
         - transaction log chhota rehta hai (log growth / timeouts se bachav)
         - koi batch fail ho to pichhle batches committed rehte hain;
           script dobara chalao to PK-guard sirf bache hue rows lega
     * Har table pehle local #staging me aati hai (source se ek read), phir
       staging se batches me destination me. Tempdb me sabse badi table
       jitni jagah chahiye ho sakti hai (table khatam hote hi free).
     * IDENTITY wali tables me SET IDENTITY_INSERT ON/OFF automatic.
     * PK wali tables me NOT EXISTS guard -> re-run par duplicate nahi.
       (Bina-PK wali {NOPK} tables batch to hain, par re-run guard nahi.)
     * Har table alag TRY/CATCH me -> ek fail ho to baaki chalte rahenge.
   ============================================================================ */

USE [{D}];   -- << DESTINATION DATABASE (yahan naam badlo)
GO

SET NOCOUNT ON;

DECLARE @RC bigint;
DECLARE @Tot bigint;
DECLARE @B  int = {B};   -- batch size (rows per transaction)
DECLARE @MaxRid int;
DECLARE @lo int;
DECLARE @hi int;
DECLARE @BN int;

PRINT '========== DATA TRANSFER START : [{S}] -> [{D}] (batch={B}) ==========';
{INCNOTE}
PRINT '';

""".format(S=SRC_DB, D=DEST_DB, B=BATCH, NOPK=len(nopk_tables),
           INCNOTE=("PRINT 'INCREMENTAL: sirf date >= %s wali nayi rows (per-table date column, auto-detected)';" % CUT) if INC else "")

    tail = """
PRINT '';
PRINT '========== DATA TRANSFER COMPLETE ==========';
"""

    blocks = [build_block_local(t) for t in order]
    return head + "\n".join(blocks) + tail


# ---------------------------------------------------------------------------
# LINKED-SERVER emit
# ---------------------------------------------------------------------------
def build_block_linked(tname):
    cols = tables[tname][0]
    names = [c for c, t in cols]
    check_list = ", ".join("'%s'" % q(c) for c in names)
    remote_sel = ",".join("[%s]" % c for c in names)

    preflight = """------------------------------------------------------------
-- [{T}]
------------------------------------------------------------
IF @OK = 1
BEGIN
    SET @NC = (SELECT COUNT(*) FROM #C WHERE TName = N'{T}');

    IF @NC = 0
        PRINT 'SKIPPED [{T}] -> source table missing';
    ELSE IF OBJECT_ID(N'dbo.[{T}]', N'U') IS NULL
        PRINT 'SKIPPED [{T}] -> destination table missing';
    ELSE IF EXISTS (SELECT 1 FROM #C WHERE TName = N'{T}'
                    AND CName NOT IN (SELECT name FROM sys.columns
                                      WHERE object_id = OBJECT_ID(N'dbo.[{T}]')))
        PRINT 'SKIPPED [{T}] -> source ke kuch columns destination me nahi hain';
    ELSE IF EXISTS (SELECT 1 FROM sys.columns
                    WHERE object_id = OBJECT_ID(N'dbo.[{T}]')
                      AND name NOT IN (SELECT CName FROM #C WHERE TName = N'{T}'))
        PRINT 'SKIPPED [{T}] -> destination me extra columns hain'""".format(T=tname)

    remote_q = "SELECT %s FROM [%s].dbo.[%s]" % (remote_sel, SRC_DB, tname)
    dc = date_col.get(tname)
    if INC and dc:
        remote_q += " WHERE [%s] >= '%s'" % (dc, CUT)
    src_from = "FROM OPENQUERY([%s], N'%s') AS s" % (LS, q(remote_q))
    return build_block_common(tname, preflight, src_from)


def build_linked():
    head = """/* ============================================================================
   LINKED-SERVER DATA TRANSFER   :   [{S}] (remote server)  ->  current DB (destination server)
   ----------------------------------------------------------------------------
   KAAM KAISE KARE:
     1) SSMS me DESTINATION server par connect karo aur destination DB ko
        current database banao (script khud USE nahi karti).
     2) Neeche CONFIG me Linked Server ka naam check karo.
     3) F5. Har table ka status Messages window me dikhega.

   KAISE KAAM KARTA HAI:
     * Ye script DESTINATION server par chalti hai aur source server se data
       PULL karti hai (IDENTITY_INSERT local table par sahi kaam karta hai).
     * BATCH-WISE transfer (@B = {B} rows per batch/transaction):
         - transaction log chhota rehta hai (log growth / timeouts se bachav)
         - koi batch fail ho to pichhle batches committed rehte hain;
           script dobara chalao to PK-guard sirf bache hue rows lega
     * Har table pehle local #staging me aati hai (source se EK remote read),
       phir staging se batches me destination me. Tempdb me sabse badi table
       jitni jagah chahiye ho sakti hai (table khatam hote hi free).
     * Shuru me linked server connectivity + source DB existence check hota hai.
     * Source ke saare column names ek baar #C temp table me cache hote hain,
       phir har table ke liye saare checks LOCAL hain (fast).
     * Column-NAME based insert; source ke extra columns destination me nahi
       hain to table SKIP (koi error nahi).
     * String PK comparisons par COLLATE DATABASE_DEFAULT -> server collation
       alag ho to bhi kaam karega.
     * IDENTITY tables: SET IDENTITY_INSERT ON/OFF automatic.
     * PK tables: NOT EXISTS guard -> re-run par duplicate nahi.
       (Bina-PK wali {NOPK} tables batch to hain, par re-run guard nahi.)
     * Har table TRY/CATCH me -> ek fail ho to baaki chalte rahenge.

   LINKED SERVER BANANA HO (ek baar, destination server par):
     EXEC sp_addlinkedserver @server=N'{LS}', @srvproduct=N'',
          @provider=N'SQLNCLI', @datasrc=N'REMOTE_SERVER\\INSTANCE';
     (login mapping me source DB ka read access zaroori hai)

   NAAM BADALNE HO TO: generator dobara chalao
     python Gen_DataTransfer_Script.py linked <LinkedServerName> [--only=...] [--batch=N]
   ============================================================================ */

SET NOCOUNT ON;

-- ============ CONFIG (generator se baked) ============
-- Linked Server : [{LS}]
-- Source DB     : [{S}]  (remote server par)

DECLARE @OK bit = 1;
DECLARE @NC int;
DECLARE @RC bigint;
DECLARE @Tot bigint;
DECLARE @B  int = {B};   -- batch size (rows per transaction)
DECLARE @MaxRid int;
DECLARE @lo int;
DECLARE @hi int;
DECLARE @BN int;

-- ============ PRE-FLIGHT CHECKS ============
BEGIN TRY
    EXEC sp_testlinkedserver N'{LS}';
    PRINT 'Linked server [{LS}] OK';
END TRY
BEGIN CATCH
    SET @OK = 0;
    PRINT 'STOP: linked server [{LS}] reachable nahi hai -> ' + ERROR_MESSAGE();
END CATCH;

IF @OK = 1 AND NOT EXISTS (
    SELECT 1 FROM OPENQUERY([{LS}],
        N'SELECT 1 AS OK WHERE DB_ID(N''{S}'') IS NOT NULL'))
BEGIN
    SET @OK = 0;
    PRINT 'STOP: source DB [{S}] remote server par nahi mili';
END

-- ============ SOURCE SCHEMA CACHE (#C) ============
CREATE TABLE #C (TName sysname, CName sysname, PRIMARY KEY (TName, CName));

IF @OK = 1
BEGIN
    PRINT 'Source schema check (remote catalog read)...';
    BEGIN TRY
{CATALOG}
        PRINT 'Source schema cache ready (' +
              CAST((SELECT COUNT(DISTINCT TName) FROM #C) AS varchar(10)) + ' tables)';
    END TRY
    BEGIN CATCH
        SET @OK = 0;
        PRINT 'STOP: source schema read fail -> ' + ERROR_MESSAGE();
    END CATCH;
END

PRINT '';
PRINT '========== TRANSFER START (batch={B}) ==========';
{INCNOTE}
PRINT '';

""".format(S=SRC_DB, LS=LS, B=BATCH, NOPK=len(nopk_tables),
           INCNOTE=("PRINT 'INCREMENTAL: sirf date >= %s wali nayi rows (per-table date column, auto-detected)';" % CUT) if INC else "",
           CATALOG="\n".join(
               "        INSERT INTO #C (TName, CName)\n"
               "        SELECT N'%s', name\n"
               "        FROM OPENQUERY([%s], N'SELECT name FROM [%s].sys.columns\n"
               "                        WHERE object_id = OBJECT_ID(N''[%s].dbo.[%s]'')');"
               % (t, LS, SRC_DB, SRC_DB, t)
               for t in order))

    tail = """
PRINT '';
PRINT '========== LINKED TRANSFER COMPLETE ==========';
"""

    blocks = [build_block_linked(t) for t in order]
    return head + "\n".join(blocks) + tail


# ---------------------------------------------------------------------------
# VERIFY emit (row-count compare)
# ---------------------------------------------------------------------------
def build_verify_block_linked(tname):
    return """    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'{T}', s.cnt,
           CASE WHEN OBJECT_ID(N'[dbo].[{T}]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[{T}]) END,
           1,
           CASE WHEN OBJECT_ID(N'[dbo].[{T}]', N'U') IS NULL THEN 0 ELSE 1 END
    FROM OPENQUERY([{LS}], N'SELECT COUNT_BIG(*) AS cnt FROM [{S}].dbo.[{T}]') AS s;
""".format(T=tname, LS=LS, S=SRC_DB)


def build_verify_block_local(tname):
    return """    INSERT INTO #V (TName, SrcCnt, DstCnt, SrcHasTable, DstHasTable)
    SELECT N'{T}',
           CASE WHEN OBJECT_ID(N'[{S}].[dbo].[{T}]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT_BIG(*) FROM [{S}].[dbo].[{T}]) END,
           CASE WHEN OBJECT_ID(N'[dbo].[{T}]', N'U') IS NULL THEN -1
                ELSE (SELECT COUNT(*) FROM [dbo].[{T}]) END,
           CASE WHEN OBJECT_ID(N'[{S}].[dbo].[{T}]', N'U') IS NULL THEN 0 ELSE 1 END,
           CASE WHEN OBJECT_ID(N'[dbo].[{T}]', N'U') IS NULL THEN 0 ELSE 1 END;
""".format(T=tname, S=SRC_DB)


def build_verify():
    if LINKED:
        # @OK gate: linked server na chale to saare remote counts skip ho jayen
        blocks = "\n".join(build_verify_block_linked(t) for t in order)
        blocks = ("IF @OK = 1\nBEGIN\n"
                  + "\n".join("    " + ln if ln.strip() else ln
                              for ln in blocks.splitlines())
                  + "\nEND")
        env_check = ("-- ============ PRE-FLIGHT ============\n"
                     "BEGIN TRY\n"
                     "    EXEC sp_testlinkedserver N'{LS}';\n"
                     "    PRINT 'Linked server [{LS}] OK';\n"
                     "END TRY\n"
                     "BEGIN CATCH\n"
                     "    SET @OK = 0;\n"
                     "    PRINT 'STOP: linked server [{LS}] reachable nahi hai -> ' + ERROR_MESSAGE();\n"
                     "END CATCH;\n\n").format(LS=LS)
        which = "SSMS me DESTINATION server par connect ho kar chalao"
    else:
        blocks = "\n".join(build_verify_block_local(t) for t in order)
        env_check = ""
        which = "SSMS me destination DB ko current database bana kar chalao"

    tail = """
-- ============ RESULT ============
SELECT TName,
       CASE WHEN SrcHasTable = 0 THEN NULL ELSE SrcCnt END AS SrcCnt,
       CASE WHEN DstHasTable = 0 THEN NULL ELSE DstCnt END AS DstCnt,
       CASE WHEN SrcHasTable = 0 THEN 'SRC-MISSING'
            WHEN DstHasTable = 0 THEN 'DST-MISSING'
            WHEN SrcCnt = DstCnt THEN 'OK'
            WHEN SrcCnt = 0 THEN 'NO-SOURCE-ROWS'
            WHEN DstCnt = 0 THEN 'EMPTY-DEST'
            ELSE 'MISMATCH' END AS Status
FROM #V
ORDER BY CASE WHEN SrcCnt <> DstCnt THEN 0 ELSE 1 END, TName;

DECLARE @Bad int = (SELECT COUNT(*) FROM #V WHERE SrcCnt <> DstCnt);
IF @Bad = 0
    PRINT 'RESULT: SAB TABLES MATCH - total ' + CAST((SELECT COUNT(*) FROM #V) AS varchar(10)) + ' tables';
ELSE
    PRINT 'RESULT: ' + CAST(@Bad AS varchar(10)) + ' table(s) MISMATCH - upar Status column dekho';
"""

    head = """/* ============================================================================
   ROW-COUNT VERIFICATION   :   [{S}]  vs  current DB (destination)
   {MODELINE}
   ----------------------------------------------------------------------------
   KAAM KAISE KARE:
     1) {WHICH}
     2) F5 dabao. Result grid me har table ka SrcCnt vs DstCnt dikhega,
        MISMATCH wali tables sabse upar.

   NOTE: Ye sirf row-count compare karta hai (row-by-row data check nahi).
   ============================================================================ */

SET NOCOUNT ON;

DECLARE @OK bit = 1;

{ENVCHECK}CREATE TABLE #V (TName sysname, SrcCnt bigint, DstCnt bigint,
                  SrcHasTable bit, DstHasTable bit);

PRINT 'Counting rows ({NT} tables)...';

BEGIN TRY
{BLOCKS}
END TRY
BEGIN CATCH
    PRINT 'COUNT FAIL -> ' + ERROR_MESSAGE();
END CATCH;
{TAIL}""".format(S=SRC_DB,
              MODELINE=("   Source: linked server [%s] (remote)" % LS) if LINKED else "   Source: same instance",
              WHICH=which,
              ENVCHECK=env_check,
              BLOCKS=blocks,
              TAIL=tail,
              NT=len(order))

    return head


# ---------------------------------------------------------------------------
# Write output
# ---------------------------------------------------------------------------
if VERIFY:
    script = build_verify()
    mode = "VERIFY-" + ("LINKED" if LINKED else "LOCAL")
elif LINKED:
    script = build_linked()
    mode = "LINKED-SERVER"
else:
    script = build_local()
    mode = "SAME-SERVER"

out = io.open(OUT_FILE, "w", encoding="ascii", errors="replace", newline="\r\n")
out.write(script)
out.close()

print("\n[%s] Wrote %s (%d bytes, %d tables, batch=%d)"
      % (mode, OUT_FILE, len(script), len(order), BATCH))
