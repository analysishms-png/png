
Public Sub Proc_183_0_127A384
  'Data Table: 429190
  Dim var_98 As String
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_D0 As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_108 As Variant
  Dim var_10C As Variant
  Dim var_120 As Variant
  Dim var_104 As Variant
  Dim var_130 As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_90 As Integer
  Dim var_1CC As Fields15
  Dim var_1D0 As Field20
  Dim var_1B0 As Variant
  loc_1279E50: var_D0 = CVar("SELECT COUNT(*) FROM SUBGROUPCURRBAL WHERE LogSite_Code='" & MemVar_1F95078 & "' AND SubCode='" & arg_10 & "' AND V_Date=") 'String
  loc_1279E5E: Proc_183_7_EB17D4(var_C0, arg_20, var_D0, var_104, -1)
  loc_1279E71: Me.Connection15.Execute CStr(var_108 & var_C0), var_10C, 0
  loc_1279E79: var_120 = var_108.Fields
  loc_1279E81:  = var_10C.Item(var_130)
  loc_1279E89:  = var_120.Value
  loc_1279EBA: If (var_130 <= 0) Then
  loc_1279EC0:   var_B0 = arg_20
  loc_1279EC8:   Proc_183_7_EB17D4(var_C0)
  loc_1279EF6:   var_D0 = CVar("INSERT INTO SUBGROUPCURRBAL (LogSite_Code,SubCode,V_Date,GroupCode,Curr_Bal) VALUES ('" & MemVar_1F95078 & "','" & arg_10 & "',") 'String
  loc_1279F05:   var_104 = var_D0 & var_C0 & ",'" 
  loc_1279F0F:   var_130 = var_104 & CVar(arg_1C) 
  loc_1279F23:   var_160 = CVar((arg_18 - arg_14)) 'Double
  loc_1279F27:   var_170 = var_130 & "'," & var_160 
  loc_1279F30:   var_190 = var_170 & ")" 
  loc_1279F3B:   Me.Connection15.Execute CStr(var_190), var_1B0, -1
  loc_1279F66: Else
  loc_1279F71:   Proc_183_7_EB17D4(var_C0, arg_20)
  loc_1279F8F:   var_98 = CStr((arg_18 - arg_14))
  loc_1279F93:   var_9C = "Update SubGroupCURRBAL Set Curr_Bal=Curr_Bal+" & "INSERT INTO SUBGROUPCURRBAL (LogSite_Code,SubCode,V_Date,GroupCode,Curr_Bal) VALUES ('" & MemVar_1F95078
  loc_1279F9A:   var_A0 = "INSERT INTO SUBGROUPCURRBAL (LogSite_Code,SubCode,V_Date,GroupCode,Curr_Bal) VALUES ('" & MemVar_1F95078 & "','" & " Where LogSite_Code='"
  loc_1279FC7:   Me.Connection15.Execute CStr(CVar(var_A0 & MemVar_1F95078 & "' AND SubCode='" & arg_10 & "' AND V_Date=") & var_C0), var_104, -1
  loc_1279FEB: End If
  loc_127A00C: Me.Connection15.Execute "SELECT MAINGRCODE FROM ACGROUP Where GroupCode='" & arg_1C & "' AND AliasYN='N'", var_C0, -1
  loc_127A017: Set var_88 = var_108
  loc_127A03B: If (var_88.RecordCount > 0) Then
  loc_127A04D:   var_108 = var_88.Fields
  loc_127A05D:   var_C0 = CVar(var_108.Item("MainGrCode")) 'Address
  loc_127A066:   var_94 = Proc_183_2_E5AE94(var_C0, var_108, var_108)
  loc_127A084:   For var_1C4 = 1 To CInt((CDbl(Len(var_94)) / CDbl(3))): var_8E = var_1C4 'Integer
  loc_127A0AB:     Me.Connection15.Execute "SELECT * FROM ACGROUP Where MAINGRCODE='" & var_94 & "' AND AliasYN='N'", var_C0, -1
  loc_127A0B6:     Set var_88 = var_108
  loc_127A0C6:     ' Referenced from: 127A36E
  loc_127A0D5:     If Not(var_88.EOF) Then
  loc_127A127:       var_C0 = var_88.Fields.Item("GroupCode").Value
  loc_127A138:       var_104 = CVar("SELECT COUNT(*) FROM ACGROUPCURRBAL WHERE LogSite_Code='" & MemVar_1F95078 & "' AND GROUPCode='") & var_C0 & "' AND V_Date=" 
  loc_127A147:       Proc_183_7_EB17D4(var_130, arg_20, var_104, var_170, -1, var_120, var_1CC)
  loc_127A15A:       Me.Connection15.Execute CStr(0 & var_130), var_1D0, var_190
  loc_127A162:       var_108 = var_120.Fields
  loc_127A16A:       var_90 = var_1CC.Item(1)
  loc_127A172:        = var_1D0.Value
  loc_127A1A9:       If (var_190 <= 0) Then
  loc_127A1AF:         var_B0 = arg_20
  loc_127A1B7:         Proc_183_7_EB17D4(var_C0)
  loc_127A1DE:         var_130 = var_88.Fields.Item("GroupCode").Value
  loc_127A204:         var_E0 = CVar("INSERT INTO ACGROUPCURRBAL (LogSite_Code,V_Date,GroupCode,Curr_Bal) VALUES ('" & MemVar_1F95078 & "',") & var_C0 
  loc_127A21D:         var_170 = var_E0 & ",'" & var_130 & "'," 
  loc_127A228:         var_160 = CVar((arg_18 - arg_14)) 'Double
  loc_127A240:         Me.Connection15.Execute CStr(var_170 & 0 & ")"), var_1E0, -1
  loc_127A26F:       Else
  loc_127A2A1:         Proc_183_7_EB17D4(var_130, arg_20)
  loc_127A2BF:         var_98 = CStr((arg_18 - arg_14))
  loc_127A2C3:         var_9C = "Update ACGroupCURRBAL Set Curr_Bal=Curr_Bal+" & "INSERT INTO ACGROUPCURRBAL (LogSite_Code,V_Date,GroupCode,Curr_Bal) VALUES ('" & MemVar_1F95078
  loc_127A2DE:         var_E0 = CVar(CStr(var_170 & 0 & ")") & " Where LogSite_Code='" & MemVar_1F95078 & "' AND GROUPCode='") & var_88.Fields.Item("GroupCode").Value 
  loc_127A2F9:         Me.Connection15.Execute CStr(var_E0 & "' AND V_Date=" & var_130), var_170, -1
  loc_127A325:       End If
  loc_127A32F:       var_C0 = CVar((Len(var_94) - 3)) 'Long
  loc_127A360:       If (Len(CStr(Mid(var_94, 1, var_88.Fields.Item("GroupCode").Value))) = 0) Then
  loc_127A363:         GoTo loc_127A371
  loc_127A366:       End If
  loc_127A369:       var_88.MoveNext
  loc_127A36E:       GoTo loc_127A0C6
  loc_127A371:       ' Referenced from: 127A363
  loc_127A371:     End If
  loc_127A374:   Next var_1C4 'Integer
  loc_127A379: End If
  loc_127A37E: Set var_88 = Nothing
  loc_127A381: Exit Sub
End Sub

Public Sub Proc_183_1_F5BEA0
  'Data Table: 429190
  Dim var_98 As CommandButton
  Dim var_CC As Variant
  loc_F5BD84: On Error Resume Next
  loc_F5BDA3: For var_94 = 0 To CLng((Form.Count - 1)): var_88 = var_94 'Long
  loc_F5BDCA:   CheckTypeVar
  loc_F5BDED:   CheckTypeVar
  loc_F5BE11:   CheckTypeVar
  loc_F5BE28:   If (var_88 Or )) Then
  loc_F5BE30:     var_CC = CVar(arg_10) 'String
  loc_F5BE41:     var_98 = Me.Me.Me.Form.Controls.Controls.Controls.Controls
  loc_F5BE53:     ).BackColor = var_88
  loc_F5BE62:     var_CC = CVar(arg_14) 'String
  loc_F5BE73:     var_98 = Form.Controls
  loc_F5BE85:     ).ForeColor = var_88
  loc_F5BE8F:   End If
  loc_F5BE96: Next var_94 'Long
  loc_F5BE9D: Exit Sub
  loc_F5BE9E: If  Then Exit Sub
  loc_F5BE9E: End If
End Sub

Public Sub Proc_183_2_E5AE94(arg_C) 'E5AE94
  'Data Table: 429190
  loc_E5AE84: var_88 = CStr(IIf(IsNull(arg_C), vbNullString, arg_C))
  loc_E5AE90: Exit Sub
End Sub

Public Sub Proc_183_3_E7DD58
  'Data Table: 429190
  loc_E7DD44: var_94 = IIf(IsNull(arg_10) Or (arg_10 = vbNullString), 0, arg_10) 'Variant
  loc_E7DD51: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_183_4_EAC738
  'Data Table: 429190
  loc_EAC720: var_94 = Format(IIf(IsNull(arg_10) Or (arg_10 = vbNullString), 0, arg_10), "0.00") 'Variant
  loc_EAC731: Result = arg_10: Exit Sub
  loc_EAC735: If 1 Then Exit Sub
  loc_EAC735: End If
End Sub

Public Sub Proc_183_5_EF3F20
  'Data Table: 429190
  loc_EF3E99: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString) Or (arg_10 = 0)) Then
  loc_EF3EA1:   var_94 = vbNullString 'Variant
  loc_EF3EA8: Else
  loc_EF3F08:   var_94 = Format(IIf(IsNull(arg_10) Or (arg_10 = vbNullString), 0, arg_10), "0.00") 'Variant
  loc_EF3F19: End If
  loc_EF3F19: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_183_6_EA3B94(arg_C) 'EA3B94
  'Data Table: 429190
  loc_EA3B91: Result CSng(IIf((Trim(arg_C) = vbNullString) Or (IsNumeric(arg_C) = 0), 0, CVar(Val(CStr(arg_C))))) End Sub 'Double
End Sub

Public Sub Proc_183_7_EB17D4
  'Data Table: 429190
  Dim var_104 As String
  loc_EB1771: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString)) Then
  loc_EB1779:   var_94 = "Null" 'Variant
  loc_EB1780: Else
  loc_EB1780:   var_104 = "'"
  loc_EB17BE:   var_94 = 1 & Format(CDate(CDate(arg_10)), "dd/MMM/yyyy") & "'" 'Variant
  loc_EB17CD: End If
  loc_EB17CD: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_183_8_EB1634
  'Data Table: 429190
  Dim var_104 As String
  loc_EB15D1: If CBool(IsNull(arg_10) Or (arg_10 = vbNullString)) Then
  loc_EB15D9:   var_94 = "Null" 'Variant
  loc_EB15E0: Else
  loc_EB15E0:   var_104 = "'"
  loc_EB161E:   var_94 = 1 & Format(CDate(CDate(arg_10)), "dd/MMM/yyyy hh:nn:ss") & "'" 'Variant
  loc_EB162D: End If
  loc_EB162D: Result = arg_10: Exit Sub
  loc_EB1631: 1 = var_101
End Sub

Public Sub Proc_183_9_EAB2F0
  'Data Table: 429190
  Dim var_DC As String
  loc_EAB276: var_94 = arg_10 'Variant
  loc_EAB29A: If CBool(IsNull(var_94) Or (var_94 = Null)) Then
  loc_EAB2A2:   var_94 = "Null" 'Variant
  loc_EAB2A6:   Result = arg_10: Exit Sub
  loc_EAB2AA: End If
  loc_EAB2CE: var_DC = Replace(CStr(var_94), "'", "''", 1, -1, 0)
  loc_EAB2DC: var_94 = CVar("'" & var_DC & "'") 'Variant
  loc_EAB2E9: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_183_10_1499E94(arg_C, arg_10, arg_14, arg_18) '1499E94
  'Data Table: 429190
  Dim var_D0 As Long
  Dim var_100 As String
  Dim var_E0 As Variant
  Dim var_120 As String
  Dim var_130 As Variant
  Dim var_A8 As String
  Dim var_110 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_26C As Variant
  Dim var_28C As Variant
  Dim var_2AC As Variant
  Dim var_2CC As Variant
  Dim var_2EC As Variant
  Dim var_30C As Variant
  Dim var_190 As String
  loc_149925C: On Error Goto loc_1499E58
  loc_1499265: If (arg_10 = 1) Then
  loc_149926E:   Call 0.Method_arg_7C (var_CC)
  loc_1499276:   var_D0 = var_CC
  loc_1499282:   If (var_D0 = &H10C) Then
  loc_14992A6:     MsgBox("Please Set 132 Column Paper in Your Printer on 12 cpi & Put it On", &H40, "Paper Setting", var_130, var_150)
  loc_14992B9:   Else
  loc_14992C2:     If (var_D0 = &H107) Then
  loc_14992E6:       MsgBox("Please Set 80 Column Paper in Your Printer on 12 cpi & Put it On", &H40, "Paper Setting", var_130, var_150)
  loc_14992F9:     Else
  loc_1499302:       If (var_D0 = 9) Then
  loc_1499326:         MsgBox("Please Set A4 Paper in Your Printer on 12 cpi & Put it On", &H40, "Paper Setting", var_130, var_150)
  loc_1499339:       Else
  loc_149933F:         Call 0.Method_arg_7C (var_CC)
  loc_1499371:         var_130 = ("Paper Size No. is " + Str(CVar(var_CC)))
  loc_1499375:         MsgBox(var_130, &H40, "Paper Setting", var_160, var_180)
  loc_1499389:       End If
  loc_1499389:     End If
  loc_1499389:   End If
  loc_149938D:   var_BE = CByte(0) 'Byte
  loc_149939D:   Call 0.Method_Proc_183_10_1499E948 ("C:\REPTMP", var_182)
  loc_14993A8:   If (var_182 = 0) Then
  loc_14993B7:     Call 0.Method_arg_74 ("C:\REPTMP", var_188)
  loc_14993BF:     ' Referenced from: 1499566
  loc_14993BF:   End If
  loc_14993C1:   If &HFF Then
  loc_14993CD:     If (CInt(var_BE) >= &H64) Then
  loc_14993DB:       For var_18C = CByte(1) To CByte(&H64): var_BE = var_18C 'Byte
  loc_1499404:         var_130 = ("C:\REPTMP\REP" + Trim(Str(var_BE)))
  loc_1499439:         var_A8 = var_190
  loc_1499444:         var_110 = (Trim(CStr(var_130)) + ".TXT")
  loc_1499452:         Call 0.Method_Proc_183_10_1499E944 (CStr(Trim(Str(var_BE))), var_182, var_A8)
  loc_1499468:         If var_182 Then
  loc_149948A:           var_A8 = var_190
  loc_1499495:           var_110 = (Trim(var_A8) + ".TXT")
  loc_14994A3:           Call 0.Method_arg_5C (CStr(Trim(Str(var_BE))), 0)
  loc_14994B6:         End If
  loc_14994B9:       Next var_18C 'Byte
  loc_14994C3:       var_BE = CByte(1) 'Byte
  loc_14994C7:     End If
  loc_14994EA:     var_130 = ("C:\REPTMP\REP" + Trim(Str(var_BE)))
  loc_149951F:     var_A8 = var_190
  loc_149952A:     var_110 = (Trim(CStr(var_130)) + ".TXT")
  loc_1499538:     Call 0.Method_Proc_183_10_1499E944 (CStr(Trim(Str(var_BE))), var_182)
  loc_149954E:     If var_182 Then
  loc_149955C:       var_BE = CByte((CInt(var_BE) + 1)) 'Byte
  loc_1499563:     Else
  loc_1499566:     Else
  loc_1499566:       GoTo loc_14993BF
  loc_1499569:     End If
  loc_1499569:   End If
  loc_1499586:   var_A8 = var_190
  loc_1499591:   var_110 = (Trim(var_A8) + ".TXT")
  loc_149959F:   Call 0.Method_arg_DC (var_188, CStr(Trim(Str(var_BE))))
  loc_14995A7:   Call 0.Method_arg_3C (var_A8)
  loc_14995C3:   If (arg_18 = &HFF) Then
  loc_14995D1:     Call 0.Method_arg_DC (var_188)
  loc_14995D9:     Call 0.Method_arg_24 (&HA)
  loc_14995E4:   Else
  loc_14995EF:     Call 0.Method_arg_DC (var_188)
  loc_14995F7:     Call 0.Method_arg_24 (8)
  loc_14995FF:   End If
  loc_1499607:   Call 0.Method_arg_DC (var_188)
  loc_149960F:   Call 0.Method_arg_64 (&H3C)
  loc_1499622:   Call 0.Method_arg_DC (var_188)
  loc_149962A:   Call 0.Method_arg_2C (1)
  loc_1499640:   Call 0.Method_arg_90 (var_188, var_CC)
  loc_1499648:   Call 0.Method_arg_24 (var_C6)
  loc_1499654:   For var_198 =  To CInt(var_CC): 1 = var_198 'Integer
  loc_149966A:     Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1499672:     Call 0.Method_arg_20 (var_19C)
  loc_149967A:     Call 0.Method_arg_30 (var_190)
  loc_1499690:     var_1AC = Ucase(CVar(var_190)) 'Variant
  loc_14996C0:     If (var_1AC = Ucase("comp_name")) Then
  loc_14996DD:       var_110 = (Chr(&H1B) + "W1")
  loc_14996E9:       var_130 = Chr(&H1B)
  loc_14996F1:       var_150 = (Ucase("comp_name") + var_130)
  loc_14996FA:       var_160 = ("Paper Setting" + "W1")
  loc_149970E:       var_1BC = (var_160 + Chr(&H1B))
  loc_1499717:       var_1CC = (var_1BC + "E")
  loc_149972B:       var_1EC = (var_1CC + Chr(&H1B))
  loc_1499734:       var_1FC = (var_1EC + "G")
  loc_149973E:       var_20C = (var_1FC + CVar(MemVar_1F95130))
  loc_1499752:       var_22C = (var_20C + Chr(&H1B))
  loc_149975B:       var_24C = (var_22C + "H")
  loc_149976F:       var_26C = (var_24C + Chr(&H1B))
  loc_1499778:       var_28C = (var_26C + "F")
  loc_149978C:       var_2AC = (var_28C + Chr(&H1B))
  loc_1499795:       var_2CC = (var_2AC + "W0")
  loc_14997A9:       var_2EC = (var_2CC + Chr(&H1B))
  loc_14997B2:       var_30C = (var_2EC + "W0")
  loc_14997D4:       Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_14997DC:       Call 0.Method_arg_20 (var_19C)
  loc_14997E4:       Call 0.Method_arg_38 (CStr("'" & var_30C & "'"))
  loc_149982D:     Else
  loc_149984F:       If (var_1AC = Ucase("comp_add1")) Then
  loc_1499870:         Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1499878:         Call 0.Method_arg_20 (var_19C)
  loc_1499880:         Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1499896:       Else
  loc_14998B8:         If (var_1AC = Ucase("comp_pin")) Then
  loc_14998D9:           Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_14998E1:           Call 0.Method_arg_20 (var_19C)
  loc_14998E9:           Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_14998FF:         Else
  loc_1499921:           If (var_1AC = Ucase("comp_GSTIN")) Then
  loc_149992B:             var_190 = "'" & MemVar_1F95154
  loc_1499942:             Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_149994A:             Call 0.Method_arg_20 (var_19C)
  loc_1499952:             Call 0.Method_arg_38 (var_190 & "'")
  loc_1499965:           End If
  loc_1499965:         End If
  loc_1499965:       End If
  loc_1499965:     End If
  loc_1499968:   Next var_198 'Integer
  loc_1499975:   Call 0.Method_arg_D8 (False)
  loc_1499997:   var_A8 = var_190
  loc_14999B1:   var_110 = (Trim(var_A8) + ".TXT")
  loc_14999BF:   Call 0.Method_arg_7C (CStr(Ucase("comp_GSTIN")), 8, 0)
  loc_14999CA:   Set var_C4 = var_188
  loc_14999F5:   Call 0.Method_arg_38 (CStr(Chr(&HC)), 0)
  loc_1499A03:   Call 0.Method_Proc_183_10_1499E94C (var_188)
  loc_1499A20:   Call 0.Method_arg_7C ("C:\REPTMP\REPPRINT.BAT", 2, &HFF)
  loc_1499A2B:   Set var_C4 = var_188
  loc_1499A3A:   var_190 = "TYPE &H23>" & Me(12)
  loc_1499A40:   Call 0.Method_arg_38 (var_190, 0)
  loc_1499A4B:   Call 0.Method_Proc_183_10_1499E94C (var_188)
  loc_1499A5A:   If (Me(16) = "Y") Then
  loc_1499A69:     Call 0.Method_Proc_183_10_1499E944 ("C:\REPTMP\REPPRINT.PIF")
  loc_1499A74:     If (var_182 = 0) Then
  loc_1499A90:       MsgBox("C:\REPTMP\REPPRINT.PIF File Not Exist", 0, Ucase("comp_GSTIN"), var_130, "Paper Setting")
  loc_1499AA0:       Exit Sub
  loc_1499AA1:     End If
  loc_1499ABE:     var_A8 = var_190
  loc_1499ACE:     var_110 = ("C:\REPTMP\REPPRINT.PIF " + Trim(var_A8))
  loc_1499AD7:     var_130 = (Ucase("comp_GSTIN") + ".TXT")
  loc_1499AE4:     var_B8 = CVar(Shell(var_130, 0)) 'Variant
  loc_1499AF7:   Else
  loc_1499B03:     Call 0.Method_Proc_183_10_1499E944 ("C:\REPTMP\REPPRINT.BAT", var_182)
  loc_1499B0E:     If (var_182 = 0) Then
  loc_1499B2A:       MsgBox("C:\REPTMP\REPPRINT.BAT File Not Exist", 0, Ucase("comp_GSTIN"), var_130, "Paper Setting")
  loc_1499B3A:       Exit Sub
  loc_1499B3B:     End If
  loc_1499B58:     var_A8 = var_190
  loc_1499B60:     var_100 = "C:\REPTMP\REPPRINT.BAT "
  loc_1499B68:     var_110 = (var_100 + Trim(var_A8))
  loc_1499B6C:     var_120 = ".TXT"
  loc_1499B71:     var_130 = (Ucase("comp_GSTIN") + var_120)
  loc_1499B7E:     var_B8 = CVar(Shell(var_130, 0)) 'Variant
  loc_1499B8E:   End If
  loc_1499B91: Else
  loc_1499B98:   var_190 = "* " & arg_14
  loc_1499BA3:   Proc_183_13_F04C74(var_190 & " * ")
  loc_1499BBD:   Call 0.Method_arg_90 (var_188, var_CC, var_C6)
  loc_1499BC5:   Call 0.Method_arg_24 (1)
  loc_1499BD1:   For var_350 =  To CInt(var_CC):   var_182 = var_350 'Integer
  loc_1499BE7:     Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1499BEF:     Call 0.Method_arg_20 (var_19C)
  loc_1499BF7:     Call 0.Method_arg_30 (var_190)
  loc_1499C0D:     var_360 = Ucase(CVar(var_190)) 'Variant
  loc_1499C3D:     If (var_360 = Ucase("comp_name")) Then
  loc_1499C5E:       Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1499C66:       Call 0.Method_arg_20 (var_19C)
  loc_1499C6E:       Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_1499C84:     Else
  loc_1499CA6:       If (var_360 = Ucase("comp_add1")) Then
  loc_1499CC7:         Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1499CCF:         Call 0.Method_arg_20 (var_19C)
  loc_1499CD7:         Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1499CED:       Else
  loc_1499D0F:         If (var_360 = Ucase("comp_pin")) Then
  loc_1499D30:           Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1499D38:           Call 0.Method_arg_20 (var_19C)
  loc_1499D40:           Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_1499D56:         Else
  loc_1499D67:           var_110 = Ucase("comp_GSTIN")
  loc_1499D78:           If (var_360 = var_110) Then
  loc_1499D99:             Call 0.Method_arg_90 (var_188, CLng(var_C6))
  loc_1499DA1:             Call 0.Method_arg_20 (var_19C)
  loc_1499DA9:             Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1499DBC:           End If
  loc_1499DBC:         End If
  loc_1499DBC:       End If
  loc_1499DBC:     End If
  loc_1499DBF:   Next var_350 'Integer
  loc_1499DCA:   If (arg_10 = 0) Then
  loc_1499DD4:     var_190 = "* " & arg_14
  loc_1499DE4:     Call 0.Method_arg_54 (var_190 & " *")
  loc_1499DF9:     FaRepView.RepTitle = arg_14
  loc_1499E01:     var_E0 = CVar(arg_C) 'Address
  loc_1499E11:     FaRepView.Rep_Set = var_E0
  loc_1499E1C:   Else
  loc_1499E33:     Call 0.Method_Me8 (var_E0, var_100, var_120)
  loc_1499E38:   End If
  loc_1499E38: End If
  loc_1499E3D: Set var_88 = Nothing
  loc_1499E45: IStAdFunc
  loc_1499E4B: var_B8 = Nothing 'Address
  loc_1499E54: Set var_BC = Nothing
  loc_1499E57: Exit Sub
  loc_1499E58: ' Referenced from: 149925C
  loc_1499E60: Set var_188 = Err()
  loc_1499E66: Call 0.Method_arg_2C (var_190, Nothing)
  loc_1499E7F: MsgBox(CVar(var_190), &H10, var_110, var_130, "Paper Setting")
  loc_1499E92: Exit Sub
End Sub

Public Sub Proc_183_11_113DA88
  'Data Table: 429190
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim arg_18 As Integer
  loc_113D723: If (|÷B.rows < 1) Then
  loc_113D726:   Exit Sub
  loc_113D727: End If
  loc_113D73B: If (Me.RecordCount <= 0) Then
  loc_113D747:   Me.TEXT = vbNullString
  loc_113D74B:   Exit Sub
  loc_113D74C: End If
  loc_113D761: If ((CLng(arg_18) = &H1B) Or (CLng(arg_18) = &HD)) Then
  loc_113D764:   Exit Sub
  loc_113D765: End If
  loc_113D76F: If (CLng(arg_18) = 8) Then
  loc_113D789:   If (Len(Me.SelText) > 1) Then
  loc_113D79D:     var_E0 = (Len(Me.SelText) - 1)
  loc_113D7A5:     Me.SelLength = var_E0
  loc_113D7B5:     var_8C = CStr(Me.SelText)
  loc_113D7BE:   Else
  loc_113D7C7:     Me.TEXT = vbNullString
  loc_113D7CE:     Call |÷B.SetFocus
  loc_113D7DC:     Me.Visible = False
  loc_113D7E0:     Exit Sub
  loc_113D7E1:   End If
  loc_113D7E4: Else
  loc_113D7FB:   var_E0 = (Me.SelText + Chr(CLng(arg_18)))
  loc_113D800:   var_8C = CStr(var_E0)
  loc_113D80C: End If
  loc_113D829: var_8C = Replace(var_8C, "'", "''", 1, -1, 0)
  loc_113D82F: Me.Recordset15.MoveFirst
  loc_113D86C: If (Me.Recordset15.Fields.Item(CVar(arg_1C)).Type = 3) Then
  loc_113D8AF:   Me.Recordset15.Find "[" & arg_1C & "] >=" & CStr(Val(var_8C)) & vbNullString, 0, 1
  loc_113D8C4: Else
  loc_113D8F4:   Me.Recordset15.Find "[" & arg_1C & "] like '" & var_8C & "*'", 0, 1
  loc_113D904: End If
  loc_113D906: arg_18 = 0
  loc_113D932: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_113D93F:   |÷B.CellBackColor = CVar(arg_24)
  loc_113D959:   |÷B.Row = CVar(Me.Recordset15.AbsolutePosition)
  loc_113D967:   |÷B.CellBackColor = CVar(arg_20)
  loc_113D99A:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(arg_1C)).Value
  loc_113D9B4:   Me.SelLength = CVar(Len(var_8C))
  loc_113D9C8:   var_E0 = (|÷B.CellLeft + |÷B.left)
  loc_113D9D0:   Me.left = var_E0
  loc_113D9ED:   var_E0 = (|÷B.CellTop + |÷B.top)
  loc_113D9F5:   Me.top = var_E0
  loc_113DA14:   If (Me.Visible = False) Then
  loc_113DA1E:     Me.Visible = True
  loc_113DA22:     var_9C = 0
  loc_113DA2B:     Call Me.ZOrder
  loc_113DA34:     Call Me.SetFocus
  loc_113DA46:     Me.BackColor = |÷B.CellBackColor
  loc_113DA59:     Me.ForeColor = |÷B.CellForeColor
  loc_113DA6C:     Me.width = |÷B.CellWidth
  loc_113DA7F:     Me.height = |÷B.CellHeight
  loc_113DA86:   End If
  loc_113DA86: End If
  loc_113DA86: Exit Sub
End Sub

Public Sub Proc_183_12_E7AF74(arg_C) 'E7AF74
  'Data Table: 429190
  Dim var_86 As Integer
  loc_E7AF0E: var_86 = 0
  loc_E7AF68: If ((((((((CLng(arg_C) = &H21) Or (CLng(arg_C) = &H22)) Or (CLng(arg_C) = &H24)) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H26)) Or (CLng(arg_C) = &H28)) Or (CLng(arg_C) = &H25)) Or (CLng(arg_C) = &H27)) Then
  loc_E7AF6D:   var_86 = &HFF
  loc_E7AF70: End If
  loc_E7AF70: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_183_13_F04C74(arg_C) 'F04C74
  'Data Table: 429190
  Dim var_BC As Variant
  Dim var_8C As CommandButton
  loc_F04BC2: var_BC = (Me.Global.Forms.Count - 1)
  loc_F04BCE: For var_C0 = CByte(0) To CByte(var_BC): var_86 = var_C0 'Byte
  loc_F04BE4:   var_8C = Me.Global.Forms
  loc_F04BF6:   VarLateMemLdRfVar
  loc_F04C2A:   If (Ucase()) = Ucase(arg_C)) Then
  loc_F04C5B:     Me.Me.var_8C.Forms.Unload )
  loc_F04C6A:   End If
  loc_F04C6D: Next var_C0 'Byte
  loc_F04C73: Exit Sub
End Sub

Public Sub Proc_183_14_EAE150(arg_C, arg_10) 'EAE150
  'Data Table: 429190
  Dim var_F8 As Variant
  Dim var_118 As Variant
  loc_EAE0F1: arg_C = CStr(Mid(arg_C, 1, arg_10))
  loc_EAE128: var_F8 = (CVar(arg_10) - Len(RTrim(arg_C)))
  loc_EAE139: var_118 = (RTrim(arg_C) + Space(CLng(var_F8)))
  loc_EAE13E: var_88 = CStr(var_118)
  loc_EAE14C: Exit Sub
End Sub

Public Sub Proc_183_15_EAD490(arg_C, arg_10) 'EAD490
  'Data Table: 429190
  Dim var_F8 As Variant
  Dim var_118 As Variant
  loc_EAD431: arg_C = CStr(Mid(arg_C, 1, arg_10))
  loc_EAD468: var_F8 = (CVar(arg_10) - Len(Trim(arg_C)))
  loc_EAD479: var_118 = (Trim(arg_C) + Space(CLng(var_F8)))
  loc_EAD47E: var_88 = CStr(var_118)
  loc_EAD48C: Exit Sub
End Sub

Public Sub Proc_183_16_EAF86C(arg_C, arg_10) 'EAF86C
  'Data Table: 429190
  Dim var_D8 As Variant
  Dim var_118 As Variant
  loc_EAF80D: arg_C = CStr(Mid(arg_C, 1, arg_10))
  loc_EAF831: var_D8 = (CVar(arg_10) - Len(Trim(arg_C)))
  loc_EAF855: var_118 = (Space(CLng(var_D8)) + Trim(arg_C))
  loc_EAF85A: var_88 = CStr(var_118)
  loc_EAF868: Exit Sub
End Sub

Public Sub Proc_183_17_F6B4E8(arg_C, arg_10) 'F6B4E8
  'Data Table: 429190
  Dim var_D4 As String
  Dim var_8E As Integer
  loc_F6B3C0: On Error Goto loc_F6B4AB
  loc_F6B3D1: If Not(IsMissing(arg_10)) Then
  loc_F6B3F2:   If CBool(Trim(arg_10) <> vbNullString) Then
  loc_F6B3FC:     var_D4 = "Provider=Microsoft.Jet.OLEDB.4.0;Jet OLEDB:Database Password=" & arg_10
  loc_F6B414:     Call 0.Method_arg_24 (CVar(var_D4 & ";Data Source=" & arg_C))
  loc_F6B426:   Else
  loc_F6B437:     Call 0.Method_arg_24 (CVar("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & arg_C))
  loc_F6B43F:   End If
  loc_F6B442: Else
  loc_F6B453:   Call 0.Method_arg_24 (CVar("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & arg_C))
  loc_F6B45B: End If
  loc_F6B466: Call 0.Method_arg_38 (Me(4))
  loc_F6B477: Set var_DC = var_88
  loc_F6B483: Call 0.Method_arg_1E0 (var_DC)
  loc_F6B48E: Set var_88 = var_DC
  loc_F6B494: var_8E = var_DE
  loc_F6B49F: Set var_8C = Nothing
  loc_F6B4A7: Set var_88 = Nothing
  loc_F6B4AA: Exit Sub
  loc_F6B4AB: ' Referenced from: F6B3C0
  loc_F6B4B3: Set var_DC = Err()
  loc_F6B4B9: Call 0.Method_arg_2C (var_D4, var_8E)
  loc_F6B4D2: MsgBox(CVar(var_D4), &H40, var_D0, var_F0, var_110)
  loc_F6B4E5: Exit Sub
End Sub

Public Sub Proc_183_18_FD45C4
  'Data Table: 429190
  Dim var_88 As Recordset
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_90 As TableDef
  Dim var_94 As Field
  loc_FD4428: Me.Database.OpenRecordset "select * from " & arg_10, var_A8, var_B8, var_C8
  loc_FD4430: Set var_88 = var_CC
  loc_FD445A: For var_D2 = 0 To (var_88.Fields.Count - 1): var_8A = var_D2 'Integer
  loc_FD449C:   var_B8 = arg_14
  loc_FD44BE:   If (Ucase(CVar(var_88.Fields.Item(CVar(var_8A)).Name)) = Ucase(var_B8)) Then
  loc_FD44C1:     GoTo loc_FD45BA
  loc_FD44C4:   End If
  loc_FD44C7: Next var_D2 'Integer
  loc_FD44D1: Set var_88 = Nothing
  loc_FD44E4: var_CC = Me.Database.TableDefs
  loc_FD44F4: Set var_90 = var_CC.Item(CVar(arg_10))
  loc_FD450F: var_90.CreateField CVar(arg_14), var_B8, var_C8
  loc_FD4517: Set var_94 = var_CC
  loc_FD4524: var_94.Type = CInt(arg_18)
  loc_FD4537: If (arg_18 = 10) Then
  loc_FD4541:   var_94.Size = CLng(arg_1C)
  loc_FD4554:   If Not(IsMissing(arg_24)) Then
  loc_FD455D:     var_94.AllowZeroLength = arg_24
  loc_FD4562:   End If
  loc_FD4562: End If
  loc_FD456B: If Not(IsMissing(arg_28)) Then
  loc_FD4578:   var_94.DefaultValue = arg_28
  loc_FD457D: End If
  loc_FD458B: If Not(IsMissing(arg_20)) Then
  loc_FD4594:   var_94.Required = arg_20
  loc_FD4599: End If
  loc_FD45AE: var_90.Fields.Append var_94
  loc_FD45BA: ' Referenced from: FD44C1
  loc_FD45BF: Set var_88 = Nothing
  loc_FD45C2: Exit Sub
End Sub

Public Sub Proc_183_19_E8E68C
  'Data Table: 429190
  Dim var_B8 As Long
  Dim var_86 As Integer
  loc_E8E62F: var_B8 = Len(Trim(Me.TEXT))
  loc_E8E642: If (var_B8 = 0) Then
  loc_E8E665:   MsgBox(CVar(arg_10 & " is a required field."), &H10, "Validation Error", var_B8, var_D8)
  loc_E8E678:   Call Me.SetFocus
  loc_E8E680:   var_86 = 0
  loc_E8E686: Else
  loc_E8E688:   var_86 = &HFF
  loc_E8E68B: End If
  loc_E8E68B: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_183_20_FB48CC(arg_C) 'FB48CC
  'Data Table: 429190
  Dim var_8E As Integer
  Dim var_90 As Integer
  Dim var_204 As Variant
  loc_FB4785: var_88 = Replace(arg_C, " ", vbNullString, 1, -1, 0)
  loc_FB478D: var_8E = CInt(Len(var_88))
  loc_FB4792: var_90 = 1
  loc_FB4795: ' Referenced from: FB48AB
  loc_FB479B: If (var_8E > 0) Then
  loc_FB47BB:   var_8C = CStr(Mid(var_88, CLng(var_90), 1))
  loc_FB4877:   var_204 = (CVar(var_8C) >= Chr(&H41)) And (CVar(var_8C) <= Chr(&H5A)) Or (CVar(var_8C) >= Chr(&H61)) And (CVar(var_8C) <= Chr(&H7A)) Or (CVar(var_8C) >= Chr(&H30)) And (CVar(var_8C) <= Chr(&H39))
  loc_FB488C:   If CBool(var_204) Then
  loc_FB4896:     var_94 = var_94 & var_8C
  loc_FB4899:   End If
  loc_FB489F:   var_90 = (var_90 + 1)
  loc_FB48A8:   var_8E = (var_8E - 1)
  loc_FB48AB:   GoTo loc_FB4795
  loc_FB48AE: End If
  loc_FB48C2: var_88 = CStr(Ucase(var_94))
  loc_FB48C8: Exit Sub
End Sub

Public Sub Proc_183_21_FA21CC(arg_C, arg_10, arg_14, arg_18) 'FA21CC
  'Data Table: 429190
  Dim var_F4 As Variant
  Dim var_94 As String
  Dim var_104 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim arg_10 As Integer
  loc_FA2076: If (arg_10 = &H2E) Then
  loc_FA207C:   var_F4 = Me.SelStart
  loc_FA208F:   var_94 = "-"
  loc_FA20B4:   var_104 = (var_F4 + 1)
  loc_FA20DE:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFE7C
  loc_FA20EE:   var_1B4 = (Len((InStr(1, CVar(arg_C), var_94, 0) <> 0) And (Mid(arg_C, CLng(var_104), 1) = ".")) - 1)
  loc_FA20F8:   var_1D4 = (var_1B4 - CVar(arg_18))
  loc_FA211C:   If CBool(var_F4 And (var_1D4 >= CVar(arg_14))) Then
  loc_FA2121:     arg_10 = 0
  loc_FA2127:   Else
  loc_FA212A:     var_F4 = Me.SelStart
  loc_FA213D:     var_94 = "-"
  loc_FA2162:     var_104 = (var_F4 + 1)
  loc_FA218C:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFE7C
  loc_FA219D:     var_1B4 = (Len((InStr(1, CVar(arg_C), var_94, 0) = 0) And (Mid(arg_C, CLng(var_104), 1) = ".")) - CVar(arg_18))
  loc_FA21C1:     If CBool(var_F4 And (var_1B4 >= CVar(arg_14))) Then
  loc_FA21C6:       arg_10 = 0
  loc_FA21C9:     End If
  loc_FA21C9:   End If
  loc_FA21C9: End If
  loc_FA21C9: Exit Sub
End Sub

Public Sub Proc_183_22_129BBAC(arg_C, arg_10, arg_14, arg_18) '129BBAC
  'Data Table: 429190
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim arg_10 As Integer
  Dim var_D8 As Variant
  Dim var_128 As Variant
  Dim Me As CommandButton
  Dim var_178 As Variant
  Dim var_1A8 As Variant
  Dim var_218 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  loc_129B5E4: On Error Resume Next
  loc_129B5EF: If (arg_18 = 0) Then
  loc_129B5F4:   var_98 = "0123456789-"
  loc_129B606:   var_88 = CStr(var_98 & Me.Tag)
  loc_129B613: Else
  loc_129B615:   var_98 = "0123456789.-"
  loc_129B627:   var_88 = CStr(var_98 & Me.Tag)
  loc_129B631: End If
  loc_129B639: If (arg_10 > &H1A) Then
  loc_129B670:   If (InStr(1, CVar(var_88), Chr(CLng(arg_10)), 0) = 0) Then
  loc_129B677:     arg_10 = 0
  loc_129B67A:   End If
  loc_129B688:   var_98 = "-"
  loc_129B6B7:   If CBool((InStr(1, CVar(arg_C), CVar(var_88), 0) <> 0) And (arg_10 = &H2D)) Then
  loc_129B6BE:     arg_10 = 0
  loc_129B6C1:   End If
  loc_129B6E8:   If CBool(InStr(1, CVar(arg_C), ".", 0) <> 0) Then
  loc_129B6F3:     If (arg_10 = &H2E) Then
  loc_129B6FA:       arg_10 = 0
  loc_129B6FD:     End If
  loc_129B70B:     var_98 = "-"
  loc_129B724:     If CBool(InStr(1, CVar(arg_C), ".", 0) <> 0) Then
  loc_129B748:       var_B8 = (InStr(1, CVar(arg_C), ".", 0) - 1)
  loc_129B78C:       If CBool((InStr(1, CVar(var_88), Chr(CLng(arg_10)), 0) > CVar(arg_14)) And (Me.SelStart < InStr(1, CVar(arg_C), ".", 0))) Then
  loc_129B793:         arg_10 = 0
  loc_129B799:       Else
  loc_129B79E:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF58
  loc_129B7C9:         var_128 = (InStr(1, CVar(arg_C), ".", 0) + CVar(arg_18))
  loc_129B80A:         If CBool((Len(arg_10) >= InStr(1, CVar(arg_C), ".", 0)) And (Me.SelStart >= InStr(1, CVar(arg_C), ".", 0))) Then
  loc_129B811:           arg_10 = 0
  loc_129B814:         End If
  loc_129B814:       End If
  loc_129B819:     Else
  loc_129B877:       If CBool((InStr(1, CVar(arg_C), ".", 0) > CVar(arg_14)) And (Me.SelStart < InStr(1, CVar(arg_C), ".", 0))) Then
  loc_129B87E:         arg_10 = 0
  loc_129B884:       Else
  loc_129B889:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF58
  loc_129B8B4:         var_128 = (InStr(1, CVar(arg_C), ".", 0) + CVar(arg_18))
  loc_129B8F5:         If CBool((Len(arg_10) >= Me.SelStart) And (Me.SelStart >= InStr(1, CVar(arg_C), ".", 0))) Then
  loc_129B8FC:           arg_10 = 0
  loc_129B8FF:         End If
  loc_129B8FF:       End If
  loc_129B901:     End If
  loc_129B906:   Else
  loc_129B910:     If (arg_10 = &H2E) Then
  loc_129B915:       Exit Sub
  loc_129B916:     End If
  loc_129B924:     var_98 = "-"
  loc_129B93D:     If CBool(InStr(1, CVar(arg_C), ".", 0) <> 0) Then
  loc_129B945:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF58
  loc_129B955:       var_D8 = (Len(arg_10) - 1)
  loc_129B965:       If (InStr(1, CVar(arg_C), ".", 0) >= CVar(arg_14)) Then
  loc_129B96C:         arg_10 = 0
  loc_129B96F:       End If
  loc_129B972:     Else
  loc_129B979:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF58
  loc_129B9A6:       If CBool((Len(arg_10) >= CVar(arg_14)) And (arg_10 <> &H2D)) Then
  loc_129B9AD:         arg_10 = 0
  loc_129B9B0:       End If
  loc_129B9B0:     End If
  loc_129B9B2:   End If
  loc_129B9B7: Else
  loc_129B9C6:   var_178 = Me.SelStart
  loc_129B9E3:   var_98 = "-"
  loc_129BA37:   var_1A8 = (var_178 + 1)
  loc_129BA5A:   var_218 = (arg_10 = 8) And (InStr(1, CVar(arg_C), CVar(arg_14), 0) <> 0) And (Mid(arg_C, CLng(Me.SelStart), 1) = ".") And (Mid(arg_C, CLng(var_1A8), 1) <> vbNullString)
  loc_129BA61:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDD8
  loc_129BA71:   var_258 = (Len(var_218) - 1)
  loc_129BA7B:   var_278 = (var_258 - CVar(arg_18))
  loc_129BAA7:   If CBool(var_178 And (var_278 >= CVar(arg_14))) Then
  loc_129BAAE:     arg_10 = 0
  loc_129BAB4:   Else
  loc_129BAC3:     var_178 = Me.SelStart
  loc_129BAE0:     var_98 = "-"
  loc_129BB34:     var_1A8 = (var_178 + 1)
  loc_129BB57:     var_218 = (arg_10 = 8) And (InStr(1, CVar(arg_C), CVar(arg_14), 0) = 0) And (Mid(arg_C, CLng(Me.SelStart), 1) = ".") And (Mid(arg_C, CLng(var_1A8), 1) <> vbNullString)
  loc_129BB5E:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDD8
  loc_129BB6F:     var_258 = (Len(var_218) - CVar(arg_18))
  loc_129BB9B:     If CBool(var_178 And (var_258 >= CVar(arg_14))) Then
  loc_129BBA2:       arg_10 = 0
  loc_129BBA5:     End If
  loc_129BBA5:   End If
  loc_129BBA5: End If
  loc_129BBA9: Exit Sub
End Sub

Public Sub Proc_183_23_11A2C00
  'Data Table: 429190
  Dim var_C4 As Variant
  Dim var_94 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  loc_11A27E7: If (Proc_183_39_E662B0(arg_1C) = &HFF) Then
  loc_11A27EA:   Exit Sub
  loc_11A27EB: End If
  loc_11A27F5: If (CLng(arg_1C) = &HD) Then
  loc_11A2821:   If CBool().TEXT <> vbNullString) Then
  loc_11A282C:     var_C4 = |÷B.SelectedItem.TEXT
  loc_11A2847:     ).TEXT = arg_18
  loc_11A2854:   End If
  loc_11A285C:   Me.Visible = False
  loc_11A2860:   Exit Sub
  loc_11A2861: End If
  loc_11A2893: If (((((arg_1C = &H10) Or (CLng(arg_1C) = &H26)) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_11A28A8:   If (Me.Visible = False) Then
  loc_11A28AB:     Exit Sub
  loc_11A28AC:   End If
  loc_11A28AF: Else
  loc_11A28C1:   If (Me.Visible = False) Then
  loc_11A28CE:     Me.left = CVar(arg_24)
  loc_11A28DC:     Me.top = CVar(arg_28)
  loc_11A28EA:     Me.width = CVar(arg_2C)
  loc_11A2902:     If (IsMissing(arg_30) Or (arg_30 = 0)) Then
  loc_11A2920:       Me.height = (|÷B.ListItems.Count * 270)
  loc_11A292E:     Else
  loc_11A2938:       Me.height = CVar(arg_30)
  loc_11A293C:     End If
  loc_11A2945:     |÷B.left = 0
  loc_11A2952:     |÷B.top = 0
  loc_11A2960:     |÷B.width = CVar(arg_2C)
  loc_11A2978:     If (IsMissing(arg_30) Or (arg_30 = 0)) Then
  loc_11A2996:       |÷B.height = (|÷B.ListItems.Count * 270)
  loc_11A29A4:     Else
  loc_11A29AE:       |÷B.height = CVar(arg_30)
  loc_11A29B2:     End If
  loc_11A29B5:     var_E4 = CVar(arg_2C) 'Integer
  loc_11A29CA:     |÷B.ColumnHeaders.width = 1
  loc_11A29DB:     |÷B.Tag = CVar(arg_18)
  loc_11A29E6:     Me.Visible = True
  loc_11A29EA:     var_94 = 0
  loc_11A29F3:     Call Me.ZOrder
  loc_11A29F9:   End If
  loc_11A29F9: End If
  loc_11A2A0A: If (Me.Visible = True) Then
  loc_11A2A38:   If ((((CLng(arg_1C) = &H26) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_11A2A45:     |÷B.Tag = CVar(arg_18)
  loc_11A2A7E:     If CBool((CLng(arg_1C) = &H26) And (|÷B.SelectedItem.index > 1)) Then
  loc_11A2A81:       var_E4 = True
  loc_11A2A98:       var_D4 = (|÷B.SelectedItem.index - 1)
  loc_11A2AA8:       |÷B.ListItems.Selected = (|÷B.SelectedItem.index > 1)
  loc_11A2ABD:       var_C4 = |÷B.SelectedItem.TEXT
  loc_11A2AD8:       ).TEXT = arg_18
  loc_11A2AE8:     Else
  loc_11A2B29:       If CBool((CLng(arg_1C) = &H28) And (|÷B.SelectedItem.index < |÷B.ListItems.Count)) Then
  loc_11A2B2C:         var_E4 = True
  loc_11A2B43:         var_D4 = (|÷B.SelectedItem.index + 1)
  loc_11A2B53:         |÷B.ListItems.Selected = |÷B.SelectedItem.index
  loc_11A2B6A:         var_C4 = |÷B.SelectedItem.TEXT
  loc_11A2B85:         ).TEXT = arg_18
  loc_11A2B95:       Else
  loc_11A2BCA:         If CBool((CLng(arg_1C) = &H28) And (|÷B.ListItems.Count = 1)) Then
  loc_11A2BD5:           var_C4 = |÷B.SelectedItem.TEXT
  loc_11A2BF0:           ).TEXT = arg_18
  loc_11A2BFD:         End If
  loc_11A2BFD:       End If
  loc_11A2BFD:     End If
  loc_11A2BFD:   End If
  loc_11A2BFD: End If
  loc_11A2BFD: Exit Sub
End Sub

Public Sub Proc_183_24_1045ECC
  'Data Table: 429190
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim var_CC As Variant
  Dim var_DC As Variant
  loc_1045C70: On Error Goto loc_1045E67
  loc_1045C90: If (Me.TopCtrl1.TopText2 = "Browse") Then
  loc_1045C93:   Exit Sub
  loc_1045C94: End If
  loc_1045C9D: |÷B.CellBackColor = "16777215"
  loc_1045CAA: var_88 = CInt(|÷B.Row)
  loc_1045CB9: var_8A = CInt(|÷B.Col)
  loc_1045CCC: var_BC = (|÷B.CellHeight - 10)
  loc_1045CE5: ).height = arg_18
  loc_1045CFD: var_BC = (|÷B.CellWidth - 10)
  loc_1045D16: ).width = arg_18
  loc_1045D31: var_CC = (|÷B.CellLeft + |÷B.left)
  loc_1045D4A: ).left = arg_18
  loc_1045D69: var_CC = (|÷B.CellTop + |÷B.top)
  loc_1045D82: ).top = arg_18
  loc_1045DA2: var_9C = |÷B.TextMatrix
  loc_1045DBF: ).TEXT = arg_18
  loc_1045DCA: var_DC = True
  loc_1045DE2: ).Visible = arg_18
  loc_1045DE9: var_DC = 0
  loc_1045E05: Call ).ZOrder
  loc_1045E1F: var_9C = |÷B.TextMatrix
  loc_1045E3C: ).Tag = arg_18
  loc_1045E5D: Call ).SetFocus
  loc_1045E66: Exit Sub
  loc_1045E67: ' Referenced from: 1045C70
  loc_1045E6F: Set var_110 = Err()
  loc_1045E75: Call 0.Method_arg_1C (var_114, arg_18, var_9C, var_8A, var_88, arg_18, var_DC, var_DC)
  loc_1045E86: If (var_114 <> 0) Then
  loc_1045E91:   Set var_110 = Err()
  loc_1045E97:   Call 0.Method_arg_2C (var_118, var_9C, var_8A, var_88)
  loc_1045EB8:   MsgBox(CVar(var_118), &H40, "Validation", var_CC, var_FC)
  loc_1045ECB: End If
  loc_1045ECB: Exit Sub
End Sub

Public Sub Proc_183_25_11BCFD4
  'Data Table: 429190
  Dim var_A8 As Variant
  Dim var_CA As Integer
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_12C As Variant
  loc_11BCBA3: If ((((CLng(arg_18) = &H27) Or (CLng(arg_18) = &H25)) Or (CLng(arg_18) = &H26)) Or (CLng(arg_18) = &H28)) Then
  loc_11BCBAC:   If (arg_1C = &HFF) Then
  loc_11BCBAF:     var_A8 = False
  loc_11BCBC8:     ).Visible = arg_14
  loc_11BCBD2:     var_CA = arg_18
  loc_11BCBDF:     If (var_CA = CInt(&H26)) Then
  loc_11BCBF5:       If (Me.Row > 1) Then
  loc_11BCC05:         var_DC = (Me.Row - 1)
  loc_11BCC0D:         Me.Row = var_DC
  loc_11BCC17:         Call Me.SetFocus
  loc_11BCC20:       Else
  loc_11BCC23:         Call Me.SetFocus
  loc_11BCC29:       End If
  loc_11BCC2C:     Else
  loc_11BCC36:       If (var_CA = CInt(&H28)) Then
  loc_11BCC4E:         var_DC = (Me.rows - 1)
  loc_11BCC5B:         If (Me.Row < var_DC) Then
  loc_11BCC6B:           var_DC = (Me.Row + 1)
  loc_11BCC73:           Me.Row = var_DC
  loc_11BCC81:           Call Me.SetFocus
  loc_11BCC8A:         Else
  loc_11BCC8D:           Call Me.SetFocus
  loc_11BCC93:         End If
  loc_11BCC96:       Else
  loc_11BCCA0:         If (var_CA = CInt(&H25)) Then
  loc_11BCCB6:           If (Me.Col > 1) Then
  loc_11BCCC6:             var_DC = (Me.Col - 1)
  loc_11BCCCE:             Me.Col = var_DC
  loc_11BCCD8:             Call Me.SetFocus
  loc_11BCCE1:           Else
  loc_11BCCE4:             Call Me.SetFocus
  loc_11BCCEA:           End If
  loc_11BCCED:         Else
  loc_11BCCF7:           If (var_CA = CInt(&H27)) Then
  loc_11BCD10:             If (Me.Col < CVar(arg_20)) Then
  loc_11BCD20:               var_DC = (Me.Col + 1)
  loc_11BCD28:               Me.Col = var_DC
  loc_11BCD36:               Call Me.SetFocus
  loc_11BCD3F:             Else
  loc_11BCD42:               Call Me.SetFocus
  loc_11BCD48:             End If
  loc_11BCD48:           End If
  loc_11BCD48:         End If
  loc_11BCD48:       End If
  loc_11BCD48:     End If
  loc_11BCD48:   End If
  loc_11BCD4B: Else
  loc_11BCD55:   If (CLng(arg_18) = &HD) Then
  loc_11BCD6F:     If (IsMissing(arg_28) Or (CInt(arg_28) = 0)) Then
  loc_11BCDA9:       var_FC = (Me.Col + IIf(IsMissing(arg_24), 0, arg_24))
  loc_11BCDC5:       If (var_FC < CVar(arg_20)) Then
  loc_11BCDE5:         var_DC = (Me.Col + 1)
  loc_11BCE08:         var_12C = (IIf(IsMissing(arg_24), 0, arg_24) + IIf(IsMissing(arg_24), 0, arg_24))
  loc_11BCE10:         Me.Col = var_12C
  loc_11BCE26:         Call Me.SetFocus
  loc_11BCE2F:       Else
  loc_11BCE52:         If (IsMissing(arg_2C) Or (Not(IsMissing(arg_2C)) And (arg_2C = 0))) Then
  loc_11BCE6A:           var_DC = (Me.rows - 1)
  loc_11BCE77:           If (Me.Row = IIf(IsMissing(arg_24), 0, arg_24)) Then
  loc_11BCE7D:             var_C8 = Me.rows
  loc_11BCE86:             Call Me.AddItem
  loc_11BCE8F:           End If
  loc_11BCE92:         Else
  loc_11BCEA7:           var_DC = (Me.rows - 1)
  loc_11BCEB4:           If (Me.Row = IIf(IsMissing(arg_24), 0, arg_24)) Then
  loc_11BCEBA:             Call Me.AddItem
  loc_11BCEC0:           End If
  loc_11BCEC0:         End If
  loc_11BCECD:         var_DC = (Me.Row + 1)
  loc_11BCED5:         Me.Row = IIf(IsMissing(arg_24), 0, arg_24)
  loc_11BCEF4:         var_DC = (Me.Cols - 1)
  loc_11BCEFD:         For var_144 = CByte(1) To CByte(IIf(IsMissing(arg_24), 0, arg_24)):     var_86 = var_144 'Byte
  loc_11BCF20:           If CBool(Me.ColWidth <> 0) Then
  loc_11BCF23:             GoTo loc_11BCF2F
  loc_11BCF26:           End If
  loc_11BCF29:         Next var_144 'Byte
  loc_11BCF2F:         ' Referenced from:     11BCF23
  loc_11BCF3B:         Me.Col = CVar(var_86)
  loc_11BCF42:         Call Me.SetFocus
  loc_11BCF48:       End If
  loc_11BCF4B:     Else
  loc_11BCF68:       If (Me.ColWidth = 0) Then
  loc_11BCF7F:         var_DC = (Me.Cols - 1)
  loc_11BCF88:         For var_148 = arg_28 To CByte(IIf(IsMissing(arg_24), 0, arg_24)):     var_86 = var_148 'Byte
  loc_11BCFAB:           If CBool(Me.ColWidth <> 0) Then
  loc_11BCFAE:             GoTo loc_11BCFBA
  loc_11BCFB1:           End If
  loc_11BCFB4:         Next var_148 'Byte
  loc_11BCFBA:         ' Referenced from:     11BCFAE
  loc_11BCFBA:       End If
  loc_11BCFC6:       Me.Col = CVar(arg_28)
  loc_11BCFCD:       Call Me.SetFocus
  loc_11BCFD3:     End If
  loc_11BCFD3:   End If
  loc_11BCFD3: End If
  loc_11BCFD3: Exit Sub
End Sub

Public Sub Proc_183_26_11578C8(arg_C, arg_10) '11578C8
  'Data Table: 429190
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_EC As String
  Dim var_8A As Integer
  Dim var_8C As Integer
  Dim var_CC As Variant
  Dim var_DC As Variant
  loc_1157531: If (Me.TopCtrl1.TopText2 = "Browse") Then
  loc_1157534:   Exit Sub
  loc_1157535: End If
  loc_115753F: If (CLng(arg_20) = &HD) Then
  loc_115754E:   Proc_183_24_1045ECC(arg_C, arg_10)
  loc_1157556: Else
  loc_1157560:   If (CLng(arg_20) = &H2E) Then
  loc_1157566:     var_9C = |÷B.Row
  loc_115756F:     var_BC = |÷B.Col
  loc_1157575:     var_EC = vbNullString
  loc_115757E:     LateMemCallSt
  loc_115758E:   Else
  loc_11575D3:     If ((((((((arg_20 >= &H61) And (arg_20 <= &H7A)) Or ((arg_20 >= &H30) And (arg_20 <= &H39))) Or ((arg_20 >= &H41) And (arg_20 <= &H5A))) Or (arg_20 = &H2B)) Or (arg_20 = &H2D)) Or (arg_20 = &H2E)) Or (arg_20 = 8)) Then
  loc_11575DF:       |÷B.CellBackColor = "16777215"
  loc_11575EC:       var_8A = CInt(|÷B.Row)
  loc_11575FB:       var_8C = CInt(|÷B.Col)
  loc_115760E:       var_BC = (|÷B.CellHeight - 10)
  loc_1157627:       ).height = arg_18
  loc_115763F:       var_BC = (|÷B.CellWidth - 10)
  loc_1157658:       ).width = arg_18
  loc_1157673:       var_CC = (|÷B.CellLeft + |÷B.left)
  loc_115768C:       ).left = arg_18
  loc_11576AB:       var_CC = (|÷B.CellTop + |÷B.top)
  loc_11576C4:       ).top = arg_18
  loc_11576D3:       var_DC = vbNullString
  loc_11576ED:       ).TEXT = arg_18
  loc_11576F4:       var_DC = True
  loc_115770C:       ).Visible = arg_18
  loc_1157713:       var_DC = 0
  loc_115772F:       Call ).ZOrder
  loc_115773B:       var_9C = |÷B.Col
  loc_1157755:       ).Tag = arg_18
  loc_1157776:       Call ).SetFocus
  loc_1157785:       If (arg_1C = &HFF) Then
  loc_11577AA:         If (((((arg_20 >= &H30) And (arg_20 <= &H39)) Or (arg_20 = &H2B)) Or (arg_20 = &H2D)) Or (arg_20 = &H2E)) Then
  loc_11577B4:           var_9C = Chr(CLng(arg_20))
  loc_11577D1:           ).TEXT = arg_18
  loc_11577DC:         End If
  loc_11577DF:       Else
  loc_11577E9:         If (CLng(arg_20) = 8) Then
  loc_11577EC:           var_DC = vbNullString
  loc_1157806:           ).TEXT = arg_18
  loc_1157810:         Else
  loc_1157817:           var_9C = Chr(CLng(arg_20))
  loc_1157834:           ).TEXT = arg_18
  loc_115783F:         End If
  loc_115783F:       End If
  loc_115783F:       var_DC = 1
  loc_1157859:       ).SelStart = arg_18
  loc_1157860:     End If
  loc_1157860:   End If
  loc_1157860: End If
  loc_1157860: Exit Sub
  loc_1157869: Set var_110 = Err()
  loc_115786F: Call 0.Method_arg_1C (var_114, var_DC, var_9C, var_DC, var_9C, arg_18, var_9C, arg_18)
  loc_1157880: If (var_114 <> 0) Then
  loc_115788B:   Set var_110 = Err()
  loc_1157891:   Call 0.Method_arg_2C (var_118, var_DC, var_DC, var_DC)
  loc_11578B2:   MsgBox(CVar(var_118), &H40, "Validation", var_CC, var_10C)
  loc_11578C5: End If
  loc_11578C5: Exit Sub
End Sub

Public Sub Proc_183_27_E23198
  'Data Table: 429190
  Dim var_94 As Long
  loc_E23174: var_94 = -2147483643
  loc_E23180: Me.BackColor = var_94
  loc_E23190: Me.ForeColor = &HC00000
  loc_E23194: Exit Sub
End Sub

Public Sub Proc_183_28_E216B0
  'Data Table: 429190
  loc_E21698: Me.BackColor = &HE0E0E0
  loc_E216A8: Me.ForeColor = &HC00000
  loc_E216AC: Exit Sub
End Sub

Public Sub Proc_183_29_E53794(arg_C) 'E53794
  'Data Table: 429190
  Dim arg_C As Integer
  loc_E53763: If (arg_C = 144) Then
  loc_E53766:   Exit Sub
  loc_E53767: End If
  loc_E53774: If ((arg_C = &HD) Or (arg_C = &H28)) Then
  loc_E53785:   Proc_303_0_FBACC8("	")
  loc_E5378F:   arg_C = 0
  loc_E53792: End If
  loc_E53792: Exit Sub
End Sub

Public Sub Proc_183_30_E53D10(arg_C, arg_10) 'E53D10
  'Data Table: 429190
  Dim arg_C As Integer
  Dim arg_10 As Integer
  loc_E53CDF: If (arg_C = 144) Then
  loc_E53CE2:   Exit Sub
  loc_E53CE3: End If
  loc_E53CE9: If (arg_C = &H26) Then
  loc_E53CF4:   var_88 = "+{Tab}"
  loc_E53CFA:   Proc_303_0_FBACC8(var_88)
  loc_E53D04:   arg_C = 0
  loc_E53D09:   arg_10 = 0
  loc_E53D0C: End If
  loc_E53D0C: Exit Sub
End Sub

Public Sub Proc_183_31_100957C
  'Data Table: 429190
  Dim var_98 As Variant
  Dim var_CA As Integer
  Dim Me As Recordset15
  loc_100936B: If (Proc_183_39_E662B0(arg_1C) = &HFF) Then
  loc_100936E:   Exit Sub
  loc_100936F: End If
  loc_1009379: If (CLng(arg_1C) = &HD) Then
  loc_1009384:   Me.Visible = False
  loc_1009388:   Exit Sub
  loc_1009389: End If
  loc_10093BB: If (((((arg_1C = &H10) Or (CLng(arg_1C) = &H26)) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_10093D0:   If (Me.Visible = False) Then
  loc_10093D3:     Exit Sub
  loc_10093D4:   End If
  loc_10093D7: Else
  loc_10093E9:   If (Me.Visible = False) Then
  loc_10093F3:     Me.Visible = True
  loc_10093F7:     var_98 = 0
  loc_1009400:     Call Me.ZOrder
  loc_1009406:   End If
  loc_1009406: End If
  loc_1009417: If (Me.Visible = True) Then
  loc_1009445:   If ((((CLng(arg_1C) = &H26) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_100944B:     var_CA = arg_1C
  loc_1009458:     If (var_CA = CInt(&H26)) Then
  loc_100946F:       If (Me.Recordset15.RecordCount > 0) Then
  loc_1009483:         If (Me.Recordset15.BOF = 0) Then
  loc_1009489:           Me.Recordset15.MovePrevious
  loc_1009491:         Else
  loc_1009494:           Me.MoveFirst
  loc_1009499:         End If
  loc_1009499:       End If
  loc_100949C:     Else
  loc_10094A6:       If (var_CA = CInt(&H28)) Then
  loc_10094BD:         If (Me.Recordset15.RecordCount > 0) Then
  loc_10094D1:           If (Me.Recordset15.EOF = 0) Then
  loc_10094D7:             Me.Recordset15.MoveNext
  loc_10094DF:           Else
  loc_10094E2:             Me.MoveLast
  loc_10094E7:           End If
  loc_10094E7:         End If
  loc_10094EA:       Else
  loc_10094F4:         If (var_CA = CInt(&H21)) Then
  loc_10094FE:           For var_D6 = 1 To &HA:     var_86 = var_D6 'Integer
  loc_1009518:             If (Me.Recordset15.AbsolutePosition > 1) Then
  loc_100951E:               Me.Recordset15.MovePrevious
  loc_1009523:             End If
  loc_1009526:           Next var_D6 'Integer
  loc_100952E:         Else
  loc_1009538:           If (var_CA = CInt(&H22)) Then
  loc_1009542:             For var_DA = 1 To &HA:       var_86 = var_DA 'Integer
  loc_1009565:               If (Me.Recordset15.AbsolutePosition < Me.Recordset15.RecordCount) Then
  loc_100956B:                 Me.Recordset15.MoveNext
  loc_1009570:               End If
  loc_1009573:             Next var_DA 'Integer
  loc_1009578:           End If
  loc_1009578:         End If
  loc_1009578:       End If
  loc_1009578:     End If
  loc_1009578:   End If
  loc_1009578:   Exit Sub
  loc_1009579: End If
  loc_1009579: Exit Sub
End Sub

Public Sub Proc_183_32_FE97F0
  'Data Table: 429190
  Dim Me As CommandButton
  Dim var_C0 As Variant
  loc_FE9638: If (Me.Recordset15.RecordCount <= 0) Then
  loc_FE963B:   Exit Sub
  loc_FE963C: End If
  loc_FE968B: If ((((((((arg_18 = &HD) Or (CLng(arg_18) = &H27)) Or (CLng(arg_18) = &H25)) Or (arg_18 = &H10)) Or (CLng(arg_18) = &H26)) Or (CLng(arg_18) = &H28)) Or (CLng(arg_18) = &H21)) Or (CLng(arg_18) = &H22)) Then
  loc_FE968E:   Exit Sub
  loc_FE968F: End If
  loc_FE96A3: var_C0 = ).SelStart
  loc_FE96CA: VarLateMemLdRfVar
  loc_FE96EE: var_88 = CStr(Mid(var_C0, 1, CByte(var_C0)))
  loc_FE96FD: Me..cmdTransferCharge.MoveFirst
  loc_FE973A: If (Me.Recordset15.Fields.Item(CVar(arg_1C)).Type = 3) Then
  loc_FE977D:   Me.Recordset15.Find vbNullString & arg_1C & " >=" & CStr(Val(var_88)) & vbNullString, 0, 1
  loc_FE9792: Else
  loc_FE97C2:   Me.Recordset15.Find vbNullString & arg_1C & " >='" & var_88 & "'", 0, 1
  loc_FE97D2: End If
  loc_FE97E3: If (Me.Recordset15.EOF = &HFF) Then
  loc_FE97E9:   Me.Recordset15.MoveFirst
  loc_FE97EE: End If
  loc_FE97EE: Exit Sub
End Sub

Public Sub Proc_183_33_12A1B50
  'Data Table: 429190
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_114 As Variant
  loc_12A1568: If (Me.Recordset15.RecordCount <= 0) Then
  loc_12A156B:   var_B0 = vbNullString
  loc_12A1585:   ).TEXT = arg_14
  loc_12A158C:   Exit Sub
  loc_12A158D: End If
  loc_12A15C6: If ((((((arg_1C = &HD) Or (arg_1C = &H10)) Or (CLng(arg_1C) = &H26)) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_12A15C9:   Exit Sub
  loc_12A15CA: End If
  loc_12A15E6: var_86 = CByte().SelStart) 'Byte
  loc_12A160C: var_8C = CStr().TEXT)
  loc_12A1619: Me.Recordset15.MoveFirst
  loc_12A1656: If (Me.Recordset15.Fields.Item(CVar(arg_20)).Type = 3) Then
  loc_12A1699:   Me.Recordset15.Find vbNullString & arg_20 & " >=" & CStr(Val(var_8C)) & vbNullString, 0, 1
  loc_12A16BF:   If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_12A16D7:     var_D0 = Left(var_8C, CLng((CInt(var_86) - 1)))
  loc_12A16F4:     var_E0 = Right(var_8C, (Len(var_8C) - CLng(var_86)))
  loc_12A16FC:     var_114 = (var_D0 + ).TEXT)
  loc_12A1701:     var_8C = CStr(var_114)
  loc_12A1710:     Me.Recordset15.MoveFirst
  loc_12A1755:     Me.Recordset15.Find vbNullString & arg_20 & " >=" & CStr(Val(var_8C)) & vbNullString, 0, 1
  loc_12A176A:     var_B0 = CVar(var_8C) 'String
  loc_12A1782:     ).TEXT = arg_14
  loc_12A178C:   Else
  loc_12A1803:     If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_20)).Value, 1, CVar(Len(var_8C)))) <> Ucase(var_8C)) Then
  loc_12A181B:       var_D0 = Left(var_8C, CLng((CInt(var_86) - 1)))
  loc_12A1838:       var_E0 = Right(var_8C, (Len(var_8C) - CLng(var_86)))
  loc_12A1840:       var_114 = (Me.Recordset15.Fields.Item(CVar(arg_20)).Value + CVar(Len(var_8C)))
  loc_12A1845:       var_8C = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_20)).Value, 1, CVar(Len(var_8C))))
  loc_12A1854:       Me.Recordset15.MoveFirst
  loc_12A1899:       Me.Recordset15.Find vbNullString & arg_20 & " >=" & CStr(Val(var_8C)) & vbNullString, 0, 1
  loc_12A18AE:       var_B0 = CVar(var_8C) 'String
  loc_12A18C6:       ).TEXT = arg_14
  loc_12A18CD:     End If
  loc_12A18CD:   End If
  loc_12A18D0: Else
  loc_12A1900:   Me.Recordset15.Find vbNullString & arg_20 & " >='" & var_8C & "'", 0, 1
  loc_12A1924:   If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_12A193C:     var_D0 = Left(var_8C, CLng((CInt(var_86) - 1)))
  loc_12A1959:     var_E0 = Right(var_8C, (Len(var_8C) - CLng(var_86)))
  loc_12A1961:     var_114 = (Me.Recordset15.Fields.Item(CVar(arg_20)).Value + CVar(Len(var_8C)))
  loc_12A1966:     var_8C = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_20)).Value, 1, CVar(Len(var_8C))))
  loc_12A1975:     Me.Recordset15.MoveFirst
  loc_12A19AA:     Me.Recordset15.Find vbNullString & arg_20 & " >='" & var_8C & "'", 0, 1
  loc_12A19BD:     var_B0 = CVar(var_8C) 'String
  loc_12A19D5:     ).TEXT = arg_14
  loc_12A19DF:   Else
  loc_12A1A56:     If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_20)).Value, 1, CVar(Len(var_8C)))) <> Ucase(var_8C)) Then
  loc_12A1A6E:       var_D0 = Left(var_8C, CLng((CInt(var_86) - 1)))
  loc_12A1A8B:       var_E0 = Right(var_8C, (Len(var_8C) - CLng(var_86)))
  loc_12A1A93:       var_114 = (Me.Recordset15.Fields.Item(CVar(arg_20)).Value + CVar(Len(var_8C)))
  loc_12A1A98:       var_8C = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_20)).Value, 1, CVar(Len(var_8C))))
  loc_12A1AA7:       Me.Recordset15.MoveFirst
  loc_12A1ADC:       Me.Recordset15.Find vbNullString & arg_20 & " >='" & var_8C & "'", 0, 1
  loc_12A1AEF:       var_B0 = CVar(var_8C) 'String
  loc_12A1B07:       ).TEXT = arg_14
  loc_12A1B0E:     End If
  loc_12A1B0E:   End If
  loc_12A1B0E: End If
  loc_12A1B28: var_114 = Len().TEXT)
  loc_12A1B41: ).SelStart = arg_14
  loc_12A1B4E: Exit Sub
End Sub

Public Sub Proc_183_34_1307118
  'Data Table: 429190
  Dim var_A0 As Variant
  Dim arg_24 As Integer
  Dim var_D0 As Variant
  Dim var_C0 As String
  Dim var_E8 As Fields15
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim arg_1C As Integer
  Dim var_10E As Integer
  Dim var_10C As Variant
  Dim var_124 As Variant
  Dim Me As Recordset15
  loc_13069F8: On Error Goto loc_13070B2
  loc_1306A0F: If (Me.Recordset15.RecordCount > 0) Then
  loc_1306A1D:   If (Proc_183_39_E662B0(arg_1C) = &HFF) Then
  loc_1306A20:     Exit Sub
  loc_1306A21:   End If
  loc_1306A2E:   If IsMissing(arg_24) Then
  loc_1306A33:     arg_24 = 1
  loc_1306A36:   End If
  loc_1306A40:   If (CLng(arg_1C) = &HD) Then
  loc_1306A6C:     If CBool().TEXT <> vbNullString) Then
  loc_1306A92:       If ((Me.Recordset15.BOF = 0) And (Me.Recordset15.EOF = 0)) Then
  loc_1306A9B:         If (arg_20 = &HFF) Then
  loc_1306AC1:           var_B0 = Me.Recordset15.Fields.Item(CVar(arg_24)).Value
  loc_1306ADE:           ).TEXT = arg_14
  loc_1306AF3:         Else
  loc_1306B16:           var_B0 = Me.Recordset15.Fields.Item(CVar(arg_24)).Value
  loc_1306B33:           ).TEXT = arg_14
  loc_1306B67:           var_B0 = Me.Recordset15.Fields.Item(0).Value
  loc_1306B84:           ).Tag = arg_14
  loc_1306B96:         End If
  loc_1306B96:       End If
  loc_1306B96:     End If
  loc_1306B9E:     Me.Visible = False
  loc_1306BA2:     Exit Sub
  loc_1306BA3:   End If
  loc_1306BD5:   If (((((arg_1C = &H10) Or (CLng(arg_1C) = &H26)) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_1306BEA:     If (Me.Visible = False) Then
  loc_1306BED:       Exit Sub
  loc_1306BEE:     End If
  loc_1306BF1:   Else
  loc_1306C27:     If (((((CLng(arg_1C) = 8) Or (CLng(arg_1C) = &H25)) Or (CLng(arg_1C) = &H27)) Or (CLng(arg_1C) = &H24)) Or (CLng(arg_1C) = &H23)) Then
  loc_1306C44:       var_E0 = Len().TEXT)
  loc_1306C5D:       ).SelStart = arg_14
  loc_1306C7C:       If (Me.Visible = False) Then
  loc_1306C86:         Me.Visible = True
  loc_1306C8A:         var_A0 = 0
  loc_1306C93:         Call Me.ZOrder
  loc_1306C99:       End If
  loc_1306CA3:       If (CLng(arg_1C) <> 8) Then
  loc_1306CA8:         arg_1C = 0
  loc_1306CAB:       End If
  loc_1306CAE:     Else
  loc_1306CB8:       If (CLng(arg_1C) = &H2E) Then
  loc_1306CBB:         var_C0 = vbNullString
  loc_1306CD5:         ).TEXT = arg_14
  loc_1306CDF:       Else
  loc_1306CF1:         If (Me.Visible = False) Then
  loc_1306D0E:           var_E0 = Len().TEXT)
  loc_1306D27:           ).SelStart = arg_14
  loc_1306D3B:           Me.Visible = True
  loc_1306D3F:           var_A0 = 0
  loc_1306D48:           Call Me.ZOrder
  loc_1306D4E:         End If
  loc_1306D4E:       End If
  loc_1306D4E:     End If
  loc_1306D4E:   End If
  loc_1306D5F:   If (Me.Visible = True) Then
  loc_1306D76:     If (Me.Recordset15.RecordCount = 0) Then
  loc_1306D79:       Exit Sub
  loc_1306D7A:     End If
  loc_1306DA5:     If ((((CLng(arg_1C) = &H26) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_1306DAB:       var_10E = arg_1C
  loc_1306DB8:       If (var_10E = CInt(&H26)) Then
  loc_1306DCF:         If (Me.Recordset15.AbsolutePosition > 1) Then
  loc_1306DD5:           Me.Recordset15.MovePrevious
  loc_1306DDD:         Else
  loc_1306DDF:           arg_1C = 0
  loc_1306DE2:         End If
  loc_1306DE5:       Else
  loc_1306DEF:         If (var_10E = CInt(&H28)) Then
  loc_1306E0F:           If (Me.Recordset15.AbsolutePosition < Me.Recordset15.RecordCount) Then
  loc_1306E23:             If (Me.Recordset15.EOF = 0) Then
  loc_1306E29:               Me.Recordset15.MoveNext
  loc_1306E2E:             End If
  loc_1306E2E:           End If
  loc_1306E31:         Else
  loc_1306E3B:           If (var_10E = CInt(&H21)) Then
  loc_1306E60:             var_124 = (Int((Me.height / Me.RowHeight)) - 2)
  loc_1306E6C:             For var_128 = 1 To CInt(var_124):     var_86 = var_128 'Integer
  loc_1306E86:               If (Me.Recordset15.AbsolutePosition > 1) Then
  loc_1306E8C:                 Me.Recordset15.MovePrevious
  loc_1306E91:               End If
  loc_1306E94:             Next var_128 'Integer
  loc_1306E9C:           Else
  loc_1306EA6:             If (var_10E = CInt(&H22)) Then
  loc_1306EBE:               var_E0 = (Me.height / Me.RowHeight)
  loc_1306EC2:               var_10C = Int(var_E0)
  loc_1306ECB:               var_124 = (var_10C - 2)
  loc_1306ED7:               For var_12C = 1 To CInt(var_124):       var_86 = var_12C 'Integer
  loc_1306EE3:                 var_90 = Me.Recordset15.AbsolutePosition
  loc_1306F0C:                 If ((var_90 < Me.Recordset15.RecordCount) And (Me.Recordset15.EOF = 0)) Then
  loc_1306F12:                   Me.Recordset15.MoveNext
  loc_1306F17:                 End If
  loc_1306F1A:               Next var_12C 'Integer
  loc_1306F1F:             End If
  loc_1306F1F:           End If
  loc_1306F1F:         End If
  loc_1306F1F:       End If
  loc_1306F42:       If ((Me.BOF = 0) And (Me.Recordset15.EOF = 0)) Then
  loc_1306F4B:         If (arg_20 = &HFF) Then
  loc_1306F71:           var_B0 = Me.Recordset15.Fields.Item(CVar(arg_24)).Value
  loc_1306F8E:           ).TEXT = arg_14
  loc_1306FA3:         Else
  loc_1306FC6:           var_B0 = Me.Recordset15.Fields.Item(CVar(arg_24)).Value
  loc_1306FE3:           ).TEXT = arg_14
  loc_1307017:           var_B0 = Me.Recordset15.Fields.Item(0).Value
  loc_1307034:           ).Tag = arg_14
  loc_1307046:         End If
  loc_130705A:         var_D0 = Len())
  loc_1307073:         ).SelStart = arg_14
  loc_130707E:       End If
  loc_130707E:     End If
  loc_130707E:     Exit Sub
  loc_130707F:   End If
  loc_1307082: Else
  loc_1307085:   var_B0 = Me.Visible
  loc_1307094:   If (var_B0 = False) Then
  loc_130709E:     Me.Visible = True
  loc_13070A2:     var_A0 = 0
  loc_13070AB:     Call Me.ZOrder
  loc_13070B1:   End If
  loc_13070B1: End If
  loc_13070B1: Exit Sub
  loc_13070B2: ' Referenced from: 13069F8
  loc_13070BA: Set var_E8 = Err()
  loc_13070C0: Call 0.Method_arg_1C (var_90, var_A0, var_D0, arg_14)
  loc_13070D1: If (var_90 <> 0) Then
  loc_13070DC:   Set var_E8 = Err()
  loc_13070E2:   Call 0.Method_arg_2C (var_130, var_B0)
  loc_1307103:   MsgBox(CVar(var_130), &H40, "Validation", var_E0, var_10C)
  loc_1307116: End If
  loc_1307116: Exit Sub
End Sub

Public Sub Proc_183_35_F2A594
  'Data Table: 429190
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_AC As Variant
  Dim var_11C As Integer
  Dim Me As ListItem
  loc_F2A4C1: If ((((((arg_18 = &HD) Or (arg_18 = &H10)) Or (CLng(arg_18) = &H26)) Or (CLng(arg_18) = &H28)) Or (CLng(arg_18) = &H21)) Or (CLng(arg_18) = &H22)) Then
  loc_F2A4C4:   Exit Sub
  loc_F2A4C5: End If
  loc_F2A4D9: var_BC = ).SelStart
  loc_F2A4FE: VarLateMemLdRfVar
  loc_F2A522: var_88 = CStr(Mid(var_BC, 1, CInt(var_BC)))
  loc_F2A53F: If (Me.Visible = True) Then
  loc_F2A549:   var_CC = 0
  loc_F2A553:   var_11C = 1
  loc_F2A55C:   var_AC = Me.FindItem
  loc_F2A568:   IStAdFunc
  loc_F2A576:   If (arg_1C Is Nothing) Then
  loc_F2A579:     Exit Sub
  loc_F2A57D:   Else
  loc_F2A583:     Me.EnsureVisible var_12E
  loc_F2A58D:     Me.ListItem.Selected = True
  loc_F2A592:   End If
  loc_F2A592: End If
  loc_F2A592: Exit Sub
End Sub

Public Sub Proc_183_36_114A39C
  'Data Table: 429190
  Dim var_C4 As Variant
  Dim var_94 As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  loc_114A003: If (arg_1C = 144) Then
  loc_114A006:   Exit Sub
  loc_114A007: End If
  loc_114A011: If (CLng(arg_1C) = &HD) Then
  loc_114A03D:   If CBool().TEXT <> vbNullString) Then
  loc_114A048:     var_C4 = |÷B.SelectedItem.TEXT
  loc_114A063:     ).TEXT = arg_18
  loc_114A070:   End If
  loc_114A078:   Me.Visible = False
  loc_114A07C:   Exit Sub
  loc_114A07D: End If
  loc_114A0AF: If (((((arg_1C = &H10) Or (CLng(arg_1C) = &H26)) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_114A0C4:   If (Me.Visible = False) Then
  loc_114A0C7:     Exit Sub
  loc_114A0C8:   End If
  loc_114A0CB: Else
  loc_114A0DD:   If (Me.Visible = False) Then
  loc_114A0EA:     Me.left = CVar(arg_24)
  loc_114A0F8:     Me.top = CVar(arg_28)
  loc_114A106:     Me.width = CVar(arg_2C)
  loc_114A114:     Me.height = CVar(arg_30)
  loc_114A121:     |÷B.left = 0
  loc_114A12E:     |÷B.top = 0
  loc_114A13C:     |÷B.width = CVar(arg_2C)
  loc_114A14A:     |÷B.height = CVar(arg_30)
  loc_114A151:     var_E4 = CVar(arg_2C) 'Integer
  loc_114A166:     |÷B.ColumnHeaders.width = 1
  loc_114A177:     |÷B.Tag = CVar(arg_18)
  loc_114A182:     Me.Visible = True
  loc_114A186:     var_94 = 0
  loc_114A18F:     Call Me.ZOrder
  loc_114A195:   End If
  loc_114A195: End If
  loc_114A1A6: If (Me.Visible = True) Then
  loc_114A1D4:   If ((((CLng(arg_1C) = &H26) Or (CLng(arg_1C) = &H28)) Or (CLng(arg_1C) = &H21)) Or (CLng(arg_1C) = &H22)) Then
  loc_114A1E1:     |÷B.Tag = CVar(arg_18)
  loc_114A21A:     If CBool((CLng(arg_1C) = &H26) And (|÷B.SelectedItem.index > 1)) Then
  loc_114A21D:       var_E4 = True
  loc_114A234:       var_D4 = (|÷B.SelectedItem.index - 1)
  loc_114A244:       |÷B.ListItems.Selected = (|÷B.SelectedItem.index > 1)
  loc_114A259:       var_C4 = |÷B.SelectedItem.TEXT
  loc_114A274:       ).TEXT = arg_18
  loc_114A284:     Else
  loc_114A2C5:       If CBool((CLng(arg_1C) = &H28) And (|÷B.SelectedItem.index < |÷B.ListItems.Count)) Then
  loc_114A2C8:         var_E4 = True
  loc_114A2DF:         var_D4 = (|÷B.SelectedItem.index + 1)
  loc_114A2EF:         |÷B.ListItems.Selected = |÷B.SelectedItem.index
  loc_114A306:         var_C4 = |÷B.SelectedItem.TEXT
  loc_114A321:         ).TEXT = arg_18
  loc_114A331:       Else
  loc_114A366:         If CBool((CLng(arg_1C) = &H28) And (|÷B.ListItems.Count = 1)) Then
  loc_114A371:           var_C4 = |÷B.SelectedItem.TEXT
  loc_114A38C:           ).TEXT = arg_18
  loc_114A399:         End If
  loc_114A399:       End If
  loc_114A399:     End If
  loc_114A399:   End If
  loc_114A399: End If
  loc_114A399: Exit Sub
End Sub

Public Sub Proc_183_37_EFEF78
  'Data Table: 429190
  Dim var_D4 As Variant
  Dim var_E4 As Integer
  Dim var_134 As Integer
  Dim var_8C As ListItem
  loc_EFEEAA: Call Me.ListItems.Clear
  loc_EFEEBE: For var_B4 = 0 To (arg_1C - 1): var_8E = var_B4 'Integer
  loc_EFEECA:   var_D4 = CVar((var_8E + 1)) 'Integer
  loc_EFEEDC:   VarIndexLdRfVar
  loc_EFEEFA:   Set var_8C = Me.ListItems.add
  loc_EFEF09: Next var_B4 'Integer
  loc_EFEF23: var_E4 = 0
  loc_EFEF2D: var_134 = 1
  loc_EFEF42: Set var_8C = Me.FindItem
  loc_EFEF53: If (var_8C Is Nothing) Then
  loc_EFEF56:   Exit Sub
  loc_EFEF5A: Else
  loc_EFEF60:   var_8C.EnsureVisible var_146
  loc_EFEF6A:   var_8C.Selected = True
  loc_EFEF6F: End If
  loc_EFEF72: Set var_88 = var_8C 
  loc_EFEF76: Exit Sub
End Sub

Public Sub Proc_183_38_F8A2F8
  'Data Table: 429190
  Dim Me As Recordset15
  Dim var_134 As String
  Dim var_8C As ListItem
  Dim var_F0 As Integer
  Dim var_144 As Integer
  loc_F8A1B2: Call Me.ListItems.Clear
  loc_F8A1CF: If (Me.Recordset15.RecordCount <= 0) Then
  loc_F8A1D2:   Exit Sub
  loc_F8A1D3:   ' Referenced from: F8A28C
  loc_F8A1D3: End If
  loc_F8A1D9: var_B6 = Me.EOF
  loc_F8A1E2: If Not(var_B6) Then
  loc_F8A20F:   var_A0 = Me.Recordset15.Fields.Item("Name").Value
  loc_F8A269:   var_134 = CStr(Me.Recordset15.Fields.Item("code").Value)
  loc_F8A272:   Me.ListItems.add.SubItems = 1
  loc_F8A287:   Me.Recordset15.MoveNext
  loc_F8A28C:   GoTo loc_F8A1D3
  loc_F8A28F: End If
  loc_F8A2A4: var_F0 = 0
  loc_F8A2AE: var_144 = 1
  loc_F8A2C3: Set var_8C = Me.FindItem
  loc_F8A2D4: If (var_8C Is Nothing) Then
  loc_F8A2D7:   Exit Sub
  loc_F8A2DB: Else
  loc_F8A2E1:   var_8C.EnsureVisible var_B6
  loc_F8A2EB:   var_8C.Selected = True
  loc_F8A2F0: End If
  loc_F8A2F3: Set var_88 = var_8C 
  loc_F8A2F7: Exit Sub
End Sub

Public Sub Proc_183_39_E662B0(arg_C) 'E662B0
  'Data Table: 429190
  loc_E662A0: If (((((((CLng(arg_C) = &H11) Or (CLng(arg_C) = &H10)) Or (CLng(arg_C) = &H90)) Or (CLng(arg_C) = &H14)) Or (CLng(arg_C) = &H91)) Or (arg_C = &H12)) Or (arg_C = &H5B)) Then
  loc_E662A8:   Result &HFF End Sub 'Integer
  loc_E662A9: End If
  loc_E662AE: Result 0 End Sub 'Integer
End Sub

Public Sub Proc_183_40_F3169C
  'Data Table: 429190
  loc_F31617: If (((((((((((((CLng(arg_10) = &H71) Or (CLng(arg_10) = &H72)) Or (CLng(arg_10) = &H73)) Or ((arg_10 = &H46) And (arg_14 = 2))) Or ((arg_10 = &H50) And (arg_14 = 2))) Or ((arg_10 = &H53) And (arg_14 = 2))) Or (CLng(arg_10) = &H1B)) Or (CLng(arg_10) = &H74)) Or (CLng(arg_10) = &H79)) Or (CLng(arg_10) = &H24)) Or (CLng(arg_10) = &H21)) Or (CLng(arg_10) = &H22)) Or (CLng(arg_10) = &H23)) Then
  loc_F31632:   Call Me.TopCtrl1.TopKey_Down
  loc_F3163B: End If
  loc_F31645: If (CLng(arg_10) <> &H79) Then
  loc_F31668:   If (Me.TopCtrl1.PrvKeyCode = &H1B) Then
  loc_F31679:     Me.TopCtrl1.PrvKeyCode = 0
  loc_F31683:   Else
  loc_F31692:     Me.TopCtrl1.PrvKeyCode = CVar(arg_10)
  loc_F31699:   End If
  loc_F31699: End If
  loc_F31699: Exit Sub
End Sub

Public Sub Proc_183_41_145A968
  'Data Table: 429190
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim Me As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim arg_18 As Integer
  loc_1459DE8: If (Me.Recordset15.RecordCount <= 0) Then
  loc_1459DEB:   var_B0 = vbNullString
  loc_1459E05:   ).TEXT = arg_10
  loc_1459E0C:   Exit Sub
  loc_1459E0D: End If
  loc_1459E13: If (arg_18 = 0) Then
  loc_1459E16:   Exit Sub
  loc_1459E17: End If
  loc_1459E6D: If (((((((((arg_18 = &HD) Or (arg_18 = 8)) Or (arg_18 = &H10)) Or (CLng(arg_18) = &H25)) Or (CLng(arg_18) = &H27)) Or (CLng(arg_18) = &H26)) Or (CLng(arg_18) = &H28)) Or (CLng(arg_18) = &H21)) Or (CLng(arg_18) = &H22)) Then
  loc_1459E70:   Exit Sub
  loc_1459E71: End If
  loc_1459E85: If (IsMissing(arg_20) Or (arg_20 = 0)) Then
  loc_1459EB1:   If ().TEXT = vbNullString) Then
  loc_1459EC4:     var_88 = CStr(Chr(CLng(arg_18)))
  loc_1459ECD:   Else
  loc_1459EF6:     var_100 = ().TEXT + Chr(CLng(arg_18)))
  loc_1459EFB:     var_88 = CStr(var_100)
  loc_1459F09:   End If
  loc_1459F23:   If (((var_88 = vbNullString) Or (var_88 = "*")) Or (var_88 = "_")) Then
  loc_1459F28:     arg_18 = 0
  loc_1459F2B:     Exit Sub
  loc_1459F2C:   End If
  loc_1459F2F:   Me.MoveFirst
  loc_1459F6C:   If (Me.Recordset15.Fields.Item(CVar(arg_1C)).Type = 3) Then
  loc_1459FAC:     Me.Recordset15.Find vbNullString & arg_1C & " like " & CStr(Val(var_88)) & "*", 0, 1
  loc_1459FD0:     If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_1459FEE:       var_88 = CStr().TEXT)
  loc_1459FFB:       Me.Recordset15.MoveFirst
  loc_145A008:       If (var_88 <> vbNullString) Then
  loc_145A03B:         Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_145A04B:       End If
  loc_145A04E:     Else
  loc_145A0C5:       If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88)))) <> Ucase(var_88)) Then
  loc_145A0E3:         var_88 = CStr().TEXT)
  loc_145A0F0:         Me.Recordset15.MoveFirst
  loc_145A125:         Me.Recordset15.Find vbNullString & arg_1C & " like " & var_88 & "*", 0, 1
  loc_145A135:       End If
  loc_145A135:     End If
  loc_145A138:   Else
  loc_145A13B:     Me.MoveFirst
  loc_145A170:     Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_145A194:     If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_145A1B2:       var_88 = CStr().TEXT)
  loc_145A1BF:       Me.Recordset15.MoveFirst
  loc_145A1CC:       If (var_88 <> vbNullString) Then
  loc_145A1FF:         Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_145A20F:       End If
  loc_145A212:     Else
  loc_145A289:       If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88)))) <> Ucase(var_88)) Then
  loc_145A2A7:         var_88 = CStr().TEXT)
  loc_145A2B4:         Me.Recordset15.MoveFirst
  loc_145A2E9:         Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_145A2F9:       End If
  loc_145A2F9:     End If
  loc_145A2F9:   End If
  loc_145A2FC:   var_B0 = CVar(var_88) 'String
  loc_145A329:   var_100 = ().TEXT + Chr(CLng(arg_18)))
  loc_145A33A:   If (arg_10 = Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88))))) Then
  loc_145A366:     var_100 = ().TEXT + Chr(CLng(arg_18)))
  loc_145A37F:     ).TEXT = arg_10
  loc_145A390:   End If
  loc_145A392:   arg_18 = 0
  loc_145A398: Else
  loc_145A3B4:   var_8A = CByte().SelStart) 'Byte
  loc_145A3DA:   var_88 = CStr().TEXT)
  loc_145A3E7:   Me.Recordset15.MoveFirst
  loc_145A424:   If (Me.Recordset15.Fields.Item(CVar(arg_1C)).Type = 3) Then
  loc_145A431:     var_88 = CStr(Val(var_88))
  loc_145A464:     Me.Recordset15.Find vbNullString & arg_1C & " like " & var_88 & "*", 0, 1
  loc_145A488:     If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_145A4A0:       var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_145A4BD:       var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_145A4C5:       var_F0 = (Me.Recordset15.Fields.Item(CVar(arg_1C)).Value + ).TEXT)
  loc_145A4CA:       var_88 = CStr().TEXT)
  loc_145A4D9:       Me.Recordset15.MoveFirst
  loc_145A4E6:       If (var_88 <> vbNullString) Then
  loc_145A519:         Me.Recordset15.Find vbNullString & arg_1C & " like " & var_88 & "*", 0, 1
  loc_145A529:       End If
  loc_145A52C:       var_B0 = CVar(var_88) 'String
  loc_145A544:       ).TEXT = arg_10
  loc_145A54E:     Else
  loc_145A5C5:       If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88)))) <> Ucase(var_88)) Then
  loc_145A5DD:         var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_145A5FA:         var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_145A602:         var_F0 = (Me.Recordset15.Fields.Item(CVar(arg_1C)).Value + CVar(Len(var_88)))
  loc_145A607:         var_88 = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88))))
  loc_145A616:         Me.Recordset15.MoveFirst
  loc_145A623:         If (var_88 <> vbNullString) Then
  loc_145A656:           Me.Recordset15.Find vbNullString & arg_1C & " like " & var_88 & "*", 0, 1
  loc_145A666:         End If
  loc_145A669:         var_B0 = CVar(var_88) 'String
  loc_145A681:         ).TEXT = arg_10
  loc_145A688:       End If
  loc_145A688:     End If
  loc_145A68B:   Else
  loc_145A693:     If (var_88 <> vbNullString) Then
  loc_145A6C6:       Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_145A6EA:       If (Me.Recordset15.AbsolutePosition = -3) Then
  loc_145A702:         var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_145A71F:         var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_145A727:         var_F0 = (Me.Recordset15.Fields.Item(CVar(arg_1C)).Value + CVar(Len(var_88)))
  loc_145A72C:         var_88 = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88))))
  loc_145A73B:         Me.Recordset15.MoveFirst
  loc_145A748:         If (var_88 <> vbNullString) Then
  loc_145A77B:           Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_145A78B:         End If
  loc_145A78E:         var_B0 = CVar(var_88) 'String
  loc_145A7A6:         ).TEXT = arg_10
  loc_145A7B0:       Else
  loc_145A827:         If CBool(Ucase(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88)))) <> Ucase(var_88)) Then
  loc_145A83F:           var_D0 = Left(var_88, CLng((CInt(var_8A) - 1)))
  loc_145A85C:           var_E0 = Right(var_88, (Len(var_88) - CLng(var_8A)))
  loc_145A864:           var_F0 = (Me.Recordset15.Fields.Item(CVar(arg_1C)).Value + CVar(Len(var_88)))
  loc_145A869:           var_88 = CStr(Mid(Me.Recordset15.Fields.Item(CVar(arg_1C)).Value, 1, CVar(Len(var_88))))
  loc_145A878:           Me.Recordset15.MoveFirst
  loc_145A885:           If (var_88 <> vbNullString) Then
  loc_145A8B8:             Me.Recordset15.Find vbNullString & arg_1C & " like '" & var_88 & "*'", 0, 1
  loc_145A8C8:           End If
  loc_145A8CB:           var_B0 = CVar(var_88) 'String
  loc_145A8E3:           ).TEXT = arg_10
  loc_145A8EA:         End If
  loc_145A8EA:       End If
  loc_145A8EA:     End If
  loc_145A8EA:   End If
  loc_145A904:   var_F0 = Len().TEXT)
  loc_145A91D:   ).SelStart = arg_10
  loc_145A92C:   arg_18 = 0
  loc_145A92F: End If
  loc_145A943: var_E0 = Len())
  loc_145A95C: ).SelStart = arg_10
  loc_145A967: Exit Sub
End Sub

Public Sub Proc_183_42_107DF48(arg_C) '107DF48
  'Data Table: 429190
  Dim var_D8 As Variant
  Dim unk_429253 As Connection15
  Dim var_C4 As Recordset15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  Dim var_98 As Double
  Dim var_90 As Double
  Dim var_F4 As String
  Dim var_C0 As Variant
  Dim var_124 As Variant
  Dim var_134 As Boolean
  Dim var_194 As Variant
  loc_107DCD6: If (Len(arg_C) <= 0) Then
  loc_107DCD9:   Exit Sub
  loc_107DCDA: End If
  loc_107DCE2: If (MemVar_1F95078 = "HO") Then
  loc_107DCEB:   var_D8 = 0
  loc_107DD18:   unk_429253.Execute "SELECT isnull(sum(ledger.Amtcr),0) AS OpRec FROM ledger where subcode='" & arg_C & "'", var_C0, -1
  loc_107DD20:   var_C4 = var_C4.Fields
  loc_107DD28:   var_D8 = var_C8.Item(var_C8)
  loc_107DD30:   var_DC = var_DC.Value
  loc_107DD39:   var_98 = CSng(var_EC)
  loc_107DD59:   var_D8 = 0
  loc_107DD86:   unk_429253.Execute "SELECT isnull(sum(ledger.Amtdr),0) AS OpIss FROM ledger where subcode='" & arg_C & "'", var_C0, -1
  loc_107DD8E:   var_C4 = var_C4.Fields
  loc_107DD96:   var_D8 = var_C8.Item(var_C8)
  loc_107DD9E:   var_DC = var_DC.Value
  loc_107DDA7:   var_90 = CSng(var_EC)
  loc_107DDC4: Else
  loc_107DDCA:   var_D8 = 0
  loc_107DDFC:   var_F4 = "SELECT isnull(sum(ledger.Amtcr),0) AS OpRec FROM ledger where subcode='" & arg_C & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "'"
  loc_107DE05:   unk_429253.Execute var_F4, var_C0, -1
  loc_107DE0D:   var_C4 = var_C4.Fields
  loc_107DE15:   var_D8 = var_C8.Item(var_C8)
  loc_107DE1D:   var_DC = var_DC.Value
  loc_107DE26:   var_98 = CSng(var_EC)
  loc_107DE4A:   var_D8 = 0
  loc_107DE7C:   var_F4 = "SELECT isnull(sum(ledger.Amtdr),0) AS OpIss FROM ledger where subcode='" & arg_C & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "'"
  loc_107DE85:   unk_429253.Execute var_F4, var_C0, -1
  loc_107DE8D:   var_C4 = var_C4.Fields
  loc_107DE95:   var_D8 = var_C8.Item(var_C8)
  loc_107DE9D:   var_DC = var_DC.Value
  loc_107DEA6:   var_90 = CSng(var_EC)
  loc_107DEC4: End If
  loc_107DEE1: var_C0 = CVar(Abs((var_90 - var_98))) 'Double
  loc_107DEF5: var_124 = (Format(var_C0, "0.00") + " ")
  loc_107DF1B: var_134 = (CDbl((var_90 - var_98)) > CDbl(0))
  loc_107DF2A: var_194 = (var_124 + IIf(var_134, "Dr", "Cr"))
  loc_107DF2F: var_88 = CStr(var_194)
  loc_107DF47: Exit Sub
End Sub

Public Sub Proc_183_43_EF88E4(arg_C) 'EF88E4
  'Data Table: 429190
  Dim unk_429253 As Connection15
  Dim |÷B As CommandButton
  Dim var_A4 As Variant
  loc_EF8818: On Error Goto loc_EF8886
  loc_EF8831: unk_429253.Execute arg_C, var_A4, -1
  loc_EF883C: CVarUnk
  loc_EF8841: VerifyVarObj
  loc_EF8846: LateIdStAd
  loc_EF8880: |÷B.Tag = arg_C
  loc_EF8885: Exit Sub
  loc_EF8886: ' Referenced from: EF8818
  loc_EF888E: Set var_A8 = Err()
  loc_EF8894: Call 0.Method_arg_1C (var_CC, cmdTransferCharge.DispID_3, arg_18, cmdTransferCharge.DispID_1)
  loc_EF88A5: If (var_CC > 0) Then
  loc_EF88B0:   Set var_A8 = Err()
  loc_EF88B6:   Call 0.Method_arg_2C (var_D0, arg_14, |÷B)
  loc_EF88CF:   MsgBox(CVar(var_D0), &H40, var_B8, var_E0, var_100)
  loc_EF88E2: End If
  loc_EF88E2: Exit Sub
End Sub

Public Sub Proc_183_44_EACB24(arg_C) 'EACB24
  'Data Table: 429190
  Dim var_B4 As Variant
  Dim Me As CommandButton
  Dim var_A4 As Variant
  loc_EACAB3: var_B4 = CVar(CStr(cmdTransferCharge.DispID_2)) 'String
  loc_EACAF7: Proc_183_43_EF88E4(CStr(Me.Tag), arg_C, CStr(var_B4))
  loc_EACB13: var_A4 = CVar(CStr(var_B4)) 'String
  loc_EACB22: Exit Sub
End Sub

Public Sub Proc_183_45_E5CCA8
  'Data Table: 429190
  Dim Me As Recordset15
  loc_E5CC70: If (Me.Recordset15.RecordCount > 0) Then
  loc_E5CC81:   If Me.Recordset15.BOF Then
  loc_E5CC87:     Me.Recordset15.MoveFirst
  loc_E5CC8C:   End If
  loc_E5CC9A:   If Me.EOF Then
  loc_E5CCA0:     Me.Recordset15.MoveLast
  loc_E5CCA5:   End If
  loc_E5CCA5: End If
  loc_E5CCA5: Exit Sub
End Sub

Public Sub Proc_183_46_E07C50(arg_C) 'E07C50
  'Data Table: 429190
  Dim arg_C As Integer
  loc_E07C46: If (arg_C = &H27) Then
  loc_E07C4B:   arg_C = 0
  loc_E07C4E:   Exit Sub
  loc_E07C4F: End If
  loc_E07C4F: Exit Sub
End Sub

Public Sub Proc_183_47_EA13E8(arg_C) 'EA13E8
  'Data Table: 429190
  loc_EA1364: On Error Resume Next
  loc_EA1377: Form.Visible = False
  loc_EA1386: Form.Height = CDbl(8000)
  loc_EA1395: Form.Width = CDbl(12000)
  loc_EA13A3: Form.Top = CDbl(0)
  loc_EA13B1: Form.Left = CDbl(0)
  loc_EA13D3: arg_C.TopBar1.BackColor = CVar(Form.BackColor)
  loc_EA13DE: Set var_88 = Nothing 
  loc_EA13E4: Exit Sub
End Sub

Public Sub Proc_183_48_F06B28
  'Data Table: 429190
  Dim var_86 As Integer
  Dim var_B4 As Variant
  loc_F06A4A: var_86 = 1
  loc_F06A77: If (Proc_183_49_EF3D10(CDate(Me.TXTS_DATE), "Starting Date") = 0) Then
  loc_F06A7F:   Result 0 End Sub 'Integer
  loc_F06A80: End If
  loc_F06AAA: If (Proc_183_49_EF3D10(CDate(Me.TXTE_DATE), "Ending Date", Me.TXTE_DATE) = 0) Then
  loc_F06AB2:   Result 0 End Sub 'Integer
  loc_F06AB3: End If
  loc_F06AC0: var_B4 = Me.TXTE_DATE
  loc_F06ADD: var_C4 = DateDiff("d", Me.TXTS_DATE, var_B4, 1, 1)
  loc_F06AF6: If (var_C4 < 0) Then
  loc_F06B12:   MsgBox(" Ending Date Less than Starting Date ", &H10, var_B4, var_C4, var_E4)
  loc_F06B24:   var_86 = 0
  loc_F06B27: End If
  loc_F06B27: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_183_49_EF3D10(arg_C, arg_10) 'EF3D10
  'Data Table: 429190
  Dim var_86 As Integer
  loc_EF3C42: var_86 = &HFF
  loc_EF3C78: If (DateDiff("D", MemVar_1F950F4, arg_C, 1, 1) < 0) Then
  loc_EF3C93:   MsgBox(CVar(arg_10 & " is Before Financial Year "), &H10, var_D8, var_E8, var_F8)
  loc_EF3CA5:   var_86 = 0
  loc_EF3CAB: Else
  loc_EF3CDE:   If (DateDiff("D", arg_C, MemVar_1F950FC, 1, 1) < 0) Then
  loc_EF3CF9:     MsgBox(CVar(arg_10 & " is After Financial Year "), &H10, var_D8, var_E8, var_F8)
  loc_EF3D0B:     var_86 = 0
  loc_EF3D0E:   End If
  loc_EF3D0E: End If
  loc_EF3D0E: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_183_50_F746C0(arg_C, arg_10, arg_14) 'F746C0
  'Data Table: 429190
  Dim var_9C As Long
  Dim var_94 As Long
  Dim var_8C As Long
  Dim var_90 As Long
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  loc_F74581: Me(48) = "One  Two  ThreeFour Five Six  Seveneightnine "
  loc_F7458C: Me(64) = "Eleven   Twelve   Therteen Fourteen Fifteen  Sixteen  SeventeenEighteen Nineteen "
  loc_F74597: Me(80) = "Ten    Twenty Thirty Fourty Fifty  Sixty  SeventyEighty Ninty  "
  loc_F745A0: Me(112) = "Hundred ThousandLacs    Crore   Arab    "
  loc_F745AA: var_9C = &H3B9ACA00
  loc_F745B3: Me(96) = CVar(arg_10)
  loc_F745D0: var_8C = CLng(((arg_C - Int(arg_C)) * CDbl(&H64)))
  loc_F745DA: For var_C0 = 1 To 6: var_96 = var_C0 'Integer
  loc_F745EC:   var_90 = CLng(Int((CDbl(CLng(Int(arg_C))) / CDbl(var_9C))))
  loc_F745FA:   var_94 = (var_94 - (var_90 * var_9C))
  loc_F74603:   If (var_96 <> 4) Then
  loc_F7460F:     var_9C = CLng((CDbl(var_9C) / CDbl(&H64)))
  loc_F74615:   Else
  loc_F7461E:     var_9C = CLng((CDbl(var_9C) / CDbl(&HA)))
  loc_F74621:   End If
  loc_F7462A:   If (var_90 > 0) Then
  loc_F7463C:     var_AC = Proc_183_51_108E2B8(var_90, var_96, var_9C, var_9C, CLng(Int(arg_C))) 'Variant
  loc_F74640:   End If
  loc_F74643: Next var_C0 'Integer
  loc_F74653: var_D0 = (Me(96) + CVar(arg_14))
  loc_F7465C: var_F0 = (var_D0 + " ")
  loc_F74660: Me(96) = var_F0
  loc_F74672: If (var_8C > 0) Then
  loc_F74684:   var_AC = Proc_183_51_108E2B8(var_8C) 'Variant
  loc_F7468B: Else
  loc_F74695:   var_D0 = (Me(96) + " Zero ")
  loc_F74699:   Me(96) = var_D0
  loc_F7469F: End If
  loc_F746A9: var_D0 = (Me(96) + " Only")
  loc_F746AD: Me(96) = var_D0
  loc_F746BA: var_88 = CStr(Me(96))
  loc_F746BD: Exit Sub
End Sub

Public Sub Proc_183_51_108E2B8(arg_C, arg_10) '108E2B8
  'Data Table: 429190
  Dim var_A8 As Variant
  Dim var_F8 As Variant
  loc_108E017: If ((arg_C Mod &HA) = 0) Then
  loc_108E02F:   var_A8 = (Me(96) + Space(1))
  loc_108E05B:   var_D8 = Mid(Me(80), ((((arg_C / &HA) - 1) * 7) + 1), 7)
  loc_108E06E:   var_F8 = (var_A8 + RTrim(var_D8))
  loc_108E072:   Me(96) = var_F8
  loc_108E088: Else
  loc_108E091:   If (arg_C < &HA) Then
  loc_108E0A9:     var_A8 = (Me(96) + Space(1))
  loc_108E0CF:     var_D8 = Mid(Me(48), (((arg_C - 1) * 5) + 1), 5)
  loc_108E0E2:     var_F8 = (var_A8 + RTrim(var_D8))
  loc_108E0E6:     Me(96) = var_F8
  loc_108E0FC:   Else
  loc_108E105:     If (arg_C < &H14) Then
  loc_108E11D:       var_A8 = (Me(96) + Space(1))
  loc_108E149:       var_D8 = Mid(Me(64), ((((arg_C - &HA) - 1) * 9) + 1), 9)
  loc_108E15C:       var_F8 = (var_A8 + RTrim(var_D8))
  loc_108E160:       Me(96) = var_F8
  loc_108E176:     Else
  loc_108E18B:       var_A8 = (Me(96) + Space(1))
  loc_108E1B7:       var_D8 = Mid(Me(80), ((((arg_C / &HA) - 1) * 7) + 1), 7)
  loc_108E1CA:       var_F8 = (var_A8 + RTrim(var_D8))
  loc_108E1CE:       Me(96) = var_F8
  loc_108E1F6:       var_A8 = (Me(96) + Space(1))
  loc_108E222:       var_D8 = Mid(Me(48), ((((arg_C Mod &HA) - 1) * 5) + 1), 5)
  loc_108E235:       var_F8 = (var_A8 + RTrim(var_D8))
  loc_108E239:       Me(96) = var_F8
  loc_108E24C:     End If
  loc_108E24C:   End If
  loc_108E24C: End If
  loc_108E252: If (arg_10 < 6) Then
  loc_108E26A:   var_A8 = (Me(96) + Space(1))
  loc_108E28D:   var_D8 = Mid(Me(112), CLng((((5 - arg_10) * 8) + 1)), 8)
  loc_108E2A0:   var_F8 = (var_A8 + RTrim(var_D8))
  loc_108E2A4:   Me(96) = var_F8
  loc_108E2B7: End If
  loc_108E2B7: Result  End Sub 'Integer
End Sub

Public Sub Proc_183_52_E80008
  'Data Table: 429190
  loc_E7FFAE: var_94 = CVar(arg_10) 'Variant
  loc_E7FFCD: If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_E7FFF6:   var_94 = CVar(Asc(CStr(Ucase(Chr(CLng(arg_10)))))) 'Variant
  loc_E80004: End If
  loc_E80004: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_183_53_FE0460
  'Data Table: 429190
  Dim var_E0 As Integer
  Dim var_CC As Recordset15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim var_86 As Integer
  Dim var_C8 As Variant
  loc_FE02B5: If (arg_1C = 0) Then
  loc_FE02F0:   var_8C = "Select Count(" & arg_14 & ") from " & arg_10 & " where " & arg_14 & " = '" & arg_18 & "'"
  loc_FE0307: Else
  loc_FE0310:   If (arg_1C = 1) Then
  loc_FE034B:     var_8C = "Select Count(" & arg_14 & ") from " & arg_10 & " where " & arg_14 & " = " & arg_18 & vbNullString
  loc_FE0362:   Else
  loc_FE036B:     If (arg_1C = 2) Then
  loc_FE03A6:       var_8C = "Select Count(" & arg_14 & ") from " & arg_10 & " where " & arg_14 & " = #" & arg_18 & "#"
  loc_FE03BA:     End If
  loc_FE03BA:   End If
  loc_FE03BA: End If
  loc_FE03C0: var_E0 = 0
  loc_FE03DC: Me.Connection15.Execute var_8C, var_C8, -1
  loc_FE03E4: var_CC = var_CC.Fields
  loc_FE03EC: var_E0 = var_D0.Item(var_D0)
  loc_FE03F4: var_E4 = var_E4.Value
  loc_FE0414: If (var_F4 > 0) Then
  loc_FE0443:   MsgBox(CVar("Related Record Exist in " & arg_20 & ", Entry Can't Be Deleted"), &H40, "Validation Check", var_114, var_124)
  loc_FE0456:   Result 0 End Sub 'Integer
  loc_FE045A: Else
  loc_FE045C:   var_86 = &HFF
  loc_FE045F: End If
  loc_FE045F: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_183_54_F1EA10(arg_C) 'F1EA10
  'Data Table: 429190
  Dim var_90 As Long
  Dim var_C8 As Variant
  loc_F1E911: var_90 = 1
  loc_F1E920: For var_98 = 1 To Len(arg_C): var_88 = var_98 'Long
  loc_F1E93E:   If (InStr(1, arg_C, ",", 0) <> 0) Then
  loc_F1E959:     var_C8 = CVar((InStr(1, arg_C, ",", 0) - 1)) 'Long
  loc_F1E9A6:     var_D8 = Mid(arg_C, (InStr(1, arg_C, ",", 0) + 1), var_C8)
  loc_F1E9AF:     arg_C = CStr(Mid(arg_C, 1, var_C8))
  loc_F1E9C5:     ReDim Preserve MemVar_1F95008(0 To var_90)
  loc_F1E9D9:     MemVar_1F95008(var_90) = CLng(CStr(Mid(arg_C, 1, var_C8)))
  loc_F1E9E3:     var_90 = (var_90 + 1)
  loc_F1E9E6:   End If
  loc_F1E9E9: Next var_98 'Long
  loc_F1E9F9: ReDim Preserve MemVar_1F95008(0 To var_90)
  loc_F1EA0D: MemVar_1F95008(var_90) = CLng(arg_C)
  loc_F1EA0E: Exit Sub
End Sub

Public Sub Proc_183_55_FE8490
  'Data Table: 429190
  Dim var_F0 As Variant
  Dim var_86 As Integer
  Dim var_128 As Variant
  loc_FE82FC: var_F0 = (Me.Recordset15.Fields.Item("Site_Code").Value = "HO") And (MemVar_1F95070 <> "HO")
  loc_FE8310: If CBool(var_F0) Then
  loc_FE8331:   MsgBox("Record is Created at Other Site, Can't Edit it", &H10, var_D0, var_F0, var_110)
  loc_FE8341:   Result &HFF End Sub 'Integer
  loc_FE8345: Else
  loc_FE83AE:   var_128 = (Me.Recordset15.Fields.Item("Site_Code").Value = "HO") And (Me.Recordset15.Fields.Item("LogSite_Code").Value = CVar(MemVar_1F95078))
  loc_FE83C6:   If CBool(var_128) Then
  loc_FE83CB:     var_86 = 0
  loc_FE83D1:   Else
  loc_FE8428:     var_F0 = Me.Recordset15.Fields.Item("LogSite_Code").Value
  loc_FE8453:     If CBool((Me.Recordset15.Fields.Item("Site_Code").Value <> CVar(MemVar_1F95070)) And (var_F0 <> CVar(MemVar_1F95078))) Then
  loc_FE8474:       MsgBox("Record is Created at Other Site, Can't Edit it", &H10, var_D0, var_F0, var_110)
  loc_FE8484:       Result &HFF End Sub 'Integer
  loc_FE8488:     Else
  loc_FE848A:       var_86 = 0
  loc_FE848D:     End If
  loc_FE848D:   End If
  loc_FE848D: End If
  loc_FE848D: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_183_56_FE8B08
  'Data Table: 429190
  Dim var_F0 As Variant
  Dim var_86 As Integer
  Dim var_128 As Variant
  loc_FE8974: var_F0 = (Me.Recordset15.Fields.Item("Site_Code").Value = "HO") And (MemVar_1F95070 <> "HO")
  loc_FE8988: If CBool(var_F0) Then
  loc_FE89A9:   MsgBox("Record is Created at Other Site, Can't Delete it", &H10, var_D0, var_F0, var_110)
  loc_FE89B9:   Result &HFF End Sub 'Integer
  loc_FE89BD: Else
  loc_FE8A26:   var_128 = (Me.Recordset15.Fields.Item("Site_Code").Value = "HO") And (Me.Recordset15.Fields.Item("LogSite_Code").Value = CVar(MemVar_1F95078))
  loc_FE8A3E:   If CBool(var_128) Then
  loc_FE8A43:     var_86 = 0
  loc_FE8A49:   Else
  loc_FE8AA0:     var_F0 = Me.Recordset15.Fields.Item("LogSite_Code").Value
  loc_FE8ACB:     If CBool((Me.Recordset15.Fields.Item("Site_Code").Value <> CVar(MemVar_1F95070)) And (var_F0 <> CVar(MemVar_1F95078))) Then
  loc_FE8AEC:       MsgBox("Record is Created at Other Site, Can't Delete it", &H10, var_D0, var_F0, var_110)
  loc_FE8AFC:       Result &HFF End Sub 'Integer
  loc_FE8B00:     Else
  loc_FE8B02:       var_86 = 0
  loc_FE8B05:     End If
  loc_FE8B05:   End If
  loc_FE8B05: End If
  loc_FE8B05: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_183_57_104B0BC(arg_C, arg_10) '104B0BC
  'Data Table: 429190
  Dim var_9C As String
  Dim var_1EA As Integer
  Dim var_1EC As Integer
  Dim var_98 As String
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_1E4 As Variant
  loc_104AEAC: Set var_90 = Err()
  loc_104AEB2: Call 0.Method_arg_1C (var_94)
  loc_104AEC3: If (var_94 <> 0) Then
  loc_104AED2:   var_90 = Me.Global.App
  loc_104AEF5:   var_9C = App.Path & "\"
  loc_104AF05:   Call 0.Method_arg_7C (var_9C & "FaLog.Log", 8, &HFF)
  loc_104AF10:   Set var_8C = var_A4
  loc_104AF30:   var_1EA = IsMissing(arg_C)
  loc_104AF40:   var_1EC = IsMissing(arg_10)
  loc_104AF50:   var_98 = CStr(Now)
  loc_104AF62:   Set var_90 = Err()
  loc_104AF68:   Call 0.Method_arg_2C (var_9C, var_98 & " | ", var_1EC)
  loc_104AF89:   Call 0.Method_arg_1C (var_94, var_1EA & var_9C & " | ")
  loc_104AFA9:   Set var_C8 = Err()
  loc_104AFAF:   Call 0.Method_arg_24 (var_CC, 0 & CStr(var_94) & " | ")
  loc_104AFBF:   var_144 = CVar(Err() & var_CC & " | ") 'String
  loc_104AFE0:   var_134 = IIf(Not(var_1EA), arg_C, vbNullString)
  loc_104AFE8:   var_154 = (var_144 + var_134)
  loc_104AFF1:   var_174 = (var_154 + " | ")
  loc_104B01B:   var_1E4 = (var_174 + IIf(Not(var_1EC), arg_10, vbNullString))
  loc_104B026:   Call 0.Method_arg_3C (CStr(var_1E4))
  loc_104B06B:   Call 0.Method_Proc_183_57_104B0BCC ()
  loc_104B075:   Set var_88 = Nothing
  loc_104B080:   Set var_90 = Err()
  loc_104B086:   Call 0.Method_arg_2C (var_98)
  loc_104B0A7:   MsgBox(CVar(var_98), &H40, "Validation", var_134, var_144)
  loc_104B0BA: End If
  loc_104B0BA: Exit Sub
End Sub
