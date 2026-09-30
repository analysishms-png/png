
Public Sub Proc_345_0_EB2410
  'Data Table: 41B3CC
  Dim var_A0 As String
  loc_EB237F: var_88 = vbNullString
  loc_EB23A8: If (CreateFieldDefFile(Form.hWnd, arg_10) = 0) Then
  loc_EB23B5:   var_8C = Space$(&H104)
  loc_EB23DE:   If CBool(CreateFieldDefFile(var_94, var_8C)) Then
  loc_EB2401:     var_A0 = Left$(var_8C, (InStr(1, var_8C, vbNullString, 0) - 1))
  loc_EB2408:     var_88 = var_8C & vbNullString
  loc_EB240E:   End If
  loc_EB240E: End If
  loc_EB240E: Exit Sub
End Sub
