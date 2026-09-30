
Public Sub Proc_154_0_FDC288
  'Data Table: 41CB9C
  Dim var_24C As Variant
  loc_FDC107: var_98 = arg_10
  loc_FDC10D: var_9C = arg_14
  loc_FDC11B: var_BC = Ucase(var_98)
  loc_FDC1CC: var_24C = (var_BC = Ucase("AcGroup")) Or (Ucase(var_98) = Ucase("EPABX_Data")) Or (Ucase(var_98) = Ucase("ledgerRef")) Or (Ucase(var_98) = Ucase("MarketSeg"))
  loc_FDC1ED: If CBool(var_24C) Then
  loc_FDC1F0:   Result = arg_10: Exit Sub
  loc_FDC1F4: End If
  loc_FDC1FD: If (arg_1C = 0) Then
  loc_FDC221:   Me.Connection15.Execute "INSERT INTO " & var_98 & var_9C, var_BC, -1
  loc_FDC236: Else
  loc_FDC23F:   If (arg_1C = 2) Then
  loc_FDC263:     Me.Connection15.Execute "DELETE FROM " & var_98 & var_9C, var_BC, -1
  loc_FDC278:   Else
  loc_FDC281:     If (arg_1C = 1) Then
  loc_FDC284:     End If
  loc_FDC284:   End If
  loc_FDC284: End If
  loc_FDC284: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_154_1_F52F64(arg_C, arg_10, arg_14) 'F52F64
  'Data Table: 41CB9C
  loc_F52E5B: var_94 = arg_14
  loc_F52E6C: var_90 = "[" & arg_10 & "]"
  loc_F52E75: var_9C = arg_C
  loc_F52E80: If (var_9C = "Number") Then
  loc_F52E91:   var_88 = var_90 & "=" & var_94
  loc_F52E9A: Else
  loc_F52EA2:   If (var_9C = "Date/Time") Then
  loc_F52EBA:     var_88 = var_90 & "=#" & var_94 & "#"
  loc_F52EC7:   Else
  loc_F52ECF:     If (var_9C = "Text") Then
  loc_F52EE7:       var_88 = var_90 & "='" & var_94 & "'"
  loc_F52EF4:     Else
  loc_F52EFC:       If (var_9C = "Yes/No") Then
  loc_F52F0D:         var_88 = var_90 & "=" & var_94
  loc_F52F16:       Else
  loc_F52F1E:         If (var_9C = "Currency") Then
  loc_F52F2F:           var_88 = var_90 & "=" & var_94
  loc_F52F38:         Else
  loc_F52F40:           If (var_9C = "Memo") Then
  loc_F52F58:             var_88 = var_90 & "='" & var_94 & "'"
  loc_F52F62:           End If
  loc_F52F62:         End If
  loc_F52F62:       End If
  loc_F52F62:     End If
  loc_F52F62:   End If
  loc_F52F62: End If
  loc_F52F62: Exit Sub
End Sub

Public Sub Proc_154_2_EE6E4C(arg_C, arg_10) 'EE6E4C
  'Data Table: 41CB9C
  Dim var_A4 As Variant
  loc_EE6D9D: var_90 = arg_10
  loc_EE6DA3: var_94 = arg_C
  loc_EE6DAE: If (var_94 = "Number") Then
  loc_EE6DB4:   var_88 = var_90
  loc_EE6DBA: Else
  loc_EE6DC2:   If (var_94 = "Date/Time") Then
  loc_EE6DC8:     var_A4 = var_90
  loc_EE6DD0:     Proc_6_7_F26918(var_B4)
  loc_EE6DD9:     var_88 = CStr(var_B4)
  loc_EE6DE2:   Else
  loc_EE6DEA:     If (var_94 = "Text") Then
  loc_EE6DFB:       var_88 = "'" & var_90 & "'"
  loc_EE6E04:     Else
  loc_EE6E0C:       If (var_94 = "Yes/No") Then
  loc_EE6E12:         var_88 = var_90
  loc_EE6E18:       Else
  loc_EE6E20:         If (var_94 = "Currency") Then
  loc_EE6E26:           var_88 = var_90
  loc_EE6E2C:         Else
  loc_EE6E34:           If (var_94 = "Memo") Then
  loc_EE6E45:             var_88 = "'" & var_90 & "'"
  loc_EE6E4B:           End If
  loc_EE6E4B:         End If
  loc_EE6E4B:       End If
  loc_EE6E4B:     End If
  loc_EE6E4B:   End If
  loc_EE6E4B: End If
  loc_EE6E4B: Exit Sub
End Sub

Public Sub Proc_154_3_E5BA4C(arg_C) 'E5BA4C
  'Data Table: 41CB9C
  loc_E5BA3C: var_88 = CStr(IIf(IsNull(arg_C), vbNullString, arg_C))
  loc_E5BA48: Exit Sub
End Sub

Public Sub Proc_154_4_F33584(arg_C, arg_10) 'F33584
  'Data Table: 41CB9C
  Dim var_8C As Long
  Dim var_AC As Variant
  loc_F3346B: var_8C = arg_C
  loc_F33477: If Not (var_8C = 1) Then
  loc_F33483:   If Not (var_8C = 2) Then
  loc_F3348F:     If Not (var_8C = 3) Then
  loc_F3349B:       If Not (var_8C = 4) Then
  loc_F334A7:         If Not (var_8C = 5) Then
  loc_F334B3:           If Not (var_8C = 6) Then
  loc_F334BF:             If (var_8C = &H11) Then
  loc_F334C2:             End If
  loc_F334C2:           End If
  loc_F334C2:         End If
  loc_F334C2:       End If
  loc_F334C2:     End If
  loc_F334C2:   End If
  loc_F334CA:   var_88 = CStr(arg_10)
  loc_F334D0: Else
  loc_F334D9:   If Not (var_8C = 7) Then
  loc_F334E5:     If (var_8C = &H87) Then
  loc_F334E8:     End If
  loc_F334EE:     Proc_6_7_F26918(var_AC, arg_10)
  loc_F334F7:     var_88 = CStr(var_AC)
  loc_F33500:   Else
  loc_F33509:     If Not (var_8C = &HA) Then
  loc_F33515:       If Not (var_8C = &HC8) Then
  loc_F33521:         If Not (var_8C = &HCA) Then
  loc_F3352D:           If Not (var_8C = &H81) Then
  loc_F33539:             If Not (var_8C = &H82) Then
  loc_F33545:               If (var_8C = &H312) Then
  loc_F33548:               End If
  loc_F33548:             End If
  loc_F33548:           End If
  loc_F33548:         End If
  loc_F33548:       End If
  loc_F33561:       var_88 = CStr("'" & arg_10 & "'")
  loc_F3356E:     Else
  loc_F33577:       If (var_8C = 0) Then
  loc_F3357D:         var_88 = "NULL"
  loc_F33580:       End If
  loc_F33580:     End If
  loc_F33580:   End If
  loc_F33580: End If
  loc_F33580: Exit Sub
End Sub

Public Sub Proc_154_5_10E3BD4
  'Data Table: 41CB9C
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_88 As Recordset15
  Dim var_FC As String
  Dim var_120 As String
  Dim var_150 As String
  loc_10E3977: var_AC = arg_1C
  loc_10E39F4: Me.Connection15.Execute "Select * From TransIn Where TableName='" & arg_10 & "'", var_C4, -1
  loc_10E3A23: If (var_C8.RecordCount > 0) Then
  loc_10E3A3A:   var_B0 = "Insert Into TransDel(TableName,PK1_Name,PK1_Type,PK1_Value,PK2_Name,PK2_Type,PK2_Value,PK3_Name,PK3_Type,PK3_Value,PK4_Name,PK4_Type,PK4_Value,PK5_Name,PK5_Type,PK5_Value,UName,UEntDt,UAE) " & "VALUES ('"
  loc_10E3A91:   var_FC = var_B0 & arg_10 & "','" & arg_14 & "'," & CStr(arg_18) & "," & Proc_154_4_F33584(arg_18) & ",'" & arg_20 & "'," & CStr(arg_24)
  loc_10E3ACE:   var_120 = var_FC & "," & Proc_154_4_F33584(arg_24, arg_28) & ",'" & arg_2C & "'," & CStr(arg_30) & "," & Proc_154_4_F33584(arg_30, arg_34)
  loc_10E3B1E:   var_150 = var_120 & ",'" & arg_38 & "'," & CStr(arg_3C) & "," & Proc_154_4_F33584(arg_3C, Proc_154_5_10E3BD40) & ",'" & Proc_154_5_10E3BD44 & "'," & CStr(Proc_154_5_10E3BD48)
  loc_10E3B47:   Proc_6_104_ED68A8(var_C4, CVar(var_150 & "," & Proc_154_4_F33584(Proc_154_5_10E3BD48, Proc_154_5_10E3BD4C) & ",'" & MemVar_1F950C8 & "',"), var_1B4, -1)
  loc_10E3B53:   var_AC = ",'A')"
  loc_10E3B63:   Me.Connection15.Execute CStr(var_C8 & var_C4 & var_AC), var_C8, var_AC
  loc_10E3BCB: End If
  loc_10E3BD0: Set var_88 = Nothing
  loc_10E3BD3: Exit Sub
End Sub

Public Sub Proc_154_6_FB140C
  'Data Table: 41CB9C
  Dim var_88 As Recordset15
  Dim var_BC As Fields15
  Dim var_13C As Variant
  Dim var_1BC As Variant
  loc_FB12E3: Me.Connection15.Execute "Select * From Ledger Where V_Type='" & arg_10 & "' and SubCode= '" & arg_14 & "'", var_B8, -1
  loc_FB12EE: Set var_88 = var_BC
  loc_FB1302: ' Referenced from: FB13FE
  loc_FB1311: If Not(var_88.EOF) Then
  loc_FB1338:   var_BC = var_88.Fields
  loc_FB1387:   var_13C = "Insert Into TransDel(TableName,PK1,PK2,UName,UEntDt,UAE) Values ('Ledger','" & var_BC.Item("DocID").Value & "'," & var_88.Fields.Item("V_SNo").Value 
  loc_FB13AA:   Proc_6_104_ED68A8(var_1AC, var_13C & ",'" & CVar(MemVar_1F950C8) & "',", var_1FC)
  loc_FB13B2:   var_1BC = -1 & var_1AC 
  loc_FB13C6:   Me.Connection15.Execute CStr(var_1BC & ",'A')"), var_200, var_BC
  loc_FB13F9:   var_88.MoveNext
  loc_FB13FE:   GoTo loc_FB1302
  loc_FB1401: End If
  loc_FB1406: Set var_88 = Nothing
  loc_FB1409: Exit Sub
End Sub

Public Sub Proc_154_7_13DF2B4
  'Data Table: 41CB9C
  Dim unk_41CBCC As Connection15
  Dim var_8C As Recordset15
  Dim var_B4 As Fields15
  Dim var_B0 As Variant
  Dim var_F8 As String
  Dim var_104 As String
  Dim var_114 As String
  Dim var_17C As String
  Dim var_1E4 As String
  Dim var_1F0 As String
  Dim var_224 As String
  Dim var_234 As String
  Dim var_26C As String
  Dim var_274 As String
  loc_13DE9DC: unk_41CBCC.Execute "SELECT Table_Name,Search_Field,UniqueField,SiteCode,LogSiteCode FROM Table_SearchField WHERE IsNull(Search_Field,'')<>''", var_B0, -1
  loc_13DE9E7: Set var_8C = var_B4
  loc_13DE9F0: ' Referenced from: 13DF2A7
  loc_13DE9FF: If Not(var_8C.EOF) Then
  loc_13DEA14:   var_B4 = var_8C.Fields
  loc_13DEA24:   var_B0 = CVar(var_B4.Item("Table_Name")) 'Address
  loc_13DEA67:   var_F8 = var_B4 & Proc_6_38_E69628(var_B0, "CREATE TRIGGER Tr_") & "_A ON " & Proc_6_38_E69628(CVar(var_8C.Fields.Item("Table_Name")))
  loc_13DEA7C:   var_104 = var_F8 & "  " & "FOR Insert AS " & "DECLARE @Code NVARCHAR(21), @UniqueKey NVARCHAR(max), @UDate DateTime, @SiteCode NVARCHAR(2), @LogSiteCode NVARCHAR(2) "
  loc_13DEA98:   var_114 = var_104 & "IF EXISTS (SELECT * FROM Inserted)      " & "   BEGIN  " & "   Set @UDate = (SELECT GetDate()) " & "   DECLARE Insert_Cursor CURSOR FOR "
  loc_13DEB04:   var_17C = var_114 & "   SELECT [" & Proc_6_38_E69628(CVar(var_8C.Fields.Item("Search_Field"))) & "]," & Proc_6_38_E69628(CVar(var_8C.Fields.Item("UniqueField")))
  loc_13DEB70:   var_1E4 = var_17C & "," & Proc_6_38_E69628(CVar(var_8C.Fields.Item("SiteCode"))) & "," & Proc_6_38_E69628(CVar(var_8C.Fields.Item("LogSiteCode")))
  loc_13DEB85:   var_1F0 = var_1E4 & " FROM Inserted i " & "   OPEN Insert_Cursor " & "   FETCH NEXT FROM Insert_Cursor INTO @Code, @UniqueKey, @SiteCode, @LogSiteCode "
  loc_13DEB9A:   var_224 = var_1F0 & "   WHILE @@FETCH_STATUS = 0 " & "       BEGIN  " & "           IF NOT EXISTS(SELECT * FROM Log_TableRecords WHERE UniqueKey = @UniqueKey AND TableName = '"
  loc_13DEBD7:   var_234 = var_224 & Proc_6_38_E69628(CVar(var_8C.Fields.Item("Table_Name"))) & "' And AED='A' AND UpdateDate =@UDate) " & "               BEGIN "
  loc_13DEC14:   var_26C = var_234 & "                   EXEC Create_LogTableRecords  '" & Proc_6_38_E69628(CVar(var_8C.Fields.Item("Table_Name"))) & "','A',@Code,@UniqueKey,@SiteCode,@LogSiteCode "
  loc_13DEC22:   var_274 = var_26C & "               END " & "           FETCH NEXT FROM Insert_Cursor INTO @Code, @UniqueKey, @SiteCode, @LogSiteCode "
  loc_13DECD6:   unk_41CBCC.Execute var_274 & "       END " & "       CLOSE Insert_Cursor " & "       DEALLOCATE Insert_Cursor " & "   END ", var_B0, -1
  loc_13DECF3:   var_B4 = var_8C.Fields
  loc_13DED03:   var_B0 = CVar(var_B4.Item("Table_Name")) 'Address
  loc_13DED46:   var_F8 = var_B4 & Proc_6_38_E69628(var_B0, "CREATE TRIGGER Tr_") & "_E ON " & Proc_6_38_E69628(CVar(var_8C.Fields.Item("Table_Name")))
  loc_13DED5B:   var_104 = var_F8 & "  " & "FOR Update AS " & "DECLARE @Code NVARCHAR(21), @UniqueKey NVARCHAR(max), @UDate DateTime, @SiteCode NVARCHAR(2), @LogSiteCode NVARCHAR(2) "
  loc_13DED77:   var_114 = var_104 & "IF EXISTS (SELECT * FROM Inserted)      " & "   BEGIN  " & "   Set @UDate = (SELECT GetDate()) " & "   DECLARE Update_Cursor CURSOR FOR "
  loc_13DEDE3:   var_17C = var_114 & "   SELECT [" & Proc_6_38_E69628(CVar(var_8C.Fields.Item("Search_Field"))) & "]," & Proc_6_38_E69628(CVar(var_8C.Fields.Item("UniqueField")))
  loc_13DEE4F:   var_1E4 = var_17C & "," & Proc_6_38_E69628(CVar(var_8C.Fields.Item("SiteCode"))) & "," & Proc_6_38_E69628(CVar(var_8C.Fields.Item("LogSiteCode")))
  loc_13DEE64:   var_1F0 = var_1E4 & " FROM Inserted i " & "   OPEN Update_Cursor " & "   FETCH NEXT FROM Update_Cursor INTO @Code, @UniqueKey, @SiteCode, @LogSiteCode "
  loc_13DEE79:   var_224 = var_1F0 & "   WHILE @@FETCH_STATUS = 0 " & "       BEGIN  " & "           IF NOT EXISTS(SELECT * FROM Log_TableRecords WHERE UniqueKey = @UniqueKey AND TableName = '"
  loc_13DEEB6:   var_234 = var_224 & Proc_6_38_E69628(CVar(var_8C.Fields.Item("Table_Name"))) & "' And AED='E' AND UpdateDate =@UDate) " & "               BEGIN "
  loc_13DEEF3:   var_26C = var_234 & "                   EXEC Create_LogTableRecords  '" & Proc_6_38_E69628(CVar(var_8C.Fields.Item("Table_Name"))) & "','E',@Code,@UniqueKey,@SiteCode,@LogSiteCode "
  loc_13DEF01:   var_274 = var_26C & "               END " & "           FETCH NEXT FROM Update_Cursor INTO @Code, @UniqueKey, @SiteCode, @LogSiteCode "
  loc_13DEFB5:   unk_41CBCC.Execute var_274 & "       END " & "       CLOSE Update_Cursor " & "       DEALLOCATE Update_Cursor " & "   END ", var_B0, -1
  loc_13DEFD2:   var_B4 = var_8C.Fields
  loc_13DEFE2:   var_B0 = CVar(var_B4.Item("Table_Name")) 'Address
  loc_13DF025:   var_F8 = var_B4 & Proc_6_38_E69628(var_B0, "CREATE TRIGGER Tr_") & "_D ON " & Proc_6_38_E69628(CVar(var_8C.Fields.Item("Table_Name")))
  loc_13DF03A:   var_104 = var_F8 & "  " & "FOR Delete AS " & "DECLARE @Code NVARCHAR(21), @UniqueKey NVARCHAR(max), @UDate DateTime, @SiteCode NVARCHAR(2), @LogSiteCode NVARCHAR(2) "
  loc_13DF056:   var_114 = var_104 & "IF EXISTS (SELECT * FROM Deleted) " & "   BEGIN  " & "   Set @UDate = (SELECT GetDate()) " & "   DECLARE Delete_Cursor CURSOR FOR "
  loc_13DF0C2:   var_17C = var_114 & "   SELECT [" & Proc_6_38_E69628(CVar(var_8C.Fields.Item("Search_Field"))) & "]," & Proc_6_38_E69628(CVar(var_8C.Fields.Item("UniqueField")))
  loc_13DF12E:   var_1E4 = var_17C & "," & Proc_6_38_E69628(CVar(var_8C.Fields.Item("SiteCode"))) & "," & Proc_6_38_E69628(CVar(var_8C.Fields.Item("LogSiteCode")))
  loc_13DF143:   var_1F0 = var_1E4 & " FROM Deleted i " & "   OPEN Delete_Cursor " & "   FETCH NEXT FROM Delete_Cursor INTO @Code, @UniqueKey, @SiteCode, @LogSiteCode "
  loc_13DF158:   var_224 = var_1F0 & "   WHILE @@FETCH_STATUS = 0 " & "       BEGIN  " & "           IF NOT EXISTS(SELECT * FROM Log_TableRecords WHERE UniqueKey = @UniqueKey AND TableName = '"
  loc_13DF195:   var_234 = var_224 & Proc_6_38_E69628(CVar(var_8C.Fields.Item("Table_Name"))) & "' And AED='D' AND UpdateDate =@UDate) " & "               BEGIN "
  loc_13DF1D2:   var_26C = var_234 & "                   EXEC Create_LogTableRecords  '" & Proc_6_38_E69628(CVar(var_8C.Fields.Item("Table_Name"))) & "','D',@Code,@UniqueKey,@SiteCode,@LogSiteCode "
  loc_13DF1E0:   var_274 = var_26C & "               END " & "           FETCH NEXT FROM Delete_Cursor INTO @Code, @UniqueKey, @SiteCode, @LogSiteCode "
  loc_13DF294:   unk_41CBCC.Execute var_274 & "       END " & "       CLOSE Delete_Cursor " & "       DEALLOCATE Delete_Cursor " & "   END ", var_B0, -1
  loc_13DF2A2:   var_8C.MoveNext
  loc_13DF2A7:   GoTo loc_13DE9F0
  loc_13DF2AA: End If
  loc_13DF2AF: Set var_8C = Nothing
  loc_13DF2B2: Exit Sub
End Sub

Public Sub Proc_154_8_F65864
  'Data Table: 41CB9C
  Dim unk_41CBCC As Connection15
  Dim var_B0 As String
  Dim var_BC As String
  Dim var_C8 As String
  Dim var_D8 As String
  Dim var_E0 As String
  Dim var_E8 As String
  Dim var_EC As String
  loc_F65790: unk_41CBCC.Execute "IF EXISTS (SELECT * FROM sysobjects WHERE name ='Create_LogTableRecords') " & " Drop Procedure Create_LogTableRecords ", var_A8, -1
  loc_F657A2: var_B0 = "CREATE PROCEDURE dbo.Create_LogTableRecords     @TableName NVARCHAR(128),   @AED NVARCHAR(1),   @SearchKey NVARCHAR(21), @UniqueKey NVARCHAR(max), @SiteCode NVARCHAR(2), @LogSiteCode NVARCHAR(2) AS  " & "   BEGIN    "
  loc_F657B7: var_BC = var_B0 & "       SET NOCOUNT ON;      " & "       DECLARE @Transaction_Id BIGINT;      " & "       DECLARE @SearchField NVARCHAR(128);      "
  loc_F657CC: var_C8 = var_BC & "       DECLARE @UniqueField NVARCHAR(max);      " & "       DECLARE @UpdateDate DATETIME;            " & "       DECLARE @mCreateLogYn BIT ; "
  loc_F657E8: var_D8 = var_C8 & "       SET @mCreateLogYn=1 " & "       IF (@mCreateLogYn=1) " & "       Begin " & "           SET @Transaction_Id=(SELECT transaction_id FROM sys.dm_tran_current_transaction)   "
  loc_F657F6: var_E0 = var_D8 & "           SET @SearchField=(SELECT Search_Field FROM Table_SearchField WHERE TABLE_NAME =@TableName)   " & "           SET @UniqueField=(SELECT UniqueField FROM Table_SearchField WHERE TABLE_NAME =@TableName)    "
  loc_F65804: var_E8 = var_E0 & "           SET @UpdateDate=(SELECT GetDate())               " & "           INSERT INTO Log_TableRecords            "
  loc_F6580B: var_EC = var_E8 & "           (Transaction_Id,SearchKey,AED,UpdateDate,TableName,Site,Site_Code,LogSite_Code,UploadDate,SearchField, UniqueKey, UniqueField)    VALUES (@Transaction_Id,@searchkey,@aed,@updatedate,@tablename,'',@SiteCode,@LogSiteCode,Null,@searchfield,@UniqueKey,@UniqueField)    "
  loc_F65857: unk_41CBCC.Execute var_EC & "       end " & "   END  ", var_A8, -1
  loc_F65862: Exit Sub
End Sub
