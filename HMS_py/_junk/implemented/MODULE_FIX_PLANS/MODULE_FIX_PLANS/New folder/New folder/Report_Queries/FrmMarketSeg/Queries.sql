# ==========================================================
# Module: FrmMarketSeg
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: MarketSeg
-- --------------------------------------------
SELECT Code,Name FROM MarketSeg
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: MarketSeg
-- --------------------------------------------
SELECT * FROM MarketSeg
    WHERE (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 3
-- Uses table: MarketSeg
-- --------------------------------------------
Delete From MarketSeg
    Where Code='<Code>';

-- --------------------------------------------
-- Query 4
-- Uses table: MarketSeg
-- --------------------------------------------
select * FROM MarketSeg
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    order by Name;

-- --------------------------------------------
-- Query 5
-- Uses table: MarketSeg
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From MarketSeg;

-- --------------------------------------------
-- Query 6
-- Uses table: MarketSeg
-- --------------------------------------------
Select U_Name,U_AE,U_EntDt From MarketSeg
    where Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [MarketSeg]  NOT present in visahl.sql dump (schema unknown)
