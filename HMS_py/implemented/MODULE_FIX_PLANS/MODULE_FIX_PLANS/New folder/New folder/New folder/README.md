# Hotel/POS Reports Pipeline — visahl.sql + EXTRAS.text

VB6 hotel/POS software ke decompiled source (`EXTRAS.text`) aur SQL Server database dump
(`visahl.sql`) se **231 reports ki directory + 31 stock/inventory SQL queries + stored
procedures + test data + validation** tak ka pura automated pipeline.

---

## 1. Source Files (Input)

| File | Size | Kya hai |
|---|---:|---|
| `EXTRAS.text` | ~51 MB | VB6 software ka decompiled source. Isme `GRepFormName = "..."` se saare report names mile, aur `_Click` Subs se menu paths. |
| `visahl.sql` | ~48 MB (UTF-16) | SQL Server DB dump — **sirf 5 tables**: `Stock, Sale1, Sale2, SunTran, PayCharge`. `Stock` table inventory ka core hai (Item, QtyRec, QtyIss, Rate, GodownCode...). |

> `visahl.sql` UTF-16 encoded hai. UTF-8 copy `visahl_utf8.sql` bhi rakhi gayi hai
> (grep/python ke liye). Master tables (`ItemMast`, `PartyMast`) dump me **nahi** hain —
> isliye queries item/party **codes** dete hain, naam nahi.

---

## 2. Pipeline (Kaise chalta hai)

```
EXTRAS.text ──grep──> all_reports_raw.txt (232 names)
                          │
                          ▼
report_menu_map.txt (Sub -> report)      visahl_utf8.sql (columns)
        │                                       │
        ▼                                       ▼
gen_reports.py  ──────────────────────>  REPORTS_TXT/*.txt (231 files + 2 index)
        │
        ├── sql_queries.py      (31 stock + 5 generic T-SQL queries)
        ├── report_layouts.py   (har report ke expected output columns)
        ▼
build_outputs.py ──> stock_reports_queries.sql + REPORTS_LIST.xlsx (9 sheets)
        │
        ▼
build_procs_and_data.py ──> stock_reports_procs.sql (SSRS pattern) + sample_test_data.sql
        │
        ▼
validate_sqlite.py ──> SQLite me sab queries+procs RUN karke verify ──> stock_reports_sqlite.sql
```

**Run order:**
```bash
python build_outputs.py          # txt + sql + xlsx (gen_reports.py import hota hai)
python build_procs_and_data.py   # procs + sample data
python gen_reports.py            # txt files (agar sirf ye chahiye)
python validate_sqlite.py        # validation (sab kuch verify)
```

---

## 3. Outputs (Kya banta hai)

### REPORTS_TXT/ — 231 report files + 2 index
Har report ki apni txt file, jisme:
```
REPORT NAME / NO. / CATEGORY / STOCK-INVENTORY? / MENU PATH / SOURCE TABLES
DESCRIPTION / OUTPUT COLUMNS / READY-TO-RUN SQL QUERY
```
- `ALL_REPORTS_LIST.txt` — master list (number, category, file)
- `STOCK_INVENTORY_REPORTS.txt` — 31 stock reports ki detail

### stock_reports_queries.sql — 31 T-SQL queries
Direct SSMS me chalane ke liye. Har query me `DECLARE @F/@T DATE` params.
Date ranges apne hisaab se badlo.

### stock_reports_procs.sql — 31 stored procedures (SSRS/Excel-friendly)
Pattern: **typed `#Rpt` temp table → INSERT → final ordered SELECT → DROP**
```sql
EXEC dbo.usp_StockRegister '2016-09-01','2016-09-30';
EXEC dbo.usp_StockInHand;                  -- no params
EXEC dbo.usp_ABCAnalysis;                  -- A/B/C classification
```
- `SET NOCOUNT ON` + single result set → SSRS DataSet me clean
- Padded column headers (`[OpeningQty    ]`) → Excel me aligned
- `ROUND(...,2)` numeric, typed `NVARCHAR/DATE/DECIMAL(18,2)` columns
- Guaranteed `ORDER BY` (temp-table level par)

### sample_test_data.sql — SSMS test data
Idempotent (`U_Name='TESTUSER'` pehle DELETE, phir INSERT):
- Stock: 4 purchases + 4 issues (RICE001/OIL001/WHKY001/SUGR001)
- Sale1: 3 bills (REST1/BAR1), Sale2: tax slabs, SunTran: 2 journals, PayCharge: 2 receipts
- Expected results file ke bottom par comments me

### REPORTS_LIST.xlsx — 9 sheets
`All Reports` (231, menu path + output columns) | `Stock-Inventory (31)` (procs ke naam ke saath)
| 7 category sheets | `Report Layouts` (saare 231 layouts)

### stock_reports_sqlite.sql — converted+tested queries
SQLite-compatible version (`IFNULL`, literal dates) — DB Browser me direct run.

---

## 4. Validation Results (validate_sqlite.py)

In-memory SQLite me schema+data load karke:
- **36/36 queries OK** (31 stock + 5 generic)
- **31/31 procs OK** (temp-table pattern simulated, sortedness verified)
- **16/16 math assertions PASS**, jaise:

| Check | Expected | Got |
|---|---:|---:|
| StockInHand RICE001/OIL001/WHKY001/SUGR001 | 50/40/18/-10 | ✅ |
| ExcessConsumption | sirf SUGR001 | ✅ |
| FoodCost consumption / sales | 12,350 / 30,950 | ✅ |
| PurchaseSummary PARTY01/02 | 10,000 / 24,000 | ✅ |
| ABC top item | WHKY001 (5,100) | ✅ |
| SunTran Dr=Cr | 30,312 | ✅ |

Validation ke dauran pakde gaye bugs (fix ho chuke):
`I.Item` alias bina join; PayCharge 14-cols/15-values; Stock INSERT missing `;`.

---

## 5. Helper Modules (kya karta hai)

| File | Role |
|---|---|
| `sql_queries.py` | 31 stock + 5 generic queries ka single source of truth |
| `report_layouts.py` | Har report ke expected output columns (+ category fallback) |
| `report_menu_map.txt` | `Sub_name <= report` mapping (EXTRAS.text se generated) |
| `all_reports_raw.txt` | 232 raw report names (grep output) |
| `gen_reports.py` | Menu map + layouts + SQL → txt files |
| `build_outputs.py` | SQL file + Excel |
| `build_procs_and_data.py` | SSRS-pattern procs + sample data |
| `validate_sqlite.py` | SQLite harness (queries + procs + assertions) |

---

## 6. Known Limitations

1. **Sirf 5 tables** dump me hain — `ItemMast/PartyMast` nahi. Live DB me JOIN add kar sakte ho.
2. **Case-duplicates merged**: `cancelBillDetails` = `CancelBillDetails` (232 → 231 files).
3. **Obfuscated code**: kuch reports `Proc_165_2_*` (code-generated menu) se aati hain —
   unka menu path `[code-generated]` marked hai.
4. **Vtype codes** (`PBR`=Purchase, `MRE`=Material Receipt/Issue, `SAL`=Sale) guess-based hain —
   live `Voucher_Type` table se confirm karna best hai.
5. **Dates**: sample data Sept-2016 me hai (queries ke defaults se match).

---

## 7. Quick Start (naye user ke liye)

```bash
# 1) Reports dekho
ls REPORTS_TXT | head

# 2) Excel kholo
# REPORTS_LIST.xlsx → "All Reports" sheet

# 3) SSMS me:
#    a) visahl.sql restore karo (ya schema-only)
#    b) sample_test_data.sql run karo
#    c) stock_reports_procs.sql run karo
#    d) EXEC dbo.usp_StockInHand;

# 4) Sab kuch re-verify:
python validate_sqlite.py
```
