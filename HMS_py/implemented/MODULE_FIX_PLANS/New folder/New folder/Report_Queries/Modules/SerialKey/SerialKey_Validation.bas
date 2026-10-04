Public Sub Proc_4_33_110BCAC(arg_C, arg_10) '110BCAC
  'Data Table: 564F38
  Dim var_F4 As Double
  Dim var_E0 As String
  Dim var_E8 As Long
  Dim var_CC As Integer
  Dim var_DC As Variant
  Dim var_118 As Variant
  loc_110B96A: On Error Goto loc_110BBD7
  loc_110B9C1: If ((MemVar_1F810EC >= CDate("15/Jan/2024")) And (CDate(Format(CVar(Proc_6_14_EEE8DC()), "dd/MMM/yyyy")) >= CDate("15/Jan/2024"))) Then
  loc_110B9C9:   var_F4 = CDate("15/Jan/2024")
  loc_110B9F6:   var_E8 = CLng((Asc(CStr(Mid(arg_C, 1, 1))) * &HA))
  loc_110BA03:   ' Referenced from: 110BA21
  loc_110BA12:   If ((var_E8 * &HA) < &H270F) Then
  loc_110BA1E:     var_E8 = (var_E8 * &HA)
  loc_110BA21:     GoTo loc_110BA03
  loc_110BA24:   End If
  loc_110BA2E:   For var_108 = 1 To CInt(Len(arg_C)): var_E2 = var_108 'Integer
  loc_110BA53:     var_E0 = CStr(Mid(arg_C, CLng(var_E2), 1))
  loc_110BA5E:     var_E8 = (var_E8 + CLng(Asc(var_E0)))
  loc_110BA6E:   Next var_108 'Integer
  loc_110BA81:   Call Proc_4_28_EE06F8(arg_10)
  loc_110BA99:   var_DC = Mid(CVar(var_E0), 7, 10)
  loc_110BAB3:   If CBool(var_DC <> CVar(CStr(var_E8))) Then
  loc_110BAB6:     GoTo loc_110BBD7
  loc_110BAB9:   End If
  loc_110BABF:   Call Proc_4_28_EE06F8(arg_10)
  loc_110BAD2:   var_CC = Left(CVar(var_E0), 6)
  loc_110BADA:   var_128 = var_CC 'Variant
  loc_110BAEC:   If (var_128 = "Hudhud") Then
  loc_110BAF4:     var_F4 = CDate("15/Jan/2025")
  loc_110BAFA:   Else
  loc_110BB05:     If (var_128 = "Pirecy") Then
  loc_110BB0D:       var_F4 = CDate("15/Jan/2026")
  loc_110BB13:     Else
  loc_110BB1E:       If (var_128 = "Pinaca") Then
  loc_110BB26:         var_F4 = CDate("15/Jan/2027")
  loc_110BB2C:       Else
  loc_110BB37:         If (var_128 = "Platoo") Then
  loc_110BB3F:           var_F4 = CDate("15/Jan/2028")
  loc_110BB45:         Else
  loc_110BB50:           If (var_128 = "Zombia") Then
  loc_110BB58:             var_F4 = CDate("15/Jan/2029")
  loc_110BB5E:           Else
  loc_110BB69:             If (var_128 = "Albert") Then
  loc_110BB71:               var_F4 = CDate("15/Jan/2030")
  loc_110BB77:             Else
  loc_110BB82:               If (var_128 = "Ostric") Then
  loc_110BB8A:                 var_F4 = CDate("15/Jan/2031")
  loc_110BB90:               Else
  loc_110BB9B:                 If (var_128 = "Legran") Then
  loc_110BBA3:                   var_F4 = CDate("15/Jan/2032")
  loc_110BBA9:                 Else
  loc_110BBB4:                   If (var_128 = "Malmal") Then
  loc_110BBBC:                     var_F4 = CDate("15/Jan/2033")
  loc_110BBC2:                   Else
  loc_110BBC2:                     End
  loc_110BBC4:                   End If
  loc_110BBC4:                 End If
  loc_110BBC4:               End If
  loc_110BBC4:             End If
  loc_110BBC4:           End If
  loc_110BBC4:         End If
  loc_110BBC4:       End If
  loc_110BBC4:     End If
  loc_110BBC4:   End If
  loc_110BBCB:   If (MemVar_1F810EC > var_F4) Then
  loc_110BBCE:     GoTo loc_110BBD7
  loc_110BBD1:   End If
  loc_110BBD1:   Proc_4_33_110BCAC = var_F4
  loc_110BBD7:   ' Referenced from: 110BBCE
  loc_110BBD7:   ' Referenced from: 110BAB6
  loc_110BBD7:   ' Referenced from: 110B96A
  loc_110BBFE:   If (CDate(MemVar_1F810EC) > DateAdd("d", CDbl(&H2D), var_F4)) Then
  loc_110BC20:     MsgBox(CVar(" Software expired !" & vbCrLf & "Update Serial Key. Contact to Software Vender."), &H10, var_CC, var_DC, var_118)
  loc_110BC33:     End
  loc_110BC35:   End If
  loc_110BC82:   var_DC = "Update Serial Key. Contact to Software Vender. Software will expire in " & DateDiff("d", MemVar_1F810EC, DateAdd("d", CDbl(&H2D), var_F4), 1, 1) 
  loc_110BC8F:   MsgBox(var_DC & " Days.", &H10, var_168, var_188, var_1A8)
  loc_110BCA5: End If
  loc_110BCA5: Proc_4_33_110BCAC = var_F4
End Sub

