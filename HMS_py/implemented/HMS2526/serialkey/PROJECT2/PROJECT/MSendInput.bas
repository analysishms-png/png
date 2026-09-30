
Public Sub Proc_303_0_FBACC8(arg_C, arg_10) 'FBACC8
  'Data Table: 41D3E8
  Dim var_19C As Long
  Dim var_234 As Long
  Dim var_244 As Long
  loc_FBAB4D: var_19C = &H94
  loc_FBAB56: var_230 = Record Of arg_0 'Copy battery of vars to single variable
  loc_FBAB5C: GetVersionEx(var_230)
  loc_FBAB68: var_19C = arg_0
  loc_FBAB74: If (var_18C = 1) Then
  loc_FBAB8A:   If ((var_198 = 4) And (var_194 < &HA)) Then
  loc_FBAB93:     Proc_303_0_FBACC8(arg_C, arg_10, var_230)
  loc_FBAB98:     Exit Sub
  loc_FBAB99:   End If
  loc_FBAB99: End If
  loc_FBABA2: If (Me(16) Is Nothing) Then
  loc_FBABA5:   Proc_303_16_11BAAFC(var_19C)
  loc_FBABAA: End If
  loc_FBABB4: var_234 = GetKeyboardLayoutName(0)
  loc_FBABBB: Me(28) = var_234
  loc_FBABCF: ReDim Me(8)(0 To &H1FF)
  loc_FBABDE: Me(12) = 0
  loc_FBABE8: Me(4) = 0
  loc_FBABF0: Me(0) = arg_C
  loc_FBABF5: ' Referenced from: FBAC48
  loc_FBABFF: If (Me(4) < Len(arg_C)) Then
  loc_FBAC02:   Proc_303_1_E9323C(var_234)
  loc_FBAC1C:   If (Me(12) >= (UBound(Me(8), 1) - &H18)) Then
  loc_FBAC3E:     ReDim Preserve Me(8)(0 To ((UBound(Me(8), 1) + &H200) - 1))
  loc_FBAC48:   End If
  loc_FBAC48:   GoTo loc_FBABF5
  loc_FBAC4B: End If
  loc_FBAC56: If (Me(12) > 0) Then
  loc_FBAC6C:   For var_23C = 0 To (Me(12) - 1): var_88 = var_23C 'Long
  loc_FBAC86:     var_244(0) = 1
  loc_FBAC90:     var_244 = 0
  loc_FBAC99:   Next var_23C 'Long
  loc_FBACB6:   SendInput(Me(12), Me(8)(0))
  loc_FBACBF: End If
  loc_FBACC5: Exit Sub
End Sub

Public Sub Proc_303_1_E9323C
  'Data Table: 41D3E8
  loc_E931CB: Me(4) = (Me(4) + 1)
  loc_E931E4: var_88 = Mid$(Me(0), Me(4), 1)
  loc_E931FE: If CBool(InStr(1, "+^, var_88, 0)) 'Long Then
  loc_E93204:   Proc_303_5_F8D41C(var_88)
  loc_E9320C: Else
  loc_E93214:   If (var_88 = "(") Then
  loc_E93217:     Proc_303_3_E96B88()
  loc_E9321F:   Else
  loc_E93227:     If (var_88 = "{") Then
  loc_E9322A:       Proc_303_4_FA6D00()
  loc_E93232:     Else
  loc_E93235:       Proc_303_2_EFADCC(var_88)
  loc_E9323A:     End If
  loc_E9323A:   End If
  loc_E9323A: End If
  loc_E9323A: Exit Sub
End Sub

Public Sub Proc_303_2_EFADCC(arg_C) 'EFADCC
  'Data Table: 41D3E8
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_8E As Integer
  Dim var_8A As Integer
  Dim var_8C As Integer
  loc_EFACF0: var_86 = AscW(arg_C)
  loc_EFAD01: If ((var_86 >= 0) And (var_86 < 256)) Then
  loc_EFAD0C:   If (arg_C = "~") Then
  loc_EFAD15:     var_88 = CInt(&HD)
  loc_EFAD1B:   Else
  loc_EFAD2A:     var_8E = VkKeyScan(CByte(Asc(arg_C)))
  loc_EFAD31:     var_88 = var_8E
  loc_EFAD34:   End If
  loc_EFAD3A:   If (var_88 = &HFF) Then
  loc_EFAD40:     Proc_303_7_EA8F20(var_86, var_88, var_8E)
  loc_EFAD48:   Else
  loc_EFAD60:     If Proc_303_17_E1A7D8(CBool((CInt(Proc_303_9_E3F91C(var_88, var_88)) And 1))) Then
  loc_EFAD66:       var_94 = arg_C
  loc_EFAD74:       If Not ("Z" > var_94 > "A") Then
  loc_EFAD82:         If ("z" > var_94 > "a") Then
  loc_EFAD85:         End If
  loc_EFAD89:         var_8A = Not(var_8A)
  loc_EFAD8C:       End If
  loc_EFAD8C:     End If
  loc_EFAD9C:     var_8C = CBool((CInt(Proc_303_9_E3F91C(var_88, var_8A)) And 6))
  loc_EFADBB:     Proc_303_6_F6F22C(CInt(Proc_303_10_E06650(var_88, var_8C)), var_8A, 0)
  loc_EFADC0:   End If
  loc_EFADC3: Else
  loc_EFADC6:   Proc_303_7_EA8F20(var_86, var_8C)
  loc_EFADCB: End If
  loc_EFADCB: Exit Sub
End Sub

Public Sub Proc_303_3_E96B88
  'Data Table: 41D3E8
  Dim var_88 As Long
  loc_E96B1C: var_88 = InStr(Me(4), Me(0), ")", 0)
  loc_E96B2E: If (var_88 > (Me(4) + 1)) Then
  loc_E96B48:   For var_98 = 1 To ((var_88 - Me(4)) - 1): var_90 = var_98 'Long
  loc_E96B66:     var_8C = Mid$(Me(0), (Me(4) + var_90), 1)
  loc_E96B6F:     Proc_303_2_EFADCC(var_8C, 1)
  loc_E96B77:   Next var_98 'Long
  loc_E96B7F:   Me(4) = var_88
  loc_E96B84: End If
  loc_E96B84: Exit Sub
End Sub

Public Sub Proc_303_4_FA6D00
  'Data Table: 41D3E8
  Dim var_88 As Long
  Dim var_CC As Variant
  Dim var_A0 As Long
  Dim var_A2 As Integer
  Dim var_A6 As Integer
  Dim var_F2 As Integer
  Dim var_A4 As Integer
  Dim var_A8 As Integer
  loc_FA6B92: var_88 = InStr((Me(4) + 2), Me(0), "}", 0)
  loc_FA6BA4: If (var_88 > (Me(4) + 1)) Then
  loc_FA6BB6:   var_CC = CVar(((var_88 - Me(4)) - 1)) 'Long
  loc_FA6BCF:   var_8C = Mid$(Me(0), (Me(4) + 1), var_CC)
  loc_FA6BF0:   var_DC = Split(var_8C, " ", -1, 0)
  loc_FA6BF8:   var_9C = var_DC 'Variant
  loc_FA6C02:   CRefVarAry
  loc_FA6C0F:   If (UBound(var_9C, 1) > 0) Then
  loc_FA6C2B:     var_A0 = CLng(Val(CStr(var_9C(1))))
  loc_FA6C34:   End If
  loc_FA6C3D:   If (var_A0 < 1) Then
  loc_FA6C45:     var_A0 = 1
  loc_FA6C48:   End If
  loc_FA6C62:   var_A2 = Proc_303_13_E5542C(CStr(var_9C(0)), var_A0)
  loc_FA6C6E:   If var_A2 Then
  loc_FA6C79:     var_A6 = Proc_303_14_E5DD18(var_8C, var_A2)
  loc_FA6C7F:   Else
  loc_FA6C8E:     var_F2 = VkKeyScan(CByte(Asc(var_8C)))
  loc_FA6C95:     var_A2 = var_F2
  loc_FA6CA8:     var_A4 = CBool((CInt(Proc_303_9_E3F91C(var_A2, var_A2, var_F2)) And 1))
  loc_FA6CBB:     var_A8 = CBool((CInt(Proc_303_9_E3F91C(var_A2, var_A4, var_A6)) And 6))
  loc_FA6CC9:     var_A2 = CInt(Proc_303_10_E06650(var_A2, var_A8))
  loc_FA6CCC:   End If
  loc_FA6CD7:   For var_FC = 1 To var_A0: var_AC = var_FC 'Long
  loc_FA6CE9:     Proc_303_6_F6F22C(var_A2, var_A4, var_A6, var_A8)
  loc_FA6CF1:   Next var_FC 'Long
  loc_FA6CF9:   Me(4) = var_88
  loc_FA6CFE: End If
  loc_FA6CFE: Exit Sub
End Sub

Public Sub Proc_303_5_F8D41C(arg_C) 'F8D41C
  'Data Table: 41D3E8
  Dim var_8C As Long
  Dim var_98 As Long
  loc_F8D2C6: var_8C = Me(8)(Me(12))
  loc_F8D2CC: var_90 = arg_C
  loc_F8D2D7: If (var_90 = "+") Then
  loc_F8D2E0:   var_8C(4) = CInt(&H10)
  loc_F8D2F0:   Me(24) = (Me(24) Or 1)
  loc_F8D2F8: Else
  loc_F8D300:   If (var_90 = "^") Then
  loc_F8D309:     var_8C(4) = CInt(&H11)
  loc_F8D319:     Me(24) = (Me(24) Or 2)
  loc_F8D321:   Else
  loc_F8D329:     If (var_90 = ") 'String Then
  loc_F8D332:       var_8C(4) = CInt(&H12)
  loc_F8D342:       Me(24) = (Me(24) Or 4)
  loc_F8D347:     End If
  loc_F8D347:   End If
  loc_F8D347: End If
  loc_F8D35D: Me(12) = (Me(12) + 1)
  loc_F8D362: Proc_303_1_E9323C(0)
  loc_F8D375: var_98 = Me(8)(Me(12))
  loc_F8D37B: var_9C = arg_C
  loc_F8D386: If (var_9C = "+") Then
  loc_F8D38F:   var_98(4) = CInt(&H10)
  loc_F8D39F:   Me(24) = (Me(24) And -2)
  loc_F8D3A7: Else
  loc_F8D3AF:   If (var_9C = "^") Then
  loc_F8D3B8:     var_98(4) = CInt(&H11)
  loc_F8D3C8:     Me(24) = (Me(24) And -3)
  loc_F8D3D0:   Else
  loc_F8D3D8:     If (var_9C = ") 'String Then
  loc_F8D3E1:       var_98(4) = CInt(&H12)
  loc_F8D3F1:       Me(24) = (Me(24) And -5)
  loc_F8D3F6:     End If
  loc_F8D3F6:   End If
  loc_F8D3F6: End If
  loc_F8D3FB: var_98(8) = 2
  loc_F8D405: var_98 = 0
  loc_F8D416: Me(12) = (Me(12) + 1)
  loc_F8D41B: Exit Sub
End Sub

Public Sub Proc_303_6_F6F22C(arg_C, arg_10, arg_14, arg_18) 'F6F22C
  'Data Table: 41D3E8
  Dim var_90 As Long
  Dim var_98 As Long
  Dim var_9C As Long
  loc_F6F0F4: If (CBool((Me(24) And 1)) = 0) Then
  loc_F6F0FA:   If arg_10 Then
  loc_F6F108:     Proc_303_8_E5D1F8(CInt(&H10))
  loc_F6F10D:   End If
  loc_F6F10D: End If
  loc_F6F110: If arg_18 Then
  loc_F6F11E:   Proc_303_8_E5D1F8(CInt(&H11), &HFF)
  loc_F6F12E:   Proc_303_8_E5D1F8(CInt(&H12), &HFF)
  loc_F6F133: End If
  loc_F6F141: var_90 = Me(8)(Me(12))
  loc_F6F147: var_90(4) = arg_C
  loc_F6F14F: If arg_14 Then
  loc_F6F157:   var_90(8) = 1
  loc_F6F15C: End If
  loc_F6F161: var_90 = 0
  loc_F6F172: Me(12) = (Me(12) + 1)
  loc_F6F185: var_98 = Me(8)(Me(12))
  loc_F6F18B: var_98(4) = arg_C
  loc_F6F1A3: var_9C = MapVirtualKeyEx(CLng(arg_C), 0, Me(28))
  loc_F6F1AB: var_98(6) = CInt(var_9C)
  loc_F6F1BB: var_98(8) = (var_98(8) Or 2)
  loc_F6F1C5: var_98 = 0
  loc_F6F1D6: Me(12) = (Me(12) + 1)
  loc_F6F1DE: If arg_18 Then
  loc_F6F1EC:   Proc_303_8_E5D1F8(CInt(&H11), 0, var_98, var_9C)
  loc_F6F1FC:   Proc_303_8_E5D1F8(CInt(&H12), 0, var_98)
  loc_F6F201: End If
  loc_F6F211: If (CBool((Me(24) And 1)) = 0) Then
  loc_F6F217:   If arg_10 Then
  loc_F6F225:     Proc_303_8_E5D1F8(CInt(&H10), 0, var_90)
  loc_F6F22A:   End If
  loc_F6F22A: End If
  loc_F6F22A: Exit Sub
End Sub

Public Sub Proc_303_7_EA8F20(arg_C) 'EA8F20
  'Data Table: 41D3E8
  Dim var_8C As Long
  Dim var_94 As Long
  loc_EA8EA2: var_8C = Me(8)(Me(12))
  loc_EA8EA7: var_8C(4) = 0
  loc_EA8EAF: var_8C(6) = arg_C
  loc_EA8EB9: var_8C(8) = 4
  loc_EA8EC3: var_8C = 0
  loc_EA8ED4: Me(12) = (Me(12) + 1)
  loc_EA8EE7: var_94 = Me(8)(Me(12))
  loc_EA8EEC: var_94(4) = 0
  loc_EA8EF4: var_94(6) = arg_C
  loc_EA8EFE: var_94(8) = 6
  loc_EA8F08: var_94 = 0
  loc_EA8F19: Me(12) = (Me(12) + 1)
  loc_EA8F1E: Exit Sub
End Sub

Public Sub Proc_303_8_E5D1F8(arg_C, arg_10) 'E5D1F8
  'Data Table: 41D3E8
  Dim var_8C As Long
  loc_E5D1BE: var_8C = Me(8)(Me(12))
  loc_E5D1C4: var_8C(4) = arg_C
  loc_E5D1CD: If Not(arg_10) Then
  loc_E5D1D5:   var_8C(8) = 2
  loc_E5D1DA: End If
  loc_E5D1DF: var_8C = 0
  loc_E5D1F0: Me(12) = (Me(12) + 1)
  loc_E5D1F5: Exit Sub
End Sub

Public Sub Proc_303_9_E3F91C(arg_C) 'E3F91C
  'Data Table: 41D3E8
  Dim MemVar_525C8A4B As Integer
  loc_E3F8EE: If (arg_C < 0) Then
  loc_E3F903:   var_86 = CByte(((CLng(arg_C) + &H10000) / &H100)) 'Byte
  loc_E3F90A: Else
  loc_E3F913:   var_86 = CByte((arg_C / 256)) 'Byte
  loc_E3F917: End If
  loc_E3F917: Result =  Exit Sub 'Byte
  loc_E3F91A: MemVar_525C8A4B = ( >= )
End Sub

Public Sub Proc_303_10_E06650(arg_C) 'E06650
  'Data Table: 41D3E8
  loc_E06649: var_86 = CByte((arg_C And 255)) 'Byte
  loc_E0664D: Result =  Exit Sub 'Byte
End Sub

Public Sub Proc_303_11_E0B51C(arg_C) 'E0B51C
  'Data Table: 41D3E8
  Dim var_86 As Integer
  loc_E0B518: var_86 = CInt(((arg_C And -65536) / &H10000))
  loc_E0B51B: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_303_12_E4CBE8(arg_C) 'E4CBE8
  'Data Table: 41D3E8
  Dim var_86 As Integer
  loc_E4CBBF: If ((arg_C And &HFFFF) > &H7FFF) Then
  loc_E4CBD2:   var_86 = CInt(((arg_C And &HFFFF) - &H10000))
  loc_E4CBD8: Else
  loc_E4CBE2:   var_86 = CInt((arg_C And &HFFFF))
  loc_E4CBE5: End If
  loc_E4CBE5: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_303_13_E5542C(arg_C) 'E5542C
  'Data Table: 41D3E8
  Dim MemVar_919494 As Collection
  loc_E553F8: On Error Resume Next
  loc_E55425: On Error GoTo 0
  loc_E5542A: Result CInt(MemVar_919494.Item(CVar(UCase$(arg_C)))) End Sub 'Integer
End Sub

Public Sub Proc_303_14_E5DD18(arg_C) 'E5DD18
  'Data Table: 41D3E8
  Dim MemVar_919494 As Collection
  loc_E5DCD8: On Error Resume Next
  loc_E5DD05: On Error GoTo 0
  loc_E5DD15: Result (CInt(MemVar_919494.Item(CVar(UCase$(arg_C)))) <> 0) End Sub 'Integer
End Sub

Public Sub Proc_303_15_E6D4D4(arg_C, arg_10, arg_14) 'E6D4D4
  'Data Table: 41D3E8
  loc_E6D4A6: If arg_14 Then
  loc_E6D4C4:   g_C, arg_10, var_C4, var_E4 arg_C, arg_10, var_C4, var_E4
  loc_E6D4D0: End If
  loc_E6D4D0: Exit Sub
End Sub

Public Sub Proc_303_16_11BAAFC
  'Data Table: 41D3E8
  loc_11BA698: Me(16) = New 
  loc_11BA6A2: Me(20) = New 
  loc_11BA6B8: Proc_303_15_E6D4D4(8, "BACKSPACE")
  loc_11BA6D0: Proc_303_15_E6D4D4(8, "BS")
  loc_11BA6E8: Proc_303_15_E6D4D4(8, "BKSP", 0)
  loc_11BA700: Proc_303_15_E6D4D4(&H13, "BREAK", &HFF)
  loc_11BA718: Proc_303_15_E6D4D4(&H14, "CAPSLOCK", 0)
  loc_11BA730: Proc_303_15_E6D4D4(&H2E, "DELETE", &HFF)
  loc_11BA748: Proc_303_15_E6D4D4(&H2E, "DEL", &HFF)
  loc_11BA760: Proc_303_15_E6D4D4(&H28, "DOWN", &HFF)
  loc_11BA778: Proc_303_15_E6D4D4(&H23, "END", &HFF)
  loc_11BA790: Proc_303_15_E6D4D4(&HD, "ENTER", 0)
  loc_11BA7A8: Proc_303_15_E6D4D4(&H1B, "ESC", 0)
  loc_11BA7C0: Proc_303_15_E6D4D4(&H2F, "HELP", 0)
  loc_11BA7D8: Proc_303_15_E6D4D4(&H24, "HOME", &HFF)
  loc_11BA7F0: Proc_303_15_E6D4D4(&H2D, "INS", &HFF)
  loc_11BA808: Proc_303_15_E6D4D4(&H2D, "INSERT", &HFF)
  loc_11BA820: Proc_303_15_E6D4D4(&H25, "LEFT", &HFF)
  loc_11BA838: Proc_303_15_E6D4D4(&H90, "NUMLOCK", &HFF)
  loc_11BA850: Proc_303_15_E6D4D4(&H22, "PGDN", &HFF)
  loc_11BA868: Proc_303_15_E6D4D4(&H21, "PGUP", &HFF)
  loc_11BA880: Proc_303_15_E6D4D4(&H13, "PAUSE", 0)
  loc_11BA898: Proc_303_15_E6D4D4(&H2A, "PRINT", &HFF)
  loc_11BA8B0: Proc_303_15_E6D4D4(&H2C, "PRTSC", &HFF)
  loc_11BA8C8: Proc_303_15_E6D4D4(&H2C, "PRTSCN", &HFF)
  loc_11BA8E0: Proc_303_15_E6D4D4(&H2C, "PRINTSCRN", &HFF)
  loc_11BA8F8: Proc_303_15_E6D4D4(&H2C, "PRINTSCREEN", &HFF)
  loc_11BA910: Proc_303_15_E6D4D4(&H27, "RIGHT", &HFF)
  loc_11BA928: Proc_303_15_E6D4D4(&H91, "SCROLLLOCK", 0)
  loc_11BA940: Proc_303_15_E6D4D4(&H29, "SELECT", 0)
  loc_11BA958: Proc_303_15_E6D4D4(9, "TAB", 0)
  loc_11BA970: Proc_303_15_E6D4D4(&H26, "UP", &HFF)
  loc_11BA988: Proc_303_15_E6D4D4(&H70, "F1", 0)
  loc_11BA9A0: Proc_303_15_E6D4D4(&H71, "F2", 0)
  loc_11BA9B8: Proc_303_15_E6D4D4(&H72, "F3", 0)
  loc_11BA9D0: Proc_303_15_E6D4D4(&H73, "F4", 0)
  loc_11BA9E8: Proc_303_15_E6D4D4(&H74, "F5", 0)
  loc_11BAA00: Proc_303_15_E6D4D4(&H75, "F6", 0)
  loc_11BAA18: Proc_303_15_E6D4D4(&H76, "F7", 0)
  loc_11BAA30: Proc_303_15_E6D4D4(&H77, "F8", 0)
  loc_11BAA48: Proc_303_15_E6D4D4(&H78, "F9", 0)
  loc_11BAA60: Proc_303_15_E6D4D4(&H79, "F10", 0)
  loc_11BAA78: Proc_303_15_E6D4D4(&H7A, "F11", 0)
  loc_11BAA90: Proc_303_15_E6D4D4(&H7B, "F12", 0)
  loc_11BAAA8: Proc_303_15_E6D4D4(&H7C, "F13", 0)
  loc_11BAAC0: Proc_303_15_E6D4D4(&H7D, "F14", 0)
  loc_11BAAD8: Proc_303_15_E6D4D4(&H7E, "F15", 0)
  loc_11BAAF0: Proc_303_15_E6D4D4(&H7F, "F16", 0)
  loc_11BAAF8: Exit Sub
End Sub

Public Sub Proc_303_17_E1A7D8
  'Data Table: 41D3E8
  loc_E1A7D5: Result CBool((GetKeyState(&H14) And 1)) End Sub 'Integer
End Sub
