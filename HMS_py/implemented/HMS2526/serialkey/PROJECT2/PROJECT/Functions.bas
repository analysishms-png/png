
Public Sub Proc_342_0_104A654(arg_C) '104A654
  'Data Table: 41B364
  Dim var_AA As Integer
  loc_104A3F7: var_90 = arg_C
  loc_104A428: var_90 = Replace(var_90, ", CStr(Chr(1)), 1, -1, 0)
  loc_104A45F: var_90 = Replace(var_90, "+", CStr(Chr(2)), 1, -1, 0)
  loc_104A470: For var_A8 = 0 To 255: var_8A = var_A8 'Integer
  loc_104A479:   var_AA = var_8A
  loc_104A482:   If Not (var_AA = &H25) Then
  loc_104A48B:     If Not (var_AA = &H2B) Then
  loc_104A497:       If Not (&H39 > var_AA > &H30) Then
  loc_104A4A3:         If Not (&H5A > var_AA > &H41) Then
  loc_104A4AF:           If (&H7A > var_AA > &H61) Then
  loc_104A4B2:           End If
  loc_104A4B2:         End If
  loc_104A4B2:       End If
  loc_104A4B2:     End If
  loc_104A4B5:   Else
  loc_104A4BB:     If (var_AA = 1) Then
  loc_104A4EB:       var_90 = Replace(var_90, CStr(Chr(CLng(var_8A))), "235995", 1, -1, 0)
  loc_104A4F7:     Else
  loc_104A4FD:       If (var_AA = 2) Then
  loc_104A52D:         var_90 = Replace(var_90, CStr(Chr(CLng(var_8A))), "23599B", 1, -1, 0)
  loc_104A539:       Else
  loc_104A53F:         If (var_AA = &H20) Then
  loc_104A56F:           var_90 = Replace(var_90, CStr(Chr(CLng(var_8A))), "+", 1, -1, 0)
  loc_104A57B:         Else
  loc_104A584:           If (&HF > var_AA > 3) Then
  loc_104A5D1:             var_90 = Replace(var_90, CStr(Chr(CLng(var_8A))), CStr("%0" & Hex(var_8A)), 1, -1, 0)
  loc_104A5E7:           Else
  loc_104A631:             var_90 = Replace(var_90, CStr(Chr(CLng(var_8A))), CStr("%" & Hex(var_8A)), 1, -1, 0)
  loc_104A644:           End If
  loc_104A644:         End If
  loc_104A644:       End If
  loc_104A644:     End If
  loc_104A644:   End If
  loc_104A647: Next var_A8 'Integer
  loc_104A64F: var_88 = var_90
  loc_104A652: Exit Sub
End Sub
