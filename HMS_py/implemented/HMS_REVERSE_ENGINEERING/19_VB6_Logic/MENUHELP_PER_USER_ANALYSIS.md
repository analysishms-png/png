# MenuHelp — PER-USER MENU SYSTEM ANALYSIS  [VERIFIED-SQL]

Source: live MOONData2627.MenuHelp (9,212 rows) — read-only SELECTs, 2026-09-28.
SQL-trace evidence: menu queries `Select [Option] Name,OPT1..4 from MenuHelp Where Flag<>'V'
And OPT1<>0 And OPT2=0 ... And UserName='<user>' And CompCode='<comp>' Order By Code`.

## 1. Schema semantics (decoded)
| Column | Meaning |
|---|---|
| Option | Menu/screen caption (matches window titles) |
| OPT1 | **Module id** (11=Finance, 16=Inventory, 17=POS ...; 0 = hidden) |
| OPT2 | Level-2 group id (0 = top-level item) |
| OPT3 | Level-3 item id (0 = group header) |
| OPT4 | Level-4 (rare) |
| Flag | **E = Executable screen, R = Report, N = Group/header, V = void/hidden** |

Pattern: `OPT1<>0 And OPT2=0 And OPT3=0` = module roots; deeper OPT combos = children.
Group ids are per-module counters (e.g., Finance OPT2=13 = 'Reports' group).

## 2. Per-user menu trees (extracted, this folder)
| File | User | Items | Role evidence |
|---|---|---|---|
| MenuHelp_SA_tree.txt | SA | 440 | full system (super user, Label=1) |
| MenuHelp_Deepak_tree.txt | Deepak | 157 | front-office/manager set (runs Night Audit) |
| MenuHelp_Kitchen_tree.txt | Kitchen | 23 | Inventory ops only: Indent, Requisition, Stock Issue, Kitchen Closing Stock, Stock Transfer + Stock reports |
| MenuHelp_POS_tree.txt | POS | 10 | POS terminal: KOT Entry, Display Table (outlet 'Garden Aroma') |
| MenuHelp_kot_tree.txt | kot | 4 | minimal KOT-only terminal login |

UserMast cross-check: LABEL column (0=staff, 1=manager/admin e.g. admin, AMIT), ActiveYN
present; **69 distinct users** have menus (COMPcodes: '2' primary, 'NU' second property).

## 3. Security analysis
- Menu visibility is per-user and per-company — effective role-based access.
- SA sees 440 items; kitchen terminal 23; kot 4 → strong differentiation.
- **Menu hiding ≠ security boundary**: rights enforcement is user1.PARAM_STR 'AEDP'
  (per form code) — MenuHelp only controls *what appears*; user1 controls *what works*.
- htw_system (374 items) = vendor/system account (likely e-reception/touch kiosk).
- Users like 'tea' (40), 'aditya hk' (41) show module-scoped service logins.

## 4. Modernization mapping
- MenuHelp(OPT1..4, Flag) → roles/permissions table + menu registry (1:1 import possible).
- user1.PARAM_STR AEDP → CRUD permission claims per screen.
- Combined = complete RBAC spec for rebuild (no guessing needed).

## 5. Repro queries
```sql
-- a user's visible menu tree
SELECT [Option], OPT1, OPT2, OPT3, OPT4, Flag
FROM MenuHelp WHERE UserName='<u>' And CompCode='<c>' And Flag<>'V' ORDER BY Code;
-- module roots for a user
SELECT [Option] FROM MenuHelp
WHERE UserName='<u>' And CompCode='<c>' And Flag='N' And OPT2=0 And OPT3=0 And OPT1<>0;
```
