Private var_98 As New cStringBuilder
Private var_8C As New cStringBuilder
Private var_B4 As New cStringBuilder
Private var_90 As New cStringBuilder

Public Sub Proc_343_0_E0670C
  'Data Table: 41DFEC
  loc_E06705: var_88 = Me(0)
  loc_E06708: Exit Sub
End Sub

Public Sub Proc_343_1_E0674C
  'Data Table: 41DFEC
  loc_E06743: Me(0) = vbNullString
  loc_E06748: Exit Sub
End Sub

Public Sub Proc_343_2_EC7730(arg_C) 'EC7730
  'Data Table: 41DFEC
  Dim var_8C As Long
  loc_EC7695: var_8C = 1
  loc_EC769D: Me(0) = vbNullString
  loc_EC76A4: On Error Resume Next
  loc_EC76AF: Proc_343_11_F698FC(arg_C, var_8C)
  loc_EC76D1: var_DC = Mid(arg_C, var_8C, 1) 'Variant
  loc_EC76E5: If (var_DC = "{") Then
  loc_EC76F5:   Set var_88 = Proc_343_3_106C094(arg_C, var_8C)
  loc_EC76FB: Else
  loc_EC7708:   If (var_DC = "[") Then
  loc_EC7718:     Set var_88 = Proc_343_4_108055C(arg_C, var_8C)
  loc_EC771E:   Else
  loc_EC7725:     Me(0) = "Invalid JSON"
  loc_EC772A:   End If
  loc_EC772A: End If
  loc_EC772E: Exit Sub
End Sub

Public Sub Proc_343_3_106C094(arg_C, arg_10) '106C094
  'Data Table: 41DFEC
  Dim var_BC As Integer
  Dim var_F0 As String
  Dim arg_10 As Long
  loc_106BE2C: Set var_88 = New 
  loc_106BE37: Proc_343_11_F698FC(arg_C)
  loc_106BE3E: var_BC = 1
  loc_106BE68: If CBool(Mid(arg_C, arg_10, var_BC) <> "{") Then
  loc_106BE76:   var_F0 = Me(0) & "Invalid Object at position "
  loc_106BEB3:   Me(0) = CStr(CVar(var_F0 & CStr(arg_10) & " : ") & Mid(arg_C, arg_10, var_BC) & vbCrLf)
  loc_106BED1:   Exit Sub
  loc_106BED2: End If
  loc_106BEDF: arg_10 = (arg_10 + 1)
  loc_106BEE4: ' Referenced from: 106C08B
  loc_106BEEC: Proc_343_11_F698FC(arg_C, arg_10)
  loc_106BF1D: If ("}" = Mid(arg_C, arg_10, 1)) Then
  loc_106BF2B:   arg_10 = (arg_10 + 1)
  loc_106BF30:   GoTo loc_106C08E
  loc_106BF36: Else
  loc_106BF62:   If ("," = Mid(arg_C, arg_10, 1)) Then
  loc_106BF70:     arg_10 = (arg_10 + 1)
  loc_106BF7B:     Proc_343_11_F698FC(arg_C, arg_10, arg_10)
  loc_106BF83:   Else
  loc_106BF8D:     If (arg_10 > Len(arg_C)) Then
  loc_106BFAE:       var_BC = Right(arg_C, &H14)
  loc_106BFC4:       Me(0) = CStr(CVar(Me(0) & "Missing '}':     ") & var_BC & vbCrLf)
  loc_106BFDA:     Else
  loc_106BFDA:     End If
  loc_106BFDA:   End If
  loc_106BFE9:   var_8C = Proc_343_10_1026F68(arg_C, arg_10, arg_10)
  loc_106BFEE:   On Error Resume Next
  loc_106BFFC:   Proc_343_5_F2E42C(var_BC, arg_C, arg_10)
  loc_106C00F:   Call 0.Method_arg_28 (var_8C, var_BC)
  loc_106C021:   Set var_11C = Err()
  loc_106C027:   Call 0.Method_arg_1C (var_120, arg_10)
  loc_106C038:   If (var_120 <> 0) Then
  loc_106C04A:     Set var_11C = Err()
  loc_106C050:     Call 0.Method_arg_2C (var_F0, Me(0))
  loc_106C06E:     Me(0) = arg_10 & var_F0 & ":   " & var_8C & vbCrLf
  loc_106C087:   Else
  loc_106C08B:     GoTo loc_106BEE4
  loc_106C08E:   End If
  loc_106C08E: End If
  loc_106C08E: ' Referenced from: 106BF30
  loc_106C090: Exit Sub
End Sub

Public Sub Proc_343_4_108055C(arg_C, arg_10) '108055C
  'Data Table: 41DFEC
  Dim var_B8 As Integer
  Dim var_EC As String
  Dim var_100 As Variant
  Dim var_E8 As Variant
  Dim arg_10 As Long
  Dim var_C8 As Variant
  Dim var_88 As Collection
  loc_10802D0: Set var_88 = New 
  loc_10802DB: Proc_343_11_F698FC(arg_C)
  loc_108030C: If CBool(Mid(arg_C, arg_10, 1) <> "[") Then
  loc_108031A:   var_EC = Me(0) & "Invalid Array at position "
  loc_1080349:   var_E8 = (" : " + Mid(arg_C, arg_10, 20))
  loc_108035B:   Me(0) = CStr(CVar(var_EC & CStr(arg_10)) & var_E8 & vbCrLf)
  loc_1080379:   Exit Sub
  loc_108037A: End If
  loc_1080387: arg_10 = (arg_10 + 1)
  loc_108038C: ' Referenced from: 1080553
  loc_1080394: Proc_343_11_F698FC(arg_C, arg_10)
  loc_10803C5: If ("]" = Mid(arg_C, arg_10, 1)) Then
  loc_10803D3:   arg_10 = (arg_10 + 1)
  loc_10803D8:   GoTo loc_1080556
  loc_10803DE: Else
  loc_108040A:   If ("," = Mid(arg_C, arg_10, 1)) Then
  loc_1080418:     arg_10 = (arg_10 + 1)
  loc_1080423:     Proc_343_11_F698FC(arg_C, arg_10, arg_10)
  loc_108042B:   Else
  loc_1080435:     If (arg_10 > Len(arg_C)) Then
  loc_1080443:       var_C8 = CVar(Me(0) & "Missing ']':     ") 'String
  loc_1080456:       var_B8 = Right(arg_C, &H14)
  loc_108045E:       var_E8 = var_C8 & var_B8 
  loc_1080467:       var_100 = var_E8 & vbCrLf 
  loc_108046C:       Me(0) = CStr(var_100)
  loc_1080482:     Else
  loc_1080482:     End If
  loc_1080482:   End If
  loc_1080486:   On Error Resume Next
  loc_1080494:   Proc_343_5_F2E42C(var_B8, arg_C, arg_10)
  loc_10804A8:   var_88.Add var_B8, var_C8, var_E8, var_100
  loc_10804C2:   Set var_134 = Err()
  loc_10804C8:   Call 0.Method_arg_1C (var_138, arg_10)
  loc_10804D9:   If (var_138 <> 0) Then
  loc_10804EB:     Set var_134 = Err()
  loc_10804F1:     Call 0.Method_arg_2C (var_EC, Me(0))
  loc_108052D:     Me(0) = CStr(CVar(arg_10 & var_EC & ":   ") & Mid(arg_C, arg_10, 20) & vbCrLf)
  loc_108054F:   Else
  loc_1080553:     GoTo loc_108038C
  loc_1080556:   End If
  loc_1080556: End If
  loc_1080556: ' Referenced from: 10803D8
  loc_1080558: Exit Sub
End Sub

Public Sub Proc_343_5_F2E42C
  'Data Table: 41DFEC
  Dim var_C4 As Variant
  loc_F2E322: Proc_343_11_F698FC(arg_10)
  loc_F2E342: var_E4 = Mid(arg_10, arg_14, 1) 'Variant
  loc_F2E354: If (var_E4 = "{") Then
  loc_F2E362:   var_94 = Proc_343_3_106C094(arg_10, arg_14) 'Address Function
  loc_F2E369: Else
  loc_F2E374:   If (var_E4 = "[") Then
  loc_F2E382:     var_94 = Proc_343_4_108055C(arg_10, arg_14) 'Address Function
  loc_F2E389:   Else
  loc_F2E394:     If Not (var_E4 = """") Then
  loc_F2E3A2:       If (var_E4 = "'") Then
  loc_F2E3A5:       End If
  loc_F2E3B0:       var_C4 = CVar(Proc_343_6_10D5280(arg_10, arg_14)) 'String
  loc_F2E3B3:       var_94 = var_C4 'Variant
  loc_F2E3BA:     Else
  loc_F2E3C5:       If Not (var_E4 = "t") Then
  loc_F2E3D3:         If (var_E4 = "f") Then
  loc_F2E3D6:         End If
  loc_F2E3E5:         var_94 = Proc_343_8_F1CABC(arg_10, arg_14) 'Variant
  loc_F2E3EC:       Else
  loc_F2E3F7:         If (var_E4 = "n") Then
  loc_F2E403:           Proc_343_9_EEFEF8(var_C4, arg_10)
  loc_F2E40B:           var_94 = var_C4 'Variant
  loc_F2E412:         Else
  loc_F2E41B:           Proc_343_7_EBEC10(var_C4, arg_10, arg_14)
  loc_F2E423:           var_94 = var_C4 'Variant
  loc_F2E427:         End If
  loc_F2E427:       End If
  loc_F2E427:     End If
  loc_F2E427:   End If
  loc_F2E427: End If
  loc_F2E427: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_343_6_10D5280(arg_C, arg_10) '10D5280
  'Data Table: 41DFEC
  Dim arg_10 As Long
  loc_10D4F92: Proc_343_11_F698FC(arg_C)
  loc_10D4FB3: var_8C = CStr(Mid(arg_C, arg_10, 1))
  loc_10D4FC6: arg_10 = (arg_10 + 1)
  loc_10D4FC9: ' Referenced from: 10D525D
  loc_10D4FDB: If ((arg_10 > 0) And (arg_10 <= Len(arg_C))) Then
  loc_10D5007:   var_DC = CStr(Mid(arg_C, arg_10, 1))
  loc_10D5012:   If (var_DC = "\") Then
  loc_10D501E:     arg_10 = (arg_10 + 1)
  loc_10D503D:     var_90 = CStr(Mid(arg_C, arg_10, 1))
  loc_10D504A:     var_E0 = var_90
  loc_10D5055:     If Not (var_E0 = """") Then
  loc_10D5060:       If Not (var_E0 = "\") Then
  loc_10D506B:         If Not (var_E0 = "/") Then
  loc_10D5076:           If (var_E0 = "'") Then
  loc_10D5079:           End If
  loc_10D5079:         End If
  loc_10D5079:       End If
  loc_10D5082:       Call var_98.Append(var_90)
  loc_10D5090:       arg_10 = (arg_10 + 1)
  loc_10D5096:     Else
  loc_10D509E:       If (var_E0 = "b") Then
  loc_10D50B0:         Call var_98.Append("")
  loc_10D50C1:         arg_10 = (arg_10 + 1)
  loc_10D50C7:       Else
  loc_10D50CF:         If (var_E0 = "f") Then
  loc_10D50E1:           Call var_98.Append("")
  loc_10D50F2:           arg_10 = (arg_10 + 1)
  loc_10D50F8:         Else
  loc_10D5100:           If (var_E0 = "n") Then
  loc_10D5112:             Call var_98.Append(vbLf)
  loc_10D5123:             arg_10 = (arg_10 + 1)
  loc_10D5129:           Else
  loc_10D5131:             If (var_E0 = "r") Then
  loc_10D5143:               Call var_98.Append(vbCr)
  loc_10D5154:               arg_10 = (arg_10 + 1)
  loc_10D515A:             Else
  loc_10D5162:               If (var_E0 = "t") Then
  loc_10D5174:                 Call var_98.Append("	")
  loc_10D5185:                 arg_10 = (arg_10 + 1)
  loc_10D518B:               Else
  loc_10D5193:                 If (var_E0 = "u") Then
  loc_10D519F:                   arg_10 = (arg_10 + 1)
  loc_10D51EE:                   Call var_98.Append(CStr(ChrW(CLng(Val("&h" & CStr(Mid(arg_C, arg_10, 4)))))))
  loc_10D5206:                   arg_10 = (arg_10 + 4)
  loc_10D5209:                 End If
  loc_10D5209:               End If
  loc_10D5209:             End If
  loc_10D5209:           End If
  loc_10D5209:         End If
  loc_10D5209:       End If
  loc_10D5209:     End If
  loc_10D520C:   Else
  loc_10D5214:     If (var_DC = var_8C) Then
  loc_10D5220:       arg_10 = (arg_10 + 1)
  loc_10D5234:       var_88 = var_98.toString
  loc_10D523C:       Set var_98 = Nothing
  loc_10D523F:       Exit Sub
  loc_10D5243:     Else
  loc_10D524C:       Call var_98.Append(var_90)
  loc_10D525A:       arg_10 = (arg_10 + 1)
  loc_10D525D:     End If
  loc_10D525D:   End If
  loc_10D525D:   GoTo loc_10D4FC9
  loc_10D5260: End If
  loc_10D5271: var_88 = var_98.toString
  loc_10D5279: Set var_98 = Nothing
  loc_10D527C: Exit Sub
End Sub

Public Sub Proc_343_7_EBEC10
  'Data Table: 41DFEC
  Dim var_CC As Integer
  Dim arg_14 As Long
  loc_EBEB7E: Proc_343_11_F698FC(arg_10)
  loc_EBEB83: ' Referenced from: EBEC09
  loc_EBEB95: If ((arg_14 > 0) And (arg_14 <= Len(arg_10))) Then
  loc_EBEBB4:   var_9C = CStr(Mid(arg_10, arg_14, 1))
  loc_EBEBD2:   If CBool(InStr(1, "+-0123456789.eE", var_9C, 0)) Then
  loc_EBEBDC:     var_98 = var_98 & var_9C
  loc_EBEBE8:     arg_14 = (arg_14 + 1)
  loc_EBEBEE:   Else
  loc_EBEBF9:     Call var_CC = CDec(var_98)
  loc_EBEC01:     var_94 = 1 'Variant
  loc_EBEC05:     Result = arg_10:   Exit Sub
  loc_EBEC09:   End If
  loc_EBEC09:   GoTo loc_EBEB83
  loc_EBEC0C: End If
  loc_EBEC0C: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_343_8_F1CABC(arg_C, arg_10) 'F1CABC
  'Data Table: 41DFEC
  Dim var_B8 As Integer
  Dim var_86 As Integer
  Dim arg_10 As Long
  loc_F1C9D2: Proc_343_11_F698FC(arg_C)
  loc_F1CA01: If (Mid(arg_C, arg_10, 4) = "true") Then
  loc_F1CA06:   var_86 = &HFF
  loc_F1CA12:   arg_10 = (arg_10 + 4)
  loc_F1CA18: Else
  loc_F1CA18:   var_B8 = 5
  loc_F1CA42:   If (Mid(arg_C, arg_10, var_B8) = "false") Then
  loc_F1CA47:     var_86 = 0
  loc_F1CA53:     arg_10 = (arg_10 + 5)
  loc_F1CA59:   Else
  loc_F1CA9F:     Me(0) = CStr(CVar(Me(0) & "Invalid Boolean at position " & CStr(arg_10) & " :     ") & Mid(arg_C, arg_10, var_B8) & vbCrLf)
  loc_F1CABB:   End If
  loc_F1CABB: End If
  loc_F1CABB: Result arg_10 End Sub 'Integer
End Sub

Public Sub Proc_343_9_EEFEF8
  'Data Table: 41DFEC
  Dim var_C4 As Integer
  Dim arg_14 As Long
  loc_EEFE46: Proc_343_11_F698FC(arg_10)
  loc_EEFE4B: var_C4 = 4
  loc_EEFE75: If (Mid(arg_10, arg_14, var_C4) = "null") Then
  loc_EEFE7C:   var_94 = Null 'Variant
  loc_EEFE89:   arg_14 = (arg_14 + 4)
  loc_EEFE8F: Else
  loc_EEFED5:   Me(0) = CStr(CVar(Me(0) & "Invalid null value at position " & CStr(arg_14) & " :   ") & Mid(arg_10, arg_14, var_C4) & vbCrLf)
  loc_EEFEF1: End If
  loc_EEFEF1: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_343_10_1026F68(arg_C, arg_10) '1026F68
  'Data Table: 41DFEC
  Dim var_8A As Integer
  Dim arg_10 As Long
  Dim var_8C As Integer
  loc_1026D4E: Proc_343_11_F698FC(arg_C)
  loc_1026D53: ' Referenced from: 1026F61
  loc_1026D65: If ((arg_10 > 0) And (arg_10 <= Len(arg_C))) Then
  loc_1026D84:   var_90 = CStr(Mid(arg_C, arg_10, 1))
  loc_1026D91:   var_D4 = var_90
  loc_1026D9C:   If (var_D4 = """") Then
  loc_1026DA3:     var_8A = Not(var_8A)
  loc_1026DAF:     arg_10 = (arg_10 + 1)
  loc_1026DB6:     If Not(var_8A) Then
  loc_1026DBF:       Proc_343_11_F698FC(arg_C, arg_10, arg_10)
  loc_1026DEE:       If CBool(Mid(arg_C, arg_10, 1) <> ":") Then
  loc_1026E1B:         Me(0) = Me(0) & "Invalid Key at position " & CStr(arg_10) & " : " & var_88 & vbCrLf
  loc_1026E31:       Else
  loc_1026E31:       End If
  loc_1026E34:     Else
  loc_1026E3C:       If (var_D4 = "'") Then
  loc_1026E43:         var_8C = Not(var_8C)
  loc_1026E4F:         arg_10 = (arg_10 + 1)
  loc_1026E56:         If Not(var_8C) Then
  loc_1026E5F:           Proc_343_11_F698FC(arg_C, arg_10, arg_10)
  loc_1026E8E:           If CBool(Mid(arg_C, arg_10, 1) <> ":") Then
  loc_1026EBB:             Me(0) = Me(0) & "Invalid Key at position " & CStr(arg_10) & " :     " & var_88 & vbCrLf
  loc_1026ED1:           Else
  loc_1026ED1:           End If
  loc_1026ED4:         Else
  loc_1026EDC:           If (var_D4 = ":") Then
  loc_1026EE8:             arg_10 = (arg_10 + 1)
  loc_1026EF4:             If (Not(var_8A) And Not(var_8C)) Then
  loc_1026EF7:               GoTo loc_1026F64
  loc_1026EFD:             Else
  loc_1026F04:               var_88 = var_88 & var_90
  loc_1026F07:             End If
  loc_1026F0A:           Else
  loc_1026F45:             If CBool(InStr(1, vbCrLf & vbCr & vbLf & "	" & " ", var_90, 0)) Then
  loc_1026F48:               GoTo loc_1026F55
  loc_1026F4B:             End If
  loc_1026F52:             var_88 = var_88 & var_90
  loc_1026F55:             ' Referenced from:           1026F48
  loc_1026F5E:             arg_10 = (arg_10 + 1)
  loc_1026F61:           End If
  loc_1026F61:         End If
  loc_1026F61:       End If
  loc_1026F61:       GoTo loc_1026D53
  loc_1026F64:       ' Referenced from:     1026EF7
  loc_1026F64:     End If
  loc_1026F64:   End If
  loc_1026F64: End If
  loc_1026F64: Exit Sub
End Sub

Public Sub Proc_343_11_F698FC(arg_C, arg_10) 'F698FC
  'Data Table: 41DFEC
  Dim var_88 As Integer
  Dim var_86 As Integer
  Dim var_8A As Integer
  Dim arg_10 As Long
  loc_F697C0: ' Referenced from: F698F8
  loc_F697D2: If ((arg_10 > 0) And (arg_10 <= Len(arg_C))) Then
  loc_F697F0:   var_DC = Mid(arg_C, arg_10, 1) 'Variant
  loc_F69802:   If Not (var_DC = vbCr) Then
  loc_F69810:     If (var_DC = vbLf) Then
  loc_F69813:     End If
  loc_F69817:     If Not(var_8A) Then
  loc_F6981C:       var_88 = 0
  loc_F69821:       var_86 = 0
  loc_F69824:     End If
  loc_F69827:   Else
  loc_F69832:     If Not (var_DC = "	") Then
  loc_F69840:       If Not (var_DC = " ") Then
  loc_F6984E:         If Not (var_DC = "(") Then
  loc_F6985C:           If (var_DC = ")") Then
  loc_F6985F:           End If
  loc_F6985F:         End If
  loc_F6985F:       End If
  loc_F69862:     Else
  loc_F6986D:       If (var_DC = "/") Then
  loc_F69874:         If Not(var_8A) Then
  loc_F6987A:           If var_88 Then
  loc_F6987F:             var_88 = 0
  loc_F69884:             var_86 = &HFF
  loc_F6988A:           Else
  loc_F6988C:             var_88 = &HFF
  loc_F69891:             var_86 = 0
  loc_F69896:             var_8A = 0
  loc_F69899:           End If
  loc_F6989C:         Else
  loc_F6989F:           If var_88 Then
  loc_F698A4:             var_8A = 0
  loc_F698A9:             var_88 = 0
  loc_F698AE:             var_86 = 0
  loc_F698B1:           End If
  loc_F698B1:         End If
  loc_F698B4:       Else
  loc_F698BF:         If (var_DC = "*") Then
  loc_F698C5:           If var_88 Then
  loc_F698CA:             var_88 = 0
  loc_F698CF:             var_86 = &HFF
  loc_F698D4:             var_8A = &HFF
  loc_F698DA:           Else
  loc_F698DC:             var_88 = &HFF
  loc_F698DF:           End If
  loc_F698E2:         Else
  loc_F698E6:           If Not(var_86) Then
  loc_F698E9:             GoTo loc_F698FB
  loc_F698EC:           End If
  loc_F698EC:         End If
  loc_F698EC:       End If
  loc_F698EC:     End If
  loc_F698EC:   End If
  loc_F698F5:   arg_10 = (arg_10 + 1)
  loc_F698F8:   GoTo loc_F697C0
  loc_F698FB:   ' Referenced from: F698E9
  loc_F698FB: End If
  loc_F698FB: Exit Sub
End Sub

Public Sub Proc_343_12_11470D0(arg_C) '11470D0
  'Data Table: 41DFEC
  Dim var_90 As Long
  Dim var_AE As Integer
  Dim var_F4 As Variant
  loc_1146D68: var_90 = VarType(arg_C)
  loc_1146D74: If (var_90 = 1) Then
  loc_1146D86:   Call var_8C.Append("null")
  loc_1146D8E:   GoTo loc_11470B0
  loc_1146D91: End If
  loc_1146D9A: If (var_90 = 7) Then
  loc_1146DBD:   Call var_8C.Append("""" & CStr(arg_C) & """")
  loc_1146DCB:   GoTo loc_11470B0
  loc_1146DCE: End If
  loc_1146DD7: If (var_90 = 8) Then
  loc_1146DFA:   Call var_8C.Append(var_90 & Proc_343_13_11068EC(arg_C, """") & """")
  loc_1146E08:   GoTo loc_11470B0
  loc_1146E0B: End If
  loc_1146E14: If (var_90 = 9) Then
  loc_1146E2F:   If (TypeName(arg_C) = "Dictionary") Then
  loc_1146E41:     Call var_8C.Append("{")
  loc_1146E52:     var_C4 = arg_C.keys 'Variant
  loc_1146E6C:     var_F4 = (arg_C.Count - 1)
  loc_1146E75:     For var_FC = 0 To CLng(var_F4): var_B4 = var_FC 'Long
  loc_1146E7E:       If &HFF Then
  loc_1146E83:         var_AE = 0
  loc_1146E89:       Else
  loc_1146E98:         Call var_8C.Append(",")
  loc_1146EA0:       End If
  loc_1146EB0:       var_10C = var_C4(var_B4) 'Variant
  loc_1146ED3:       VarLateMemCallLdRfVar
  loc_1146EF2:       Call var_8C.Append(CStr(var_AE & CVar(Proc_343_12_11470D0(arg_C, var_10C, """" & var_10C & """:"))))
  loc_1146F0A:     Next var_FC 'Long
  loc_1146F1E:     Call var_8C.Append("}")
  loc_1146F26:     GoTo loc_1146FC4
  loc_1146F29:   End If
  loc_1146F3C:   If (TypeName(arg_C) = "Collection") Then
  loc_1146F4E:     Call var_8C.Append("[")
  loc_1146F5F:     For Each var_16C In arg_C
  loc_1146F68:       If var_AE Then
  loc_1146F6D:         var_AE = 0
  loc_1146F73:       Else
  loc_1146F82:         Call var_8C.Append(",")
  loc_1146F8A:       End If
  loc_1146F9C:       Call var_8C.Append(Proc_343_12_11470D0(var_16C))
  loc_1146FA7:     Next
  loc_1146FBC:     Call var_8C.Append("]")
  loc_1146FC4:     ' Referenced from: 1146F26
  loc_1146FC4:   End If
  loc_1146FC7: Else
  loc_1146FD0:   If (var_90 = &HB) Then
  loc_1146FDB:     If CBool(arg_C) Then
  loc_1146FED:       Call var_8C.Append("true")
  loc_1146FF8:     Else
  loc_1147007:       Call var_8C.Append("false")
  loc_114700F:     End If
  loc_1147012:   Else
  loc_114701B:     If Not (var_90 = &HC) Then
  loc_1147027:       If Not (var_90 = &H2000) Then
  loc_1147033:         If (var_90 = &H200C) Then
  loc_1147036:         End If
  loc_1147036:       End If
  loc_114703E:       var_F4 = vbNullString
  loc_114704F:       Proc_343_14_103C658(var_13C, arg_C, 1)
  loc_1147062:       Call var_8C.Append(CStr(var_13C))
  loc_1147076:     Else
  loc_11470A4:       Call var_8C.Append(Replace(CStr(arg_C), ",", ".", 1, -1, 0))
  loc_11470B0:     End If
  loc_11470B0:   End If
  loc_11470B0: End If
  loc_11470B0: ' Referenced from: 1146E08
  loc_11470B0: ' Referenced from: 1146DCB
  loc_11470B0: ' Referenced from: 1146D8E
  loc_11470C1: var_88 = var_8C.toString
  loc_11470C9: Set var_8C = Nothing
  loc_11470CC: Exit Sub
End Sub

Public Sub Proc_343_13_11068EC(arg_C) '11068EC
  'Data Table: 41DFEC
  Dim var_D0 As Variant
  Dim var_BA As Integer
  Dim var_180 As Variant
  loc_11065E5: ReDim var_C0(0 To 7)
  loc_11065FC: var_C0(0) = 34
  loc_110660A: var_C0(1) = 92
  loc_1106618: var_C0(2) = 47
  loc_1106626: var_C0(3) = 8
  loc_1106634: var_C0(4) = 12
  loc_1106642: var_C0(5) = 10
  loc_1106650: var_C0(6) = 13
  loc_110665E: var_C0(7) = 9
  loc_1106682: ReDim var_C0(0 To 7)
  loc_1106699: var_C0(0) = 34
  loc_11066A7: var_C0(1) = 92
  loc_11066B5: var_C0(2) = 47
  loc_11066C3: var_C0(3) = 98
  loc_11066D1: var_C0(4) = 102
  loc_11066DF: var_C0(5) = 110
  loc_11066ED: var_C0(6) = 114
  loc_11066FB: var_C0(7) = 116
  loc_1106726: For var_158 = 1 To CLng(Len(arg_C)): var_90 = var_158 'Long
  loc_110672E:   var_BA = &HFF
  loc_1106748:   var_B8 = CStr(Mid(arg_C, var_90, 1))
  loc_110675F:   For var_170 = 0 To 7: var_94 = var_170 'Long
  loc_1106792:     If (CVar(var_B8) = Chr(CLng(Array(var_C0)(var_94)))) Then
  loc_11067C6:       Call var_8C.Append(CStr("\" & Chr(CLng(Array(var_C0)(var_94)))))
  loc_11067D9:       var_BA = 0
  loc_11067DC:       Exit For
  loc_11067DF:     End If
  loc_11067E2:   Next var_170 'Long
  loc_11067E7:   ' Referenced from: 11067DC
  loc_11067EA:   If var_BA Then
  loc_11067F8:     var_194 = CVar(AscW(var_B8)) 'Variant
  loc_110681C:     If CBool((var_194 > 31) And (var_194 < 127)) Then
  loc_1106828:       Call var_8C.Append(var_B8)
  loc_1106830:     Else
  loc_1106833:       var_D0 = -1
  loc_1106853:       If CBool((var_194 > 31) Or (var_194 < &HFFFF)) Then
  loc_110687D:         var_180 = (4 - Len(Hex(var_194)))
  loc_11068AF:         Call var_8C.Append(CStr("\u" & String(CLng((var_194 > 31) Or (var_194 < &HFFFF)), "0") & Hex(var_194)))
  loc_11068C6:       End If
  loc_11068C6:     End If
  loc_11068C6:   End If
  loc_11068C9: Next var_158 'Long
  loc_11068DF: var_88 = var_8C.toString
  loc_11068E7: Set var_8C = Nothing
  loc_11068EA: Exit Sub
End Sub

Public Sub Proc_343_14_103C658
  'Data Table: 41DFEC
  Dim var_9C As Long
  Dim var_98 As Long
  Dim var_FC As Variant
  Dim var_148 As Variant
  loc_103C41C: On Error Resume Next
  loc_103C424: CRefVarAry
  loc_103C42F: var_9C = LBound(arg_10, CInt(arg_14))
  loc_103C437: CRefVarAry
  loc_103C443: var_98 = UBound(arg_10, CInt(arg_14))
  loc_103C450: Set var_D8 = Err()
  loc_103C456: Call 0.Method_arg_1C (var_DC, var_98)
  loc_103C467: If (var_DC = 9) Then
  loc_103C47C:   var_C4 = arg_1C & arg_18 'Variant
  loc_103C493:   For var_104 = 1 To CLng(Len(var_C4)): var_A0 = var_104 'Long
  loc_103C4A4:     If (var_A0 <> 1) Then
  loc_103C4B5:       var_D4 = var_D4 & "," 'Variant
  loc_103C4B9:     End If
  loc_103C4CC:     var_114 = Mid(var_C4, var_A0, 1)
  loc_103C4D8:     var_D4 = var_D4 & var_114 'Variant
  loc_103C4E8:   Next var_104 'Long
  loc_103C519:   Call var_B4.Append(Proc_343_12_11470D0(arg_10(var_D4)))
  loc_103C527: Else
  loc_103C53B:   arg_1C = arg_1C & arg_18
  loc_103C54F:   Call var_B4.Append("[")
  loc_103C562:   For var_138 = var_9C To var_98:   var_A0 = var_138 'Long
  loc_103C570:     var_148 = var_A0
  loc_103C580:     var_FC = (arg_14 + 1)
  loc_103C58A:     Proc_343_14_103C658(var_114, arg_10, arg_1C & arg_18)
  loc_103C59D:     Call var_B4.Append(CStr(var_114))
  loc_103C5B5:     If (var_A0 < var_98) Then
  loc_103C5C9:       Call var_B4.Append(",")
  loc_103C5D1:     End If
  loc_103C5D6:   Next var_138 'Long
  loc_103C5EC:   Call var_B4.Append("]")
  loc_103C601:   var_FC = (arg_14 - 2)
  loc_103C615:   arg_1C = Left(arg_1C, CLng(arg_1C & arg_18))
  loc_103C618: End If
  loc_103C621: Set var_D8 = Err()
  loc_103C627: VCallFPR8
  loc_103C643: var_94 = CVar(var_B4.toString) 'Variant
  loc_103C64E: Set var_B4 = Nothing
  loc_103C653: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_343_15_10B0CB0(arg_C) '10B0CB0
  'Data Table: 41DFEC
  Dim var_94 As Long
  Dim var_1CC As Variant
  Dim var_21C As Variant
  Dim var_D8 As Variant
  loc_10B0A29: var_94 = 0
  loc_10B0A34: If (arg_C = vbNullString) Then
  loc_10B0A3A:   var_88 = "null"
  loc_10B0A3D:   GoTo loc_10B0CAF
  loc_10B0A40: End If
  loc_10B0A4F: var_D8 = "|"
  loc_10B0A5B: var_E8 = Split(arg_C, var_D8, -1, 0)
  loc_10B0A63: var_B8 = var_E8 'Variant
  loc_10B0A6D: CRefVarAry
  loc_10B0A79: CRefVarAry
  loc_10B0A80: For var_F0 = LBound(var_B8, 1) To UBound(var_B8, 1): var_94 = var_F0 'Long
  loc_10B0A89:   var_8C = vbNullString
  loc_10B0ABD:   var_114 = Split(CStr(var_D8), "~", -1, 0)
  loc_10B0AC5:   var_A8 = var_114 'Variant
  loc_10B0AD6:   CRefVarAry
  loc_10B0AE2:   CRefVarAry
  loc_10B0AEE:   For var_11C = LBound(var_A8, 1) To UBound(var_A8, 1) Step 2: var_98 = var_11C 'Long
  loc_10B0B5A:     var_1CC = CVar((var_98 + 1)) 'Long
  loc_10B0B7B:     var_21C = CVar(Proc_343_17_10557DC(CStr(var_A8(var_1CC) & vbNullString), CVar(var_8C) & IIf((var_8C <> vbNullString), ",", vbNullString) & """" & var_A8(var_98) & """:""", LBound(var_A8, 1))) 'String
  loc_10B0B8C:     var_8C = CStr(var_B8(var_94) & var_21C & """")
  loc_10B0BB4:   Next var_11C 'Long
  loc_10B0C30:   Call var_90.Append(CStr(IIf((Trim(CVar(var_90.toString)) <> vbNullString), CVar("," & vbCrLf), vbNullString) & "{" & CVar(var_8C) & "}"))
  loc_10B0C50: Next var_F0 'Long
  loc_10B0C99: var_88 = "( {""Records"": [" & vbCrLf & var_90.toString & vbCrLf & "], " & """RecordCount"":""" & CStr(var_94) & """ } )"
  loc_10B0CAF: ' Referenced from: 10B0A3D
  loc_10B0CAF: Exit Sub
End Sub

Public Sub Proc_343_16_1097490
  'Data Table: 41DFEC
  Dim var_94 As Long
  Dim Me As Recordset15
  Dim var_98 As Field20
  Dim var_1D4 As Variant
  loc_1097230: On Error Goto loc_109748E
  loc_1097238: var_94 = 0
  loc_109724F: If (Me.Recordset15.State = 0) Then
  loc_1097255:   var_88 = "null"
  loc_1097258:   GoTo loc_109748D
  loc_109725B: End If
  loc_1097278: If (Me.EOF Or Me.Recordset15.BOF) Then
  loc_109727E:   var_88 = "null"
  loc_1097281:   GoTo loc_109748D
  loc_1097284:   ' Referenced from: 1097430
  loc_1097284: End If
  loc_10972A3: If (Not(Me.EOF) And Not(Me.Recordset15.BOF)) Then
  loc_10972AF:   var_94 = (var_94 + 1)
  loc_10972B5:   var_8C = vbNullString
  loc_10972CC:   For Each var_98 In Me.Recordset15.Fields
  loc_1097353:     var_1D4 = CVar(Proc_343_17_10557DC(CStr(var_98.Value & vbNullString), CVar(var_8C) & IIf((var_8C <> vbNullString), ",", vbNullString) & """" & CVar(var_98.Name) & """:""")) 'String
  loc_1097364:     var_8C = CStr(var_94 & var_1D4 & """")
  loc_109738C:   Next
  loc_109740B:   Call var_90.Append(CStr(IIf((Trim(CVar(var_90.toString)) <> vbNullString), CVar("," & vbCrLf), vbNullString) & "{" & CVar(var_8C) & "}"))
  loc_109742B:   Me.Recordset15.MoveNext
  loc_1097430:   GoTo loc_1097284
  loc_1097433: End If
  loc_1097477: var_88 = "( {""Records"": [" & vbCrLf & var_90.toString & vbCrLf & "], " & """RecordCount"":""" & CStr(var_94) & """ } )"
  loc_109748D: ' Referenced from: 1097281
  loc_109748D: ' Referenced from: 1097258
  loc_109748D: Exit Sub
  loc_109748E: ' Referenced from: 1097230
  loc_109748E: Exit Sub
End Sub

Public Sub Proc_343_17_10557DC(arg_C) '10557DC
  'Data Table: 41DFEC
  Dim var_92 As Integer
  Dim var_E2 As Integer
  loc_105557C: For var_9C = 1 To Len(arg_C): var_8C = var_9C 'Long
  loc_10555A6:   var_92 = Asc(CStr(Mid(arg_C, var_8C, 1)))
  loc_10555B6:   var_E2 = var_92
  loc_10555BF:   If (var_E2 = 8) Then
  loc_10555D1:     Call var_90.Append("\b")
  loc_10555DC:   Else
  loc_10555E2:     If (var_E2 = 9) Then
  loc_10555F4:       Call var_90.Append("\t")
  loc_10555FF:     Else
  loc_1055605:       If (var_E2 = &HA) Then
  loc_1055617:         Call var_90.Append("\n")
  loc_1055622:       Else
  loc_1055628:         If (var_E2 = &HC) Then
  loc_105563A:           Call var_90.Append("\f")
  loc_1055645:         Else
  loc_105564B:           If (var_E2 = &HD) Then
  loc_105565D:             Call var_90.Append("\r")
  loc_1055668:           Else
  loc_105566E:             If (var_E2 = &H22) Then
  loc_1055680:               Call var_90.Append("\""")
  loc_105568B:             Else
  loc_1055691:               If (var_E2 = &H27) Then
  loc_10556A3:                 Call var_90.Append("\'")
  loc_10556AE:               Else
  loc_10556B4:                 If (var_E2 = &H5C) Then
  loc_10556C6:                   Call var_90.Append("\\")
  loc_10556D1:                 Else
  loc_10556D7:                   If Not (var_E2 = &H7B) Then
  loc_10556E0:                     If (var_E2 = &H7D) Then
  loc_10556E3:                     End If
  loc_1055723:                     Call var_90.Append(CStr("\u" & Right("0000" & Hex(var_92), 4)))
  loc_1055739:                   Else
  loc_105573F:                     If Not (var_E2 < &H20) Then
  loc_1055748:                       If (var_E2 > &H7F) Then
  loc_105574B:                       End If
  loc_105578B:                       Call var_90.Append(CStr("\u" & Right("0000" & Hex(var_92), 4)))
  loc_10557A1:                     Else
  loc_10557B4:                       Call var_90.Append(Chr$(CLng(var_92)))
  loc_10557BC:                     End If
  loc_10557BC:                   End If
  loc_10557BC:                 End If
  loc_10557BC:               End If
  loc_10557BC:             End If
  loc_10557BC:           End If
  loc_10557BC:         End If
  loc_10557BC:       End If
  loc_10557BC:     End If
  loc_10557BC:   End If
  loc_10557BF: Next var_9C 'Long
  loc_10557D5: var_88 = var_90.toString
  loc_10557D8: Exit Sub
  loc_10557D9: Exit Sub
End Sub

Public Sub Proc_343_18_E02B48
  'Data Table: 41DFEC
  loc_E02B3F: Me(0) = vbNullString
  loc_E02B44: Exit Sub
End Sub
