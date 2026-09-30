VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "cJSONScript"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Private var_8C As New cStringBuilder
Private global_56 As Long

Public Function Eval(sJSON) 'FB8BF8
  'Data Table: 41BCC4
  Dim var_C8 As Long
  loc_FB8A6E: Set var_90 = Proc_343_2_EC7730(sJSON)
  loc_FB8A8A: If ((Proc_343_0_E0670C() = vbNullString) And Not((var_90 Is Nothing))) Then
  loc_FB8AA2:   For var_B4 = 1 To CLng(var_90.Count): var_98 = var_B4 'Long
  loc_FB8ABF:     var_C8 = VarType(var_90.Item)
  loc_FB8ACE:     If (var_C8 = 1) Then
  loc_FB8AE0:       Call var_8C.Append("null")
  loc_FB8AEB:     Else
  loc_FB8AF4:       If (var_C8 = 7) Then
  loc_FB8B15:         Call var_8C.Append(CStr(var_90.Item))
  loc_FB8B23:       Else
  loc_FB8B2C:         If (var_C8 = 8) Then
  loc_FB8B4D:           Call var_8C.Append(CStr(var_90.Item))
  loc_FB8B5B:         Else
  loc_FB8B93:           Call var_8C.Append(ExecCommand(var_90.Item))
  loc_FB8B9B:         End If
  loc_FB8B9B:       End If
  loc_FB8B9B:     End If
  loc_FB8B9E:   Next var_B4 'Long
  loc_FB8BA6: Else
  loc_FB8BCA:   MsgBox(CVar(Proc_343_0_E0670C()), &H30, "Parser Error", var_FC, var_11C)
  loc_FB8BDD: End If
  loc_FB8BEE: var_88 = var_8C.toString
  loc_FB8BF1: Eval = 
End Function

Public Function ExecCommand(obj) '13E07C8
  'Data Table: 41BCC4
  Dim var_90 As Long
  Dim var_94 As String
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_A4 As Variant
  Dim var_140 As Variant
  Dim var_164 As Variant
  Dim var_184 As String
  Dim var_1B4 As Variant
  Dim var_194 As Variant
  Dim var_252 As Integer
  loc_13DFE3E: If (global_56 > &H28) Then
  loc_13DFE44:   var_88 = "ERROR: Nesting level exceeded."
  loc_13DFE47:   GoTo loc_13E07A4
  loc_13DFE4A: End If
  loc_13DFE59: global_56 = (global_56 + 1)
  loc_13DFE64: var_90 = VarType(obj)
  loc_13DFE70: If (var_90 = 1) Then
  loc_13DFE82:   Call var_8C.Append("null")
  loc_13DFE8A:   GoTo loc_13E0792
  loc_13DFE8D: End If
  loc_13DFE96: If (var_90 = 7) Then
  loc_13DFEAB:   Call var_8C.Append(CStr(obj))
  loc_13DFEB3:   GoTo loc_13E0792
  loc_13DFEB6: End If
  loc_13DFEBF: If (var_90 = 8) Then
  loc_13DFED4:   Call var_8C.Append(CStr(obj))
  loc_13DFEDC:   GoTo loc_13E0792
  loc_13DFEDF: End If
  loc_13DFEE8: If (var_90 = 9) Then
  loc_13DFEFE:   If (TypeName(obj) = "Dictionary") Then
  loc_13DFF24:     var_118 = (obj.Count - 1)
  loc_13DFF2D:     For var_120 = 0 To CLng(var_118): var_A8 = var_120 'Long
  loc_13DFF36:       var_D8 = vbNullString
  loc_13DFF49:       var_C0 = obj.keys(var_A8) 'Variant
  loc_13DFF57:       VarLateMemCallLdRfVar
  loc_13DFF6D:       If (VarType(obj) = 8) Then
  loc_13DFF83:         var_D8 = CStr(obj.Item)
  loc_13DFF8C:       Else
  loc_13DFFA0:         Set var_B0 = obj.Item 
  loc_13DFFA7:       End If
  loc_13DFFB5:       var_130 = LCase(var_C0) 'Variant
  loc_13DFFC4:       If (var_130 = "alert") Then
  loc_13DFFC7:         var_A4 = "message"
  loc_13DFFE5:         var_140 = "title"
  loc_13E001A:         MsgBox(CVar(ExecCommand(var_B0.Item)), &H40, CVar(ExecCommand(var_B0.Item)), var_194, var_1B4)
  loc_13E0031:       Else
  loc_13E003C:         If (var_130 = "input") Then
  loc_13E003F:           var_A4 = "prompt"
  loc_13E0058:           var_94 = ExecCommand(var_B0.Item)
  loc_13E005D:           var_140 = "title"
  loc_13E007B:           var_184 = "default"
  loc_13E00C6:           Call var_8C.Append(InputBox(CVar(var_94), CVar(ExecCommand(var_B0.Item)), CVar(ExecCommand(var_B0.Item)), var_1D8, var_1F8, var_218, var_238))
  loc_13E00E8:         Else
  loc_13E00F3:           If (var_130 = "switch") Then
  loc_13E00F9:             var_A4 = "default"
  loc_13E010A:             var_A4 = ExecCommand(var_B0.Item)
  loc_13E0112:             var_D4 = var_94
  loc_13E011B:             var_A4 = "case"
  loc_13E012C:             var_A4 = ExecCommand(var_B0.Item)
  loc_13E0157:             var_A4 = "items"
  loc_13E0173:             var_164 = (var_B0.Item.Count - 1)
  loc_13E0180:             For var_244 = var_AC To CLng(LCase(CVar(var_94))):     var_A4 = var_244 'Long
  loc_13E0186:               var_184 = "case"
  loc_13E0195:               var_140 = CVar((var_AC + 1)) 'Long
  loc_13E019A:               var_A4 = "items"
  loc_13E01AB:               VarLateMemCallLdRfVar
  loc_13E01B3:               VarLateMemCallLdRfVar
  loc_13E01DA:               If (LCase(var_B0.Item) = CVar(CStr(LCase(CVar(var_94))))) Then
  loc_13E01E0:                 var_184 = "return"
  loc_13E01EF:                 var_140 = CVar((var_AC + 1)) 'Long
  loc_13E01F4:                 var_A4 = "items"
  loc_13E0205:                 VarLateMemCallLdRfVar
  loc_13E020D:                 VarLateMemCallLdRfVar
  loc_13E0215:                 var_A4 = ExecCommand(var_B0.Item)
  loc_13E021D:                 var_D4 = var_94
  loc_13E0229:                 Exit For
  loc_13E022C:               End If
  loc_13E022F:             Next var_244 'Long
  loc_13E0234:             ' Referenced from:     13E0229
  loc_13E023D:             Call var_8C.Append(var_D4)
  loc_13E0245:           Else
  loc_13E0250:             If (var_130 = "set") Then
  loc_13E0270:               Call 0.Method_arg_30 (var_B0.Item, "name")
  loc_13E027B:               If var_246 Then
  loc_13E0281:                 var_A4 = "value"
  loc_13E0292:                 var_A4 = ExecCommand(var_B0.Item)
  loc_13E02B7:                 Call 0.Method_arg_20 (var_B0.Item, "name", CVar(var_94))
  loc_13E02C8:               Else
  loc_13E02C8:                 var_A4 = "name"
  loc_13E02E4:                 var_F8 = var_B0.Item
  loc_13E02F4:                 var_94 = ExecCommand(var_F8)
  loc_13E02FC:                 var_164 = CVar(var_94) 'String
  loc_13E030B:                 Call 0.Method_arg_28 (var_B0.Item, var_164, var_F8, "value")
  loc_13E0319:               End If
  loc_13E031C:             Else
  loc_13E0327:               If (var_130 = "get") Then
  loc_13E034F:                 Call 0.Method_arg_24 (CVar(CStr(var_B0.Item)), "name", var_164, var_94)
  loc_13E0357:                 var_118 = ExecCommand(var_164)
  loc_13E0373:                 If (var_94 = vbNullString) Then
  loc_13E0379:                   var_A4 = "default"
  loc_13E038A:                   var_A4 = ExecCommand(var_B0.Item)
  loc_13E0392:                   var_D8 = var_94
  loc_13E0398:                 End If
  loc_13E03A1:                 Call var_8C.Append(var_94)
  loc_13E03A9:               Else
  loc_13E03B4:                 If (var_130 = "if") Then
  loc_13E03BA:                   var_A4 = "value1"
  loc_13E03CB:                   var_A4 = ExecCommand(var_B0.Item)
  loc_13E03D3:                   var_24C = var_94
  loc_13E03DC:                   var_A4 = "value2"
  loc_13E03ED:                   var_A4 = ExecCommand(var_B0.Item)
  loc_13E03F5:                   var_250 = var_94
  loc_13E03FD:                   var_252 = 0
  loc_13E0400:                   var_A4 = "type"
  loc_13E041C:                   var_264 = LCase(var_B0.Item) 'Variant
  loc_13E042E:                   If (var_264 = "eq") Then
  loc_13E0460:                     If (LCase(var_24C) = LCase(var_250)) Then
  loc_13E0465:                       var_252 = &HFF
  loc_13E0468:                     End If
  loc_13E046B:                   Else
  loc_13E0476:                     If (var_264 = "gt") Then
  loc_13E0481:                       If (var_24C > var_250) Then
  loc_13E0486:                         var_252 = &HFF
  loc_13E0489:                       End If
  loc_13E048C:                     Else
  loc_13E0497:                       If (var_264 = "lt") Then
  loc_13E04A2:                         If (var_24C < var_250) Then
  loc_13E04A7:                           var_252 = &HFF
  loc_13E04AA:                         End If
  loc_13E04AD:                       Else
  loc_13E04B8:                         If (var_264 = "gte") Then
  loc_13E04C3:                           If (var_24C >= var_250) Then
  loc_13E04C8:                             var_252 = &HFF
  loc_13E04CB:                           End If
  loc_13E04CE:                         Else
  loc_13E04D9:                           If (var_264 = "lte") Then
  loc_13E04E4:                             If (var_24C <= var_250) Then
  loc_13E04E9:                               var_252 = &HFF
  loc_13E04EC:                             End If
  loc_13E04EC:                           End If
  loc_13E04EC:                         End If
  loc_13E04EC:                       End If
  loc_13E04EC:                     End If
  loc_13E04EC:                   End If
  loc_13E04EF:                   If var_252 Then
  loc_13E04F5:                     var_A4 = "true"
  loc_13E0506:                     var_A4 = ExecCommand(var_B0.Item)
  loc_13E0518:                     Call var_8C.Append(var_94)
  loc_13E0526:                   Else
  loc_13E0529:                     var_A4 = "false"
  loc_13E053A:                     var_A4 = ExecCommand(var_B0.Item)
  loc_13E054C:                     Call var_8C.Append(var_94)
  loc_13E0557:                   End If
  loc_13E055A:                 Else
  loc_13E0565:                   If (var_130 = "return") Then
  loc_13E0585:                     Call var_8C.Append(CStr(obj.Item))
  loc_13E0593:                   Else
  loc_13E05AB:                     If (TypeName(var_B0) = "Dictionary") Then
  loc_13E05B6:                       var_D0 = var_B0.keys 'Variant
  loc_13E05CF:                       var_118 = (var_B0.Count - 1)
  loc_13E05D8:                       For var_26C = 0 To CLng(LCase(var_250)):               var_AC = var_26C 'Long
  loc_13E05E7:                         If (var_AC > 0) Then
  loc_13E05F1:                           var_D8 = var_D8 & ","
  loc_13E05F4:                         End If
  loc_13E0601:                         VarIndexLdRfVar
  loc_13E061C:                         var_D8 = var_D0 & CStr(var_B0.Item)
  loc_13E062C:                       Next var_26C 'Long
  loc_13E0631:                     End If
  loc_13E066F:                     Call var_8C.Append(CStr("<%" & Ucase(var_C0) & "(" & CVar(var_D8) & ")%>"))
  loc_13E0684:                   End If
  loc_13E0684:                 End If
  loc_13E0684:               End If
  loc_13E0684:             End If
  loc_13E0684:           End If
  loc_13E0684:         End If
  loc_13E0684:       End If
  loc_13E0687:     Next var_120 'Long
  loc_13E068C:     GoTo loc_13E06DD
  loc_13E068F:   End If
  loc_13E06A2:   If (TypeName(obj) = "Collection") Then
  loc_13E06AE:     For Each var_27C In obj
  loc_13E06CC:       Call var_8C.Append(ExecCommand(var_27C))
  loc_13E06D7:     Next
  loc_13E06DD:     ' Referenced from: 13E068C
  loc_13E06DD:   End If
  loc_13E06DF:   Set var_B0 = Nothing 
  loc_13E06E6: Else
  loc_13E06EF:   If (var_90 = &HB) Then
  loc_13E06FA:     If CBool(obj) Then
  loc_13E070C:       Call var_8C.Append("true")
  loc_13E0717:     Else
  loc_13E0726:       Call var_8C.Append("false")
  loc_13E072E:     End If
  loc_13E0731:   Else
  loc_13E073A:     If Not (var_90 = &HC) Then
  loc_13E0746:       If Not (var_90 = &H2000) Then
  loc_13E0752:         If (var_90 = &H200C) Then
  loc_13E0755:         End If
  loc_13E0755:       End If
  loc_13E0758:     Else
  loc_13E0786:       Call var_8C.Append(Replace(CStr(obj), ",", ".", 1, -1, 0))
  loc_13E0792:     End If
  loc_13E0792:   End If
  loc_13E0792: End If
  loc_13E0792: ' Referenced from: 13DFEDC
  loc_13E0792: ' Referenced from: 13DFEB3
  loc_13E0792: ' Referenced from: 13DFE8A
  loc_13E07A1: global_56 = (global_56 - 1)
  loc_13E07A4: ' Referenced from: 13DFE47
  loc_13E07B5: var_88 = var_8C.toString
  loc_13E07BD: Set var_8C = Nothing
  loc_13E07C0: ExecCommand = global_56
End Function
