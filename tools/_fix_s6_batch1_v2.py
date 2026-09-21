"""S6 Batch-1 v2: BOUNDED regeneration (block = own key-line -> next key-line).

v1 disaster (post-mortem): greedy regex crossed multi-line "sql": ( blocks and
wrote target SQL into distant single-line blocks (NCKOTSummary,
Reconciliation(R2A)); target blocks stayed untouched. v2 fixes by hard block
boundaries + restores victims + post-scans for stray markers.
"""
import io
import re
import sys

P = "HMS_py/core/reports.py"

KEY_RE = re.compile(r'^(\s*)"key": "((?:[^"\\]|\\.)*)",\s*$')

IM = "ISNULL(im.Name,ISNULL(s.Item,''))"
N_ITEM = "live-schema: QtyRcp->QtyRec; item names via ItemMast (im)"
N_KOT = "KOT item-lines (Sale2 has no Item col live)"
N_BAPN = "live Vtype census: BAPN receipts; PartyCode empty -> godown shown"

T = {}
T["ABCAnalysisSale"] = (
    "SELECT TOP ({L}) s.Item," + IM + ",SUM(ISNULL(s.Amount,0)) AS SaleValue,0,'A' "
    "FROM KOT s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.Vdate BETWEEN ? AND ? GROUP BY s.Item,im.Name ORDER BY SaleValue DESC",
    '["Item","Name","SaleValue","CumPct","Class"]', N_KOT)
T["LiquorSaleRep"] = (
    "SELECT TOP ({L}) s.Item," + IM + ",SUM(ISNULL(s.Qty,0)),SUM(ISNULL(s.Amount,0)) "
    "FROM KOT s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.Vdate BETWEEN ? AND ? GROUP BY s.Item,im.Name ORDER BY SUM(ISNULL(s.Amount,0)) DESC",
    '["Item","Name","Qty","Amount"]', N_KOT)
T["CashCreditPurch"] = (
    "SELECT TOP ({L}) s.Vdate,s.Vtype,s.VNo,ISNULL(g.Name,''),SUM(ISNULL(s.Amount,0)) "
    "FROM Stock s LEFT JOIN GodownMast g ON g.Code=s.GodownCode "
    "WHERE s.Vtype='BAPN' AND s.Vdate BETWEEN ? AND ? "
    "GROUP BY s.Vdate,s.Vtype,s.VNo,g.Name ORDER BY s.Vdate,s.VNo",
    '["Vdate","Vtype","VNo","Godown","Amount"]', N_BAPN)
T["PurchaseLedger"] = (
    "SELECT TOP ({L}) s.Vdate,s.Vtype,s.VNo," + IM + ",ISNULL(s.Rate,0),ISNULL(s.QtyRec,0),ISNULL(s.Amount,0) "
    "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.Vtype='BAPN' AND s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,s.VNo",
    '["Vdate","Vtype","VNo","Item","Rate","QtyRec","Amount"]', N_BAPN)
T["PurchBill"] = (
    "SELECT TOP ({L}) s.Vdate,s.DocId,ISNULL(g.Name,''),SUM(ISNULL(s.Amount,0)) "
    "FROM Stock s LEFT JOIN GodownMast g ON g.Code=s.GodownCode "
    "WHERE s.Vtype='BAPN' AND s.Vdate BETWEEN ? AND ? "
    "GROUP BY s.Vdate,s.DocId,g.Name ORDER BY s.Vdate,s.DocId",
    '["Vdate","DocId","Godown","Amount"]', N_BAPN)
T["PurchaseReg"] = (
    "SELECT TOP ({L}) s.Vdate,s.Vtype,s.VNo," + IM + ",ISNULL(s.QtyRec,0),ISNULL(s.Rate,0),ISNULL(s.Amount,0) "
    "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.QtyRec>0 AND s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,s.VNo",
    '["Vdate","Vtype","VNo","Item","QtyRec","Rate","Amount"]', N_ITEM)
T["PurchaseSumm"] = (
    "SELECT TOP ({L}) " + IM + ",SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.Amount,0)) "
    "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.QtyRec>0 AND s.Vdate BETWEEN ? AND ? "
    "GROUP BY s.Item,im.Name ORDER BY SUM(ISNULL(s.Amount,0)) DESC",
    '["Item","Name","QtyRec","Amount"]', N_ITEM)
T["PurchOrder"] = (
    "SELECT TOP ({L}) s.Vdate,s.DocId," + IM + ",ISNULL(s.RecdQty,0),ISNULL(s.Rate,0) "
    "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,s.DocId",
    '["Vdate","DocId","Item","RecdQty","Rate"]',
    "POrderDet absent live; Stock receipt lines (RecdQty) shown")
T["IndentReg"] = (
    "SELECT TOP ({L}) s.Vdate,s.Vtype,s.VNo," + IM + ",ISNULL(s.RecdQty,0),ISNULL(s.IssQty,0) "
    "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,s.VNo",
    '["Vdate","Vtype","VNo","Item","RecdQty","IssQty"]',
    "IndentDet absent live; Stock IndentDocId lines shown")
T["CostAnalysis"] = (
    "SELECT TOP ({L}) " + IM + ",SUM(ISNULL(s.QtyRec,0)),AVG(ISNULL(s.Rate,0)),SUM(ISNULL(s.Amount,0)) "
    "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.QtyRec>0 AND s.Vdate BETWEEN ? AND ? "
    "GROUP BY s.Item,im.Name ORDER BY SUM(ISNULL(s.Amount,0)) DESC",
    '["Item","Name","QtyRec","AvgRate","Amount"]', N_ITEM)
T["KitchenStkRep"] = (
    "SELECT TOP ({L}) " + IM + ",SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.IssQty,0)),SUM(ISNULL(s.QtyRec,0))-SUM(ISNULL(s.IssQty,0)) "
    "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.Vdate BETWEEN ? AND ? GROUP BY s.Item,im.Name ORDER BY im.Name",
    '["Item","Name","QtyRec","IssQty","Balance"]', N_ITEM)
T["KitchenStkSumm"] = (
    "SELECT TOP ({L}) ISNULL(ig.Name,'?'),SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.IssQty,0)),SUM(ISNULL(s.QtyRec,0))-SUM(ISNULL(s.IssQty,0)) "
    "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "LEFT JOIN ItemGrp ig ON ig.Code=im.ItemGroup "
    "WHERE s.Vdate BETWEEN ? AND ? GROUP BY ig.Name ORDER BY ig.Name",
    '["ItemGroup","QtyRec","IssQty","Balance"]', N_ITEM)
T["ProductionReport"] = (
    "SELECT TOP ({L}) s.Vdate," + IM + ",ISNULL(s.QtyRec,0),ISNULL(s.Rate,0),ISNULL(s.Amount,0) "
    "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,s.DocId",
    '["Vdate","Item","Name","QtyRec","Rate","Amount"]', N_ITEM)
T["RStockRegister"] = (
    "SELECT TOP ({L}) s.Vdate," + IM + ",ISNULL(s.QtyRec,0),ISNULL(s.IssQty,0),ISNULL(s.QtyRec,0)-ISNULL(s.IssQty,0) "
    "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,im.Name",
    '["Vdate","Item","Name","QtyRec","IssQty","Balance"]', N_ITEM)
T["RStockSummary"] = (
    "SELECT TOP ({L}) " + IM + ",SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.IssQty,0)),SUM(ISNULL(s.QtyRec,0))-SUM(ISNULL(s.IssQty,0)) "
    "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.Vdate BETWEEN ? AND ? GROUP BY s.Item,im.Name ORDER BY im.Name",
    '["Item","Name","QtyRec","IssQty","Balance"]', N_ITEM)
T["StockINHand"] = (
    "SELECT TOP ({L}) " + IM + ",SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.IssQty,0)),SUM(ISNULL(s.QtyRec,0))-SUM(ISNULL(s.IssQty,0)) "
    "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.Vdate BETWEEN ? AND ? GROUP BY s.Item,im.Name ORDER BY im.Name",
    '["Item","Name","QtyRec","IssQty","Balance"]', N_ITEM)
T["StockRegister"] = (
    "SELECT TOP ({L}) s.Vdate," + IM + ",ISNULL(s.QtyRec,0),ISNULL(s.IssQty,0),ISNULL(s.Rate,0),ISNULL(s.Amount,0) "
    "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,im.Name",
    '["Vdate","Item","Name","QtyRec","IssQty","Rate","Amount"]', N_ITEM)
T["StockRegStore"] = (
    "SELECT TOP ({L}) s.Vdate,ISNULL(g.Name,'')," + IM + ",ISNULL(s.QtyRec,0),ISNULL(s.IssQty,0) "
    "FROM Stock s LEFT JOIN GodownMast g ON g.Code=s.GodownCode "
    "LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,g.Name,im.Name",
    '["Vdate","Godown","Item","Name","QtyRec","IssQty"]', N_ITEM)
T["StockSumm"] = (
    "SELECT TOP ({L}) " + IM + ",SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.IssQty,0)),SUM(ISNULL(s.QtyRec,0))-SUM(ISNULL(s.IssQty,0)) "
    "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "GROUP BY s.Item,im.Name ORDER BY im.Name",
    '["Item","Name","QtyRec","IssQty","Balance"]', N_ITEM)
T["StockSummaryP-SBasis"] = (
    "SELECT TOP ({L}) " + IM + ",SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.IssQty,0)),SUM(ISNULL(s.QtyRec,0))-SUM(ISNULL(s.IssQty,0)) "
    "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.Vdate BETWEEN ? AND ? GROUP BY s.Item,im.Name ORDER BY im.Name",
    '["Item","Name","QtyRec","IssQty","Balance"]', N_ITEM)
T["StockSummStore"] = (
    "SELECT TOP ({L}) ISNULL(g.Name,'')," + IM + ",SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.IssQty,0)),SUM(ISNULL(s.QtyRec,0))-SUM(ISNULL(s.IssQty,0)) "
    "FROM Stock s LEFT JOIN GodownMast g ON g.Code=s.GodownCode "
    "LEFT JOIN ItemMast im ON im.Code=s.Item "
    "WHERE s.Vdate BETWEEN ? AND ? GROUP BY g.Name,s.Item,im.Name ORDER BY g.Name,im.Name",
    '["Godown","Item","Name","QtyRec","IssQty","Balance"]', N_ITEM)

# victims of v1 cross-write -> restore per REPORTS_TXT docs (live cols verified)
T["NCKOTSummary"] = (
    "SELECT TOP ({L}) L.Vdate, L.DocId, L.Vtype, L.RestCode, L.NetAmt, L.Total, "
    "L.Tax, L.CGST, L.SGST, L.IGST FROM Sale1 L "
    "WHERE L.Vdate BETWEEN ? AND ? ORDER BY L.Vdate, L.DocId",
    '["Vdate","DocId","Vtype","RestCode","NetAmt","Total","Tax","CGST","SGST","IGST"]',
    "Sale1 bill-level sales summary (REPORTS_TXT #141)")
T["Reconciliation(R2A)"] = (
    "SELECT TOP ({L}) S2.Vdate, S2.TaxCode, S2.BaseValue AS TaxableValue, S2.TaxPer, "
    "S2.TaxAmt, L.CGST, L.SGST, L.IGST FROM Sale2 S2 JOIN Sale1 L ON L.DocId = S2.DocId "
    "WHERE S2.Vdate BETWEEN ? AND ? ORDER BY S2.Vdate",
    '["Vdate","TaxCode","TaxableValue","TaxPer","TaxAmt","CGST","SGST","IGST"]',
    "Sale2 tax-slabs + Sale1 CGST/SGST/IGST (REPORTS_TXT #170)")


def key_positions(lines):
    return [(i, KEY_RE.match(ln).group(2))
            for i, ln in enumerate(lines) if KEY_RE.match(ln)]


def find_block(lines, key):
    idx = key_positions(lines)
    for n, (i, k) in enumerate(idx):
        if k == key:
            end = idx[n + 1][0] if n + 1 < len(idx) else len(lines) - 1
            return i, end
    raise KeyError(key)


def set_entry(lines, key, sql, cols, note):
    s, e = find_block(lines, key)
    blk = lines[s:e]

    # cols (single line)
    for j, ln in enumerate(blk):
        if re.match(r'^\s*"cols":', ln):
            blk[j] = re.sub(r'^(\s*"cols": ).*',
                            lambda m: m.group(1) + cols + ",", ln, count=1)
            break
    else:
        raise AssertionError("cols line missing in block " + key)

    # sql (single-line or multi-line paren construct) -> normalize single line
    j = next(j for j, ln in enumerate(blk) if re.match(r'^\s*"sql":', ln))
    k = j
    if re.search(r'"sql": \(\s*$', blk[j]):
        while not re.search(r'\)\s*,\s*$', blk[k]):
            k += 1
    blk[j:k + 1] = ['            "sql": "' + sql + '",']

    # note (single line; insert if the block has none)
    for j, ln in enumerate(blk):
        if re.match(r'^\s*"note":', ln):
            blk[j] = re.sub(r'^(\s*"note": ).*',
                            lambda m: m.group(1) + '"' + note + '",', ln, count=1)
            break
    else:
        sj = next(j for j, ln in enumerate(blk) if re.match(r'^\s*"sql":', ln))
        blk.insert(sj + 1, '            "note": "' + note + '",')

    lines[s:e] = blk


lines = io.open(P, encoding="utf-8").read().split("\n")
for key, (sql, cols, note) in T.items():
    set_entry(lines, key, sql, cols, note)
    print("fixed:", key)

io.open(P, "w", encoding="utf-8", newline="\n").write("\n".join(lines))

# ---- post-scan: distinctive v1 markers must only exist in target blocks ----
src = "\n".join(io.open(P, encoding="utf-8").read().split("\n"))
MARKERS = ["LEFT JOIN ItemMast im ON im.Code=s.Item",
           "FROM KOT s LEFT JOIN ItemMast",
           "LEFT JOIN GodownMast g ON g.Code=s.GodownCode",
           "LEFT JOIN ItemGrp ig ON ig.Code=im.ItemGroup",
           "s.Vtype='BAPN'",
           "KOT item-lines (Sale2 has no Item col live)",
           "live Vtype census: BAPN receipts",
           "QtyRcp->QtyRec"]
marks = [(m.start(), m.group(1)) for m in re.finditer(r'"key": "([^"]+)"', src)]
marks.append((len(src), "<<EOF>>"))
allowed = set(T)
bad = 0
for i in range(len(marks) - 1):
    pos, key = marks[i]
    blk = src[pos:marks[i + 1][0]]
    hit = [m for m in MARKERS if m in blk]
    if hit and key not in allowed:
        print("STILL VICTIM:", key, "->", hit)
        bad += 1
print("post-scan:", "CLEAN" if bad == 0 else str(bad) + " blocks dirty")
sys.exit(1 if bad else 0)
