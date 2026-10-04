/* ============================================================================
   GENERIC DATABASE TRANSFER (SAME SERVER)  -  EK reusable script
   ----------------------------------------------------------------------------
   KAAM KAISE KARE (sirf 2 naam badalne hain):
     1) Neeche CONFIG me:
          @SRC_DB  = EXISTING database ka naam  (jahan se data lena hai)
          @DEST_DB = NEW database ka naam       (naya DB khud ban jayega)
     2) Kisi bhi DB context se run kar sakte ho (master se bhi chalega).
     3) F5 dabao. Messages window me har table ka status dikhega:
          STRUCT CREATED / TRANSFERRED : n rows / SKIPPED / FAILED

   KYA TRANSFER HOGA (table structure ke sath):
     * Destination DB exist nahi karti to khud CREATE ho jayegi.
     * Har source table destination me banegi:
         - columns + data types + NULL/NOT NULL   (SELECT INTO based)
         - IDENTITY property                       (preserved)
         - COMPUTED columns                        (materialized copy)
         - DEFAULT constraints                     (source se copy)
         - PRIMARY KEY                             (source se copy)
         - non-PK indexes (unique/clustered/include bhi) - fresh tables par
     * FOREIGN KEYS: alag pass me (sab data ke baad) - sirf wo FK jinke
       parent AUR referenced dono tables transferred hain
     * DATA: column-name based INSERT...SELECT
         - PK wali tables : NOT EXISTS guard -> re-run par duplicate NAHI
         - Bina-PK tables : poori-row (NULL-safe) compare -> same row skip
         - IDENTITY columns: IDENTITY_INSERT ON/OFF automatic
         - Har table alag TRY/CATCH me -> ek fail ho to baaki chalte rahenge
     * END me row-count VERIFY report (Source vs Destination).

   KYA TRANSFER NAHI HOTA (note):
     Views, Stored Procedures, Functions, triggers. timestamp/rowversion
     columns skip hote hain (copy ho hi nahi sakte). Zaroorat ho to SSMS
     "Tasks > Generate Scripts" se schema le lo.
   ============================================================================ */

/* ==========================  CONFIG (sirf yahan badlo)  ==================== */
DECLARE @SRC_DB  sysname = N'VijayData2627';   -- << EXISTING database ka naam
DECLARE @DEST_DB sysname = N'MERA_NAYA_DB';    -- << NEW database ka naam

/* OPTIONAL table filter - khali (N'') = SAB tables.
   Comma-separated naam do; trailing * = prefix wildcard.
   Example: N'Order*, MemBill, Customer'  -> Order se shuru hone wali sab +
            MemBill + Customer. Sirf ye tables transfer hongi.
   NOTE: FK tabhi banega jab uske dono tables filter me aate hain.          */
DECLARE @ONLY_TABLES nvarchar(max) = N'';
/* ========================================================================== */

SET NOCOUNT ON;

/* FOR XML + computed-column/index operations ke liye ye SET options
   required hain. SSMS me default ON hote hain, lekin sqlcmd/job me OFF ho
   sakte hain - isliye explicitly set kar rahe hain (nested dynamic SQL
   inhe inherit karta hai). */
SET ANSI_NULLS ON;
SET ANSI_PADDING ON;
SET ANSI_WARNINGS ON;
SET ARITHABORT ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET QUOTED_IDENTIFIER ON;
SET NUMERIC_ROUNDABORT OFF;

/* ------------------------- Safety checks ---------------------------------- */
IF DB_ID(@SRC_DB) IS NULL
BEGIN
    RAISERROR(N'Source DB [%s] nahi mila. @SRC_DB spelling check karo.', 16, 1, @SRC_DB);
    RETURN;
END
IF @SRC_DB = @DEST_DB
BEGIN
    RAISERROR(N'Source aur Destination same nahi ho sakte.', 16, 1);
    RETURN;
END

PRINT '========== DB TRANSFER START : [' + @SRC_DB + '] -> [' + @DEST_DB + '] ==========';

/* ---------------- Variables ------------------------------------------------ */
DECLARE
    @src_db_q     sysname         = QUOTENAME(@SRC_DB),
    @dst_db_q     sysname         = QUOTENAME(@DEST_DB),
    @tbl          sysname,
    @tq           sysname,
    @src_ref      nvarchar(400),
    @dst_ref      nvarchar(400),
    @dref         nvarchar(400),
    @created      bit,
    @cols_struct  nvarchar(max),
    @cols         nvarchar(max),
    @pkcols       nvarchar(max),
    @pred         nvarchar(max),
    @defddl       nvarchar(max),
    @ident        bit,
    @tid          int,
    @rows         int,
    @sql          nvarchar(max),
    @ins          nvarchar(max),
    @src_coll     nvarchar(128),
    @coll_clause  nvarchar(200),
    @idxddl       nvarchar(max),
    @fkname       sysname,
    @fkddl        nvarchar(max),
    @pos int, @p2 int, @chunk nvarchar(max),
    @eq int, @idxname sysname, @ddl1 nvarchar(max),
    @xm           xml,
    @n_ok         int = 0,
    @n_fail       int = 0,
    @n_skip       int = 0,
    @fk_ok        int = 0,
    @fk_fail      int = 0,
    @fk_skip      int = 0;

/* Source DB ki collation lo - destination isi collation me banegi (warna
   cross-DB comparisons me collation conflict aata hai). Temp tables bhi isi
   collation me banengi taaki catalog joins me conflict na ho.             */
SELECT @src_coll = collation_name FROM sys.databases WHERE name = @SRC_DB;
SET @coll_clause = ISNULL(N' COLLATE ' + @src_coll,
                          N' COLLATE DATABASE_DEFAULT');

/* ---------------- Table filter (optional) ---------------------------------- */
IF OBJECT_ID('tempdb..##filter') IS NOT NULL DROP TABLE ##filter;
SET @sql = N'CREATE TABLE ##filter (name sysname' + @coll_clause + N' NOT NULL PRIMARY KEY);';
EXEC (@sql);
IF ISNULL(@ONLY_TABLES, N'') <> N''
BEGIN
    SET @xm = N'<r>' + REPLACE(@ONLY_TABLES, N',', N'</r><r>') + N'</r>';
    /* LIKE-special chars escape; trailing * -> % (prefix wildcard) */
    INSERT INTO ##filter (name)
    SELECT DISTINCT
           REPLACE(REPLACE(REPLACE(LTRIM(RTRIM(x.value(N'.', N'sysname'))),
                   N'[', N'[[]'), N'_', N'[_]'), N'*', N'%')
    FROM @xm.nodes(N'/r') AS t(x)
    WHERE ISNULL(x.value(N'.', N'sysname'), N'') <> N'';

    IF EXISTS (SELECT 1 FROM ##filter)
        PRINT 'FILTER : sirf ye tables transfer hongi -> ' + @ONLY_TABLES;
    ELSE
        PRINT 'FILTER : @ONLY_TABLES diya tha par koi valid naam nahi mila - SAB tables transfer hongi.';
END

/* STEP 1 : Destination DB create (agar nahi hai) */
IF DB_ID(@DEST_DB) IS NULL
BEGIN
    SET @sql = N'CREATE DATABASE ' + @dst_db_q
             + ISNULL(N' COLLATE ' + @src_coll, N'') + N';';
    EXEC (@sql);
    PRINT 'STEP 1 : Database [' + @DEST_DB + '] CREATE ho gayi (collation: '
        + ISNULL(@src_coll, N'server default') + N').';
END
ELSE
    PRINT 'STEP 1 : Database [' + @DEST_DB + '] pehle se hai - usi me transfer hoga.';

/* Source ki table list temp table me (dynamic SQL se, 3-part sys.tables) */
IF OBJECT_ID('tempdb..##tabs') IS NOT NULL DROP TABLE ##tabs;
SET @sql = N'CREATE TABLE ##tabs (name sysname' + @coll_clause + N' NOT NULL PRIMARY KEY);';
EXEC (@sql);
SET @sql = N'SELECT t.name FROM ' + @src_db_q + N'.sys.tables AS t'
         + N' WHERE t.is_ms_shipped = 0 AND t.schema_id = SCHEMA_ID(N''dbo'')'
         + CASE WHEN EXISTS (SELECT 1 FROM ##filter)
                THEN N' AND EXISTS (SELECT 1 FROM ##filter AS f WHERE t.name LIKE f.name)'
                ELSE N'' END + N';';
INSERT INTO ##tabs (name) EXEC (@sql);

/* non-dbo tables count (sirf informative) */
DECLARE @n_nondbo int = 0, @n_tabs int = 0;
SET @sql = N'SELECT @c = COUNT(*) FROM ' + @src_db_q + N'.sys.tables'
         + N' WHERE is_ms_shipped = 0 AND schema_id <> SCHEMA_ID(N''dbo'');';
EXEC sp_executesql @sql, N'@c int OUTPUT', @c = @n_nondbo OUTPUT;

SET @n_tabs = (SELECT COUNT(*) FROM ##tabs);
PRINT '';
PRINT 'STEP 2+3 : STRUCTURE + DATA TRANSFER ('
    + CAST(@n_tabs AS varchar(20)) + ' tables)';
IF @n_nondbo > 0
    PRINT 'NOTE : ' + CAST(@n_nondbo AS varchar(10))
        + ' non-dbo schema tables skip hongi (ye script sirf dbo schema transfer karti hai).';

/* ------------- Reusable metadata query (ek hi baar banti hai) -------------- */
/* Source DB context me chalti hai; har table ke liye sirf @tid parameter pass
   hota hai - koi table-specific SQL concat nahi, koi deep quoting nahi.       */
DECLARE @meta_sql nvarchar(max) = N'USE ' + @src_db_q + N';
SELECT
    @cols_struct = STUFF((SELECT N'', '' + QUOTENAME(c.name)
        FROM sys.columns AS c
        WHERE c.object_id = @tid
          AND TYPE_NAME(c.user_type_id) NOT IN (N''timestamp'', N''rowversion'')
        ORDER BY c.column_id
        FOR XML PATH(N''''), TYPE).value(N''.'', N''nvarchar(max)''), 1, 1, N''''),
    @pkcols = STUFF((SELECT N'', '' + QUOTENAME(c.name)
        FROM sys.indexes AS i
        JOIN sys.index_columns AS ic ON ic.object_id = i.object_id AND ic.index_id = i.index_id
        JOIN sys.columns     AS c  ON c.object_id = ic.object_id AND c.column_id = ic.column_id
        WHERE i.object_id = @tid AND i.is_primary_key = 1
        ORDER BY ic.key_ordinal
        FOR XML PATH(N''''), TYPE).value(N''.'', N''nvarchar(max)''), 1, 1, N''''),
    @ident = ISNULL((SELECT MAX(CASE WHEN c.is_identity = 1 THEN 1 ELSE 0 END)
        FROM sys.columns AS c WHERE c.object_id = @tid), 0),
    @pred = CASE WHEN EXISTS (SELECT 1 FROM sys.indexes AS i
                              WHERE i.object_id = @tid AND i.is_primary_key = 1)
        THEN STUFF((SELECT N'' AND d.'' + QUOTENAME(c.name) + N'' = s.'' + QUOTENAME(c.name)
                FROM sys.indexes AS i2
                JOIN sys.index_columns AS ic ON ic.object_id = i2.object_id AND ic.index_id = i2.index_id
                JOIN sys.columns     AS c  ON c.object_id = ic.object_id AND c.column_id = ic.column_id
                WHERE i2.object_id = @tid AND i2.is_primary_key = 1
                ORDER BY ic.key_ordinal
                FOR XML PATH(N''''), TYPE).value(N''.'', N''nvarchar(max)''), 1, 5, N'''')
        ELSE STUFF((SELECT N'' AND ((d.'' + QUOTENAME(c.name) + N'' = s.'' + QUOTENAME(c.name)
                     + N'') OR (d.'' + QUOTENAME(c.name) + N'' IS NULL AND s.'' + QUOTENAME(c.name) + N'' IS NULL))''
                FROM sys.columns AS c
                WHERE c.object_id = @tid
                  AND TYPE_NAME(c.user_type_id) NOT IN
                      (N''timestamp'', N''rowversion'', N''text'', N''ntext'', N''image'',
                       N''xml'', N''geometry'', N''geography'')
                ORDER BY c.column_id
                FOR XML PATH(N''''), TYPE).value(N''.'', N''nvarchar(max)''), 1, 5, N'''')
        END,
    @defddl = (SELECT N'' ALTER TABLE '' + @dq + N''.dbo.'' + @tq
                      + N'' ADD CONSTRAINT '' + QUOTENAME(dc.name)
                      + N'' DEFAULT '' + dc.definition
                      + N'' FOR '' + QUOTENAME(c.name) + N'';''
        FROM sys.default_constraints AS dc
        JOIN sys.columns AS c ON c.object_id = dc.parent_object_id
                             AND c.column_id = dc.parent_column_id
        WHERE dc.parent_object_id = @tid
        ORDER BY c.column_id
        FOR XML PATH(N''''), TYPE).value(N''.'', N''nvarchar(max)''),

    /* non-PK index DDL (CREATE INDEX ... with columns + includes) */
    @idxddl = STUFF((SELECT N''; '' + i.name + N''='' +
            N''CREATE '' + CASE WHEN i.is_unique = 1 THEN N''UNIQUE '' ELSE N'''' END
            + N''INDEX '' + QUOTENAME(i.name)
            + N'' ON '' + @dq + N''.dbo.'' + @tq + N'' (''
            + STUFF((SELECT N'', '' + QUOTENAME(c.name)
                    + CASE WHEN ic.is_descending_key = 1 THEN N'' DESC'' ELSE N'''' END
                FROM sys.index_columns AS ic
                JOIN sys.columns AS c ON c.object_id = ic.object_id AND c.column_id = ic.column_id
                WHERE ic.object_id = i.object_id AND ic.index_id = i.index_id
                  AND ic.is_included_column = 0
                ORDER BY ic.key_ordinal
                FOR XML PATH(N''''), TYPE).value(N''.'', N''nvarchar(max)''), 1, 1, N'''')
            + N'')''
            + ISNULL(N'' INCLUDE ('' + STUFF((SELECT N'', '' + QUOTENAME(c.name)
                    FROM sys.index_columns AS ic
                    JOIN sys.columns AS c ON c.object_id = ic.object_id AND c.column_id = ic.column_id
                    WHERE ic.object_id = i.object_id AND ic.index_id = i.index_id
                      AND ic.is_included_column = 1
                    ORDER BY ic.index_column_id
                    FOR XML PATH(N''''), TYPE).value(N''.'', N''nvarchar(max)''), 1, 1, N'''')
                + N'')'', N'''')
            + ISNULL(CASE WHEN i.has_filter = 1
                     THEN N'' WHERE '' + i.filter_definition
                     ELSE N'''' END, N'''')
            + N'';''
        FROM sys.indexes AS i
        WHERE i.object_id = @tid
          AND i.is_primary_key = 0 AND i.index_id > 0
          AND i.is_hypothetical = 0 AND i.is_disabled = 0
          AND i.type IN (1, 2)
        ORDER BY i.name
        FOR XML PATH(N''''), TYPE).value(N''.'', N''nvarchar(max)''), 1, 1, N'''');';

/* common-columns query: dest ke computed columns exclude hote hain */
DECLARE @cols_sql nvarchar(max) = N'USE ' + @src_db_q + N';
SELECT @cols = STUFF((SELECT N'', '' + QUOTENAME(c.name)
    FROM sys.columns AS c
    WHERE c.object_id = @tid
      AND TYPE_NAME(c.user_type_id) NOT IN (N''timestamp'', N''rowversion'')
      AND EXISTS (SELECT 1 FROM ' + @dst_db_q + N'.sys.columns AS d
                  WHERE d.object_id = OBJECT_ID(@dref)
                    AND d.name COLLATE DATABASE_DEFAULT
                      = c.name COLLATE DATABASE_DEFAULT
                    AND d.is_computed = 0)
    ORDER BY c.column_id
    FOR XML PATH(N''''), TYPE).value(N''.'', N''nvarchar(max)''), 1, 1, N'''');';

/* ============================ MAIN LOOP ==================================== */
DECLARE tab_cur CURSOR LOCAL FAST_FORWARD FOR
    SELECT name FROM ##tabs ORDER BY name;

OPEN tab_cur;
FETCH NEXT FROM tab_cur INTO @tbl;

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @tq      = QUOTENAME(@tbl);
    SET @src_ref = @src_db_q + N'.dbo.' + @tq;
    SET @dst_ref = @dst_db_q + N'.dbo.' + @tq;
    SET @dref    = @dst_ref;      -- @dref ka use param ke roop me hota hai
    SET @created = 0;
    SET @rows    = 0;
    SET @pkcols  = N'';   -- stale value se bachne ke liye har iteration me reset

    IF OBJECT_ID(@src_ref, N'U') IS NULL
    BEGIN
        PRINT '   SKIPPED (source table missing) : ' + @tbl;
        SET @n_skip += 1;
    END
    ELSE
    BEGIN TRY
        /* ---- metadata read (source DB context me) ---- */
        SET @tid = OBJECT_ID(@src_ref);
        EXEC sp_executesql @meta_sql,
             N'@cols_struct nvarchar(max) OUTPUT, @pkcols nvarchar(max) OUTPUT,
               @ident bit OUTPUT, @pred nvarchar(max) OUTPUT,
               @defddl nvarchar(max) OUTPUT, @idxddl nvarchar(max) OUTPUT,
               @tid int, @dq sysname, @tq sysname',
             @cols_struct = @cols_struct OUTPUT, @pkcols = @pkcols OUTPUT,
             @ident = @ident OUTPUT, @pred = @pred OUTPUT,
             @defddl = @defddl OUTPUT, @idxddl = @idxddl OUTPUT,
             @tid = @tid, @dq = @dst_db_q, @tq = @tq;

        /* ---- structure create (agar missing hai) : SELECT INTO skeleton ---- */
        IF OBJECT_ID(@dst_ref, N'U') IS NULL
        BEGIN
            SET @created = 1;
            SET @sql = N'SELECT ' + @cols_struct + N' INTO ' + @dst_ref
                     + N' FROM ' + @src_ref + N' WHERE 1 = 0;';
            EXEC (@sql);
            PRINT '   STRUCT CREATED : ' + @tbl;
        END

        /* ---- defaults copy (sirf fresh bani table par) ---- */
        IF @created = 1 AND ISNULL(@defddl, N'') <> N''
        BEGIN
            BEGIN TRY
                EXEC (@defddl);
            END TRY
            BEGIN CATCH
                PRINT '   NOTE   : defaults poori tarah copy nahi hue ['
                    + @tbl + N'] -> ' + ERROR_MESSAGE();
            END CATCH
        END

        /* ---- data transfer ---- */
        EXEC sp_executesql @cols_sql,
             N'@cols nvarchar(max) OUTPUT, @tid int, @dref nvarchar(400)',
             @cols = @cols OUTPUT, @tid = @tid, @dref = @dref;

        IF ISNULL(@cols, N'') = N''
        BEGIN
            PRINT '   SKIPPED (koi common column nahi) : ' + @tbl;
            SET @n_skip += 1;
        END
        ELSE
        BEGIN
            SET @ins =
                  N'SET NOCOUNT ON; USE ' + @dst_db_q
                + N'; DECLARE @err nvarchar(2048); '
                + CASE WHEN @ident = 1 THEN N'BEGIN TRY ' ELSE N'' END
                + CASE WHEN @ident = 1
                       THEN N'SET IDENTITY_INSERT dbo.' + @tq + N' ON; ' ELSE N'' END
                + N'INSERT INTO dbo.' + @tq + N' (' + @cols + N') '
                + N'SELECT ' + @cols + N' FROM ' + @src_ref + N' AS s '
                + N'WHERE NOT EXISTS (SELECT 1 FROM dbo.' + @tq
                + N' AS d WHERE ' + @pred + N'); '
                + N'SET @rows = @@ROWCOUNT; '
                + CASE WHEN @ident = 1 THEN
                       N'SET IDENTITY_INSERT dbo.' + @tq + N' OFF; END TRY '
                     + N'BEGIN CATCH SET @err = ERROR_MESSAGE(); '
                     + N'BEGIN TRY SET IDENTITY_INSERT dbo.' + @tq
                                          + N' OFF; END TRY BEGIN CATCH END CATCH; '
                     + N'RAISERROR(N''%s'', 16, 1, @err); END CATCH;'
                   ELSE N'' END;

            EXEC sp_executesql @ins, N'@rows int OUTPUT', @rows = @rows OUTPUT;

            PRINT '   TRANSFERRED : ' + CAST(@rows AS varchar(20)) + ' rows  ->  ' + @tbl;
            SET @n_ok += 1;
        END
    END TRY
    BEGIN CATCH
        PRINT '   FAILED   : ' + @tbl + '  -> ' + ERROR_MESSAGE();
        SET @n_fail += 1;
    END CATCH;

    /* ---- PRIMARY KEY copy (fresh bani table par; data fail ho to bhi) ----
       Data insert fail ho jaye to bhi table to ban chuki hai - PK add karna
       zaroori hai warna wo hamesha bina-PK rahegi (re-run par bhi).        */
    IF @created = 1 AND ISNULL(@pkcols, N'') <> N''
       AND OBJECT_ID(@dst_db_q + N'.dbo.' + QUOTENAME(@tbl + N'_PK')) IS NULL
    BEGIN
        SET @sql = N'ALTER TABLE ' + @dst_ref
                 + N' ADD CONSTRAINT ' + QUOTENAME(@tbl + N'_PK')
                 + N' PRIMARY KEY CLUSTERED (' + @pkcols + N');';
        BEGIN TRY
            EXEC (@sql);
            PRINT '   PK ADDED     : ' + @tbl;
        END TRY
        BEGIN CATCH
            PRINT '   NOTE   : PK add nahi ho paya [' + @tbl
                + N'] -> ' + ERROR_MESSAGE();
        END CATCH
    END

    /* ---- non-PK indexes copy (har run par; naam-se skip = re-run safe) ----
       @idxddl me har index '; name=DDL;' format me hai - parse karke banate
       hain. Dest me same-named index pehle se ho to wo skip hoga, baaki
       banenge. Fresh ya purani table dono par missing indexes add honge.  */
    IF ISNULL(@idxddl, N'') <> N''
    BEGIN
        SET @pos = 1;
        WHILE @pos <= LEN(@idxddl)
        BEGIN
            SET @p2 = CHARINDEX(N';', @idxddl, @pos);
            IF @p2 = 0 SET @p2 = LEN(@idxddl) + 1;
            SET @chunk = SUBSTRING(@idxddl, @pos, @p2 - @pos);
            SET @pos = @p2 + 1;
            IF ISNULL(@chunk, N'') = N'' CONTINUE;

            SET @eq = CHARINDEX(N'=', @chunk);
            SET @idxname = LTRIM(RTRIM(SUBSTRING(@chunk, 1, @eq - 1)));
            SET @ddl1    = SUBSTRING(@chunk, @eq + 1, LEN(@chunk));

            IF COL_LENGTH(@dst_db_q + N'.dbo.' + @tq, @idxname) IS NOT NULL
                OR INDEXPROPERTY(OBJECT_ID(@dst_ref), @idxname, 'IndexID') IS NOT NULL
            BEGIN
                PRINT '   INDEX SKIPPED (dest me same naam) : ' + @idxname;
                CONTINUE;
            END

            BEGIN TRY
                EXEC (@ddl1);
                PRINT '   INDEX CREATED : ' + @idxname;
            END TRY
            BEGIN CATCH
                PRINT '   NOTE   : index ' + @idxname + ' nahi bana ['
                    + @tbl + N'] -> ' + ERROR_MESSAGE();
            END CATCH
        END
    END

    FETCH NEXT FROM tab_cur INTO @tbl;
END
CLOSE tab_cur;
DEALLOCATE tab_cur;

/* ============================================================================
   STEP 3B : FOREIGN KEY TRANSFER PASS (sab data transfer hone ke baad)
   Sirf wo FKs jo source me enabled+trusted hain; dono tables (parent aur
   referenced) transferred set me honi chahiye. Naya naam: FK_<table>_<n>.
   ============================================================================ */
PRINT '';
PRINT 'STEP 3B : FOREIGN KEYS';

IF OBJECT_ID('tempdb..##fks') IS NOT NULL DROP TABLE ##fks;
SET @sql = N'CREATE TABLE ##fks (name sysname' + @coll_clause
         + N' NOT NULL, ddl nvarchar(max)' + @coll_clause + N' NOT NULL);';
EXEC (@sql);

/* FK DDL building (source context me). @dq parameter ke roop me jaata hai. */
DECLARE @fk_sql nvarchar(max) = N'USE ' + @src_db_q + N';
SELECT fk_name, ddl
FROM sys.foreign_keys AS fk
JOIN sys.tables AS tp ON tp.object_id = fk.parent_object_id
JOIN sys.tables AS tr ON tr.object_id = fk.referenced_object_id
CROSS APPLY (SELECT
    fk.name AS fk_name,
    N''ALTER TABLE '' + @dq + N''.dbo.'' + QUOTENAME(tp.name)
  + N'' ADD CONSTRAINT ['' + REPLACE(fk.name, N'']'', N'']]'') + N'']''
  + N'' FOREIGN KEY ('' + STUFF((SELECT N'', '' + QUOTENAME(pc.name)
        FROM sys.foreign_key_columns AS fkc2
        JOIN sys.columns AS pc ON pc.object_id = fkc2.parent_object_id AND pc.column_id = fkc2.parent_column_id
        WHERE fkc2.constraint_object_id = fk.object_id
        ORDER BY fkc2.constraint_column_id
        FOR XML PATH(N''''), TYPE).value(N''.'', N''nvarchar(max)''), 1, 1, N'''')
  + N'') REFERENCES '' + QUOTENAME(tr.name)
  + N'' ('' + STUFF((SELECT N'', '' + QUOTENAME(rc.name)
        FROM sys.foreign_key_columns AS fkc3
        JOIN sys.columns AS rc ON rc.object_id = fkc3.referenced_object_id AND rc.column_id = fkc3.referenced_column_id
        WHERE fkc3.constraint_object_id = fk.object_id
        ORDER BY fkc3.constraint_column_id
        FOR XML PATH(N''''), TYPE).value(N''.'', N''nvarchar(max)''), 1, 1, N'''')
  + N'');'' AS ddl
) AS ca
WHERE fk.is_disabled = 0
  AND EXISTS (SELECT 1 FROM ##tabs AS a WHERE a.name = tp.name)
  AND EXISTS (SELECT 1 FROM ##tabs AS a WHERE a.name = tr.name);';

INSERT INTO ##fks (name, ddl)
EXEC sp_executesql @fk_sql, N'@dq sysname', @dq = @dst_db_q;

/* FK apply loop: same '; name|DDL;' parsing approach */
DECLARE fk_cur CURSOR LOCAL FAST_FORWARD FOR SELECT name, ddl FROM ##fks;
OPEN fk_cur;
FETCH NEXT FROM fk_cur INTO @fkname, @fkddl;
WHILE @@FETCH_STATUS = 0
BEGIN
    /* dest me same-named FK already hai -> skip (re-run safe) */
    IF OBJECT_ID(@dst_db_q + N'.dbo.' + @fkname, N'F') IS NOT NULL
    BEGIN
        PRINT '   FK EXISTS  : ' + @fkname;
        SET @fk_skip += 1;
    END
    ELSE
    BEGIN TRY
        EXEC (@fkddl);
        PRINT '   FK CREATED : ' + @fkname;
        SET @fk_ok += 1;
    END TRY
    BEGIN CATCH
        /* orphans (violating data) ya missing referenced table - skip karo */
        PRINT '   FK FAILED  : ' + @fkname + '  -> ' + ERROR_MESSAGE();
        SET @fk_fail += 1;
    END CATCH;
    FETCH NEXT FROM fk_cur INTO @fkname, @fkddl;
END
CLOSE fk_cur;
DEALLOCATE fk_cur;

PRINT 'FK SUMMARY : ' + CAST(@fk_ok AS varchar(10)) + ' created, '
    + CAST(@fk_fail AS varchar(10)) + ' failed, '
    + CAST(@fk_skip AS varchar(10)) + ' skipped/exists';

/* ============================ STEP 4 : VERIFY ============================== */
PRINT '';
PRINT 'STEP 4 : VERIFY (row counts : Source vs Destination)';

SET @sql =
      N'USE ' + @src_db_q + N';'
    + N' SELECT t.name AS TableName, SUM(p.rows) AS SrcCnt, ISNULL(d.DstCnt, 0) AS DstCnt,'
    + N' CASE WHEN SUM(p.rows) = ISNULL(d.DstCnt, 0) THEN ''OK'' ELSE ''MISMATCH'' END AS Status'
    + N' FROM ' + @src_db_q + N'.sys.tables AS t'
    + N' JOIN ' + @src_db_q + N'.sys.partitions AS p ON p.object_id = t.object_id AND p.index_id IN (0, 1)'
    + N' LEFT JOIN (SELECT tt.name' + @coll_clause + N' AS name, SUM(pp.rows) AS DstCnt'
    + N'           FROM ' + @dst_db_q + N'.sys.tables AS tt'
    + N'           JOIN ' + @dst_db_q + N'.sys.partitions AS pp ON pp.object_id = tt.object_id AND pp.index_id IN (0, 1)'
    + N'           GROUP BY tt.name) AS d ON d.name = t.name'
    + N' WHERE t.is_ms_shipped = 0'
    + CASE WHEN EXISTS (SELECT 1 FROM ##filter)
           THEN N' AND EXISTS (SELECT 1 FROM ##tabs AS ft WHERE ft.name = t.name)'
           ELSE N'' END
    + N' GROUP BY t.name, d.DstCnt'
    + N' ORDER BY t.name;';
EXEC (@sql);

PRINT '';
PRINT '========== DONE : ' + CAST(@n_ok AS varchar(10)) + ' transferred, '
     + CAST(@n_fail AS varchar(10)) + ' failed, ' + CAST(@n_skip AS varchar(10))
     + ' skipped ==========';

GO
