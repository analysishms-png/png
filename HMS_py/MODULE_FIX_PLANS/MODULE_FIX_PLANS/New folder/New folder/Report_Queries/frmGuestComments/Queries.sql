# ==========================================================
# Module: frmGuestComments
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: HallSale1
-- --------------------------------------------
Select Distinct Party as Name,BookDocId AS DocId From HallSale1
    WHERE VType='IDC';

-- --------------------------------------------
-- Query 2
-- Uses table: HallSale1
-- --------------------------------------------
Select Distinct Party as Name,BookDocId AS DocId From HallSale1
    WHERE VType='ODC';

-- --------------------------------------------
-- Query 3
-- Uses table: MarketSeg
-- --------------------------------------------
Select Code,Name From MarketSeg
    Order by Name;

-- --------------------------------------------
-- Query 4
-- Uses table: BussSource
-- --------------------------------------------
Select Code,Name From BussSource
    Order by Name;

-- --------------------------------------------
-- Query 5
-- Uses table: FunctionType
-- --------------------------------------------
Select Code,Name From FunctionType
    Order by Name;

-- --------------------------------------------
-- Query 6
-- Uses table: SubGroup
-- --------------------------------------------
Select SubCode As Code,Name From SubGroup
    Where Nature='Customer'
    order by Name;

-- --------------------------------------------
-- Query 7
-- Uses table: GuestComments
-- --------------------------------------------
Delete From GuestComments
    Where Code='<Code>';

-- --------------------------------------------
-- Query 8
-- Uses table: HallSale1
-- --------------------------------------------
Select Distinct Party as Name From HallSale1
    WHERE VType='IDC';

-- --------------------------------------------
-- Query 9
-- Uses table: HallSale1
-- --------------------------------------------
Select Distinct Party as Name From HallSale1
    WHERE VType='ODC';

-- --------------------------------------------
-- Query 10
-- Uses table: BussSource
-- Uses table: FunctionType
-- Uses table: MarketSeg
-- Uses table: SubGroup
-- --------------------------------------------
SELECT GC.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS EventName, SubGroup.Name as CompanyName FROM (((GuestComments GC
    LEFT JOIN MarketSeg ON GC.MarketSeg = MarketSeg.Code)
    LEFT JOIN BussSource ON GC.BussSource = BussSource.Code)
    LEFT JOIN FunctionType ON GC.FuncType = FunctionType.Code)
    LEFT JOIN SubGroup ON GC.Company = SubGroup.SubCode;

-- --------------------------------------------
-- Query 11
-- Uses table: GuestComments
-- --------------------------------------------
Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From GuestComments;

-- --------------------------------------------
-- Query 12
-- Uses table: BussSource
-- Uses table: FunctionType
-- Uses table: MarketSeg
-- Uses table: SubGroup
-- --------------------------------------------
SELECT GC.*, MarketSeg.Name AS SegmentName, BussSource.Name AS BussSourceName, FunctionType.Name AS EventName, SubGroup.Name as CompanyName FROM (((GuestComments GC
    LEFT JOIN MarketSeg ON GC.MarketSeg = MarketSeg.Code)
    LEFT JOIN BussSource ON GC.BussSource = BussSource.Code)
    LEFT JOIN FunctionType ON GC.FuncType = FunctionType.Code)
    LEFT JOIN SubGroup ON GC.Company = SubGroup.SubCode
    Where GC.Code='<Code>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [BussSource]  NOT present in visahl.sql dump (schema unknown)
-- Table [FunctionType]  NOT present in visahl.sql dump (schema unknown)
-- Table [GuestComments]  NOT present in visahl.sql dump (schema unknown)
-- Table [HallSale1]  NOT present in visahl.sql dump (schema unknown)
-- Table [MarketSeg]  NOT present in visahl.sql dump (schema unknown)
-- Table [SubGroup]  NOT present in visahl.sql dump (schema unknown)
