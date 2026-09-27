# 14 Sale & Marketing - Masters

## Leaves (MenuHelp)

**masters bucket = 0** (rows `Module_Name='Mas'` = 02_MainSetup classify; module_names=() discovery ruling). Curated capture leaf: **`Market Segment`** (shell:1124 → `fm.open_marketsegment`; menuHelp `SA AEDP E Mas` + Risabh + htw_system).

Registry siblings: `Guest Profile` (shell:1069, NO ROW — captured under 02), `Forex Master`/`Guest Status` (Finance set shell:588-589 — 02/Finance territory).

## Functioning

- `Market Segment` → `BaseMasterForm(marketsegment_config)` (finance_masters_ui:85) — Code/Name/Active CRUD; `api=marketsegment`, `pk_key="code"`, max_len from `marketsegment.LIMITS` (code 5, name 20).
- Launcher button `Market Segment Master` (finance_masters_ui:239) → same opener.
- (`Guest Profile` → `fo.open_guestprof` → `guestprof_config` frontoffice.py:31 — 02 manual me captured.)

## Database Tables (this layer)

| Table | Rows | Role |
|---|---|---|
| `MarketSeg` | 10 | Market segment master (Code, Name, Active) |
| `GuestProf` | 7802 | Guest profile (shared; 02 captures UI) |

## Backend SQL pattern

```sql
SELECT {SELECT_COLS} FROM MarketSeg ORDER BY Code              -- marketsegment:51
SELECT 1 FROM MarketSeg WHERE Code = ?                         -- exists :64
INSERT INTO MarketSeg (Code, Name, Active, ...)                -- :72
UPDATE MarketSeg ... / DELETE FROM MarketSeg WHERE Code = ?    -- :80/:89
-- PK = Code exists-guard (no VNo); GuestProf uses next_code() = KI-1 family
```

## MenuHelp permission check

```sql
SELECT UserName, Param_Str, Flag, Module_Name FROM menuHelp
WHERE RTRIM([Option]) = 'Market Segment';
-- SA AEDP E Mas | Risabh ***P E Mas | htw_system AE*P E Mas
-- Module_Name='Mas' → 02 bucket (cross-module documented)
```
Screenshot: `screenshots/10_masters_Market_Segment.png` (copy: `01_Masters/screenshots/`).
