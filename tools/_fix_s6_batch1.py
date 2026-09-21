"""S6 Batch-1: Inventory reports SQL live-schema fix (REPORTS_TXT dump -> live DB).

EVIDENCE (live KailashData2526):
- Stock cols: QtyRec/QtyIss (NOT QtyRcp), Item = ItemMast code,
  GodownCode -> GodownMast, PartyCode always '' in live data.
- Vtype census: BAPN 11500 (receipts/production), NAPN 1753 (store issues).
- Sale2 has NO item col (tax-summary only) -> item-wise sale = KOT table
  (13320 rows: Item/Qty/Rate/Amount/RestCode).
- Indent/POrder detail tables absent (headers 0 rows); Stock has
  RecdQty/IssQty/IndentDocId line cols.
"""
import io
import re

P = "HMS_py/core/reports.py"
src = io.open(P, encoding="utf-8").read()


def set_sql(key, sql, cols=None):
    global src
    pat = re.compile(r'("key": "%s".*?"sql": ")([^"]*)(")' % re.escape(key), re.S)
    m = pat.search(src)
    assert m, "sql block not found: " + key
    src = src[:m.start(2)] + sql + src[m.end(2):]
    if cols:
        pat2 = re.compile(r'("key": "%s".*?"cols": )\[[^\]]*\]' % re.escape(key), re.S)
        m2 = pat2.search(src)
        assert m2, "cols not found: " + key
        src = src[:m2.start()] + m2.group(1) + cols + src[m2.end():]


def set_note(key, note):
    global src
    pat = re.compile(r'("key": "%s".*?"note": ")([^"]*)(")' % re.escape(key), re.S)
    m = pat.search(src)
    assert m, "note not found: " + key
    src = src[:m.start(2)] + note + src[m.end(2):]


IM = "ISNULL(im.Name,ISNULL(s.Item,''))"
N_ITEM = "names via ItemMast; QtyRcp->QtyRec (live Stock schema)"

# --- sale-side reports: KOT item-lines (Sale2 has no Item col) ---
set_sql("ABCAnalysisSale",
        "SELECT TOP ({L}) s.Item," + IM + ",SUM(ISNULL(s.Amount,0)) AS SaleValue,0,'A' "
        "FROM KOT s LEFT JOIN ItemMast im ON im.Code=s.Item "
        "WHERE s.Vdate BETWEEN ? AND ? GROUP BY s.Item,im.Name ORDER BY SaleValue DESC",
        '["Item","Name","SaleValue","CumPct","Class"]')
set_note("ABCAnalysisSale", "KOT item-lines (Sale2 has no Item col live)")

set_sql("LiquorSaleRep",
        "SELECT TOP ({L}) s.Item," + IM + ",SUM(ISNULL(s.Qty,0)),SUM(ISNULL(s.Amount,0)) "
        "FROM KOT s LEFT JOIN ItemMast im ON im.Code=s.Item "
        "WHERE s.Vdate BETWEEN ? AND ? GROUP BY s.Item,im.Name ORDER BY SUM(ISNULL(s.Amount,0)) DESC",
        '["Item","Name","Qty","Amount"]')
set_note("LiquorSaleRep", "KOT item-lines (live schema)")

# --- purchase-side: live Vtype BAPN; PartyCode empty -> godown shown ---
set_sql("CashCreditPurch",
        "SELECT TOP ({L}) s.Vdate,s.Vtype,s.VNo,ISNULL(g.Name,''),SUM(ISNULL(s.Amount,0)) "
        "FROM Stock s LEFT JOIN GodownMast g ON g.Code=s.GodownCode "
        "WHERE s.Vtype='BAPN' AND s.Vdate BETWEEN ? AND ? "
        "GROUP BY s.Vdate,s.Vtype,s.VNo,g.Name ORDER BY s.Vdate,s.VNo",
        '["Vdate","Vtype","VNo","Godown","Amount"]')
set_note("CashCreditPurch", "BAPN receipts; PartyCode empty live -> godown shown")

set_sql("PurchaseLedger",
        "SELECT TOP ({L}) s.Vdate,s.Vtype,s.VNo," + IM + ",ISNULL(s.Rate,0),ISNULL(s.QtyRec,0),ISNULL(s.Amount,0) "
        "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
        "WHERE s.Vtype='BAPN' AND s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,s.VNo",
        '["Vdate","Vtype","VNo","Item","Rate","QtyRec","Amount"]')
set_note("PurchaseLedger", "BAPN receipt lines (live Vtype census)")

set_sql("PurchBill",
        "SELECT TOP ({L}) s.Vdate,s.DocId,ISNULL(g.Name,''),SUM(ISNULL(s.Amount,0)) "
        "FROM Stock s LEFT JOIN GodownMast g ON g.Code=s.GodownCode "
        "WHERE s.Vtype='BAPN' AND s.Vdate BETWEEN ? AND ? "
        "GROUP BY s.Vdate,s.DocId,g.Name ORDER BY s.Vdate,s.DocId",
        '["Vdate","DocId","Godown","Amount"]')
set_note("PurchBill", "BAPN receipts per doc (live Vtype census)")

set_sql("PurchaseReg",
        "SELECT TOP ({L}) s.Vdate,s.Vtype,s.VNo," + IM + ",ISNULL(s.QtyRec,0),ISNULL(s.Rate,0),ISNULL(s.Amount,0) "
        "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
        "WHERE s.QtyRec>0 AND s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,s.VNo",
        '["Vdate","Vtype","VNo","Item","QtyRec","Rate","Amount"]')
set_note("PurchaseReg", N_ITEM)

set_sql("PurchaseSumm",
        "SELECT TOP ({L}) " + IM + ",SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.Amount,0)) "
        "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
        "WHERE s.QtyRec>0 AND s.Vdate BETWEEN ? AND ? "
        "GROUP BY s.Item,im.Name ORDER BY SUM(ISNULL(s.Amount,0)) DESC",
        '["Item","Name","QtyRec","Amount"]')

set_sql("PurchOrder",
        "SELECT TOP ({L}) s.Vdate,s.DocId," + IM + ",ISNULL(s.RecdQty,0),ISNULL(s.Rate,0) "
        "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
        "WHERE s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,s.DocId",
        '["Vdate","DocId","Item","RecdQty","Rate"]')
set_note("PurchOrder", "POrderDet absent live; Stock receipt lines (RecdQty) shown")

set_sql("IndentReg",
        "SELECT TOP ({L}) s.Vdate,s.Vtype,s.VNo," + IM + ",ISNULL(s.RecdQty,0),ISNULL(s.IssQty,0) "
        "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
        "WHERE s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,s.VNo",
        '["Vdate","Vtype","VNo","Item","RecdQty","IssQty"]')
set_note("IndentReg", "IndentDet absent live; Stock IndentDocId lines shown")

# --- QtyRcp->QtyRec family (store/kitchen/stock reports) ---
STORE = [
    ("CostAnalysis",
     "SELECT TOP ({L}) " + IM + ",SUM(ISNULL(s.QtyRec,0)),AVG(ISNULL(s.Rate,0)),SUM(ISNULL(s.Amount,0)) "
     "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
     "WHERE s.QtyRec>0 AND s.Vdate BETWEEN ? AND ? "
     "GROUP BY s.Item,im.Name ORDER BY SUM(ISNULL(s.Amount,0)) DESC",
     '["Item","Name","QtyRec","AvgRate","Amount"]'),
    ("KitchenStkRep",
     "SELECT TOP ({L}) " + IM + ",SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.IssQty,0)),SUM(ISNULL(s.QtyRec,0))-SUM(ISNULL(s.IssQty,0)) "
     "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
     "WHERE s.Vdate BETWEEN ? AND ? GROUP BY s.Item,im.Name ORDER BY im.Name",
     '["Item","Name","QtyRec","IssQty","Balance"]'),
    ("KitchenStkSumm",
     "SELECT TOP ({L}) ISNULL(ig.Name,'?'),SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.IssQty,0)),SUM(ISNULL(s.QtyRec,0))-SUM(ISNULL(s.IssQty,0)) "
     "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
     "LEFT JOIN ItemGrp ig ON ig.Code=im.ItemGroup "
     "WHERE s.Vdate BETWEEN ? AND ? GROUP BY ig.Name ORDER BY ig.Name",
     '["ItemGroup","QtyRec","IssQty","Balance"]'),
    ("ProductionReport",
     "SELECT TOP ({L}) s.Vdate," + IM + ",ISNULL(s.QtyRec,0),ISNULL(s.Rate,0),ISNULL(s.Amount,0) "
     "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
     "WHERE s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,s.DocId",
     '["Vdate","Item","Name","QtyRec","Rate","Amount"]'),
    ("RStockRegister",
     "SELECT TOP ({L}) s.Vdate," + IM + ",ISNULL(s.QtyRec,0),ISNULL(s.IssQty,0),ISNULL(s.QtyRec,0)-ISNULL(s.IssQty,0) "
     "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
     "WHERE s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,im.Name",
     '["Vdate","Item","Name","QtyRec","IssQty","Balance"]'),
    ("RStockSummary",
     "SELECT TOP ({L}) " + IM + ",SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.IssQty,0)),SUM(ISNULL(s.QtyRec,0))-SUM(ISNULL(s.IssQty,0)) "
     "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
     "WHERE s.Vdate BETWEEN ? AND ? GROUP BY s.Item,im.Name ORDER BY im.Name",
     '["Item","Name","QtyRec","IssQty","Balance"]'),
    ("StockINHand",
     "SELECT TOP ({L}) " + IM + ",SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.IssQty,0)),SUM(ISNULL(s.QtyRec,0))-SUM(ISNULL(s.IssQty,0)) "
     "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
     "WHERE s.Vdate BETWEEN ? AND ? GROUP BY s.Item,im.Name ORDER BY im.Name",
     '["Item","Name","QtyRec","IssQty","Balance"]'),
    ("StockRegister",
     "SELECT TOP ({L}) s.Vdate," + IM + ",ISNULL(s.QtyRec,0),ISNULL(s.IssQty,0),ISNULL(s.Rate,0),ISNULL(s.Amount,0) "
     "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
     "WHERE s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,im.Name",
     '["Vdate","Item","Name","QtyRec","IssQty","Rate","Amount"]'),
    ("StockRegStore",
     "SELECT TOP ({L}) s.Vdate,ISNULL(g.Name,'')," + IM + ",ISNULL(s.QtyRec,0),ISNULL(s.IssQty,0) "
     "FROM Stock s LEFT JOIN GodownMast g ON g.Code=s.GodownCode "
     "LEFT JOIN ItemMast im ON im.Code=s.Item "
     "WHERE s.Vdate BETWEEN ? AND ? ORDER BY s.Vdate,g.Name,im.Name",
     '["Vdate","Godown","Item","Name","QtyRec","IssQty"]'),
    ("StockSumm",
     "SELECT TOP ({L}) " + IM + ",SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.IssQty,0)),SUM(ISNULL(s.QtyRec,0))-SUM(ISNULL(s.IssQty,0)) "
     "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
     "GROUP BY s.Item,im.Name ORDER BY im.Name",
     '["Item","Name","QtyRec","IssQty","Balance"]'),
    ("StockSummaryP-SBasis",
     "SELECT TOP ({L}) " + IM + ",SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.IssQty,0)),SUM(ISNULL(s.QtyRec,0))-SUM(ISNULL(s.IssQty,0)) "
     "FROM Stock s LEFT JOIN ItemMast im ON im.Code=s.Item "
     "WHERE s.Vdate BETWEEN ? AND ? GROUP BY s.Item,im.Name ORDER BY im.Name",
     '["Item","Name","QtyRec","IssQty","Balance"]'),
    ("StockSummStore",
     "SELECT TOP ({L}) ISNULL(g.Name,'')," + IM + ",SUM(ISNULL(s.QtyRec,0)),SUM(ISNULL(s.IssQty,0)),SUM(ISNULL(s.QtyRec,0))-SUM(ISNULL(s.IssQty,0)) "
     "FROM Stock s LEFT JOIN GodownMast g ON g.Code=s.GodownCode "
     "LEFT JOIN ItemMast im ON im.Code=s.Item "
     "WHERE s.Vdate BETWEEN ? AND ? GROUP BY g.Name,s.Item,im.Name ORDER BY g.Name,im.Name",
     '["Godown","Item","Name","QtyRec","IssQty","Balance"]'),
]
for k, sql, cols in STORE:
    set_sql(k, sql, cols)
    set_note(k, N_ITEM)

io.open(P, "w", encoding="utf-8", newline="\n").write(src)
print("fixed:", 2 + 5 + 1 + 1 + len(STORE), "inventory reports")
