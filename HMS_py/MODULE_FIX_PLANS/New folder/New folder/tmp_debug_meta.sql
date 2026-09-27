SET QUOTED_IDENTIFIER ON; SET ANSI_NULLS ON; SET ANSI_PADDING ON; SET ANSI_WARNINGS ON; SET ARITHABORT ON; SET CONCAT_NULL_YIELDS_NULL ON; SET NUMERIC_ROUNDABORT OFF;
DECLARE @src_db_q sysname = N'[TestSrcDB]';
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
DECLARE @cols_struct nvarchar(max), @pkcols nvarchar(max), @ident bit, @pred nvarchar(max), @defddl nvarchar(max), @idxddl nvarchar(max), @tid int, @dq sysname, @tq sysname;
SET @tid = OBJECT_ID(N'[TestSrcDB].[dbo].[Sale]'); SET @dq = N'[TestDstDB]'; SET @tq = N'[Sale]';
EXEC sp_executesql @meta_sql, N'@cols_struct nvarchar(max) OUTPUT, @pkcols nvarchar(max) OUTPUT, @ident bit OUTPUT, @pred nvarchar(max) OUTPUT, @defddl nvarchar(max) OUTPUT, @idxddl nvarchar(max) OUTPUT, @tid int, @dq sysname, @tq sysname', @cols_struct=@cols_struct OUTPUT, @pkcols=@pkcols OUTPUT, @ident=@ident OUTPUT, @pred=@pred OUTPUT, @defddl=@defddl OUTPUT, @idxddl=@idxddl OUTPUT, @tid=@tid, @dq=@dq, @tq=@tq;
PRINT '=== IDXDDL START ===';
PRINT @idxddl;
PRINT '=== IDXDDL END, LEN=' + CAST(LEN(@idxddl) AS varchar(10));
