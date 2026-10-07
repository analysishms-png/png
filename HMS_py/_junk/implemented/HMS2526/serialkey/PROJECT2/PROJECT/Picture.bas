
Public Sub Proc_142_0_F977BC
  'Data Table: 41B824
  Dim var_B4 As Variant
  Dim var_8C As TextBox
  Dim var_C4 As Variant
  Dim var_96 As Integer
  Dim var_86 As Integer
  loc_F97660: On Error Goto loc_F977B6
  loc_F9766D: If Not(TypeOf arg_10 Is arg_0) Then
  loc_F97672:   Result  End Sub 'Integer
  loc_F97673: End If
  loc_F97678: var_B4 = Me.Picture
  loc_F97681: Set var_8C = var_B4
  loc_F97693: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF4C
  loc_F976A6: If ( Or (CLng((var_8C Is Nothing)) = 0)) Then
  loc_F976B2:   var_C4 = Null
  loc_F976BA:   LateMemCallSt
  loc_F976C5:   Call Me.Update
  loc_F976CD:   Result Me End Sub 'Integer
  loc_F976CE: End If
  loc_F976E4: If (Proc_142_2_E8C920(var_C4) = vbNullString) Then
  loc_F976EC:   var_90 = "C:\"
  loc_F976EF: End If
  loc_F976F8: var_94 = var_90 & "0X2341KLZX.jpg"
  loc_F9770D: Me.Global.SavePicture var_8C
  loc_F9771F: var_96 = FreeFile(var_B4)
  loc_F9772F: Open var_94 For Binary As var_96 Len = &HFF
  loc_F9774D: ReDim var_A0(0 To LOF(var_96))
  loc_F9775F: Get var_96, , var_A0
  loc_F97780: Call Me.Fields.AppendChunk
  loc_F9778E: Call Me.Update
  loc_F97799: Close var_96
  loc_F9779D: On Error Resume Next
  loc_F977AA: Kill var_94
  loc_F977B3: var_86 = &HFF
  loc_F977B6: ' Referenced from: F97660
  loc_F977B8: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_142_1_F342F8
  'Data Table: 41B824
  Dim var_96 As Integer
  Dim var_9C As Long
  Dim var_C4 As Variant
  loc_F341FC: On Error Goto loc_F342F7
  loc_F34207: If Not(TypeOf arg_10 Is arg_0) Then
  loc_F3420A:   Result  End Sub 'Integer
  loc_F3420B: End If
  loc_F3421B: If (Proc_142_2_E8C920() = vbNullString) Then
  loc_F34221:   var_90 = "C:\"
  loc_F34224: End If
  loc_F3422B: var_94 = var_90 & "0X2341KLZX.jpg"
  loc_F34236: var_96 = FreeFile(var_C4)
  loc_F34244: Open var_94 For Binary As var_96 Len = &HFF
  loc_F34262: var_9C = CLng(LenB()))
  loc_F342A4: Put var_96, , ).GetChunk
  loc_F342AB: Close var_96
  loc_F342CD: Me.Global.LoadPicture CVar(var_94), var_E4, var_F8, var_108, var_118
  loc_F342DD: Me.Picture = CVar(var_11C)
  loc_F342EC: Kill var_94
  loc_F342F6: Result &HFF End Sub 'Integer
  loc_F342F7: ' Referenced from: F341FC
  loc_F342F7: Result var_11C End Sub 'Integer
End Sub

Public Sub Proc_142_2_E8C920
  'Data Table: 41B824
  Dim var_90 As Long
  loc_E8C8CE: var_8C = CStr(String(&HFF, 0))
  loc_E8C8FB: var_90 = GetTempPath(&HFF, var_8C)
  loc_E8C90A: If (var_90 = 0) Then
  loc_E8C90D:   Exit Sub
  loc_E8C90E: End If
  loc_E8C919: var_88 = Left$(var_8C, var_90)
  loc_E8C91C: Exit Sub
End Sub

Public Sub Proc_142_3_E98110
  'Data Table: 41B824
  Dim var_86 As Integer
  loc_E98098: On Error Goto loc_E9810F
  loc_E980A7: Set var_8C = Me.Picture
  loc_E980B7: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFF60
  loc_E980CA: If ( Or (CLng((var_8C Is Nothing)) = 0)) Then
  loc_E980CD:   Result  End Sub 'Integer
  loc_E980CE: End If
  loc_E980DA: Call 0.Method_Proc_142_3_E981104 (arg_10)
  loc_E980E2: If var_A2 Then
  loc_E980ED:   Kill arg_10
  loc_E980F2: End If
  loc_E98102: Me.Global.SavePicture var_8C
  loc_E9810C: var_86 = &HFF
  loc_E9810F: ' Referenced from: E98098
  loc_E9810F: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_142_4_EF26D4(arg_C, arg_10, arg_14, arg_18, arg_1C) 'EF26D4
  'Data Table: 41B824
  Dim var_94 As Long
  Dim var_90 As Long
  Dim var_8C As Long
  Dim var_86 As Integer
  loc_EF2608: On Error Goto loc_EF269C
  loc_EF2618: var_94 = GetWindowLong(arg_C, -20)
  loc_EF261F: var_90 = var_94
  loc_EF262F: If (var_8C <> (var_8C Or &H80000)) Then
  loc_EF2649:   SetWindowLong(arg_C, -20, (var_8C Or &H80000))
  loc_EF264F: End If
  loc_EF2683: var_94 = SetLayeredWindowAttributes(arg_C, arg_10, arg_14, CLng(IIf(arg_18, 3, 1)))
  loc_EF2690: var_86 = (var_94 <> 0)
  loc_EF269C: ' Referenced from: EF2608
  loc_EF26A4: Set var_F8 = Err()
  loc_EF26AA: Call 0.Method_arg_1C (var_94, var_86, var_94)
  loc_EF26BC: If Not((var_94 = 0)) Then
  loc_EF26C4:   Set var_F8 = Err()
  loc_EF26CA:   VCallFPR8
  loc_EF26D0: End If
  loc_EF26D0: Result var_F8 End Sub 'Integer
End Sub

Public Sub Proc_142_5_E8CDE8
  'Data Table: 41B824
  Dim var_86 As Integer
  loc_E8CD73: If (arg_10 And arg_14) Then
  loc_E8CD93:   var_86 = Proc_142_4_EF26D4(Form.hWnd, arg_1C)
  loc_E8CD99: Else
  loc_E8CD9C:   If arg_10 Then
  loc_E8CDBE:     var_86 = Proc_142_4_EF26D4(Form.hWnd, 0, CByte(arg_18), &HFF)
  loc_E8CDC4:   Else
  loc_E8CDE3:     var_86 = Proc_142_4_EF26D4(Form.hWnd, 0, CByte(255), &HFF)
  loc_E8CDE6:   End If
  loc_E8CDE6: End If
  loc_E8CDE6: Exit Sub
End Sub
