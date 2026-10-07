
Public Sub Proc_34_0_14D9290
  'Data Table: 41B610
  Dim var_AE As Integer
  Dim var_E0 As Variant
  Dim var_D0 As Variant
  Dim var_10C As String
  Dim var_AC As Integer
  Dim var_AA As Integer
  Dim var_104 As Variant
  Dim var_13C As Variant
  Dim var_A6 As Integer
  Dim var_15C As Variant
  Dim var_A8 As Integer
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim Me As MSHFlexGrid
  loc_14D84EA: var_AE = &H6D
  loc_14D84F1: Close 1
  loc_14D84FC: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_14D851D: For var_E4 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_98 = var_E4 'Integer
  loc_14D8529:   var_D0 = CVar(CLng(var_98)) 'Long
  loc_14D8572:   var_10C = Replace(CStr(Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))))), " ", MemVar_1F953D0, 1, -1, 0)
  loc_14D8576:   var_9C = var_9C & var_10C
  loc_14D858C: Next var_E4 'Integer
  loc_14D8595: var_AC = 1
  loc_14D85A0: If (var_AA = 0) Then
  loc_14D85AD:   If (arg_20 = "80") Then
  loc_14D85C2:     var_AA = Proc_6_129_12B862C(var_AC, var_AA)
  loc_14D85E8:     Print 1, Proc_6_128_1026560(arg_14, "B", &H50)
  loc_14D85FA:   Else
  loc_14D8604:     If (arg_20 = "132") Then
  loc_14D8641:       Print 1, Proc_6_128_1026560(arg_14, "B", 140, Proc_6_129_12B862C(var_AC, Proc_6_129_12B862C(var_AC, Proc_6_129_12B862C(var_AC, var_AA, 150), 150), 150))
  loc_14D8653:     Else
  loc_14D865D:       If (arg_20 = "40") Then
  loc_14D866D:         MemVar_1F953CC = "L"
  loc_14D86A9:         Print 1, Proc_6_128_1026560(arg_14, "B", &H28, Proc_6_129_12B862C(var_AC, Proc_6_129_12B862C(var_AC, Proc_6_129_12B862C(var_AC, var_AA, &H28), &H28), &H28))
  loc_14D86BD:         MemVar_1F953CC = MemVar_1F953CC
  loc_14D86C4:       Else
  loc_14D86FE:         Print 1, Proc_6_128_1026560(arg_14, "B", &H50, Proc_6_129_12B862C(var_AC, Proc_6_129_12B862C(var_AC, Proc_6_129_12B862C(var_AC, var_AA, &H50), &H50), &H50))
  loc_14D870D:       End If
  loc_14D870D:     End If
  loc_14D870D:   End If
  loc_14D8713:   var_AA = 6
  loc_14D8718:   On Error Resume Next
  loc_14D8725:   If (arg_1C = "C") Then
  loc_14D8737:     For var_120 = 0 To CInt(UBound(arg_18, 1)): var_96 = var_120 'Integer
  loc_14D874C:       If (arg_18(CLng(var_96)) <> vbNullString) Then
  loc_14D876C:         var_104 = (Chr(&HF) + CVar(arg_18(CLng(var_96))))
  loc_14D8772:         Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))))
  loc_14D8787:         var_AA = (var_AA + 1)
  loc_14D878A:       End If
  loc_14D878F:     Next var_120 'Integer
  loc_14D8797:   Else
  loc_14D87A8:     For var_124 = 0 To CInt(UBound(arg_18, 1)):   var_96 = var_124 'Integer
  loc_14D87BD:       If (arg_18(CLng(var_96)) <> vbNullString) Then
  loc_14D87DD:         var_104 = (Chr(&H12) + CVar(arg_18(CLng(var_96))))
  loc_14D87E3:         Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))))
  loc_14D87F8:         var_AA = (var_AA + 1)
  loc_14D87FB:       End If
  loc_14D8800:     Next var_124 'Integer
  loc_14D8805:   End If
  loc_14D8807: End If
  loc_14D8813: If (arg_1C = "C") Then
  loc_14D882E:   var_104 = (Chr(&HF) + CVar(var_9C))
  loc_14D8834:   Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))))
  loc_14D8849:   var_AA = (var_AA + 1)
  loc_14D884F: Else
  loc_14D8869:   var_104 = (Chr(&H12) + CVar(var_9C))
  loc_14D886F:   Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))))
  loc_14D8884:   var_AA = (var_AA + 1)
  loc_14D8887: End If
  loc_14D88A6: For var_128 = 0 To CInt((CLng(Me.FGrid1.FixedRows) - 1)): var_96 = var_128 'Integer
  loc_14D88C9:   For var_12C = 1 To CInt((CLng(Me.var_E0.Cols) - 1)): var_98 = var_12C 'Integer
  loc_14D88D5:     var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D88EF:     If (CBool(Me.var_E0.MergeRow)) = &HFF) Then
  loc_14D88F8:       var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D8901:       var_13C = CVar(CLng(var_98)) 'Long
  loc_14D8933:       If (CLng((var_98 + 1)) < CLng(Me.var_E0.Cols)) Then
  loc_14D893F:         var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D894B:         var_13C = CVar(CLng((var_98 + 1))) 'Long
  loc_14D8969:         If (var_13C <> CStr(Me.var_E0.TextMatrix))) Then
  loc_14D8994:           var_A6 = CInt((CVar(CLng(var_98)) + Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))))
  loc_14D89CA:           Proc_34_2_E80330(Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE))))), CInt(Me.var_E0.ColAlignmentFixed)), CStr(Me.var_E0.TextMatrix)), var_A6, CVar(var_110), Me.var_E0.ColAlignmentFixed), CVar(CLng(var_98)), var_A6)
  loc_14D89D2:           var_15C = (CDbl(var_A6) + Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE))))))
  loc_14D89D7:           var_110 = CStr(var_15C)
  loc_14D89E7:           var_A6 = 0
  loc_14D89ED:         Else
  loc_14D8A17:           var_A6 = CInt((CVar(CLng(var_98)) + Fix((CDbl(CLng(Me.FGrid1.ColWidth))) / CDbl(var_AE)))))
  loc_14D8A1D:         End If
  loc_14D8A22:       Else
  loc_14D8A4C:         var_A6 = CInt((CVar(CLng(var_98)) + Fix((CDbl(CLng(Me.FGrid1.ColWidth))) / CDbl(var_AE)))))
  loc_14D8A52:       End If
  loc_14D8A57:     Else
  loc_14D8A5F:       var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D8A68:       var_13C = CVar(CLng(var_98)) 'Long
  loc_14D8A7B:       var_A0 = CStr(Me.FGrid1.TextMatrix))
  loc_14D8A87:       var_D0 = CVar(CLng(var_98)) 'Long
  loc_14D8AA4:       var_A6 = CInt(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE))))
  loc_14D8AB0:       var_D0 = CVar(CLng(var_98)) 'Long
  loc_14D8ADA:       Proc_34_2_E80330(Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE))))), CInt(Me.var_E0.ColAlignmentFixed)), var_A0, var_A6, CVar(var_110), Me.var_E0.ColAlignmentFixed), var_D0, var_A6)
  loc_14D8AE2:       var_15C = (var_D0 + Space(CLng(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE))))))
  loc_14D8AE7:       var_110 = CStr(var_15C)
  loc_14D8AF7:       var_A8 = 0
  loc_14D8AFA:     End If
  loc_14D8B01:   Next var_12C 'Integer
  loc_14D8B2D:   If (CVar(CLng(var_96)) And (CBool(Me.var_E0.MergeRow)) = &HFF)) Then
  loc_14D8B35:     var_E0 = Me.var_E0.Cols
  loc_14D8B44:     var_D0 = CVar((CLng(var_E0) - 1)) 'Long
  loc_14D8B6E:     Proc_34_2_E80330(var_15C, CInt(Me.var_E0.ColAlignmentFixed)), var_A0, var_A6)
  loc_14D8B76:     var_16C = (CVar(var_110) + var_15C)
  loc_14D8B7B:     var_110 = CStr(var_16C)
  loc_14D8B8D:     var_A6 = 0
  loc_14D8B90:   End If
  loc_14D8BD1:   var_17C = (CVar(var_110) + Chr(&H1B))
  loc_14D8BD8:   var_19C = (var_17C + Chr(&H46))
  loc_14D8BE2:   var_15C = (Chr(&H1B) + Chr(&H45))
  loc_14D8BE8:   Print 1, var_15C, var_19C
  loc_14D8C07:   var_AA = (var_AA + 1)
  loc_14D8C12:   If (var_AA > &H41) Then
  loc_14D8C19:     var_AA = 0
  loc_14D8C24:     var_AC = (var_AC + 1)
  loc_14D8C3B:     Print 1, Chr(&HC)
  loc_14D8C44:   End If
  loc_14D8C4B:   var_110 = vbNullString
  loc_14D8C53: Next var_128 'Integer
  loc_14D8C5F: Print 1, var_9C
  loc_14D8C6D: var_AA = (var_AA + 1)
  loc_14D8C75: var_E0 = Me.FGrid1.FixedRows
  loc_14D8C9C: For var_1A0 = CInt(CLng(var_E0)) To CInt((CLng(Me.var_E0.Rows) - 1)): var_96 = var_1A0 'Integer
  loc_14D8CAA:   If (var_AA = 0) Then
  loc_14D8CC4:     Proc_34_1_12B4B58(var_E0, arg_10, arg_14, arg_18, arg_1C)
  loc_14D8CD6:     If (arg_1C = "C") Then
  loc_14D8CED:       Print 1, Chr(&HF)
  loc_14D8CFE:       var_AA = (var_AA + 1)
  loc_14D8D04:     Else
  loc_14D8D1A:       Print 1, Chr(&H12)
  loc_14D8D2B:       var_AA = (var_AA + 1)
  loc_14D8D2E:     End If
  loc_14D8D30:   End If
  loc_14D8D38:   var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D8D3D:   var_13C = 0
  loc_14D8D7D:   If (Left(CVar(CStr(Me.FGrid1.TextMatrix))), 2) = "GF") Then
  loc_14D8D87:     Print 1, var_9C
  loc_14D8D95:     var_AA = (var_AA + 1)
  loc_14D8D98:   End If
  loc_14D8D9E:   var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D8DA3:   var_13C = 0
  loc_14D8DC8:   If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_14D8DE3:     var_104 = (CVar(var_110) + Chr(&H1B))
  loc_14D8DF7:     var_16C = (CVar(CStr(Me.FGrid1.TextMatrix))) + Chr(&H45))
  loc_14D8DFC:     var_110 = CStr(Chr(&H1B))
  loc_14D8E0A:   End If
  loc_14D8E27:   For var_1B4 = 1 To CInt((CLng(Me.Cols) - 1)): var_98 = var_1B4 'Integer
  loc_14D8E33:     var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D8E4D:     If (CBool(Me.FGrid1.MergeRow)) = &HFF) Then
  loc_14D8E56:       var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D8E5F:       var_13C = CVar(CLng(var_98)) 'Long
  loc_14D8E72:       var_A0 = CStr(Me.var_E0.TextMatrix))
  loc_14D8E80:       If (var_A8 = 0) Then
  loc_14D8E88:         var_A8 = var_98
  loc_14D8E8B:       End If
  loc_14D8E95:       If (var_A0 <> var_A4) Then
  loc_14D8EA7:         If ((var_98 <> 1) And (var_A6 <> 0)) Then
  loc_14D8EC7:           var_13C = CVar(var_110) 'String
  loc_14D8EDA:           Proc_34_2_E80330(CVar(CStr(Me.FGrid1.TextMatrix))), CInt(Me.FGrid1.ColAlignment)), var_A4, var_A6, var_13C, Me.FGrid1.ColAlignment), CVar(CLng(var_A8)), var_A8)
  loc_14D8EE2:           var_15C = (var_13C + CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_14D8EE7:           var_110 = CStr(Chr(&H45))
  loc_14D8EF7:           var_A8 = 0
  loc_14D8EFA:         End If
  loc_14D8F02:         var_D0 = CVar(CLng(var_98)) 'Long
  loc_14D8F1F:         var_A6 = CInt(Fix((CDbl(CLng(Me.FGrid1.ColWidth))) / CDbl(var_AE))))
  loc_14D8F2A:         var_A4 = var_A0
  loc_14D8F31:         var_A8 = 0
  loc_14D8F37:       Else
  loc_14D8F61:         var_A6 = CInt((CVar(CLng(var_98)) + Fix((CDbl(CLng(Me.FGrid1.ColWidth))) / CDbl(var_AE)))))
  loc_14D8F67:       End If
  loc_14D8F6C:     Else
  loc_14D8F74:       var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D8F7D:       var_13C = CVar(CLng(var_98)) 'Long
  loc_14D8F9C:       var_D0 = CVar(CLng(var_98)) 'Long
  loc_14D8FC5:       var_D0 = CVar(CLng(var_98)) 'Long
  loc_14D8FEF:       Proc_34_2_E80330(CVar(CStr(Me.FGrid1.TextMatrix))), CInt(Me.var_E0.ColAlignment)), CStr(Me.FGrid1.TextMatrix)), CInt(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))), CVar(var_110), Me.var_E0.ColAlignment), var_D0, CInt(Fix((CDbl(CLng(Me.var_E0.ColWidth))) / CDbl(var_AE)))))
  loc_14D8FF7:       var_15C = (var_D0 + CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_14D8FFC:       var_110 = CStr(Chr(&H45))
  loc_14D900C:       var_A8 = 0
  loc_14D900F:     End If
  loc_14D9016:   Next var_1B4 'Integer
  loc_14D9021:   var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D9026:   var_13C = 0
  loc_14D904B:   If (CStr(Me.Me.var_E0.TextMatrix).TextMatrix)) <> vbNullString) Then
  loc_14D9066:     var_104 = (CVar(var_110) + Chr(&H1B))
  loc_14D907A:     var_16C = (CVar(CStr(Me.FGrid1.TextMatrix))) + Chr(&H46))
  loc_14D907F:     var_110 = CStr(Chr(&H1B))
  loc_14D9095:     var_AA = (var_AA + 1)
  loc_14D9098:   End If
  loc_14D909F:   Print 1, var_110
  loc_14D90AD:   var_AA = (var_AA + 1)
  loc_14D90B5:   var_110 = vbNullString
  loc_14D90BE:   var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D90C3:   var_13C = 0
  loc_14D9103:   If (Left(CVar(CStr(Me.FGrid1.TextMatrix))), 2) = "GF") Then
  loc_14D910D:     Print 1, var_9C
  loc_14D911B:     var_AA = (var_AA + 1)
  loc_14D911E:   End If
  loc_14D9124:   var_D0 = CVar(CLng(var_96)) 'Long
  loc_14D9129:   var_13C = 0
  loc_14D9169:   If (Left(CVar(CStr(Me.FGrid1.TextMatrix))), 2) = "RF") Then
  loc_14D9173:     Print 1, var_9C
  loc_14D9181:     var_AA = (var_AA + 1)
  loc_14D9184:   End If
  loc_14D918C:   If (var_AA > &H41) Then
  loc_14D9193:     var_AA = 0
  loc_14D919E:     var_AC = (var_AC + 1)
  loc_14D91B5:     Print 1, Chr(&HC)
  loc_14D91BE:   End If
  loc_14D91C5: Next var_1A0 'Integer
  loc_14D91EC: var_15C = (Chr(&H12) + Chr(&HC))
  loc_14D91F2: Print 1, Left(CVar(CStr(Me.FGrid1.TextMatrix))), 2)
  loc_14D9205: Close 1
  loc_14D9210: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_14D9222: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F953B8
  loc_14D922F: Close 1
  loc_14D923B: If (MemVar_1F953BC = "Y") Then
  loc_14D9259:   var_C0 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_14D9263: Else
  loc_14D9280:   var_C0 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_14D9287: End If
  loc_14D928B: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_34_1_12B4B58
  'Data Table: 41B610
  Dim var_AC As Integer
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_108 As String
  Dim var_AA As Integer
  Dim arg_20 As Integer
  Dim var_100 As Variant
  Dim var_134 As Variant
  Dim var_A6 As Integer
  Dim var_154 As Variant
  Dim var_A8 As Integer
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  loc_12B453E: var_AC = &H6D
  loc_12B455C: For var_D0 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_98 = var_D0 'Integer
  loc_12B4566:   var_E0 = CVar(CLng(var_98)) 'Long
  loc_12B45AF:   var_108 = Replace(CStr(Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC)))))), " ", MemVar_1F953D0, 1, -1, 0)
  loc_12B45B3:   var_9C = var_9C & var_108
  loc_12B45C7: Next var_D0 'Integer
  loc_12B45CE: var_AA = 1
  loc_12B45D7: If (arg_20 = 0) Then
  loc_12B45E2:   If (arg_24 = "80") Then
  loc_12B4606:     Print 1, Proc_6_128_1026560(arg_14, "B")
  loc_12B461B:     arg_20 = (arg_20 + 1)
  loc_12B4621:   Else
  loc_12B4629:     If (arg_24 = "132") Then
  loc_12B464E:       Print 1, Proc_6_128_1026560(arg_14, "B", 140)
  loc_12B4663:       arg_20 = (arg_20 + 1)
  loc_12B4669:     Else
  loc_12B468A:       Print 1, Proc_6_128_1026560(arg_14, "B", &H50, arg_20)
  loc_12B469F:       arg_20 = (arg_20 + 1)
  loc_12B46A2:     End If
  loc_12B46A2:   End If
  loc_12B46AA:   If (arg_1C = "C") Then
  loc_12B46BA:     For var_118 = 0 To CInt(UBound(arg_18, 1)): var_96 = var_118 'Integer
  loc_12B46CD:       If (arg_18(CLng(var_96)) <> vbNullString) Then
  loc_12B46EB:         var_100 = (Chr(&HF) + CVar(arg_18(CLng(var_96))))
  loc_12B46F1:         Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC)))))
  loc_12B4704:         arg_20 = (arg_20 + 1)
  loc_12B4707:       End If
  loc_12B470A:     Next var_118 'Integer
  loc_12B4712:   Else
  loc_12B471F:     For var_11C = 0 To CInt(UBound(arg_18, 1)):   var_96 = var_11C 'Integer
  loc_12B4732:       If (arg_18(CLng(var_96)) <> vbNullString) Then
  loc_12B4750:         var_100 = (Chr(&H12) + CVar(arg_18(CLng(var_96))))
  loc_12B4756:         Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC)))))
  loc_12B4769:         arg_20 = (arg_20 + 1)
  loc_12B476C:       End If
  loc_12B476F:     Next var_11C 'Integer
  loc_12B4774:   End If
  loc_12B4774: End If
  loc_12B477C: If (arg_1C = "C") Then
  loc_12B4795:   var_100 = (Chr(&HF) + CVar(var_9C))
  loc_12B479B:   Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC)))))
  loc_12B47AE:   arg_20 = (arg_20 + 1)
  loc_12B47B4: Else
  loc_12B47CA:   var_100 = (Chr(&H12) + CVar(var_9C))
  loc_12B47D0:   Print 1, Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC)))))
  loc_12B47E3:   arg_20 = (arg_20 + 1)
  loc_12B47E6: End If
  loc_12B4801: For var_120 = 0 To CInt((CLng(Me.FGrid1.FixedRows) - 1)): var_96 = var_120 'Integer
  loc_12B4822:   For var_124 = 1 To CInt((CLng(Me.var_CC.Cols) - 1)): var_98 = var_124 'Integer
  loc_12B482C:     var_E0 = CVar(CLng(var_96)) 'Long
  loc_12B4846:     If (CBool(Me.var_CC.MergeRow)) = &HFF) Then
  loc_12B484D:       var_E0 = CVar(CLng(var_96)) 'Long
  loc_12B4856:       var_134 = CVar(CLng(var_98)) 'Long
  loc_12B4886:       If (CLng((var_98 + 1)) < CLng(Me.var_CC.Cols)) Then
  loc_12B4890:         var_E0 = CVar(CLng(var_96)) 'Long
  loc_12B489C:         var_134 = CVar(CLng((var_98 + 1))) 'Long
  loc_12B48BA:         If (var_134 <> CStr(Me.var_CC.TextMatrix))) Then
  loc_12B48E3:           var_A6 = CInt((CVar(CLng(var_98)) + Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC)))))
  loc_12B4917:           Proc_34_2_E80330(Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC))))), CInt(Me.var_CC.ColAlignmentFixed)), CStr(Me.var_CC.TextMatrix)), var_A6, CVar(var_10C), Me.var_CC.ColAlignmentFixed), CVar(CLng(var_98)), var_A6)
  loc_12B491F:           var_154 = (CDbl(var_A6) + Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC))))))
  loc_12B4924:           var_10C = CStr(var_154)
  loc_12B4932:           var_A6 = 0
  loc_12B4938:         Else
  loc_12B495E:           var_A6 = CInt((CVar(CLng(var_98)) + Fix((CDbl(CLng(Me.FGrid1.ColWidth))) / CDbl(var_AC)))))
  loc_12B4964:         End If
  loc_12B4967:       Else
  loc_12B498D:         var_A6 = CInt((CVar(CLng(var_98)) + Fix((CDbl(CLng(Me.FGrid1.ColWidth))) / CDbl(var_AC)))))
  loc_12B4993:       End If
  loc_12B4996:     Else
  loc_12B499A:       var_E0 = CVar(CLng(var_96)) 'Long
  loc_12B49A3:       var_134 = CVar(CLng(var_98)) 'Long
  loc_12B49B6:       var_A0 = CStr(Me.FGrid1.TextMatrix))
  loc_12B49C0:       var_E0 = CVar(CLng(var_98)) 'Long
  loc_12B49DD:       var_A6 = CInt(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC))))
  loc_12B49E7:       var_E0 = CVar(CLng(var_98)) 'Long
  loc_12B4A11:       Proc_34_2_E80330(Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC))))), CInt(Me.var_CC.ColAlignmentFixed)), var_A0, var_A6, CVar(var_10C), Me.var_CC.ColAlignmentFixed), var_E0, var_A6)
  loc_12B4A19:       var_154 = (var_E0 + Space(CLng(Fix((CDbl(CLng(Me.var_CC.ColWidth))) / CDbl(var_AC))))))
  loc_12B4A1E:       var_10C = CStr(var_154)
  loc_12B4A2C:       var_A8 = 0
  loc_12B4A2F:     End If
  loc_12B4A32:   Next var_124 'Integer
  loc_12B4A5C:   If (CVar(CLng(var_96)) And (CBool(Me.var_CC.MergeRow)) = &HFF)) Then
  loc_12B4A62:     var_CC = Me.var_CC.Cols
  loc_12B4A71:     var_E0 = CVar((CLng(var_CC) - 1)) 'Long
  loc_12B4A9B:     Proc_34_2_E80330(var_154, CInt(Me.var_CC.ColAlignmentFixed)), var_A0, var_A6)
  loc_12B4AA3:     var_164 = (CVar(var_10C) + var_154)
  loc_12B4AA8:     var_10C = CStr(var_164)
  loc_12B4AB8:     var_A6 = 0
  loc_12B4ABB:   End If
  loc_12B4AF8:   var_174 = (CVar(var_10C) + Chr(&H1B))
  loc_12B4AFF:   var_194 = (var_174 + Chr(&H46))
  loc_12B4B09:   var_154 = (Chr(&H1B) + Chr(&H45))
  loc_12B4B0F:   Print 1, var_154, var_194
  loc_12B4B2C:   arg_20 = (arg_20 + 1)
  loc_12B4B32:   var_10C = vbNullString
  loc_12B4B38: Next var_120 'Integer
  loc_12B4B42: Print 1, var_9C
  loc_12B4B4E: arg_20 = (arg_20 + 1)
  loc_12B4B51: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_34_2_E80330
  'Data Table: 41B610
  loc_E802D2: If (CLng(arg_10) = 1) Then
  loc_E802E3:   var_94 = CVar(Proc_6_45_EADFB8(arg_14)) 'Variant
  loc_E802EA: Else
  loc_E802F4:   If (CLng(arg_10) = 7) Then
  loc_E80305:     var_94 = CVar(Proc_34_3_E6CEA0(arg_14, arg_18)) 'Variant
  loc_E8030C:   Else
  loc_E80316:     If (CLng(arg_10) = 4) Then
  loc_E80327:       var_94 = CVar(Proc_6_46_F8AFC4(arg_14, arg_18)) 'Variant
  loc_E8032B:     End If
  loc_E8032B:   End If
  loc_E8032B: End If
  loc_E8032B: Result = arg_10: Exit Sub
End Sub

Public Sub Proc_34_3_E6CEA0(arg_C, arg_10) 'E6CEA0
  'Data Table: 41B610
  Dim var_C8 As Variant
  loc_E6CE6D: arg_C = CStr(Mid(arg_C, 1, arg_10))
  loc_E6CE80: var_B8 = Space((CLng(arg_10) - Len(arg_C)))
  loc_E6CE8E: var_C8 = (Mid(arg_C, 1, arg_10) + CVar(arg_C))
  loc_E6CE93: var_88 = CStr(var_C8)
  loc_E6CE9D: Exit Sub
  loc_E6CE9E: CExtInstUnk
End Sub
