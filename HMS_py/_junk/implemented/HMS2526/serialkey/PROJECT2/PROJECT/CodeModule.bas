
Public Sub Proc_8_0_7BFE10
  'Data Table: 65006400

End Sub

Public Sub Proc_8_1_7CFDEC
Error procedure
End Sub

Public Sub Proc_8_2_E00B04(arg_C) 'E00B04
  'Data Table: 41C03C
  Dim var_88 As Long
  loc_E00AFF: var_88 = arg_C
  loc_E00B02: Exit Sub
End Sub

Public Sub Proc_8_3_EDFF28(arg_C, arg_10) 'EDFF28
  'Data Table: 41C03C
  Dim var_90 As Long
  Dim var_CC As Variant
  Dim var_88 As Long
  loc_EDFE74: On Error Resume Next
  loc_EDFE7C: var_8C = vbNullString
  loc_EDFE8C: For var_9C = 0 To arg_10: var_90 = var_9C 'Long
  loc_EDFEAB:   If (CInt(arg_C(0).var_90(var_90).global_0) = 0) Then
  loc_EDFEB5:     var_90 = &H1869F
  loc_EDFEBB:   Else
  loc_EDFEE1:     var_CC = (CVar(var_8C) + Chr(CLng(arg_C(0).var_90(var_90).global_0)))
  loc_EDFEE6:     var_8C = CStr(var_CC)
  loc_EDFEF0:   End If
  loc_EDFEF5: Next var_9C 'Long
  loc_EDFF05: Me(0) = Me(0) & var_8C
  loc_EDFF10: var_94 = vbNullString
  loc_EDFF15: DoEvents()
  loc_EDFF21: var_88 = 0
  loc_EDFF26: Exit Sub
End Sub

Public Sub Proc_8_4_E9EC28(arg_C, arg_10) 'E9EC28
  'Data Table: 41C03C
  Dim var_88 As Long
  loc_E9EBA4: On Error Resume Next
  loc_E9EBAC: var_8C = vbNullString
  loc_E9EBC2: For var_98 = 0 To (arg_10 - 1): var_90 = var_98 'Long
  loc_E9EBE1:   If (CInt(arg_C(0).var_90(var_90).global_0) = 0) Then
  loc_E9EBE6:     GoTo loc_E9EC1A
  loc_E9EBE9:   End If
  loc_E9EC0A:   var_8C = var_8C & Chr$(CLng(arg_C(0).var_90(var_90).global_0))
  loc_E9EC15: Next var_98 'Long
  loc_E9EC1A: ' Referenced from: E9EBE6
  loc_E9EC21: var_88 = 0
  loc_E9EC26: Exit Sub
End Sub

Public Sub Proc_8_5_E0BB7C
  'Data Table: 41C03C
  Dim var_88 As Long
  loc_E0BB6C: On Error Resume Next
  loc_E0BB76: var_88 = 1
  loc_E0BB7B: Exit Sub
End Sub

Public Sub Proc_8_6_E491D0
  'Data Table: 41C03C
  Dim arg_10(0).0(0).global_0 As Byte
  loc_E4919C: On Error Resume Next
  loc_E491B8: arg_10(0).0(0).global_0 = CByte(0)
  loc_E491C4: CopyBytes 4097
  loc_E491C9: ExitProcFrameCb &H1001EF7A
End Sub

Public Sub Proc_8_7_103CB48(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '103CB48
  'Data Table: 41C03C
  Dim var_9C As Long
  Dim var_98 As Long
  Dim var_11C As Long
  Dim var_118 As Long
  Dim var_114 As Long
  Dim var_110 As Long
  Dim var_10C As Long
  Dim var_108 As Long
  Dim var_104 As Long
  Dim var_100 As Long
  Dim var_FC As Long
  Dim var_F8 As Long
  Dim var_F4 As Long
  Dim var_F0 As Long
  Dim var_EC As Long
  Dim var_E8 As Long
  Dim var_E4 As Long
  Dim var_E0 As Long
  Dim var_DC As Long
  Dim var_D8 As Long
  Dim var_124 As Long
  Dim var_88 As Long
  loc_103C954: On Error Resume Next
  loc_103C95C: Me(0) = vbNullString
  loc_103C985: var_9C = Proc_8_2_E00B04(MemVar_41C19C, Proc_8_2_E00B04(MemVar_41C190))
  loc_103C98F: var_98 = 0
  loc_103C9A2: var_118 = CLng(arg_2C)
  loc_103C9AB: var_114 = CLng(arg_30)
  loc_103C9B5: var_110 = 0
  loc_103C9BF: var_10C = 0
  loc_103C9C8: var_108 = CLng(arg_34)
  loc_103C9D2: var_104 = 0
  loc_103C9DC: var_100 = 0
  loc_103C9E5: var_FC = CLng(arg_38)
  loc_103C9EE: var_F8 = CLng(arg_3C)
  loc_103C9F7: var_F4 = CLng(Proc_8_7_103CB480)
  loc_103CA00: var_F0 = CLng(Proc_8_7_103CB484)
  loc_103CA09: var_EC = CLng(arg_18)
  loc_103CA12: var_E8 = CLng(arg_1C)
  loc_103CA1B: var_E4 = CLng(Proc_8_7_103CB488)
  loc_103CA24: var_E0 = CLng(Proc_8_7_103CB48C)
  loc_103CA2D: var_DC = CLng(arg_50)
  loc_103CA36: var_D8 = CLng(arg_54)
  loc_103CA97: var_B0 = CByte(0) 'Byte
  loc_103CAA2: var_AC = 0
  loc_103CAB2: var_A8 = UCase$(arg_28)
  loc_103CADF: var_124 = ZpSetOptions(Record Of arg_B, 0, ZpInit(Proc_8_2_E00B04(MemVar_41C178), 0, 0, 0, 0, 0, 0, 0), var_124, CLng(arg_24), CLng(arg_20))
  loc_103CAE9: var_11C = arg_B
  loc_103CB23: arg_14 = arg_D
  loc_103CB37: var_32C = "": Set arg_D = Null 'Destruct battery of vars and single variable
  loc_103CB42: var_88 = ZpArchive(CLng(arg_C), arg_10, Record Of arg_D, arg_14, ZpArchive(CLng(arg_C), arg_10, Record Of arg_D, arg_14, var_124, "": Set arg_B = Null, var_124), "": Set arg_B = Null, ZpArchive(CLng(arg_C), arg_10, Record Of arg_D, arg_14, var_124, "": Set arg_B = Null, var_124))
  loc_103CB47: Exit Sub
End Sub

Public Sub Proc_8_8_116959C(arg_C) '116959C
  'Data Table: 41C03C
  Dim var_90 As String
  loc_11691E8: On Error Resume Next
  loc_1169212: If (Me(4) = 0) Then
  loc_1169227:   arg_50 = Mid$("Filename:", &H32, 1)
  loc_116923C:   arg_50 = Mid$("Size", 4, &H35)
  loc_1169251:   arg_50 = Mid$("Date", 4, &H3E)
  loc_1169266:   arg_50 = Mid$("Time", 4, &H47)
  loc_1169272:   Me(8) = CStr(Space(&H50)) & vbCrLf
  loc_116928E:   var_90 = CStr(Space(&H50))
  loc_1169295: End If
  loc_116929C: var_88 = vbNullString
  loc_11692AE: For var_A8 = 0 To &HFF: var_8C = var_A8 'Long
  loc_11692CD:   If (CInt(arg_30(0).var_8C(var_8C).global_0) = 0) Then
  loc_11692D2:     GoTo loc_1169314
  loc_11692D5:   End If
  loc_1169300:   var_88 = CStr(CVar(var_88) & Chr(CLng(arg_30(0).var_8C(var_8C).global_0)))
  loc_116930F: Next var_A8 'Long
  loc_1169314: ' Referenced from: 11692D2
  loc_1169344: arg_50 = Mid$(CStr(Mid(var_88, 1, 50)), &H32, 1)
  loc_1169390: arg_50 = Mid$(CStr(Right("        " & Str(arg_C), 7)), 7, &H33)
  loc_11693F2: arg_50 = Mid$(CStr(Right("0" & Trim(Str(arg_18)), 2) & "/"), 3, &H3C)
  loc_1169458: arg_50 = Mid$(CStr(Right("0" & Trim(Str(arg_1C)), 2) & "/"), 3, &H3F)
  loc_11694B5: arg_50 = Mid$(CStr(Right("0" & Trim(Str(arg_20)), 2)), 2, &H42)
  loc_1169505: arg_50 = Mid$(CStr(Right(Str(arg_24), 2) & ":"), 3, &H46)
  loc_116955E: arg_50 = Mid$(CStr(Right("0" & Trim(Str(arg_28)), 2)), 2, &H49)
  loc_1169581: Me(8) = Me(8) & var_90 & vbCrLf
  loc_1169594: Me(4) = (Me(4) + 1)
  loc_116959B: Exit Sub
End Sub

Public Sub Proc_8_9_F033C0(arg_C, arg_10) 'F033C0
  'Data Table: 41C03C
  Dim var_88 As Long
  loc_F032E4: On Error Resume Next
  loc_F032EC: var_8C = vbNullString
  loc_F03302: For var_98 = 0 To (arg_10 - 1): var_90 = var_98 'Long
  loc_F03321:   If (CInt(arg_C(0).var_90(var_90).global_0) = 0) Then
  loc_F03326:     GoTo loc_F03368
  loc_F03329:   End If
  loc_F03354:   var_8C = CStr(CVar(var_8C) & Chr(CLng(arg_C(0).var_90(var_90).global_0)))
  loc_F03363: Next var_98 'Long
  loc_F03368: ' Referenced from: F03326
  loc_F0338A: If (Mid$(var_8C, 1, 1) = vbLf) Then
  loc_F03392:   var_8C = vbCrLf
  loc_F03395: End If
  loc_F033A0: Me(12) = Me(12) & var_8C
  loc_F033AD: Me(0) = Me(12)
  loc_F033B9: var_88 = 0
  loc_F033BE: Exit Sub
End Sub

Public Sub Proc_8_10_EB2F88(arg_C, arg_10) 'EB2F88
  'Data Table: 41C03C
  Dim var_C8 As Variant
  Dim arg_BFF As Double
  loc_EB2EF4: On Error Resume Next
  loc_EB2EFC: var_8C = vbNullString
  loc_EB2F12: For var_98 = 0 To (arg_10 - 1): var_90 = var_98 'Long
  loc_EB2F31:   If (CInt(arg_C(0).var_90(var_90).global_0) = 0) Then
  loc_EB2F36:     GoTo loc_EB2F78
  loc_EB2F39:   End If
  loc_EB2F5F:   var_C8 = (CVar(var_8C) + Chr(CLng(arg_C(0).var_90(var_90).global_0)))
  loc_EB2F64:   var_8C = CStr(var_C8)
  loc_EB2F73: Next var_98 'Long
  loc_EB2F78: ' Referenced from: EB2F36
  loc_EB2F84: Exit Sub
  loc_EB2F85: arg_BFF = 0
End Sub

Public Sub Proc_8_11_FDD7D4(arg_C, arg_10, arg_14) 'FDD7D4
  'Data Table: 41C03C
  Dim var_D4 As Variant
  Dim arg_C(0).CLng(var_8E)(CLng(var_8E)).global_0 As Byte
  loc_FDD614: On Error Resume Next
  loc_FDD628: If (Me(16) = 1) Then
  loc_FDD62D:   Result 1 End Sub 'Integer
  loc_FDD62E: End If
  loc_FDD652: var_94 = InputBox("Please Enter The Password!", var_D4, var_F4, var_114, var_134, var_154, var_174)
  loc_FDD670: If (var_94 = vbNullString) Then
  loc_FDD677:   Me(16) = 1
  loc_FDD67E:   Result  End Sub 'Integer
  loc_FDD67F: End If
  loc_FDD68B: For var_178 = 0 To 255: var_8E = var_178 'Integer
  loc_FDD6AB:   If (CInt(arg_14(0).CLng(var_8E)(CLng(var_8E)).global_0) = 0) Then
  loc_FDD6B0:     GoTo loc_FDD6FA
  loc_FDD6B6:   Else
  loc_FDD6E4:     var_8C = CStr(CVar(var_8C) & Chr(CLng(arg_14(0).CLng(var_8E)(CLng(var_8E)).global_0)))
  loc_FDD6EE:   End If
  loc_FDD6F5: Next var_178 'Integer
  loc_FDD6FA: ' Referenced from: FDD6B0
  loc_FDD70B: For var_17C = 0 To CInt((arg_10 - 1)): var_8E = var_17C 'Integer
  loc_FDD726:   arg_C(0).CLng(var_8E)(CLng(var_8E)).global_0 = CByte(0)
  loc_FDD72F: Next var_17C 'Integer
  loc_FDD746: For var_180 = 0 To CInt((Len(var_94) - 1)): var_8E = var_180 'Integer
  loc_FDD765:   var_D4 = Mid(var_94, CLng((var_8E + 1)), 1)
  loc_FDD787:   arg_C(0).CLng(var_8E)(CLng(var_8E)).global_0 = CByte(Asc(CStr(CVar(var_8C) & Chr(CLng(arg_14(0).CLng(var_8E)(CLng(var_8E)).global_0)))))
  loc_FDD79A: Next var_180 'Integer
  loc_FDD7C2: arg_C(0).CLng(var_8E)(CLng(var_8E)).global_0 = CByte(Chr(0))
  loc_FDD7D2: Result 0 End Sub 'Integer
End Sub

Public Sub Proc_8_12_F6E310(arg_C) 'F6E310
  'Data Table: 41C03C
  Dim var_88 As Long
  Dim var_90 As Long
  Dim var_B8 As Variant
  loc_F6E1E8: On Error Resume Next
  loc_F6E1F2: var_88 = &H64
  loc_F6E1FA: var_8C = vbNullString
  loc_F6E20C: For var_98 = 0 To &HFF: var_90 = var_98 'Long
  loc_F6E22B:   If (CInt(arg_C(0).var_90(var_90).global_0) = 0) Then
  loc_F6E235:     var_90 = &H1869F
  loc_F6E23B:   Else
  loc_F6E266:     var_8C = CStr(CVar(var_8C) & Chr(CLng(arg_C(0).var_90(var_90).global_0)))
  loc_F6E270:   End If
  loc_F6E275: Next var_98 'Long
  loc_F6E282: var_B8 = "VBUnZip32 - File Already Exists!"
  loc_F6E2BC: var_90 = MsgBox(CVar("Overwrite " & var_8C & "?"), CLng(CStr(&H30) & CStr(3)), CVar(var_8C), var_F8, var_118)
  loc_F6E2E0: If (var_90 = 7) Then
  loc_F6E2E5:   Exit Sub
  loc_F6E2E6: End If
  loc_F6E2F1: If (var_90 = 2) Then
  loc_F6E2FB:   var_88 = &H68
  loc_F6E300:   Exit Sub
  loc_F6E301: End If
  loc_F6E30A: var_88 = &H66
  loc_F6E30F: Exit Sub
End Sub

Public Sub Proc_8_13_EC9024(arg_C) 'EC9024
  'Data Table: 41C03C
  Dim var_8A As Integer
  Dim var_8C As Integer
  Dim var_BE As Integer
  loc_EC8FA1: var_8A = CInt(InStr(1, CVar(arg_C), Chr(0), 0))
  loc_EC8FB0: var_8C = CInt(Len(arg_C))
  loc_EC8FB6: var_BE = var_8A
  loc_EC8FBF: If (var_BE > 1) Then
  loc_EC8FD4:   var_9C = Left(arg_C, CLng((var_8A - 1)))
  loc_EC8FE8:   var_88 = CStr(Trim(Chr(0)))
  loc_EC8FF5: Else
  loc_EC8FFB:   If (var_BE = 1) Then
  loc_EC9001:     var_88 = vbNullString
  loc_EC9007:   Else
  loc_EC901B:     var_88 = CStr(Trim(arg_C))
  loc_EC9021:   End If
  loc_EC9021: End If
  loc_EC9021: Exit Sub
End Sub

Public Sub Proc_8_14_117FAEC(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '117FAEC
  'Data Table: 41C03C
  Dim var_488 As Long
  Dim var_49C As String
  Dim var_4A0 As Long
  Dim var_4A4 As Long
  Dim var_850 As Long
  Dim var_8C As Long
  Dim var_88 As Long
  loc_117F810: On Error Goto loc_117FA84
  loc_117F816: Me(0) = vbNullString
  loc_117F82E: var_2F4.0(0).global_0 = 0
  loc_117F845: var_484.0(0).global_0 = 0
  loc_117F84B: Me(4) = 0
  loc_117F855: Me(8) = 0
  loc_117F85F: Me(12) = 0
  loc_117F866: Me(16) = 0
  loc_117F86E: var_488 = var_D0
  loc_117F875: var_488(0) = CLng(arg_30)
  loc_117F87E: var_488(4) = CLng(arg_18)
  loc_117F887: var_488(8) = CLng(arg_1C)
  loc_117F890: var_488(12) = CLng(arg_20)
  loc_117F899: var_488(16) = CLng(arg_24)
  loc_117F8A2: var_488(20) = CLng(arg_28)
  loc_117F8AB: var_488(24) = CLng(arg_2C)
  loc_117F8B4: var_488(28) = CLng(arg_14)
  loc_117F8BD: var_488(32) = CLng(arg_34)
  loc_117F8C6: var_488(36) = CLng(arg_38)
  loc_117F8CF: var_488(40) = CLng(arg_3C)
  loc_117F8D8: var_488(44) = CLng(Proc_8_14_117FAEC0)
  loc_117F8E1: var_488(48) = CLng(Proc_8_14_117FAEC4)
  loc_117F8EA: var_488(52) = CLng(Proc_8_14_117FAEC8)
  loc_117F8F3: var_488(56) = CLng(Proc_8_14_117FAECC)
  loc_117F903: var_488(60) = CStr(arg_C)
  loc_117F90E: var_488(64) = arg_10
  loc_117F91E: var_4A0 = var_FC
  loc_117F929: var_4A0(0) = Proc_8_2_E00B04(MemVar_41C1C0, var_4A0)
  loc_117F933: var_4A0(4) = 0
  loc_117F940: var_4A0(8) = Proc_8_2_E00B04(MemVar_41C1E4, 0)
  loc_117F94D: var_4A0(12) = Proc_8_2_E00B04(MemVar_41C1D8)
  loc_117F95A: var_4A0(16) = Proc_8_2_E00B04(MemVar_41C1B4)
  loc_117F967: var_4A0(20) = Proc_8_2_E00B04(MemVar_41C1CC)
  loc_117F971: var_4A0 = 0
  loc_117F977: var_4A4 = var_164
  loc_117F97F: var_4A4(0) = &H40
  loc_117F99D: var_4A4(8) = Space$(9) & vbNullString
  loc_117F9C0: var_4A4(28) = Space$(&H13) & vbNullString
  loc_117F9D4: var_49C = Space$(9)
  loc_117F9E3: var_4A4(68) = var_49C & vbNullString
  loc_117F9FB: var_4E8 = Record Of arg_31 'Copy battery of vars to single variable
  loc_117FA01: UzpVersion2(var_4E8, var_164, 0)
  loc_117FA0D: var_164 = arg_31
  loc_117FA46: var_850 = Wiz_SingleEntryUnzip(0, Record Of arg_D, var_484, 0, Record Of arg_D, var_2F4, Record Of arg_33)
  loc_117FA50: var_D0 = arg_33
  loc_117FA59: var_2F4 = arg_D
  loc_117FA62: var_484 = arg_D
  loc_117FA68: var_8C = var_850
  loc_117FA6B: var_678 = "": Set arg_D = Null 'Destruct battery of vars and single variable
  loc_117FA71: var_808 = "": Set arg_D = Null 'Destruct battery of vars and single variable
  loc_117FA77: var_84C = "": Set arg_33 = Null 'Destruct battery of vars and single variable
  loc_117FA80: var_88 = var_8C
  loc_117FA83: Exit Sub
  loc_117FA84: ' Referenced from: 117F810
  loc_117FA8C: Set var_854 = Err()
  loc_117FA92: Call 0.Method_arg_1C (var_850, var_88, var_8C, var_678, var_808, var_84C, var_850)
  loc_117FA9F: Set var_858 = Err()
  loc_117FAA5: Call 0.Method_arg_2C (var_49C, var_D0, var_FC, var_4E8)
  loc_117FAC9: Set var_8BC = Err()
  loc_117FACF: Call 0.Method_Proc_8_14_117FAEC4 (var_850, "CodeModule::VBUnzip", CVar(var_49C), var_898)
  loc_117FAE8: Exit Sub
End Sub
