# PROJECT SUMMARY — Hotel/POS Reports Pipeline

**Sources:** `EXTRAS.text` (51 MB VB6 decompiled) + `visahl.sql` (48 MB SQL dump, 5 tables)
**Generated:** 16 Sep 2026 | Sab kuch automated scripts se — koi bhi file regenerate ho sakti hai.

---

## Deliverables (ek nazar me)

| # | File/Dir | Kya hai | Kitna |
|---|---|---|---:|
| 1 | `REPORTS_TXT/` | Har report ki apni txt file (name, category, menu path, source tables, output columns, SQL query) | **231 files** + 2 index |
| 2 | `ALL_REPORTS_LIST.txt` | Master list — number, category, file name | 231 rows |
| 3 | `STOCK_INVENTORY_REPORTS.txt` | Stock reports detail + inventory flow | 31 reports |
| 4 | `stock_reports_queries.sql` | Ready-to-run T-SQL queries | **31 queries** |
| 5 | `stock_reports_procs.sql` | SSRS/Excel-friendly stored procedures (`#Rpt` temp-table pattern) | **31 procs** |
| 6 | `sample_test_data.sql` | SSMS test data (idempotent, U_Name='TESTUSER') | 12 Stock + 3 Sale1 + 4 Sale2 + 4 SunTran + 2 PayCharge |
| 7 | `stock_reports_sqlite.sql` | SQLite-converted queries (tested) | 31 queries |
| 8 | `REPORTS_LIST.xlsx` | Category-wise Excel, 9 sheets, output columns + proc names | 231 reports |
| 9 | `MODULE_STRUCTURE.md/.txt` | VB6 object structure — **saare 351 objects, saare Sub/Function names**, menu handlers, dependency graph | 351 objects |
| 10 | `README.md` | Pura workflow documentation | — |
| 11 | `PROJECT_SUMMARY.md` | Ye file | — |

---

## Key Numbers

- **231 unique reports** (232 raw − 1 case-duplicate) — EXTRAS.text se
- **31 stock/inventory reports** — inhe dedicated SQL queries + procs mile
- **351 VB6 objects** — 8 types me classified, saare Subs listed
- **22 menu handlers** — MDIForm1 me, inhi se saari reports trigger hoti hain
- **5 tables** dump me: `Stock, Sale1, Sale2, SunTran, PayCharge`
- **36/36 queries + 31/31 procs validated** (SQLite harness), **16/16 math assertions PASS**

---

## Highlights (kya khaas hai)

1. **Menu path real mapping** — har report ka menu origin (`Material > Reports` etc.) decompiled `_Click` subs se nikla, guess nahi.
2. **SSRS/Excel-friendly procs** — typed `#Rpt` temp table → INSERT → padded-header, `ROUND(…,2)`, guaranteed-`ORDER BY` final SELECT. Single result set (SSRS DataSet clean).
3. **Full validation** — queries aur procs dono SQLite me simulate karke chalaye; expected math (StockInHand 50/40/18/-10, FoodCost 12,350/30,950, SunTran Dr=Cr 30,312) verified.
4. **Bugs pakde & fix hue** — `I.Item` alias-bug (SQL Server me bhi fail hota), PayCharge col/value mismatch, missing `;`, `Rate` column layout gap.
5. **Dependency graph** — code-reference analysis (`New X`/`X.Show`) se object hubs (`RSSaleBill`, `fdPaymentCharge`...) + Mermaid diagram.

---

## File Inventory (scripts + data)

```
PIPELINE SCRIPTS
  gen_reports.py            → 231 txt files (menu+layouts+SQL section)
  build_outputs.py          → stock_reports_queries.sql + REPORTS_LIST.xlsx
  build_procs_and_data.py   → stock_reports_procs.sql + sample_test_data.sql
  validate_sqlite.py        → SQLite validation (36 queries + 31 procs + 16 asserts)
  extract_structure.py      → MODULE_STRUCTURE.md/.txt (objects + deps)

DATA MODULES (single source of truth)
  sql_queries.py            → 31 stock + 5 generic T-SQL queries
  report_layouts.py         → expected output columns per report
  report_menu_map.txt       → Sub ⇄ report mapping (232 entries)
  all_reports_raw.txt       → raw grep output (232 names)

SOURCE INPUTS
  EXTRAS.text               → VB6 decompiled source (read-only)
  visahl.sql / visahl_utf8.sql → DB dump (UTF-16 / UTF-8 copy)

GENERATED OUTPUTS
  REPORTS_TXT/ (233 files)  | REPORTS_LIST.xlsx | stock_reports_*.sql (3)
  sample_test_data.sql      | MODULE_STRUCTURE.md/.txt
```

---

## Recreate Everything (fresh machine par)

```bash
python build_outputs.py          # txt + queries + Excel
python build_procs_and_data.py   # procs + test data
python gen_reports.py            # txt-only regen
python extract_structure.py      # module structure + dependency graph
python validate_sqlite.py        # full validation (36+31+16 checks)
```

## SQL Server me chalane ka order

```sql
-- 1) visahl.sql restore (schema: Stock, Sale1, Sale2, SunTran, PayCharge)
-- 2) sample data:
:r sample_test_data.sql
-- 3) procs create:
:r stock_reports_procs.sql
-- 4) run:
EXEC dbo.usp_StockRegister '2016-09-01','2016-09-30';
EXEC dbo.usp_StockInHand;
EXEC dbo.usp_ABCAnalysis;
```

---

## Limitations (reminder)

- Dump me sirf 5 tables — `ItemMast/PartyMast` nahi (queries codes dete hain, naam nahi)
- `Vtype` codes (`PBR/MRE/SAL`) guess-based — live `Voucher_Type` se confirm karo
- Dependency graph name-reference based hai (VB6 decompiled me exact call-graph nahi)
- Obfuscated `Proc_*` handlers ka menu path `[code-generated]` marked hai
