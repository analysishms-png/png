# ==========================================================
# Module: FrmComplaintMast
# Clean SQL queries extracted from decompiled VB6 (HMS.bas)
# <Param> = runtime VB6 variable value; <Name> = inferred placeholder.
# Table schemas (below) resolved from visahl.sql dump (5 tables).
# ==========================================================

-- --------------------------------------------
-- Query 1
-- Uses table: Depart
-- --------------------------------------------
SELECT Code,Name FROM Depart
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    ORDER BY Name;

-- --------------------------------------------
-- Query 2
-- Uses table: ComplaintCategory
-- --------------------------------------------
SELECT Code AS Scode,Category FROM ComplaintCategory
    Where (LOGSITE_CODE='<LogSiteCode>' or LOGSITE_CODE='HO')
    Order BY Category;

-- --------------------------------------------
-- Query 3
-- Uses table: ComplaintCategory
-- Uses table: ComplaintDetail
-- --------------------------------------------
SELECT CD.Code AS Scode,CD.Category AS CatCode,CD.CDate AS CDate,CD.CTime AS CTime,CC.Category AS Category,CD.Description AS Description,CD.Depart AS Depart,CD.UName AS UName,CD.Status AS Status,CD.Site_Code,CD.LogSite_Code FROM ComplaintDetail CD
    Left JOIN ComplaintCategory CC ON CD.Category =CC.Code
    Where (CD.LOGSITE_CODE='<LogSiteCode>')
    ORDER BY CD.Code;

-- --------------------------------------------
-- Query 4
-- Uses table: ComplaintDetail
-- --------------------------------------------
Delete From ComplaintDetail
    Where Code='<Code>';

-- --------------------------------------------
-- Query 5
-- Uses table: ComplaintCategory
-- Uses table: Depart
-- --------------------------------------------
SELECT CD.Code AS Scode,CD.CDate AS CDate,CD.CTime AS CTime,CC.Category AS Category,CD.Description AS Description,D.Name AS Depart,CD.UName AS UName,CD.Status AS Status FROM (ComplaintDetail CD
    INNER JOIN ComplaintCategory CC ON CD.Category =CC.Code)
    INNER JOIN Depart D ON CD.Depart=D.Code
    Where CD.LogSite_Code='<LogSiteCode>'
    ORDER BY CD.CDate,CD.CTime,D.Name;

-- --------------------------------------------
-- Query 6
-- Uses table: Depart
-- --------------------------------------------
SELECT Name FROM Depart
    WHERE Code='<Code>';

-- --------------------------------------------
-- Query 7
-- Uses table: ComplaintDetail
-- --------------------------------------------
Select Count(*) From ComplaintDetail
    Where Description='<Description>';



# ====== SCHEMA NOTES (tables used in this module) ======
-- Table [ComplaintCategory]  NOT present in visahl.sql dump (schema unknown)
-- Table [ComplaintDetail]  NOT present in visahl.sql dump (schema unknown)
-- Table [Depart]  NOT present in visahl.sql dump (schema unknown)
