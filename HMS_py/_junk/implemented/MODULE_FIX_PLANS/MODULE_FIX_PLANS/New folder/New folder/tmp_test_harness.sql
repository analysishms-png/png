/* ============================================================================
   TEST HARNESS v3 for Generic_DB_Transfer.sql (SQL Server 2008 R2+)
   Tests: FK transfer (success + orphan-failure), composite-PK referenced FK,
   non-PK indexes (DESC, INCLUDE, unique-filtered), index name collision,
   table filter with wildcard (@ONLY_TABLES patched by runner).
   ============================================================================ */

IF DB_ID('TestSrcDB') IS NOT NULL
BEGIN
    ALTER DATABASE TestSrcDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE TestSrcDB;
END
IF DB_ID('TestDstDB') IS NOT NULL
BEGIN
    ALTER DATABASE TestDstDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE TestDstDB;
END
CREATE DATABASE TestSrcDB;
GO
USE TestSrcDB;
GO

/* parent + child tables */
CREATE TABLE dbo.Region (
    RegionCode varchar(5) NOT NULL PRIMARY KEY,
    RName      varchar(30) NULL
);
INSERT INTO dbo.Region VALUES ('N', 'North'), ('S', 'South'), ('W', 'West');

CREATE TABLE dbo.Customer (
    CustCode   varchar(10) NOT NULL PRIMARY KEY,
    CustName   varchar(50) NULL,
    RegionCode varchar(5)  NULL
);
INSERT INTO dbo.Customer VALUES ('C1', 'Alpha', 'N'), ('C2', 'Beta', 'S'), ('C3', 'Gamma', NULL);

/* composite-PK table that will be REFERENCED by another FK */
CREATE TABLE dbo.Sale (
    DocId   varchar(10) NOT NULL,
    Sno     int         NOT NULL,
    CustCode varchar(10) NULL,
    ItemName varchar(30) NULL,
    Qty     numeric(10,3) NULL,
    CONSTRAINT PK_Sale PRIMARY KEY (DocId, Sno)
);
INSERT INTO dbo.Sale VALUES
    ('SD1', 1, 'C1', 'Item A', 2.5),
    ('SD1', 2, 'C2', 'Item B', 1.0),
    ('SD2', 1, NULL, 'Item C', 3.25);

/* detail referencing the composite PK (LineNum not reserved) */
CREATE TABLE dbo.SaleLine (
    DocId   varchar(10) NOT NULL,
    Sno     int         NOT NULL,
    LineNum int         NOT NULL,
    Note    varchar(30) NULL,
    CONSTRAINT PK_SaleLine PRIMARY KEY (DocId, Sno, LineNum),
    CONSTRAINT FK_SaleLine_Sale FOREIGN KEY (DocId, Sno)
        REFERENCES dbo.Sale(DocId, Sno)
);
INSERT INTO dbo.SaleLine VALUES ('SD1', 1, 1, 'ok'), ('SD1', 2, 1, 'ok2');

/* noise table (filter test: isko filter me NAHI rakhenge) */
CREATE TABLE dbo.NoiseTable (K int NOT NULL PRIMARY KEY, V int NULL);
INSERT INTO dbo.NoiseTable VALUES (1, 10), (2, 20);
GO

/* non-PK indexes: composite DESC, INCLUDE, unique-filtered
   (SET QUOTED_IDENTIFIER ON zaroori hai - filtered index ke liye required) */
SET QUOTED_IDENTIFIER ON;
CREATE INDEX IX_Sale_Item ON dbo.Sale(ItemName DESC) INCLUDE (Qty);
CREATE UNIQUE INDEX UX_Customer_Name ON dbo.Customer(CustName) WHERE CustName IS NOT NULL;
CREATE INDEX IX_Sale_Cust ON dbo.Sale(CustCode, DocId DESC);
CREATE INDEX IX_SaleLine_Note ON dbo.SaleLine(Note);

/* FKs: simple + composite-referencing (Customer_Region, Sale_Customer) */
ALTER TABLE dbo.Customer ADD CONSTRAINT FK_Customer_Region
    FOREIGN KEY (RegionCode) REFERENCES dbo.Region(RegionCode);
ALTER TABLE dbo.Sale ADD CONSTRAINT FK_Sale_Customer
    FOREIGN KEY (CustCode) REFERENCES dbo.Customer(CustCode);
GO

/* ---------------- STEP B: destination pre-created with conflicts ---------- */
CREATE DATABASE TestDstDB;
GO
USE TestDstDB;
GO

/* Customer pre-exists WITH data that will orphan the Region FK */
CREATE TABLE dbo.Customer (
    CustCode   varchar(10) NOT NULL PRIMARY KEY,
    CustName   varchar(50) NULL,
    RegionCode varchar(5)  NULL
);
INSERT INTO dbo.Customer VALUES ('C1', 'old-c1', 'X');   -- 'X' Region source me NAHI hai

/* pre-create IX_Customer_Name in dest -> index name collision test */
CREATE INDEX IX_Customer_Name ON dbo.Customer(CustName);
GO
