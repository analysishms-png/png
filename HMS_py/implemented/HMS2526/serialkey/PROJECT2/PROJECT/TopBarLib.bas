
Public Sub Proc_5_0_1107AD0(arg_C) '1107AD0
  'Data Table: 41B714
  Dim var_8C As Integer
  Dim Me As Recordset15
  Dim var_A4 As Boolean
  Dim var_C4 As Variant
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim var_CC As String
  Dim var_E4 As Variant
  loc_1107794: On Error Goto loc_1107A73
  loc_110779A: var_8C = arg_18
  loc_11077A3: If (var_8C = 1) Then
  loc_11077B7:   If (Me.Recordset15.BOF = 0) Then
  loc_11077BD:     Me.Recordset15.MoveFirst
  loc_11077C2:   End If
  loc_11077C5: Else
  loc_11077CB:   If (var_8C = 2) Then
  loc_11077DF:     If (Me.Recordset15.BOF = 0) Then
  loc_11077E5:       Me.Recordset15.MovePrevious
  loc_11077EA:     End If
  loc_11077ED:   Else
  loc_11077F3:     If (var_8C = 3) Then
  loc_1107807:       If (Me.Recordset15.EOF = 0) Then
  loc_110780D:         Me.Recordset15.MoveNext
  loc_1107812:       End If
  loc_1107815:     Else
  loc_110781B:       If (var_8C = 4) Then
  loc_110782F:         If (Me.Recordset15.EOF = 0) Then
  loc_1107835:           Me.Recordset15.MoveLast
  loc_110783A:         End If
  loc_110783A:       End If
  loc_110783A:     End If
  loc_110783A:   End If
  loc_110783A: End If
  loc_1107853: If ((Me.RecordCount <= 0) Or Not(arg_C)) Then
  loc_1107863:   Me.TopCtrl1.tFirst = False
  loc_1107877:   Me.TopCtrl1.tPrev = False
  loc_110787E:   var_A4 = False
  loc_1107886:   var_C4 = Me.TopCtrl1
  loc_110788B:   var_C4.tNext = var_A4
  loc_110789F:   Me.TopCtrl1.tLast = False
  loc_11078B3:   Me.TopCtrl1.tFind = False
  loc_11078C7:   Me.TopCtrl1.tDel = False
  loc_11078DB:   Me.TopCtrl1.tEdit = False
  loc_11078EF:   Me.TopCtrl1.tPrn = False
  loc_11078F9: Else
  loc_110791C:   If (Me.BOF Or (Me.Recordset15.AbsolutePosition = 1)) Then
  loc_1107921:     var_88 = 0
  loc_1107927:   Else
  loc_1107929:     var_88 = &HFF
  loc_110792C:   End If
  loc_1107958:   If (Me.Recordset15.EOF Or (Me.Recordset15.AbsolutePosition = Me.Recordset15.RecordCount)) Then
  loc_110795D:     var_8A = 0
  loc_1107963:   Else
  loc_1107965:     var_8A = &HFF
  loc_1107968:   End If
  loc_1107978:   Me.TopCtrl1.tFirst = var_88
  loc_1107993:   Me.TopCtrl1.tPrev = var_88
  loc_11079A1:   var_A4 = var_8A
  loc_11079A9:   var_C4 = Me.TopCtrl1
  loc_11079AE:   var_C4.tNext = var_A4
  loc_11079C9:   Me.TopCtrl1.tLast = var_8A
  loc_11079D4: End If
  loc_11079E8: If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_1107A25:   Me.TopCtrl1.TopText1 = CVar(CStr(Me.Recordset15.AbsolutePosition) & "/" & CStr(Me.Recordset15.RecordCount))
  loc_1107A3C: Else
  loc_1107A45:   var_94 = Me.RecordCount
  loc_1107A4F:   var_CC = CStr(var_94)
  loc_1107A5A:   var_E4 = Me.TopCtrl1
  loc_1107A5F:   var_E4.TopText1 = CVar("0/" & var_CC)
  loc_1107A6D: End If
  loc_1107A72: Result &HFF End Sub 'Integer
  loc_1107A73: ' Referenced from: 1107794
  loc_1107A7B: Set var_E8 = Err()
  loc_1107A81: Call 0.Method_arg_1C (var_94, var_8A, var_8A)
  loc_1107A92: If (var_94 > 0) Then
  loc_1107AAB:   Set var_E8 = Err()
  loc_1107AB1:   Call 0.Method_arg_2C (var_CC, 0, var_E4, var_F8)
  loc_1107ABC:   MsgBox(CVar(var_CC), var_118, var_88, var_88, var_8C)
  loc_1107ACF: End If
  loc_1107ACF: Result  End Sub 'Integer
End Sub

Public Sub Proc_5_1_100EC1C(arg_C, arg_10, arg_14) '100EC1C
  'Data Table: 41B714
  Dim var_8E As Integer
  Dim var_CC As Variant
  Dim var_86 As Integer
  loc_100EA1C: On Error Goto loc_100EBA8
  loc_100EA22: var_98 = arg_C
  loc_100EA2D: If (var_98 = "ADD") Then
  loc_100EA3A:   var_8E = Proc_5_2_106A494(0)
  loc_100EA52:   var_8E = Proc_5_0_1107AD0(0, arg_10, arg_14)
  loc_100EA63:   Me.TopCtrl1.TopText2 = "Add"
  loc_100EA6C:   var_86 = &HFF
  loc_100EA72: Else
  loc_100EA7A:   If (var_98 = "EDIT") Then
  loc_100EA87:     var_8E = Proc_5_2_106A494(0, arg_10, var_86, var_8E)
  loc_100EA9F:     var_8E = Proc_5_0_1107AD0(0, arg_10, arg_14, 0)
  loc_100EAB0:     Me.TopCtrl1.TopText2 = "Edit"
  loc_100EAB9:     var_86 = &HFF
  loc_100EABF:   Else
  loc_100EAC7:     If (var_98 = "INI") Then
  loc_100EAD2:       VarLateMemLdRfVar
  loc_100EAF4:       If (Trim(Me.TopCtrl1) = "Browse") Then
  loc_100EB05:         var_CC = CVar(Form.ActiveControl) 'Address
  loc_100EB0D:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_100EB15:         ' Referenced from:     100EC17
  loc_100EB15:       End If
  loc_100EB1F:       var_8E = Proc_5_2_106A494(&HFF, arg_10, var_CC, var_86, var_8E)
  loc_100EB37:       var_8E = Proc_5_0_1107AD0(&HFF, arg_10, arg_14, 0, var_8E)
  loc_100EB48:       Me.TopCtrl1.TopText2 = "Browse"
  loc_100EB51:       var_86 = 0
  loc_100EB91:       If CBool((Me.TopCtrl1.Visible = True) And (Me.TopCtrl1.Enabled = True)) Then
  loc_100EB9E:         Call Me.TopCtrl1.SetFocus
  loc_100EBA7:       End If
  loc_100EBA7:     End If
  loc_100EBA7:   End If
  loc_100EBA7: End If
  loc_100EBA7: Result var_86 End Sub 'Integer
  loc_100EBA8: ' Referenced from: 100EA1C
  loc_100EBE6: If CBool((IsEmpty(MemVar_1F95E84) = 0) And (Trim(MemVar_1F95E84) <> vbNullString)) Then
  loc_100EBF8:   Me.TopCtrl1.Tag = CVar(MemVar_1F95E84)
  loc_100EC02: Else
  loc_100EC10:   Me.TopCtrl1.Tag = "AEDP"
  loc_100EC17: End If
  loc_100EC17: GoTo loc_100EB15
  loc_100EC1A: Result var_8E End Sub 'Integer
End Sub

Public Sub Proc_5_2_106A494(arg_C) '106A494
  'Data Table: 41B714
  loc_106A20A: If (arg_C = &HFF) Then
  loc_106A23F:   If CBool(InStr(1, Me.TopCtrl1.Tag, "A", 0) <> 0) Then
  loc_106A252:     Me.TopCtrl1.tAdd = arg_C
  loc_106A260:   Else
  loc_106A271:     Me.TopCtrl1.tAdd = Not(arg_C)
  loc_106A27C:   End If
  loc_106A2AE:   If CBool(InStr(1, Me.TopCtrl1.Tag, "E", 0) <> 0) Then
  loc_106A2C1:     Me.TopCtrl1.tEdit = arg_C
  loc_106A2CF:   Else
  loc_106A2E0:     Me.TopCtrl1.tEdit = Not(arg_C)
  loc_106A2EB:   End If
  loc_106A31D:   If CBool(InStr(1, Me.TopCtrl1.Tag, "D", 0) <> 0) Then
  loc_106A330:     Me.TopCtrl1.tDel = arg_C
  loc_106A33E:   Else
  loc_106A34F:     Me.TopCtrl1.tDel = Not(arg_C)
  loc_106A35A:   End If
  loc_106A38C:   If CBool(InStr(1, Me.TopCtrl1.Tag, "P", 0) <> 0) Then
  loc_106A39F:     Me.TopCtrl1.tPrn = arg_C
  loc_106A3AD:   Else
  loc_106A3BE:     Me.TopCtrl1.tPrn = Not(arg_C)
  loc_106A3C9:   End If
  loc_106A3CC: Else
  loc_106A3DC:   Me.TopCtrl1.tAdd = arg_C
  loc_106A3F7:   Me.TopCtrl1.tEdit = arg_C
  loc_106A412:   Me.TopCtrl1.tDel = arg_C
  loc_106A42D:   Me.TopCtrl1.tPrn = arg_C
  loc_106A438: End If
  loc_106A448: Me.TopCtrl1.tFind = arg_C
  loc_106A464: Me.TopCtrl1.tSave = Not(arg_C)
  loc_106A480: Me.TopCtrl1.tCancel = Not(arg_C)
  loc_106A490: Result &HFF End Sub 'Integer
End Sub
