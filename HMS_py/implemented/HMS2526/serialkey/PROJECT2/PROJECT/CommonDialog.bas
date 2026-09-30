
Public Sub Proc_349_0_F01514(arg_C) 'F01514
  'Data Table: 41B55C
  loc_F01480: DestructOFrame
  loc_F014A3: Proc_349_2_FF682C(var_128, arg_C, vbNullString)
  loc_F014AE: AssignRecord
  loc_F014D0: var_D4 = arg_0
  loc_F014D8: var_174 = "": Set arg_0 = Null 'Destruct battery of vars and single variable
  loc_F014DE: If CBool(GetOpenFileName(Record Of arg_0)) Then
  loc_F0150B:   var_88 = Left$(var_B8, (InStr(1, var_B8, Chr$(0), 0) - 1))
  loc_F01511: End If
  loc_F01511: Exit Sub
End Sub

Public Sub Proc_349_1_EFDC7C(arg_C, arg_10) 'EFDC7C
  'Data Table: 41B55C
  loc_EFDBF0: DestructOFrame
  loc_EFDC0D: Proc_349_2_FF682C(var_124, arg_C, arg_10)
  loc_EFDC18: AssignRecord
  loc_EFDC37: var_D4 = arg_0
  loc_EFDC3F: var_170 = "": Set arg_0 = Null 'Destruct battery of vars and single variable
  loc_EFDC45: If CBool(GetOpenFileName(Record Of arg_0)) Then
  loc_EFDC72:   var_88 = Left$(var_B8, (InStr(1, var_B8, Chr$(0), 0) - 1))
  loc_EFDC78: End If
  loc_EFDC78: Exit Sub
End Sub

Public Sub Proc_349_2_FF682C
  'Data Table: 41B55C
  Dim var_D8 As Long
  Dim var_FC As String
  Dim var_11C As Variant
  Dim var_134 As Long
  loc_FF6673: var_D8 = var_D0
  loc_FF667B: var_D8(0) = &H4C
  loc_FF6697: For Each var_D4 In Me.Global.Forms
  loc_FF669F:   Exit For
  loc_FF66A8: Next
  loc_FF66BE: var_D8(4) = Form.hWnd
  loc_FF66C8: Set var_D4 = Nothing
  loc_FF66D7: var_DC = Me.Global.App
  loc_FF66E7: var_D8(8) = App.hInstance
  loc_FF671D: var_11C = CVar(Replace(arg_18, "|", CStr(Chr(0)), 1, -1, 0)) 'String
  loc_FF6738: var_D8(12) = CStr(var_11C & Chr(0))
  loc_FF6754: var_D8(32) = &H105
  loc_FF675E: var_D8(40) = &H105
  loc_FF6777: var_D8(36) = CStr(Space(&H104))
  loc_FF6785: var_D8(44) = arg_10
  loc_FF678D: var_D8(60) = arg_1C
  loc_FF6795: var_134 = arg_20
  loc_FF67A1: If (var_134 = 0) Then
  loc_FF67A7:   var_D8(48) = "Open"
  loc_FF67C0:   var_D8(28) = CStr(Space(&H104))
  loc_FF67D0:   var_D8(52) = &H201004
  loc_FF67D8: Else
  loc_FF67E1:   If (var_134 = 1) Then
  loc_FF67E7:     var_D8(48) = "Save As"
  loc_FF67FE:     var_FC = Space$((&H104 - Len(arg_14)))
  loc_FF6805:     var_D8(28) = arg_14 & CStr(Space(&H104))
  loc_FF6816:     var_D8(52) = &H200807
  loc_FF681B:   End If
  loc_FF681B: End If
  loc_FF6820: var_D8 = 0
  loc_FF6823: ExitProcFrameCb &H4CFF30
End Sub
