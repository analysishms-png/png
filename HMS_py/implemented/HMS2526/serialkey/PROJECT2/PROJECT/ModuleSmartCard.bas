
Public Sub Proc_275_0_E0C2EC
  'Data Table: 422204
  loc_E0C2DB: Me(0) = vbNullString
  loc_E0C2E5: Me(4) = 0
  loc_E0C2EA: Exit Sub
End Sub

Public Sub Proc_275_1_E8ECB4(arg_C) 'E8ECB4
  'Data Table: 422204
  Dim var_DC As String
  loc_E8EC56: For var_94 = 1 To CInt(Len(arg_C)): var_8A = var_94 'Integer
  loc_E8EC8D:   var_DC = Chr$(CLng((Asc(CStr(Mid(arg_C, CLng(var_8A), 1))) - &H1B)))
  loc_E8EC91:   var_90 = var_90 & var_DC
  loc_E8ECA5: Next var_94 'Integer
  loc_E8ECAD: var_88 = var_90
  loc_E8ECB0: Exit Sub
  loc_E8ECB1: Set var_8C = 
End Sub

Public Sub Proc_275_2_E8DFA4(arg_C) 'E8DFA4
  'Data Table: 422204
  Dim var_DC As String
  loc_E8DF46: For var_94 = 1 To CInt(Len(arg_C)): var_8A = var_94 'Integer
  loc_E8DF7D:   var_DC = Chr$(CLng((Asc(CStr(Mid(arg_C, CLng(var_8A), 1))) + &H1B)))
  loc_E8DF81:   var_90 = var_90 & var_DC
  loc_E8DF95: Next var_94 'Integer
  loc_E8DF9D: var_88 = var_90
  loc_E8DFA0: Exit Sub
End Sub

Public Sub Proc_275_3_1212B74(arg_C, arg_10) '1212B74
  'Data Table: 422204
  Dim var_96 As Integer
  Dim var_12C As Variant
  Dim var_BC As Variant
  Dim var_130 As String
  loc_12126B7: var_8C = arg_C
  loc_12126BA: On Error Goto loc_1212B30
  loc_12126C0: arg_20 = vbNullString
  loc_12126CB: For var_9A = 0 To 7: var_8E = var_9A 'Integer
  loc_12126E7:   Call 0.Method_arg_1C (var_8E, Me(0), Me(4))
  loc_12126EF:   var_96 = var_9C
  loc_12126F8:   If (var_96 = 0) Then
  loc_12126FB:     GoTo loc_1212706
  loc_12126FE:   End If
  loc_1212701: Next var_9A 'Integer
  loc_1212706: ' Referenced from: 12126FB
  loc_121270C: If (var_96 = &HFF) Then
  loc_1212728:   MsgBox("Reader Not Connected", &H10, var_DC, var_FC, var_11C)
  loc_1212743:   Call 0.Method_arg_2C (0)
  loc_1212748:   Result  End Sub 'Integer
  loc_1212749: End If
  loc_1212749: Proc_275_0_E0C2EC()
  loc_1212766: Call 0.Method_arg_28 (var_94, &HFF, Me(0))
  loc_1212779: If (Me(4) = -3000) Then
  loc_1212787:   var_DC = "Smart Card Verification"
  loc_1212797:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_121279D:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_12127B8:   Call 0.Method_arg_2C (0, Me(4))
  loc_12127BD:   Result var_BC End Sub 'Integer
  loc_12127C1: Else
  loc_12127CC:   If (Me(4) <> 0) Then
  loc_12127E7:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_1212800:     Call 0.Method_arg_2C (0)
  loc_1212805:     Result  End Sub 'Integer
  loc_1212806:   End If
  loc_1212806: End If
  loc_1212806: Proc_275_0_E0C2EC()
  loc_1212842: var_FC = "000000"
  loc_1212853: var_11C = Format(arg_18, var_FC)
  loc_121285B: var_12C = (1 + var_11C)
  loc_121288C: Call 0.Method_arg_20 (CStr(0), Proc_275_1_E8ECB4(CStr(var_12C), 1, Format(arg_10, "0000000.00")), Me(0), Me(4))
  loc_12128B6: If (Me(4) = -3000) Then
  loc_12128C4:   var_DC = "Smart Card Verification"
  loc_12128D4:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_12128DA:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_12128F5:   Call 0.Method_arg_2C (0, var_148)
  loc_12128FA:   Result 1 End Sub 'Integer
  loc_12128FE: Else
  loc_1212909:   If (Me(4) <> 0) Then
  loc_1212924:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_121293D:     Call 0.Method_arg_2C (0)
  loc_1212942:     Result 1 End Sub 'Integer
  loc_1212943:   End If
  loc_1212943: End If
  loc_121297E: Call 0.Method_arg_20 (CStr(1), CStr(Mid(var_8C, 1, 16)), Me(0))
  loc_121299E: If (Me(4) = -3000) Then
  loc_12129AC:   var_DC = "Smart Card Verification"
  loc_12129BC:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_12129C2:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_12129DD:   Call 0.Method_arg_2C (0, Me(4))
  loc_12129E2:   Result var_FC End Sub 'Integer
  loc_12129E6: Else
  loc_12129F1:   If (Me(4) <> 0) Then
  loc_1212A0C:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_1212A25:     Call 0.Method_arg_2C (0)
  loc_1212A2A:     Result  End Sub 'Integer
  loc_1212A2B:   End If
  loc_1212A2B: End If
  loc_1212A2B: Proc_275_0_E0C2EC()
  loc_1212A62: var_130 = CStr(2)
  loc_1212A6B: Call 0.Method_arg_20 (var_130, CStr(Mid(var_8C, &H11, 16)), Me(0))
  loc_1212A8B: If (Me(4) = -3000) Then
  loc_1212A99:   var_DC = "Smart Card Verification"
  loc_1212AA9:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_1212AAF:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_1212ACA:   Call 0.Method_arg_2C (0, Me(4))
  loc_1212ACF:   Result var_FC End Sub 'Integer
  loc_1212AD3: Else
  loc_1212ADE:   If (Me(4) <> 0) Then
  loc_1212AF9:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_1212B12:     Call 0.Method_arg_2C (0)
  loc_1212B17:     Result  End Sub 'Integer
  loc_1212B18:   End If
  loc_1212B18: End If
  loc_1212B1B: arg_20 = var_94
  loc_1212B2A: Call 0.Method_arg_2C (&HFF)
  loc_1212B2F: Result  End Sub 'Integer
  loc_1212B30: ' Referenced from: 12126BA
  loc_1212B38: Set var_150 = Err()
  loc_1212B3E: Call 0.Method_arg_2C (var_130)
  loc_1212B5F: MsgBox(CVar(var_130), &H40, "Information", var_FC, var_11C)
  loc_1212B72: Result  End Sub 'Integer
  loc_1212B73: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_4_1144A34(arg_C, arg_10) '1144A34
  'Data Table: 422204
  Dim var_96 As Integer
  Dim var_BC As Variant
  Dim var_120 As String
  loc_11446AF: var_8C = arg_C
  loc_11446B2: On Error Goto loc_11449F0
  loc_11446B8: arg_10 = vbNullString
  loc_11446C3: For var_9A = 0 To 7: var_8E = var_9A 'Integer
  loc_11446DF:   Call 0.Method_arg_1C (var_8E, Me(0), Me(4))
  loc_11446E7:   var_96 = var_9C
  loc_11446F0:   If (var_96 = 0) Then
  loc_11446F3:     GoTo loc_11446FE
  loc_11446F6:   End If
  loc_11446F9: Next var_9A 'Integer
  loc_11446FE: ' Referenced from: 11446F3
  loc_1144704: If (var_96 = &HFF) Then
  loc_1144720:   MsgBox("Reader Not Connected", &H10, var_DC, var_FC, var_11C)
  loc_114473B:   Call 0.Method_arg_2C (0)
  loc_1144740:   Result  End Sub 'Integer
  loc_1144741: End If
  loc_1144741: Proc_275_0_E0C2EC()
  loc_114475E: Call 0.Method_arg_28 (var_94, &HFF, Me(0))
  loc_1144771: If (Me(4) = -3000) Then
  loc_114477F:   var_DC = "Smart Card Verification"
  loc_114478F:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_1144795:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_11447B0:   Call 0.Method_arg_2C (0, Me(4))
  loc_11447B5:   Result var_BC End Sub 'Integer
  loc_11447B9: Else
  loc_11447C4:   If (Me(4) <> 0) Then
  loc_11447DF:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_11447F8:     Call 0.Method_arg_2C (0)
  loc_11447FD:     Result  End Sub 'Integer
  loc_11447FE:   End If
  loc_11447FE: End If
  loc_11447FE: Proc_275_0_E0C2EC()
  loc_114483E: Call 0.Method_arg_20 (CStr(1), CStr(Mid(var_8C, 1, 16)), Me(0))
  loc_114485E: If (Me(4) = -3000) Then
  loc_114486C:   var_DC = "Smart Card Verification"
  loc_114487C:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_1144882:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_114489D:   Call 0.Method_arg_2C (0, Me(4))
  loc_11448A2:   Result var_FC End Sub 'Integer
  loc_11448A6: Else
  loc_11448B1:   If (Me(4) <> 0) Then
  loc_11448CC:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_11448E5:     Call 0.Method_arg_2C (0)
  loc_11448EA:     Result  End Sub 'Integer
  loc_11448EB:   End If
  loc_11448EB: End If
  loc_11448EB: Proc_275_0_E0C2EC()
  loc_1144922: var_120 = CStr(2)
  loc_114492B: Call 0.Method_arg_20 (var_120, CStr(Mid(var_8C, &H11, 16)), Me(0))
  loc_114494B: If (Me(4) = -3000) Then
  loc_1144959:   var_DC = "Smart Card Verification"
  loc_1144969:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_114496F:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_114498A:   Call 0.Method_arg_2C (0, Me(4))
  loc_114498F:   Result var_FC End Sub 'Integer
  loc_1144993: Else
  loc_114499E:   If (Me(4) <> 0) Then
  loc_11449B9:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_11449D2:     Call 0.Method_arg_2C (0)
  loc_11449D7:     Result  End Sub 'Integer
  loc_11449D8:   End If
  loc_11449D8: End If
  loc_11449DB: arg_10 = var_94
  loc_11449EA: Call 0.Method_arg_2C (&HFF)
  loc_11449EF: Result  End Sub 'Integer
  loc_11449F0: ' Referenced from: 11446B2
  loc_11449F8: Set var_128 = Err()
  loc_11449FE: Call 0.Method_arg_2C (var_120)
  loc_1144A1F: MsgBox(CVar(var_120), &H40, "Information", var_FC, var_11C)
  loc_1144A32: Result  End Sub 'Integer
  loc_1144A33: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_5_11FF0D0(arg_C) '11FF0D0
  'Data Table: 422204
  Dim var_96 As Integer
  Dim var_128 As String
  Dim var_C4 As Variant
  Dim var_104 As Variant
  loc_11FEC28: On Error Goto loc_11FF08B
  loc_11FEC2E: arg_18 = vbNullString
  loc_11FEC35: arg_C = vbNullString
  loc_11FEC40: For var_A0 = 0 To 7: var_98 = var_A0 'Integer
  loc_11FEC5C:   Call 0.Method_arg_1C (var_98, Me(0), Me(4))
  loc_11FEC64:   var_96 = var_A2
  loc_11FEC6D:   If (var_96 = 0) Then
  loc_11FEC70:     GoTo loc_11FEC7B
  loc_11FEC73:   End If
  loc_11FEC76: Next var_A0 'Integer
  loc_11FEC7B: ' Referenced from: 11FEC70
  loc_11FEC81: If (var_96 = &HFF) Then
  loc_11FEC9D:   MsgBox("Reader Not Connected", &H10, var_E4, var_104, var_124)
  loc_11FECB8:   Call 0.Method_arg_2C (0)
  loc_11FECBD:   Result  End Sub 'Integer
  loc_11FECBE: End If
  loc_11FECBE: Proc_275_0_E0C2EC()
  loc_11FECDB: Call 0.Method_arg_28 (var_9C, &HFF, Me(0))
  loc_11FECEE: If (Me(4) = -3000) Then
  loc_11FECFC:   var_E4 = "Smart Card Verification"
  loc_11FED0C:   var_C4 = "PLEASE PUT A CARD ON READER"
  loc_11FED12:   MsgBox(var_C4, &H10, var_E4, var_104, var_124)
  loc_11FED2D:   Call 0.Method_arg_2C (0, Me(4))
  loc_11FED32:   Result var_C4 End Sub 'Integer
  loc_11FED36: Else
  loc_11FED41:   If (Me(4) <> 0) Then
  loc_11FED5C:     MsgBox(Me(0), &H10, var_C4, var_E4, var_104)
  loc_11FED75:     Call 0.Method_arg_2C (0)
  loc_11FED7A:     Result  End Sub 'Integer
  loc_11FED7B:   End If
  loc_11FED7B: End If
  loc_11FED7B: Proc_275_0_E0C2EC()
  loc_11FED9D: Call 0.Method_arg_24 (CStr(0), var_8C, Me(0))
  loc_11FEDB3: If (Me(4) = -3000) Then
  loc_11FEDC1:   var_E4 = "Smart Card Verification"
  loc_11FEDD1:   var_C4 = "PLEASE PUT A CARD ON READER"
  loc_11FEDD7:   MsgBox(var_C4, &H10, var_E4, var_104, var_124)
  loc_11FEDF2:   Call 0.Method_arg_2C (0, Me(4))
  loc_11FEDF7:   Result var_C4 End Sub 'Integer
  loc_11FEDFB: Else
  loc_11FEE06:   If (Me(4) <> 0) Then
  loc_11FEE21:     MsgBox(Me(0), &H10, var_C4, var_E4, var_104)
  loc_11FEE3A:     Call 0.Method_arg_2C (0)
  loc_11FEE3F:     Result  End Sub 'Integer
  loc_11FEE40:   End If
  loc_11FEE40: End If
  loc_11FEE40: Proc_275_0_E0C2EC()
  loc_11FEE62: Call 0.Method_arg_24 (CStr(1), var_90, Me(0))
  loc_11FEE78: If (Me(4) = -3000) Then
  loc_11FEE86:   var_E4 = "Smart Card Verification"
  loc_11FEE96:   var_C4 = "PLEASE PUT A CARD ON READER"
  loc_11FEE9C:   MsgBox(var_C4, &H10, var_E4, var_104, var_124)
  loc_11FEEB7:   Call 0.Method_arg_2C (0, Me(4))
  loc_11FEEBC:   Result var_C4 End Sub 'Integer
  loc_11FEEC0: Else
  loc_11FEECB:   If (Me(4) <> 0) Then
  loc_11FEEE6:     MsgBox(Me(0), &H10, var_C4, var_E4, var_104)
  loc_11FEEFF:     Call 0.Method_arg_2C (0)
  loc_11FEF04:     Result  End Sub 'Integer
  loc_11FEF05:   End If
  loc_11FEF05: End If
  loc_11FEF05: Proc_275_0_E0C2EC()
  loc_11FEF27: Call 0.Method_arg_24 (CStr(2), var_94, Me(0))
  loc_11FEF3D: If (Me(4) = -3000) Then
  loc_11FEF4B:   var_E4 = "Smart Card Verification"
  loc_11FEF5B:   var_C4 = "PLEASE PUT A CARD ON READER"
  loc_11FEF61:   MsgBox(var_C4, &H10, var_E4, var_104, var_124)
  loc_11FEF7C:   Call 0.Method_arg_2C (0, Me(4))
  loc_11FEF81:   Result var_C4 End Sub 'Integer
  loc_11FEF85: Else
  loc_11FEF90:   If (Me(4) <> 0) Then
  loc_11FEFAB:     MsgBox(Me(0), &H10, var_C4, var_E4, var_104)
  loc_11FEFC4:     Call 0.Method_arg_2C (0)
  loc_11FEFC9:     Result  End Sub 'Integer
  loc_11FEFCA:   End If
  loc_11FEFCA: End If
  loc_11FEFCD: arg_18 = var_9C
  loc_11FEFD9: var_8C = Proc_275_2_E8DFA4(var_8C)
  loc_11FF02C: var_128 = CStr(Mid(var_8C, &HB, 6))
  loc_11FF068: var_104 = (Trim(var_90) + Trim(var_94))
  loc_11FF06D: arg_C = CStr(var_104)
  loc_11FF085: Call 0.Method_arg_2C (&HFF, Val(var_128))
  loc_11FF08A: Result Val(CStr(Mid(var_8C, 1, 10))) End Sub 'Integer
  loc_11FF08B: ' Referenced from: 11FEC28
  loc_11FF093: Set var_12C = Err()
  loc_11FF099: Call 0.Method_arg_2C (var_128)
  loc_11FF0BA: MsgBox(CVar(var_128), &H40, "Information", var_104, var_124)
  loc_11FF0CD: Result  End Sub 'Integer
  loc_11FF0CE: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_6_1133A80(arg_C, arg_10) '1133A80
  'Data Table: 422204
  Dim var_92 As Integer
  Dim var_124 As String
  Dim var_100 As Variant
  Dim var_C0 As Variant
  Dim arg_AFF As Variant
  loc_113370C: On Error Goto loc_1133A39
  loc_1133712: arg_10 = vbNullString
  loc_1133719: arg_C = vbNullString
  loc_1133724: For var_9C = 0 To 7: var_94 = var_9C 'Integer
  loc_1133740:   Call 0.Method_arg_1C (var_94, Me(0), Me(4))
  loc_1133748:   var_92 = var_9E
  loc_1133751:   If (var_92 = 0) Then
  loc_1133754:     GoTo loc_113375F
  loc_1133757:   End If
  loc_113375A: Next var_9C 'Integer
  loc_113375F: ' Referenced from: 1133754
  loc_1133765: If (var_92 = &HFF) Then
  loc_1133781:   MsgBox("Reader Not Connected", &H10, var_E0, var_100, var_120)
  loc_113379C:   Call 0.Method_arg_2C (0)
  loc_11337A1:   Result  End Sub 'Integer
  loc_11337A2: End If
  loc_11337A2: Proc_275_0_E0C2EC()
  loc_11337BF: Call 0.Method_arg_28 (var_98, &HFF, Me(0))
  loc_11337D2: If (Me(4) = -3000) Then
  loc_11337E0:   var_E0 = "Smart Card Verification"
  loc_11337F0:   var_C0 = "PLEASE PUT A CARD ON READER"
  loc_11337F6:   MsgBox(var_C0, &H10, var_E0, var_100, var_120)
  loc_1133811:   Call 0.Method_arg_2C (0, Me(4))
  loc_1133816:   Result var_C0 End Sub 'Integer
  loc_113381A: Else
  loc_1133825:   If (Me(4) <> 0) Then
  loc_1133840:     MsgBox(Me(0), &H10, var_C0, var_E0, var_100)
  loc_1133859:     Call 0.Method_arg_2C (0)
  loc_113385E:     Result  End Sub 'Integer
  loc_113385F:   End If
  loc_113385F: End If
  loc_113385F: Proc_275_0_E0C2EC()
  loc_1133881: Call 0.Method_arg_24 (CStr(1), var_8C, Me(0))
  loc_1133897: If (Me(4) = -3000) Then
  loc_11338A5:   var_E0 = "Smart Card Verification"
  loc_11338B5:   var_C0 = "PLEASE PUT A CARD ON READER"
  loc_11338BB:   MsgBox(var_C0, &H10, var_E0, var_100, var_120)
  loc_11338D6:   Call 0.Method_arg_2C (0, Me(4))
  loc_11338DB:   Result var_C0 End Sub 'Integer
  loc_11338DF: Else
  loc_11338EA:   If (Me(4) <> 0) Then
  loc_1133905:     MsgBox(Me(0), &H10, var_C0, var_E0, var_100)
  loc_113391E:     Call 0.Method_arg_2C (0)
  loc_1133923:     Result  End Sub 'Integer
  loc_1133924:   End If
  loc_1133924: End If
  loc_1133924: Proc_275_0_E0C2EC()
  loc_113393D: var_124 = CStr(2)
  loc_1133946: Call 0.Method_arg_24 (var_124, var_90, Me(0))
  loc_113395C: If (Me(4) = -3000) Then
  loc_113396A:   var_E0 = "Smart Card Verification"
  loc_113397A:   var_C0 = "PLEASE PUT A CARD ON READER"
  loc_1133980:   MsgBox(var_C0, &H10, var_E0, var_100, var_120)
  loc_113399B:   Call 0.Method_arg_2C (0, Me(4))
  loc_11339A0:   Result var_C0 End Sub 'Integer
  loc_11339A4: Else
  loc_11339AF:   If (Me(4) <> 0) Then
  loc_11339CA:     MsgBox(Me(0), &H10, var_C0, var_E0, var_100)
  loc_11339E3:     Call 0.Method_arg_2C (0)
  loc_11339E8:     Result  End Sub 'Integer
  loc_11339E9:   End If
  loc_11339E9: End If
  loc_11339EC: arg_10 = var_98
  loc_1133A16: var_100 = (Trim(var_8C) + Trim(var_90))
  loc_1133A1B: arg_C = CStr(var_100)
  loc_1133A33: Call 0.Method_arg_2C (&HFF)
  loc_1133A38: Result  End Sub 'Integer
  loc_1133A39: ' Referenced from: 113370C
  loc_1133A41: Set var_128 = Err()
  loc_1133A47: Call 0.Method_arg_2C (var_124)
  loc_1133A68: MsgBox(CVar(var_124), &H40, "Information", var_100, var_120)
  loc_1133A7B: Result  End Sub 'Integer
  loc_1133A7C: Result  End Sub 'Integer
  loc_1133A7D: arg_AFF = CVar() 'Integer
End Sub

Public Sub Proc_275_7_10CE5A4(arg_C) '10CE5A4
  'Data Table: 422204
  Dim var_8E As Integer
  Dim var_124 As Variant
  Dim var_B4 As Variant
  loc_10CE2BC: On Error Goto loc_10CE55D
  loc_10CE2CD: For var_92 = 0 To 7: var_88 = var_92 'Integer
  loc_10CE2E9:   Call 0.Method_vbNullString (var_88, Me(0), Me(4))
  loc_10CE2F1:   var_8E = var_94
  loc_10CE2FA:   If (var_8E = 0) Then
  loc_10CE2FD:     GoTo loc_10CE308
  loc_10CE300:   End If
  loc_10CE303: Next var_92 'Integer
  loc_10CE308: ' Referenced from: 10CE2FD
  loc_10CE30E: If (var_8E = &HFF) Then
  loc_10CE32A:   MsgBox("Reader Not Connected", &H10, var_D4, var_F4, var_114)
  loc_10CE345:   Call 0.Method_arg_2C (0)
  loc_10CE34A:   Result  End Sub 'Integer
  loc_10CE34B: End If
  loc_10CE34B: Proc_275_0_E0C2EC()
  loc_10CE368: Call 0.Method_arg_28 (var_8C, &HFF, Me(0))
  loc_10CE37B: If (Me(4) = -3000) Then
  loc_10CE389:   var_D4 = "Smart Card Verification"
  loc_10CE399:   var_B4 = "PLEASE PUT A CARD ON READER"
  loc_10CE39F:   MsgBox(var_B4, &H10, var_D4, var_F4, var_114)
  loc_10CE3BA:   Call 0.Method_arg_2C (0, Me(4))
  loc_10CE3BF:   Result var_B4 End Sub 'Integer
  loc_10CE3C3: Else
  loc_10CE3CE:   If (Me(4) <> 0) Then
  loc_10CE3E9:     MsgBox(Me(0), &H10, var_B4, var_D4, var_F4)
  loc_10CE402:     Call 0.Method_arg_2C (0)
  loc_10CE407:     Result  End Sub 'Integer
  loc_10CE408:   End If
  loc_10CE408: End If
  loc_10CE408: Proc_275_0_E0C2EC()
  loc_10CE444: var_F4 = "000000"
  loc_10CE455: var_114 = Format(arg_14, var_F4)
  loc_10CE45D: var_124 = (1 + var_114)
  loc_10CE48E: Call 0.Method_arg_20 (CStr(0), Proc_275_1_E8ECB4(CStr(var_124), 1, Format(arg_C, "0000000.00")), Me(0), Me(4))
  loc_10CE4B8: If (Me(4) = -3000) Then
  loc_10CE4C6:   var_D4 = "Smart Card Verification"
  loc_10CE4D6:   var_B4 = "PLEASE PUT A CARD ON READER"
  loc_10CE4DC:   MsgBox(var_B4, &H10, var_D4, var_F4, var_114)
  loc_10CE4F7:   Call 0.Method_arg_2C (0, var_140)
  loc_10CE4FC:   Result 1 End Sub 'Integer
  loc_10CE500: Else
  loc_10CE50B:   If (Me(4) <> 0) Then
  loc_10CE526:     MsgBox(Me(0), &H10, var_B4, var_D4, var_F4)
  loc_10CE53F:     Call 0.Method_arg_2C (0)
  loc_10CE544:     Result 1 End Sub 'Integer
  loc_10CE545:   End If
  loc_10CE545: End If
  loc_10CE548: arg_1C = var_8C
  loc_10CE557: Call 0.Method_arg_2C (&HFF)
  loc_10CE55C: Result  End Sub 'Integer
  loc_10CE55D: ' Referenced from: 10CE2BC
  loc_10CE565: Set var_148 = Err()
  loc_10CE56B: Call 0.Method_arg_2C (var_128)
  loc_10CE58C: MsgBox(CVar(var_128), &H40, "Information", var_F4, var_114)
  loc_10CE59F: Result  End Sub 'Integer
  loc_10CE5A0: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_8_10BF354
  'Data Table: 422204
  Dim var_8E As Integer
  Dim var_120 As String
  Dim var_BC As Variant
  loc_10BF074: On Error Goto loc_10BF30E
  loc_10BF07A: arg_14 = vbNullString
  loc_10BF085: For var_98 = 0 To 7: var_90 = var_98 'Integer
  loc_10BF0A1:   Call 0.Method_arg_1C (var_90, Me(0), Me(4))
  loc_10BF0A9:   var_8E = var_9A
  loc_10BF0B2:   If (var_8E = 0) Then
  loc_10BF0B5:     GoTo loc_10BF0C0
  loc_10BF0B8:   End If
  loc_10BF0BB: Next var_98 'Integer
  loc_10BF0C0: ' Referenced from: 10BF0B5
  loc_10BF0C6: If (var_8E = &HFF) Then
  loc_10BF0E2:   MsgBox("Reader Not Connected", &H10, var_DC, var_FC, var_11C)
  loc_10BF0FD:   Call 0.Method_arg_2C (0)
  loc_10BF102:   Result  End Sub 'Integer
  loc_10BF103: End If
  loc_10BF103: Proc_275_0_E0C2EC()
  loc_10BF120: Call 0.Method_arg_28 (var_94, &HFF, Me(0))
  loc_10BF133: If (Me(4) = -3000) Then
  loc_10BF141:   var_DC = "Smart Card Verification"
  loc_10BF151:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_10BF157:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_10BF172:   Call 0.Method_arg_2C (0, Me(4))
  loc_10BF177:   Result var_BC End Sub 'Integer
  loc_10BF17B: Else
  loc_10BF186:   If (Me(4) <> 0) Then
  loc_10BF1A1:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_10BF1BA:     Call 0.Method_arg_2C (0)
  loc_10BF1BF:     Result  End Sub 'Integer
  loc_10BF1C0:   End If
  loc_10BF1C0: End If
  loc_10BF1C0: Proc_275_0_E0C2EC()
  loc_10BF1E2: Call 0.Method_arg_24 (CStr(0), var_8C, Me(0))
  loc_10BF1F8: If (Me(4) = -3000) Then
  loc_10BF206:   var_DC = "Smart Card Verification"
  loc_10BF216:   var_BC = "PLEASE PUT A CARD ON READER"
  loc_10BF21C:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_10BF237:   Call 0.Method_arg_2C (0, Me(4))
  loc_10BF23C:   Result var_BC End Sub 'Integer
  loc_10BF240: Else
  loc_10BF24B:   If (Me(4) <> 0) Then
  loc_10BF266:     MsgBox(Me(0), &H10, var_BC, var_DC, var_FC)
  loc_10BF27F:     Call 0.Method_arg_2C (0)
  loc_10BF284:     Result  End Sub 'Integer
  loc_10BF285:   End If
  loc_10BF285: End If
  loc_10BF288: arg_14 = var_94
  loc_10BF294: var_8C = Proc_275_2_E8DFA4(var_8C)
  loc_10BF2E7: var_120 = CStr(Mid(var_8C, &HB, 6))
  loc_10BF308: Call 0.Method_arg_2C (&HFF, Val(var_120))
  loc_10BF30D: Result Val(CStr(Mid(var_8C, 1, 10))) End Sub 'Integer
  loc_10BF30E: ' Referenced from: 10BF074
  loc_10BF316: Set var_124 = Err()
  loc_10BF31C: Call 0.Method_arg_2C (var_120)
  loc_10BF33D: MsgBox(CVar(var_120), &H40, "Information", var_FC, var_11C)
  loc_10BF350: Result  End Sub 'Integer
  loc_10BF351: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_9_1191648
  'Data Table: 422204
  Dim var_8E As Integer
  Dim var_12C As String
  Dim var_C8 As Variant
  loc_1191254: On Error Goto loc_1191602
  loc_119125C: var_A0 = vbNullString 'Variant
  loc_1191267: For var_B4 = 0 To 7: var_88 = var_B4 'Integer
  loc_1191283:   Call 0.Method_arg_1C (var_88, Me(0), Me(4))
  loc_119128B:   var_8E = var_B6
  loc_1191294:   If (var_8E = 0) Then
  loc_1191297:     GoTo loc_11912A2
  loc_119129A:   End If
  loc_119129D: Next var_B4 'Integer
  loc_11912A2: ' Referenced from: 1191297
  loc_11912A8: If (var_8E = &HFF) Then
  loc_11912C4:   MsgBox("Reader Not Connected", &H10, var_E8, var_108, var_128)
  loc_11912DF:   Call 0.Method_arg_2C (0)
  loc_11912E4:   Result  End Sub 'Integer
  loc_11912E5: End If
  loc_11912E5: Proc_275_0_E0C2EC()
  loc_1191302: Call 0.Method_arg_28 (var_8C, &HFF, Me(0))
  loc_1191315: If (Me(4) = -3000) Then
  loc_1191323:   var_E8 = "Smart Card Verification"
  loc_1191333:   var_C8 = "PLEASE PUT A CARD ON READER"
  loc_1191339:   MsgBox(var_C8, &H10, var_E8, var_108, var_128)
  loc_1191354:   Call 0.Method_arg_2C (0, Me(4))
  loc_1191359:   Result var_C8 End Sub 'Integer
  loc_119135D: Else
  loc_1191368:   If (Me(4) <> 0) Then
  loc_1191383:     MsgBox(Me(0), &H10, var_C8, var_E8, var_108)
  loc_119139C:     Call 0.Method_arg_2C (0)
  loc_11913A1:     Result  End Sub 'Integer
  loc_11913A2:   End If
  loc_11913A2: End If
  loc_11913A2: Proc_275_0_E0C2EC()
  loc_11913C4: Call 0.Method_arg_20 (CStr(0), vbNullString, Me(0))
  loc_11913DA: If (Me(4) = -3000) Then
  loc_11913E8:   var_E8 = "Smart Card Verification"
  loc_11913F8:   var_C8 = "PLEASE PUT A CARD ON READER"
  loc_11913FE:   MsgBox(var_C8, &H10, var_E8, var_108, var_128)
  loc_1191419:   Call 0.Method_arg_2C (0, Me(4))
  loc_119141E:   Result var_C8 End Sub 'Integer
  loc_1191422: Else
  loc_119142D:   If (Me(4) <> 0) Then
  loc_1191448:     MsgBox(Me(0), &H10, var_C8, var_E8, var_108)
  loc_1191461:     Call 0.Method_arg_2C (0)
  loc_1191466:     Result  End Sub 'Integer
  loc_1191467:   End If
  loc_1191467: End If
  loc_1191467: Proc_275_0_E0C2EC()
  loc_1191489: Call 0.Method_arg_20 (CStr(1), vbNullString, Me(0))
  loc_119149F: If (Me(4) = -3000) Then
  loc_11914AD:   var_E8 = "Smart Card Verification"
  loc_11914BD:   var_C8 = "PLEASE PUT A CARD ON READER"
  loc_11914C3:   MsgBox(var_C8, &H10, var_E8, var_108, var_128)
  loc_11914DE:   Call 0.Method_arg_2C (0, Me(4))
  loc_11914E3:   Result var_C8 End Sub 'Integer
  loc_11914E7: Else
  loc_11914F2:   If (Me(4) <> 0) Then
  loc_119150D:     MsgBox(Me(0), &H10, var_C8, var_E8, var_108)
  loc_1191526:     Call 0.Method_arg_2C (0)
  loc_119152B:     Result  End Sub 'Integer
  loc_119152C:   End If
  loc_119152C: End If
  loc_119152C: Proc_275_0_E0C2EC()
  loc_1191545: var_12C = CStr(2)
  loc_119154E: Call 0.Method_arg_20 (var_12C, vbNullString, Me(0))
  loc_1191564: If (Me(4) = -3000) Then
  loc_1191572:   var_E8 = "Smart Card Verification"
  loc_1191582:   var_C8 = "PLEASE PUT A CARD ON READER"
  loc_1191588:   MsgBox(var_C8, &H10, var_E8, var_108, var_128)
  loc_11915A3:   Call 0.Method_arg_2C (0, Me(4))
  loc_11915A8:   Result var_C8 End Sub 'Integer
  loc_11915AC: Else
  loc_11915B7:   If (Me(4) <> 0) Then
  loc_11915D2:     MsgBox(Me(0), &H10, var_C8, var_E8, var_108)
  loc_11915EB:     Call 0.Method_arg_2C (0)
  loc_11915F0:     Result  End Sub 'Integer
  loc_11915F1:   End If
  loc_11915F1: End If
  loc_11915FC: Call 0.Method_arg_2C (&HFF)
  loc_1191601: Result  End Sub 'Integer
  loc_1191602: ' Referenced from: 1191254
  loc_119160A: Set var_130 = Err()
  loc_1191610: Call 0.Method_arg_2C (var_12C)
  loc_1191631: MsgBox(CVar(var_12C), &H40, "Information", var_108, var_128)
  loc_1191644: Result  End Sub 'Integer
  loc_1191645: Result  End Sub 'Integer
  loc_1191646: Assert
End Sub

Public Sub Proc_275_10_10A64F0(arg_C) '10A64F0
  'Data Table: 422204
  Dim var_D0 As Variant
  Dim var_94 As String
  Dim unk_42221E As Connection15
  Dim var_BC As Variant
  Dim var_C0 As Fields15
  Dim var_D4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_8C As Recordset15
  Dim var_B8 As Variant
  Dim var_E4 As Variant
  loc_10A6260: On Error Goto loc_10A64AA
  loc_10A6271: If (Proc_275_6_1133A80(var_90) = 0) Then
  loc_10A6279:   Result 0 End Sub 'Integer
  loc_10A627A: End If
  loc_10A6280: var_D0 = 0
  loc_10A62AD: unk_42221E.Execute "Select Count(*) From SmartCardMaster Where HW_Id='" & arg_C & "'", var_B8, -1
  loc_10A62BD: var_D0 = var_C0.Item(var_C0)
  loc_10A62C5: var_D4 = var_D4.Value
  loc_10A62EC: If (var_E4 > 0) Then
  loc_10A6330:   var_114 = CVar("Select Code,Name,CardNo From SmartCardRegistration Where SerialNo='" & arg_C & "' And Code='") & Trim(Left(var_90, &HC)) 
  loc_10A6339:   var_124 = var_114 & "'" 
  loc_10A6347:   unk_42221E.Execute CStr(var_124), var_134, -1
  loc_10A6352:   Set var_8C = var_BC.Fields
  loc_10A6382:   If (var_8C.RecordCount > 0) Then
  loc_10A6394:     var_BC = var_8C.Fields
  loc_10A63E6:     var_114 = "Smart Card Verification"
  loc_10A63F8:     var_94 = "Hardware Id Already Asigned to.." & vbCrLf
  loc_10A6421:     var_104 = CVar(var_94 & "Name    : " & Proc_6_38_E69628(CVar(var_BC.Item("Name")), var_BC) & vbCrLf & "Card ID : " & Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardNo")), CVar(var_8C.Fields.Item("CardNo")))) 'String
  loc_10A6424:     MsgBox(var_104, &H40, var_114, var_124, var_134)
  loc_10A6459:     Set var_8C = Nothing
  loc_10A6461:     Result 0 End Sub 'Integer
  loc_10A6465:   Else
  loc_10A6486:     MsgBox("Hardware Id Already Registered.", &H10, "Smart Card Verification", var_104, var_114)
  loc_10A649B:     Result 0 End Sub 'Integer
  loc_10A649C:   End If
  loc_10A649C: End If
  loc_10A64A1: Set var_8C = Nothing
  loc_10A64A9: Result &HFF End Sub 'Integer
  loc_10A64AA: ' Referenced from: 10A6260
  loc_10A64B2: Set var_BC = Err()
  loc_10A64B8: Call 0.Method_arg_2C (var_94)
  loc_10A64D9: MsgBox(CVar(var_94), &H40, "Information", var_104, var_114)
  loc_10A64EC: Result arg_C End Sub 'Integer
  loc_10A64ED: Result  End Sub 'Integer
  loc_10A64EE: Loop Until  'do at: 10A2E60
End Sub

Public Sub Proc_275_11_10CC4B0(arg_C, arg_10, arg_14) '10CC4B0
  'Data Table: 422204
  Dim var_94 As String
  Dim var_A8 As String
  Dim unk_42221E As Connection15
  Dim var_8C As Recordset15
  Dim var_DC As Fields15
  Dim var_D8 As Variant
  Dim var_11C As String
  Dim var_130 As Variant
  loc_10CC1EC: On Error Goto loc_10CC469
  loc_10CC20E: var_A8 = 0
  loc_10CC253: If (Proc_275_12_130B494(0, arg_14, arg_C, arg_10, 0) = 0) Then
  loc_10CC25B:   Result 0 End Sub 'Integer
  loc_10CC25C: End If
  loc_10CC277: var_A8 = "Select Code,SerialNo,Name,CardNo,CardType From SmartCardRegistration Where SerialNo='" & arg_14 & "'"
  loc_10CC280: unk_42221E.Execute var_A8, var_D8, -1
  loc_10CC28B: Set var_8C = var_DC
  loc_10CC2AF: If (var_8C.RecordCount > 0) Then
  loc_10CC2C1:   var_DC = var_8C.Fields
  loc_10CC2DA:   arg_10 = Proc_6_38_E69628(CVar(var_DC.Item("CardType")), var_DC, 0, 0)
  loc_10CC2EC:   If (arg_10 = "Member") Then
  loc_10CC350:     var_150 = "Smart Card Verification"
  loc_10CC362:     var_94 = "Member Card is Already Registered." & vbCrLf
  loc_10CC381:     var_11C = var_94 & "Name    : " & Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name")), var_94 & "Name    : ") & vbCrLf & "Card ID : "
  loc_10CC38B:     var_130 = CVar(var_11C & Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardNo")), 0)) 'String
  loc_10CC38E:     MsgBox(var_130, &H40, var_150, var_170, var_190)
  loc_10CC3C3:     Set var_8C = Nothing
  loc_10CC3CB:     Result 0 End Sub 'Integer
  loc_10CC3CF:   Else
  loc_10CC3D7:     If (arg_10 = "Cash Card") Then
  loc_10CC3FB:       MsgBox("Cash Card is Already Registered.", &H40, "Smart Card Verification", var_130, var_150)
  loc_10CC410:       Set var_8C = Nothing
  loc_10CC418:       Result 0 End Sub 'Integer
  loc_10CC41C:     Else
  loc_10CC43D:       MsgBox("Smart Card is Already Registered.", &H40, "Smart Card Verification", var_130, var_150)
  loc_10CC452:       Set var_8C = Nothing
  loc_10CC45A:       Result 0 End Sub 'Integer
  loc_10CC45B:     End If
  loc_10CC45B:   End If
  loc_10CC45B: End If
  loc_10CC460: Set var_8C = Nothing
  loc_10CC468: Result &HFF End Sub 'Integer
  loc_10CC469: ' Referenced from: 10CC1EC
  loc_10CC471: Set var_DC = Err()
  loc_10CC477: Call 0.Method_arg_2C (var_94)
  loc_10CC498: MsgBox(CVar(var_94), &H40, "Information", var_130, var_150)
  loc_10CC4AB: Result 0 End Sub 'Integer
  loc_10CC4AC: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_12_130B494(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C) '130B494
  'Data Table: 422204
  Dim var_C4 As Variant
  Dim var_118 As String
  Dim var_11C As String
  Dim unk_42221E As Connection15
  Dim var_120 As Variant
  Dim var_124 As Variant
  Dim var_128 As Field20
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim arg_2C As Double
  Dim var_F4 As Variant
  Dim var_90 As Recordset15
  loc_130AD6C: On Error Goto loc_130B44D
  loc_130AD83: If (Proc_275_5_11FF0D0(var_94, arg_20) = 0) Then
  loc_130AD8B:   Result 0 End Sub 'Integer
  loc_130AD8C: End If
  loc_130AD97: If (Proc_275_14_E82D00(var_94, arg_24) = 0) Then
  loc_130AD9F:   Result 0 End Sub 'Integer
  loc_130ADA0: End If
  loc_130ADA6: If (arg_C < 0) Then
  loc_130ADC2:   MsgBox("Invalid Check Level", &H10, var_D4, var_F4, var_114)
  loc_130ADD2:   Result arg_10 End Sub 'Integer
  loc_130ADD3: End If
  loc_130ADF7: arg_14 = CStr(Trim(Left(var_94, &HC)))
  loc_130AE12: var_B4 = Right(var_94, &H14)
  loc_130AE1D: var_D4 = Trim(var_B4)
  loc_130AE26: arg_1C = CStr(var_D4)
  loc_130AE37: If (arg_C >= 0) Then
  loc_130AE40:   var_C4 = 0
  loc_130AE6D:   unk_42221E.Execute "Select Count(*) From SmartCardMaster Where HW_Id='" & arg_10 & "'", var_B4, -1
  loc_130AE75:   var_120 = var_120.Fields
  loc_130AE7D:   var_C4 = var_124.Item(var_124)
  loc_130AE85:   var_128 = var_128.Value
  loc_130AEAC:   If (var_D4 = 0) Then
  loc_130AECA:     var_B4 = "Hardware Id Not Registered."
  loc_130AED0:     MsgBox(var_B4, &H10, "Smart Card Verification", var_F4, var_114)
  loc_130AEE5:     Result 0 End Sub 'Integer
  loc_130AEE6:   End If
  loc_130AEE6: End If
  loc_130AEEC: If (arg_C > 0) Then
  loc_130AF03:   var_118 = "Select Code,CardType,CardNo,SerialNo,ValidUpTo,BlockedYN,MemberCode,CurrBal,SecurBal From SmartCardRegistration Where code='" & arg_14
  loc_130AF13:   unk_42221E.Execute var_118 & "'", var_B4, -1
  loc_130AF42:   If (var_120.RecordCount = 0) Then
  loc_130AF50:     var_D4 = "Smart Card Verification"
  loc_130AF66:     MsgBox("This Smart Card is Not Registered!", &H10, var_D4, var_F4, var_114)
  loc_130AF7B:     Set var_8C = Nothing
  loc_130AF83:     Result 0 End Sub 'Integer
  loc_130AF84:   End If
  loc_130AF98:   If (var_8C.RecordCount > 0) Then
  loc_130AFAA:     var_120 = var_8C.Fields
  loc_130AFC3:     arg_18 = Proc_6_38_E69628(CVar(var_120.Item("CardType")), var_120)
  loc_130AFF5:     arg_1C = Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardNo")))
  loc_130B027:     arg_28 = Proc_6_38_E69628(CVar(var_8C.Fields.Item("MemberCode")))
  loc_130B057:     Proc_6_39_E7D3A0(var_D4, CVar(var_8C.Fields.Item("CurrBal")))
  loc_130B060:     arg_2C = CSng(var_D4)
  loc_130B093:     Proc_6_39_E7D3A0(var_D4, CVar(var_8C.Fields.Item("SecurBal")))
  loc_130B0D1:     var_F4 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("SerialNo")), CSng(var_D4))) 'String
  loc_130B0F6:     If CBool(var_F4 <> Trim(arg_10)) Then
  loc_130B11A:       MsgBox("InValid Smart Card", &H10, "Smart Card Verification", var_F4, var_114)
  loc_130B12F:       Set var_8C = Nothing
  loc_130B137:       Result 0 End Sub 'Integer
  loc_130B138:     End If
  loc_130B138:   End If
  loc_130B138: End If
  loc_130B13E: If (arg_C > 1) Then
  loc_130B155:   If (var_8C.RecordCount > 0) Then
  loc_130B191:     If (Proc_6_38_E69628(CVar(var_8C.Fields.Item("BlockedYN")), arg_2C) = "Y") Then
  loc_130B19F:       var_D4 = "Smart Card Verification"
  loc_130B1B5:       MsgBox("Smart Card is Blocked By Administrator.", &H10, var_D4, var_F4, var_114)
  loc_130B1CA:       Set var_8C = Nothing
  loc_130B1D2:       Result 0 End Sub 'Integer
  loc_130B1D3:     End If
  loc_130B1D3:   End If
  loc_130B1E7:   If (var_8C.RecordCount > 0) Then
  loc_130B232:     If (CDate(CDate(Proc_6_15_EF37AC(var_D4))) > var_8C.Fields.Item("ValidUpto").Value) Then
  loc_130B240:       var_D4 = "Smart Card Verification"
  loc_130B256:       MsgBox("Validity Of Smart Card is Expired", &H10, var_D4, var_F4, var_114)
  loc_130B26B:       Set var_8C = Nothing
  loc_130B273:       Result 0 End Sub 'Integer
  loc_130B274:     End If
  loc_130B274:   End If
  loc_130B2AD:   If (Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardType"))) = "Member") Then
  loc_130B2E8:     var_118 = Proc_6_38_E69628(CVar(var_8C.Fields.Item("MemberCode")), "Select ActiveYN,BlackListed From SubGroup Where Subcode='", var_D4)
  loc_130B2EC:     var_11C = -1 & var_118
  loc_130B2FC:     unk_42221E.Execute var_118 & "'" & "'", var_128, 
  loc_130B307:     Set var_90 = var_128
  loc_130B335:     If (var_90.RecordCount > 0) Then
  loc_130B372:       If (CDbl(Proc_6_38_E69628(CVar(var_90.Fields.Item("ActiveYN")))) <> CDbl(1)) Then
  loc_130B396:         MsgBox("Member is Currently Not Active.", &H10, "Member Verification", var_F4, var_114)
  loc_130B3AB:         Set var_8C = Nothing
  loc_130B3B3:         Set var_90 = Nothing
  loc_130B3BB:         Result 0 End Sub 'Integer
  loc_130B3BC:       End If
  loc_130B3E4:       var_118 = Proc_6_38_E69628(CVar(var_90.Fields.Item("BlackListed")))
  loc_130B3F5:       If (var_118 = "Y") Then
  loc_130B419:         MsgBox("Member is Not Authorized.", &H10, "Member Verification", var_F4, var_114)
  loc_130B42E:         Set var_8C = Nothing
  loc_130B436:         Set var_90 = Nothing
  loc_130B43E:         Result 0 End Sub 'Integer
  loc_130B43F:       End If
  loc_130B43F:     End If
  loc_130B43F:   End If
  loc_130B43F: End If
  loc_130B444: Set var_8C = Nothing
  loc_130B44C: Result &HFF End Sub 'Integer
  loc_130B44D: ' Referenced from: 130AD6C
  loc_130B455: Set var_120 = Err()
  loc_130B45B: Call 0.Method_arg_2C (var_118)
  loc_130B47C: MsgBox(CVar(var_118), &H40, "Information", var_F4, var_114)
  loc_130B48F: Result  End Sub 'Integer
  loc_130B490: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_13_F2F298
  'Data Table: 422204
  Dim var_86 As Integer
  loc_F2F194: On Error Goto loc_F2F253
  loc_F2F1A8: If (Proc_275_8_10BF354(var_90, var_98) = &HFF) Then
  loc_F2F1BA:   If ((var_90 <> CDbl(0)) Or (var_98 <> CDbl(0))) Then
  loc_F2F1DE:     MsgBox("This Card Is Not Initialised.", &H40, "Smart Card Verification", var_100, var_120)
  loc_F2F1F3:     Result 0 End Sub 'Integer
  loc_F2F1F7:   Else
  loc_F2F205:     If (Proc_275_6_1133A80(var_A0, var_9C) = &HFF) Then
  loc_F2F210:       If (var_A0 <> vbNullString) Then
  loc_F2F234:         MsgBox("This Card Is Not Initialised.", &H40, "Smart Card Verification", var_100, var_120)
  loc_F2F249:         Result 0 End Sub 'Integer
  loc_F2F24D:       Else
  loc_F2F24F:         var_86 = &HFF
  loc_F2F252:       End If
  loc_F2F252:     End If
  loc_F2F252:   End If
  loc_F2F252: End If
  loc_F2F252: Result var_86 End Sub 'Integer
  loc_F2F253: ' Referenced from: F2F194
  loc_F2F25B: Set var_124 = Err()
  loc_F2F261: Call 0.Method_arg_2C (var_128)
  loc_F2F282: MsgBox(CVar(var_128), &H40, "Information", var_100, var_120)
  loc_F2F295: Result var_9C End Sub 'Integer
  loc_F2F296: Result  End Sub 'Integer
End Sub

Public Sub Proc_275_14_E82D00(arg_C) 'E82D00
  'Data Table: 422204
  Dim var_86 As Integer
  loc_E82CA2: var_86 = &HFF
  loc_E82CAF: If (Len(arg_C) > 0) Then
  loc_E82CBD:   If (Asc(arg_C) = 0) Then
  loc_E82CE7:     MsgBox(CVar("This is Fresh Smart Card." & vbCrLf & "Please Initialised First."), &H40, "Smart Card", var_DC, var_FC)
  loc_E82CFC:     var_86 = 0
  loc_E82CFF:   End If
  loc_E82CFF: End If
  loc_E82CFF: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_275_15_111B390
  'Data Table: 422204
  Dim var_98 As String
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_10C As String
  Dim var_90 As Recordset15
  Dim var_130 As Fields15
  Dim arg_20 As Long
  Dim var_12C As Variant
  Dim var_160 As Variant
  Dim unk_42221E As Connection15
  Dim var_150 As Variant
  Dim var_184 As Variant
  Dim var_1AC As Variant
  loc_111B087: var_8C = arg_10
  loc_111B09E: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_111B0CF: Proc_6_7_F26918(var_C8, arg_14, CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_8C & "' And VP.Date_From<="))
  loc_111B0EB: Me.Connection15.Execute CStr(var_12C & var_C8 & " Order By VP.Date_From DESC"), -1, var_130
  loc_111B0F6: Set var_90 = var_130
  loc_111B12C: If (var_90.RecordCount > 0) Then
  loc_111B16B:   If (var_90.Fields.Item("Number_Method").Value = "Manual") Then
  loc_111B16E:     GoTo loc_111B2D6
  loc_111B171:   End If
  loc_111B19C:   arg_1C = CStr(var_90.Fields.Item("Prefix").Value)
  loc_111B1D9:   var_D8 = (var_90.Fields.Item("start_srl_no").Value + 1)
  loc_111B1DF:   arg_20 = CLng(CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_8C & "' And VP.Date_From<="))
  loc_111B225:   var_10C = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(arg_20) & " Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_111B28C:   Proc_6_7_F26918(var_150, CVar(var_90.Fields.Item("Date_From")), CVar(var_10C & "') and V_Type='") & var_90.Fields.Item("V_Type").Value & "' and Date_From=", var_184)
  loc_111B294:   var_160 = -1 & var_150 
  loc_111B2A2:   unk_42221E.Execute CStr(var_160), var_188, arg_20
  loc_111B2D6:   ' Referenced from: 111B16E
  loc_111B2D6: End If
  loc_111B301: var_C8 = Space((5 - Len(var_8C)))
  loc_111B309: var_E8 = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_8C) + var_90.Fields.Item("V_Type").Value)
  loc_111B313: var_108 = (CVar(var_10C & "') and V_Type='") & var_90.Fields.Item("V_Type").Value + CVar(arg_1C))
  loc_111B324: var_12C = Space((5 - Len(arg_1C)))
  loc_111B32C: var_150 = (CVar(var_10C & "') and V_Type='") & var_90.Fields.Item("V_Type").Value & "' and Date_From=" + CVar(var_90.Fields.Item("Date_From")))
  loc_111B342: var_160 = Space((8 - Len(CStr(arg_20))))
  loc_111B34A: var_184 = (var_150 + var_160)
  loc_111B356: var_1AC = (var_184 + CVar(CStr(arg_20)))
  loc_111B381: var_88 = CStr(var_1AC)
  loc_111B389: Set var_90 = Nothing
  loc_111B38C: Exit Sub
End Sub

Public Sub Proc_275_16_10AF65C
  'Data Table: 422204
  Dim var_E8 As Variant
  Dim var_90 As String
  Dim var_CC As String
  Dim var_1D8 As Variant
  Dim var_378 As Variant
  loc_10AF43B: var_E8 = arg_28
  loc_10AF443: Proc_6_7_F26918(var_F8)
  loc_10AF463: Proc_183_8_EB1634(var_308, Proc_275_16_10AF65C4)
  loc_10AF48A: var_90 = "Insert Into SmartCardLedger(" & "DocId,VSNo,VType,VNo,VPrefix,Type,Site_Code," & "VDate,Code,HW_Id,AmtCr,AmtDr," & "Narration,U_Name,U_EntDt,U_AE,LogSite_Code,PreBalance) "
  loc_10AF4EF: var_CC = var_90 & "Values(" & "'" & arg_10 & "'," & CStr(arg_14) & ",'" & arg_18 & "'," & CStr(arg_1C) & ",'" & arg_20 & "','" & Proc_275_16_10AF65CC
  loc_10AF54B: var_1D8 = CVar(var_CC & "','" & arg_24 & "'," & vbNullString) & var_F8 & ",'" & CVar(arg_2C) & "','" & CVar(arg_30) & "'," & CVar(arg_34) 
  loc_10AF5B7: var_378 = var_1D8 & "," & CVar(arg_38) & "," & "'" & Trim(arg_3C) & "','" & CVar(Proc_275_16_10AF65C0) & "'," & var_308 & ",'" & CVar(Proc_275_16_10AF65C8) & "','" 
  loc_10AF5E9: Me.Connection15.Execute CStr(var_378 & CVar(MemVar_1F95078) & "'," & CVar(arg_50) & ")"), var_41C, -1
  loc_10AF65B: Exit Sub
End Sub

Public Sub Proc_275_17_1187538(arg_C, arg_10, arg_14, arg_18) '1187538
  'Data Table: 422204
  Dim var_BA As Integer
  loc_118716B: var_88 = arg_C
  loc_1187171: var_8C = arg_10
  loc_118717D: var_94 = arg_30
  loc_1187183: var_98 = arg_34
  loc_1187189: var_9C = Proc_275_17_11875380
  loc_118718F: var_A4 = "RCARD"
  loc_118719A: var_C0 = arg_14
  loc_11871A5: If (var_C0 = "Recharge") Then
  loc_11871BC:   var_A0 = Proc_275_15_111B390(MemVar_1F95044, var_A4, arg_18)
  loc_11871C2:   Proc_275_17_11875384 = var_A0
  loc_11871D1:   Proc_6_39_E7D3A0(var_E0, arg_20, var_B0)
  loc_11871E4:   If (var_E0 > 0) Then
  loc_11871EA:     var_B8 = "RCARDC"
  loc_1187227:     Proc_275_16_10AF65C(MemVar_1F95044, var_A0, 1, var_A4, var_B4, var_B0, MemVar_1F95070, arg_18)
  loc_1187232:     var_BA = (var_BA + 1)
  loc_1187235:   End If
  loc_1187240:   Proc_6_39_E7D3A0(var_E0, arg_28, 1, var_88, var_8C, arg_20)
  loc_1187253:   If (var_E0 > 0) Then
  loc_1187259:     var_B8 = "RCARDS"
  loc_1187296:     Proc_275_16_10AF65C(MemVar_1F95044, var_A0, 1, var_A4, var_B4, var_B0, MemVar_1F95070, arg_18)
  loc_11872A1:     var_BA = (var_BA + 1)
  loc_11872A4:   End If
  loc_11872A7: Else
  loc_11872AF:   If (var_C0 = "Refund") Then
  loc_11872C6:     var_A0 = Proc_275_15_111B390(MemVar_1F95044, var_A4, arg_18, var_B0, var_B4, 1, var_88)
  loc_11872CC:     Proc_275_17_11875384 = var_A0
  loc_11872DB:     Proc_6_39_E7D3A0(var_E0, arg_20, var_8C, arg_28, CDbl(0))
  loc_11872EE:     If (var_E0 > 0) Then
  loc_11872F4:       var_B8 = "RCARDC"
  loc_1187331:       Proc_275_16_10AF65C(MemVar_1F95044, var_A0, 1, var_A4, var_B4, var_B0, MemVar_1F95070, arg_18)
  loc_118733C:       var_BA = (var_BA + 1)
  loc_118733F:     End If
  loc_118734A:     Proc_6_39_E7D3A0(var_E0, arg_28, 1, var_88, var_8C, CDbl(0))
  loc_118735D:     If (var_E0 > 0) Then
  loc_1187363:       var_B8 = "RCARDS"
  loc_11873A0:       Proc_275_16_10AF65C(MemVar_1F95044, var_A0, 1, var_A4, var_B4, var_B0, MemVar_1F95070, arg_18)
  loc_11873AB:       var_BA = (var_BA + 1)
  loc_11873AE:     End If
  loc_11873B1:   Else
  loc_11873B9:     If (var_C0 = "Waive-off") Then
  loc_11873D0:       var_A0 = Proc_275_15_111B390(MemVar_1F95044, var_A4, arg_18, var_B0, var_B4, 1, var_88)
  loc_11873D6:       Proc_275_17_11875384 = var_A0
  loc_11873E5:       Proc_6_39_E7D3A0(var_E0, arg_20, var_8C, CDbl(0), arg_28)
  loc_11873F8:       If (var_E0 > 0) Then
  loc_11873FE:         var_B8 = "WCARDC"
  loc_118743B:         Proc_275_16_10AF65C(MemVar_1F95044, var_A0, 1, var_A4, var_B4, var_B0, MemVar_1F95070, arg_18)
  loc_1187446:         var_BA = (var_BA + 1)
  loc_1187449:       End If
  loc_1187454:       Proc_6_39_E7D3A0(var_E0, arg_28, 1, var_88, var_8C, CDbl(0))
  loc_1187467:       If (var_E0 > 0) Then
  loc_118746D:         var_B8 = "WCARDS"
  loc_11874AA:         Proc_275_16_10AF65C(MemVar_1F95044, var_A0, 1, var_A4, var_B4, var_B0, MemVar_1F95070, arg_18)
  loc_11874B5:         var_BA = (var_BA + 1)
  loc_11874B8:       End If
  loc_11874BB:     Else
  loc_11874C3:       If (var_C0 = "Reward") Then
  loc_11874D1:         Proc_6_39_E7D3A0(var_E0, arg_20, 1, var_88, var_8C, CDbl(0))
  loc_11874E4:         If (var_E0 > 0) Then
  loc_11874EA:           var_B8 = "REWARD"
  loc_1187527:           Proc_275_16_10AF65C(MemVar_1F95044, Proc_275_17_11875384, 1, var_A4, var_B4, var_B0, MemVar_1F95070, arg_18)
  loc_1187532:           var_BA = (var_BA + 1)
  loc_1187535:         End If
  loc_1187535:       End If
  loc_1187535:     End If
  loc_1187535:   End If
  loc_1187535: End If
  loc_1187535: Exit Sub
End Sub

Public Sub Proc_275_18_150214C(arg_C) '150214C
  'Data Table: 422204
  Dim var_BC As String
  Dim var_D0 As String
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1E8 As String
  Dim unk_42221E As Connection15
  Dim var_88 As Recordset15
  Dim var_20C As Fields15
  Dim var_F4 As Variant
  Dim var_208 As Variant
  Dim var_24C As Variant
  Dim var_174 As Variant
  Dim var_23C As Variant
  Dim var_26C As Variant
  Dim var_2D4 As Variant
  Dim var_2F4 As Variant
  Dim var_370 As Variant
  Dim var_390 As Variant
  loc_1501347: var_D0 = 0
  loc_150138C: If (Proc_275_12_130B494(1, var_98, var_90, var_94, 0) = 0) Then
  loc_150138F:   Exit Sub
  loc_1501390: End If
  loc_15013A4: var_BC = "Select SCR.CardType,SCR.CardNo,MF.Relationship,SG.Name As Member,SCR.Name," & "convert(Varchar(11),SCL.Vdate,103) As Vdate,SCL.VType,SCL.VNo,SCL.Narration,SCL.AmtCr,SCL.AmtDr,SCL.U_EntDt,SCL.PreBalance From "
  loc_15013AB: var_D0 = var_BC & "SmartCardLedger SCL Inner Join SmartCardRegistration SCR On SCL.Code=SCR.Code "
  loc_15013B9: var_104 = CVar(var_D0 & "Left Join MemberFamily MF On SCL.Code=MF.CardRegId Left Join SubGroup SG " & "On MF.Subcode=SG.Subcode Where SCL.Code=") 'String
  loc_15013C7: Proc_6_17_EAAE40(var_F4, var_90, var_104, var_208, -1, var_20C)
  loc_15013F0: Proc_6_7_F26918(var_174, MemVar_1F950EC, 0 & var_F4 & " And SCL.Type In ('RCARDC','RCARDS','CARDEXP') And " & "SCL.Vdate=", 0)
  loc_1501422: unk_42221E.Execute CStr(var_D0 & var_174 & " And SCL.LogSite_Code='" & CVar(MemVar_1F95078) & "' Order By SCL.U_EntDt"), var_B0, var_B8
  loc_150142D: Set var_88 = var_20C
  loc_150146B: If (var_88.RecordCount > 0) Then
  loc_1501471:   var_88.MoveFirst
  loc_15014A4:   var_8C = Replace(CStr(Space(&H27)), " ", "-", 1, -1, 0)
  loc_15014AF:   Close 1
  loc_15014B8:   Open "C:\reptmp\STATEMENT.TXT" For Output As 1 Len = &HFF
  loc_15014F5:   If (Proc_6_38_E69628(CVar(var_88.Fields.Item("CardType"))) = "Member") Then
  loc_1501531:     If (Proc_6_38_E69628(CVar(var_88.Fields.Item("RelationShip"))) <> "Member") Then
  loc_15015E0:       var_184 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("CardType"))) = "Member"), CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": "), "Guest    : ")
  loc_1501637:       var_1A4 = (Chr(&HF) + var_184)
  loc_1501641:       var_208 = (var_D0 & "Guest    : " & " And SCL.LogSite_Code='" + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name"))), &H1C)))
  loc_1501648:       var_24C = (var_208 + Chr(&H12))
  loc_150164E:       Print 1, var_24C
  loc_150168F:     End If
  loc_15016F0:     var_104 = (Chr(&HF) + "Member   : ")
  loc_15016FA:     var_154 = (CVar(var_88.Fields.Item("CardType")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_88.Fields.Item("Member"))), &H1C)))
  loc_1501701:     var_184 = (CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": ") + Chr(&H12))
  loc_1501707:     Print 1, var_184
  loc_150178B:     var_104 = (Chr(&HF) + "Member Id: ")
  loc_1501795:     var_154 = (CVar(var_88.Fields.Item("CardType")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo"))), &H1C)))
  loc_150179C:     var_184 = (CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": ") + Chr(&H12))
  loc_15017A2:     Print 1, var_184
  loc_15017C8:   Else
  loc_1501829:     var_104 = (Chr(&HF) + "Guest    :   ")
  loc_1501833:     var_154 = (CVar(var_88.Fields.Item("CardType")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_88.Fields.Item("Member"))), &H1C)))
  loc_150183A:     var_184 = (CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": ") + Chr(&H12))
  loc_1501840:     Print 1, var_184
  loc_15018C4:     var_104 = (Chr(&HF) + "Card Id  :   ")
  loc_15018CE:     var_154 = (CVar(var_88.Fields.Item("CardType")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo"))), &H1C)))
  loc_15018D5:     var_184 = (CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": ") + Chr(&H12))
  loc_15018DB:     Print 1, var_184
  loc_15018FE:   End If
  loc_150195C:   var_104 = (Chr(&HF) + "Dated    : ")
  loc_1501966:   var_154 = (CVar(var_88.Fields.Item("CardType")) + CVar(Proc_6_45_EADFB8(CStr(var_88.Fields.Item("VDate").Value), &H1C)))
  loc_150196D:   var_184 = (CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": ") + Chr(&H12))
  loc_1501973:   Print 1, var_184
  loc_15019E1:   Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": "), CVar(var_88.Fields.Item("PreBalance")))
  loc_1501A18:   var_1E8 = Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": "), "0.00")), 9, 1)
  loc_1501A31:   var_114 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("OPENING BALANCE:", &H14)))
  loc_1501A3B:   var_1C4 = (var_88.Fields.Item("VDate").Value + CVar(var_1E8))
  loc_1501A42:   var_208 = (CVar(var_88.Fields.Item("Name")) + Chr(&H12))
  loc_1501A48:   Print 1, var_208
  loc_1501A98:   var_104 = (Chr(&HF) + CVar(var_8C))
  loc_1501A9F:   var_134 = (CVar(Proc_6_45_EADFB8("OPENING BALANCE:", &H14)) + Chr(&H12))
  loc_1501AA5:   Print 1, CVar(var_88.Fields.Item("PreBalance"))
  loc_1501B12:   var_114 = (Chr(&HF) + CVar(Proc_6_52_EAE084("AMT DR", &H1D)))
  loc_1501B19:   var_154 = (Chr(&H12) + Space(1))
  loc_1501B23:   var_184 = (CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": ") + CVar(Proc_6_52_EAE084("AMT CR", 9)))
  loc_1501B2A:   var_1C4 = (Format(CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": "), "0.00") + Chr(&H12))
  loc_1501B30:   Print 1, CVar(var_88.Fields.Item("Name"))
  loc_1501B79:   var_104 = (Chr(&HF) + CVar(var_8C))
  loc_1501B80:   var_134 = (CVar(Proc_6_52_EAE084("AMT DR", &H1D)) + Chr(&H12))
  loc_1501B86:   Print 1, Space(1)
  loc_1501B97:   ' Referenced from: 1501E90
  loc_1501BA6:   If Not(var_88.EOF) Then
  loc_1501C08:     var_134 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(var_88.Fields.Item("Narration").Value), &H27)))
  loc_1501C0F:     var_174 = (Space(1) + Chr(&H12))
  loc_1501C15:     Print 1, CVar(Proc_6_52_EAE084("AMT CR", 9))
  loc_1501CED:     var_1C4 = (var_88.Fields.Item("vType").Value + "/")
  loc_1501CF9:     var_23C = (CVar(var_88.Fields.Item("Name")) + CVar(CStr(var_88.Fields.Item("VNo").Value)))
  loc_1501D30:     Proc_6_39_E7D3A0(var_294, CVar(var_88.Fields.Item("AmtDr")), 1)
  loc_1501D9D:     Proc_6_39_E7D3A0(var_31C, CVar(var_88.Fields.Item("AmtCr")), 1)
  loc_1501DEA:     var_154 = (Chr(&HF) + Format(CVar(var_88.Fields.Item("U_EntDt")), "hh:nn"))
  loc_1501DF1:     var_184 = (Chr(&H12) + Space(2))
  loc_1501DFB:     var_26C = (Format(CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": "), "0.00") + CVar(Proc_6_45_EADFB8(CStr(Chr(&H12)), &HD, 1)))
  loc_1501E05:     var_2D4 = (var_26C + CVar(Proc_6_52_EAE084(CStr(Format(var_294, "0.00")), 9, 1)))
  loc_1501E0C:     var_2F4 = (var_2D4 + Space(1))
  loc_1501E16:     var_370 = (var_2F4 + CVar(Proc_6_52_EAE084(CStr(Format(var_31C, "0.00")), 9, 1)))
  loc_1501E1D:     var_390 = (var_370 + Chr(&H12))
  loc_1501E23:     Print 1, var_390
  loc_1501E8B:     var_88.MoveNext
  loc_1501E90:     GoTo loc_1501B97
  loc_1501E93:   End If
  loc_1501EB6:   var_104 = (Chr(&HF) + CVar(var_8C))
  loc_1501EBD:   var_134 = (CVar(var_88.Fields.Item("U_EntDt")) + Chr(&H12))
  loc_1501EC3:   Print 1, Format(CVar(var_88.Fields.Item("U_EntDt")), "hh:nn")
  loc_1501F47:   var_114 = (Chr(&HF) + CVar(Proc_6_45_EADFB8("CURRENT BALANCE:", &H14, 1)))
  loc_1501F51:   var_184 = (Chr(&H12) + CVar(Proc_6_52_EAE084(CStr(Format(var_B0, "0.00")), 9, 1)))
  loc_1501F58:   var_1C4 = (Format(CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_88.Fields.Item("RelationShip")), 3, 0))) & ": "), "0.00") + Chr(&H12))
  loc_1501F5E:   Print 1, CVar(var_88.Fields.Item("Name"))
  loc_1501FA6:   var_104 = (Chr(&HF) + vbNullString)
  loc_1501FAD:   var_134 = (CVar(Proc_6_45_EADFB8("CURRENT BALANCE:", &H14, 1)) + Chr(&H12))
  loc_1501FB3:   Print 1, "0.00"
  loc_1501FE6:   var_104 = (Chr(&HF) + vbNullString)
  loc_1501FED:   var_134 = (CVar(Proc_6_45_EADFB8("CURRENT BALANCE:", &H14, 1)) + Chr(&H12))
  loc_1501FF3:   Print 1, "0.00"
  loc_1502026:   var_104 = (Chr(&HF) + vbNullString)
  loc_150202D:   var_134 = (CVar(Proc_6_45_EADFB8("CURRENT BALANCE:", &H14, 1)) + Chr(&H12))
  loc_1502033:   Print 1, "0.00"
  loc_1502066:   var_104 = (Chr(&HF) + vbNullString)
  loc_150206D:   var_134 = (CVar(Proc_6_45_EADFB8("CURRENT BALANCE:", &H14, 1)) + Chr(&H12))
  loc_1502073:   Print 1, "0.00"
  loc_15020A6:   var_104 = (Chr(&HF) + vbNullString)
  loc_15020AD:   var_134 = (CVar(Proc_6_45_EADFB8("CURRENT BALANCE:", &H14, 1)) + Chr(&H12))
  loc_15020B3:   Print 1, "0.00"
  loc_15020E4:   var_114 = (Chr(&H1B) + Chr(&H6D))
  loc_15020EA:   Print 1, Chr(&H12)
  loc_15020FB:   Close 1
  loc_1502104:   Open "C:\reptmp\STATEMENT.BAT" For Output As 1 Len = &HFF
  loc_1502114:   Print 1, "TYPE C:\reptmp\STATEMENT.TXT>" & arg_C
  loc_150211F:   Close 1
  loc_150213A:   var_A8 = CVar(Shell("C:\reptmp\STATEMENT.BAT", 0)) 'Variant
  loc_1502141: End If
  loc_1502146: Set var_88 = Nothing
  loc_1502149: Exit Sub
End Sub

Public Sub Proc_275_19_166FAB8(arg_C, arg_10) '166FAB8
  'Data Table: 422204
  Dim var_D4 As String
  Dim var_E8 As String
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_17C As String
  Dim var_18C As Variant
  Dim var_190 As String
  Dim unk_42221E As Connection15
  Dim var_98 As Recordset15
  Dim var_1B4 As Fields15
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_1BC As Field20
  Dim var_22C As Variant
  Dim var_23C As Variant
  Dim var_25C As Variant
  Dim var_1B0 As Variant
  Dim var_1A0 As String
  Dim var_284 As Variant
  Dim var_2E4 As Variant
  Dim var_414 As Variant
  loc_166E40B: var_88 = arg_C
  loc_166E416: If (Proc_275_20_13682EC() = 0) Then
  loc_166E419:   Exit Sub
  loc_166E41A: End If
  loc_166E425: var_E8 = 0
  loc_166E46A: If (Proc_275_12_130B494(1, var_A8, var_A0, var_A4, 0) = 0) Then
  loc_166E46D:   Exit Sub
  loc_166E46E: End If
  loc_166E482: var_D4 = "Select SCR.CardType,SCR.CardNo,MF.Relationship,SG.Name As Member,SCR.Name," & "convert(Varchar(11),SCL.Vdate,103) As Vdate,SCL.Type,SCL.VNo,SCL.Narration,SCL.AmtCr,SCL.AmtDr,SCL.U_EntDt,SCL.U_Name,SCL.PreBalance From "
  loc_166E489: var_E8 = var_D4 & "SmartCardLedger SCL Inner Join SmartCardRegistration SCR On SCL.Code=SCR.Code "
  loc_166E497: var_11C = CVar(var_E8 & "Left Join MemberFamily MF On SCL.Code=MF.CardRegId Left Join SubGroup SG " & "On MF.Subcode=SG.Subcode Where SCL.VType='RCARD' And SCL.Docid=") 'String
  loc_166E4A5: Proc_6_17_EAAE40(var_10C, var_88, var_11C, var_1B0, -1, var_1B4)
  loc_166E4AD: var_12C = 0 & var_10C 
  loc_166E4BD: var_15C = CVar(MemVar_1F95078) 'String
  loc_166E4D7: unk_42221E.Execute CStr(var_12C & " And SCL.LogSite_Code='" & var_15C & "'"), 0, var_E8
  loc_166E4E2: Set var_8C = var_1B4
  loc_166E521: Proc_6_17_EAAE40(var_10C, MemVar_1F95078, "Select * From Enviro WHERE LOGSITE_CODE=", var_12C)
  loc_166E529: var_11C = -1 & var_10C 
  loc_166E537: unk_42221E.Execute CStr(var_11C), var_1B4, var_C8
  loc_166E542: Set var_98 = var_1B4
  loc_166E568: If (var_98.RecordCount > 0) Then
  loc_166E593:   var_9C = Proc_6_38_E69628(CVar(var_98.Fields.Item("SMARTCARDRECIEPTPrintingDW")))
  loc_166E59C: End If
  loc_166E5A4: If (var_9C = "W") Then
  loc_166E5AD:   var_1B8 = var_8C.RecordCount
  loc_166E5BB:   If (var_1B8 > 0) Then
  loc_166E5C1:     var_8C.MoveFirst
  loc_166E5C6:     ' Referenced from: 166E63E
  loc_166E5D5:     If Not(var_8C.EOF) Then
  loc_166E5EF:       var_1BC = var_8C.Fields.Item("AmtCr")
  loc_166E5FE:       Proc_6_39_E7D3A0(var_11C, CVar(var_1BC))
  loc_166E606:       var_13C = 0
  loc_166E618:       If (var_11C > var_13C) Then
  loc_166E61E:         var_AC = "RECEIPT"
  loc_166E624:         var_B0 = "Received with thanks against.."
  loc_166E62A:       Else
  loc_166E62D:         var_AC = "REFUND SLIP"
  loc_166E633:         var_B0 = "Refund with thanks against.."
  loc_166E636:       End If
  loc_166E639:       var_8C.MoveNext
  loc_166E63E:       GoTo loc_166E5C6
  loc_166E641:     End If
  loc_166E646:     var_1D0 = "CASHCARDRECIEPT" 'Variant
  loc_166E674:     Set var_1B4 = var_8C 
  loc_166E67B:     CreateFieldDefFile(var_1B4, CStr(CVar(MemVar_1F950B4 & "\") & var_1D0 & ".ttx"))
  loc_166E687:     Set var_8C = var_1B4
  loc_166E6BE:     var_D4 = CStr(CVar(MemVar_1F950B4 & "\") & var_1D0 & ".RPT")
  loc_166E6C8:     Call 0.Method_arg_1C (var_D4, var_13C, var_1B4)
  loc_166E6D3:     MemVar_1F951E8 = var_1B4
  loc_166E6FF:     Call 0.Method_arg_64 (var_1B4, CVar(var_8C), var_13C)
  loc_166E707:     Call 0.Method_arg_2C (var_15C, &HFF)
  loc_166E715:     Call 0.Method_arg_150 (var_D0)
  loc_166E71A:     var_15C = 1
  loc_166E72E:     Call 0.Method_arg_90 (var_1B4, var_1B8)
  loc_166E736:     Call 0.Method_arg_24 (var_1E0)
  loc_166E745:     For var_200 =  To CVar(var_1B8): var_15C = var_200 'Variant
  loc_166E75F:       Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166E767:       Call 0.Method_arg_20 (var_1BC)
  loc_166E76F:       Call 0.Method_arg_30 (var_D4)
  loc_166E785:       var_210 = Ucase(CVar(var_D4)) 'Variant
  loc_166E7B5:       If (var_210 = Ucase("comp_name")) Then
  loc_166E7DA:         Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166E7E2:         Call 0.Method_arg_20 (var_1BC)
  loc_166E7EA:         Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_166E800:       Else
  loc_166E822:         If (var_210 = Ucase("comp_add1")) Then
  loc_166E847:           Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166E84F:           Call 0.Method_arg_20 (var_1BC)
  loc_166E857:           Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_166E86D:         Else
  loc_166E88F:           If (var_210 = Ucase("comp_pin")) Then
  loc_166E8B4:             Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166E8BC:             Call 0.Method_arg_20 (var_1BC)
  loc_166E8C4:             Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_166E8DA:           Else
  loc_166E8FC:             If (var_210 = Ucase("comp_GSTIN")) Then
  loc_166E921:               Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166E929:               Call 0.Method_arg_20 (var_1BC)
  loc_166E931:               Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_166E947:             Else
  loc_166E969:               If (var_210 = Ucase("Title")) Then
  loc_166E98E:                 Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166E996:                 Call 0.Method_arg_20 (var_1BC)
  loc_166E99E:                 Call 0.Method_arg_38 ("'" & var_AC & "'")
  loc_166E9B4:               Else
  loc_166E9D6:                 If (var_210 = Ucase("Narration")) Then
  loc_166EA08:                   Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166EA10:                   Call 0.Method_arg_20 (var_1BC)
  loc_166EA18:                   Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(var_B0) & "'")
  loc_166EA30:                 Else
  loc_166EA52:                   If (var_210 = Ucase("CurrBal")) Then
  loc_166EA7C:                     Call 0.Method_arg_90 (var_1B4, CLng(var_1E0))
  loc_166EA84:                     Call 0.Method_arg_20 (var_1BC)
  loc_166EA8C:                     Call 0.Method_arg_38 ("'" & CStr(var_C8) & "'")
  loc_166EAA1:                   End If
  loc_166EAA1:                 End If
  loc_166EAA1:               End If
  loc_166EAA1:             End If
  loc_166EAA1:           End If
  loc_166EAA1:         End If
  loc_166EAA1:       End If
  loc_166EAA4:     Next var_200 'Variant
  loc_166EACA:     var_15C = arg_10
  loc_166EADA:     var_17C = "0"
  loc_166EAF1:     If CBool((Ucase(arg_10) <> "PRN") And (Ucase(var_15C) <> var_17C)) Then
  loc_166EAF7:       Proc_96_98_F10508(arg_10)
  loc_166EAFC:     End If
  loc_166EB04:     If (arg_10 = "0") Then
  loc_166EB0C:       Set var_1BC = Nothing
  loc_166EB28:       Set var_1B4 = MemVar_1F951E8 
  loc_166EB34:       Proc_6_99_1484404(var_1B4, 0, "RECIEPT")
  loc_166EB3F:       MemVar_1F951E8 = var_1B4
  loc_166EB50:     Else
  loc_166EB6D:       Call 0.Method_Me8 (False, 1, var_15C, var_17C)
  loc_166EB72:     End If
  loc_166EB72:   End If
  loc_166EB75: Else
  loc_166EB89:   If (var_8C.RecordCount > 0) Then
  loc_166EB8F:     var_8C.MoveFirst
  loc_166EBC2:     var_90 = Replace(CStr(Space(&H27)), " ", "-", 1, -1, 0)
  loc_166EBCD:     Close 1
  loc_166EBD6:     Open "C:\reptmp\RECIEPT.TXT" For Output As 1 Len = &HFF
  loc_166EC15:     Print 1, Proc_6_98_11AC34C(CStr(Left(MemVar_1F95130, &H27)), "D", &H27)
  loc_166EC4C:     var_11C = (Chr(&HF) + CVar(var_90))
  loc_166EC53:     var_14C = (Ucase("CurrBal") + Chr(&H12))
  loc_166EC59:     Print 1, Chr(&H12) & " And SCL.LogSite_Code='"
  loc_166EC90:     Proc_6_39_E7D3A0(Ucase("CurrBal"), CVar(var_8C.Fields.Item("AmtCr")), var_1A0)
  loc_166ECAA:     If (Ucase("CurrBal") > 0) Then
  loc_166ECD4:       Print 1, Proc_6_98_11AC34C("RECEIPT", "D", &H27)
  loc_166ECE8:     Else
  loc_166ED0F:       Print 1, Proc_6_98_11AC34C("REFUND SLIP", "D", &H27)
  loc_166ED20:     End If
  loc_166ED43:     var_11C = (Chr(&HF) + CVar(var_90))
  loc_166ED4A:     var_14C = (Ucase("CurrBal") + Chr(&H12))
  loc_166ED50:     Print 1, Chr(&H12) & " And SCL.LogSite_Code='"
  loc_166EDFC:     var_11C = (Chr(&HF) + "Receipt No.:")
  loc_166EE06:     var_16C = (Ucase("CurrBal") + CVar(Proc_6_52_EAE084(CStr(var_8C.Fields.Item("VNo").Value), 8)))
  loc_166EE0F:     var_18C = ((Ucase(arg_10) <> "PRN") And (Ucase(" Date :   ") <> "VDate") + " Date :   ")
  loc_166EE19:     var_23C = (var_8C.Fields.Item("VNo").Value & " And SCL.LogSite_Code='" & " Date :   " & "'" + CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("VDate").Value), &HB)))
  loc_166EE20:     var_25C = (var_23C + Chr(&H12))
  loc_166EE26:     Print 1, var_25C
  loc_166EE94:     If (Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardType")), &HFF) = "Member") Then
  loc_166EEF8:       var_11C = (Chr(&HF) + "Member   :   ")
  loc_166EF02:       var_16C = (Ucase("CurrBal") + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Member"))), &H1C)))
  loc_166EF09:       var_1B0 = ((Ucase(arg_10) <> "PRN") And (Ucase(" Date :   ") <> "VDate") + Chr(&H12))
  loc_166EF0F:       Print 1, var_8C.Fields.Item("VDate").Value
  loc_166EF93:       var_11C = (Chr(&HF) + "Member Id:   ")
  loc_166EF9D:       var_16C = (Ucase("CurrBal") + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardNo"))), &H1C)))
  loc_166EFA4:       var_1B0 = ((Ucase(arg_10) <> "PRN") And (Ucase(" Date :   ") <> "VDate") + Chr(&H12))
  loc_166EFAA:       Print 1, var_8C.Fields.Item("VDate").Value
  loc_166F006:       If (Proc_6_38_E69628(CVar(var_8C.Fields.Item("RelationShip"))) <> "Member") Then
  loc_166F0B5:         var_1B0 = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardType"))) = "Member"), CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_8C.Fields.Item("RelationShip")), 3, 0)), 9) & ":   "), "Guest    :   ")
  loc_166F10C:         var_22C = (Chr(&HF) + var_1B0)
  loc_166F116:         var_25C = (CVar(Proc_6_45_EADFB8(CStr(var_8C.Fields.Item("VDate").Value), &HB)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name"))), &H1C)))
  loc_166F11D:         var_284 = (var_25C + Chr(&H12))
  loc_166F123:         Print 1, var_284
  loc_166F164:       End If
  loc_166F167:     Else
  loc_166F1C8:       var_11C = (Chr(&HF) + "Guest    :     ")
  loc_166F1D2:       var_16C = (CVar(var_8C.Fields.Item("CardType")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Member"))), &H1C)))
  loc_166F1D9:       var_1B0 = (CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_8C.Fields.Item("RelationShip")), 3, 0)), 9) & ":   ") + Chr(&H12))
  loc_166F1DF:       Print 1, var_1B0
  loc_166F263:       var_11C = (Chr(&HF) + "Card Id  :     ")
  loc_166F26D:       var_16C = (CVar(var_8C.Fields.Item("CardType")) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardNo"))), &H1C)))
  loc_166F274:       var_1B0 = (CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_8C.Fields.Item("RelationShip")), 3, 0)), 9) & ":   ") + Chr(&H12))
  loc_166F27A:       Print 1, var_1B0
  loc_166F29D:     End If
  loc_166F2C5:     var_94 = Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_Name")))
  loc_166F317:     Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_8C.Fields.Item("RelationShip")), 3, 0)), 9) & ":   "), CVar(var_8C.Fields.Item("PreBalance")))
  loc_166F34E:     var_190 = Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_8C.Fields.Item("RelationShip")), 3, 0)), 9) & ":   "), "0.00")), 9, 1)
  loc_166F367:     var_12C = (Chr(&HF) + CVar(Proc_6_45_EADFB8("PREVIOUS BALANCE:", &H14)))
  loc_166F371:     var_23C = (CVar(var_8C.Fields.Item("CardNo")) + CVar(var_190))
  loc_166F378:     var_25C = (CVar(var_8C.Fields.Item("Name")) + Chr(&H12))
  loc_166F37E:     Print 1, var_25C
  loc_166F3CE:     var_11C = (Chr(&HF) + CVar(var_90))
  loc_166F3D5:     var_14C = (CVar(Proc_6_45_EADFB8("PREVIOUS BALANCE:", &H14)) + Chr(&H12))
  loc_166F3DB:     Print 1, CVar(var_8C.Fields.Item("PreBalance"))
  loc_166F412:     Proc_6_39_E7D3A0(CVar(Proc_6_45_EADFB8("PREVIOUS BALANCE:", &H14)), CVar(var_8C.Fields.Item("AmtCr")))
  loc_166F42C:     If (CVar(Proc_6_45_EADFB8("PREVIOUS BALANCE:", &H14)) > 0) Then
  loc_166F451:       var_11C = (Chr(&HF) + "Received with thanks against..")
  loc_166F458:       var_14C = (CVar(Proc_6_45_EADFB8("PREVIOUS BALANCE:", &H14)) + Chr(&H12))
  loc_166F45E:       Print 1, CVar(var_8C.Fields.Item("PreBalance"))
  loc_166F472:     Else
  loc_166F494:       var_11C = (Chr(&HF) + "Refund with thanks against..")
  loc_166F49B:       var_14C = (CVar(Proc_6_45_EADFB8("PREVIOUS BALANCE:", &H14)) + Chr(&H12))
  loc_166F4A1:       Print 1, CVar(var_8C.Fields.Item("PreBalance"))
  loc_166F4B2:       ' Referenced from:     166F6F6
  loc_166F4B2:     End If
  loc_166F4C1:     If Not(var_8C.EOF) Then
  loc_166F583:       var_2C4 = IIf((var_8C.Fields.Item("Type").Value = "RCARDC"), "Amount", IIf((var_8C.Fields.Item("Type").Value = "RCARDS"), "Security", vbNullString))
  loc_166F5C3:       Proc_6_39_E7D3A0(var_314, CVar(var_8C.Fields.Item("AmtDr")))
  loc_166F5EE:       Proc_6_39_E7D3A0(var_36C, CVar(var_8C.Fields.Item("AmtDr")))
  loc_166F619:       Proc_6_39_E7D3A0(var_3A4, CVar(var_8C.Fields.Item("AmtCr")))
  loc_166F67B:       var_12C = (Chr(&HF) + Space(&H14))
  loc_166F685:       var_2E4 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(CStr(var_2C4), &HA)))
  loc_166F68F:       var_414 = (var_2E4 + CVar(Proc_6_52_EAE084(CStr(Format(IIf((var_314 > 0), var_36C, var_3A4), "0.00")), 9, 1)))
  loc_166F695:       Print 1, var_414
  loc_166F6F1:       var_8C.MoveNext
  loc_166F6F6:       GoTo loc_166F4B2
  loc_166F6F9:     End If
  loc_166F71C:     var_11C = (Chr(&HF) + CVar(var_90))
  loc_166F723:     var_14C = (Space(&H14) + Chr(&H12))
  loc_166F729:     Print 1, var_8C.Fields.Item("Type").Value
  loc_166F7AD:     var_12C = (Chr(&HF) + CVar(Proc_6_45_EADFB8("CURRENT BALANCE:", &H14, 1)))
  loc_166F7B7:     var_1B0 = (Chr(&H12) + CVar(Proc_6_52_EAE084(CStr(Format(var_C8, "0.00")), 9, 1)))
  loc_166F7BE:     var_23C = (Format(CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_8C.Fields.Item("RelationShip")), 3, 0)), 9) & ":   "), "0.00") + Chr(&H12))
  loc_166F7C4:     Print 1, "Security"
  loc_166F833:     var_12C = (Chr(&HF) + CVar(Proc_6_45_EADFB8("Cashier :", &HA, 1)))
  loc_166F83D:     var_16C = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_94, &HA)))
  loc_166F844:     var_1B0 = (Format(var_C8, "0.00") + Chr(&H12))
  loc_166F84A:     Print 1, Format(CVar(Proc_6_45_EADFB8(CStr(StrConv(CVar(var_8C.Fields.Item("RelationShip")), 3, 0)), 9) & ":   "), "0.00")
  loc_166F8B7:     var_11C = (Chr(&HF) + "Printed On ")
  loc_166F8BE:     var_18C = (CVar(Proc_6_45_EADFB8("Cashier :", &HA, 1)) + Format(CVar(Proc_6_14_EF402C(1)), "dd/MMM/yyyy hh:nn:ss"))
  loc_166F8C5:     var_22C = (Chr(&H12) + Chr(&H12))
  loc_166F8CB:     Print 1, Chr(&H12)
  loc_166F909:     var_11C = (Chr(&HF) + vbNullString)
  loc_166F910:     var_14C = (CVar(Proc_6_45_EADFB8("Cashier :", &HA, 1)) + Chr(&H12))
  loc_166F916:     Print 1, "dd/MMM/yyyy hh:nn:ss"
  loc_166F949:     var_11C = (Chr(&HF) + vbNullString)
  loc_166F950:     var_14C = (CVar(Proc_6_45_EADFB8("Cashier :", &HA, 1)) + Chr(&H12))
  loc_166F956:     Print 1, "dd/MMM/yyyy hh:nn:ss"
  loc_166F989:     var_11C = (Chr(&HF) + vbNullString)
  loc_166F990:     var_14C = (CVar(Proc_6_45_EADFB8("Cashier :", &HA, 1)) + Chr(&H12))
  loc_166F996:     Print 1, "dd/MMM/yyyy hh:nn:ss"
  loc_166F9C9:     var_11C = (Chr(&HF) + vbNullString)
  loc_166F9D0:     var_14C = (CVar(Proc_6_45_EADFB8("Cashier :", &HA, 1)) + Chr(&H12))
  loc_166F9D6:     Print 1, "dd/MMM/yyyy hh:nn:ss"
  loc_166FA09:     var_11C = (Chr(&HF) + vbNullString)
  loc_166FA10:     var_14C = (CVar(Proc_6_45_EADFB8("Cashier :", &HA, 1)) + Chr(&H12))
  loc_166FA16:     Print 1, "dd/MMM/yyyy hh:nn:ss"
  loc_166FA47:     var_12C = (Chr(&H1B) + Chr(&H6D))
  loc_166FA4D:     Print 1, Chr(&H12)
  loc_166FA5E:     Close 1
  loc_166FA67:     Open "C:\reptmp\RECIEPT.BAT" For Output As 1 Len = &HFF
  loc_166FA77:     Print 1, "TYPE C:\reptmp\RECIEPT.TXT>" & arg_10
  loc_166FA82:     Close 1
  loc_166FA9D:     var_C0 = CVar(Shell("C:\reptmp\RECIEPT.BAT", 0)) 'Variant
  loc_166FAA4:   End If
  loc_166FAA4: End If
  loc_166FAA9: Set var_8C = Nothing
  loc_166FAB1: Set var_98 = Nothing
  loc_166FAB4: Exit Sub
End Sub

Public Sub Proc_275_20_13682EC
  'Data Table: 422204
  Dim var_86 As Integer
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_D4 As String
  Dim unk_42221E As Connection15
  Dim var_C4 As Recordset15
  Dim var_1B0 As Fields15
  Dim var_B0 As Double
  Dim var_BE As Integer
  Dim var_D8 As String
  Dim var_1AC As Variant
  Dim var_DC As String
  Dim var_A0 As Double
  Dim var_10C As Variant
  loc_1367AC4: On Error Goto loc_1368278
  loc_1367AC9: var_86 = 0
  loc_1367AEB: var_DC = 0
  loc_1367B26: If (Proc_275_12_130B494(2, var_90, var_8C, 0, 0, var_98) = 0) Then
  loc_1367B29:   GoTo loc_1368278
  loc_1367B2C: End If
  loc_1367B39: var_11C = "Select Round(IsNull(CurrBal,0),2) CurrBal,Round(IsNull(SecurBal,0),2) SecurBal From SmartCardRegistration Where IsNull(CurrBalDiffChecked,0)=0 And Code="
  loc_1367B49: Proc_6_17_EAAE40(var_10C, var_8C, var_11C, var_1AC, -1, var_1B0)
  loc_1367B7B: unk_42221E.Execute CStr(var_A0 & var_10C & " And LogSite_Code='" & CVar(MemVar_1F95078) & "'"), var_DC, 0
  loc_1367B86: Set var_C4 = var_1B0
  loc_1367BA2: var_CE = CByte(0) 'Byte
  loc_1367BAC: var_1B4 = var_C4.RecordCount
  loc_1367BBA: If (var_1B4 > 0) Then
  loc_1367BC6:   unk_42221E.BeginTrans var_1B4
  loc_1367BCF:   var_CE = CByte(1) 'Byte
  loc_1367C11:   If (CVar(var_98) > var_C4.Fields.Item("CurrBal").Value) Then
  loc_1367C19:     var_B0 = CDate("31/Mar/2012")
  loc_1367C1F:     var_A8 = "ECARD"
  loc_1367C41:     var_BC = "CARDADJC"
  loc_1367C47:     var_CC = "Smart Card Charge Amt Diff. Adjustment..."
  loc_1367C6C:     var_10C = var_C4.Fields.Item("CurrBal").Value
  loc_1367C80:     var_12C = (CVar(var_98) - var_10C)
  loc_1367CB5:     var_18C = var_C4.Fields.Item("CurrBal").Value
  loc_1367CC8:     var_D4 = "A"
  loc_1367D04:     Proc_275_16_10AF65C(MemVar_1F95044, Proc_275_15_111B390(MemVar_1F95044, var_A8, var_B0, var_B4, var_B8), 1, var_A8, var_B8, var_B4, MemVar_1F95070, var_B0)
  loc_1367D2D:     Proc_6_17_EAAE40(var_10C, var_8C, var_8C, var_90, CSng(Round(var_A0 & var_10C, 2)))
  loc_1367D6B:     var_18C = CVar("Update SmartCardRegistration Set CurrBal=" & CStr(var_98) & " Where Code=") & var_10C & " And LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_1367D82:     unk_42221E.Execute CStr(var_18C & "'"), var_1D8, -1
  loc_1367DA7:   Else
  loc_1367DE5:     If (CVar(var_98) < var_C4.Fields.Item("CurrBal").Value) Then
  loc_1367DEB:       var_A8 = "ECARD"
  loc_1367DF0:       var_BE = 1
  loc_1367E0D:       var_BC = "CARDERRC"
  loc_1367E28:       var_1B0 = var_C4.Fields
  loc_1367E38:       var_10C = var_1B0.Item("CurrBal").Value
  loc_1367E4E:       var_D8 = "A"
  loc_1367E57:       var_D4 = Proc_6_14_EF402C(var_1B0, CDbl(0), "Transaction Err... Update Current Balance")
  loc_1367E70:       var_12C = (var_10C - CVar(var_98))
  loc_1367E9E:       Proc_275_16_10AF65C(MemVar_1F95044, Proc_275_15_111B390(MemVar_1F95044, var_A8, MemVar_1F950EC, var_B4, var_B8, var_BE), var_BE, var_A8, var_B8, var_B4, MemVar_1F95070, MemVar_1F950EC)
  loc_1367EC1:       Proc_6_17_EAAE40(var_10C, var_8C, var_8C, var_90, CDbl(0))
  loc_1367EE6:       var_12C = CVar("Update SmartCardRegistration Set CurrBal=" & CStr(var_98) & " Where Code=") 'String
  loc_1367F16:       unk_42221E.Execute CStr(var_12C & var_10C & " And LogSite_Code='" & CVar(MemVar_1F95078) & "'"), var_1D8, -1
  loc_1367F38:     End If
  loc_1367F38:   End If
  loc_1367F52:   var_1B0 = var_C4.Fields
  loc_1367F76:   If (CVar(var_A0) > var_1B0.Item("SecurBal").Value) Then
  loc_1367F7C:     var_A8 = "ECARD"
  loc_1367F81:     var_BE = 1
  loc_1367F9E:     var_BC = "CARDERRS"
  loc_1367FB8:     var_D8 = "A"
  loc_1367FC1:     var_D4 = Proc_6_14_EF402C(var_1B0, CSng(var_12C), "Transaction Err... Update Card Security Balance")
  loc_1367FFC:     Proc_275_16_10AF65C(MemVar_1F95044, Proc_275_15_111B390(MemVar_1F95044, var_A8, MemVar_1F950EC, var_B4, var_B8, var_BE), var_BE, var_A8, var_B8, var_B4, MemVar_1F95070, MemVar_1F950EC)
  loc_1368035:     var_A0 = CSng(var_C4.Fields.Item("SecurBal").Value)
  loc_1368053:     If (Proc_275_7_10CE5A4(var_98, var_A0, var_C8, var_A0, var_8C, var_90) = 0) Then
  loc_1368056:       GoTo loc_1368278
  loc_1368059:     End If
  loc_136805C:   Else
  loc_136809A:     If (CVar(var_A0) < var_C4.Fields.Item("SecurBal").Value) Then
  loc_13680A0:       var_A8 = "ECARD"
  loc_13680A5:       var_BE = 1
  loc_13680C2:       var_BC = "CARDERRS"
  loc_13680C8:       var_CC = "Transaction Err... Update Security Balance"
  loc_13680DD:       var_1B0 = var_C4.Fields
  loc_13680ED:       var_10C = var_1B0.Item("SecurBal").Value
  loc_1368103:       var_D8 = "A"
  loc_136810C:       var_D4 = Proc_6_14_EF402C(CDbl(0), CDbl(0), var_CC)
  loc_1368125:       var_12C = (var_10C - CVar(var_A0))
  loc_1368153:       Proc_275_16_10AF65C(MemVar_1F95044, Proc_275_15_111B390(MemVar_1F95044, var_A8, MemVar_1F950EC, var_B4, var_B8, var_BE), var_BE, var_A8, var_B8, var_B4, MemVar_1F95070, MemVar_1F950EC)
  loc_1368176:       Proc_6_17_EAAE40(var_10C, var_8C, var_8C, var_90, CDbl(0))
  loc_1368194:       var_D8 = "Update SmartCardRegistration Set SecurBal=" & CStr(var_A0)
  loc_13681BD:       var_1AC = CVar(var_D8 & " Where Code=") & var_10C & " And LogSite_Code='" & CVar(MemVar_1F95078) & "'" 
  loc_13681CB:       unk_42221E.Execute CStr(var_1AC), var_1D8, -1
  loc_13681ED:     End If
  loc_13681ED:   End If
  loc_136820A:   Proc_6_17_EAAE40(var_10C, var_8C, "Update SmartCardRegistration Set CurrBalDiffChecked=1 Where Code=", var_1AC, -1, var_1B0)
  loc_1368212:   var_12C = var_1B0 & var_10C 
  loc_136821B:   var_14C = var_12C & " And LogSite_Code='" 
  loc_1368225:   var_16C = var_14C & CVar(MemVar_1F95078) 
  loc_1368232:   var_D4 = CStr(var_16C & "'")
  loc_136823C:   unk_42221E.Execute var_D4, CSng(var_12C), var_CC
  loc_136825C:   unk_42221E.CommitTrans
  loc_1368265:   var_CE = CByte(0) 'Byte
  loc_1368269: End If
  loc_136826E: Set var_C4 = Nothing
  loc_1368276: Result &HFF End Sub 'Integer
  loc_1368277: Result MemVar_1F950C8 End Sub 'Integer
  loc_1368278: ' Referenced from: 1368056
  loc_1368278: ' Referenced from: 1367B29
  loc_1368278: ' Referenced from: 1367AC4
  loc_1368281: If (CInt(var_CE) = 1) Then
  loc_136828A:   unk_42221E.RollbackTrans
  loc_136828F: End If
  loc_1368297: Set var_1B0 = Err()
  loc_136829D: Call 0.Method_arg_1C (var_1B4, CDate(var_D4))
  loc_13682AE: If (var_1B4 <> 0) Then
  loc_13682B9:   Set var_1B0 = Err()
  loc_13682BF:   Call 0.Method_arg_2C (var_D4)
  loc_13682D8:   MsgBox(CVar(var_D4), &H10, var_12C, var_14C, var_16C)
  loc_13682EB: End If
  loc_13682EB: Result var_D8 End Sub 'Integer
End Sub

Public Sub Proc_275_21_1128200
  'Data Table: 422204
  Dim var_94 As Double
  Dim var_B0 As String
  Dim unk_42221E As Connection15
  Dim var_A8 As Recordset15
  Dim var_A2 As Integer
  Dim var_D8 As Fields15
  Dim var_124 As Variant
  loc_1127EC5: var_94 = CDate("31/Mar/2012")
  loc_1127ECB: var_8C = "ECARD"
  loc_1127EE2: var_B0 = "Select IsNull(Code,'') RegId,IsNull(SerialNo,'') SerialNo,IsNull(CurrBal,0) CurrBal from SmartCardRegistration Where IsNull(CurrBal,0)<0 And LogSite_Code='" & MemVar_1F95078
  loc_1127EF2: unk_42221E.Execute var_B0 & "' Order By IsNull(Code,'')", var_D4, -1
  loc_1127EFD: Set var_A8 = var_D8
  loc_1127F21: If (var_A8.RecordCount > 0) Then
  loc_1127F24:   ' Referenced from: 112805E
  loc_1127F33:   If Not(var_A8.EOF) Then
  loc_1127F55:     var_A0 = "CARDADJC"
  loc_1127F5B:     var_AC = "Smart Card Charge Amt Diff. Adjustment..."
  loc_1127F70:     var_D8 = var_A8.Fields
  loc_1127F80:     var_134 = var_D8.Item("RegId").Value
  loc_1127FA7:     var_144 = var_A8.Fields.Item("SerialNo").Value
  loc_1127FCE:     var_D4 = var_A8.Fields.Item("CurrBal").Value
  loc_1127FE6:     var_158 = "A"
  loc_1127FFF:     var_124 = Abs(var_D4)
  loc_1128030:     Proc_275_16_10AF65C(MemVar_1F95044, Proc_275_15_111B390(MemVar_1F95044, var_8C, var_94, var_98), 1, var_8C, var_9C, var_98, MemVar_1F95070, var_94)
  loc_1128059:     var_A8.MoveNext
  loc_112805E:     GoTo loc_1127F24
  loc_1128061:   End If
  loc_1128061: End If
  loc_1128075: var_B0 = "Select IsNull(Code,'') RegId,IsNull(SerialNo,'') SerialNo,IsNull(SecurBal,0) SecurBal from SmartCardRegistration Where IsNull(SecurBal,0)<0 And LogSite_Code='" & MemVar_1F95078
  loc_1128085: unk_42221E.Execute var_B0 & "' Order By IsNull(Code,'')", var_D4, -1
  loc_1128090: Set var_A8 = var_D8
  loc_11280B4: If (var_A8.RecordCount > 0) Then
  loc_11280B7:   ' Referenced from: 11281F1
  loc_11280C6:   If Not(var_A8.EOF) Then
  loc_11280CB:     var_A2 = 1
  loc_11280E8:     var_A0 = "CARDADJS"
  loc_11280EE:     var_AC = "Smart Card Security Amt Diff. Adjustment..."
  loc_1128113:     var_134 = var_A8.Fields.Item("RegId").Value
  loc_112813A:     var_144 = var_A8.Fields.Item("SerialNo").Value
  loc_1128179:     var_158 = "A"
  loc_1128192:     var_124 = Abs(var_A8.Fields.Item("SecurBal").Value)
  loc_11281C3:     Proc_275_16_10AF65C(MemVar_1F95044, Proc_275_15_111B390(MemVar_1F95044, var_8C, var_94, var_98, var_9C, var_A2, var_A8.Fields, CStr(var_134)), var_A2, var_8C, var_9C, var_98, MemVar_1F95070, var_94)
  loc_11281EC:     var_A8.MoveNext
  loc_11281F1:     GoTo loc_11280B7
  loc_11281F4:   End If
  loc_11281F4: End If
  loc_11281F9: Set var_A8 = Nothing
  loc_11281FC: Exit Sub
End Sub

Public Sub Proc_275_22_10E6198
  'Data Table: 422204
  Dim var_F8 As String
  Dim var_D8 As Variant
  Dim var_108 As Variant
  Dim var_118 As String
  Dim var_128 As Variant
  Dim var_8C As String
  Dim unk_42221E As Connection15
  Dim var_BC As Recordset15
  Dim var_E8 As Variant
  loc_10E5EBF: var_A8 = 0
  loc_10E5F18: If (Proc_275_12_130B494(2, 0, var_88, 0, 0) = 0) Then
  loc_10E5F1B:   Exit Sub
  loc_10E5F1C: End If
  loc_10E5F29: var_F8 = "Select SCR.CardType,SCR.Name,SCR.CardNo,convert(Varchar(11),SCL.Vdate,106) As Vdate,SCL.VType,SCL.VNo,SCL.Narration,SCL.AmtCr,SCL.AmtDr From SmartCardLedger SCL Inner Join SmartCardRegistration SCR On SCL.Code=SCR.Code Where SCL.Code="
  loc_10E5F39: Proc_6_17_EAAE40(var_E8, var_88, var_F8, var_148, -1, var_14C)
  loc_10E5F41: var_108 = 0 & var_E8 
  loc_10E5F45: var_118 = " Order By SCL.U_EntDt"
  loc_10E5F4A: var_128 = var_108 & var_118 
  loc_10E5F58: unk_42221E.Execute CStr(var_128), 0, var_A8
  loc_10E5F63: Set var_BC = var_14C
  loc_10E5F7D: var_150 = var_BC.RecordCount
  loc_10E5F8B: If (var_150 <= 0) Then
  loc_10E5F9C:   var_D8 = "No Records Found."
  loc_10E5FA7:   MsgBox(var_D8, &H40, var_108, var_128, var_148)
  loc_10E5FB7:   Exit Sub
  loc_10E5FB8: End If
  loc_10E5FBB: var_C0 = "MemberCardStatement"
  loc_10E5FC1: var_C4 = "Member Card Statement"
  loc_10E5FE8: Set var_14C = var_BC 
  loc_10E5FEF: CreateFieldDefFile(var_14C, MemVar_1F950B4 & "\" & var_C0 & ".ttx", &HFF)
  loc_10E601A: var_8C = MemVar_1F950B4 & "\"
  loc_10E6031: Call 0.Method_arg_1C (var_8C & var_C0 & ".RPT", var_D8, var_14C)
  loc_10E603C: MemVar_1F951E8 = var_14C
  loc_10E6065: Call 0.Method_arg_64 (var_14C, CVar(var_14C), var_F8)
  loc_10E606D: Call 0.Method_arg_2C (var_118, 0)
  loc_10E607B: Call 0.Method_arg_150 (0)
  loc_10E6091: Call 0.Method_arg_90 (var_14C, var_150)
  loc_10E6099: Call 0.Method_arg_24 (var_C6)
  loc_10E60A5: For var_154 =  To CInt(var_150): 1 = var_154 'Integer
  loc_10E60BE:   Call 0.Method_arg_90 (var_14C, CLng(var_C6))
  loc_10E60C6:   Call 0.Method_arg_20 (var_158)
  loc_10E60CE:   Call 0.Method_arg_30 (var_8C)
  loc_10E60D6:   var_E8 = CVar(var_8C) 'String
  loc_10E60FD:   If (Ucase(var_E8) = "TITLE") Then
  loc_10E610B:     Proc_6_17_EAAE40(var_E8)
  loc_10E6127:     Call 0.Method_arg_90 (var_14C, CLng(var_C6), var_158)
  loc_10E612F:     Call 0.Method_arg_20 (CStr(var_E8))
  loc_10E6137:     Call 0.Method_arg_38 (var_C4)
  loc_10E6149:   End If
  loc_10E614C: Next var_154 'Integer
  loc_10E6156: Set var_158 = Nothing
  loc_10E616C: Set var_14C = MemVar_1F951E8 
  loc_10E6178: Proc_6_99_1484404(var_14C, 0, var_C4)
  loc_10E6183: MemVar_1F951E8 = var_14C
  loc_10E6193: Set var_BC = Nothing
  loc_10E6196: Exit Sub
End Sub
