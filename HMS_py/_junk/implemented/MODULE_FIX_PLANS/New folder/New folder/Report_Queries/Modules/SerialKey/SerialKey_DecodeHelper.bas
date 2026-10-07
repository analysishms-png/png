Public Sub Proc_4_28_EE06F8(arg_C) 'EE06F8
  'Data Table: 564F38
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EE0666: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EE0685: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EE06A8:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EE06C4:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EE06CC:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EE06D1:   var_8C = CStr(var_108)
  loc_EE06E5: Next var_B8 'Integer
  loc_EE06ED: var_88 = var_8C
  loc_EE06F0: Proc_4_28_EE06F8 = 
End Sub

