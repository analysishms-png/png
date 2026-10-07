/* Assertions v3 for the FK/index/filter features */
SET QUOTED_IDENTIFIER ON;
SET ANSI_NULLS ON;
GO

USE TestDstDB;
GO
DECLARE @pass int = 0, @fail int = 0, @r int, @s int;

/* 1. dest has all 4 non-PK indexes with correct properties */
SELECT @r = COUNT(*) FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.Sale') AND name = 'IX_Sale_Item' AND has_filter = 0;
IF @r = 1 SET @pass += 1 ELSE BEGIN SELECT 'FAIL: IX_Sale_Item missing' AS T; SET @fail += 1; END

SELECT @r = COUNT(*) FROM sys.index_columns AS ic
JOIN sys.columns AS c ON c.object_id = ic.object_id AND c.column_id = ic.column_id
WHERE ic.object_id = OBJECT_ID('dbo.Sale') AND ic.index_id =
    (SELECT index_id FROM sys.indexes WHERE object_id = OBJECT_ID('dbo.Sale') AND name = 'IX_Sale_Cust')
  AND ic.is_included_column = 0
  AND c.name IN ('CustCode', 'DocId');
IF @r = 2 SET @pass += 1 ELSE BEGIN SELECT 'FAIL: IX_Sale_Cust keys' AS T, @r AS N; SET @fail += 1; END

/* 2. DESC order preserved on IX_Sale_Cust.DocId (2nd key) */
SELECT @r = COUNT(*) FROM sys.index_columns AS ic
JOIN sys.columns AS c ON c.object_id = ic.object_id AND c.column_id = ic.column_id
WHERE ic.object_id = OBJECT_ID('dbo.Sale')
  AND ic.index_id = (SELECT index_id FROM sys.indexes WHERE object_id = OBJECT_ID('dbo.Sale') AND name = 'IX_Sale_Cust')
  AND c.name = 'DocId' AND ic.is_descending_key = 1;
IF @r = 1 SET @pass += 1 ELSE BEGIN SELECT 'FAIL: DESC not preserved' AS T; SET @fail += 1; END

/* 3. INCLUDE column present on IX_Sale_Item */
SELECT @r = COUNT(*) FROM sys.index_columns AS ic
JOIN sys.columns AS c ON c.object_id = ic.object_id AND c.column_id = ic.column_id
WHERE ic.object_id = OBJECT_ID('dbo.Sale')
  AND ic.index_id = (SELECT index_id FROM sys.indexes WHERE object_id = OBJECT_ID('dbo.Sale') AND name = 'IX_Sale_Item')
  AND c.name = 'Qty' AND ic.is_included_column = 1;
IF @r = 1 SET @pass += 1 ELSE BEGIN SELECT 'FAIL: INCLUDE col missing' AS T; SET @fail += 1; END

/* 4. filtered unique index copied with its filter */
SELECT @r = COUNT(*) FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.Customer') AND name = 'UX_Customer_Name'
  AND is_unique = 1 AND has_filter = 1;
IF @r = 1 SET @pass += 1 ELSE BEGIN SELECT 'FAIL: UX_Customer_Name filter' AS T; SET @fail += 1; END

/* 5. filter DEFINITION round-tripped correctly */
SELECT @r = COUNT(*) FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.Customer') AND name = 'UX_Customer_Name'
  AND filter_definition LIKE '%CustName%IS NOT NULL%';
IF @r = 1 SET @pass += 1 ELSE BEGIN SELECT 'FAIL: filter definition' AS T,
    (SELECT filter_definition FROM sys.indexes WHERE object_id = OBJECT_ID('dbo.Customer') AND name = 'UX_Customer_Name') AS D; SET @fail += 1; END

/* 6. index name collision: dest had its own IX_Customer_Name first; src
      version must NOT have replaced it (dest original is non-unique) */
SELECT @r = COUNT(*) FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.Customer') AND name = 'IX_Customer_Name' AND is_unique = 0;
IF @r = 1 SET @pass += 1 ELSE BEGIN SELECT 'FAIL: collision handling' AS T; SET @fail += 1; END

/* 7. FKs: SaleLine->Sale and Sale->Customer created */
SELECT @r = COUNT(*) FROM sys.foreign_keys WHERE name IN ('FK_SaleLine_Sale', 'FK_Sale_Customer');
IF @r = 2 SET @pass += 1 ELSE BEGIN SELECT 'FAIL: FKs missing' AS T, @r AS N; SET @fail += 1; END

/* 8. orphan-conflicting FK_Customer_Region must NOT exist (fail = skip) */
SELECT @r = COUNT(*) FROM sys.foreign_keys WHERE name = 'FK_Customer_Region';
IF @r = 0 SET @pass += 1 ELSE BEGIN SELECT 'FAIL: orphan FK should be absent' AS T; SET @fail += 1; END

/* 9. composite FK references composite PK (2 columns) */
SELECT @r = COUNT(*) FROM sys.foreign_key_columns WHERE constraint_object_id = OBJECT_ID('FK_SaleLine_Sale');
IF @r = 2 SET @pass += 1 ELSE BEGIN SELECT 'FAIL: composite FK cols' AS T, @r AS N; SET @fail += 1; END

/* 10. FK actually enforced: orphan insert must fail */
BEGIN TRY
    INSERT INTO dbo.SaleLine (DocId, Sno, LineNum) VALUES ('NOPE', 99, 1);
    SELECT 'FAIL: FK not enforced' AS T; SET @fail += 1;
END TRY
BEGIN CATCH
    SET @pass += 1;  -- expected failure
END CATCH;

SELECT 'RESULT' AS R, @pass AS PassCount, @fail AS FailCount;
GO
