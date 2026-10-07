
Public Sub Proc_344_0_A00DFF
Error procedure
End Sub

Public Sub Proc_344_1_EDA3E0(arg_C) 'EDA3E0
  'Data Table: 41B4C0
  Dim var_AC As Variant
  loc_EDA35D: var_AC = False
  loc_EDA36B: Call 0.Method_arg_1C ("GET", arg_C, var_AC)
  loc_EDA377: Call 0.Method_arg_2C (var_AC, var_BC)
  loc_EDA385: Call CreateObject("MSXML2.ServerXMLHTTP", 0).WaitForResponse
  loc_EDA391: Call 0.Method_Proc_344_1_EDA3E00 (var_D0, 10000)
  loc_EDA3A1: If (var_D0 = vbNullString) Then
  loc_EDA3BD:   MsgBox("There is no response from the server currently, Please try again after some time!!", 0, var_E0, var_F0, var_110)
  loc_EDA3CD:   Exit Sub
  loc_EDA3CE: End If
  loc_EDA3D4: Call 0.Method_Proc_344_1_EDA3E00 (var_D0)
  loc_EDA3DC: var_88 = var_D0
  loc_EDA3DF: Exit Sub
End Sub

Public Sub Proc_344_2_E94118(arg_C, arg_10) 'E94118
  'Data Table: 41B4C0
  loc_E940D3: Call 0.Method_arg_1C ("POST", arg_C, False)
  loc_E940E1: Call 0.Method_arg_20 ("Content-Type", "application/json; charset=utf-8")
  loc_E940F0: Call 0.Method_arg_2C (CVar(arg_10), var_BC)
  loc_E940FE: Call CreateObject("MSXML2.ServerXMLHTTP", 0).WaitForResponse
  loc_E9410A: Call 0.Method_Proc_344_2_E941180 (var_D0, 10000)
  loc_E94112: var_88 = var_D0
  loc_E94115: Exit Sub
End Sub

Public Sub Proc_344_3_E5BDA0
  'Data Table: 41B4C0
  Dim var_90 As Long
  Dim var_86 As Integer
  loc_E5BD6C: var_90 = InternetGetConnectedState(var_8C)
  loc_E5BD78: If (var_90 = 0) Then
  loc_E5BD7D:   var_86 = 0
  loc_E5BD83: Else
  loc_E5BD8C:   If (var_90 <= 4) Then
  loc_E5BD91:     var_86 = &HFF
  loc_E5BD97:   Else
  loc_E5BD99:     var_86 = 0
  loc_E5BD9C:   End If
  loc_E5BD9C: End If
  loc_E5BD9C: Result var_86 End Sub 'Integer
End Sub
