
Public Sub Proc_156_0_1EE1CC6
Error procedure
End Sub

Public Sub Proc_156_1_10007FF
Error procedure
End Sub

Public Sub Proc_156_2_F988A8
  'Data Table: 41C240
  Dim var_FC As Long
  Dim var_8C As Long
  Dim var_D4 As Long
  Dim var_D0 As Long
  Dim var_D8 As Long
  Dim var_F8 As String
  Dim var_11C As Variant
  loc_F9876D: var_F8 = var_CC
  loc_F9879E: var_8C = CreateFieldDefFile(0, &H65, var_90, var_9C, var_94)
  loc_F987AD: If (var_8C <> 0) Then
  loc_F987B0:   Result var_8C End Sub 'Integer
  loc_F987B1: End If
  loc_F987B6: var_D4 = 1
  loc_F987BC: var_D0 = var_90
  loc_F987BF: ' Referenced from: F9886E
  loc_F987C6: If (var_D4 <= var_98) Then
  loc_F987C9:   DoEvents()
  loc_F987D9:   CopyMemory(var_C4, var_D0, &H18)
  loc_F987EB:   lstrcpyW(var_F0(0), var_C0, var_D0, var_D4, StrConv(var_CC, vbUnicode), var_F8)
  loc_F987F6:   var_D8 = 0
  loc_F987F9:   ' Referenced from: F98835
  loc_F98806:   If (CInt(var_F0(var_D8)) <> 0) Then
  loc_F9881E:     var_C8 = var_C8 & Chr$(CLng(var_F0(var_D8)))
  loc_F9882D:     var_D8 = (var_D8 + 2)
  loc_F98830:     DoEvents()
  loc_F98835:     GoTo loc_F987F9
  loc_F98838:   End If
  loc_F98846:   Proc_156_3_106F088(Me(32), arg_10, var_C8, arg_14, var_D8, var_D8)
  loc_F9884B:   DoEvents()
  loc_F98859:   var_D4 = (var_D4 + 1)
  loc_F9885F:   var_C8 = vbNullString
  loc_F9886B:   var_D0 = (var_D0 + &H18)
  loc_F9886E:   GoTo loc_F987BF
  loc_F98871: End If
  loc_F98880: var_8C = NetApiBufferFree(var_90, var_D0, var_D4, var_FC)
  loc_F98895: var_11C = CVar((CLng(Me.sckControlPanel.RemoteHostIP) - 1)) 'Long
  loc_F988A5: Result sckControlPanel.DispID_4 End Sub 'Integer
End Sub

Public Sub Proc_156_3_106F088
  'Data Table: 41C240
  Dim var_104 As Variant
  Dim var_88 As Long
  Dim var_D0 As Long
  Dim var_CC As Long
  Dim var_D4 As Long
  Dim var_118 As String
  Dim var_114 As Variant
  Dim var_17C As Long
  Dim var_19C As String
  loc_106EE52: var_C8 = CStr(StrConv(arg_14, &H40, 0))
  loc_106EE61: var_118 = var_C8
  loc_106EE92: var_88 = CreateFieldDefFile(0, &H65, var_8C, var_98, var_90)
  loc_106EEA1: If (var_88 <> 0) Then
  loc_106EEA4:   Exit Sub
  loc_106EEA5: End If
  loc_106EEAA: var_D0 = 1
  loc_106EEB0: var_CC = var_8C
  loc_106EEB3: ' Referenced from: 106F072
  loc_106EEBA: If (var_D0 <= var_94) Then
  loc_106EEBD:   DoEvents()
  loc_106EECD:   CopyMemory(var_C0, var_CC, &H18)
  loc_106EEDF:   lstrcpyW(var_EC(0), var_BC, var_CC, var_D0, var_88, StrConv(var_C8, vbUnicode))
  loc_106EEEA:   var_D4 = 0
  loc_106EEED:   ' Referenced from: 106EF29
  loc_106EEFA:   If (CInt(var_EC(var_D4)) <> 0) Then
  loc_106EF12:     var_C4 = var_C4 & Chr$(CLng(var_EC(var_D4)))
  loc_106EF21:     var_D4 = (var_D4 + 2)
  loc_106EF24:     DoEvents()
  loc_106EF29:     GoTo loc_106EEED
  loc_106EF2C:   End If
  loc_106EF75:   If CBool(Ucase(Trim(var_C4)) <> Ucase(Trim(arg_18))) Then
  loc_106EF78:     var_104 = 0
  loc_106EF8C:     var_114 = Me.sckControlPanel.RemoteHostIP
  loc_106EF9B:     var_104 = CVar((CLng(var_114) - 1)) 'Long
  loc_106EFA3:     Me.var_114.RemoteHost = var_104
  loc_106EFAB:     var_104 = "wingdings"
  loc_106EFBC:     var_104 = CVar(CDbl(&HE)) 'Single
  loc_106EFDB:     var_104 = CVar((CLng(Me.var_114.RemoteHostIP) - 1)) 'Long
  loc_106EFE0:     var_17C = 0
  loc_106EFE9:     var_19C = ":"
  loc_106EFF2:     LateIdCallSt
  loc_106F00F:     var_104 = CVar((CLng(Me.var_114.RemoteHostIP) - 1)) 'Long
  loc_106F014:     var_17C = 1
  loc_106F027:     LateIdCallSt
  loc_106F044:     var_104 = CVar((CLng(Me.var_114.RemoteHostIP) + 1)) 'Long
  loc_106F054:   End If
  loc_106F05D:   var_D0 = (var_D0 + 1)
  loc_106F063:   var_C4 = vbNullString
  loc_106F06F:   var_CC = (var_CC + &H18)
  loc_106F072:   GoTo loc_106EEB3
  loc_106F075: End If
  loc_106F084: var_88 = NetApiBufferFree(var_8C, var_CC, var_D0, sckControlPanel.DispID_4, var_104, Me, var_C4, var_17C)
  loc_106F087: Exit Sub
End Sub

Public Sub Proc_156_4_EC79DC
  'Data Table: 41C240
  Dim var_9C As Long
  Dim var_88 As Long
  loc_EC7944: var_94 = Me.Global.App
  loc_EC7978: var_9C = RegOpenKey(-2147483646, "Software\Microsoft\Windows\CurrentVersion\Run", var_8C)
  loc_EC79BF: var_88 = RegSetValueEx(var_8C, "AnalysisApp", 0, 1, App.Path & "\NA ControlPanel.EXE", &HFF, var_9C)
  loc_EC79D8: var_88 = RegCloseKey(var_8C)
  loc_EC79DB: Exit Sub
End Sub

Public Sub Proc_156_5_E29958
  'Data Table: 41C240
  loc_E29933: Me(36) = vbNullString
  loc_E2993B: Me(36) = "GetTaskList#"
  loc_E29948: EnumWindows(MemVar_41C3E8, 0)
  loc_E29953: var_88 = Me(36)
  loc_E29956: Exit Sub
End Sub

Public Sub Proc_156_6_F1F7E4(arg_C) 'F1F7E4
  'Data Table: 41C240
  Dim var_90 As Long
  loc_F1F6EB: var_90 = GetWindowTextLength(arg_C)
  loc_F1F6FD: var_8C = CStr(Space(var_90))
  loc_F1F719: GetWindowText(arg_C, var_8C, (var_90 + 1))
  loc_F1F733: Me(36) = Me(36) & var_8C
  loc_F1F743: If (Len(var_8C) > 0) Then
  loc_F1F757:   If CBool(IsIconic(arg_C)) Then
  loc_F1F763:     Me(36) = Me(36) & "=Minimize#"
  loc_F1F76C:   Else
  loc_F1F77D:     If CBool(IsZoomed(arg_C)) Then
  loc_F1F789:       Me(36) = Me(36) & "=Maximize#"
  loc_F1F792:     Else
  loc_F1F7A3:       If CBool(IsWindowVisible(arg_C)) Then
  loc_F1F7AF:         Me(36) = Me(36) & "=Not Active#"
  loc_F1F7B8:       Else
  loc_F1F7C9:         If CBool(IsWindowEnabled(arg_C)) Then
  loc_F1F7D5:           Me(36) = Me(36) & "=Active#"
  loc_F1F7DB:         End If
  loc_F1F7DB:       End If
  loc_F1F7DB:     End If
  loc_F1F7DB:   End If
  loc_F1F7DB: End If
  loc_F1F7E0: Result &HFF End Sub 'Integer
End Sub

Public Sub Proc_156_7_E5C9CC(arg_C) 'E5C9CC
  'Data Table: 41C240
  loc_E5C9C3: PostMessage(FindWindow(0, arg_C), &H10, 0, 0)
  loc_E5C9C9: Exit Sub
End Sub

Public Sub Proc_156_8_EA8CC4(arg_C, arg_10) 'EA8CC4
  'Data Table: 41C240
  loc_EA8C5F: For Each var_88 In Me.Global.Forms
  loc_EA8C9E:   If (((Form.Name <> arg_C) And (Form.Name <> arg_10)) And Not(TypeOf var_88 Is arg_28)) Then
  loc_EA8CAE:     Me.Global.Unload var_88
  loc_EA8CB6:   End If
  loc_EA8CB9: Next
  loc_EA8CC1: Exit Sub
End Sub

Public Sub Proc_156_9_F1219C(arg_C) 'F1219C
  'Data Table: 41C240
  Dim var_94 As Long
  Dim var_A4 As Variant
  Dim var_D8 As String
  Dim var_B4 As Variant
  loc_F120BC: On Error Goto loc_F12159
  loc_F120C2: var_90 = arg_C
  loc_F120C8: Me.ListBox.Clear
  loc_F120CD: ' Referenced from: F12155
  loc_F120D7: If (Len(var_90) > 0) Then
  loc_F120EC:   var_94 = InStr(1, var_90, "#", 0)
  loc_F12103:   var_B4 = Left(var_90, (var_94 - 1))
  loc_F12121:   var_A4 = var_90
  loc_F12129:   var_D4 = Mid(var_A4, (var_94 + 1), var_B4)
  loc_F12132:   var_90 = CStr(var_D4)
  loc_F12147:   var_D8 = "  " & CStr(var_B4)
  loc_F1214D:   Me.ListBox.AddItem var_D8, var_A4
  loc_F12155:   GoTo loc_F120CD
  loc_F12158: End If
  loc_F12158: Exit Sub
  loc_F12159: ' Referenced from: F120BC
  loc_F12161: Set var_DC = Err()
  loc_F12167: Call 0.Method_arg_2C (var_D8)
  loc_F12188: MsgBox(CVar(var_D8), &H40, "Menu List...", var_EC, var_10C)
  loc_F1219B: Exit Sub
End Sub
